@interface CMLClientConfig
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToClientConfig:(id)config;
- (CMLClientConfig)initWithCoder:(id)coder;
- (CMLClientConfig)initWithUseCase:(id)case;
- (CMLClientConfig)initWithUseCase:(id)case sourceApplicationBundleIdentifier:(id)identifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setSourceApplicationBundleIdentifier:(id)identifier;
@end

@implementation CMLClientConfig

- (CMLClientConfig)initWithUseCase:(id)case sourceApplicationBundleIdentifier:(id)identifier
{
  v25 = *MEMORY[0x277D85DE8];
  caseCopy = case;
  identifierCopy = identifier;
  v10 = +[CMLLog client];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromSelector(a2);
    *buf = 138543874;
    v20 = v11;
    v21 = 2114;
    v22 = identifierCopy;
    v23 = 2114;
    v24 = caseCopy;
    _os_log_impl(&dword_224E26000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ using sourceApplicationBundleIdentifier '%{public}@' for useCase '%{public}@'", buf, 0x20u);
  }

  v18.receiver = self;
  v18.super_class = CMLClientConfig;
  v12 = [(CMLClientConfig *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_useCase, case);
    v14 = [identifierCopy copy];
    sourceApplicationBundleIdentifier = v13->_sourceApplicationBundleIdentifier;
    v13->_sourceApplicationBundleIdentifier = v14;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v13;
}

- (CMLClientConfig)initWithUseCase:(id)case
{
  v4 = MEMORY[0x277CCA8D8];
  caseCopy = case;
  mainBundle = [v4 mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v8 = [(CMLClientConfig *)self initWithUseCase:caseCopy sourceApplicationBundleIdentifier:bundleIdentifier];

  return v8;
}

- (void)setSourceApplicationBundleIdentifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v6 = +[CMLLog client];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    useCase = self->_useCase;
    v12 = 138543874;
    v13 = v7;
    v14 = 2114;
    v15 = identifierCopy;
    v16 = 2114;
    v17 = useCase;
    _os_log_impl(&dword_224E26000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Switching sourceApplicationBundleIdentifier to '%{public}@' for useCase '%{public}@'", &v12, 0x20u);
  }

  v9 = [identifierCopy copy];
  sourceApplicationBundleIdentifier = self->_sourceApplicationBundleIdentifier;
  self->_sourceApplicationBundleIdentifier = v9;

  v11 = *MEMORY[0x277D85DE8];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CMLClientConfig *)self isEqualToClientConfig:v5];
  }

  return v6;
}

- (BOOL)isEqualToClientConfig:(id)config
{
  configCopy = config;
  sourceApplicationBundleIdentifier = [(CMLClientConfig *)self sourceApplicationBundleIdentifier];
  sourceApplicationBundleIdentifier2 = [configCopy sourceApplicationBundleIdentifier];
  if (sourceApplicationBundleIdentifier == sourceApplicationBundleIdentifier2)
  {
    v9 = 1;
  }

  else
  {
    sourceApplicationBundleIdentifier3 = [(CMLClientConfig *)self sourceApplicationBundleIdentifier];
    sourceApplicationBundleIdentifier4 = [configCopy sourceApplicationBundleIdentifier];
    v9 = [sourceApplicationBundleIdentifier3 isEqual:sourceApplicationBundleIdentifier4];
  }

  useCase = [(CMLClientConfig *)self useCase];
  useCase2 = [configCopy useCase];
  v12 = [useCase isEqual:useCase2];

  return v12 & v9;
}

- (unint64_t)hash
{
  useCase = [(CMLClientConfig *)self useCase];
  v4 = [useCase hash];
  sourceApplicationBundleIdentifier = [(CMLClientConfig *)self sourceApplicationBundleIdentifier];
  v6 = [sourceApplicationBundleIdentifier hash];

  return v6 ^ v4;
}

- (CMLClientConfig)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"useCase"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceApplicationBundleIdentifier"];

  v7 = [(CMLClientConfig *)self initWithUseCase:v5 sourceApplicationBundleIdentifier:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  useCase = [(CMLClientConfig *)self useCase];
  [coderCopy encodeObject:useCase forKey:@"useCase"];

  sourceApplicationBundleIdentifier = [(CMLClientConfig *)self sourceApplicationBundleIdentifier];
  [coderCopy encodeObject:sourceApplicationBundleIdentifier forKey:@"sourceApplicationBundleIdentifier"];
}

@end