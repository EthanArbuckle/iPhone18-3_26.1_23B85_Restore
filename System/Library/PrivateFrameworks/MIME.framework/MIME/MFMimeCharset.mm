@interface MFMimeCharset
+ (id)allMimeCharsets:(BOOL)a3;
+ (id)charsetForEncoding:(unsigned int)a3;
+ (id)preferredMimeCharset;
- (MFMimeCharset)initWithCoder:(id)a3;
- (MFMimeCharset)initWithEncoding:(unsigned int)a3;
- (NSString)charsetName;
- (NSString)description;
- (NSString)displayName;
- (void)_setPrimaryLanguage:(id)a3;
@end

@implementation MFMimeCharset

+ (id)allMimeCharsets:(BOOL)a3
{
  v57 = *MEMORY[0x1E69E9840];
  _MFLockGlobalLock();
  v4 = allMimeCharsets__cachedResult;
  _MFUnlockGlobalLock();
  v44 = a3;
  if (!a3 && v4)
  {
    goto LABEL_50;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v6 = [MEMORY[0x1E695E000] standardUserDefaults];
  v42 = v4;
  v7 = [v6 stringArrayForKey:@"AppleKeyboards"];

  v39 = v7;
  v43 = _convertKeyboardsArrayToLanguages(v7);
  if (![v43 count])
  {
    v8 = [MEMORY[0x1E695DF70] array];
    v9 = [MEMORY[0x1E695DF58] preferredLanguages];
    v10 = [MEMORY[0x1E695DF58] currentLocale];
    v11 = [v10 localeIdentifier];

    if ([v9 count])
    {
      v12 = [v9 objectAtIndex:0];
      [v8 addObject:v12];
    }

    if (v11)
    {
      [v8 addObject:v11];
    }

    v13 = _convertKeyboardsArrayToLanguages(v8);

    v43 = v13;
  }

  v40 = [objc_allocWithZone(a1) initWithEncoding:1536];
  CFArrayAppendValue(Mutable, v40);
  v41 = [objc_allocWithZone(a1) initWithEncoding:134217984];
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
            v31 = [objc_allocWithZone(a1) initWithEncoding:ValueAtIndex];

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
  if (!v44)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, __keyboardsUpdated, @"AppleKeyboardsPreferencesChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  _MFLockGlobalLock();
  v35 = allMimeCharsets__cachedResult;
  if (v44 || !allMimeCharsets__cachedResult)
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

+ (id)charsetForEncoding:(unsigned int)a3
{
  v4 = [a1 allMimeCharsets];
  Count = CFArrayGetCount(v4);
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
      v8 = CFArrayGetValueAtIndex(v4, v7);
      if (v8[2] == a3)
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
  v2 = [a1 allMimeCharsets];
  if ([v2 count] < 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 objectAtIndex:1];
  }

  return v3;
}

- (MFMimeCharset)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = -[MFMimeCharset initWithEncoding:](self, "initWithEncoding:", [v4 decodeInt32ForKey:@"Encoding"]);

  return v5;
}

- (MFMimeCharset)initWithEncoding:(unsigned int)a3
{
  v24.receiver = self;
  v24.super_class = MFMimeCharset;
  v4 = [(MFMimeCharset *)&v24 init];
  v5 = v4;
  if (!v4)
  {
    return v5;
  }

  v4->_encoding = a3;
  if (a3 > 2335)
  {
    if (a3 > 2562)
    {
      if (a3 <= 2565)
      {
        if (a3 != 2563)
        {
          if (a3 != 2565)
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

      if (a3 == 2566)
      {
        goto LABEL_30;
      }

      if (a3 != 2814)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (a3 <= 2367)
      {
        if (a3 != 2336)
        {
          if (a3 == 2352)
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

      if (a3 != 2368)
      {
        if (a3 != 2562)
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

  if (a3 > 1056)
  {
    if (a3 <= 2079)
    {
      if (a3 == 1057)
      {
        v19 = v4->_primaryLanguage;
        v4->_primaryLanguage = 0;

        v20 = [@"CP936" copy];
        v10 = v5->_charsetName;
        v5->_charsetName = v20;
        goto LABEL_36;
      }

      if (a3 != 1059)
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

    if (a3 != 2080 && a3 != 2112)
    {
      goto LABEL_33;
    }

    goto LABEL_30;
  }

  if (a3 <= 519)
  {
    if (a3 >= 2)
    {
      if (a3 == 518)
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

  if (a3 == 520)
  {
    v21 = v4->_primaryLanguage;
    v4->_primaryLanguage = 0;

    v7 = [@"ISO-8859-8-i" copy];
    goto LABEL_38;
  }

  if (a3 == 1056)
  {
    goto LABEL_29;
  }

LABEL_33:
  v16 = [(MFMimeCharset *)v4 charsetName];
  v17 = v16;
  if (v16)
  {
    v18 = 4 * ([v16 rangeOfString:@"X-" options:9] == 0x7FFFFFFFFFFFFFFFLL);
  }

  else
  {
    v18 = 0;
  }

  *(v5 + 32) = *(v5 + 32) & 0xFB | v18;

  return v5;
}

- (void)_setPrimaryLanguage:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
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
  v5 = [(MFMimeCharset *)self displayName];
  v6 = [v3 stringWithFormat:@"<%@ %p> %@ encoding=0X%08lX charsetName=%@ lang=%@", v4, self, v5, self->_encoding, self->_charsetName, self->_primaryLanguage];

  return v6;
}

@end