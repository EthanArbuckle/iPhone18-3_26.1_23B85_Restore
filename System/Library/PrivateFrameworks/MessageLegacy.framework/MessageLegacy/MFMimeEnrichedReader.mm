@interface MFMimeEnrichedReader
+ (__CFCharacterSet)parenSet;
+ (__CFCharacterSet)punctuationSet;
- (id)currentFont;
- (id)description;
- (int)readTokenInto:(id *)a3;
- (void)appendStringToBuffer:(id)a3;
- (void)beginCommand:(id)a3;
- (void)closeUpQuoting;
- (void)convertEnrichedString:(id)a3 intoOutputString:(id)a4;
- (void)convertRichTextString:(id)a3 intoOutputString:(id)a4;
- (void)dealloc;
- (void)endCommand:(id)a3;
- (void)handleNoParameterCommand:(id *)a3;
- (void)mismatchError:(id)a3;
- (void)nowWouldBeAGoodTimeToAppendToTheAttributedString;
- (void)parseParameterString:(id)a3;
- (void)resetStateWithString:(id)a3 outputString:(id)a4;
- (void)setupFontStackEntry:(_CommandStackEntry *)a3;
@end

@implementation MFMimeEnrichedReader

+ (__CFCharacterSet)punctuationSet
{
  result = punctuationSet_puncSet;
  if (!punctuationSet_puncSet)
  {
    result = CFCharacterSetCreateWithCharactersInString(0, @" <>\n");
    punctuationSet_puncSet = result;
  }

  return result;
}

+ (__CFCharacterSet)parenSet
{
  result = parenSet_parenSet;
  if (!parenSet_parenSet)
  {
    result = CFCharacterSetCreateWithCharactersInString(0, @"<>");
    parenSet_parenSet = result;
  }

  return result;
}

- (void)mismatchError:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = MFLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = a3;
    _os_log_impl(&dword_258BDA000, v4, OS_LOG_TYPE_INFO, "Ignoring unmatched </%@> command", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  prependHTML = self->_prependHTML;
  if (prependHTML)
  {
    CFRelease(prependHTML);
  }

  postpendHTML = self->_postpendHTML;
  if (postpendHTML)
  {
    CFRelease(postpendHTML);
  }

  if (self->_commandStack)
  {
      ;
    }

    CFRelease(self->_commandStack);
  }

  v5.receiver = self;
  v5.super_class = MFMimeEnrichedReader;
  [(MFMimeEnrichedReader *)&v5 dealloc];
}

- (void)appendStringToBuffer:(id)a3
{
  v3 = a3;
  if ((*(self + 211) & 0x40) != 0 && [a3 hasPrefix:@"\n"])
  {
    v3 = [v3 substringFromIndex:1];
  }

  [(NSMutableString *)self->_outputBuffer appendString:v3];
  *(self + 211) &= ~0x40u;
}

- (void)resetStateWithString:(id)a3 outputString:(id)a4
{
  self->_outputString = a4;
  if (a3)
  {
    Length = CFStringGetLength(a3);
  }

  else
  {
    Length = 0;
  }

  self->_inputLength = Length;
  self->_inputBuffer.theString = a3;
  self->_inputBuffer.rangeToBuffer.location = 0;
  self->_inputBuffer.rangeToBuffer.length = Length;
  CharactersPtr = CFStringGetCharactersPtr(a3);
  CStringPtr = 0;
  self->_inputBuffer.directUniCharBuffer = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(a3, 0x600u);
  }

  self->_inputBuffer.directCStringBuffer = CStringPtr;
  self->_inputBuffer.bufferedRangeEnd = 0;
  self->_currentIndex = 0;
  self->_inputBuffer.bufferedRangeStart = 0;
  *(self + 211) &= ~0x80u;
  if (self->_commandStack)
  {
      ;
    }
  }

  self->_commandStack = CFArrayCreateMutable(0, 0, 0);

  self->_outputBuffer = objc_opt_new();
}

