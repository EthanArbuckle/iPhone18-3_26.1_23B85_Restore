@interface LNStaticDeferredLocalizedString
+ (id)prelocalizeUsingLocaleIdentifier:(id)a3 block:(id)a4;
- (BOOL)hasEqualLocalizedString:(id)a3;
- (BOOL)isEqual:(id)a3;
- (LNStaticDeferredLocalizedString)initWithCoder:(id)a3;
- (LNStaticDeferredLocalizedString)initWithKey:(id)a3 defaultValue:(id)a4 table:(id)a5 bundleURL:(id)a6;
- (LNStaticDeferredLocalizedString)initWithKey:(id)a3 defaultValue:(id)a4 table:(id)a5 bundleURL:(id)a6 alternatives:(id)a7;
- (LNStaticDeferredLocalizedString)initWithLocalizedStringResource:(id)a3;
- (LNStaticDeferredLocalizedString)initWithLocalizedStringResource:(id)a3 alternatives:(id)a4;
- (LNStaticDeferredLocalizedString)localizedStringWithPluralizationNumber:(id)a3 forLocaleIdentifier:(id)a4;
- (LNStaticDeferredLocalizedString)localizedStringWithReplacements:(id)a3 forLocaleIdentifier:(id)a4;
- (NSString)defaultValue;
- (NSString)description;
- (NSString)key;
- (NSString)table;
- (NSURL)bundleURL;
- (_NSLocalizedStringResource)localizedStringResource;
- (id)_dictionaryRepresenation;
- (id)_init;
- (id)localizedStringForLocaleIdentifier:(id)a3;
- (id)localizedStringForLocaleIdentifier:(id)a3 bundleURL:(id)a4;
- (id)localizedStringForLocaleIdentifier:(id)a3 kind:(id)a4;
- (unint64_t)hash;
- (unint64_t)length;
- (unsigned)characterAtIndex:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
- (void)getCharacters:(unsigned __int16 *)a3 range:(_NSRange)a4;
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

  v5 = [(LNStaticDeferredLocalizedString *)self bundleURL];
  if (v5)
  {
LABEL_6:
    v9 = objc_alloc(MEMORY[0x1E696B100]);
    v10 = [(LNStaticDeferredLocalizedString *)self key];
    v11 = [(LNStaticDeferredLocalizedString *)self defaultValue];
    v12 = [(LNStaticDeferredLocalizedString *)self table];
    v13 = [MEMORY[0x1E695DF58] currentLocale];
    v14 = [v9 initWithKey:v10 defaultValue:v11 table:v12 locale:v13 bundleURL:v5];
    v15 = self->_localizedStringResource;
    self->_localizedStringResource = v14;

    localizedStringResource = self->_localizedStringResource;
LABEL_7:
    v16 = localizedStringResource;
    goto LABEL_8;
  }

  v6 = [MEMORY[0x1E6963620] bundleRecordForCurrentProcess];
  v7 = [v6 URL];
  if (v7)
  {
    v5 = v7;

    goto LABEL_6;
  }

  v8 = [MEMORY[0x1E696AAE8] mainBundle];
  v5 = [v8 bundleURL];

  if (v5)
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
    v8 = [(_NSLocalizedStringResource *)self->_localizedStringResource table];
    v2 = [v8 hash] ^ v7;
  }

  v4[2](v4);

  if (!localizedStringResource)
  {
    v9 = [(LNStaticDeferredLocalizedString *)self key];
    v10 = [v9 hash];
    v11 = [(LNStaticDeferredLocalizedString *)self defaultValue];
    v12 = [v11 hash] ^ v10;
    v13 = [(LNStaticDeferredLocalizedString *)self table];
    v2 = v12 ^ [v13 hash];
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
    v5 = bundleURL;
  }

  else
  {
    v5 = [(_NSLocalizedStringResource *)self->_localizedStringResource bundleURL];
  }

  v6 = v5;
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
  v4 = [(_NSLocalizedStringResource *)self->_localizedStringResource defaultValue];
  defaultValue = v4;
  if (!v4)
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
  v4 = [(_NSLocalizedStringResource *)self->_localizedStringResource table];
  table = v4;
  if (!v4)
  {
    table = self->_table;
  }

  v6 = table;

  v3[2](v3);

  return v6;
}

