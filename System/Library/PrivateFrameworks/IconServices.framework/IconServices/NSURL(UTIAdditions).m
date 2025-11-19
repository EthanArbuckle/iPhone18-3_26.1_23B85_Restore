@interface NSURL(UTIAdditions)
+ (id)__is_coreTypesURL;
- (BOOL)__is__conformsToUTI:()UTIAdditions;
- (BOOL)__is__getResourceValue:()UTIAdditions forKey:error:;
- (BOOL)__is_hasFileExtension:()UTIAdditions;
- (CFDictionaryRef)__is_resourceValuesForKeys:()UTIAdditions error:;
- (id)__is_typeIdentifier;
- (id)__is_volumeURL;
- (uint64_t)__has_ResourceFork;
- (uint64_t)__is__isAliasFile;
- (uint64_t)__is__isDirectory;
- (uint64_t)__is__isPackage;
- (uint64_t)__is__isSymLink;
- (uint64_t)__is__isVolume;
- (uint64_t)__is_accessFlags;
- (uint64_t)__is_fileExists;
- (uint64_t)__is_isAppExtension;
- (uint64_t)__is_isApplication;
- (uint64_t)__is_isBootVolume;
- (uint64_t)__is_isBundleWithUnregisteredPersonality;
- (uint64_t)__is_isOnBootVolume;
- (uint64_t)__is_locked;
@end

@implementation NSURL(UTIAdditions)

- (BOOL)__is__getResourceValue:()UTIAdditions forKey:error:
{
  v38 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = +[ISDefaults sharedInstance];
  v10 = [v9 logMissingURLCacheProperties];

  if (!v10)
  {
    propertyValueTypeRefPtr = 0;
    *error = 0;
    goto LABEL_5;
  }

  propertyValueTypeRefPtr = 0;
  if (_CFURLCopyResourcePropertyForKeyFromCache())
  {
    *a3 = propertyValueTypeRefPtr;
LABEL_11:
    v12 = 1;
    goto LABEL_12;
  }

  v14 = +[ISURLResourcePropertySpecification sharedInstance];
  v15 = [v14 allowedMissingProperties];
  v16 = [v15 containsObject:v8];

  if (v16)
  {
    goto LABEL_11;
  }

  if ([(__CFURL *)a1 isFileReferenceURL])
  {
    v31 = 0;
    CFURLCopyResourcePropertyForKey(a1, *MEMORY[0x1E695DC40], &v31, 0);
    v19 = v31;
    if (!v31)
    {
      v19 = [(__CFURL *)a1 path];
    }

    v20 = _ISURLCacheLog();
    v21 = os_signpost_id_make_with_pointer(v20, a1);

    if (v21)
    {
      v22 = _ISURLCacheLog();
      v23 = os_signpost_enabled(v22);

      if (v23)
      {
        v24 = _ISURLCacheLog();
        v25 = v24;
        if (v21 != -1 && os_signpost_enabled(v24))
        {
          *error = 138412802;
          *&error[4] = a1;
          v34 = 2112;
          v35 = v19;
          v36 = 2112;
          v37 = v8;
          _os_signpost_emit_with_name_impl(&dword_1A77B8000, v25, OS_SIGNPOST_EVENT, v21, "cache miss", "URL %@ path %@ was missing expected cached values for key: %@", error, 0x20u);
        }
      }
    }
  }

  else
  {
    v26 = _ISURLCacheLog();
    v27 = os_signpost_id_make_with_pointer(v26, a1);

    if (!v27)
    {
      goto LABEL_28;
    }

    v28 = _ISURLCacheLog();
    v29 = os_signpost_enabled(v28);

    if (!v29)
    {
      goto LABEL_28;
    }

    v30 = _ISURLCacheLog();
    v19 = v30;
    if (v27 != -1 && os_signpost_enabled(v30))
    {
      *error = 138412546;
      *&error[4] = a1;
      v34 = 2112;
      v35 = v8;
      _os_signpost_emit_with_name_impl(&dword_1A77B8000, v19, OS_SIGNPOST_EVENT, v27, "cache miss", "URL %@ was missing expected cached values for key: %@", error, 0x16u);
    }
  }

LABEL_28:
  *error = 0;
LABEL_5:
  v11 = CFURLCopyResourcePropertyForKey(a1, v8, &propertyValueTypeRefPtr, error);
  v12 = v11 != 0;
  if (v11)
  {
    v13 = propertyValueTypeRefPtr;
    a5 = a3;
LABEL_9:
    *a5 = v13;
    goto LABEL_12;
  }

  if (a5)
  {
    v13 = *error;
    if (*error)
    {
      goto LABEL_9;
    }
  }

LABEL_12:

  v17 = *MEMORY[0x1E69E9840];
  return v12;
}

