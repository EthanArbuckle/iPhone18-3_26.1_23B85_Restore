@interface CMLDynamicUseCase
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDynamicUseCase:(id)case;
- (CMLDynamicUseCase)initWithCoder:(id)coder;
- (CMLDynamicUseCase)initWithGroup:(id)group useCase:(id)case config:(id)config networkManager:(id)manager;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)registerWithCompletionHandler:(id)handler;
@end

@implementation CMLDynamicUseCase

- (CMLDynamicUseCase)initWithGroup:(id)group useCase:(id)case config:(id)config networkManager:(id)manager
{
  groupCopy = group;
  caseCopy = case;
  configCopy = config;
  managerCopy = manager;
  v18.receiver = self;
  v18.super_class = CMLDynamicUseCase;
  v15 = [(CMLDynamicUseCase *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_group, group);
    objc_storeStrong(&v16->_useCase, case);
    objc_storeStrong(&v16->_config, config);
    objc_storeStrong(&v16->_networkManager, manager);
  }

  return v16;
}

- (void)registerWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[CMLUseCaseGroupManager sharedManager];
  v20 = 0;
  v6 = [v5 listUseCaseGroupsWithError:&v20];
  v7 = v20;
  if (v6)
  {
    group = [(CMLDynamicUseCase *)self group];
    v9 = [v6 objectForKeyedSubscript:group];
    useCases = [v9 useCases];
    v11 = [useCases mutableCopy];

    if (!v11)
    {
      v11 = [MEMORY[0x277CBEC10] mutableCopy];
    }

    config = [(CMLDynamicUseCase *)self config];
    useCase = [(CMLDynamicUseCase *)self useCase];
    [v11 setObject:config forKeyedSubscript:useCase];

    v14 = [CMLUseCaseGroup alloc];
    networkManager = [(CMLDynamicUseCase *)self networkManager];
    v16 = [(CMLUseCaseGroup *)v14 initWithUseCases:v11 networkConfig:networkManager];

    group2 = [(CMLDynamicUseCase *)self group];
    v19 = v7;
    [v5 configureGroupWithName:group2 useCaseGroup:v16 error:&v19];
    v18 = v19;

    handlerCopy[2](handlerCopy, v18);
    v7 = v18;
  }

  else
  {
    handlerCopy[2](handlerCopy, v7);
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CMLDynamicUseCase *)self isEqualToDynamicUseCase:v5];
  }

  return v6;
}

- (BOOL)isEqualToDynamicUseCase:(id)case
{
  caseCopy = case;
  group = [(CMLDynamicUseCase *)self group];
  group2 = [caseCopy group];
  if ([group isEqual:group2])
  {
    useCase = [(CMLDynamicUseCase *)self useCase];
    useCase2 = [caseCopy useCase];
    if ([useCase isEqual:useCase2])
    {
      config = [(CMLDynamicUseCase *)self config];
      config2 = [caseCopy config];
      if ([config isEqual:config2])
      {
        networkManager = [(CMLDynamicUseCase *)self networkManager];
        networkManager2 = [caseCopy networkManager];
        v13 = [networkManager isEqual:networkManager2];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unint64_t)hash
{
  group = [(CMLDynamicUseCase *)self group];
  v4 = [group hash];
  useCase = [(CMLDynamicUseCase *)self useCase];
  v6 = [useCase hash] ^ v4;
  config = [(CMLDynamicUseCase *)self config];
  v8 = [config hash];
  networkManager = [(CMLDynamicUseCase *)self networkManager];
  v10 = v8 ^ [networkManager hash];

  return v6 ^ v10;
}

- (CMLDynamicUseCase)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"group"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"useCase"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"config"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"networkManager"];

  v9 = [(CMLDynamicUseCase *)self initWithGroup:v5 useCase:v6 config:v7 networkManager:v8];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  group = [(CMLDynamicUseCase *)self group];
  [coderCopy encodeObject:group forKey:@"group"];

  useCase = [(CMLDynamicUseCase *)self useCase];
  [coderCopy encodeObject:useCase forKey:@"useCase"];

  config = [(CMLDynamicUseCase *)self config];
  [coderCopy encodeObject:config forKey:@"config"];

  networkManager = [(CMLDynamicUseCase *)self networkManager];
  [coderCopy encodeObject:networkManager forKey:@"networkManager"];
}

@end