- (id)_dictionaryRepresenation
{
  v2 = self;
  LNStaticDeferredLocalizedString._dictionaryRepresentation()();

  v3 = sub_18F093A3C();

  return v3;
}

- (BOOL)hasEqualLocalizedString:(id)a3
{
  v4 = a3;
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
    v8 = [v4 key];
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

    v16 = [(_NSLocalizedStringResource *)self->_localizedStringResource defaultValue];
    v17 = [v4 defaultValue];
    v14 = v16;
    v18 = v17;
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

    v21 = [(_NSLocalizedStringResource *)self->_localizedStringResource table];
    v22 = [v4 table];
    v20 = v21;
    v23 = v22;
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

- (void)encodeWithCoder:(id)a3
{
  v36[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
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
    [v4 encodeObject:localizedStringResource forKey:@"localizedStringResource"];
  }

  v5[2](v5);

  v7 = [(LNStaticDeferredLocalizedString *)self key];
  [v4 encodeObject:v7 forKey:@"key"];

  v8 = [(LNStaticDeferredLocalizedString *)self defaultValue];
  [v4 encodeObject:v8 forKey:@"defaultValue"];

  v9 = [(LNStaticDeferredLocalizedString *)self bundleURL];
  [v4 encodeObject:v9 forKey:@"bundleURL"];

  v10 = [(LNStaticDeferredLocalizedString *)self table];
  [v4 encodeObject:v10 forKey:@"table"];

  v11 = [MEMORY[0x1E696AF00] currentThread];
  v12 = [v11 threadDictionary];
  v13 = [v12 objectForKeyedSubscript:@"LNStaticDeferredLocalizedStringLocaleIdentifier"];

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
              [v4 encodeObject:v32 forKey:@"prelocalizedStrings"];

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

- (LNStaticDeferredLocalizedString)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedStringResource"];
  if (v5)
  {
    v6 = v5;
    self = [(LNStaticDeferredLocalizedString *)self initWithLocalizedStringResource:v5];
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v7 setWithObjects:{v8, v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"prelocalizedStrings"];
    prelocalizedStrings = self->_prelocalizedStrings;
    self->_prelocalizedStrings = v11;
  }

  else
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"key"];
    if (!v6)
    {
      v20 = 0;
      goto LABEL_6;
    }

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"table"];
    prelocalizedStrings = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"defaultValue"];
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleURL"];
    self = [(LNStaticDeferredLocalizedString *)self initWithKey:v6 defaultValue:prelocalizedStrings table:v10 bundleURL:v13];
    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = [v14 setWithObjects:{v15, v16, objc_opt_class(), 0}];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"prelocalizedStrings"];
    v19 = self->_prelocalizedStrings;
    self->_prelocalizedStrings = v18;
  }

  v20 = self;
LABEL_6:

  return v20;
}

- (void)getCharacters:(unsigned __int16 *)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = [(LNStaticDeferredLocalizedString *)self key];
  [v7 getCharacters:a3 range:{location, length}];
}

- (unsigned)characterAtIndex:(unint64_t)a3
{
  v4 = [(LNStaticDeferredLocalizedString *)self key];
  LOWORD(a3) = [v4 characterAtIndex:a3];

  return a3;
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
    v13 = [(LNStaticDeferredLocalizedString *)self defaultValue];
    v14 = [(LNStaticDeferredLocalizedString *)self table];
    v15 = [(LNStaticDeferredLocalizedString *)self bundleURL];
    v2 = [v9 stringWithFormat:@"<%@: %p, key: %@, defaultValue: %@, table: %@, bundleURL: %@>", v11, self, v12, v13, v14, v15];
  }

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    goto LABEL_7;
  }

  v6 = v4;
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

    v17 = [(LNStaticDeferredLocalizedString *)self defaultValue];
    v18 = [(LNStaticDeferredLocalizedString *)v6 defaultValue];
    v15 = v17;
    v19 = v18;
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

    v22 = [(LNStaticDeferredLocalizedString *)self table];
    v23 = [(LNStaticDeferredLocalizedString *)v6 table];
    v21 = v22;
    v24 = v23;
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

