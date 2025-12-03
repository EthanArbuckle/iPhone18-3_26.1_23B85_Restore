@interface LNStaticDeferredLocalizedString
+ (id)prelocalizeUsingLocaleIdentifier:(id)identifier block:(id)block;
- (BOOL)hasEqualLocalizedString:(id)string;
- (BOOL)isEqual:(id)equal;
- (LNStaticDeferredLocalizedString)initWithCoder:(id)coder;
- (LNStaticDeferredLocalizedString)initWithKey:(id)key defaultValue:(id)value table:(id)table bundleURL:(id)l;
- (LNStaticDeferredLocalizedString)initWithKey:(id)key defaultValue:(id)value table:(id)table bundleURL:(id)l alternatives:(id)alternatives;
- (LNStaticDeferredLocalizedString)initWithLocalizedStringResource:(id)resource;
- (LNStaticDeferredLocalizedString)initWithLocalizedStringResource:(id)resource alternatives:(id)alternatives;
- (LNStaticDeferredLocalizedString)localizedStringWithPluralizationNumber:(id)number forLocaleIdentifier:(id)identifier;
- (LNStaticDeferredLocalizedString)localizedStringWithReplacements:(id)replacements forLocaleIdentifier:(id)identifier;
- (NSString)defaultValue;
- (NSString)description;
- (NSString)key;
- (NSString)table;
- (NSURL)bundleURL;
- (_NSLocalizedStringResource)localizedStringResource;
- (id)_dictionaryRepresenation;
- (id)_init;
- (id)localizedStringForLocaleIdentifier:(id)identifier;
- (id)localizedStringForLocaleIdentifier:(id)identifier bundleURL:(id)l;
- (id)localizedStringForLocaleIdentifier:(id)identifier kind:(id)kind;
- (unint64_t)hash;
- (unint64_t)length;
- (unsigned)characterAtIndex:(unint64_t)index;
- (void)encodeWithCoder:(id)coder;
- (void)getCharacters:(unsigned __int16 *)characters range:(_NSRange)range;
@end

@implementation LNStaticDeferredLocalizedString

