@interface _MFFormatFlowedWriter
+ (id)newWithPlainTextDocument:(id)document encoding:(unsigned int)encoding;
- (id)outputString;
- (id)quotedString;
- (unint64_t)_findLineBreakInRange:(_NSRange)range maxCharWidthCount:(unint64_t)count endIsURL:(BOOL)l;
- (void)_outputQuotedParagraph:(id)paragraph range:(_NSRange)range withQuoteLevel:(unsigned int)level;
- (void)dealloc;
@end

@implementation _MFFormatFlowedWriter

+ (id)newWithPlainTextDocument:(id)document encoding:(unsigned int)encoding
{
  v6 = [objc_allocWithZone(self) init];
  *(v6 + 8) = document;
  *(v6 + 16) = encoding;
  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _MFFormatFlowedWriter;
  [(_MFFormatFlowedWriter *)&v3 dealloc];
}

- (unint64_t)_findLineBreakInRange:(_NSRange)range maxCharWidthCount:(unint64_t)count endIsURL:(BOOL)l
{
  result = 0x7FFFFFFFFFFFFFFFLL;
  if (range.location != 0x7FFFFFFFFFFFFFFFLL && range.length != 0)
  {
    lCopy = l;
    length = range.length;
    location = range.location;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    *buffer = 0u;
    v36 = 0u;
    lineString = self->_lineString;
    theString = lineString;
    rangeCopy = range;
    CharactersPtr = CFStringGetCharactersPtr(lineString);
    if (CharactersPtr)
    {
      CStringPtr = 0;
    }

    else
    {
      CStringPtr = CFStringGetCStringPtr(lineString, 0x600u);
    }

    selfCopy = self;
    v47 = 0;
    v48 = 0;
    v45 = CStringPtr;
    if (count)
    {
      v14 = 0;
      v15 = 0;
      do
      {
        if ((v14 & 0x8000000000000000) != 0 || (v16 = rangeCopy.length, rangeCopy.length <= v14))
        {
          v18 = 0;
        }

        else
        {
          if (CharactersPtr)
          {
            v17 = CharactersPtr[rangeCopy.location + v14];
          }

          else if (v45)
          {
            v17 = v45[rangeCopy.location + v14];
          }

          else
          {
            if (v48 <= v14 || (v20 = v47, v47 > v14))
            {
              v21 = v14 - 4;
              if (v14 < 4)
              {
                v21 = 0;
              }

              if (v21 + 64 < rangeCopy.length)
              {
                v16 = v21 + 64;
              }

              v47 = v21;
              v48 = v16;
              v49.length = v16 - v21;
              v49.location = rangeCopy.location + v21;
              CFStringGetCharacters(theString, v49, buffer);
              v20 = v47;
            }

            v17 = buffer[v14 - v20];
          }

          v18 = v17;
          if ((v17 & 0xFC00) == 0xD800 && v14 < length - 1)
          {
            v23 = v14 + 1;
            v24 = rangeCopy.length;
            if (rangeCopy.length <= (v14 + 1))
            {
              v25 = 0;
            }

            else if (CharactersPtr)
            {
              v25 = CharactersPtr[rangeCopy.location + v23];
            }

            else if (v45)
            {
              v25 = v45[rangeCopy.location + v23];
            }

            else
            {
              if (v48 <= v23 || (v28 = v47, v47 > v23))
              {
                v29 = v14 - 3;
                if (v14 < 3)
                {
                  v29 = 0;
                }

                if (v29 + 64 < rangeCopy.length)
                {
                  v24 = v29 + 64;
                }

                v47 = v29;
                v48 = v24;
                v50.length = v24 - v29;
                v50.location = rangeCopy.location + v29;
                CFStringGetCharacters(theString, v50, buffer);
                v28 = v47;
              }

              v25 = buffer[v23 - v28];
            }

            v26 = v25 & 0xFC00;
            v27 = (v18 << 10) + v25 - 56613888;
            if (v26 == 56320)
            {
              v18 = v27;
              ++v14;
            }
          }
        }

        if (((u_getIntPropertyValue(v18, UCHAR_EAST_ASIAN_WIDTH) - 3) & 0xFFFFFFFD) != 0)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        v15 += v19;
        ++v14;
      }

      while (v14 < length && v15 < count);
    }

    else
    {
      v15 = 0;
      v14 = 0;
    }

    if (lCopy && v15 <= count)
    {
      return location + length;
    }

    else
    {
      v30 = selfCopy;
      v31 = [(NSMutableString *)selfCopy->_lineString length]- location;
      v32 = [(NSMutableString *)v30->_lineString length];
      if (location + v14 + 1 < v32)
      {
        v33 = location + v14 + 1;
      }

      else
      {
        v33 = v32;
      }

      return [(NSMutableString *)v30->_lineString mf_lineBreakBeforeIndex:v33 withinRange:location, v31];
    }
  }

  return result;
}