- (CFDictionaryRef)__is_resourceValuesForKeys:()UTIAdditions error:
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a3;
  error = 0;
  v7 = +[ISDefaults sharedInstance];
  v8 = [v7 logMissingURLCacheProperties];

  if (v8)
  {
    v9 = _CFURLCopyResourcePropertiesForKeysFromCache();
    v10 = [MEMORY[0x1E695DFA8] setWithArray:v6];
    if (v9)
    {
      v11 = MEMORY[0x1E695DFD8];
      v12 = [v9 allKeys];
      v13 = [v11 setWithArray:v12];

      if (([v10 isEqual:v13]& 1) != 0)
      {
        goto LABEL_23;
      }

      [v10 minusSet:v13];
    }

    else
    {
      v13 = 0;
    }

    v15 = +[ISURLResourcePropertySpecification sharedInstance];
    v16 = [v15 allowedMissingProperties];
    [v10 minusSet:v16];

    if ([v10 count])
    {
      if ([a1 isFileReferenceURL])
      {
        v32 = 0;
        [a1 __is__getResourceValue:&v32 forKey:*MEMORY[0x1E695DC40] error:0];
        v17 = v32;
        if (!v17)
        {
          v17 = [a1 path];
        }

        v18 = _ISURLCacheLog();
        v19 = os_signpost_id_make_with_pointer(v18, a1);

        if (v19)
        {
          v20 = _ISURLCacheLog();
          v21 = os_signpost_enabled(v20);

          if (v21)
          {
            v22 = _ISURLCacheLog();
            v23 = v22;
            if (v19 != -1 && os_signpost_enabled(v22))
            {
              *buf = 138412802;
              v35 = a1;
              v36 = 2112;
              v37 = v17;
              v38 = 2112;
              v39 = v10;
              _os_signpost_emit_with_name_impl(&dword_1A77B8000, v23, OS_SIGNPOST_EVENT, v19, "cache miss", "URL %@ path %@ was missing expected cached values for keys: %@", buf, 0x20u);
            }
          }
        }
      }

      else
      {
        v24 = _ISURLCacheLog();
        v25 = os_signpost_id_make_with_pointer(v24, a1);

        if (!v25)
        {
          goto LABEL_23;
        }

        v26 = _ISURLCacheLog();
        v27 = os_signpost_enabled(v26);

        if (!v27)
        {
          goto LABEL_23;
        }

        v28 = _ISURLCacheLog();
        v17 = v28;
        if (v25 != -1 && os_signpost_enabled(v28))
        {
          *buf = 138412546;
          v35 = a1;
          v36 = 2112;
          v37 = v10;
          _os_signpost_emit_with_name_impl(&dword_1A77B8000, v17, OS_SIGNPOST_EVENT, v25, "cache miss", "URL %@ was missing expected cached values for keys: %@", buf, 0x16u);
        }
      }
    }

LABEL_23:
    v14 = CFURLCopyResourcePropertiesForKeys(a1, v6, &error);

    goto LABEL_24;
  }

  v14 = CFURLCopyResourcePropertiesForKeys(a1, v6, &error);
LABEL_24:
  if (a4 && error)
  {
    *a4 = error;
  }

  else if (error)
  {
    v29 = _ISDefaultLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      [(NSURL(UTIAdditions) *)v6 __is_resourceValuesForKeys:v29 error:?];
    }

    CFRelease(error);
  }

  v30 = *MEMORY[0x1E69E9840];

  return v14;
}