- (id)_init
{
  v6.receiver = self;
  v6.super_class = LNStaticDeferredLocalizedString;
  v2 = [(LNStaticDeferredLocalizedString *)&v6 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_getterLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (_NSLocalizedStringResource)localizedStringResource
{
  os_unfair_lock_lock(&self->_localizedStringResourceLock);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __58__LNStaticDeferredLocalizedString_localizedStringResource__block_invoke;
  v18[3] = &unk_1E72B1260;
  v18[4] = self;
  v3 = MEMORY[0x193AD9570](v18);
  localizedStringResource = self->_localizedStringResource;
  if (localizedStringResource)
  {
    goto LABEL_7;
  }

  bundleURL = [(LNStaticDeferredLocalizedString *)self bundleURL];
  if (bundleURL)
  {
LABEL_6:
    v9 = objc_alloc(MEMORY[0x1E696B100]);
    v10 = [(LNStaticDeferredLocalizedString *)self key];
    defaultValue = [(LNStaticDeferredLocalizedString *)self defaultValue];
    table = [(LNStaticDeferredLocalizedString *)self table];
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    v14 = [v9 initWithKey:v10 defaultValue:defaultValue table:table locale:currentLocale bundleURL:bundleURL];
    v15 = self->_localizedStringResource;
    self->_localizedStringResource = v14;

    localizedStringResource = self->_localizedStringResource;
LABEL_7:
    v16 = localizedStringResource;
    goto LABEL_8;
  }

  bundleRecordForCurrentProcess = [MEMORY[0x1E6963620] bundleRecordForCurrentProcess];
  v7 = [bundleRecordForCurrentProcess URL];
  if (v7)
  {
    bundleURL = v7;

    goto LABEL_6;
  }

  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleURL = [mainBundle bundleURL];

  if (bundleURL)
  {
    goto LABEL_6;
  }

  v16 = 0;
LABEL_8:
  v3[2](v3);

  return v16;
}

- (NSString)key
{
  os_unfair_lock_lock(&self->_getterLock);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__LNStaticDeferredLocalizedString_key__block_invoke;
  v8[3] = &unk_1E72B1260;
  v8[4] = self;
  v3 = MEMORY[0x193AD9570](v8);
  v4 = [(_NSLocalizedStringResource *)self->_localizedStringResource key];
  key = v4;
  if (!v4)
  {
    key = self->_key;
  }

  v6 = key;

  v3[2](v3);

  return v6;
}

- (unint64_t)hash
{
  os_unfair_lock_lock(&self->_localizedStringResourceLock);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __39__LNStaticDeferredLocalizedString_hash__block_invoke;
  v15[3] = &unk_1E72B1260;
  v15[4] = self;
  v4 = MEMORY[0x193AD9570](v15);
  localizedStringResource = self->_localizedStringResource;
  if (localizedStringResource)
  {
    v6 = [(_NSLocalizedStringResource *)self->_localizedStringResource key];
    v7 = [v6 hash];
    table = [(_NSLocalizedStringResource *)self->_localizedStringResource table];
    v2 = [table hash] ^ v7;
  }

  v4[2](v4);

  if (!localizedStringResource)
  {
    v9 = [(LNStaticDeferredLocalizedString *)self key];
    v10 = [v9 hash];
    defaultValue = [(LNStaticDeferredLocalizedString *)self defaultValue];
    v12 = [defaultValue hash] ^ v10;
    table2 = [(LNStaticDeferredLocalizedString *)self table];
    v2 = v12 ^ [table2 hash];
  }

  return v2;
}

- (NSURL)bundleURL
{
  os_unfair_lock_lock(&self->_getterLock);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__LNStaticDeferredLocalizedString_bundleURL__block_invoke;
  v8[3] = &unk_1E72B1260;
  v8[4] = self;
  v3 = MEMORY[0x193AD9570](v8);
  bundleURL = self->_bundleURL;
  if (bundleURL)
  {
    bundleURL = bundleURL;
  }

  else
  {
    bundleURL = [(_NSLocalizedStringResource *)self->_localizedStringResource bundleURL];
  }

  v6 = bundleURL;
  v3[2](v3);

  return v6;
}

- (NSString)defaultValue
{
  os_unfair_lock_lock(&self->_getterLock);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__LNStaticDeferredLocalizedString_defaultValue__block_invoke;
  v8[3] = &unk_1E72B1260;
  v8[4] = self;
  v3 = MEMORY[0x193AD9570](v8);
  defaultValue = [(_NSLocalizedStringResource *)self->_localizedStringResource defaultValue];
  defaultValue = defaultValue;
  if (!defaultValue)
  {
    defaultValue = self->_defaultValue;
  }

  v6 = defaultValue;

  v3[2](v3);

  return v6;
}

- (NSString)table
{
  os_unfair_lock_lock(&self->_getterLock);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__LNStaticDeferredLocalizedString_table__block_invoke;
  v8[3] = &unk_1E72B1260;
  v8[4] = self;
  v3 = MEMORY[0x193AD9570](v8);
  table = [(_NSLocalizedStringResource *)self->_localizedStringResource table];
  table = table;
  if (!table)
  {
    table = self->_table;
  }

  v6 = table;

  v3[2](v3);

  return v6;
}

- (id)_dictionaryRepresenation
{
  selfCopy = self;
  LNStaticDeferredLocalizedString._dictionaryRepresentation()();

  v3 = sub_18F093A3C();

  return v3;
}

- (BOOL)hasEqualLocalizedString:(id)string
{
  stringCopy = string;
  os_unfair_lock_lock(&self->_localizedStringResourceLock);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __59__LNStaticDeferredLocalizedString_hasEqualLocalizedString___block_invoke;
  v25[3] = &unk_1E72B1260;
  v25[4] = self;
  v5 = MEMORY[0x193AD9570](v25);
  localizedStringResource = self->_localizedStringResource;
  if (localizedStringResource)
  {
    v7 = [(_NSLocalizedStringResource *)localizedStringResource key];
    v8 = [stringCopy key];
    v9 = v7;
    v10 = v8;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v13 = v10;
      v14 = v9;
      if (!v9 || !v10)
      {
        goto LABEL_22;
      }

      v15 = [v9 isEqualToString:v10];

      if (!v15)
      {
        LOBYTE(v12) = 0;
LABEL_23:

        goto LABEL_24;
      }
    }

    defaultValue = [(_NSLocalizedStringResource *)self->_localizedStringResource defaultValue];
    defaultValue2 = [stringCopy defaultValue];
    v14 = defaultValue;
    v18 = defaultValue2;
    v13 = v18;
    if (v14 == v18)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v19 = v18;
      v20 = v14;
      if (!v14 || !v18)
      {
LABEL_21:

LABEL_22:
        goto LABEL_23;
      }

      v12 = [v14 isEqualToString:v18];

      if (!v12)
      {
        goto LABEL_22;
      }
    }

    table = [(_NSLocalizedStringResource *)self->_localizedStringResource table];
    table2 = [stringCopy table];
    v20 = table;
    v23 = table2;
    v19 = v23;
    if (v20 == v23)
    {
      LOBYTE(v12) = 1;
    }

    else
    {
      LOBYTE(v12) = 0;
      if (v20 && v23)
      {
        LOBYTE(v12) = [v20 isEqualToString:v23];
      }
    }

    goto LABEL_21;
  }

  LOBYTE(v12) = 0;
LABEL_24:
  v5[2](v5);

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  v36[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  os_unfair_lock_lock(&self->_localizedStringResourceLock);
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __51__LNStaticDeferredLocalizedString_encodeWithCoder___block_invoke;
  v34[3] = &unk_1E72B1260;
  v34[4] = self;
  v5 = MEMORY[0x193AD9570](v34);
  localizedStringResource = self->_localizedStringResource;
  if (localizedStringResource)
  {
    [coderCopy encodeObject:localizedStringResource forKey:@"localizedStringResource"];
  }

  v5[2](v5);

  v7 = [(LNStaticDeferredLocalizedString *)self key];
  [coderCopy encodeObject:v7 forKey:@"key"];

  defaultValue = [(LNStaticDeferredLocalizedString *)self defaultValue];
  [coderCopy encodeObject:defaultValue forKey:@"defaultValue"];

  bundleURL = [(LNStaticDeferredLocalizedString *)self bundleURL];
  [coderCopy encodeObject:bundleURL forKey:@"bundleURL"];

  table = [(LNStaticDeferredLocalizedString *)self table];
  [coderCopy encodeObject:table forKey:@"table"];

  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];
  v13 = [threadDictionary objectForKeyedSubscript:@"LNStaticDeferredLocalizedStringLocaleIdentifier"];

  if (v13)
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v15 = [(LNStaticDeferredLocalizedString *)self localizedStringForLocaleIdentifier:v13];
    v16 = [(LNStaticDeferredLocalizedString *)self localizedStringWithPluralizationNumber:&unk_1F02FF018 forLocaleIdentifier:v13];
    v17 = [(LNStaticDeferredLocalizedString *)self localizedStringWithPluralizationNumber:&unk_1F02FF000 forLocaleIdentifier:v13];
    v18 = v15;
    v19 = v16;
    v20 = v19;
    if (v18 == v19)
    {

      v22 = 0;
      v23 = v18;
      v24 = v20;
    }

    else
    {
      if (v18 && v19)
      {
        v21 = [v18 isEqualToString:v19];

        if ((v21 & 1) == 0)
        {
          v22 = v20;
LABEL_13:
          v25 = v18;
          v26 = v17;
          v27 = v26;
          if (v25 == v26)
          {

            v29 = 0;
            v30 = v25;
            v31 = v27;
          }

          else
          {
            if (v25 && v26)
            {
              v28 = [v25 isEqualToString:v26];

              if ((v28 & 1) == 0)
              {
                v29 = v27;
                goto LABEL_22;
              }

              v29 = 0;
LABEL_21:

LABEL_22:
              [v14 if_setObjectIfNonNil:v25 forKey:&unk_1F02FEFE8];
              [v14 if_setObjectIfNonNil:v22 forKey:&unk_1F02FF018];
              [v14 if_setObjectIfNonNil:v29 forKey:&unk_1F02FF000];
              v35 = v13;
              v36[0] = v14;
              v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
              [coderCopy encodeObject:v32 forKey:@"prelocalizedStrings"];

              goto LABEL_23;
            }

            v30 = v26;
            v31 = v25;
            v29 = v26;
          }

          v27 = v31;
          goto LABEL_21;
        }

        v22 = 0;
LABEL_12:

        goto LABEL_13;
      }

      v23 = v19;
      v24 = v18;
      v22 = v19;
    }

    v20 = v24;
    goto LABEL_12;
  }

