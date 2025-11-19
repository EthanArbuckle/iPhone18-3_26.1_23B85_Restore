@interface IMKeyValueCollectionUserDefaultsStorage
- (IMKeyValueCollectionUserDefaultsStorage)init;
- (IMKeyValueCollectionUserDefaultsStorage)initWithDomain:(id)a3;
- (NSString)description;
- (id)_actuallyReadObjectForKey:(id)a3;
- (id)_decodeData:(id)a3 forKey:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)objectForKey:(id)a3;
- (id)setWithMutableClassIfApplicableFor:(Class)a3;
- (void)_actuallyWriteObject:(id)a3 forKey:(id)a4;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation IMKeyValueCollectionUserDefaultsStorage

- (IMKeyValueCollectionUserDefaultsStorage)init
{
  [(IMKeyValueCollectionUserDefaultsStorage *)self doesNotRecognizeSelector:0];

  return 0;
}

- (IMKeyValueCollectionUserDefaultsStorage)initWithDomain:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = IMKeyValueCollectionUserDefaultsStorage;
  v5 = [(IMKeyValueCollectionUserDefaultsStorage *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    domain = v5->_domain;
    v5->_domain = v6;
  }

  return v5;
}

- (id)_decodeData:(id)a3 forKey:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = [v7 stringByAppendingString:@"_class"];
  v10 = [(IMKeyValueCollectionUserDefaultsStorage *)self _actuallyReadObjectForKey:v9];

  v11 = v8;
  if (!v10)
  {
    goto LABEL_29;
  }

  v26 = 0;
  v12 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v8 error:&v26];
  v13 = v26;
  if (objc_opt_respondsToSelector())
  {
    [v12 _enableStrictSecureDecodingMode];
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v14, OS_LOG_TYPE_INFO, "strict-decoding 025 _enableStrictSecureDecodingMode called", buf, 2u);
      }
    }
  }

  v15 = NSClassFromString(v10);
  if (!v15)
  {
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v28 = v10;
        v29 = 2112;
        v30 = v7;
        _os_log_impl(&dword_1A85E5000, v20, OS_LOG_TYPE_INFO, "Failed to inflate class of type: %@ for key %@", buf, 0x16u);
      }
    }

    v21 = 0;
    v11 = v8;
    goto LABEL_31;
  }

  v16 = [(IMKeyValueCollectionUserDefaultsStorage *)self setWithMutableClassIfApplicableFor:v15];
  v17 = *MEMORY[0x1E696A508];
  v25 = 0;
  v11 = [v12 decodeTopLevelObjectOfClasses:v16 forKey:v17 error:&v25];
  v18 = v25;

  if (v13)
  {
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v28 = v13;
        _os_log_impl(&dword_1A85E5000, v19, OS_LOG_TYPE_INFO, "Failed to unarchive data. Error: %@", buf, 0xCu);
      }

LABEL_26:
    }
  }

  else
  {
    if (!v18)
    {
      v23 = 1;
      goto LABEL_28;
    }

    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v28 = v10;
        v29 = 2112;
        v30 = v7;
        v31 = 2112;
        v32 = v18;
        _os_log_impl(&dword_1A85E5000, v22, OS_LOG_TYPE_INFO, "decodeTopLevelObjectOfClasses object of type: %@ for key %@ failed with error: %@", buf, 0x20u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v19, OS_LOG_TYPE_INFO, "strict-decoding 025 _enableStrictSecureDecodingMode called", buf, 2u);
      }

      goto LABEL_26;
    }
  }

  v23 = 0;
LABEL_28:

  if (v23)
  {
LABEL_29:
    v11 = v11;
    v21 = v11;
    goto LABEL_31;
  }

  v21 = 0;
LABEL_31:

  return v21;
}

- (id)_actuallyReadObjectForKey:(id)a3
{
  v4 = a3;
  v5 = [(IMKeyValueCollectionUserDefaultsStorage *)self domain];
  v6 = IMGetCachedDomainValueForKey();

  return v6;
}

- (void)_actuallyWriteObject:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(IMKeyValueCollectionUserDefaultsStorage *)self domain];
  IMSetDomainValueForKey();
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v5 = [(IMKeyValueCollectionUserDefaultsStorage *)self _actuallyReadObjectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(IMKeyValueCollectionUserDefaultsStorage *)self _decodeData:v5 forKey:v4];
  }

  else
  {
    v6 = v5;
  }

  v7 = v6;

  return v7;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v17 = a3;
  v6 = a4;
  v7 = v17;
  v8 = v6;
  if (v17 && (v9 = [v17 isArchivable_im], v7 = v17, !v9))
  {
    v10 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v17 requiringSecureCoding:0 error:0];
    if (!v10)
    {
      goto LABEL_7;
    }

    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = [v8 stringByAppendingString:@"_class"];
    [(IMKeyValueCollectionUserDefaultsStorage *)self _actuallyWriteObject:v15 forKey:v16];

    v11 = self;
    v12 = v10;
    v13 = v8;
  }

  else
  {
    [(IMKeyValueCollectionUserDefaultsStorage *)self _actuallyWriteObject:v7 forKey:v8];
    v10 = [v8 stringByAppendingString:@"_class"];
    v11 = self;
    v12 = 0;
    v13 = v10;
  }

  [(IMKeyValueCollectionUserDefaultsStorage *)v11 _actuallyWriteObject:v12 forKey:v13];
LABEL_7:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = objc_alloc(objc_opt_class());

  return MEMORY[0x1EEE66B58](v3, sel_initWithDomain_);
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = IMKeyValueCollectionUserDefaultsStorage;
  v4 = [(IMKeyValueCollectionUserDefaultsStorage *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ domain:%@]", v4, self->_domain];

  return v5;
}

- (id)setWithMutableClassIfApplicableFor:(Class)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v4 = MEMORY[0x1E695DFD8];
    v5 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = 0;
    v6 = v4;
    v7 = v5;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v11 = MEMORY[0x1E695DFD8];
    if (isKindOfClass)
    {
      a3 = objc_opt_class();
      v12 = objc_opt_class();
      v13 = 0;
    }

    else
    {
      v12 = 0;
    }

    v6 = v11;
    v7 = a3;
  }

  v8 = [v6 setWithObjects:{v7, v12, v13}];

  return v8;
}

@end