- (void)nowWouldBeAGoodTimeToAppendToTheAttributedString
{
  if (*(self + 212))
  {
    [self->_outputString appendString:self->_outputBuffer];
    outputBuffer = self->_outputBuffer;

    [(NSMutableString *)outputBuffer setString:&stru_2869ED3E0];
    return;
  }

  if (![(NSMutableString *)self->_outputBuffer length])
  {
    return;
  }

  if (!self->_prependHTML)
  {
    self->_prependHTML = CFStringCreateMutable(0, 0);
  }

  if (!self->_postpendHTML)
  {
    self->_postpendHTML = CFStringCreateMutable(0, 0);
  }

  Count = CFArrayGetCount(self->_commandStack);
  if (Count < 1)
  {
    v5 = 0;
  }

  else
  {
    v4 = Count;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    for (i = 0; i != v4; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(self->_commandStack, i);
      if ([**ValueAtIndex isEqualToString:@"underline"])
      {
        if (v6)
        {
          ++v6;
        }

        else
        {
          CFStringAppendCString(self->_prependHTML, "<U>", 0x8000100u);
          CFStringInsert(self->_postpendHTML, 0, @"</U>");
          v6 = 1;
        }
      }

      else if ([**ValueAtIndex isEqualToString:@"excerpt"])
      {
        ++v5;
      }

      else if ([**ValueAtIndex isEqualToString:@"superscript"])
      {
        ++v7;
      }

      else
      {
        v7 -= [**ValueAtIndex isEqualToString:@"subscript"];
      }
    }

    if (v7 <= 0)
    {
      if ((v7 & 0x80000000) == 0)
      {
        goto LABEL_27;
      }

      v10 = @"</SUB>";
      v11 = "<SUB>";
    }

    else
    {
      v10 = @"</SUP>";
      v11 = "<SUP>";
    }

    CFStringAppendCString(self->_prependHTML, v11, 0x8000100u);
    CFStringInsert(self->_postpendHTML, 0, v10);
  }

LABEL_27:
  v13 = [(MFMimeEnrichedReader *)self currentFont];
  v14 = _currentAttributeOfType(self, 2);
  v15 = _currentAttributeOfType(self, 3);
  if (v13 | v14)
  {
    v16 = v15;
    CFStringAppendCString(self->_prependHTML, "<SPAN style=", 0x8000100u);
    if (v13)
    {
      CFStringAppend(self->_prependHTML, v13);
      CFStringAppendCString(self->_prependHTML, "; ", 0x8000100u);
    }

    if (v14)
    {
      CFStringAppendFormat(self->_prependHTML, 0, @"color: %s; ", [v14 UTF8String]);
    }

    if (v16)
    {
      CFStringAppendFormat(self->_prependHTML, 0, @"font-size: %dpt; ", [v16 intValue]);
    }

    CFStringAppendCString(self->_prependHTML, ">", 0x8000100u);
    CFStringAppendCString(self->_postpendHTML, "</SPAN>", 0x8000100u);
  }

  v17 = v5 - self->_lastQuoteLevel;
  if (v17 < 1)
  {
    if (v17 < 0)
    {
      v18 = 0;
      do
      {
        CFStringInsert(self->_prependHTML, 0, @"</BLOCKQUOTE>");
        --v18;
      }

      while (v18 > v17);
    }
  }

  else
  {
    do
    {
      CFStringInsert(self->_prependHTML, 0, @"<BLOCKQUOTE type=cite>");
      --v17;
    }

    while (v17);
  }

  self->_lastQuoteLevel = v5;
  if (CFStringGetLength(self->_prependHTML))
  {
    [self->_outputString appendString:self->_prependHTML];
  }

  outputString = self->_outputString;
  v20 = [(NSMutableString *)self->_outputBuffer length];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  *buffer = 0u;
  v42 = 0u;
  v21 = self->_outputBuffer;
  v49 = v21;
  v52 = 0;
  v53 = v20;
  CharactersPtr = CFStringGetCharactersPtr(v21);
  CStringPtr = 0;
  v50 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v21, 0x600u);
  }

  v51 = CStringPtr;
  v54 = 0;
  v55 = 0;
  if (v20)
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 64;
    while (1)
    {
      if (v26 >= 4)
      {
        v28 = 4;
      }

      else
      {
        v28 = v26;
      }

      if (v26 < 0 || (v29 = v53, v53 <= v26))
      {
        chars = 0;
        goto LABEL_56;
      }

      if (v50)
      {
        break;
      }

      if (!v51)
      {
        if (v55 <= v26 || (v34 = v54, v54 > v26))
        {
          v35 = -v28;
          v36 = v28 + v24;
          v37 = v27 - v28;
          v38 = v26 + v35;
          v39 = v38 + 64;
          if (v38 + 64 >= v53)
          {
            v39 = v53;
          }

          v54 = v38;
          v55 = v39;
          if (v53 >= v37)
          {
            v29 = v37;
          }

          v57.location = v38 + v52;
          v57.length = v29 + v36;
          CFStringGetCharacters(v49, v57, buffer);
          v34 = v54;
        }

        v30 = &buffer[-v34];
        goto LABEL_54;
      }

      v31 = v51[v52 + v26];
LABEL_59:
      chars = v31;
      if (v31 > 0x25u)
      {
        switch(v31)
        {
          case '&':
            v32 = outputString;
            v33 = @"&amp;";
            goto LABEL_73;
          case '>':
            v32 = outputString;
            v33 = @"&gt;";
            goto LABEL_73;
          case '<':
            v32 = outputString;
            v33 = @"&lt;";
LABEL_73:
            CFStringAppend(v32, v33);
            goto LABEL_74;
        }
      }

      else
      {
        switch(v31)
        {
          case 9u:
            v32 = outputString;
            v33 = @"&nbsp;&nbsp;&nbsp;&nbsp;";
            goto LABEL_73;
          case 0xAu:
            v32 = outputString;
            v33 = @"<br/>";
            goto LABEL_73;
          case 0x20u:
            if ((v25 & 1) == 0)
            {
              v25 = 1;
              CFStringAppendCharacters(outputString, &chars, 1);
              goto LABEL_75;
            }

            v32 = outputString;
            v33 = @"&nbsp;";
            goto LABEL_73;
        }
      }

LABEL_56:
      CFStringAppendCharacters(outputString, &chars, 1);
LABEL_74:
      v25 = 0;
LABEL_75:
      ++v26;
      --v24;
      ++v27;
      if (v20 == v26)
      {
        goto LABEL_86;
      }
    }

    v30 = &v50[v52];
