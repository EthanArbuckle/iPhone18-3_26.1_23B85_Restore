@interface MSVPropertyListEncoder
- (MSVPropertyListEncoder)initWithOutputFileHandle:(id)a3;
- (NSData)BOOLFalseTagData;
- (NSData)BOOLTrueTagData;
- (NSData)arrayClosingTagData;
- (NSData)arrayOpeningTagData;
- (NSData)dataClosingTagData;
- (NSData)dataOpeningTagData;
- (NSData)dictionaryClosingTagData;
- (NSData)dictionaryOpeningTagData;
- (NSData)keyClosingTagData;
- (NSData)keyOpeningTagData;
- (NSData)stringClosingTagData;
- (NSData)stringOpeningTagData;
- (NSDateFormatter)dateFormatter;
- (void)_addObject:(id)a3;
- (void)_decrementTabPrefix;
- (void)_encodeData:(id)a3;
- (void)_encodeDate:(id)a3;
- (void)_encodeNumber:(id)a3;
- (void)_encodeString:(id)a3;
- (void)_flushOutputBuffer;
- (void)_incrementTabPrefix;
- (void)_startArray;
- (void)_startDictionary;
- (void)_writeData:(id)a3;
- (void)_writeDictionaryKey:(id)a3;
- (void)_writeString:(id)a3;
- (void)addObject:(id)a3;
- (void)close;
- (void)endArray;
- (void)endDictionary;
- (void)setObject:(id)a3 forKey:(id)a4;
- (void)startArray;
- (void)startArrayForKey:(id)a3;
- (void)startDictionaryForKey:(id)a3;
@end

@implementation MSVPropertyListEncoder

- (void)_writeString:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF88] dataWithCapacity:{-[__CFString length](v4, "length")}];
  v6 = [(__CFString *)v4 length];
  theString = v4;
  v38 = 0;
  v39 = v6;
  CharactersPtr = CFStringGetCharactersPtr(v4);
  CStringPtr = 0;
  v36 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v4, 0x600u);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  *buffer = 0u;
  v28 = 0u;
  v40 = 0;
  v41 = 0;
  v37 = CStringPtr;
  if (v6)
  {
    v26 = self;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 64;
    while (1)
    {
      if (v11 >= 4)
      {
        v13 = 4;
      }

      else
      {
        v13 = v11;
      }

      if (v11 < 0 || (v14 = v39, v39 <= v11))
      {
        v16 = 0;
        goto LABEL_14;
      }

      if (v36)
      {
        break;
      }

      if (!v37)
      {
        if (v41 <= v11 || (v20 = v40, v40 > v11))
        {
          v21 = v13 + v9;
          v22 = v12 - v13;
          v23 = v11 - v13;
          v24 = v23 + 64;
          if (v23 + 64 >= v39)
          {
            v24 = v39;
          }

          v40 = v23;
          v41 = v24;
          if (v39 >= v22)
          {
            v14 = v22;
          }

          v44.location = v23 + v38;
          v44.length = v14 + v21;
          CFStringGetCharacters(theString, v44, buffer);
          v20 = v40;
        }

        v15 = &buffer[-v20];
        goto LABEL_12;
      }

      v16 = v37[v38 + v11];
LABEL_18:
      if (v10 >= 62 && (v16 & 0xFC00) == 0xD800)
      {
        _MSVPropertyListEncoderAppendCharacters(v5, v42, v10);
        v10 = 0;
      }

      switch(v16)
      {
        case '&':
          if (v10)
          {
            _MSVPropertyListEncoderAppendCharacters(v5, v42, v10);
          }

          v17 = v5;
          v18 = "&amp;";
          v19 = 5;
LABEL_34:
          [v17 appendBytes:v18 length:v19];
LABEL_35:
          v10 = 0;
          goto LABEL_36;
        case '>':
          if (v10)
          {
            _MSVPropertyListEncoderAppendCharacters(v5, v42, v10);
          }

          v17 = v5;
          v18 = "&gt;";
          goto LABEL_30;
        case '<':
          if (v10)
          {
            _MSVPropertyListEncoderAppendCharacters(v5, v42, v10);
          }

          v17 = v5;
          v18 = "&lt;";
LABEL_30:
          v19 = 4;
          goto LABEL_34;
      }

LABEL_14:
      v42[v10++] = v16;
      if (v10 == 64)
      {
        _MSVPropertyListEncoderAppendCharacters(v5, v42, 0x40uLL);
        goto LABEL_35;
      }

LABEL_36:
      ++v11;
      --v9;
      ++v12;
      if (v6 == v11)
      {
        self = v26;
        if (v10)
        {
          _MSVPropertyListEncoderAppendCharacters(v5, v42, v10);
        }

        goto LABEL_48;
      }
    }

    v15 = &v36[v38];
LABEL_12:
    v16 = v15[v11];
    goto LABEL_18;
  }