- (LNStaticDeferredLocalizedString)initWithKey:(id)a3 defaultValue:(id)a4 table:(id)a5 bundleURL:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v11)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"LNStaticDeferredLocalizedString.m" lineNumber:223 description:{@"Invalid parameter not satisfying: %@", @"key"}];
  }

  v15 = [(LNStaticDeferredLocalizedString *)self _init];
  if (v15)
  {
    v16 = [v11 copy];
    key = v15->_key;
    v15->_key = v16;

    v18 = [v12 copy];
    defaultValue = v15->_defaultValue;
    v15->_defaultValue = v18;

    v20 = [v13 copy];
    table = v15->_table;
    v15->_table = v20;

    v22 = [v14 copy];
    bundleURL = v15->_bundleURL;
    v15->_bundleURL = v22;

    v24 = v15;
  }

  return v15;
}

- (LNStaticDeferredLocalizedString)localizedStringWithReplacements:(id)a3 forLocaleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(LNStaticDeferredLocalizedString *)self localizedStringResource];

  v9 = [(LNStaticDeferredLocalizedString *)self key];
  if (v8)
  {
    v10 = [(LNStaticDeferredLocalizedString *)self table];
    v11 = [(LNStaticDeferredLocalizedString *)self bundleURL];
    v12 = [v9 localizedStringWithReplacements:v6 table:v10 bundleURL:v11 localeIdentifier:v7];

    v9 = v12;
  }

  return v9;
}

- (LNStaticDeferredLocalizedString)localizedStringWithPluralizationNumber:(id)a3 forLocaleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v7];
  }

  else
  {
    [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  }
  v8 = ;
  v9 = [v8 localeIdentifier];
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = v9;
  v11 = [(LNStaticDeferredLocalizedString *)self prelocalizedStrings];
  v12 = [v8 localeIdentifier];
  v13 = [v11 objectForKeyedSubscript:v12];

  if (!v13)
  {
LABEL_9:
    v22 = [(LNStaticDeferredLocalizedString *)self localizedStringResource];

    if (!v22)
    {
      v24 = [(LNStaticDeferredLocalizedString *)self key];
      goto LABEL_17;
    }

    v23 = [(LNStaticDeferredLocalizedString *)self localizedStringResource];
    v19 = [v23 copy];

    [v19 setLocale:v8];
    v20 = objc_alloc_init(MEMORY[0x1E696B108]);
    [v20 setPluralizationNumber:v6];
    v21 = [v19 localizeWithOptions:v20];
    goto LABEL_11;
  }

  v14 = [v6 integerValue];
  v15 = [(LNStaticDeferredLocalizedString *)self prelocalizedStrings];
  v16 = [v8 localeIdentifier];
  v17 = [v15 objectForKeyedSubscript:v16];
  v18 = v17;
  if (v14 < 2)
  {
    v19 = [v17 objectForKeyedSubscript:v6];

    if (!v19)
    {
      v20 = [(LNStaticDeferredLocalizedString *)self prelocalizedStrings];
      v26 = [v8 localeIdentifier];
      v27 = [v20 objectForKeyedSubscript:v26];
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

  v20 = [v8 localeIdentifier];
  v21 = [(LNStaticDeferredLocalizedString *)self localizedStringWithPluralizationNumber:&unk_1F02FF018 forLocaleIdentifier:v20];
LABEL_11:
  v24 = v21;
LABEL_12:

LABEL_16:
LABEL_17:

  return v24;
}

- (id)localizedStringForLocaleIdentifier:(id)a3 bundleURL:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x1E696B100];
  v8 = a4;
  v9 = [v7 alloc];
  v10 = [(LNStaticDeferredLocalizedString *)self key];
  v11 = [(LNStaticDeferredLocalizedString *)self defaultValue];
  v12 = [(LNStaticDeferredLocalizedString *)self table];
  v13 = [MEMORY[0x1E695DF58] currentLocale];
  v14 = [v9 initWithKey:v10 defaultValue:v11 table:v12 locale:v13 bundleURL:v8];

  if (v6)
  {
    [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v6];
  }

  else
  {
    [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  }
  v15 = ;
  [v14 setLocale:v15];

  v16 = [v14 localize];

  return v16;
}

- (id)localizedStringForLocaleIdentifier:(id)a3 kind:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(LNStaticDeferredLocalizedString *)self isMemberOfClass:objc_opt_class()]|| ([(LNStaticDeferredLocalizedString *)self localizedStringForLocaleIdentifier:v6 kind:v7], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v8 = [(LNStaticDeferredLocalizedString *)self localizedStringForLocaleIdentifier:v6];
  }

  return v8;
}

