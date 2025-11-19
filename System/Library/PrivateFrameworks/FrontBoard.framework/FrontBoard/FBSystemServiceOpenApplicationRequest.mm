@interface FBSystemServiceOpenApplicationRequest
- (FBSystemServiceOpenApplicationRequest)initWithBundleId:(id)a3;
- (id)description;
@end

@implementation FBSystemServiceOpenApplicationRequest

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendBool:self->_trusted withName:@"trusted"];
  v5 = [v3 appendObject:self->_bundleIdentifier withName:@"bundleID"];
  v6 = [(FBSOpenApplicationOptions *)self->_options url];
  v7 = [v6 scheme];
  v8 = [v3 appendObject:v7 withName:@"urlScheme" skipIfNil:1];

  clientProcess = self->_clientProcess;
  v10 = FBSProcessPrettyDescription();
  v11 = [v3 appendObject:v10 withName:@"client"];

  v12 = [v3 build];

  return v12;
}

- (FBSystemServiceOpenApplicationRequest)initWithBundleId:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = FBSystemServiceOpenApplicationRequest;
  v5 = [(FBSystemServiceOpenApplicationRequest *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(FBSystemServiceOpenApplicationRequest *)v5 setBundleIdentifier:v4];
  }

  return v6;
}

@end