LABEL_54:
    v31 = v30[v26];
    goto LABEL_59;
  }

LABEL_86:
  if (CFStringGetLength(self->_postpendHTML))
  {
    [self->_outputString appendString:self->_postpendHTML];
  }

  CFStringReplaceAll(self->_prependHTML, &stru_2869ED3E0);
  CFStringReplaceAll(self->_postpendHTML, &stru_2869ED3E0);
  CFStringReplaceAll(self->_outputBuffer, &stru_2869ED3E0);
}

- (void)closeUpQuoting
{
  if (self->_lastQuoteLevel >= 1)
  {
    v10 = v5;
    v11 = v4;
    v12 = v3;
    v13 = v2;
    v14 = v6;
    v15 = v7;
    v9 = 0;
    do
    {
      [self->_outputString appendString:{@"</BLOCKQUOTE>", v10, v11, v12, v13, v14, v15}];
      ++v9;
    }

    while (v9 < self->_lastQuoteLevel);
  }
}

- (void)handleNoParameterCommand:(id *)a3
{
  if ([a3->var0 isEqualToString:@"param"])
  {
    v5 = [objc_opt_class() parenSet];
    Token = _copyNextToken(self, v5);
    if (Token)
    {
      [(MFMimeEnrichedReader *)self parseParameterString:Token];
    }

    MEMORY[0x2821F96F8]();
  }

  else
  {
    if ([a3->var0 isEqualToString:@"comment"])
    {
      *(self + 211) |= 0x80u;
      return;
    }

    if ([a3->var0 isEqualToString:@"lt"])
    {
      outputBuffer = self->_outputBuffer;
      v8 = @"&lt;";
    }

    else if ([a3->var0 isEqualToString:@"np"])
    {
      outputBuffer = self->_outputBuffer;
      v8 = @"\f";
    }

    else
    {
      if (![a3->var0 isEqualToString:@"nl"])
      {
        return;
      }

      outputBuffer = self->_outputBuffer;
      v8 = @"\n";
    }

    [(NSMutableString *)outputBuffer appendString:v8];
  }
}