- (id)localizedStringForLocaleIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v4];
  }

  else
  {
    [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  }
  v5 = ;
  v6 = [v5 localeIdentifier];
  if (v6)
  {
    v7 = v6;
    v8 = [(LNStaticDeferredLocalizedString *)self prelocalizedStrings];
    v9 = [v5 localeIdentifier];
    v10 = [v8 objectForKeyedSubscript:v9];

    if (v10)
    {
      v11 = [(LNStaticDeferredLocalizedString *)self prelocalizedStrings];
      v12 = [v5 localeIdentifier];
      v13 = [v11 objectForKeyedSubscript:v12];
      v14 = [v13 objectForKeyedSubscript:&unk_1F02FEFE8];

LABEL_9:
      goto LABEL_11;
    }
  }

  v15 = [(LNStaticDeferredLocalizedString *)self localizedStringResource];

  if (v15)
  {
    v16 = [(LNStaticDeferredLocalizedString *)self localizedStringResource];
    v11 = [v16 copy];

    [v11 setLocale:v5];
    v14 = [v11 localize];
    goto LABEL_9;
  }

  v14 = [(LNStaticDeferredLocalizedString *)self key];
LABEL_11:

  return v14;
}

- (LNStaticDeferredLocalizedString)initWithKey:(id)a3 defaultValue:(id)a4 table:(id)a5 bundleURL:(id)a6 alternatives:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(LNStaticDeferredLocalizedString *)self isMemberOfClass:objc_opt_class()];
  if (v16 && v17 && [v16 count])
  {
    v18 = [[LNStaticDeferredLocalizedStringWithAlternatives alloc] initWithKey:v12 defaultValue:v13 table:v14 bundleURL:v15 alternatives:v16];
  }

  else
  {
    v18 = [(LNStaticDeferredLocalizedString *)self initWithKey:v12 defaultValue:v13 table:v14 bundleURL:v15];
  }

  return &v18->super;
}

- (LNStaticDeferredLocalizedString)initWithLocalizedStringResource:(id)a3 alternatives:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(LNStaticDeferredLocalizedString *)self isMemberOfClass:objc_opt_class()];
  if (v8 && v9 && [v8 count])
  {
    v10 = [[LNStaticDeferredLocalizedStringWithAlternatives alloc] initWithLocalizedStringResource:v7 alternatives:v8];
LABEL_9:

    goto LABEL_10;
  }

  if (!v7)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"LNStaticDeferredLocalizedString.m" lineNumber:66 description:{@"Invalid parameter not satisfying: %@", @"localizedStringResource"}];
  }

  v10 = [(LNStaticDeferredLocalizedString *)self _init];
  if (v10)
  {
    v11 = v7;
    self = v10->super._localizedStringResource;
    v10->super._localizedStringResource = v11;
    goto LABEL_9;
  }

LABEL_10:

  return &v10->super;
}

- (LNStaticDeferredLocalizedString)initWithLocalizedStringResource:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"LNStaticDeferredLocalizedString.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"localizedStringResource"}];
  }

  v7 = [(LNStaticDeferredLocalizedString *)self _init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(v7 + 7, a3);
    v9 = v8;
  }

  return v8;
}

+ (id)prelocalizeUsingLocaleIdentifier:(id)a3 block:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"LNStaticDeferredLocalizedString.m" lineNumber:238 description:{@"Invalid parameter not satisfying: %@", @"block"}];
  }

  v9 = v7;
  if (!v7)
  {
    a1 = [MEMORY[0x1E695DF58] currentLocale];
    v9 = [a1 localeIdentifier];
  }

  v10 = [MEMORY[0x1E696AF00] currentThread];
  v11 = [v10 threadDictionary];
  [v11 setObject:v9 forKeyedSubscript:@"LNStaticDeferredLocalizedStringLocaleIdentifier"];

  if (!v7)
  {
  }

  v12 = v8[2](v8);
  v13 = [MEMORY[0x1E696AF00] currentThread];
  v14 = [v13 threadDictionary];
  [v14 setObject:0 forKeyedSubscript:@"LNStaticDeferredLocalizedStringLocaleIdentifier"];

  return v12;
}

@end