- (void)_outputQuotedParagraph:(id)paragraph range:(_NSRange)range withQuoteLevel:(unsigned int)level
{
  length = range.length;
  location = range.location;
  v67 = *MEMORY[0x277D85DE8];
  if (range.length)
  {
    v8 = 1;
  }

  else
  {
    v8 = level == 0;
  }

  v9 = v8;
  v10 = @" \n";
  if ((*(self + 40) & 1) == 0)
  {
    v10 = @"\n";
  }

  v55 = v10;
  lineString = self->_lineString;
  if (lineString)
  {
    [(NSMutableString *)lineString setString:&stru_2869ED3E0];
  }

  else
  {
    self->_lineString = [objc_allocWithZone(MEMORY[0x277CCAB68]) initWithCapacity:72];
  }

  if (level)
  {
    levelCopy = level;
    do
    {
      [(NSMutableString *)self->_lineString appendString:@">"];
      --levelCopy;
    }

    while (levelCopy);
    v13 = 72 - level;
  }

  else
  {
    v13 = 72;
  }

  v51 = v9;
  if (length > v13 && (v14 = [paragraph substringWithRange:{location, length}]) != 0)
  {
    v15 = v14;
    if (_weakDDURLifierClass_onceToken != -1)
    {
      [_MFFormatFlowedWriter _outputQuotedParagraph:range:withQuoteLevel:];
    }

    v16 = [_weakDDURLifierClass_sDDURLifierClass urlMatchesForString:v15];
  }

  else
  {
    v16 = 0;
  }

  outputString = self->_outputString;
  if (outputString)
  {
    v61 = length + location;
    if (location < length + location)
    {
      v52 = ~location;
      v18 = location;
      range = location;
      v50 = location;
      v19 = location;
      do
      {
        if (level || [paragraph rangeOfString:@" " options:8 range:{v18, length}] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(paragraph, "rangeOfString:options:range:", @"From ", 8, v18, length) != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(paragraph, "rangeOfString:options:range:", @">", 8, v18, length) != 0x7FFFFFFFFFFFFFFFLL)
        {
          [(NSMutableString *)self->_lineString appendString:@" "];
        }

        v53 = v18;
        v54 = length;
        v20 = [(NSMutableString *)self->_lineString length];
        v57 = v19 - v20;
        v21 = v19 - v20 + 72;
        *buf = 0u;
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v22 = [v16 countByEnumeratingWithState:buf objects:v66 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = v21 + v52;
          v25 = *v63;
LABEL_33:
          v26 = 0;
          while (1)
          {
            if (*v63 != v25)
            {
              objc_enumerationMutation(v16);
            }

            v27 = *(*&buf[8] + 8 * v26);
            range = [v27 range];
            if (range <= v24 && range + v29 > v24)
            {
              break;
            }

            if (v23 == ++v26)
            {
              v23 = [v16 countByEnumeratingWithState:buf objects:v66 count:16];
              if (v23)
              {
                goto LABEL_33;
              }

              goto LABEL_49;
            }
          }

          if (!v27)
          {
            goto LABEL_49;
          }

          range2 = [v27 range];
          v33 = v32 + v50 + range2;
          if (v33 <= v21)
          {
            goto LABEL_49;
          }

          if (v20 - v19 + v33 <= 0x3E6)
          {
            v21 = v32 + v50 + range2;
          }

          else
          {
            v21 = v57 + 998;
          }

          v56 = 1;
        }

        else
        {
LABEL_49:
          v56 = 0;
        }

        if (v21 >= v61)
        {
          v34 = v61;
        }

        else
        {
          v34 = v21;
        }

        v68.length = v34 - v19;
        v68.location = range;
        v35 = CFStringCreateWithSubstring(0, paragraph, v68);
        [(NSMutableString *)self->_lineString appendString:v35];
        CFRelease(v35);
        if ([(NSMutableString *)self->_lineString length]>= 0x49)
        {
          v36 = NSZoneMalloc(0, [(NSMutableString *)self->_lineString length]);
          [(NSMutableString *)self->_lineString length];
          v37 = 998;
        }

        else
        {
          v36 = v66;
          v37 = 72;
        }

        [(NSMutableString *)self->_lineString length];
        encoding = self->_encoding;
        Bytes = MFStringGetBytes();
        if (Bytes < [(NSMutableString *)self->_lineString length])
        {
          Bytes = [(NSMutableString *)self->_lineString rangeOfComposedCharacterSequenceAtIndex:Bytes];
        }

        if (v36 != v66)
        {
          NSZoneFree(0, v36);
        }

        if (Bytes <= v20)
        {

          self->_outputString = 0;
          goto LABEL_92;
        }

        if (Bytes != [(NSMutableString *)self->_lineString length]|| v61 > v21)
        {
          v40 = [(_MFFormatFlowedWriter *)self _findLineBreakInRange:v20 maxCharWidthCount:Bytes - v20 endIsURL:v37 - v20, v56];
          if (v40 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_64;
          }

          if (v40 != v20)
          {
            if (v40 < v20)
            {
              v48 = MFLogGeneral();
              if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_258BDA000, v48, OS_LOG_TYPE_INFO, "Bad line break index", buf, 2u);
              }

LABEL_64:
              v40 = Bytes;
            }

            v34 = v57 + v40;
LABEL_66:
            if ((*(self + 40) & 1) == 0)
            {
              [(NSMutableString *)self->_outputString replaceOccurrencesOfString:@" \n" withString:@"  \n" options:0 range:0, [(NSMutableString *)self->_outputString length]];
              *(self + 40) |= 1u;
              v55 = @" \n";
            }

            goto LABEL_68;
          }

          if (v56)
          {
            goto LABEL_64;
          }

          v42 = [objc_msgSend(paragraph substringWithRange:{v53, v54), "mf_nextWordFromIndex:forward:", 0, 1}];
          if (v42 == 0x7FFFFFFFFFFFFFFFLL || v42 > 998 - v20)
          {
            goto LABEL_64;
          }

          v43 = [paragraph substringWithRange:{range, v42}];
          [(NSMutableString *)self->_lineString deleteCharactersInRange:v20, [(NSMutableString *)self->_lineString length]- v20];
          [(NSMutableString *)self->_lineString appendString:v43];
          v44 = NSZoneMalloc(0, 0x3E6uLL);
          [(NSMutableString *)self->_lineString length];
          v45 = self->_encoding;
          v46 = MFStringGetBytes();
          v47 = [(NSMutableString *)self->_lineString length];
          if (v46 == v47)
          {
            Bytes = v46;
          }

          NSZoneFree(0, v44);
          v34 = Bytes - v20 + v19;
          if (v46 != v47)
          {
            goto LABEL_66;
          }
        }

LABEL_68:
        if (!self->_outputString)
        {
          goto LABEL_92;
        }

        v41 = v34 - v19 + v20;
        if (v41 < [(NSMutableString *)self->_lineString length])
        {
          [(NSMutableString *)self->_lineString deleteCharactersInRange:v34 - v19 + v20, [(NSMutableString *)self->_lineString length]- v41];
        }

        [(NSMutableString *)self->_outputString appendString:self->_lineString];
        length = v61 - v34;
        if (v61 != v34)
        {
          [(NSMutableString *)self->_outputString appendString:v55];
        }

        if ([(NSMutableString *)self->_lineString length]> level)
        {
          [(NSMutableString *)self->_lineString deleteCharactersInRange:level, [(NSMutableString *)self->_lineString length]- level];
        }

        outputString = self->_outputString;
        if (!outputString)
        {
          goto LABEL_92;
        }

        v18 = v34;
        range = v34;
        v19 = v34;
      }

      while (v61 > v34);
    }

    if ((v51 & 1) == 0)
    {
      [(NSMutableString *)outputString appendString:self->_lineString];
    }
  }

