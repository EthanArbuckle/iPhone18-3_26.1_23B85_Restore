@interface _MFFormatFlowedWriter
+ (id)newWithPlainTextDocument:(id)document encoding:(unsigned int)encoding;
- (id)outputString;
- (id)quotedString;
- (unint64_t)_findLineBreakInRange:(_NSRange)range maxCharWidthCount:(unint64_t)count endIsURL:(BOOL)l;
- (void)_outputQuotedParagraph:(id)paragraph range:(_NSRange)range withQuoteLevel:(unsigned int)level;
@end

@implementation _MFFormatFlowedWriter

+ (id)newWithPlainTextDocument:(id)document encoding:(unsigned int)encoding
{
  documentCopy = document;
  v7 = [objc_allocWithZone(self) init];
  v8 = *(v7 + 8);
  *(v7 + 8) = documentCopy;

  *(v7 + 16) = encoding;
  return v7;
}

- (unint64_t)_findLineBreakInRange:(_NSRange)range maxCharWidthCount:(unint64_t)count endIsURL:(BOOL)l
{
  result = 0x7FFFFFFFFFFFFFFFLL;
  if (range.location != 0x7FFFFFFFFFFFFFFFLL && range.length != 0)
  {
    lCopy = l;
    length = range.length;
    location = range.location;
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v42 = v12;
    v43 = v12;
    v40 = v12;
    v41 = v12;
    v38 = v12;
    v39 = v12;
    *buffer = v12;
    v37 = v12;
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
    v48 = 0;
    v49 = 0;
    v46 = CStringPtr;
    if (count)
    {
      v15 = 0;
      v16 = 0;
      do
      {
        if ((v15 & 0x8000000000000000) != 0 || (v17 = rangeCopy.length, rangeCopy.length <= v15))
        {
          v19 = 0;
        }

        else
        {
          if (CharactersPtr)
          {
            v18 = CharactersPtr[rangeCopy.location + v15];
          }

          else if (v46)
          {
            v18 = v46[rangeCopy.location + v15];
          }

          else
          {
            if (v49 <= v15 || (v21 = v48, v48 > v15))
            {
              v22 = v15 - 4;
              if (v15 < 4)
              {
                v22 = 0;
              }

              if (v22 + 64 < rangeCopy.length)
              {
                v17 = v22 + 64;
              }

              v48 = v22;
              v49 = v17;
              v50.length = v17 - v22;
              v50.location = rangeCopy.location + v22;
              CFStringGetCharacters(theString, v50, buffer);
              v21 = v48;
            }

            v18 = buffer[v15 - v21];
          }

          v19 = v18;
          if ((v18 & 0xFC00) == 0xD800 && v15 < length - 1)
          {
            v24 = v15 + 1;
            v25 = rangeCopy.length;
            if (rangeCopy.length <= (v15 + 1))
            {
              v26 = 0;
            }

            else if (CharactersPtr)
            {
              v26 = CharactersPtr[rangeCopy.location + v24];
            }

            else if (v46)
            {
              v26 = v46[rangeCopy.location + v24];
            }

            else
            {
              if (v49 <= v24 || (v29 = v48, v48 > v24))
              {
                v30 = v15 - 3;
                if (v15 < 3)
                {
                  v30 = 0;
                }

                if (v30 + 64 < rangeCopy.length)
                {
                  v25 = v30 + 64;
                }

                v48 = v30;
                v49 = v25;
                v51.length = v25 - v30;
                v51.location = rangeCopy.location + v30;
                CFStringGetCharacters(theString, v51, buffer);
                v29 = v48;
              }

              v26 = buffer[v24 - v29];
            }

            v27 = v26 & 0xFC00;
            v28 = (v19 << 10) + v26 - 56613888;
            if (v27 == 56320)
            {
              v19 = v28;
              ++v15;
            }
          }
        }

        if (((u_getIntPropertyValue(v19, UCHAR_EAST_ASIAN_WIDTH) - 3) & 0xFFFFFFFD) != 0)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        v16 += v20;
        ++v15;
      }

      while (v15 < length && v16 < count);
    }

    else
    {
      v16 = 0;
      v15 = 0;
    }

    if (lCopy && v16 <= count)
    {
      return location + length;
    }

    else
    {
      v31 = selfCopy;
      v32 = [(NSMutableString *)selfCopy->_lineString length]- location;
      v33 = [(NSMutableString *)v31->_lineString length];
      if (location + v15 + 1 < v33)
      {
        v34 = location + v15 + 1;
      }

      else
      {
        v34 = v33;
      }

      return [(NSMutableString *)v31->_lineString mf_lineBreakBeforeIndex:v34 withinRange:location, v32];
    }
  }

  return result;
}