LABEL_23:

  v33 = *MEMORY[0x1E69E9840];
}

- (LNStaticDeferredLocalizedString)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedStringResource"];
  if (v5)
  {
    v6 = v5;
    self = [(LNStaticDeferredLocalizedString *)self initWithLocalizedStringResource:v5];
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v7 setWithObjects:{v8, v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"prelocalizedStrings"];
    prelocalizedStrings = self->_prelocalizedStrings;
    self->_prelocalizedStrings = v11;
  }

  else
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"key"];
    if (!v6)
    {
      selfCopy = 0;
      goto LABEL_6;
    }

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"table"];
    prelocalizedStrings = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"defaultValue"];
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleURL"];
    self = [(LNStaticDeferredLocalizedString *)self initWithKey:v6 defaultValue:prelocalizedStrings table:v10 bundleURL:v13];
    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = [v14 setWithObjects:{v15, v16, objc_opt_class(), 0}];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"prelocalizedStrings"];
    v19 = self->_prelocalizedStrings;
    self->_prelocalizedStrings = v18;
  }

  selfCopy = self;
LABEL_6:

  return selfCopy;
}

- (void)getCharacters:(unsigned __int16 *)characters range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v7 = [(LNStaticDeferredLocalizedString *)self key];
  [v7 getCharacters:characters range:{location, length}];
}

