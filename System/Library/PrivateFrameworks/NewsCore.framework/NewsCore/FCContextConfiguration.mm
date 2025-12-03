@interface FCContextConfiguration
+ (id)defaultConfiguration;
- (FCContextConfiguration)init;
- (FCContextConfiguration)initWithEnvironment:(int64_t)environment;
- (FCContextConfiguration)initWithProductionContentEnvironment:(BOOL)environment productionPrivateDataEnvironment:(BOOL)dataEnvironment contentContainerIdentifier:(id)identifier privateDataContainerIdentifier:(id)containerIdentifier privateDataSecureContainerIdentifier:(id)secureContainerIdentifier storeFrontID:(id)d environment:(int64_t)a9;
- (NSString)contentEnvironmentDescription;
@end

@implementation FCContextConfiguration

+ (id)defaultConfiguration
{
  if (qword_1EDB275F0 != -1)
  {
    dispatch_once(&qword_1EDB275F0, &__block_literal_global_107);
  }

  v3 = _MergedGlobals_177;

  return v3;
}

uint64_t __46__FCContextConfiguration_defaultConfiguration__block_invoke()
{
  _MergedGlobals_177 = [[FCContextConfiguration alloc] initWithEnvironment:FCCurrentContextEnvironment()];

  return MEMORY[0x1EEE66BB8]();
}

- (FCContextConfiguration)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCContextConfiguration init]";
    v10 = 2080;
    v11 = "FCContextConfiguration.m";
    v12 = 1024;
    v13 = 27;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCContextConfiguration init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCContextConfiguration)initWithProductionContentEnvironment:(BOOL)environment productionPrivateDataEnvironment:(BOOL)dataEnvironment contentContainerIdentifier:(id)identifier privateDataContainerIdentifier:(id)containerIdentifier privateDataSecureContainerIdentifier:(id)secureContainerIdentifier storeFrontID:(id)d environment:(int64_t)a9
{
  dataEnvironmentCopy = dataEnvironment;
  environmentCopy = environment;
  v50 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  containerIdentifierCopy = containerIdentifier;
  secureContainerIdentifierCopy = secureContainerIdentifier;
  dCopy = d;
  if (!identifierCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "contentContainerIdentifier"];
    *buf = 136315906;
    v43 = "[FCContextConfiguration initWithProductionContentEnvironment:productionPrivateDataEnvironment:contentContainerIdentifier:privateDataContainerIdentifier:privateDataSecureContainerIdentifier:storeFrontID:environment:]";
    v44 = 2080;
    v45 = "FCContextConfiguration.m";
    v46 = 1024;
    v47 = 43;
    v48 = 2114;
    v49 = v37;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (containerIdentifierCopy)
    {
      goto LABEL_6;
    }
  }

  else if (containerIdentifierCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "privateDataContainerIdentifier"];
    *buf = 136315906;
    v43 = "[FCContextConfiguration initWithProductionContentEnvironment:productionPrivateDataEnvironment:contentContainerIdentifier:privateDataContainerIdentifier:privateDataSecureContainerIdentifier:storeFrontID:environment:]";
    v44 = 2080;
    v45 = "FCContextConfiguration.m";
    v46 = 1024;
    v47 = 44;
    v48 = 2114;
    v49 = v38;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v41.receiver = self;
  v41.super_class = FCContextConfiguration;
  v18 = [(FCContextConfiguration *)&v41 init];
  v19 = v18;
  if (v18)
  {
    v18->_environment = a9;
    v18->_isProductionContentEnvironment = environmentCopy;
    v18->_isProductionPrivateDataEnvironment = dataEnvironmentCopy;
    v20 = [identifierCopy copy];
    contentContainerIdentifier = v19->_contentContainerIdentifier;
    v19->_contentContainerIdentifier = v20;

    v22 = [containerIdentifierCopy copy];
    privateDataContainerIdentifier = v19->_privateDataContainerIdentifier;
    v19->_privateDataContainerIdentifier = v22;

    v24 = [secureContainerIdentifierCopy copy];
    privateDataSecureContainerIdentifier = v19->_privateDataSecureContainerIdentifier;
    v19->_privateDataSecureContainerIdentifier = v24;

    if (environmentCopy)
    {
      v26 = @"production";
    }

    else
    {
      v26 = @"sandbox";
    }

    v27 = MEMORY[0x1E696AEC0];
    v28 = v26;
    v29 = v28;
    if (dCopy)
    {
      [v27 stringWithFormat:@"%@-%@-%@", identifierCopy, v28, dCopy];
    }

    else
    {
      [v27 stringWithFormat:@"%@-%@", identifierCopy, v28, v39];
    }
    v30 = ;
    contentContainerCombinationIdentifier = v19->_contentContainerCombinationIdentifier;
    v19->_contentContainerCombinationIdentifier = v30;

    if (dataEnvironmentCopy)
    {
      v32 = @"production";
    }

    else
    {
      v32 = @"sandbox";
    }

    v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-%@", identifierCopy, containerIdentifierCopy, v32];
    privateDataContainerCombinationIdentifier = v19->_privateDataContainerCombinationIdentifier;
    v19->_privateDataContainerCombinationIdentifier = v33;
  }

  v35 = *MEMORY[0x1E69E9840];
  return v19;
}