- (void)_outputQuotedParagraph:(id)paragraph range:(_NSRange)range withQuoteLevel:(unsigned int)level
{
  length = range.length;
  location = range.location;
  v76 = *MEMORY[0x1E69E9840];
  str = paragraph;
  v66 = length;
  levelCopy = level;
  if (length)
  {
    v9 = 1;
  }

  else
  {
    v9 = level == 0;
  }

  v10 = v9;
  v57 = v10;
  if (*(self + 40))
  {
    v11 = @" \n";
  }

  else
  {
    v11 = @"\n";
  }

  v59 = v11;
  lineString = self->_lineString;
  if (lineString)
  {
    [(NSMutableString *)lineString setString:&stru_1F273A5E0];
  }

  else
  {
    v13 = [objc_allocWithZone(MEMORY[0x1E696AD60]) initWithCapacity:72];
    v14 = self->_lineString;
    self->_lineString = v13;
  }

  levelCopy2 = level;
  if (level)
  {
    do
    {
      [(NSMutableString *)self->_lineString appendString:@">"];
      --levelCopy2;
    }

    while (levelCopy2);
    v16 = 72 - level;
  }

  else
  {
    v16 = 72;
  }

  if (v66 <= v16)
  {
    v60 = 0;
  }

  else
  {
    v17 = [(__CFString *)str substringWithRange:location];
    if (v17)
    {
      if (_weakDDURLifierClass_onceToken != -1)
      {
        [_MFFormatFlowedWriter _outputQuotedParagraph:range:withQuoteLevel:];
      }

      v60 = [_weakDDURLifierClass_sDDURLifierClass urlMatchesForString:v17];
    }

    else
    {
      v60 = 0;
    }
  }

  outputString = self->_outputString;
  if (outputString)
  {
    v68 = v66 + location;
    if (location < v66 + location)
    {
      v58 = ~location;
      v65 = location;
      v69 = location;
      v63 = location;
      while (1)
      {
        if (levelCopy || [(__CFString *)str rangeOfString:@" " options:8 range:v65, v66]!= 0x7FFFFFFFFFFFFFFFLL || [(__CFString *)str rangeOfString:@"From " options:8 range:v65, v66]!= 0x7FFFFFFFFFFFFFFFLL || [(__CFString *)str rangeOfString:@">" options:8 range:v65, v66]!= 0x7FFFFFFFFFFFFFFFLL)
        {
          [(NSMutableString *)self->_lineString appendString:@" "];
        }

        v19 = [(NSMutableString *)self->_lineString length];
        v20 = v60;
        *buf = 0u;
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        v21 = v20;
        v22 = [v21 countByEnumeratingWithState:buf objects:v74 count:16];
        v62 = v69 - v19;
        v23 = v69 - v19 + 72;
        if (v22)
        {
          v24 = v23 + v58;
          v25 = *v71;
          while (2)
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v71 != v25)
              {
                objc_enumerationMutation(v21);
              }

              v27 = *(*&buf[8] + 8 * i);
              range = [v27 range];
              if (range <= v24 && range + v29 > v24)
              {
                v67 = v27;
                goto LABEL_46;
              }
            }

            v22 = [v21 countByEnumeratingWithState:buf objects:v74 count:16];
            if (v22)
            {
              continue;
            }

            break;
          }

          v67 = 0;
LABEL_46:
          location = v63;
        }

        else
        {
          v67 = 0;
        }

        if (v67 && (v31 = [v67 range], v33 = v32 + location + v31, v33 > v23))
        {
          if (v19 - v69 + v33 <= 0x3E6)
          {
            v23 = v32 + location + v31;
          }

          else
          {
            v23 = v62 + 998;
          }

          v34 = 1;
        }

        else
        {
          v34 = 0;
        }

        v35.location = v69;
        if (v23 >= v68)
        {
          v36 = v68;
        }

        else
        {
          v36 = v23;
        }

        v35.length = v36 - v69;
        v37 = CFStringCreateWithSubstring(0, str, v35);
        [(NSMutableString *)self->_lineString appendString:v37];
        CFRelease(v37);
        v75 = 0xAAAAAAAAAAAAAAAALL;
        *&v38 = 0xAAAAAAAAAAAAAAAALL;
        *(&v38 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v74[2] = v38;
        v74[3] = v38;
        v74[0] = v38;
        v74[1] = v38;
        if ([(NSMutableString *)self->_lineString length]>= 0x49)
        {
          v39 = NSZoneMalloc(0, [(NSMutableString *)self->_lineString length]);
          [(NSMutableString *)self->_lineString length];
          v40 = 998;
        }

        else
        {
          v39 = v74;
          v40 = 72;
        }

        [(NSMutableString *)self->_lineString length];
        encoding = self->_encoding;
        Bytes = MFStringGetBytes();
        if (Bytes < [(NSMutableString *)self->_lineString length])
        {
          Bytes = [(NSMutableString *)self->_lineString rangeOfComposedCharacterSequenceAtIndex:Bytes];
        }

        if (v39 != v74)
        {
          NSZoneFree(0, v39);
        }

        if (Bytes <= v19)
        {
          v43 = self->_outputString;
          self->_outputString = 0;

          location = v63;
          v36 = 0x7FFFFFFFFFFFFFFFLL;
          v69 = v68;
          goto LABEL_70;
        }

        if (Bytes == [(NSMutableString *)self->_lineString length]&& v68 <= v23)
        {
          location = v63;
          goto LABEL_70;
        }

        v45 = [(_MFFormatFlowedWriter *)self _findLineBreakInRange:v19 maxCharWidthCount:Bytes - v19 endIsURL:v40 - v19, v34];
        location = v63;
        if (v45 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_83;
        }

        if (v45 != v19)
        {
          break;
        }

        if (v34)
        {
          goto LABEL_83;
        }

        v47 = [(__CFString *)str substringWithRange:v65, v66];
        v48 = [v47 mf_nextWordFromIndex:0 forward:1];
        if (v48 == 0x7FFFFFFFFFFFFFFFLL || v48 > 998 - v19)
        {

          v36 = v62 + Bytes;
          goto LABEL_85;
        }

        v49 = [(__CFString *)str substringWithRange:v65, v48];
        [(NSMutableString *)self->_lineString deleteCharactersInRange:v19, [(NSMutableString *)self->_lineString length]- v19];
        [(NSMutableString *)self->_lineString appendString:v49];
        v50 = NSZoneMalloc(0, 0x3E6uLL);
        [(NSMutableString *)self->_lineString length];
        v51 = self->_encoding;
        v52 = MFStringGetBytes();
        v53 = [(NSMutableString *)self->_lineString length];
        NSZoneFree(0, v50);
        v54 = v52 == v53;
        if (v52 == v53)
        {
          Bytes = v52;
        }

        location = v63;
        v36 = Bytes - v19 + v69;
        if (!v54)
        {
          goto LABEL_85;
        }

LABEL_70:
        if (self->_outputString)
        {
          v44 = v36 - v69 + v19;
          if (v44 < [(NSMutableString *)self->_lineString length])
          {
            [(NSMutableString *)self->_lineString deleteCharactersInRange:v44, [(NSMutableString *)self->_lineString length]- v44];
          }

          [(NSMutableString *)self->_outputString appendString:self->_lineString];
          v66 = v68 - v36;
          if (v68 != v36)
          {
            [(NSMutableString *)self->_outputString appendString:v59];
          }

          if ([(NSMutableString *)self->_lineString length]> levelCopy)
          {
            [(NSMutableString *)self->_lineString deleteCharactersInRange:levelCopy, [(NSMutableString *)self->_lineString length]- levelCopy];
          }

          v69 = v36;
          v65 = v36;
        }

        outputString = self->_outputString;
        if (!outputString)
        {
          goto LABEL_102;
        }

        v68 = v66 + v65;
        if (v69 >= v66 + v65)
        {
          goto LABEL_100;
        }
      }

      if (v45 < v19)
      {
        v55 = MFLogGeneral();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B0389000, v55, OS_LOG_TYPE_INFO, "Bad line break index", buf, 2u);
        }