LABEL_48:

  [(MSVPropertyListEncoder *)self _writeData:v5];
  v25 = *MEMORY[0x1E69E9840];
}

- (void)_writeDictionaryKey:(id)a3
{
  v4 = a3;
  v5 = [(MSVPropertyListEncoder *)self tabPrefixData];
  [(MSVPropertyListEncoder *)self _writeData:v5];

  v6 = [(MSVPropertyListEncoder *)self keyOpeningTagData];
  [(MSVPropertyListEncoder *)self _writeData:v6];

  [(MSVPropertyListEncoder *)self _writeString:v4];
  v7 = [(MSVPropertyListEncoder *)self keyClosingTagData];
  [(MSVPropertyListEncoder *)self _writeData:v7];
}

- (void)_decrementTabPrefix
{
  v3 = [(MSVPropertyListEncoder *)self tabPrefix];
  v4 = [(MSVPropertyListEncoder *)self tabPrefix];
  [v3 deleteCharactersInRange:{objc_msgSend(v4, "length") - 1, 1}];

  v6 = [(MSVPropertyListEncoder *)self tabPrefix];
  v5 = [v6 dataUsingEncoding:4];
  [(MSVPropertyListEncoder *)self setTabPrefixData:v5];
}

- (void)_incrementTabPrefix
{
  v3 = [(MSVPropertyListEncoder *)self tabPrefix];
  [v3 appendString:@"\t"];

  v5 = [(MSVPropertyListEncoder *)self tabPrefix];
  v4 = [v5 dataUsingEncoding:4];
  [(MSVPropertyListEncoder *)self setTabPrefixData:v4];
}

- (void)_startDictionary
{
  v3 = [(MSVPropertyListEncoder *)self tabPrefixData];
  [(MSVPropertyListEncoder *)self _writeData:v3];

  v4 = [(MSVPropertyListEncoder *)self dictionaryOpeningTagData];
  [(MSVPropertyListEncoder *)self _writeData:v4];

  v5 = [(MSVPropertyListEncoder *)self containerStack];
  [v5 addObject:objc_opt_class()];

  [(MSVPropertyListEncoder *)self _incrementTabPrefix];
}

- (void)_startArray
{
  v3 = [(MSVPropertyListEncoder *)self tabPrefixData];
  [(MSVPropertyListEncoder *)self _writeData:v3];

  v4 = [(MSVPropertyListEncoder *)self arrayOpeningTagData];
  [(MSVPropertyListEncoder *)self _writeData:v4];

  v5 = [(MSVPropertyListEncoder *)self containerStack];
  [v5 addObject:objc_opt_class()];

  [(MSVPropertyListEncoder *)self _incrementTabPrefix];
}