- (unsigned)characterAtIndex:(unint64_t)index
{
  v4 = [(LNStaticDeferredLocalizedString *)self key];
  LOWORD(index) = [v4 characterAtIndex:index];

  return index;
}

- (unint64_t)length
{
  v2 = [(LNStaticDeferredLocalizedString *)self key];
  v3 = [v2 length];

  return v3;
}

- (NSString)description
{
  os_unfair_lock_lock(&self->_localizedStringResourceLock);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __46__LNStaticDeferredLocalizedString_description__block_invoke;
  v17[3] = &unk_1E72B1260;
  v17[4] = self;
  v4 = MEMORY[0x193AD9570](v17);
  localizedStringResource = self->_localizedStringResource;
  if (localizedStringResource)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v2 = [v6 stringWithFormat:@"<%@: %p, localizedStringResource: %@>", v8, self, self->_localizedStringResource];
  }

  v4[2](v4);

  if (!localizedStringResource)
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [(LNStaticDeferredLocalizedString *)self key];
    defaultValue = [(LNStaticDeferredLocalizedString *)self defaultValue];
    table = [(LNStaticDeferredLocalizedString *)self table];
    bundleURL = [(LNStaticDeferredLocalizedString *)self bundleURL];
    v2 = [v9 stringWithFormat:@"<%@: %p, key: %@, defaultValue: %@, table: %@, bundleURL: %@>", v11, self, v12, defaultValue, table, bundleURL];
  }

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    goto LABEL_7;
  }

  v6 = equalCopy;
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    LOBYTE(v8) = 0;
    goto LABEL_30;
  }

  os_unfair_lock_lock(&self->_localizedStringResourceLock);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __43__LNStaticDeferredLocalizedString_isEqual___block_invoke;
  v26[3] = &unk_1E72B1260;
  v26[4] = self;
  v7 = MEMORY[0x193AD9570](v26);
  if (!self->_localizedStringResource || ![(LNStaticDeferredLocalizedString *)v6 hasEqualLocalizedString:?])
  {
    v7[2](v7);

    v9 = [(LNStaticDeferredLocalizedString *)self key];
    v10 = [(LNStaticDeferredLocalizedString *)v6 key];
    v11 = v9;
    v12 = v10;
    v13 = v12;
    if (v11 == v12)
    {
    }

    else
    {
      LOBYTE(v8) = 0;
      v14 = v12;
      v15 = v11;
      if (!v11 || !v12)
      {
        goto LABEL_28;
      }

      v16 = [v11 isEqualToString:v12];

      if ((v16 & 1) == 0)
      {
        LOBYTE(v8) = 0;
LABEL_29:

        goto LABEL_30;
      }
    }

    defaultValue = [(LNStaticDeferredLocalizedString *)self defaultValue];
    defaultValue2 = [(LNStaticDeferredLocalizedString *)v6 defaultValue];
    v15 = defaultValue;
    v19 = defaultValue2;
    v14 = v19;
    if (v15 == v19)
    {
    }

    else
    {
      LOBYTE(v8) = 0;
      v20 = v19;
      v21 = v15;
      if (!v15 || !v19)
      {
LABEL_27:

LABEL_28:
        goto LABEL_29;
      }

      v8 = [v15 isEqualToString:v19];

      if (!v8)
      {
        goto LABEL_28;
      }
    }

    table = [(LNStaticDeferredLocalizedString *)self table];
    table2 = [(LNStaticDeferredLocalizedString *)v6 table];
    v21 = table;
    v24 = table2;
    v20 = v24;
    if (v21 == v24)
    {
      LOBYTE(v8) = 1;
    }

    else
    {
      LOBYTE(v8) = 0;
      if (v21 && v24)
      {
        LOBYTE(v8) = [v21 isEqualToString:v24];
      }
    }

    goto LABEL_27;
  }

  v7[2](v7);

