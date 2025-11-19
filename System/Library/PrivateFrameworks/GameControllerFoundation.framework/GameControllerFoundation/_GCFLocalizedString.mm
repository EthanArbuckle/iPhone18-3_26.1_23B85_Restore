@interface _GCFLocalizedString
- (_GCFLocalizedString)initWithCoder:(id)a3;
- (_GCFLocalizedString)initWithKey:(id)a3 sourceBundle:(id)a4 table:(id)a5 locale:(id)a6;
- (id)_realizedString;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _GCFLocalizedString

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _GCFLocalizedString;
  [(_GCFLocalizedString *)&v3 dealloc];
}

- (_GCFLocalizedString)initWithCoder:(id)a3
{
  v16[2] = *MEMORY[0x1E69E9840];
  if ([a3 allowsKeyedCoding])
  {
    v5 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"key"];
    v6 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"bundle"];
    v7 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"table"];
    v8 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"locale"];
  }

  else
  {
    v5 = [a3 decodeObject];
    v6 = [a3 decodeObject];
    v7 = [a3 decodeObject];
    v8 = [a3 decodeObject];
  }

  v9 = v8;
  if (!v5)
  {
    [(_GCFLocalizedString *)&v15 initWithCoder:a3, v16];
  }

  if (!v6)
  {
    [(_GCFLocalizedString *)&v13 initWithCoder:a3, &v14];
  }

  v10 = [MEMORY[0x1E696AAE8] bundleWithURL:v6];
  if (!v10)
  {
    [(_GCFLocalizedString *)v5 initWithCoder:v6];
  }

  result = [(_GCFLocalizedString *)self initWithKey:v5 sourceBundle:v10 table:v7 locale:v9];
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = [a3 allowsKeyedCoding];
  key = self->_key;
  if (v5)
  {
    [a3 encodeObject:key forKey:@"key"];
    [a3 encodeObject:-[NSBundle bundleURL](self->_sourceBundle forKey:{"bundleURL"), @"bundle"}];
    [a3 encodeObject:self->_localizationTable forKey:@"table"];
    localeOverride = self->_localeOverride;

    [a3 encodeObject:localeOverride forKey:@"locale"];
  }

  else
  {
    [a3 encodeObject:key];
    [a3 encodeObject:{-[NSBundle bundleURL](self->_sourceBundle, "bundleURL")}];
    [a3 encodeObject:self->_localizationTable];
    v8 = self->_localeOverride;

    [a3 encodeObject:v8];
  }
}

- (id)_realizedString
{
  realizedString = self->__realizedString;
  if (!realizedString)
  {
    objc_sync_enter(self);
    realizedString = self->__realizedString;
    if (!realizedString)
    {
      if (self->_sourceBundle && [(NSString *)self->_key length])
      {
        realizedString = [(NSBundle *)self->_sourceBundle localizedStringForKey:self->_key value:&stru_1F4E1BE30 table:self->_localizationTable localization:[(NSLocale *)self->_localeOverride languageCode]];
      }

      else
      {
        realizedString = self->_key;
      }

      self->__realizedString = [(NSString *)realizedString copy];
    }

    objc_sync_exit(self);
  }

  return realizedString;
}

- (_GCFLocalizedString)initWithKey:(id)a3 sourceBundle:(id)a4 table:(id)a5 locale:(id)a6
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    self = 0;
    goto LABEL_16;
  }

  v9 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v9 key];
    v9 = v11;
    if (a4)
    {
      if (a5)
      {
        goto LABEL_5;
      }

LABEL_14:
      a5 = [v9 table];
      if (!a4)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }

    a4 = [v11 bundle];
    if (!a5)
    {
      goto LABEL_14;
    }
  }

LABEL_5:
  if (!a4)
  {
LABEL_6:
    v12 = [v9 UTF8String];
    v13 = dyld_image_path_containing_address();
    if (!v13 || (a4 = [MEMORY[0x1E696AAE8] gc_bundleForExecutableAtPath:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithCString:encoding:", v13, 4)}]) == 0)
    {
      if (qword_1EC72E4E8 != -1)
      {
        dispatch_once(&qword_1EC72E4E8, &__block_literal_global_3);
      }

      v14 = _MergedGlobals;
      if (os_log_type_enabled(_MergedGlobals, OS_LOG_TYPE_DEBUG))
      {
        v17 = 138412802;
        v18 = v9;
        v19 = 2048;
        v20 = v9;
        v21 = 2048;
        v22 = v12;
        _os_log_debug_impl(&dword_1D2C3B000, v14, OS_LOG_TYPE_DEBUG, "#WARNING Could not determine source bundle of string '%@' %p %p.", &v17, 0x20u);
      }

      a4 = 0;
    }
  }

LABEL_15:
  self->_key = [v9 copy];
  self->_sourceBundle = a4;
  self->_localizationTable = [a5 copy];
  self->_localeOverride = [a6 copy];
LABEL_16:
  v15 = *MEMORY[0x1E69E9840];
  return self;
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (qword_1EC72E4E8 != -1)
  {
    dispatch_once(&qword_1EC72E4E8, &__block_literal_global_3);
  }

  v4 = _MergedGlobals;
  if (os_log_type_enabled(_MergedGlobals, OS_LOG_TYPE_FAULT))
  {
    v6 = 138412546;
    v7 = a1;
    v8 = 2114;
    v9 = [a2 path];
    _os_log_fault_impl(&dword_1D2C3B000, v4, OS_LOG_TYPE_FAULT, "Failed to load source bundle for key '%@' at %{public}@.", &v6, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)initWithCoder:(void *)a3 .cold.2(void *a1, void *a2, void *a3)
{
  v6 = MEMORY[0x1E695DF30];
  v7 = *MEMORY[0x1E695D940];
  *a1 = @"allowsKeyedCoding";
  *a3 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a2, "allowsKeyedCoding")}];
  a1[1] = @"coder";
  v8 = [a2 description];
  if (!v8)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  a3[1] = v8;
  objc_exception_throw([v6 exceptionWithName:v7 reason:@"Decoded localized string is missing 'bundle'." userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", a3, a1, 2)}]);
}

- (void)initWithCoder:(void *)a3 .cold.3(void *a1, void *a2, void *a3)
{
  v6 = MEMORY[0x1E695DF30];
  v7 = *MEMORY[0x1E695D940];
  *a1 = @"allowsKeyedCoding";
  *a3 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a2, "allowsKeyedCoding")}];
  a1[1] = @"coder";
  v8 = [a2 description];
  if (!v8)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  a3[1] = v8;
  objc_exception_throw([v6 exceptionWithName:v7 reason:@"Decoded localized string is missing 'key'." userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", a3, a1, 2)}]);
}

@end