- (void)_encodeData:(id)a3
{
  v20 = a3;
  v4 = [(MSVPropertyListEncoder *)self tabPrefix];
  if ([(__CFString *)v4 length]>= 9)
  {

    v4 = @"\t\t\t\t\t\t\t\t";
  }

  v5 = [(__CFString *)v4 dataUsingEncoding:4];
  v6 = [@"\n" dataUsingEncoding:4];
  v19 = v4;
  v7 = [(__CFString *)v4 length];
  v8 = [(MSVPropertyListEncoder *)self tabPrefixData];
  [(MSVPropertyListEncoder *)self _writeData:v8];

  v9 = [(MSVPropertyListEncoder *)self dataOpeningTagData];
  [(MSVPropertyListEncoder *)self _writeData:v9];

  v10 = [v20 base64EncodedStringWithOptions:0];
  v11 = [v10 length];
  if ([v10 length])
  {
    v12 = 0;
    v13 = 76 - 8 * v7;
    do
    {
      if (v13 >= v11)
      {
        v14 = v11;
      }

      else
      {
        v14 = v13;
      }

      v15 = [v10 substringWithRange:{v12, v14}];
      [(MSVPropertyListEncoder *)self _writeData:v5];
      v16 = [v15 dataUsingEncoding:4];
      [(MSVPropertyListEncoder *)self _writeData:v16];

      [(MSVPropertyListEncoder *)self _writeData:v6];
      v11 -= v14;

      v12 += v13;
    }

    while (v12 < [v10 length]);
  }

  v17 = [(MSVPropertyListEncoder *)self tabPrefixData];
  [(MSVPropertyListEncoder *)self _writeData:v17];

  v18 = [(MSVPropertyListEncoder *)self dataClosingTagData];
  [(MSVPropertyListEncoder *)self _writeData:v18];
}

- (void)_encodeDate:(id)a3
{
  v4 = a3;
  v5 = [(MSVPropertyListEncoder *)self tabPrefixData];
  [(MSVPropertyListEncoder *)self _writeData:v5];

  v8 = [(MSVPropertyListEncoder *)self dateFormatter];
  v6 = [v8 stringFromDate:v4];

  v7 = [v6 dataUsingEncoding:4];
  [(MSVPropertyListEncoder *)self _writeData:v7];
}

- (void)_encodeNumber:(id)a3
{
  v4 = a3;
  v5 = CFGetTypeID(v4);
  if (v5 != CFBooleanGetTypeID())
  {
    if (CFNumberIsFloatType(v4))
    {
      valuePtr = 0.0;
      CFNumberGetValue(v4, kCFNumberFloat64Type, &valuePtr);
      v6 = valuePtr;
      if (valuePtr == 0.0)
      {
        v7 = @"<real>0.0</real>\n";
LABEL_18:
        v8 = [(__CFString *)v7 dataUsingEncoding:4, v6];

        goto LABEL_19;
      }

      v10 = fabs(valuePtr);
      v11 = @"<real>-infinity</real>\n";
      if (valuePtr > 0.0)
      {
        v11 = @"<real>+infinity</real>\n";
      }

      if (v10 == INFINITY)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }

      if ((*&valuePtr & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_18;
      }

      v9 = CFStringCreateWithFormat(*MEMORY[0x1E695E4A8], 0, @"<real>%.*g</real>\n", 17, *&valuePtr);
    }

    else
    {
      v9 = CFStringCreateWithFormat(*MEMORY[0x1E695E4A8], 0, @"<integer>%@</integer>\n", v4);
    }

    v7 = v9;
    goto LABEL_18;
  }

  if (CFBooleanGetValue(v4))
  {
    [(MSVPropertyListEncoder *)self BOOLTrueTagData];
  }

  else
  {
    [(MSVPropertyListEncoder *)self BOOLFalseTagData];
  }
  v8 = ;
LABEL_19:
  v12 = [(MSVPropertyListEncoder *)self tabPrefixData];
  [(MSVPropertyListEncoder *)self _writeData:v12];

  [(MSVPropertyListEncoder *)self _writeData:v8];
}