LABEL_7:
  LOBYTE(v8) = 1;
LABEL_30:

  return v8;
}

- (LNStaticDeferredLocalizedString)initWithKey:(id)key defaultValue:(id)value table:(id)table bundleURL:(id)l
{
  keyCopy = key;
  valueCopy = value;
  tableCopy = table;
  lCopy = l;
  if (!keyCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNStaticDeferredLocalizedString.m" lineNumber:223 description:{@"Invalid parameter not satisfying: %@", @"key"}];
  }

  _init = [(LNStaticDeferredLocalizedString *)self _init];
  if (_init)
  {
    v16 = [keyCopy copy];
    key = _init->_key;
    _init->_key = v16;

    v18 = [valueCopy copy];
    defaultValue = _init->_defaultValue;
    _init->_defaultValue = v18;

    v20 = [tableCopy copy];
    table = _init->_table;
    _init->_table = v20;

    v22 = [lCopy copy];
    bundleURL = _init->_bundleURL;
    _init->_bundleURL = v22;

    v24 = _init;
  }

  return _init;
}

- (LNStaticDeferredLocalizedString)localizedStringWithReplacements:(id)replacements forLocaleIdentifier:(id)identifier
{
  replacementsCopy = replacements;
  identifierCopy = identifier;
  localizedStringResource = [(LNStaticDeferredLocalizedString *)self localizedStringResource];

  v9 = [(LNStaticDeferredLocalizedString *)self key];
  if (localizedStringResource)
  {
    table = [(LNStaticDeferredLocalizedString *)self table];
    bundleURL = [(LNStaticDeferredLocalizedString *)self bundleURL];
    v12 = [v9 localizedStringWithReplacements:replacementsCopy table:table bundleURL:bundleURL localeIdentifier:identifierCopy];

    v9 = v12;
  }

  return v9;
}

