@interface MCMPlistReadOnly
- (BOOL)_initPropertiesWithPlist:(id)plist conformingToProtocol:(id)protocol error:(id *)error;
- (BOOL)_isNonatomicReadonlyBoolPropertyTypeWithAttributes:(const char *)attributes;
- (BOOL)keepArtifacts;
- (BOOL)loadWithError:(id *)error;
- (BOOL)override_initNonBoolPropertiesWithPlist:(id)plist error:(id *)error;
- (MCMFileManagerReadsData)fileManager;
- (MCMPlistReadOnly)initWithPreprocessedPlist:(id)plist conformingToProtocol:(id)protocol;
- (MCMPlistReadOnly)initWithRawPlist:(id)plist preprocessedPlist:(id)preprocessedPlist pathOrName:(id)name protocol:(id)protocol defaultPlistDirectoryURL:(id)l;
- (NSCountedSet)numIncludes;
- (NSDictionary)preprocessedPlist;
- (NSDictionary)rawPlist;
- (NSString)pathOrName;
- (NSURL)defaultPlistDirectoryURL;
- (NSURL)sourceFileURL;
- (Protocol)protocol;
- (id)_plistByPreprocessingPlist:(id)plist conformingToProtocol:(id)protocol error:(id *)error;
- (id)_plistByResolvingFeatureFlagsInMutablePlist:(id)plist error:(id *)error;
- (id)_plistByResolvingIncludeInMutablePlist:(id)plist conformingToProtocol:(id)protocol error:(id *)error;
- (id)_urlByResolvingConfigName:(id)name defaultPlistDirectoryURL:(id)l error:(id *)error;
- (id)descriptionOfBoolPropertiesWithIndentString:(id)string;
- (id)featureFlagProvider;
- (id)initFromPlist:(id)plist defaultPlistDirectoryURL:(id)l conformingToProtocol:(id)protocol;
- (id)initFromPlistAtPathOrName:(id)name defaultPlistDirectoryURL:(id)l conformingToProtocol:(id)protocol;
- (void)_forEachBoolPropertyUsingObjCMagicInProtocol:(id)protocol runBlock:(id)block;
- (void)_initBoolPropertiesUsingObjCMagicWithPlist:(id)plist conformingToProtocol:(id)protocol;
- (void)_initBoolPropertyWithName:(id)name entry:(id)entry;
- (void)setFeatureFlagProvider:(id)provider;
- (void)setFileManager:(id)manager;
- (void)setKeepArtifacts:(BOOL)artifacts;
- (void)setNumIncludes:(id)includes;
@end

@implementation MCMPlistReadOnly

- (void)setKeepArtifacts:(BOOL)artifacts
{
  v4 = *MEMORY[0x1E69E9840];
  self->_keepArtifacts = artifacts;
  v3 = *MEMORY[0x1E69E9840];
}

- (BOOL)keepArtifacts
{
  result = self->_keepArtifacts;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setFeatureFlagProvider:(id)provider
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  objc_setProperty_nonatomic_copy(self, a2, provider, 80);
}

- (id)featureFlagProvider
{
  result = self->_featureFlagProvider;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setFileManager:(id)manager
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_fileManager = &self->_fileManager;

  objc_storeStrong(p_fileManager, manager);
}