- (void)setupFontStackEntry:(_CommandStackEntry *)a3
{
  if (!a3)
  {
    [MFMimeEnrichedReader setupFontStackEntry:];
  }

  if ([*a3->var0 isEqualToString:@"bold"])
  {
    v5 = @"font-weight: bold";
LABEL_6:
    v6 = v5;
LABEL_18:
    a3->var1 = v6;
    return;
  }

  if ([*a3->var0 isEqualToString:@"italic"])
  {
    v5 = @"font-style: italic";
    goto LABEL_6;
  }

  v7 = _currentAttributeOfType(self, 3);
  if (v7)
  {
    [v7 floatValue];
    v9 = v8;
  }

  else
  {
    v9 = 12.0;
  }

  v10 = 2.0;
  if ([*a3->var0 isEqualToString:@"bigger"])
  {
    goto LABEL_17;
  }

  v10 = 1.0;
  if ([*a3->var0 isEqualToString:@"x-tad-bigger"])
  {
    goto LABEL_17;
  }

  if ([*a3->var0 isEqualToString:@"smaller"])
  {
    v10 = -2.0;
    v11 = 8.0;
  }

  else
  {
    if (![*a3->var0 isEqualToString:@"x-tad-smaller"])
    {
      return;
    }

    v10 = -1.0;
    v11 = 7.0;
  }

  if (v9 >= v11)
  {
LABEL_17:
    v12 = objc_alloc(MEMORY[0x277CCABB0]);
    *&v13 = v9 + v10;
    v6 = [v12 initWithFloat:v13];
    goto LABEL_18;
  }
}

- (void)beginCommand:(id)a3
{
  for (i = 0; [a3 compare:*(&gCommandSpecTable + i) options:1]; i += 16)
  {
    if (i > 0x19F)
    {
      return;
    }
  }

  v7 = &gCommandSpecTable + i;
  v8 = *(&gCommandSpecTable + i + 8);
  if ((v8 & 4) != 0)
  {
    outputBuffer = self->_outputBuffer;
    if (![outputBuffer length])
    {
      outputBuffer = self->_outputString;
    }

    if ([outputBuffer length] && objc_msgSend(outputBuffer, "characterAtIndex:", objc_msgSend(outputBuffer, "length") - 1) != 10)
    {
      [(NSMutableString *)self->_outputBuffer appendString:@"\n"];
    }
  }

  if ((v8 & 2) != 0)
  {
    [(MFMimeEnrichedReader *)self nowWouldBeAGoodTimeToAppendToTheAttributedString];
  }

  if (v8)
  {
    v10 = malloc_type_malloc(0x10uLL, 0xE00402B90B96AuLL);
    *v10 = v7;
    v10[1] = 0;
  }

  else
  {
    v10 = 0;
  }

  v11 = (v8 >> 3) & 3;
  if (v11 > 1)
  {
    if (v11 == 2)
    {
      goto LABEL_22;
    }
  }

  else if (!v11)
  {
    [(MFMimeEnrichedReader *)self handleNoParameterCommand:v7];
    goto LABEL_22;
  }

  [(MFMimeEnrichedReader *)self setupFontStackEntry:v10];
LABEL_22:
  if (v10)
  {
    CFArrayAppendValue(self->_commandStack, v10);
    if ([**v10 isEqualToString:@"nofill"])
    {
      *(self + 52) = *(self + 52) & 0xC0000000 | (*(self + 52) + 1) & 0x3FFFFFFF;
    }
  }
}

- (void)endCommand:(id)a3
{
  for (i = 0; [a3 compare:*(&gCommandSpecTable + i) options:1]; i += 16)
  {
    if (i > 0x19F)
    {
      return;
    }
  }

  v7 = *(&gCommandSpecTable + i + 8);
  if ((v7 & 2) != 0)
  {
    [(MFMimeEnrichedReader *)self nowWouldBeAGoodTimeToAppendToTheAttributedString];
  }

  if (v7)
  {
    v8 = _peekCommandStackEntry(self);
    if (v8 && ![**v8 compare:a3 options:1])
    {

      _releaseTopStackEntry(self);
    }

    else
    {

      [(MFMimeEnrichedReader *)self mismatchError:a3];
    }
  }
}

