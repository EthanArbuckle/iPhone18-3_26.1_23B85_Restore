@interface CAMPreferencesUtilities
+ (BOOL)BOOLInCameraDomainForKey:(id)a3 defaultValue:(BOOL)a4;
+ (double)doubleForKey:(id)a3 applicationID:(id)a4 defaultValue:(double)a5;
+ (double)doubleForKey:(id)a3 applicationID:(id)a4 keyIsValidAndExists:(BOOL *)a5;
+ (id)colorForKey:(id)a3 applicationID:(id)a4;
+ (id)doubleArrayForKey:(id)a3 applicationID:(id)a4;
+ (id)numericDictionaryForKey:(id)a3 defaults:(id)a4;
+ (void)setBool:(BOOL)a3 inCameraDomainForKey:(id)a4;
+ (void)setDictionary:(id)a3 forKey:(id)a4 defaults:(id)a5;
@end

@implementation CAMPreferencesUtilities

+ (double)doubleForKey:(id)a3 applicationID:(id)a4 keyIsValidAndExists:(BOOL *)a5
{
  v6 = CFPreferencesCopyAppValue(a3, a4);
  v7 = 0.0;
  if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v6 doubleValue];
    v7 = v8;
    v9 = 1;
    if (!a5)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v9 = 0;
  if (a5)
  {
LABEL_6:
    *a5 = v9;
  }

LABEL_7:

  return v7;
}

+ (double)doubleForKey:(id)a3 applicationID:(id)a4 defaultValue:(double)a5
{
  v7 = 0;
  [a1 doubleForKey:a3 applicationID:a4 keyIsValidAndExists:&v7];
  if (!v7)
  {
    return a5;
  }

  return result;
}

+ (id)doubleArrayForKey:(id)a3 applicationID:(id)a4
{
  v4 = CFPreferencesCopyAppValue(a3, a4);
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

+ (id)colorForKey:(id)a3 applicationID:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = CFPreferencesCopyAppValue(a3, a4);
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

+ (BOOL)BOOLInCameraDomainForKey:(id)a3 defaultValue:(BOOL)a4
{
  v6 = 0;
  result = [a1 BOOLInCameraDomainForKey:a3 keyIsValidAndExists:&v6];
  if (!v6)
  {
    return a4;
  }

  return result;
}

+ (void)setBool:(BOOL)a3 inCameraDomainForKey:(id)a4
{
  v4 = a3;
  v5 = MEMORY[0x1E696AD98];
  v6 = a4;
  CFPreferencesSetAppValue(v6, [v5 numberWithBool:v4], @"com.apple.camera");

  CFPreferencesAppSynchronize(@"com.apple.camera");
}

+ (id)numericDictionaryForKey:(id)a3 defaults:(id)a4
{
  v5 = a3;
  v6 = [a4 objectForKey:v5];
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

+ (void)setDictionary:(id)a3 forKey:(id)a4 defaults:(id)a5
{
  v7 = a4;
  v8 = a5;
  v12 = 0;
  v9 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v12];
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
    [v8 setObject:v9 forKey:v7];
  }
}

@end