- (MCMFileManagerReadsData)fileManager
{
  result = self->_fileManager;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSURL)sourceFileURL
{
  result = self->_sourceFileURL;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSDictionary)preprocessedPlist
{
  result = self->_preprocessedPlist;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSDictionary)rawPlist
{
  result = self->_rawPlist;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSString)pathOrName
{
  result = self->_pathOrName;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (Protocol)protocol
{
  result = self->_protocol;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSURL)defaultPlistDirectoryURL
{
  result = self->_defaultPlistDirectoryURL;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setNumIncludes:(id)includes
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_numIncludes = &self->_numIncludes;

  objc_storeStrong(p_numIncludes, includes);
}

- (NSCountedSet)numIncludes
{
  result = self->_numIncludes;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)_isNonatomicReadonlyBoolPropertyTypeWithAttributes:(const char *)attributes
{
  v8 = *MEMORY[0x1E69E9840];
  if (_isNonatomicReadonlyBoolPropertyTypeWithAttributes__onceToken != -1)
  {
    dispatch_once(&_isNonatomicReadonlyBoolPropertyTypeWithAttributes__onceToken, &__block_literal_global_5072);
  }

  if (!strncmp(_isNonatomicReadonlyBoolPropertyTypeWithAttributes__BOOLType, attributes, _isNonatomicReadonlyBoolPropertyTypeWithAttributes__BOOLTypeLen))
  {
    v5 = strnlen(attributes, 0x64uLL);
    v4 = strnstr(attributes, ",N", v5);
    if (v4)
    {
      LOBYTE(v4) = strnstr(attributes, ",R", v5) != 0;
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v4;
}

size_t __71__MCMPlistReadOnly__isNonatomicReadonlyBoolPropertyTypeWithAttributes___block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  snprintf(_isNonatomicReadonlyBoolPropertyTypeWithAttributes__BOOLType, 0x64uLL, "T%s", "B");
  result = strnlen(_isNonatomicReadonlyBoolPropertyTypeWithAttributes__BOOLType, 0x64uLL);
  _isNonatomicReadonlyBoolPropertyTypeWithAttributes__BOOLTypeLen = result;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_forEachBoolPropertyUsingObjCMagicInProtocol:(id)protocol runBlock:(id)block
{
  v15 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  outCount = 0;
  v7 = protocol_copyPropertyList2(protocol, &outCount, 1, 1);
  if (outCount)
  {
    for (i = 0; i < outCount; ++i)
    {
      v9 = v7[i];
      Name = property_getName(v9);
      Attributes = property_getAttributes(v9);
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:Name];
      if ([(MCMPlistReadOnly *)self _isNonatomicReadonlyBoolPropertyTypeWithAttributes:Attributes])
      {
        blockCopy[2](blockCopy, v12);
      }
    }
  }

  free(v7);

  v13 = *MEMORY[0x1E69E9840];
}

- (id)_urlByResolvingConfigName:(id)name defaultPlistDirectoryURL:(id)l error:(id *)error
{
  v20[1] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  lCopy = l;
  if ([nameCopy hasPrefix:@"/"])
  {
    v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:nameCopy isDirectory:0];
  }

  else
  {
    if ([nameCopy hasPrefix:@"./"])
    {
      uRLByDeletingLastPathComponent = [(NSURL *)self->_sourceFileURL URLByDeletingLastPathComponent];
      [uRLByDeletingLastPathComponent URLByAppendingPathComponent:nameCopy isDirectory:0];
    }

    else
    {
      uRLByDeletingLastPathComponent = [lCopy URLByAppendingPathComponent:nameCopy isDirectory:0];
      [uRLByDeletingLastPathComponent URLByAppendingPathExtension:@"plist"];
    }
    v10 = ;
  }

  fileManager = [(MCMPlistReadOnly *)self fileManager];
  v20[0] = 0;
  v13 = [fileManager realPathForURL:v10 isDirectory:0 error:v20];
  v14 = v20[0];

  v15 = 0;
  if (!v13)
  {
    v16 = [[MCMError alloc] initWithNSError:v14 url:v10 defaultErrorType:149];
    v15 = v16;
    if (error)
    {
      v17 = v16;
      *error = v15;
    }
  }

  v18 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)_plistByResolvingIncludeInMutablePlist:(id)plist conformingToProtocol:(id)protocol error:(id *)error
{
  v48 = *MEMORY[0x1E69E9840];
  plistCopy = plist;
  protocolCopy = protocol;
  v8 = plistCopy;
  v9 = 0;
  v10 = 0;
  v36 = v8;
  while (1)
  {
    v11 = [v8 objectForKeyedSubscript:{@"#Include", v36}];
    objc_opt_class();
    v12 = v11;
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      errorCopy4 = error;
      goto LABEL_25;
    }

    [v8 removeObjectForKey:@"#Include"];
    defaultPlistDirectoryURL = [(MCMPlistReadOnly *)self defaultPlistDirectoryURL];
    v41 = v10;
    v15 = [(MCMPlistReadOnly *)self _urlByResolvingConfigName:v13 defaultPlistDirectoryURL:defaultPlistDirectoryURL error:&v41];
    v16 = v41;

    if (!v15)
    {
      p_super = container_log_handle_for_category();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        defaultPlistDirectoryURL2 = [(MCMPlistReadOnly *)self defaultPlistDirectoryURL];
        path = [defaultPlistDirectoryURL2 path];
        *buf = 138412802;
        v43 = v13;
        v44 = 2112;
        v45 = path;
        v46 = 2112;
        v47 = v16;
        _os_log_error_impl(&dword_1DF2C3000, p_super, OS_LOG_TYPE_ERROR, "Could not resolve config file name [%@] using default directory [%@]; error = %@", buf, 0x20u);
      }

      v15 = 0;
      goto LABEL_18;
    }

    numIncludes = [(MCMPlistReadOnly *)self numIncludes];
    [numIncludes addObject:v15];

    numIncludes2 = [(MCMPlistReadOnly *)self numIncludes];
    v19 = [numIncludes2 countForObject:v15];

    if (v19 >= 0x1F)
    {
      v27 = container_log_handle_for_category();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        path2 = [v15 path];
        *buf = 138412546;
        v43 = path2;
        v44 = 2048;
        v45 = 30;
        _os_log_error_impl(&dword_1DF2C3000, v27, OS_LOG_TYPE_ERROR, "[%@] exceeded maximum inclusions (%lu), possible recursion", buf, 0x16u);
      }

      p_super = &v16->super;
      v16 = [[MCMError alloc] initWithErrorType:150];
LABEL_18:
      errorCopy4 = error;
      goto LABEL_24;
    }

    v20 = MEMORY[0x1E695DF20];
    fileManager = [(MCMPlistReadOnly *)self fileManager];
    v40 = 0;
    v22 = [v20 MCM_dictionaryWithContentsOfURL:v15 options:0 fileManager:fileManager fsNode:0 error:&v40];
    v23 = v40;

    if (!v22)
    {
      v28 = container_log_handle_for_category();
      errorCopy4 = error;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        path3 = [v15 path];
        *buf = 138412546;
        v43 = path3;
        v44 = 2112;
        v45 = v23;
        _os_log_error_impl(&dword_1DF2C3000, v28, OS_LOG_TYPE_ERROR, "Could not read config file [%@]; error = %@", buf, 0x16u);
      }

      v10 = [[MCMError alloc] initWithNSError:v23 url:v15 defaultErrorType:149];
      v22 = 0;
      goto LABEL_23;
    }

    [v8 MCM_overlayDictionary:v22 existingValuesTakePrecedent:1];
    v39 = v16;
    v24 = [(MCMPlistReadOnly *)self _plistByResolvingFeatureFlagsInMutablePlist:v8 error:&v39];
    v10 = v39;

    if (!v24)
    {
      break;
    }

    v9 = v13;
    v8 = v24;
  }

  v8 = 0;
  errorCopy4 = error;