LABEL_83:
        v45 = Bytes;
      }

      v36 = v62 + v45;
LABEL_85:
      if ((*(self + 40) & 1) == 0)
      {

        v46 = self->_outputString;
        [(NSMutableString *)v46 length];
        [NSMutableString replaceOccurrencesOfString:v46 withString:"replaceOccurrencesOfString:withString:options:range:" options:? range:?];
        *(self + 40) |= 1u;
        v59 = @" \n";
      }

      goto LABEL_70;
    }

LABEL_100:
    if ((v57 & 1) == 0)
    {
      [(NSMutableString *)outputString appendString:self->_lineString];
    }
  }

LABEL_102:

  v56 = *MEMORY[0x1E69E9840];
}

- (id)outputString
{
  outputString = self->_outputString;
  if (!outputString)
  {
    fragmentCount = [(MFPlainTextDocument *)self->_inputDocument fragmentCount];
    v21 = -1431655766;
    v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v6 = self->_outputString;
    self->_outputString = v5;

    v18 = fragmentCount;
    if (fragmentCount)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        v9 = v8;
        if (!self->_outputString)
        {
          break;
        }

        inputDocument = self->_inputDocument;
        v20 = v8;
        [(MFPlainTextDocument *)inputDocument getString:&v20 quoteLevel:&v21 ofFragmentAtIndex:v7];
        v8 = v20;

        v11 = [v8 length];
        if (v11)
        {
          v12 = 0;
          while (1)
          {
            if (!self->_outputString)
            {
              goto LABEL_21;
            }

            memset(v19, 170, sizeof(v19));
            [v8 getLineStart:&v19[2] end:&v19[1] contentsEnd:v19 forRange:{v12, 0}];
            v13 = [v8 rangeOfString:@"-- " options:8 range:{v19[2], v19[0] - v19[2]}];
            v14 = v19[0];
            if (v13 != 0x7FFFFFFFFFFFFFFFLL)
            {
              break;
            }

            do
            {
              v15 = v14;
              if (v14 <= v19[2])
              {
                break;
              }

              --v14;
            }

            while ([v8 characterAtIndex:v15 - 1] == 32);
            if (v19[0] == v15)
            {
              goto LABEL_16;
            }

            if (v19[0] != v19[1])
            {
              v19[0] = v15;
LABEL_16:
              [(_MFFormatFlowedWriter *)self _outputQuotedParagraph:v8 range:v19[2] withQuoteLevel:v15 - v19[2], v21, v18];
              if (v19[0] != v19[1])
              {
                [(NSMutableString *)self->_outputString appendString:@"\n"];
              }

              goto LABEL_18;
            }

            [(_MFFormatFlowedWriter *)self _outputQuotedParagraph:v8 range:v19[2] withQuoteLevel:v15 + 1 - v19[2], v21];
            if (v19[0] - v15 >= 2)
            {
              [(NSMutableString *)self->_outputString appendString:@"\n"];
              [(_MFFormatFlowedWriter *)self _outputQuotedParagraph:v8 range:v15 + 1 withQuoteLevel:~v15 + v19[0], v21];
            }

LABEL_18:
            v12 = v19[1];
            if (v19[1] >= v11)
            {
              goto LABEL_21;
            }
          }

          v15 = v19[0];
          goto LABEL_16;
        }

LABEL_21:
        ++v7;
      }

      while (v7 != v18);
    }

    outputString = self->_outputString;
  }

  v16 = [(NSMutableString *)outputString copy];

  return v16;
}

