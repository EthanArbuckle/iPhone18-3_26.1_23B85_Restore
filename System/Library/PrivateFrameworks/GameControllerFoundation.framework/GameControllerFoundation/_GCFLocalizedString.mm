@interface _GCFLocalizedString
- (_GCFLocalizedString)initWithCoder:(id)coder;
- (_GCFLocalizedString)initWithKey:(id)key sourceBundle:(id)bundle table:(id)table locale:(id)locale;
- (id)_realizedString;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _GCFLocalizedString

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _GCFLocalizedString;
  [(_GCFLocalizedString *)&v3 dealloc];
}

- (_GCFLocalizedString)initWithCoder:(id)coder
{
  v16[2] = *MEMORY[0x1E69E9840];
  if ([coder allowsKeyedCoding])
  {
    decodeObject = [coder decodeObjectOfClass:objc_opt_class() forKey:@"key"];
    decodeObject2 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"bundle"];
    decodeObject3 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"table"];
    decodeObject4 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"locale"];
  }

  else
  {
    decodeObject = [coder decodeObject];
    decodeObject2 = [coder decodeObject];
    decodeObject3 = [coder decodeObject];
    decodeObject4 = [coder decodeObject];
  }

  v9 = decodeObject4;
  if (!decodeObject)
  {
    [(_GCFLocalizedString *)&v15 initWithCoder:coder, v16];
  }

  if (!decodeObject2)
  {
    [(_GCFLocalizedString *)&v13 initWithCoder:coder, &v14];
  }

  v10 = [MEMORY[0x1E696AAE8] bundleWithURL:decodeObject2];
  if (!v10)
  {
    [(_GCFLocalizedString *)decodeObject initWithCoder:decodeObject2];
  }

  result = [(_GCFLocalizedString *)self initWithKey:decodeObject sourceBundle:v10 table:decodeObject3 locale:v9];
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  allowsKeyedCoding = [coder allowsKeyedCoding];
  key = self->_key;
  if (allowsKeyedCoding)
  {
    [coder encodeObject:key forKey:@"key"];
    [coder encodeObject:-[NSBundle bundleURL](self->_sourceBundle forKey:{"bundleURL"), @"bundle"}];
    [coder encodeObject:self->_localizationTable forKey:@"table"];
    localeOverride = self->_localeOverride;

    [coder encodeObject:localeOverride forKey:@"locale"];
  }

  else
  {
    [coder encodeObject:key];
    [coder encodeObject:{-[NSBundle bundleURL](self->_sourceBundle, "bundleURL")}];
    [coder encodeObject:self->_localizationTable];
    v8 = self->_localeOverride;

    [coder encodeObject:v8];
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

- (_GCFLocalizedString)initWithKey:(id)key sourceBundle:(id)bundle table:(id)table locale:(id)locale
{
  v23 = *MEMORY[0x1E69E9840];
  if (!key)
  {
    self = 0;
    goto LABEL_16;
  }

  keyCopy = key;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [keyCopy key];
    keyCopy = v11;
    if (bundle)
    {
      if (table)
      {
        goto LABEL_5;
      }

LABEL_14:
      table = [keyCopy table];
      if (!bundle)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }

    bundle = [v11 bundle];
    if (!table)
    {
      goto LABEL_14;
    }
  }

LABEL_5:
  if (!bundle)
  {
LABEL_6:
    uTF8String = [keyCopy UTF8String];
    v13 = dyld_image_path_containing_address();
    if (!v13 || (bundle = [MEMORY[0x1E696AAE8] gc_bundleForExecutableAtPath:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithCString:encoding:", v13, 4)}]) == 0)
    {
      if (qword_1EC72E4E8 != -1)
      {
        dispatch_once(&qword_1EC72E4E8, &__block_literal_global_3);
      }

      v14 = _MergedGlobals;
      if (os_log_type_enabled(_MergedGlobals, OS_LOG_TYPE_DEBUG))
      {
        v17 = 138412802;
        v18 = keyCopy;
        v19 = 2048;
        v20 = keyCopy;
        v21 = 2048;
        v22 = uTF8String;
        _os_log_debug_impl(&dword_1D2C3B000, v14, OS_LOG_TYPE_DEBUG, "#WARNING Could not determine source bundle of string '%@' %p %p.", &v17, 0x20u);
      }

      bundle = 0;
    }
  }

LABEL_15:
  self->_key = [keyCopy copy];
  self->_sourceBundle = bundle;
  self->_localizationTable = [table copy];
  self->_localeOverride = [locale copy];
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