LABEL_23:

  p_super = v15;
  v15 = v23;
  v16 = v10;
LABEL_24:

  v10 = v16;
LABEL_25:
  if (v10)
  {

    v8 = 0;
  }

  if (errorCopy4 && !v8)
  {
    v29 = v10;
    *errorCopy4 = v10;
  }

  v30 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)_plistByResolvingFeatureFlagsInMutablePlist:(id)plist error:(id *)error
{
  v39 = *MEMORY[0x1E69E9840];
  plistCopy = plist;
  featureFlagProvider = [(MCMPlistReadOnly *)self featureFlagProvider];
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__5095;
  v35 = __Block_byref_object_dispose__5096;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v8 = plistCopy;
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __70__MCMPlistReadOnly__plistByResolvingFeatureFlagsInMutablePlist_error___block_invoke;
  v22 = &unk_1E86B0470;
  v25 = &v27;
  v9 = featureFlagProvider;
  selfCopy = self;
  v24 = v9;
  v26 = &v31;
  [v8 MCM_replaceDeepDictionariesWithReplaceHandler:&v19];
  v10 = v8;
  if (*(v28 + 24) == 1)
  {
    if (v32[5])
    {
      goto LABEL_6;
    }

    v11 = container_log_handle_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v18 = [(NSURL *)self->_sourceFileURL path:v19];
      *buf = 138412290;
      v38 = v18;
      _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, "Config file invalid [%@]", buf, 0xCu);
    }

    v12 = [MCMError alloc];
    path = [(NSURL *)self->_sourceFileURL path];
    v14 = [(MCMError *)v12 initWithErrorType:149 category:5 path:path POSIXerrno:100];
    v15 = v32[5];
    v32[5] = v14;

    v10 = v8;
    if (v28[3])
    {
LABEL_6:
      if (error)
      {
        *error = v32[5];
      }

      v10 = 0;
    }
  }

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);

  v16 = *MEMORY[0x1E69E9840];

  return v10;
}