- (void)_encodeString:(id)a3
{
  v4 = a3;
  v5 = [(MSVPropertyListEncoder *)self tabPrefixData];
  [(MSVPropertyListEncoder *)self _writeData:v5];

  v6 = [(MSVPropertyListEncoder *)self stringOpeningTagData];
  [(MSVPropertyListEncoder *)self _writeData:v6];

  [(MSVPropertyListEncoder *)self _writeString:v4];
  v7 = [(MSVPropertyListEncoder *)self stringClosingTagData];
  [(MSVPropertyListEncoder *)self _writeData:v7];
}

- (void)_addObject:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MSVPropertyListEncoder *)self _encodeString:v5];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MSVPropertyListEncoder *)self _encodeNumber:v5];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(MSVPropertyListEncoder *)self _encodeDate:v5];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(MSVPropertyListEncoder *)self _encodeData:v5];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(MSVPropertyListEncoder *)self _startDictionary];
            v6 = v5;
            v7 = [v6 allKeys];
            v8 = [v7 sortedArrayUsingSelector:sel_compare_];

            v28 = 0u;
            v29 = 0u;
            v26 = 0u;
            v27 = 0u;
            v9 = v8;
            v10 = [v9 countByEnumeratingWithState:&v26 objects:v31 count:16];
            if (v10)
            {
              v11 = v10;
              v12 = *v27;
              do
              {
                for (i = 0; i != v11; ++i)
                {
                  if (*v27 != v12)
                  {
                    objc_enumerationMutation(v9);
                  }

                  v14 = *(*(&v26 + 1) + 8 * i);
                  v15 = [v6 objectForKey:v14];
                  [(MSVPropertyListEncoder *)self setObject:v15 forKey:v14];
                }

                v11 = [v9 countByEnumeratingWithState:&v26 objects:v31 count:16];
              }

              while (v11);
            }

            [(MSVPropertyListEncoder *)self endDictionary];
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v20 = [MEMORY[0x1E696AAA8] currentHandler];
              [v20 handleFailureInMethod:a2 object:self file:@"MSVPropertyListEncoder.m" lineNumber:299 description:{@"Cannot encode object of type %@", objc_opt_class()}];

              goto LABEL_29;
            }

            [(MSVPropertyListEncoder *)self _startArray];
            v6 = v5;
            v22 = 0u;
            v23 = 0u;
            v24 = 0u;
            v25 = 0u;
            v16 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v23;
              do
              {
                for (j = 0; j != v17; ++j)
                {
                  if (*v23 != v18)
                  {
                    objc_enumerationMutation(v6);
                  }

                  [(MSVPropertyListEncoder *)self addObject:*(*(&v22 + 1) + 8 * j)];
                }

                v17 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
              }

              while (v17);
            }

            [(MSVPropertyListEncoder *)self endArray];
          }
        }
      }
    }
  }

LABEL_29:

  v21 = *MEMORY[0x1E69E9840];
}

- (void)_flushOutputBuffer
{
  v3 = [(MSVPropertyListEncoder *)self outputFileHandle];
  v4 = [(MSVPropertyListEncoder *)self outputBuffer];
  [v3 writeData:v4];

  v5 = [(MSVPropertyListEncoder *)self outputBuffer];
  [v5 setLength:0];
}

- (void)_writeData:(id)a3
{
  v8 = a3;
  v4 = [(MSVPropertyListEncoder *)self outputBuffer];
  v5 = [v4 length];
  v6 = [v8 length] + v5;

  if (v6 > 0x2000)
  {
    [(MSVPropertyListEncoder *)self _flushOutputBuffer];
  }

  v7 = [(MSVPropertyListEncoder *)self outputBuffer];
  [v7 appendData:v8];
}

- (NSData)BOOLFalseTagData
{
  BOOLFalseTagData = self->_BOOLFalseTagData;
  if (!BOOLFalseTagData)
  {
    v4 = [@"<false/>\n" dataUsingEncoding:4];
    v5 = self->_BOOLFalseTagData;
    self->_BOOLFalseTagData = v4;

    BOOLFalseTagData = self->_BOOLFalseTagData;
  }

  return BOOLFalseTagData;
}