- (FCContextConfiguration)initWithEnvironment:(int64_t)environment
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = +[FCAppleAccount sharedAccount];
  contentStoreFrontID = [v5 contentStoreFrontID];

  v7 = 0;
  v8 = 1;
  selfCopy = self;
  v30 = contentStoreFrontID;
  if (environment > 3)
  {
    if (environment > 5)
    {
      if (environment == 6)
      {
        v8 = 0;
        v11 = FCCKSandboxPrivateSecureContainerIdentifier;
        v12 = FCCKSandboxPrivateContainerIdentifier;
        v13 = FCCKSandboxContentContainerIdentifier;
      }

      else if (environment == 7)
      {
        v8 = 0;
        v11 = FCCKDemo1PrivateSecureContainerIdentifier;
        v12 = FCCKDemo1PrivateContainerIdentifier;
        v13 = FCCKDemo1ContentContainerIdentifier;
      }

      else
      {
        v9 = 0;
        v10 = 0;
        if (environment != 8)
        {
          goto LABEL_21;
        }

        v8 = 0;
        v11 = FCCKDemo2PrivateSecureContainerIdentifier;
        v12 = FCCKDemo2PrivateContainerIdentifier;
        v13 = FCCKDemo2ContentContainerIdentifier;
      }

      goto LABEL_20;
    }

    if (environment != 4)
    {
LABEL_14:
      v8 = 0;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if (environment > 1)
  {
    if (environment == 2)
    {
      v8 = 0;
      v11 = FCCKQAPrivateSecureContainerIdentifier;
      v12 = FCCKQAPrivateContainerIdentifier;
      v13 = FCCKQAContentContainerIdentifier;
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  if (!environment)
  {
LABEL_15:
    v11 = FCCKProductionPrivateSecureContainerIdentifier;
    v12 = FCCKProductionPrivateContainerIdentifier;
    v13 = FCCKProductionContentContainerIdentifier;
LABEL_20:
    v10 = *v13;
    v9 = *v12;
    v7 = *v11;
    goto LABEL_21;
  }

  v9 = 0;
  v10 = 0;
  if (environment == 1)
  {
LABEL_16:
    v8 = 0;
    v11 = FCCKStagingPrivateSecureContainerIdentifier;
    v12 = FCCKStagingPrivateContainerIdentifier;
    v13 = FCCKStagingContentContainerIdentifier;
    goto LABEL_20;
  }

LABEL_21:
  v14 = NewsCoreUserDefaults();
  v15 = [v14 stringForKey:@"private_container_name"];
  v16 = v15;
  if (v15)
  {
    v17 = v15;

    v9 = v17;
  }

  v18 = [v14 stringForKey:@"private_secure_container_name"];
  v19 = v18;
  if (v18)
  {
    v20 = v18;

    v7 = v20;
  }

  v21 = [v14 stringForKey:@"private_container_environment"];
  v22 = v21;
  v23 = v8;
  if (v21)
  {
    v23 = [v21 isEqualToString:@"production"];
  }

  if (!v10 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"must have a content container identifier"];
    *buf = 136315906;
    v32 = "[FCContextConfiguration initWithEnvironment:]";
    v33 = 2080;
    v34 = "FCContextConfiguration.m";
    v35 = 1024;
    v36 = 179;
    v37 = 2114;
    v38 = v27;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v9)
    {
      goto LABEL_32;
    }
  }

  else if (v9)
  {
    goto LABEL_32;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"must have a private container identifier"];
    *buf = 136315906;
    v32 = "[FCContextConfiguration initWithEnvironment:]";
    v33 = 2080;
    v34 = "FCContextConfiguration.m";
    v35 = 1024;
    v36 = 180;
    v37 = 2114;
    v38 = v28;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_32:
  v24 = [(FCContextConfiguration *)selfCopy initWithProductionContentEnvironment:v8 productionPrivateDataEnvironment:v23 contentContainerIdentifier:v10 privateDataContainerIdentifier:v9 privateDataSecureContainerIdentifier:v7 storeFrontID:v30 environment:environment];

  v25 = *MEMORY[0x1E69E9840];
  return v24;
}

- (NSString)contentEnvironmentDescription
{
  environment = [(FCContextConfiguration *)self environment];
  if ((environment - 1) > 7)
  {
    return @"production";
  }

  else
  {
    return &off_1E7C42368[environment - 1]->isa;
  }
}

@end