void *__70__MCMPlistReadOnly__plistByResolvingFeatureFlagsInMutablePlist_error___block_invoke(void *a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 mutableCopy];
  v8 = @"#IfFeatureFlagEnabled";
  v9 = [v6 objectForKeyedSubscript:@"#IfFeatureFlagEnabled"];
  v10 = @"#IfFeatureFlagDisabled";
  v11 = [v6 objectForKeyedSubscript:@"#IfFeatureFlagDisabled"];
  v12 = [v6 objectForKeyedSubscript:@"#Then"];
  v39 = [v6 objectForKeyedSubscript:@"#Else"];

  v38 = v5;
  if (v9 | v11)
  {
    if (v9 && v11)
    {
      *(*(a1[6] + 8) + 24) = 1;
      v13 = container_log_handle_for_category();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v42 = @"#IfFeatureFlagEnabled";
        v43 = 2112;
        v44 = @"#IfFeatureFlagDisabled";
        v45 = 2112;
        v46 = v5;
        v14 = "Invalid plist; both [%@] and [%@] specified but only one should be at [%@]";
        v15 = v13;
        v16 = 32;
LABEL_35:
        _os_log_error_impl(&dword_1DF2C3000, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);
      }
    }

    else
    {
      if (v12)
      {
        if (v9)
        {
          v19 = v9;
        }

        else
        {
          v19 = v11;
        }

        v18 = v19;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = v18;
          v13 = [v17 componentsSeparatedByString:@"/"];
          if ([v13 count]== 2)
          {
            v20 = a1[5];
            v21 = [v13 objectAtIndexedSubscript:0];
            if (v20)
            {
              v37 = [v21 UTF8String];
              v22 = [v13 objectAtIndexedSubscript:1];
              v23 = (*(v20 + 16))(v20, v37, [v22 UTF8String]);
            }

            else
            {
              [v21 UTF8String];
              v22 = [v13 objectAtIndexedSubscript:1];
              [v22 UTF8String];
              v23 = _os_feature_enabled_impl();
            }

            v32 = v23;

            if (v9 && v32 || !((v11 == 0) | v32 & 1))
            {
              v33 = v12;
            }

            else
            {
              v33 = v39;
            }

            v34 = v33;

            v18 = v17;
            v7 = v34;
          }

          else
          {
            *(*(a1[6] + 8) + 24) = 1;
            v31 = container_log_handle_for_category();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              if (!v9)
              {
                v8 = @"#IfFeatureFlagDisabled";
              }

              *buf = 138412802;
              v42 = v8;
              v43 = 2048;
              v44 = [v13 count];
              v45 = 2112;
              v46 = v38;
              _os_log_error_impl(&dword_1DF2C3000, v31, OS_LOG_TYPE_ERROR, "Invalid plist; value of [%@] should be a feature flag string with two components but has %lu components at [%@]", buf, 0x20u);
            }

            v18 = v17;
          }
        }

        else
        {
          *(*(a1[6] + 8) + 24) = 1;
          v13 = container_log_handle_for_category();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            if (v9)
            {
              v10 = @"#IfFeatureFlagEnabled";
            }

            v35 = objc_opt_class();
            v36 = NSStringFromClass(v35);
            *buf = 138412802;
            v42 = v10;
            v43 = 2112;
            v44 = v36;
            v45 = 2112;
            v46 = v38;
            _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, "Invalid plist; value of [%@] should be an string but is a [%@] at [%@]", buf, 0x20u);
          }

          v17 = 0;
        }

        goto LABEL_17;
      }

      *(*(a1[6] + 8) + 24) = 1;
      v13 = container_log_handle_for_category();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v42 = @"#Then";
        v43 = 2112;
        v44 = v5;
        v14 = "Invalid plist; no [%@] specified at [%@]";
        v15 = v13;
        v16 = 22;
        goto LABEL_35;
      }
    }

    v17 = 0;
    v18 = 0;