- (LNStaticDeferredLocalizedString)localizedStringWithPluralizationNumber:(id)number forLocaleIdentifier:(id)identifier
{
  numberCopy = number;
  identifierCopy = identifier;
  if (identifierCopy)
  {
    [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:identifierCopy];
  }

  else
  {
    [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  }
  v8 = ;
  localeIdentifier = [v8 localeIdentifier];
  if (!localeIdentifier)
  {
    goto LABEL_9;
  }

  v10 = localeIdentifier;
  prelocalizedStrings = [(LNStaticDeferredLocalizedString *)self prelocalizedStrings];
  localeIdentifier2 = [v8 localeIdentifier];
  v13 = [prelocalizedStrings objectForKeyedSubscript:localeIdentifier2];

  if (!v13)
  {
LABEL_9:
    localizedStringResource = [(LNStaticDeferredLocalizedString *)self localizedStringResource];

    if (!localizedStringResource)
    {
      v24 = [(LNStaticDeferredLocalizedString *)self key];
      goto LABEL_17;
    }

    localizedStringResource2 = [(LNStaticDeferredLocalizedString *)self localizedStringResource];
    v19 = [localizedStringResource2 copy];

    [v19 setLocale:v8];
    prelocalizedStrings3 = objc_alloc_init(MEMORY[0x1E696B108]);
    [prelocalizedStrings3 setPluralizationNumber:numberCopy];
    v21 = [v19 localizeWithOptions:prelocalizedStrings3];
    goto LABEL_11;
  }

  integerValue = [numberCopy integerValue];
  prelocalizedStrings2 = [(LNStaticDeferredLocalizedString *)self prelocalizedStrings];
  localeIdentifier3 = [v8 localeIdentifier];
  v17 = [prelocalizedStrings2 objectForKeyedSubscript:localeIdentifier3];
  v18 = v17;
  if (integerValue < 2)
  {
    v19 = [v17 objectForKeyedSubscript:numberCopy];

    if (!v19)
    {
      prelocalizedStrings3 = [(LNStaticDeferredLocalizedString *)self prelocalizedStrings];
      localeIdentifier4 = [v8 localeIdentifier];
      v27 = [prelocalizedStrings3 objectForKeyedSubscript:localeIdentifier4];
      v24 = [v27 objectForKeyedSubscript:&unk_1F02FEFE8];

      goto LABEL_12;
    }

LABEL_15:
    v24 = v19;
    goto LABEL_16;
  }

  v19 = [v17 objectForKeyedSubscript:&unk_1F02FF000];

  if (v19)
  {
    goto LABEL_15;
  }

  prelocalizedStrings3 = [v8 localeIdentifier];
  v21 = [(LNStaticDeferredLocalizedString *)self localizedStringWithPluralizationNumber:&unk_1F02FF018 forLocaleIdentifier:prelocalizedStrings3];
LABEL_11:
  v24 = v21;
LABEL_12:

LABEL_16:
LABEL_17:

  return v24;
}

- (id)localizedStringForLocaleIdentifier:(id)identifier bundleURL:(id)l
{
  identifierCopy = identifier;
  v7 = MEMORY[0x1E696B100];
  lCopy = l;
  v9 = [v7 alloc];
  v10 = [(LNStaticDeferredLocalizedString *)self key];
  defaultValue = [(LNStaticDeferredLocalizedString *)self defaultValue];
  table = [(LNStaticDeferredLocalizedString *)self table];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v14 = [v9 initWithKey:v10 defaultValue:defaultValue table:table locale:currentLocale bundleURL:lCopy];

  if (identifierCopy)
  {
    [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:identifierCopy];
  }

  else
  {
    [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  }
  v15 = ;
  [v14 setLocale:v15];

  localize = [v14 localize];

  return localize;
}

- (id)localizedStringForLocaleIdentifier:(id)identifier kind:(id)kind
{
  identifierCopy = identifier;
  kindCopy = kind;
  if (![(LNStaticDeferredLocalizedString *)self isMemberOfClass:objc_opt_class()]|| ([(LNStaticDeferredLocalizedString *)self localizedStringForLocaleIdentifier:identifierCopy kind:kindCopy], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v8 = [(LNStaticDeferredLocalizedString *)self localizedStringForLocaleIdentifier:identifierCopy];
  }

  return v8;
}

- (id)localizedStringForLocaleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:identifierCopy];
  }

  else
  {
    [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  }
  v5 = ;
  localeIdentifier = [v5 localeIdentifier];
  if (localeIdentifier)
  {
    v7 = localeIdentifier;
    prelocalizedStrings = [(LNStaticDeferredLocalizedString *)self prelocalizedStrings];
    localeIdentifier2 = [v5 localeIdentifier];
    v10 = [prelocalizedStrings objectForKeyedSubscript:localeIdentifier2];

    if (v10)
    {
      prelocalizedStrings2 = [(LNStaticDeferredLocalizedString *)self prelocalizedStrings];
      localeIdentifier3 = [v5 localeIdentifier];
      v13 = [prelocalizedStrings2 objectForKeyedSubscript:localeIdentifier3];
      localize = [v13 objectForKeyedSubscript:&unk_1F02FEFE8];

LABEL_9:
      goto LABEL_11;
    }
  }

  localizedStringResource = [(LNStaticDeferredLocalizedString *)self localizedStringResource];

  if (localizedStringResource)
  {
    localizedStringResource2 = [(LNStaticDeferredLocalizedString *)self localizedStringResource];
    prelocalizedStrings2 = [localizedStringResource2 copy];

    [prelocalizedStrings2 setLocale:v5];
    localize = [prelocalizedStrings2 localize];
    goto LABEL_9;
  }

  localize = [(LNStaticDeferredLocalizedString *)self key];
LABEL_11:

  return localize;
}

- (LNStaticDeferredLocalizedString)initWithKey:(id)key defaultValue:(id)value table:(id)table bundleURL:(id)l alternatives:(id)alternatives
{
  keyCopy = key;
  valueCopy = value;
  tableCopy = table;
  lCopy = l;
  alternativesCopy = alternatives;
  v17 = [(LNStaticDeferredLocalizedString *)self isMemberOfClass:objc_opt_class()];
  if (alternativesCopy && v17 && [alternativesCopy count])
  {
    v18 = [[LNStaticDeferredLocalizedStringWithAlternatives alloc] initWithKey:keyCopy defaultValue:valueCopy table:tableCopy bundleURL:lCopy alternatives:alternativesCopy];
  }

  else
  {
    v18 = [(LNStaticDeferredLocalizedString *)self initWithKey:keyCopy defaultValue:valueCopy table:tableCopy bundleURL:lCopy];
  }

  return &v18->super;
}

- (LNStaticDeferredLocalizedString)initWithLocalizedStringResource:(id)resource alternatives:(id)alternatives
{
  resourceCopy = resource;
  alternativesCopy = alternatives;
  v9 = [(LNStaticDeferredLocalizedString *)self isMemberOfClass:objc_opt_class()];
  if (alternativesCopy && v9 && [alternativesCopy count])
  {
    _init = [[LNStaticDeferredLocalizedStringWithAlternatives alloc] initWithLocalizedStringResource:resourceCopy alternatives:alternativesCopy];
LABEL_9:

    goto LABEL_10;
  }

  if (!resourceCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNStaticDeferredLocalizedString.m" lineNumber:66 description:{@"Invalid parameter not satisfying: %@", @"localizedStringResource"}];
  }

  _init = [(LNStaticDeferredLocalizedString *)self _init];
  if (_init)
  {
    v11 = resourceCopy;
    self = _init->super._localizedStringResource;
    _init->super._localizedStringResource = v11;
    goto LABEL_9;
  }

LABEL_10:

  return &_init->super;
}

- (LNStaticDeferredLocalizedString)initWithLocalizedStringResource:(id)resource
{
  resourceCopy = resource;
  if (!resourceCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNStaticDeferredLocalizedString.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"localizedStringResource"}];
  }

  _init = [(LNStaticDeferredLocalizedString *)self _init];
  v8 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 7, resource);
    v9 = v8;
  }

  return v8;
}

+ (id)prelocalizeUsingLocaleIdentifier:(id)identifier block:(id)block
{
  identifierCopy = identifier;
  blockCopy = block;
  if (!blockCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNStaticDeferredLocalizedString.m" lineNumber:238 description:{@"Invalid parameter not satisfying: %@", @"block"}];
  }

  localeIdentifier = identifierCopy;
  if (!identifierCopy)
  {
    self = [MEMORY[0x1E695DF58] currentLocale];
    localeIdentifier = [self localeIdentifier];
  }

  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];
  [threadDictionary setObject:localeIdentifier forKeyedSubscript:@"LNStaticDeferredLocalizedStringLocaleIdentifier"];

  if (!identifierCopy)
  {
  }

  v12 = blockCopy[2](blockCopy);
  currentThread2 = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary2 = [currentThread2 threadDictionary];
  [threadDictionary2 setObject:0 forKeyedSubscript:@"LNStaticDeferredLocalizedStringLocaleIdentifier"];

  return v12;
}

@end