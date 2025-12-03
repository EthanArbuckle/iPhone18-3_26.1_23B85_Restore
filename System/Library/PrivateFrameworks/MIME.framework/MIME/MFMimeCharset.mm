@interface MFMimeCharset
+ (id)allMimeCharsets:(BOOL)charsets;
+ (id)charsetForEncoding:(unsigned int)encoding;
+ (id)preferredMimeCharset;
- (MFMimeCharset)initWithCoder:(id)coder;
- (MFMimeCharset)initWithEncoding:(unsigned int)encoding;
- (NSString)charsetName;
- (NSString)description;
- (NSString)displayName;
- (void)_setPrimaryLanguage:(id)language;
@end

@implementation MFMimeCharset

+ (id)allMimeCharsets:(BOOL)charsets
{
  v57 = *MEMORY[0x1E69E9840];
  _MFLockGlobalLock();
  v4 = allMimeCharsets__cachedResult;
  _MFUnlockGlobalLock();
  charsetsCopy = charsets;
  if (!charsets && v4)
  {
    goto LABEL_50;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v42 = v4;
  v7 = [standardUserDefaults stringArrayForKey:@"AppleKeyboards"];

  v39 = v7;
  v43 = _convertKeyboardsArrayToLanguages(v7);
  if (![v43 count])
  {
    array = [MEMORY[0x1E695DF70] array];
    preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    localeIdentifier = [currentLocale localeIdentifier];

    if ([preferredLanguages count])
    {
      v12 = [preferredLanguages objectAtIndex:0];
      [array addObject:v12];
    }

    if (localeIdentifier)
    {
      [array addObject:localeIdentifier];
    }

    v13 = _convertKeyboardsArrayToLanguages(array);

    v43 = v13;
  }

  v40 = [objc_allocWithZone(self) initWithEncoding:1536];
  CFArrayAppendValue(Mutable, v40);
  v41 = [objc_allocWithZone(self) initWithEncoding:134217984];
  CFArrayAppendValue(Mutable, v41);
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v43;
  v14 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (!v14)
  {
    v15 = 0;
    goto LABEL_43;
  }

  v15 = 0;
  v48 = *v53;
  v49 = v14;
  v47 = *MEMORY[0x1E695D9E8];
  v46 = *MEMORY[0x1E695D9B0];
  do
  {
    v50 = 0;
    do
    {
      if (*v53 != v48)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v52 + 1) + 8 * v50);
      if (_copyEncodingsForLocaleIdentifier_onceToken != -1)
      {
        +[MFMimeCharset allMimeCharsets:];
      }

      v17 = [_copyEncodingsForLocaleIdentifier_regionEncodingMapping objectForKeyedSubscript:v16];

      v18 = [MEMORY[0x1E695DF58] componentsFromLocaleIdentifier:v16];
      v19 = [v18 objectForKeyedSubscript:v47];

      if (v19)
      {
        if (v17)
        {
          MutableCopy = CFArrayCreateMutableCopy(0, 0, v17);
        }

        else
        {
          MutableCopy = CFArrayCreateMutable(0, 0, 0);
        }

        v17 = MutableCopy;
        v21 = _copyEncodingsForLocaleIdentifier_regionEncodingMapping;
        v22 = [v18 objectForKeyedSubscript:v46];
        v23 = [v21 objectForKeyedSubscript:v22];

        if (v23)
        {
          v59.length = CFArrayGetCount(v23);
          v59.location = 0;
          CFArrayAppendArray(v17, v23, v59);
        }

        if (!v17)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (!v17)
        {

          goto LABEL_37;
        }

        CFRetain(v17);
      }

      Count = CFArrayGetCount(v17);
      if (Count < 1)
      {
        v31 = v15;
      }

      else
      {
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v17, i);
          v27 = CFArrayGetCount(Mutable);
          if (v27 < 1)
          {
LABEL_31:
            v31 = [objc_allocWithZone(self) initWithEncoding:ValueAtIndex];

            [v31 _setPrimaryLanguage:v16];
            CFArrayAppendValue(Mutable, v31);
          }

          else
          {
            v28 = 0;
            while (1)
            {
              v29 = CFArrayGetValueAtIndex(Mutable, v28);
              v30 = v29[2] == ValueAtIndex;

              if (v30)
              {
                break;
              }

              if (v27 == ++v28)
              {
                goto LABEL_31;
              }
            }

            v31 = v15;
          }

          v15 = v31;
        }
      }

      v15 = v31;
      CFRelease(v17);
LABEL_37:
      ++v50;
    }

    while (v50 != v49);
    v32 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
    v49 = v32;
  }

  while (v32);
LABEL_43:

  v33 = v42;
  if (!charsetsCopy)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, __keyboardsUpdated, @"AppleKeyboardsPreferencesChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  _MFLockGlobalLock();
  v35 = allMimeCharsets__cachedResult;
  if (charsetsCopy || !allMimeCharsets__cachedResult)
  {
    allMimeCharsets__cachedResult = Mutable;

    v33 = v42;
  }

  else
  {
    CFRelease(Mutable);
  }

  v36 = allMimeCharsets__cachedResult;

  v4 = v36;
  _MFUnlockGlobalLock();
LABEL_50:
  v37 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)charsetForEncoding:(unsigned int)encoding
{
  allMimeCharsets = [self allMimeCharsets];
  Count = CFArrayGetCount(allMimeCharsets);
  if (Count < 1)
  {
LABEL_5:
    v8 = 0;
  }

  else
  {
    v6 = Count;
    v7 = 0;
    while (1)
    {
      v8 = CFArrayGetValueAtIndex(allMimeCharsets, v7);
      if (v8[2] == encoding)
      {
        break;
      }

      if (v6 == ++v7)
      {
        goto LABEL_5;
      }
    }
  }

  return v8;
}

