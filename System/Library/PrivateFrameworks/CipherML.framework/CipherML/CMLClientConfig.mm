@interface CMLClientConfig
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToClientConfig:(id)a3;
- (CMLClientConfig)initWithCoder:(id)a3;
- (CMLClientConfig)initWithUseCase:(id)a3;
- (CMLClientConfig)initWithUseCase:(id)a3 sourceApplicationBundleIdentifier:(id)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setSourceApplicationBundleIdentifier:(id)a3;
@end

@implementation CMLClientConfig

- (CMLClientConfig)initWithUseCase:(id)a3 sourceApplicationBundleIdentifier:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = +[CMLLog client];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromSelector(a2);
    *buf = 138543874;
    v20 = v11;
    v21 = 2114;
    v22 = v9;
    v23 = 2114;
    v24 = v8;
    _os_log_impl(&dword_224E26000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ using sourceApplicationBundleIdentifier '%{public}@' for useCase '%{public}@'", buf, 0x20u);
  }

  v18.receiver = self;
  v18.super_class = CMLClientConfig;
  v12 = [(CMLClientConfig *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_useCase, a3);
    v14 = [v9 copy];
    sourceApplicationBundleIdentifier = v13->_sourceApplicationBundleIdentifier;
    v13->_sourceApplicationBundleIdentifier = v14;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v13;
}

- (CMLClientConfig)initWithUseCase:(id)a3
{
  v4 = MEMORY[0x277CCA8D8];
  v5 = a3;
  v6 = [v4 mainBundle];
  v7 = [v6 bundleIdentifier];
  v8 = [(CMLClientConfig *)self initWithUseCase:v5 sourceApplicationBundleIdentifier:v7];

  return v8;
}

- (void)setSourceApplicationBundleIdentifier:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[CMLLog client];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    useCase = self->_useCase;
    v12 = 138543874;
    v13 = v7;
    v14 = 2114;
    v15 = v5;
    v16 = 2114;
    v17 = useCase;
    _os_log_impl(&dword_224E26000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Switching sourceApplicationBundleIdentifier to '%{public}@' for useCase '%{public}@'", &v12, 0x20u);
  }

  v9 = [v5 copy];
  sourceApplicationBundleIdentifier = self->_sourceApplicationBundleIdentifier;
  self->_sourceApplicationBundleIdentifier = v9;

  v11 = *MEMORY[0x277D85DE8];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CMLClientConfig *)self isEqualToClientConfig:v5];
  }

  return v6;
}

- (BOOL)isEqualToClientConfig:(id)a3
{
  v4 = a3;
  v5 = [(CMLClientConfig *)self sourceApplicationBundleIdentifier];
  v6 = [v4 sourceApplicationBundleIdentifier];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [(CMLClientConfig *)self sourceApplicationBundleIdentifier];
    v8 = [v4 sourceApplicationBundleIdentifier];
    v9 = [v7 isEqual:v8];
  }

  v10 = [(CMLClientConfig *)self useCase];
  v11 = [v4 useCase];
  v12 = [v10 isEqual:v11];

  return v12 & v9;
}

- (unint64_t)hash
{
  v3 = [(CMLClientConfig *)self useCase];
  v4 = [v3 hash];
  v5 = [(CMLClientConfig *)self sourceApplicationBundleIdentifier];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (CMLClientConfig)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"useCase"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceApplicationBundleIdentifier"];

  v7 = [(CMLClientConfig *)self initWithUseCase:v5 sourceApplicationBundleIdentifier:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CMLClientConfig *)self useCase];
  [v4 encodeObject:v5 forKey:@"useCase"];

  v6 = [(CMLClientConfig *)self sourceApplicationBundleIdentifier];
  [v4 encodeObject:v6 forKey:@"sourceApplicationBundleIdentifier"];
}

@end