- (NSData)BOOLTrueTagData
{
  BOOLTrueTagData = self->_BOOLTrueTagData;
  if (!BOOLTrueTagData)
  {
    v4 = [@"<true/>\n" dataUsingEncoding:4];
    v5 = self->_BOOLTrueTagData;
    self->_BOOLTrueTagData = v4;

    BOOLTrueTagData = self->_BOOLTrueTagData;
  }

  return BOOLTrueTagData;
}

- (NSData)dataClosingTagData
{
  dataClosingTagData = self->_dataClosingTagData;
  if (!dataClosingTagData)
  {
    v4 = [@"</data>\n" dataUsingEncoding:4];
    v5 = self->_dataClosingTagData;
    self->_dataClosingTagData = v4;

    dataClosingTagData = self->_dataClosingTagData;
  }

  return dataClosingTagData;
}

- (NSData)dataOpeningTagData
{
  dataOpeningTagData = self->_dataOpeningTagData;
  if (!dataOpeningTagData)
  {
    v4 = [@"<data>\n" dataUsingEncoding:4];
    v5 = self->_dataOpeningTagData;
    self->_dataOpeningTagData = v4;

    dataOpeningTagData = self->_dataOpeningTagData;
  }

  return dataOpeningTagData;
}

- (NSData)stringClosingTagData
{
  stringClosingTagData = self->_stringClosingTagData;
  if (!stringClosingTagData)
  {
    v4 = [@"</string>\n" dataUsingEncoding:4];
    v5 = self->_stringClosingTagData;
    self->_stringClosingTagData = v4;

    stringClosingTagData = self->_stringClosingTagData;
  }

  return stringClosingTagData;
}

- (NSData)stringOpeningTagData
{
  stringOpeningTagData = self->_stringOpeningTagData;
  if (!stringOpeningTagData)
  {
    v4 = [@"<string>" dataUsingEncoding:4];
    v5 = self->_stringOpeningTagData;
    self->_stringOpeningTagData = v4;

    stringOpeningTagData = self->_stringOpeningTagData;
  }

  return stringOpeningTagData;
}

- (NSData)keyClosingTagData
{
  keyClosingTagData = self->_keyClosingTagData;
  if (!keyClosingTagData)
  {
    v4 = [@"</key>\n" dataUsingEncoding:4];
    v5 = self->_keyClosingTagData;
    self->_keyClosingTagData = v4;

    keyClosingTagData = self->_keyClosingTagData;
  }

  return keyClosingTagData;
}

- (NSData)keyOpeningTagData
{
  keyOpeningTagData = self->_keyOpeningTagData;
  if (!keyOpeningTagData)
  {
    v4 = [@"<key>" dataUsingEncoding:4];
    v5 = self->_keyOpeningTagData;
    self->_keyOpeningTagData = v4;

    keyOpeningTagData = self->_keyOpeningTagData;
  }

  return keyOpeningTagData;
}

- (NSData)dictionaryClosingTagData
{
  dictionaryClosingTagData = self->_dictionaryClosingTagData;
  if (!dictionaryClosingTagData)
  {
    v4 = [@"</dict>\n" dataUsingEncoding:4];
    v5 = self->_dictionaryClosingTagData;
    self->_dictionaryClosingTagData = v4;

    dictionaryClosingTagData = self->_dictionaryClosingTagData;
  }

  return dictionaryClosingTagData;
}

- (NSData)dictionaryOpeningTagData
{
  dictionaryOpeningTagData = self->_dictionaryOpeningTagData;
  if (!dictionaryOpeningTagData)
  {
    v4 = [@"<dict>\n" dataUsingEncoding:4];
    v5 = self->_dictionaryOpeningTagData;
    self->_dictionaryOpeningTagData = v4;

    dictionaryOpeningTagData = self->_dictionaryOpeningTagData;
  }

  return dictionaryOpeningTagData;
}