+ (id)preferredMimeCharset
{
  allMimeCharsets = [self allMimeCharsets];
  if ([allMimeCharsets count] < 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [allMimeCharsets objectAtIndex:1];
  }

  return v3;
}

- (MFMimeCharset)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = -[MFMimeCharset initWithEncoding:](self, "initWithEncoding:", [coderCopy decodeInt32ForKey:@"Encoding"]);

  return v5;
}

- (MFMimeCharset)initWithEncoding:(unsigned int)encoding
{
  v24.receiver = self;
  v24.super_class = MFMimeCharset;
  v4 = [(MFMimeCharset *)&v24 init];
  v5 = v4;
  if (!v4)
  {
    return v5;
  }

  v4->_encoding = encoding;
  if (encoding > 2335)
  {
    if (encoding > 2562)
    {
      if (encoding <= 2565)
      {
        if (encoding != 2563)
        {
          if (encoding != 2565)
          {
            goto LABEL_33;
          }

          goto LABEL_26;
        }

LABEL_30:
        primaryLanguage = v4->_primaryLanguage;
        v4->_primaryLanguage = 0;

        charsetName = v5->_charsetName;
        v5->_charsetName = 0;

        v13 = *(v5 + 32) | 7;
        goto LABEL_39;
      }

      if (encoding == 2566)
      {
        goto LABEL_30;
      }

      if (encoding != 2814)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (encoding <= 2367)
      {
        if (encoding != 2336)
        {
          if (encoding == 2352)
          {
            v8 = v4->_primaryLanguage;
            v4->_primaryLanguage = 0;

            v7 = [@"GB2312" copy];
            goto LABEL_38;
          }

          goto LABEL_33;
        }

        goto LABEL_29;
      }

      if (encoding != 2368)
      {
        if (encoding != 2562)
        {
          goto LABEL_33;
        }

        goto LABEL_26;
      }
    }

LABEL_29:
    v11 = v4->_primaryLanguage;
    v4->_primaryLanguage = 0;

    v12 = v5->_charsetName;
    v5->_charsetName = 0;

    v13 = *(v5 + 32) & 0xF8;
LABEL_39:
    *(v5 + 32) = v13;
    return v5;
  }

  if (encoding > 1056)
  {
    if (encoding <= 2079)
    {
      if (encoding == 1057)
      {
        v19 = v4->_primaryLanguage;
        v4->_primaryLanguage = 0;

        v20 = [@"CP936" copy];
        v10 = v5->_charsetName;
        v5->_charsetName = v20;
        goto LABEL_36;
      }

      if (encoding != 1059)
      {
        goto LABEL_33;
      }

LABEL_26:
      v9 = v4->_primaryLanguage;
      v4->_primaryLanguage = 0;

      v10 = v5->_charsetName;
      v5->_charsetName = 0;
LABEL_36:

      v13 = *(v5 + 32) & 0xF8 | 5;
      goto LABEL_39;
    }

    if (encoding != 2080 && encoding != 2112)
    {
      goto LABEL_33;
    }

    goto LABEL_30;
  }

  if (encoding <= 519)
  {
    if (encoding >= 2)
    {
      if (encoding == 518)
      {
        v6 = v4->_primaryLanguage;
        v4->_primaryLanguage = 0;

        v7 = [@"ISO-8859-6-i" copy];
LABEL_38:
        v22 = v5->_charsetName;
        v5->_charsetName = v7;

        v13 = *(v5 + 32) & 0xF8 | 4;
        goto LABEL_39;
      }

      goto LABEL_33;
    }

    goto LABEL_29;
  }

  if (encoding == 520)
  {
    v21 = v4->_primaryLanguage;
    v4->_primaryLanguage = 0;

    v7 = [@"ISO-8859-8-i" copy];
    goto LABEL_38;
  }

  if (encoding == 1056)
  {
    goto LABEL_29;
  }

LABEL_33:
  charsetName = [(MFMimeCharset *)v4 charsetName];
  v17 = charsetName;
  if (charsetName)
  {
    v18 = 4 * ([charsetName rangeOfString:@"X-" options:9] == 0x7FFFFFFFFFFFFFFFLL);
  }

  else
  {
    v18 = 0;
  }

  *(v5 + 32) = *(v5 + 32) & 0xFB | v18;

  return v5;
}

- (void)_setPrimaryLanguage:(id)language
{
  languageCopy = language;
  v4 = [languageCopy copy];
  primaryLanguage = self->_primaryLanguage;
  self->_primaryLanguage = v4;
}

- (NSString)charsetName
{
  charsetName = self->_charsetName;
  if (!charsetName)
  {
    v4 = MFCharsetForEncoding(self->_encoding);
    if (v4)
    {
      _MFLockGlobalLock();
      if (!self->_charsetName)
      {
        v5 = [v4 copyWithZone:0];
        v6 = self->_charsetName;
        self->_charsetName = v5;
      }

      _MFUnlockGlobalLock();
    }

    charsetName = self->_charsetName;
  }

  return charsetName;
}

- (NSString)displayName
{
  encoding = self->_encoding;
  if (encoding == -1)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E696AEC0] localizedNameOfStringEncoding:{CFStringConvertEncodingToNSStringEncoding(encoding), v2}];
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  displayName = [(MFMimeCharset *)self displayName];
  v6 = [v3 stringWithFormat:@"<%@ %p> %@ encoding=0X%08lX charsetName=%@ lang=%@", v4, self, displayName, self->_encoding, self->_charsetName, self->_primaryLanguage];

  return v6;
}

@end