LABEL_17:

    goto LABEL_18;
  }

  v17 = 0;
  v18 = 0;
LABEL_18:
  if ((*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = a1[4];
      v25 = [v24 protocol];
      v26 = *(a1[7] + 8);
      obj = *(v26 + 40);
      v27 = [v24 _plistByResolvingIncludeInMutablePlist:v7 conformingToProtocol:v25 error:&obj];
      objc_storeStrong((v26 + 40), obj);

      v7 = v27;
      if (!v27)
      {
        *(*(a1[6] + 8) + 24) = 1;
      }
    }
  }

  v28 = v7;

  v29 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)_plistByPreprocessingPlist:(id)plist conformingToProtocol:(id)protocol error:(id *)error
{
  v19[1] = *MEMORY[0x1E69E9840];
  protocolCopy = protocol;
  v9 = [plist mutableCopy];
  v19[0] = 0;
  v10 = [(MCMPlistReadOnly *)self _plistByResolvingFeatureFlagsInMutablePlist:v9 error:v19];
  v11 = v19[0];

  if (v10)
  {
    v18 = v11;
    v12 = [(MCMPlistReadOnly *)self _plistByResolvingIncludeInMutablePlist:v10 conformingToProtocol:protocolCopy error:&v18];
    v13 = v18;

    v11 = v13;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v12 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  if (!v12)
  {
    v14 = v11;
    *error = v11;
  }

LABEL_7:
  mCM_deepCopy = [v12 MCM_deepCopy];

  v16 = *MEMORY[0x1E69E9840];

  return mCM_deepCopy;
}

- (void)_initBoolPropertyWithName:(id)name entry:(id)entry
{
  v13 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  nameCopy = name;
  objc_opt_class();
  v11 = entryCopy;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    bOOLValue = 0;
    goto LABEL_5;
  }

  if (v11)
  {
    bOOLValue = [v11 BOOLValue];
LABEL_5:

    goto LABEL_6;
  }

  bOOLValue = 0;
LABEL_6:
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{bOOLValue, v11}];
  [(MCMPlistReadOnly *)self setValue:v9 forKey:nameCopy];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_initBoolPropertiesUsingObjCMagicWithPlist:(id)plist conformingToProtocol:(id)protocol
{
  v11 = *MEMORY[0x1E69E9840];
  plistCopy = plist;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __84__MCMPlistReadOnly__initBoolPropertiesUsingObjCMagicWithPlist_conformingToProtocol___block_invoke;
  v9[3] = &unk_1E86B0448;
  v9[4] = self;
  v10 = plistCopy;
  v7 = plistCopy;
  [(MCMPlistReadOnly *)self _forEachBoolPropertyUsingObjCMagicInProtocol:protocol runBlock:v9];

  v8 = *MEMORY[0x1E69E9840];
}

void __84__MCMPlistReadOnly__initBoolPropertiesUsingObjCMagicWithPlist_conformingToProtocol___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v6 = [v3 objectForKeyedSubscript:v4];
  [v2 _initBoolPropertyWithName:v4 entry:?];

  v5 = *MEMORY[0x1E69E9840];
}