- (void)parseParameterString:(id)a3
{
  v4 = _peekCommandStackEntry(self);
  if (v4)
  {
    v5 = v4;
    if (((*v4)[1] & 0x18) != 0 && !v4[1])
    {
      if (![**v4 isEqualToString:@"color"])
      {
        if ([**v5 isEqualToString:@"fontfamily"])
        {
          v8 = [@"font-family: " stringByAppendingString:a3];
        }

        else
        {
          if (![**v5 isEqualToString:@"x-fontsize"])
          {
            return;
          }

          [a3 floatValue];
          if (v9 >= 0.0)
          {
            v10 = v9;
          }

          else
          {
            v10 = 0.0;
          }

          v11 = objc_alloc(MEMORY[0x277CCABB0]);
          *&v12 = v10;
          v8 = [v11 initWithFloat:v12];
        }

        goto LABEL_22;
      }

      [a3 rangeOfString:{@", "}];
      if (v6)
      {
        v15 = 0;
        v13 = 0;
        v14 = 0;
        v7 = [MEMORY[0x277CCAC80] scannerWithString:a3];
        if ([v7 scanHexInt:&v15] && objc_msgSend(v7, "scanString:intoString:", @",", 0) && objc_msgSend(v7, "scanHexInt:", &v14) && objc_msgSend(v7, "scanString:intoString:", @",", 0) && objc_msgSend(v7, "scanHexInt:", &v13))
        {
          a3 = [MEMORY[0x277CCACA8] stringWithFormat:@"rgba(%d, %d, %d, 1)", (vcvtd_n_f64_u32(v15, 0x10uLL) * 255.0), (vcvtd_n_f64_u32(v14, 0x10uLL) * 255.0), (vcvtd_n_f64_u32(v13, 0x10uLL) * 255.0)];
        }

        else
        {
          a3 = 0;
        }
      }

      if (a3)
      {
        v8 = a3;
LABEL_22:
        v5[1] = v8;
      }
    }
  }
}

- (id)currentFont
{
  result = _currentAttributeOfType(self, 1);
  if (!result)
  {
    return @"font-face: Helvetica";
  }

  return result;
}

