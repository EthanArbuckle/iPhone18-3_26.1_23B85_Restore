@interface DBApplication
- (BOOL)isPlaceholder;
- (DBApplication)initWithApplicationInfo:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation DBApplication

- (BOOL)isPlaceholder
{
  v2 = [(DBApplication *)self placeholder];
  v3 = v2 != 0;

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(DBApplication *)self bundleIdentifier];
  v5 = [v3 appendObject:v4 withName:0];

  v6 = [v3 appendBool:-[DBApplication isLockedOrHidden](self withName:"isLockedOrHidden") ifEqualTo:{@"protected", 1}];

  return v3;
}

- (DBApplication)initWithApplicationInfo:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DBApplication;
  v6 = [(DBApplication *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_appInfo, a3);
  }

  return v7;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(DBApplication *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)succinctDescription
{
  v2 = [(DBApplication *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

@end