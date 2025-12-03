@interface CRUserDefaults
- (BOOL)BOOLForKey:(id)key;
- (CRUserDefaults)initWithSuiteName:(id)name internalOnly:(BOOL)only;
- (id)_initWithSuiteName:(id)name internalOnly:(BOOL)only;
- (id)dictionaryForKey:(id)key;
- (id)objectForKey:(id)key;
- (id)stringForKey:(id)key;
@end

@implementation CRUserDefaults

- (id)_initWithSuiteName:(id)name internalOnly:(BOOL)only
{
  v41 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v34.receiver = self;
  v34.super_class = CRUserDefaults;
  v8 = [(CRUserDefaults *)&v34 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_26;
  }

  objc_storeStrong(&v8->_suiteName, name);
  has_internal_content = os_variant_has_internal_content();
  v11 = MGGetBoolAnswer();
  v12 = objc_opt_new();
  v13 = [v12 hasEntitlementBoolForTag:1633776739 inAPTicket:0];

  if ((has_internal_content & 1) != 0 || !v11 || v13)
  {
    v15 = handleForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = @"NO";
      if (has_internal_content)
      {
        v17 = @"YES";
      }

      else
      {
        v17 = @"NO";
      }

      if (v11)
      {
        v18 = @"YES";
      }

      else
      {
        v18 = @"NO";
      }

      *buf = 138412802;
      v36 = v17;
      v37 = 2112;
      v38 = v18;
      if (v13)
      {
        v16 = @"YES";
      }

      v39 = 2112;
      v40 = v16;
      _os_log_impl(&dword_1CEDC5000, v15, OS_LOG_TYPE_DEFAULT, "isInternal: %@, isProduction: %@, hasAATC: %@", buf, 0x20u);
    }

    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", getuid()];
    nameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.plist", nameCopy];
    v21 = [@"/var/MobileSoftwareUpdate/Controller/RepairServices" stringByAppendingPathComponent:@"defaults"];
    v22 = [v21 stringByAppendingPathComponent:v19];
    v23 = [v22 stringByAppendingPathComponent:nameCopy];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    LODWORD(v22) = [defaultManager fileExistsAtPath:v23];

    if (v22)
    {
      v25 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v23];
      v33 = 0;
      v26 = [MEMORY[0x1E696AE40] propertyListWithData:v25 options:0 format:0 error:&v33];
      v27 = v33;
      defaultValues = v9->_defaultValues;
      v9->_defaultValues = v26;

      v29 = handleForCategory(0);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = v23;
        _os_log_impl(&dword_1CEDC5000, v29, OS_LOG_TYPE_DEFAULT, "Read defaults from: %@", buf, 0xCu);
      }

      if (v27)
      {
        v30 = handleForCategory(0);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          [CRUserDefaults _initWithSuiteName:v27 internalOnly:v30];
        }
      }
    }

    goto LABEL_26;
  }

  if (!only)
  {
LABEL_26:
    v14 = v9;
    goto LABEL_27;
  }

  v14 = 0;
LABEL_27:

  v31 = *MEMORY[0x1E69E9840];
  return v14;
}

- (CRUserDefaults)initWithSuiteName:(id)name internalOnly:(BOOL)only
{
  nameCopy = name;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__CRUserDefaults_initWithSuiteName_internalOnly___block_invoke;
  block[3] = &unk_1E83B3F60;
  selfCopy = self;
  v14 = nameCopy;
  onlyCopy = only;
  v7 = initWithSuiteName_internalOnly__onceToken;
  v8 = nameCopy;
  selfCopy2 = self;
  if (v7 != -1)
  {
    dispatch_once(&initWithSuiteName_internalOnly__onceToken, block);
  }

  v10 = initWithSuiteName_internalOnly__instance;

  return v10;
}

uint64_t __49__CRUserDefaults_initWithSuiteName_internalOnly___block_invoke(uint64_t a1)
{
  initWithSuiteName_internalOnly__instance = [*(a1 + 32) _initWithSuiteName:*(a1 + 40) internalOnly:*(a1 + 48)];

  return MEMORY[0x1EEE66BB8]();
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  v5 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:self->_suiteName];
  v6 = [v5 objectForKey:keyCopy];

  if (v6)
  {
    v7 = v6;
LABEL_5:
    v9 = v7;
    goto LABEL_6;
  }

  defaultValues = self->_defaultValues;
  if (defaultValues)
  {
    v7 = [(NSDictionary *)defaultValues objectForKey:keyCopy];
    goto LABEL_5;
  }

  v9 = 0;
LABEL_6:

  return v9;
}

- (id)dictionaryForKey:(id)key
{
  v3 = [(CRUserDefaults *)self objectForKey:key];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (id)stringForKey:(id)key
{
  v3 = [(CRUserDefaults *)self objectForKey:key];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      stringValue = [v3 stringValue];
    }

    else
    {
      stringValue = 0;
    }

    v3 = stringValue;
  }

  return v3;
}

- (BOOL)BOOLForKey:(id)key
{
  v3 = [(CRUserDefaults *)self objectForKey:key];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v3 isEqualToString:@"YES"])
    {
      bOOLValue = 1;
    }

    else
    {
      v5 = [v3 length];
      bOOLValue = 1;
      if ([v3 compare:@"YES" options:1 range:{0, v5}])
      {
        bOOLValue = 1;
        if ([v3 compare:@"Y" options:1 range:{0, v5}])
        {
          bOOLValue = [v3 integerValue] != 0;
        }
      }
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue = [v3 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }
  }

  return bOOLValue;
}

@end