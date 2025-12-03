@interface CAMPreferencesUtilities
+ (BOOL)BOOLInCameraDomainForKey:(id)key defaultValue:(BOOL)value;
+ (double)doubleForKey:(id)key applicationID:(id)d defaultValue:(double)value;
+ (double)doubleForKey:(id)key applicationID:(id)d keyIsValidAndExists:(BOOL *)exists;
+ (id)colorForKey:(id)key applicationID:(id)d;
+ (id)doubleArrayForKey:(id)key applicationID:(id)d;
+ (id)numericDictionaryForKey:(id)key defaults:(id)defaults;
+ (void)setBool:(BOOL)bool inCameraDomainForKey:(id)key;
+ (void)setDictionary:(id)dictionary forKey:(id)key defaults:(id)defaults;
@end

@implementation CAMPreferencesUtilities

+ (double)doubleForKey:(id)key applicationID:(id)d keyIsValidAndExists:(BOOL *)exists
{
  v6 = CFPreferencesCopyAppValue(key, d);
  v7 = 0.0;
  if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v6 doubleValue];
    v7 = v8;
    v9 = 1;
    if (!exists)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v9 = 0;
  if (exists)
  {
LABEL_6:
    *exists = v9;
  }

LABEL_7:

  return v7;
}

+ (double)doubleForKey:(id)key applicationID:(id)d defaultValue:(double)value
{
  v7 = 0;
  [self doubleForKey:key applicationID:d keyIsValidAndExists:&v7];
  if (!v7)
  {
    return value;
  }

  return result;
}

+ (id)doubleArrayForKey:(id)key applicationID:(id)d
{
  v4 = CFPreferencesCopyAppValue(key, d);
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    v6 = [v5 count];
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v6];
    if (v6)
    {
      v8 = 0;
      while (1)
      {
        v9 = [v5 objectAtIndexedSubscript:v8];
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          break;
        }

        v10 = MEMORY[0x1E696AD98];
        [v9 doubleValue];
        v11 = [v10 numberWithDouble:?];
        [v7 addObject:v11];

        if (v6 == ++v8)
        {
          goto LABEL_10;
        }
      }

      v7 = 0;
    }

LABEL_10:
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)colorForKey:(id)key applicationID:(id)d
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = CFPreferencesCopyAppValue(key, d);
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    v6 = [v5 count];
    if ((v6 - 3) > 1)
    {
LABEL_13:
      v13 = 0;
    }

    else
    {
      v7 = v6;
      v8 = 0;
      v9 = 0;
      v16 = 1.0;
      do
      {
        v10 = [v5 objectAtIndexedSubscript:v8];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          goto LABEL_13;
        }

        [v10 doubleValue];
        v15[v8] = v11;
        v9 |= v11 > 1.0;

        ++v8;
      }

      while (v7 != v8);
      if (v9)
      {
        v12 = v15;
        do
        {
          *v12 = *v12 / 255.0;
          ++v12;
          --v7;
        }

        while (v7);
      }

      v13 = [MEMORY[0x1E69DC888] colorWithRed:v15[0] green:v15[1] blue:v15[2] alpha:v16];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (BOOL)BOOLInCameraDomainForKey:(id)key defaultValue:(BOOL)value
{
  v6 = 0;
  result = [self BOOLInCameraDomainForKey:key keyIsValidAndExists:&v6];
  if (!v6)
  {
    return value;
  }

  return result;
}

+ (void)setBool:(BOOL)bool inCameraDomainForKey:(id)key
{
  boolCopy = bool;
  v5 = MEMORY[0x1E696AD98];
  keyCopy = key;
  CFPreferencesSetAppValue(keyCopy, [v5 numberWithBool:boolCopy], @"com.apple.camera");

  CFPreferencesAppSynchronize(@"com.apple.camera");
}

+ (id)numericDictionaryForKey:(id)key defaults:(id)defaults
{
  keyCopy = key;
  v6 = [defaults objectForKey:keyCopy];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v14 = 0;
    v10 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v9 fromData:v6 error:&v14];
    v11 = v14;
    if (v11)
    {
      v12 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        +[CAMPreferencesUtilities numericDictionaryForKey:defaults:];
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (void)setDictionary:(id)dictionary forKey:(id)key defaults:(id)defaults
{
  keyCopy = key;
  defaultsCopy = defaults;
  v12 = 0;
  v9 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:dictionary requiringSecureCoding:1 error:&v12];
  v10 = v12;
  if (v10)
  {
    v11 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      +[CAMPreferencesUtilities setDictionary:forKey:defaults:];
    }
  }

  else if (v9)
  {
    [defaultsCopy setObject:v9 forKey:keyCopy];
  }
}

@end