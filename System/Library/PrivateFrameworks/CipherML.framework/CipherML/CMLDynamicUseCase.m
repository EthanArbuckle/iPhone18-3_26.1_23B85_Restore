@interface CMLDynamicUseCase
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDynamicUseCase:(id)a3;
- (CMLDynamicUseCase)initWithCoder:(id)a3;
- (CMLDynamicUseCase)initWithGroup:(id)a3 useCase:(id)a4 config:(id)a5 networkManager:(id)a6;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)registerWithCompletionHandler:(id)a3;
@end

@implementation CMLDynamicUseCase

- (CMLDynamicUseCase)initWithGroup:(id)a3 useCase:(id)a4 config:(id)a5 networkManager:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = CMLDynamicUseCase;
  v15 = [(CMLDynamicUseCase *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_group, a3);
    objc_storeStrong(&v16->_useCase, a4);
    objc_storeStrong(&v16->_config, a5);
    objc_storeStrong(&v16->_networkManager, a6);
  }

  return v16;
}

- (void)registerWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = +[CMLUseCaseGroupManager sharedManager];
  v20 = 0;
  v6 = [v5 listUseCaseGroupsWithError:&v20];
  v7 = v20;
  if (v6)
  {
    v8 = [(CMLDynamicUseCase *)self group];
    v9 = [v6 objectForKeyedSubscript:v8];
    v10 = [v9 useCases];
    v11 = [v10 mutableCopy];

    if (!v11)
    {
      v11 = [MEMORY[0x277CBEC10] mutableCopy];
    }

    v12 = [(CMLDynamicUseCase *)self config];
    v13 = [(CMLDynamicUseCase *)self useCase];
    [v11 setObject:v12 forKeyedSubscript:v13];

    v14 = [CMLUseCaseGroup alloc];
    v15 = [(CMLDynamicUseCase *)self networkManager];
    v16 = [(CMLUseCaseGroup *)v14 initWithUseCases:v11 networkConfig:v15];

    v17 = [(CMLDynamicUseCase *)self group];
    v19 = v7;
    [v5 configureGroupWithName:v17 useCaseGroup:v16 error:&v19];
    v18 = v19;

    v4[2](v4, v18);
    v7 = v18;
  }

  else
  {
    v4[2](v4, v7);
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CMLDynamicUseCase *)self isEqualToDynamicUseCase:v5];
  }

  return v6;
}

- (BOOL)isEqualToDynamicUseCase:(id)a3
{
  v4 = a3;
  v5 = [(CMLDynamicUseCase *)self group];
  v6 = [v4 group];
  if ([v5 isEqual:v6])
  {
    v7 = [(CMLDynamicUseCase *)self useCase];
    v8 = [v4 useCase];
    if ([v7 isEqual:v8])
    {
      v9 = [(CMLDynamicUseCase *)self config];
      v10 = [v4 config];
      if ([v9 isEqual:v10])
      {
        v11 = [(CMLDynamicUseCase *)self networkManager];
        v12 = [v4 networkManager];
        v13 = [v11 isEqual:v12];
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
  v3 = [(CMLDynamicUseCase *)self group];
  v4 = [v3 hash];
  v5 = [(CMLDynamicUseCase *)self useCase];
  v6 = [v5 hash] ^ v4;
  v7 = [(CMLDynamicUseCase *)self config];
  v8 = [v7 hash];
  v9 = [(CMLDynamicUseCase *)self networkManager];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (CMLDynamicUseCase)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"group"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"useCase"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"config"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"networkManager"];

  v9 = [(CMLDynamicUseCase *)self initWithGroup:v5 useCase:v6 config:v7 networkManager:v8];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CMLDynamicUseCase *)self group];
  [v4 encodeObject:v5 forKey:@"group"];

  v6 = [(CMLDynamicUseCase *)self useCase];
  [v4 encodeObject:v6 forKey:@"useCase"];

  v7 = [(CMLDynamicUseCase *)self config];
  [v4 encodeObject:v7 forKey:@"config"];

  v8 = [(CMLDynamicUseCase *)self networkManager];
  [v4 encodeObject:v8 forKey:@"networkManager"];
}

@end