- (id)quotedString
{
  quotedString = self->_quotedString;
  if (!quotedString)
  {
    fragmentCount = [(MFPlainTextDocument *)self->_inputDocument fragmentCount];
    v20 = -1431655766;
    v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v6 = self->_quotedString;
    self->_quotedString = v5;

    if (fragmentCount)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        v9 = v8;
        if (!self->_quotedString)
        {
          break;
        }

        inputDocument = self->_inputDocument;
        v19 = v8;
        [(MFPlainTextDocument *)inputDocument getString:&v19 quoteLevel:&v20 ofFragmentAtIndex:v7];
        v8 = v19;

        v11 = [v8 length];
        if (v11)
        {
          v12 = 0;
          do
          {
            if (!self->_quotedString)
            {
              break;
            }

            memset(v18, 170, sizeof(v18));
            [v8 getLineStart:&v18[2] end:&v18[1] contentsEnd:v18 forRange:{v12, 0}];
            if (v20)
            {
              v13 = v20 + 1;
              do
              {
                [(NSMutableString *)self->_quotedString appendString:@">"];
                --v13;
              }

              while (v13 > 1);
              [(NSMutableString *)self->_quotedString appendString:@" "];
            }

            v14 = self->_quotedString;
            v15 = [v8 substringWithRange:{v18[2], v18[1] - v18[2]}];
            [(NSMutableString *)v14 appendString:v15];

            v12 = v18[1];
          }

          while (v18[1] < v11);
        }

        ++v7;
      }

      while (v7 != fragmentCount);
    }

    quotedString = self->_quotedString;
  }

  v16 = [(NSMutableString *)quotedString copy];

  return v16;
}

@end