@interface MCMStaticConfiguration
+ (id)defaultPlistDirectoryURL;
- (BOOL)attemptMetadataReconstructionIfMissing;
- (BOOL)errorOnPersonaPropagationFailure;
- (BOOL)loadWithError:(id *)error;
- (BOOL)override_initNonBoolPropertiesWithPlist:(id)plist error:(id *)error;
- (BOOL)requireDataBackedPersona;
- (BOOL)supportPersonasIfAvailable;
- (BOOL)warnIfNotDataBackedPersona;
- (Class)containerConfigClass;
- (MCMPOSIXUser)defaultUser;
- (NSDictionary)containerConfigMap;
- (NSString)debugDescription;
- (id)_posixUserFromPlistValue:(id)value;
- (id)configForContainerClass:(unint64_t)class;
- (id)descriptionForContainerConfiguration;
- (id)initFromPlistAtPathOrName:(id)name defaultPlistDirectoryURL:(id)l;
- (void)setContainerConfigClass:(Class)class;
@end

@implementation MCMStaticConfiguration

- (NSDictionary)containerConfigMap
{
  result = self->_containerConfigMap;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMPOSIXUser)defaultUser
{
  result = self->_defaultUser;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)warnIfNotDataBackedPersona
{
  result = self->_warnIfNotDataBackedPersona;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)requireDataBackedPersona
{
  result = self->_requireDataBackedPersona;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)supportPersonasIfAvailable
{
  result = self->_supportPersonasIfAvailable;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)attemptMetadataReconstructionIfMissing
{
  result = self->_attemptMetadataReconstructionIfMissing;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)errorOnPersonaPropagationFailure
{
  result = self->_errorOnPersonaPropagationFailure;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setContainerConfigClass:(Class)class
{
  v4 = *MEMORY[0x1E69E9840];
  self->_containerConfigClass = class;
  v3 = *MEMORY[0x1E69E9840];
}

- (Class)containerConfigClass
{
  containerConfigClass = self->_containerConfigClass;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];

  return containerConfigClass;
}

- (id)descriptionForContainerConfiguration
{
  v23 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [(MCMStaticConfiguration *)self containerConfigMap];
  v3 = [obj countByEnumeratingWithState:&v19 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    v6 = @"containerConfiguration: {\n";
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        containerConfigMap = [(MCMStaticConfiguration *)self containerConfigMap];
        v10 = [containerConfigMap objectForKeyedSubscript:v8];

        v11 = [(__CFString *)v6 stringByAppendingFormat:@"\t%@: {\n", v8];

        v12 = [v10 debugDescriptionWithIndentString:@"\t\t"];
        v13 = [v11 stringByAppendingString:v12];

        v6 = [v13 stringByAppendingString:@"\t}\n"];
      }

      v4 = [obj countByEnumeratingWithState:&v19 objects:v18 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = @"containerConfiguration: {\n";
  }

  v14 = [(__CFString *)v6 stringByAppendingString:@"}\n"];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)_posixUserFromPlistValue:(id)value
{
  v10 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [valueCopy objectForKeyedSubscript:@"type"];
    objc_opt_class();
    v5 = v4;
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    if ([v6 isEqualToString:@"current"])
    {
      v7 = +[MCMPOSIXUser currentPOSIXUser];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [MCMPOSIXUser posixUserWithName:valueCopy];
    }

    else
    {
      v7 = 0;
    }
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (NSString)debugDescription
{
  v12 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = MCMStaticConfiguration;
  v3 = [(MCMPlistReadOnly *)&v11 descriptionOfBoolPropertiesWithIndentString:0];
  v4 = NSStringFromSelector(sel_defaultUser);
  defaultUser = [(MCMStaticConfiguration *)self defaultUser];
  v6 = [v3 stringByAppendingFormat:@"%@: %@\n", v4, defaultUser];

  descriptionForContainerConfiguration = [(MCMStaticConfiguration *)self descriptionForContainerConfiguration];
  v8 = [v6 stringByAppendingString:descriptionForContainerConfiguration];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BOOL)override_initNonBoolPropertiesWithPlist:(id)plist error:(id *)error
{
  v46 = *MEMORY[0x1E69E9840];
  plistCopy = plist;
  v6 = [plistCopy objectForKeyedSubscript:@"containerConfiguration"];
  objc_opt_class();
  v7 = v6;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v40 = plistCopy;

  v9 = MEMORY[0x1E695E0F8];
  if (v8)
  {
    v9 = v8;
  }

  v10 = v9;

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  selfCopy = self;
  containerConfigClass = [(MCMStaticConfiguration *)self containerConfigClass];
  if (!containerConfigClass)
  {
    containerConfigClass = objc_opt_class();
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v13 = v10;
  v14 = [v13 countByEnumeratingWithState:&v42 objects:v41 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v43;
    v17 = MEMORY[0x1E695E0F8];
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v43 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v42 + 1) + 8 * i);
        v20 = [v13 objectForKeyedSubscript:v19];
        objc_opt_class();
        v21 = v20;
        if (objc_opt_isKindOfClass())
        {
          v22 = v21;
        }

        else
        {
          v22 = 0;
        }

        if (!v22 || (v23 = [[(objc_class *)containerConfigClass alloc] initWithPreprocessedPlist:v22 name:v19]) == 0)
        {
          v23 = [[(objc_class *)containerConfigClass alloc] initWithPreprocessedPlist:v17 name:v19];
        }

        [dictionary setObject:v23 forKeyedSubscript:v19];
      }

      v15 = [v13 countByEnumeratingWithState:&v42 objects:v41 count:16];
    }

    while (v15);
  }

  v24 = [dictionary copy];
  containerConfigMap = selfCopy->_containerConfigMap;
  selfCopy->_containerConfigMap = v24;

  v26 = NSStringFromSelector(sel_defaultUser);
  v27 = [v40 objectForKeyedSubscript:v26];

  if (v27 && ([(MCMStaticConfiguration *)selfCopy _posixUserFromPlistValue:v27], v28 = objc_claimAutoreleasedReturnValue(), defaultUser = selfCopy->_defaultUser, selfCopy->_defaultUser = v28, defaultUser, !selfCopy->_defaultUser))
  {
    v34 = [MCMError alloc];
    sourceFileURL = [(MCMPlistReadOnly *)selfCopy sourceFileURL];
    path = [sourceFileURL path];
    v30 = [(MCMError *)v34 initWithErrorType:149 category:5 path:path POSIXerrno:100];

    if (error)
    {
      v37 = v30;
      v31 = 0;
      *error = v30;
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v30 = 0;
    v31 = 1;
  }

  v32 = *MEMORY[0x1E69E9840];
  return v31;
}