- (NSData)arrayClosingTagData
{
  arrayClosingTagData = self->_arrayClosingTagData;
  if (!arrayClosingTagData)
  {
    v4 = [@"</array>\n" dataUsingEncoding:4];
    v5 = self->_arrayClosingTagData;
    self->_arrayClosingTagData = v4;

    arrayClosingTagData = self->_arrayClosingTagData;
  }

  return arrayClosingTagData;
}

- (NSData)arrayOpeningTagData
{
  arrayOpeningTagData = self->_arrayOpeningTagData;
  if (!arrayOpeningTagData)
  {
    v4 = [@"<array>\n" dataUsingEncoding:4];
    v5 = self->_arrayOpeningTagData;
    self->_arrayOpeningTagData = v4;

    arrayOpeningTagData = self->_arrayOpeningTagData;
  }

  return arrayOpeningTagData;
}

- (NSDateFormatter)dateFormatter
{
  dateFormatter = self->_dateFormatter;
  if (!dateFormatter)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [(NSDateFormatter *)v4 setDateFormat:@"'<date>'yyyy-MM-dd'T'HH:mm:ss'Z</date>\n'"];
    v5 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
    [(NSDateFormatter *)v4 setLocale:v5];

    v6 = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:@"UTC"];
    [(NSDateFormatter *)v4 setTimeZone:v6];

    v7 = self->_dateFormatter;
    self->_dateFormatter = v4;

    dateFormatter = self->_dateFormatter;
  }

  return dateFormatter;
}

- (void)close
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = [(MSVPropertyListEncoder *)self containerStack];
  v5 = [v4 copy];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v5 reverseObjectEnumerator];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if (v11 == objc_opt_class())
        {
          [(MSVPropertyListEncoder *)self endArray];
        }

        else if (v11 == objc_opt_class())
        {
          [(MSVPropertyListEncoder *)self endDictionary];
        }

        else
        {
          v12 = [MEMORY[0x1E696AAA8] currentHandler];
          [v12 handleFailureInMethod:a2 object:self file:@"MSVPropertyListEncoder.m" lineNumber:147 description:{@"Invalid container type: %@", v11}];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v13 = [@"</plist>\n" dataUsingEncoding:4];
  [(MSVPropertyListEncoder *)self _writeData:v13];

  [(MSVPropertyListEncoder *)self _flushOutputBuffer];
  v14 = [(MSVPropertyListEncoder *)self outputFileHandle];
  [v14 closeFile];

  v15 = *MEMORY[0x1E69E9840];
}

- (void)endDictionary
{
  v4 = [(MSVPropertyListEncoder *)self containerStack];
  v5 = [v4 lastObject];
  v6 = objc_opt_class();

  if (v5 != v6)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"MSVPropertyListEncoder.m" lineNumber:128 description:@"Can only end a dictionary if the current parent is a dictionary"];
  }

  v7 = [(MSVPropertyListEncoder *)self containerStack];
  [v7 removeLastObject];

  [(MSVPropertyListEncoder *)self _decrementTabPrefix];
  v8 = [(MSVPropertyListEncoder *)self tabPrefixData];
  [(MSVPropertyListEncoder *)self _writeData:v8];

  v10 = [(MSVPropertyListEncoder *)self dictionaryClosingTagData];
  [(MSVPropertyListEncoder *)self _writeData:v10];
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v12 = a4;
  v7 = a3;
  v8 = [(MSVPropertyListEncoder *)self containerStack];
  v9 = [v8 lastObject];
  v10 = objc_opt_class();

  if (v9 != v10)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"MSVPropertyListEncoder.m" lineNumber:121 description:@"Can only set an object for a key if the current parent is a dictionary"];
  }

  [(MSVPropertyListEncoder *)self _writeDictionaryKey:v12];
  [(MSVPropertyListEncoder *)self _addObject:v7];
}

