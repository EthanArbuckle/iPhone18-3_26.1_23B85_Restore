@interface CBPreferencesHandler
+ (BOOL)migrateNestedPreferenceForAllUsersWithKey1:(id)key1 key2:(id)key2 toKey:(id)key;
+ (BOOL)storeNestedPreferenceForAllUsersWithKey1:(id)key1 key2:(id)key2 key3:(id)key3 andValue:(id)value;
+ (BOOL)storePreferenceForAllUsersForKey:(id)key andValue:(id)value;
+ (BOOL)storePreferenceForAllUsersMultiple:(id)multiple;
+ (BOOL)storePreferenceForUser:(id)user withKey:(id)key andValue:(id)value;
+ (__CFDictionary)copyPreferenceDictionaryForUser:(id)user;
+ (id)copyNestedPreferenceForKey1:(id)key1 key2:(id)key2;
+ (id)copyNestedPreferenceForKey1:(id)key1 key2:(id)key2 key3:(id)key3;
+ (id)copyPreferenceForAllUsersForKey:(id)key;
+ (id)copyPreferenceForAllUsersMultiple:(id)multiple;
+ (id)copyPreferenceForUser:(id)user forKey:(id)key;
+ (void)consistencyCheckForUser:(id)user;
@end

@implementation CBPreferencesHandler

+ (void)consistencyCheckForUser:(id)user
{
  v22 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v19 = a2;
  userCopy = user;
  v9 = MEMORY[0x1E695E8B8];
  v10 = MEMORY[0x1E695E898];
  CFPreferencesSynchronize(@"com.apple.CoreBrightness", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  v17 = CFPreferencesCopyValue(userCopy, @"com.apple.CoreBrightness", *v9, *v10);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v17 objectForKey:@"DisplayServicesExternalAmbientLightCompensation"])
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v16 = inited;
    v15 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(inited, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_64_8_66(v21, @"DisplayServicesExternalAmbientLightCompensation", userCopy);
      _os_log_impl(&dword_1DE8E5000, v16, v15, "detected deprecated key %@ for %{public}@ - removing", v21, 0x16u);
    }

    v14 = [v17 mutableCopy];
    if (v14)
    {
      [v14 removeObjectForKey:@"DisplayServicesExternalAmbientLightCompensation"];
      v6 = MEMORY[0x1E695E8B8];
      v7 = MEMORY[0x1E695E898];
      CFPreferencesSetValue(userCopy, v14, @"com.apple.CoreBrightness", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
      if (!CFPreferencesSynchronize(@"com.apple.CoreBrightness", *v6, *v7))
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v5 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v5 = init_default_corebrightness_log();
        }

        v13 = v5;
        v12 = 16;
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          v3 = v13;
          v4 = v12;
          __os_log_helper_16_0_0(v11);
          _os_log_error_impl(&dword_1DE8E5000, v3, v4, "ERROR: failed to update the preferences after sanity check", v11, 2u);
        }
      }
    }

    MEMORY[0x1E69E5920](v14);
  }

  MEMORY[0x1E69E5920](v17);
  *MEMORY[0x1E69E9840];
}