LABEL_92:
  v49 = *MEMORY[0x277D85DE8];
}

- (id)outputString
{
  outputString = self->_outputString;
  if (!outputString)
  {
    fragmentCount = [(MFPlainTextDocument *)self->_inputDocument fragmentCount];
    v17 = 0;
    v16 = 0;
    outputString = objc_alloc_init(MEMORY[0x277CCAB68]);
    self->_outputString = outputString;
    if (fragmentCount)
    {
      v6 = 0;
      while (1)
      {
        if (!outputString)
        {
          return [(NSMutableString *)outputString copyWithZone:0];
        }

        [(MFPlainTextDocument *)self->_inputDocument getString:&v17 quoteLevel:&v16 ofFragmentAtIndex:v6];
        v7 = [v17 length];
        if (v7)
        {
          break;
        }

LABEL_22:
        ++v6;
        outputString = self->_outputString;
        if (v6 == fragmentCount)
        {
          return [(NSMutableString *)outputString copyWithZone:0];
        }
      }

      v8 = v7;
      v9 = 0;
      while (1)
      {
        if (!self->_outputString)
        {
          goto LABEL_22;
        }

        v14 = 0;
        v15 = 0;
        v13 = 0;
        [v17 getLineStart:&v15 end:&v14 contentsEnd:&v13 forRange:{v9, 0}];
        v10 = [v17 rangeOfString:@"-- " options:8 range:{v15, v13 - v15}];
        v11 = v13;
        if (v10 != 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        do
        {
          v12 = v11;
          if (v11 <= v15)
          {
            break;
          }

          --v11;
        }

        while ([v17 characterAtIndex:v12 - 1] == 32);
        if (v13 == v12)
        {
          goto LABEL_17;
        }

        if (v13 != v14)
        {
          v13 = v12;
LABEL_17:
          [(_MFFormatFlowedWriter *)self _outputQuotedParagraph:v17 range:v15 withQuoteLevel:v12 - v15, v16];
          if (v13 != v14)
          {
            [(NSMutableString *)self->_outputString appendString:@"\n"];
          }

          goto LABEL_19;
        }

        [(_MFFormatFlowedWriter *)self _outputQuotedParagraph:v17 range:v15 withQuoteLevel:v12 + 1 - v15, v16];
        if (v13 - v12 >= 2)
        {
          [(NSMutableString *)self->_outputString appendString:@"\n"];
          [(_MFFormatFlowedWriter *)self _outputQuotedParagraph:v17 range:v12 + 1 withQuoteLevel:~v12 + v13, v16];
        }

LABEL_19:
        v9 = v14;
        if (v14 >= v8)
        {
          goto LABEL_22;
        }
      }

      v12 = v13;
      goto LABEL_17;
    }
  }

  return [(NSMutableString *)outputString copyWithZone:0];
}

- (id)quotedString
{
  quotedString = self->_quotedString;
  if (!quotedString)
  {
    fragmentCount = [(MFPlainTextDocument *)self->_inputDocument fragmentCount];
    v15 = 0;
    v14 = 0;
    quotedString = objc_alloc_init(MEMORY[0x277CCAB68]);
    self->_quotedString = quotedString;
    if (fragmentCount)
    {
      for (i = 0; i != fragmentCount; ++i)
      {
        if (!quotedString)
        {
          break;
        }

        [(MFPlainTextDocument *)self->_inputDocument getString:&v15 quoteLevel:&v14 ofFragmentAtIndex:i];
        v7 = [v15 length];
        if (v7)
        {
          v8 = v7;
          v9 = 0;
          do
          {
            if (!self->_quotedString)
            {
              break;
            }

            v12 = 0;
            v13 = 0;
            v11 = 0;
            [v15 getLineStart:&v13 end:&v12 contentsEnd:&v11 forRange:{v9, 0}];
            if (v14)
            {
              v10 = v14 + 1;
              do
              {
                [(NSMutableString *)self->_quotedString appendString:@">"];
                --v10;
              }

              while (v10 > 1);
              [(NSMutableString *)self->_quotedString appendString:@" "];
            }

            -[NSMutableString appendString:](self->_quotedString, "appendString:", [v15 substringWithRange:{v13, v12 - v13}]);
            v9 = v12;
          }

          while (v12 < v8);
        }

        quotedString = self->_quotedString;
      }
    }
  }

  return [(NSMutableString *)quotedString copyWithZone:0];
}

@end