- (void)startDictionaryForKey:(id)a3
{
  v9 = a3;
  v5 = [(MSVPropertyListEncoder *)self containerStack];
  v6 = [v5 lastObject];
  v7 = objc_opt_class();

  if (v6 != v7)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MSVPropertyListEncoder.m" lineNumber:113 description:@"Can only start a dictionary for a key if the current parent is a dictionary"];
  }

  [(MSVPropertyListEncoder *)self _writeDictionaryKey:v9];
  [(MSVPropertyListEncoder *)self _startDictionary];
}

- (void)endArray
{
  v4 = [(MSVPropertyListEncoder *)self containerStack];
  v5 = [v4 lastObject];
  v6 = objc_opt_class();

  if (v5 != v6)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"MSVPropertyListEncoder.m" lineNumber:99 description:@"Can only end an array if the current parent is an array."];
  }

  v7 = [(MSVPropertyListEncoder *)self containerStack];
  [v7 removeLastObject];

  [(MSVPropertyListEncoder *)self _decrementTabPrefix];
  v8 = [(MSVPropertyListEncoder *)self tabPrefixData];
  [(MSVPropertyListEncoder *)self _writeData:v8];

  v10 = [(MSVPropertyListEncoder *)self arrayClosingTagData];
  [(MSVPropertyListEncoder *)self _writeData:v10];
}

- (void)addObject:(id)a3
{
  v9 = a3;
  v5 = [(MSVPropertyListEncoder *)self containerStack];
  v6 = [v5 lastObject];
  v7 = objc_opt_class();

  if (v6 != v7)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MSVPropertyListEncoder.m" lineNumber:93 description:@"Can only add an object if the current parent is an array."];
  }

  [(MSVPropertyListEncoder *)self _addObject:v9];
}

- (void)startArrayForKey:(id)a3
{
  v9 = a3;
  v5 = [(MSVPropertyListEncoder *)self containerStack];
  v6 = [v5 lastObject];
  v7 = objc_opt_class();

  if (v6 != v7)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MSVPropertyListEncoder.m" lineNumber:85 description:@"Can only start an array for a key if the current parent is a dictionary"];
  }

  [(MSVPropertyListEncoder *)self _writeDictionaryKey:v9];
  [(MSVPropertyListEncoder *)self _startArray];
}

- (void)startArray
{
  v4 = [(MSVPropertyListEncoder *)self containerStack];
  v5 = [v4 lastObject];
  if (v5)
  {
    v6 = v5;
    v7 = [(MSVPropertyListEncoder *)self containerStack];
    v8 = [v7 lastObject];
    v9 = objc_opt_class();

    if (v8 == v9)
    {
      goto LABEL_5;
    }

    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"MSVPropertyListEncoder.m" lineNumber:79 description:@"Can only start an array as the root object or if the current parent is an array. To stream an array into the value of a dictionary key use startArrayForKey:"];
  }

LABEL_5:

  [(MSVPropertyListEncoder *)self _startArray];
}

- (MSVPropertyListEncoder)initWithOutputFileHandle:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = MSVPropertyListEncoder;
  v6 = [(MSVPropertyListEncoder *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_outputFileHandle, a3);
    v8 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:0x2000];
    outputBuffer = v7->_outputBuffer;
    v7->_outputBuffer = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    containerStack = v7->_containerStack;
    v7->_containerStack = v10;

    v12 = objc_alloc_init(MEMORY[0x1E696AD60]);
    tabPrefix = v7->_tabPrefix;
    v7->_tabPrefix = v12;

    v14 = [@"<?xml version=1.0 encoding=UTF-8?>\n<!DOCTYPE plist PUBLIC -//Apple//DTD PLIST 1.0//EN http://www.apple.com/DTDs/PropertyList-1.0.dtd>\n<plist version=1.0>\n" dataUsingEncoding:4];
    [(MSVPropertyListEncoder *)v7 _writeData:v14];
  }

  return v7;
}

@end