+ (BOOL)storePreferenceForUser:(id)user withKey:(id)key andValue:(id)value
{
  v10 = 1;
  theDict = [CBPreferencesHandler copyPreferenceDictionaryForUser:user];
  if (!theDict)
  {
    theDict = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
LABEL_5:
    if (theDict)
    {
      CFDictionarySetValue(theDict, key, value);
      v6 = MEMORY[0x1E695E8B8];
      v7 = MEMORY[0x1E695E898];
      CFPreferencesSetValue(user, theDict, @"com.apple.CoreBrightness", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
      CFPreferencesSynchronize(@"com.apple.CoreBrightness", *v6, *v7);
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_8;
  }

  cf1 = CFDictionaryGetValue(theDict, key);
  if (!cf1 || !CFEqual(cf1, value))
  {
    goto LABEL_5;
  }

LABEL_8:
  if (theDict)
  {
    CFRelease(theDict);
  }

  return v10;
}

+ (BOOL)storeNestedPreferenceForAllUsersWithKey1:(id)key1 key2:(id)key2 key3:(id)key3 andValue:(id)value
{
  v20 = 1;
  Mutable = 0;
  cf = [CBPreferencesHandler copyPreferenceForAllUsersForKey:key1];
  if (cf && (TypeID = CFDictionaryGetTypeID(), TypeID == CFGetTypeID(cf)))
  {
    allocator = *MEMORY[0x1E695E480];
    Count = CFDictionaryGetCount(cf);
    MutableCopy = CFDictionaryCreateMutableCopy(allocator, Count, cf);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  if (MutableCopy)
  {
    Value = CFDictionaryGetValue(MutableCopy, key2);
    if (Value && (v12 = CFDictionaryGetTypeID(), v12 == CFGetTypeID(Value)))
    {
      v11 = *MEMORY[0x1E695E480];
      v7 = CFDictionaryGetCount(Value);
      Mutable = CFDictionaryCreateMutableCopy(v11, v7, Value);
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    if (Mutable)
    {
      cf1 = CFDictionaryGetValue(Mutable, key3);
      if (cf1 && value && CFEqual(cf1, value))
      {
        v20 = 0;
      }

      else
      {
        if (value)
        {
          CFDictionarySetValue(Mutable, key3, value);
        }

        else if (cf1)
        {
          CFDictionaryRemoveValue(Mutable, key3);
        }

        CFDictionarySetValue(MutableCopy, key2, Mutable);
        v9 = MEMORY[0x1E695E8B8];
        v10 = MEMORY[0x1E695E898];
        CFPreferencesSetValue(key1, MutableCopy, @"com.apple.CoreBrightness", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
        CFPreferencesSynchronize(@"com.apple.CoreBrightness", *v9, *v10);
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v20;
}

+ (BOOL)migrateNestedPreferenceForAllUsersWithKey1:(id)key1 key2:(id)key2 toKey:(id)key
{
  v18 = 1;
  MutableCopy = 0;
  v16 = 0;
  cf = [CBPreferencesHandler copyPreferenceForAllUsersForKey:key1];
  if (cf)
  {
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(cf))
    {
      allocator = *MEMORY[0x1E695E480];
      Count = CFDictionaryGetCount(cf);
      MutableCopy = CFDictionaryCreateMutableCopy(allocator, Count, cf);
    }
  }

  if (MutableCopy)
  {
    Value = CFDictionaryGetValue(MutableCopy, key2);
    if (Value)
    {
      v11 = CFDictionaryGetTypeID();
      if (v11 == CFGetTypeID(Value))
      {
        v10 = *MEMORY[0x1E695E480];
        v6 = CFDictionaryGetCount(Value);
        v16 = CFDictionaryCreateMutableCopy(v10, v6, Value);
      }
    }

    if (v16)
    {
      CFDictionaryRemoveValue(MutableCopy, key2);
      CFDictionarySetValue(MutableCopy, key, v16);
      v8 = MEMORY[0x1E695E8B8];
      v9 = MEMORY[0x1E695E898];
      CFPreferencesSetValue(key1, MutableCopy, @"com.apple.CoreBrightness", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
      CFPreferencesSynchronize(@"com.apple.CoreBrightness", *v8, *v9);
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v18;
}

+ (BOOL)storePreferenceForAllUsersForKey:(id)key andValue:(id)value
{
  if (!key || !value)
  {
    return 0;
  }

  v5 = MEMORY[0x1E695E8B8];
  v6 = MEMORY[0x1E695E898];
  CFPreferencesSetValue(key, value, @"com.apple.CoreBrightness", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  return CFPreferencesSynchronize(@"com.apple.CoreBrightness", *v5, *v6) != 0;
}

+ (id)copyPreferenceForUser:(id)user forKey:(id)key
{
  theDict = [CBPreferencesHandler copyPreferenceDictionaryForUser:user];
  if (!theDict)
  {
    return 0;
  }

  cf = CFDictionaryGetValue(theDict, key);
  if (cf)
  {
    CFRetain(cf);
  }

  CFRelease(theDict);
  return cf;
}

+ (id)copyNestedPreferenceForKey1:(id)key1 key2:(id)key2
{
  Value = 0;
  cf = [CBPreferencesHandler copyPreferenceForAllUsersForKey:key1];
  if (cf)
  {
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(cf))
    {
      Value = CFDictionaryGetValue(cf, key2);
      if (Value)
      {
        CFRetain(Value);
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return Value;
}

+ (id)copyNestedPreferenceForKey1:(id)key1 key2:(id)key2 key3:(id)key3
{
  v10 = 0;
  cf = [CBPreferencesHandler copyPreferenceForAllUsersForKey:key1];
  if (cf)
  {
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(cf))
    {
      Value = CFDictionaryGetValue(cf, key2);
      if (Value)
      {
        v6 = CFDictionaryGetTypeID();
        if (v6 == CFGetTypeID(Value))
        {
          v10 = CFDictionaryGetValue(Value, key3);
          if (v10)
          {
            CFRetain(v10);
          }
        }
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

+ (id)copyPreferenceForAllUsersForKey:(id)key
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = 0;
  if (CFPreferencesSynchronize(@"com.apple.CoreBrightness", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]))
  {
    v5 = CFPreferencesCopyValue(key, @"com.apple.CoreBrightness", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_66(v7, key);
      _os_log_error_impl(&dword_1DE8E5000, inited, OS_LOG_TYPE_ERROR, "failed to synchronise the preferences (%{public}@)", v7, 0xCu);
    }
  }

  *MEMORY[0x1E69E9840];
  return v5;
}

+ (id)copyPreferenceForAllUsersMultiple:(id)multiple
{
  selfCopy = self;
  v11 = a2;
  multipleCopy = multiple;
  if (CFPreferencesSynchronize(@"com.apple.CoreBrightness", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]))
  {
    return CFPreferencesCopyMultiple(multipleCopy, @"com.apple.CoreBrightness", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  }

  if (_COREBRIGHTNESS_LOG_DEFAULT)
  {
    inited = _COREBRIGHTNESS_LOG_DEFAULT;
  }

  else
  {
    inited = init_default_corebrightness_log();
  }

  oslog = inited;
  type = OS_LOG_TYPE_ERROR;
  if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
  {
    log = oslog;
    v5 = type;
    __os_log_helper_16_0_0(v7);
    _os_log_error_impl(&dword_1DE8E5000, log, v5, "failed to synchronise the preferences", v7, 2u);
  }

  return 0;
}

+ (BOOL)storePreferenceForAllUsersMultiple:(id)multiple
{
  if (!multiple)
  {
    return 0;
  }

  CFPreferencesSetMultiple(multiple, 0, @"com.apple.CoreBrightness", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  return 1;
}

+ (__CFDictionary)copyPreferenceDictionaryForUser:(id)user
{
  MutableCopy = 0;
  v5 = MEMORY[0x1E695E8B8];
  v6 = MEMORY[0x1E695E898];
  CFPreferencesSynchronize(@"com.apple.CoreBrightness", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  cf = CFPreferencesCopyValue(user, @"com.apple.CoreBrightness", *v5, *v6);
  if (cf)
  {
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(cf))
    {
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, cf);
    }

    CFRelease(cf);
  }

  return MutableCopy;
}

@end