@interface PKAppAuthorizationInfo
- (PKAppAuthorizationInfo)initWithBundleIdentifier:(id)identifier;
- (int64_t)authorizationStatusForCapability:(int64_t)capability;
- (void)setAuthorizationStatus:(int64_t)status forCapability:(int64_t)capability;
@end

@implementation PKAppAuthorizationInfo

- (PKAppAuthorizationInfo)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = PKAppAuthorizationInfo;
  v6 = [(PKAppAuthorizationInfo *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleIdentifier, identifier);
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    passLibraryAuthorizations = v7->_passLibraryAuthorizations;
    v7->_passLibraryAuthorizations = v8;
  }

  return v7;
}

- (void)setAuthorizationStatus:(int64_t)status forCapability:(int64_t)capability
{
  passLibraryAuthorizations = self->_passLibraryAuthorizations;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:status];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:capability];
  [(NSMutableDictionary *)passLibraryAuthorizations setObject:v7 forKey:v6];
}

- (int64_t)authorizationStatusForCapability:(int64_t)capability
{
  passLibraryAuthorizations = self->_passLibraryAuthorizations;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:capability];
  v5 = [(NSMutableDictionary *)passLibraryAuthorizations objectForKey:v4];
  integerValue = [v5 integerValue];

  return integerValue;
}

@end