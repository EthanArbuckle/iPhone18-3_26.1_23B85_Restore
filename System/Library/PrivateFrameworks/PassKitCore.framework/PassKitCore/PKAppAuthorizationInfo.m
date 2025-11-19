@interface PKAppAuthorizationInfo
- (PKAppAuthorizationInfo)initWithBundleIdentifier:(id)a3;
- (int64_t)authorizationStatusForCapability:(int64_t)a3;
- (void)setAuthorizationStatus:(int64_t)a3 forCapability:(int64_t)a4;
@end

@implementation PKAppAuthorizationInfo

- (PKAppAuthorizationInfo)initWithBundleIdentifier:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = PKAppAuthorizationInfo;
  v6 = [(PKAppAuthorizationInfo *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleIdentifier, a3);
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    passLibraryAuthorizations = v7->_passLibraryAuthorizations;
    v7->_passLibraryAuthorizations = v8;
  }

  return v7;
}

- (void)setAuthorizationStatus:(int64_t)a3 forCapability:(int64_t)a4
{
  passLibraryAuthorizations = self->_passLibraryAuthorizations;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [(NSMutableDictionary *)passLibraryAuthorizations setObject:v7 forKey:v6];
}

- (int64_t)authorizationStatusForCapability:(int64_t)a3
{
  passLibraryAuthorizations = self->_passLibraryAuthorizations;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [(NSMutableDictionary *)passLibraryAuthorizations objectForKey:v4];
  v6 = [v5 integerValue];

  return v6;
}

@end