- (int)readTokenInto:(id *)a3
{
  v5 = [objc_opt_class() punctuationSet];
  Token = _copyNextToken(self, v5);
  if (!Token)
  {
    return 0;
  }

  v7 = Token;
  if ([(__CFString *)Token isEqualToString:@"\n"])
  {
    currentIndex = self->_currentIndex;

    if ((*(self + 52) & 0x3FFFFFFF) != 0)
    {
      v44.location = self->_currentIndex;
      v44.length = currentIndex - v44.location;
      v7 = CFStringCreateWithSubstring(0, self->_inputBuffer.theString, v44);
    }

    else
    {
      v7 = objc_alloc_init(MEMORY[0x277CCAB68]);
      if (currentIndex >= self->_inputLength || currentIndex < 0)
      {
LABEL_34:
        v21 = @" ";

        v9 = 2;
        v7 = v21;
        goto LABEL_78;
      }

      v14 = 1;
      while (1)
      {
        length = self->_inputBuffer.rangeToBuffer.length;
        if (length <= currentIndex)
        {
          break;
        }

        directUniCharBuffer = self->_inputBuffer.directUniCharBuffer;
        if (directUniCharBuffer)
        {
          v17 = directUniCharBuffer[self->_inputBuffer.rangeToBuffer.location + currentIndex];
        }

        else
        {
          directCStringBuffer = self->_inputBuffer.directCStringBuffer;
          if (directCStringBuffer)
          {
            v17 = directCStringBuffer[self->_inputBuffer.rangeToBuffer.location + currentIndex];
          }

          else
          {
            if (self->_inputBuffer.bufferedRangeEnd <= currentIndex || (bufferedRangeStart = self->_inputBuffer.bufferedRangeStart, bufferedRangeStart > currentIndex))
            {
              v20 = currentIndex - 4;
              if (currentIndex < 4)
              {
                v20 = 0;
              }

              if (v20 + 64 < length)
              {
                length = v20 + 64;
              }

              self->_inputBuffer.bufferedRangeStart = v20;
              self->_inputBuffer.bufferedRangeEnd = length;
              v41.length = length - v20;
              v41.location = self->_inputBuffer.rangeToBuffer.location + v20;
              CFStringGetCharacters(self->_inputBuffer.theString, v41, self->_inputBuffer.buffer);
              bufferedRangeStart = self->_inputBuffer.bufferedRangeStart;
            }

            v17 = self->_inputBuffer.buffer[currentIndex - bufferedRangeStart];
          }
        }

        if (v17 != 10)
        {
          break;
        }

        [(MFMimeEnrichedReader *)self appendNewLine:v7];
        ++v14;
        if (++currentIndex >= self->_inputLength)
        {
          goto LABEL_35;
        }
      }

      if (v14 == 1)
      {
        goto LABEL_34;
      }

LABEL_35:
      self->_currentIndex = currentIndex;
    }

    v9 = 2;
    goto LABEL_78;
  }

  if (![(__CFString *)v7 isEqualToString:@"<"])
  {
    v9 = 1;
    goto LABEL_78;
  }

  v10 = self->_currentIndex;
  if (v10 >= self->_inputLength)
  {
    goto LABEL_49;
  }

  if (v10 < 0)
  {
    goto LABEL_49;
  }

  v11 = self->_inputBuffer.rangeToBuffer.length;
  if (v11 <= v10)
  {
    goto LABEL_49;
  }

  v12 = self->_inputBuffer.directUniCharBuffer;
  if (v12)
  {
    v13 = v12[self->_inputBuffer.rangeToBuffer.location + v10];
  }

  else
  {
    v22 = self->_inputBuffer.directCStringBuffer;
    if (v22)
    {
      v13 = v22[self->_inputBuffer.rangeToBuffer.location + v10];
    }

    else
    {
      if (self->_inputBuffer.bufferedRangeEnd <= v10 || (v23 = self->_inputBuffer.bufferedRangeStart, v23 > v10))
      {
        v24 = v10 - 4;
        if (v10 < 4)
        {
          v24 = 0;
        }

        if (v24 + 64 < v11)
        {
          v11 = v24 + 64;
        }

        self->_inputBuffer.bufferedRangeStart = v24;
        self->_inputBuffer.bufferedRangeEnd = v11;
        v42.length = v11 - v24;
        v42.location = self->_inputBuffer.rangeToBuffer.location + v24;
        CFStringGetCharacters(self->_inputBuffer.theString, v42, self->_inputBuffer.buffer);
        v23 = self->_inputBuffer.bufferedRangeStart;
      }

      v13 = self->_inputBuffer.buffer[v10 - v23];
    }
  }

  v10 = self->_currentIndex;
  if (v13 == 60)
  {
    v9 = 1;
    v7 = @"<";
    goto LABEL_77;
  }

  if (v13 != 47)
  {
LABEL_49:
    v9 = 3;
  }

  else
  {
    self->_currentIndex = ++v10;
    v9 = 4;
  }

  inputLength = self->_inputLength;
  if (v10 >= inputLength)
  {
    v39 = v10;
    goto LABEL_76;
  }

  v26 = -v10;
  v27 = v10 + 64;
  do
  {
    if (v10 >= 4)
    {
      v28 = 4;
    }

    else
    {
      v28 = v10;
    }

    if (v10 < 0)
    {
      goto LABEL_64;
    }

    v29 = self->_inputBuffer.rangeToBuffer.length;
    if (v29 <= v10)
    {
      goto LABEL_64;
    }

    v30 = self->_inputBuffer.directUniCharBuffer;
    if (v30)
    {
      v31 = &v30[self->_inputBuffer.rangeToBuffer.location];
    }

    else
    {
      v33 = self->_inputBuffer.directCStringBuffer;
      if (v33)
      {
        v32 = v33[self->_inputBuffer.rangeToBuffer.location + v10];
        goto LABEL_62;
      }

      if (self->_inputBuffer.bufferedRangeEnd <= v10 || (v34 = self->_inputBuffer.bufferedRangeStart, v34 > v10))
      {
        v35 = v28 + v26;
        v36 = v27 - v28;
        v37 = v10 - v28;
        v38 = v37 + 64;
        if (v37 + 64 >= v29)
        {
          v38 = self->_inputBuffer.rangeToBuffer.length;
        }

        self->_inputBuffer.bufferedRangeStart = v37;
        self->_inputBuffer.bufferedRangeEnd = v38;
        if (v29 >= v36)
        {
          v29 = v36;
        }

        v43.location = v37 + self->_inputBuffer.rangeToBuffer.location;
        v43.length = v29 + v35;
        CFStringGetCharacters(self->_inputBuffer.theString, v43, self->_inputBuffer.buffer);
        v34 = self->_inputBuffer.bufferedRangeStart;
      }

      v31 = &self->_inputBuffer.buffer[-v34];
    }

    v32 = v31[v10];
LABEL_62:
    if (v32 == 62)
    {
      break;
    }

    inputLength = self->_inputLength;
LABEL_64:
    ++v10;
    --v26;
    ++v27;
  }

  while (v10 < inputLength);
  v39 = v10;
  v10 = self->_currentIndex;
LABEL_76:
  v45.length = v39 - v10;
  v45.location = v10;
  v7 = CFStringCreateWithSubstring(0, self->_inputBuffer.theString, v45);
  v10 = v39;
LABEL_77:
  self->_currentIndex = v10 + 1;
LABEL_78:
  *a3 = v7;
  return v9;
}

