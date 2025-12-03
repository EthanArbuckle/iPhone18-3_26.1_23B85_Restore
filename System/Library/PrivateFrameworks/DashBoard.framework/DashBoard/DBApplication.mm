@interface DBApplication
- (BOOL)isPlaceholder;
- (DBApplication)initWithApplicationInfo:(id)info;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation DBApplication

- (BOOL)isPlaceholder
{
  placeholder = [(DBApplication *)self placeholder];
  v3 = placeholder != 0;

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  bundleIdentifier = [(DBApplication *)self bundleIdentifier];
  v5 = [v3 appendObject:bundleIdentifier withName:0];

  v6 = [v3 appendBool:-[DBApplication isLockedOrHidden](self withName:"isLockedOrHidden") ifEqualTo:{@"protected", 1}];

  return v3;
}

- (DBApplication)initWithApplicationInfo:(id)info
{
  infoCopy = info;
  v9.receiver = self;
  v9.super_class = DBApplication;
  v6 = [(DBApplication *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_appInfo, info);
  }

  return v7;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(DBApplication *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(DBApplication *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

@end