- (BOOL)_initPropertiesWithPlist:(id)plist conformingToProtocol:(id)protocol error:(id *)error
{
  v13[1] = *MEMORY[0x1E69E9840];
  plistCopy = plist;
  [(MCMPlistReadOnly *)self _initBoolPropertiesUsingObjCMagicWithPlist:plistCopy conformingToProtocol:protocol];
  v13[0] = 0;
  v9 = [(MCMPlistReadOnly *)self override_initNonBoolPropertiesWithPlist:plistCopy error:v13];

  v10 = v13[0];
  if (error && !v9)
  {
    v10 = v10;
    *error = v10;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)override_initNonBoolPropertiesWithPlist:(id)plist error:(id *)error
{
  v4 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return 1;
}

- (id)descriptionOfBoolPropertiesWithIndentString:(id)string
{
  v19 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__5095;
  v17 = __Block_byref_object_dispose__5096;
  v18 = &stru_1F5A5B2B8;
  protocol = self->_protocol;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__MCMPlistReadOnly_descriptionOfBoolPropertiesWithIndentString___block_invoke;
  v10[3] = &unk_1E86B0420;
  v10[4] = self;
  v12 = &v13;
  v6 = stringCopy;
  v11 = v6;
  [(MCMPlistReadOnly *)self _forEachBoolPropertyUsingObjCMagicInProtocol:protocol runBlock:v10];
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

void __64__MCMPlistReadOnly_descriptionOfBoolPropertiesWithIndentString___block_invoke(void *a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 valueForKey:v4];
  v6 = [v5 BOOLValue];

  v7 = @"NO";
  if (v6)
  {
    v7 = @"YES";
  }

  v8 = &stru_1F5A5B2B8;
  if (a1[5])
  {
    v8 = a1[5];
  }

  v9 = [*(*(a1[6] + 8) + 40) stringByAppendingFormat:@"%@%@: %@\n", v8, v4, v7];

  v10 = *(a1[6] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)loadWithError:(id *)error
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = objc_autoreleasePoolPush();
  if (self->_pathOrName)
  {
    pathOrName = [(MCMPlistReadOnly *)self pathOrName];
    defaultPlistDirectoryURL = [(MCMPlistReadOnly *)self defaultPlistDirectoryURL];
    v37 = 0;
    v8 = [(MCMPlistReadOnly *)self _urlByResolvingConfigName:pathOrName defaultPlistDirectoryURL:defaultPlistDirectoryURL error:&v37];
    v9 = v37;
    sourceFileURL = self->_sourceFileURL;
    self->_sourceFileURL = v8;

    v11 = self->_sourceFileURL;
    if (!v11)
    {
      goto LABEL_20;
    }

    v12 = MEMORY[0x1E695DF20];
    fileManager = [(MCMPlistReadOnly *)self fileManager];
    v36 = 0;
    v14 = [v12 MCM_dictionaryWithContentsOfURL:v11 options:0 fileManager:fileManager fsNode:0 error:&v36];
    v15 = v36;
    rawPlist = self->_rawPlist;
    self->_rawPlist = v14;

    if (!self->_rawPlist)
    {
      v28 = container_log_handle_for_category();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        path = [(NSURL *)self->_sourceFileURL path];
        *buf = 138412546;
        v39 = path;
        v40 = 2112;
        v41 = v15;
        _os_log_error_impl(&dword_1DF2C3000, v28, OS_LOG_TYPE_ERROR, "Failed to read config file [%@]; error = %@", buf, 0x16u);
      }

      v29 = [[MCMError alloc] initWithNSError:v15 url:self->_sourceFileURL defaultErrorType:149];
      v9 = v29;
      goto LABEL_20;
    }
  }

  else
  {
    v9 = 0;
  }

  v17 = self->_rawPlist;
  if (v17)
  {
    protocol = self->_protocol;
    v35 = v9;
    v19 = [(MCMPlistReadOnly *)self _plistByPreprocessingPlist:v17 conformingToProtocol:protocol error:&v35];
    v20 = v35;

    preprocessedPlist = self->_preprocessedPlist;
    self->_preprocessedPlist = v19;

    if (!self->_preprocessedPlist)
    {
      v9 = v20;
      goto LABEL_20;
    }

    if (!self->_keepArtifacts)
    {
      v22 = self->_rawPlist;
      self->_rawPlist = 0;
    }
  }

  else
  {
    v20 = v9;
  }

  v23 = self->_preprocessedPlist;
  if (v23)
  {
    v24 = self->_protocol;
    v34 = v20;
    v25 = [(MCMPlistReadOnly *)self _initPropertiesWithPlist:v23 conformingToProtocol:v24 error:&v34];
    v9 = v34;

    if (v25)
    {
      if (!self->_keepArtifacts)
      {
        v26 = self->_preprocessedPlist;
        self->_preprocessedPlist = 0;
      }

      objc_autoreleasePoolPop(v5);
      v27 = 1;
      goto LABEL_23;
    }

LABEL_20:
    objc_autoreleasePoolPop(v5);
    if (error)
    {
      v30 = v9;
      v27 = 0;
      *error = v9;
    }

    else
    {
      v27 = 0;
    }

LABEL_23:

    v31 = *MEMORY[0x1E69E9840];
    return v27;
  }

  result = _os_crash();
  __break(1u);
  return result;
}