- (void)convertRichTextString:(id)a3 intoOutputString:(id)a4
{
  v8 = 0;
  [(MFMimeEnrichedReader *)self resetStateWithString:a3 outputString:a4];
  v5 = 0;
  v6 = 0;
  while (1)
  {
    v7 = [(MFMimeEnrichedReader *)self readTokenInto:&v8];
    if (v7 == 3)
    {
      [(MFMimeEnrichedReader *)self beginCommand:v8];
      goto LABEL_15;
    }

    if (v7 == 4)
    {
      [(MFMimeEnrichedReader *)self endCommand:v8];
      goto LABEL_15;
    }

    if (!v7)
    {
      break;
    }

    if ((*(self + 211) & 0x80000000) == 0)
    {
      if ([v8 isEqual:@"\n"])
      {
        v6 |= [v5 isEqual:@" "] ^ 1;
      }

      else
      {
        if ((v6 & 1) != 0 && ([v8 isEqual:@" "] & 1) == 0 && (objc_msgSend(v5, "isEqual:", @" ") & 1) == 0)
        {
          [(MFMimeEnrichedReader *)self appendStringToBuffer:@" "];
        }

        [(MFMimeEnrichedReader *)self appendStringToBuffer:v8];
        v6 = 0;
      }
    }

LABEL_15:

    v5 = v8;
  }

  [(MFMimeEnrichedReader *)self nowWouldBeAGoodTimeToAppendToTheAttributedString];
  [(MFMimeEnrichedReader *)self closeUpQuoting];
}

- (void)convertEnrichedString:(id)a3 intoOutputString:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  Current = CFAbsoluteTimeGetCurrent();
  v15 = 0;
  [(MFMimeEnrichedReader *)self resetStateWithString:a3 outputString:a4];
  v8 = 1;
  while (1)
  {
    v9 = [(MFMimeEnrichedReader *)self readTokenInto:&v15];
    if (v9 == 3)
    {
      [(MFMimeEnrichedReader *)self beginCommand:v15];
      goto LABEL_12;
    }

    if (v9 == 4)
    {
      [(MFMimeEnrichedReader *)self endCommand:v15];
      goto LABEL_12;
    }

    if (!v9)
    {
      break;
    }

    if ((*(self + 211) & 0x80000000) == 0)
    {
      if (v9 != 2 || (v8 & 1) == 0 || ([v15 isEqual:@" "] & 1) == 0)
      {
        [(MFMimeEnrichedReader *)self appendStringToBuffer:v15];
      }

      v8 = 0;
    }

LABEL_12:
  }

  [(MFMimeEnrichedReader *)self nowWouldBeAGoodTimeToAppendToTheAttributedString];
  [(MFMimeEnrichedReader *)self closeUpQuoting];
  v10 = MFLogGeneral();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = CFAbsoluteTimeGetCurrent() - Current;
    inputLength = self->_inputLength;
    v13 = [self->_outputString length];
    *buf = 134218496;
    v17 = v11;
    v18 = 2048;
    v19 = inputLength;
    v20 = 2048;
    v21 = v13;
    _os_log_impl(&dword_258BDA000, v10, OS_LOG_TYPE_INFO, "elapsed time %gs (input length=%ld, output length=%lu)", buf, 0x20u);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@:%p", objc_opt_class(), self];
  commandStack = self->_commandStack;
  if (commandStack)
  {
    Count = CFArrayGetCount(commandStack);
    [v3 appendFormat:@"\n\t_commandStack = %p (%ld entries):", self->_commandStack, Count];
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(self->_commandStack, i);
        v8 = **ValueAtIndex;
        [v3 appendFormat:@"\n\t\t[%@ parameter=%@]", v8, ValueAtIndex[1]];
      }
    }
  }

  if (self->_outputBuffer)
  {
    [v3 appendFormat:@"\n\t_outputBuffer=%@", self->_outputBuffer];
  }

  if (self->_outputString)
  {
    [v3 appendFormat:@"\n\t_outputString=%@", self->_outputString];
  }

  [v3 appendString:@">\n-------------------------------------------------------------------\n"];
  return v3;
}

@end