- (BOOL)loadWithError:(id *)error
{
  v35 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v28.receiver = self;
  v28.super_class = MCMStaticConfiguration;
  v29 = 0;
  v6 = [(MCMPlistReadOnly *)&v28 loadWithError:&v29];
  v7 = v29;
  v8 = v7;
  if (v6)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    containerConfigMap = [(MCMStaticConfiguration *)self containerConfigMap];
    v10 = [containerConfigMap countByEnumeratingWithState:&v31 objects:v30 count:16];
    if (!v10)
    {
LABEL_12:

      v20 = [dictionary copy];
      containerConfigMapByEnum = self->_containerConfigMapByEnum;
      self->_containerConfigMapByEnum = v20;

      v22 = 1;
      v18 = v8;
      goto LABEL_17;
    }

    v11 = v10;
    errorCopy = error;
    v12 = *v32;
LABEL_4:
    v13 = 0;
    while (1)
    {
      if (*v32 != v12)
      {
        objc_enumerationMutation(containerConfigMap);
      }

      v14 = *(*(&v31 + 1) + 8 * v13);
      containerConfigMap2 = [(MCMStaticConfiguration *)self containerConfigMap];
      v16 = [containerConfigMap2 objectForKeyedSubscript:v14];

      if (v16)
      {
        v27 = v8;
        v17 = [v16 loadWithError:&v27];
        v18 = v27;

        if (!v17)
        {

          error = errorCopy;
          if (errorCopy)
          {
            goto LABEL_14;
          }

LABEL_16:
          v22 = 0;
          goto LABEL_17;
        }

        v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v16, "containerClass")}];
        [dictionary setObject:v16 forKeyedSubscript:v19];

        v8 = v18;
      }

      if (v11 == ++v13)
      {
        v11 = [containerConfigMap countByEnumeratingWithState:&v31 objects:v30 count:16];
        if (v11)
        {
          goto LABEL_4;
        }

        goto LABEL_12;
      }
    }
  }

  v18 = v7;
  if (!error)
  {
    goto LABEL_16;
  }

LABEL_14:
  v23 = v18;
  v22 = 0;
  *error = v18;
LABEL_17:

  v24 = *MEMORY[0x1E69E9840];
  return v22;
}

- (id)configForContainerClass:(unint64_t)class
{
  v8 = *MEMORY[0x1E69E9840];
  containerConfigMapByEnum = self->_containerConfigMapByEnum;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:container_class_normalized()];
  v5 = [(NSDictionary *)containerConfigMapByEnum objectForKeyedSubscript:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)initFromPlistAtPathOrName:(id)name defaultPlistDirectoryURL:(id)l
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = MCMStaticConfiguration;
  v4 = [(MCMPlistReadOnly *)&v9 initFromPlistAtPathOrName:name defaultPlistDirectoryURL:l conformingToProtocol:&unk_1F5A85260];
  v5 = v4;
  if (v4)
  {
    v6 = v4[11];
    v4[11] = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (id)defaultPlistDirectoryURL
{
  v9 = *MEMORY[0x1E69E9840];
  if (defaultPlistDirectoryURL_onceToken != -1)
  {
    dispatch_once(&defaultPlistDirectoryURL_onceToken, &__block_literal_global_7207);
  }

  v2 = container_log_handle_for_category();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    path = [defaultPlistDirectoryURL_defaultURL path];
    v7 = 138412290;
    v8 = path;
    _os_log_debug_impl(&dword_1DF2C3000, v2, OS_LOG_TYPE_DEBUG, "defaultPlistDirectoryURL: [%@]", &v7, 0xCu);
  }

  v3 = defaultPlistDirectoryURL_defaultURL;
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

uint64_t __50__MCMStaticConfiguration_defaultPlistDirectoryURL__block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  defaultPlistDirectoryURL_defaultURL = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:"/System/Library/PrivateFrameworks/ContainerManagerCommon.framework" isDirectory:1 relativeToURL:0];
  v0 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE66BB8]();
}

@end