- (MCMPlistReadOnly)initWithRawPlist:(id)plist preprocessedPlist:(id)preprocessedPlist pathOrName:(id)name protocol:(id)protocol defaultPlistDirectoryURL:(id)l
{
  v39 = *MEMORY[0x1E69E9840];
  plistCopy = plist;
  preprocessedPlistCopy = preprocessedPlist;
  nameCopy = name;
  protocolCopy = protocol;
  lCopy = l;
  v31.receiver = self;
  v31.super_class = MCMPlistReadOnly;
  v17 = [(MCMPlistReadOnly *)&v31 init];
  if (!v17)
  {
    goto LABEL_9;
  }

  v18 = objc_opt_new();
  numIncludes = v17->_numIncludes;
  v17->_numIncludes = v18;

  objc_storeStrong(&v17->_rawPlist, plist);
  objc_storeStrong(&v17->_preprocessedPlist, preprocessedPlist);
  objc_storeStrong(&v17->_pathOrName, name);
  objc_storeStrong(&v17->_protocol, protocol);
  objc_storeStrong(&v17->_defaultPlistDirectoryURL, l);
  v20 = +[MCMFileManager defaultManager];
  fileManager = v17->_fileManager;
  v17->_fileManager = v20;

  featureFlagProvider = v17->_featureFlagProvider;
  v17->_featureFlagProvider = 0;

  v17->_keepArtifacts = 0;
  if (([(MCMPlistReadOnly *)v17 conformsToProtocol:protocolCopy]& 1) == 0)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    uTF8String = [v28 UTF8String];
    v32 = 136315138;
    v33 = uTF8String;
    _os_log_send_and_compose_impl();

    _os_crash_msg();
    __break(1u);
LABEL_11:
    _os_crash();
    __break(1u);
LABEL_12:
    _os_crash();
    __break(1u);
    goto LABEL_13;
  }

  rawPlist = v17->_rawPlist;
  if (rawPlist && !v17->_defaultPlistDirectoryURL)
  {
    goto LABEL_11;
  }

  pathOrName = v17->_pathOrName;
  if (pathOrName && !v17->_defaultPlistDirectoryURL)
  {
    goto LABEL_12;
  }

  if (rawPlist || pathOrName | v17->_preprocessedPlist)
  {
LABEL_9:

    v25 = *MEMORY[0x1E69E9840];
    return v17;
  }

LABEL_13:
  result = _os_crash();
  __break(1u);
  return result;
}

- (MCMPlistReadOnly)initWithPreprocessedPlist:(id)plist conformingToProtocol:(id)protocol
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E69E9840];

  return [(MCMPlistReadOnly *)self initWithRawPlist:0 preprocessedPlist:plist pathOrName:0 protocol:protocol defaultPlistDirectoryURL:0];
}

- (id)initFromPlist:(id)plist defaultPlistDirectoryURL:(id)l conformingToProtocol:(id)protocol
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E69E9840];

  return [(MCMPlistReadOnly *)self initWithRawPlist:plist preprocessedPlist:0 pathOrName:0 protocol:protocol defaultPlistDirectoryURL:l];
}

- (id)initFromPlistAtPathOrName:(id)name defaultPlistDirectoryURL:(id)l conformingToProtocol:(id)protocol
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E69E9840];

  return [(MCMPlistReadOnly *)self initWithRawPlist:0 preprocessedPlist:0 pathOrName:name protocol:protocol defaultPlistDirectoryURL:l];
}

@end