- (BOOL)__is__conformsToUTI:()UTIAdditions
{
  v4 = a3;
  inUTI = 0;
  [a1 __is__getResourceValue:&inUTI forKey:*MEMORY[0x1E695DC68] error:0];
  if (inUTI)
  {
    v5 = UTTypeConformsTo(inUTI, v4) != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (uint64_t)__is__isDirectory
{
  v5 = 0;
  v1 = [a1 __is__getResourceValue:&v5 forKey:*MEMORY[0x1E695DB78] error:0];
  v2 = v5;
  if (!v1 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v2 = 0;
  }

  v3 = [v2 BOOLValue];

  return v3;
}

- (uint64_t)__is__isPackage
{
  v5 = 0;
  v1 = [a1 __is__getResourceValue:&v5 forKey:*MEMORY[0x1E695DBA0] error:0];
  v2 = v5;
  if (!v1 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v2 = 0;
  }

  v3 = [v2 BOOLValue];

  return v3;
}

- (uint64_t)__is__isVolume
{
  v5 = 0;
  v1 = [a1 __is__getResourceValue:&v5 forKey:*MEMORY[0x1E695DBE8] error:0];
  v2 = v5;
  if (!v1 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v2 = 0;
  }

  v3 = [v2 BOOLValue];

  return v3;
}

- (uint64_t)__is__isAliasFile
{
  v6 = 0;
  v2 = [a1 __is__getResourceValue:&v6 forKey:*MEMORY[0x1E695DB68] error:0];
  v3 = v6;
  if (!v2 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v3 = 0;
  }

  if ([v3 BOOLValue])
  {
    v4 = [a1 __is__isSymLink] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)__is__isSymLink
{
  v5 = 0;
  v1 = [a1 __is__getResourceValue:&v5 forKey:*MEMORY[0x1E695DBC8] error:0];
  v2 = v5;
  if (!v1 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v2 = 0;
  }

  v3 = [v2 BOOLValue];

  return v3;
}

- (id)__is_volumeURL
{
  v4 = 0;
  v1 = [a1 __is__getResourceValue:&v4 forKey:*MEMORY[0x1E695DEB0] error:0];
  v2 = v4;
  if (!v1 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v2 = 0;
  }

  return v2;
}

- (uint64_t)__has_ResourceFork
{
  v5 = 0;
  v1 = [a1 __is__getResourceValue:&v5 forKey:*MEMORY[0x1E695E2B8] error:0];
  v2 = v5;
  if (!v1 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v2 = 0;
  }

  v3 = [v2 BOOLValue];

  return v3;
}

- (uint64_t)__is_isBootVolume
{
  v5 = 0;
  v1 = [a1 __is__getResourceValue:&v5 forKey:*MEMORY[0x1E695DDC0] error:0];
  v2 = v5;
  if (!v1 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v2 = 0;
  }

  v3 = [v2 BOOLValue];

  return v3;
}

- (uint64_t)__is_isOnBootVolume
{
  v1 = [a1 __is_volumeURL];
  v2 = [v1 __is_isBootVolume];

  return v2;
}

- (BOOL)__is_hasFileExtension:()UTIAdditions
{
  v4 = a3;
  v5 = [a1 pathExtension];
  v6 = [v5 caseInsensitiveCompare:v4];

  return v6 == 0;
}

- (uint64_t)__is_isApplication
{
  v5 = 0;
  v1 = [a1 __is__getResourceValue:&v5 forKey:*MEMORY[0x1E695DB70] error:0];
  v2 = v5;
  if (!v1 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v2 = 0;
  }

  v3 = [v2 BOOLValue];

  return v3;
}

- (uint64_t)__is_isAppExtension
{
  v2 = [a1 pathExtension];
  if ([v2 isEqualToString:@"appex"])
  {
    v3 = [a1 __is__isDirectory];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)__is_isBundleWithUnregisteredPersonality
{
  v2 = [MEMORY[0x1E695DFF8] _is_unregisteredPersonlityFileExtensions];
  v3 = [a1 pathExtension];
  v4 = [v3 lowercaseString];
  v5 = [v2 objectForKey:v4];
  if (v5)
  {
    v6 = v5;
    v7 = [a1 __is__isDirectory];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (uint64_t)__is_fileExists
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [a1 path];
  v4 = [v2 fileExistsAtPath:v3];

  return v4;
}

- (uint64_t)__is_accessFlags
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E695DBF0];
  v11[0] = *MEMORY[0x1E695DBB0];
  v2 = v11[0];
  v11[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v5 = [a1 __is_resourceValuesForKeys:v4 error:0];

  LODWORD(v2) = [v5 _IF_BOOLForKey:v2];
  v6 = [v5 _IF_BOOLForKey:v3];
  if (v2)
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  if (v6)
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8 | v7;
}

- (uint64_t)__is_locked
{
  v8[2] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E695DBE0];
  v8[0] = *MEMORY[0x1E695DBD0];
  v2 = v8[0];
  v8[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v5 = [a1 __is_resourceValuesForKeys:v4 error:0];

  LODWORD(a1) = [v5 _IF_BOOLForKey:v2];
  LODWORD(v2) = [v5 _IF_BOOLForKey:v3];

  v6 = *MEMORY[0x1E69E9840];
  return (a1 | v2) & 1;
}

+ (id)__is_coreTypesURL
{
  if (__is_coreTypesURL_onceToken != -1)
  {
    +[NSURL(UTIAdditions) __is_coreTypesURL];
  }

  v1 = __is_coreTypesURL_coreTypesURL;

  return v1;
}

- (id)__is_typeIdentifier
{
  v5 = 0;
  v1 = [a1 __is__getResourceValue:&v5 forKey:*MEMORY[0x1E695DC68] error:0];
  v2 = v5;
  if (!v1 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v3 = *MEMORY[0x1E6963798];

    v2 = v3;
  }

  return v2;
}

- (void)__is_resourceValuesForKeys:()UTIAdditions error:.cold.1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v5 = 138412546;
  v6 = a1;
  v7 = 2112;
  v8 = v3;
  _os_log_debug_impl(&dword_1A77B8000, log, OS_LOG_TYPE_DEBUG, "Error getting resource properties: %@ error: %@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end