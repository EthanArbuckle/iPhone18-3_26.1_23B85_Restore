@interface FBSystemServiceOpenApplicationRequest
- (FBSystemServiceOpenApplicationRequest)initWithBundleId:(id)id;
- (id)description;
@end

@implementation FBSystemServiceOpenApplicationRequest

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendBool:self->_trusted withName:@"trusted"];
  v5 = [v3 appendObject:self->_bundleIdentifier withName:@"bundleID"];
  v6 = [(FBSOpenApplicationOptions *)self->_options url];
  scheme = [v6 scheme];
  v8 = [v3 appendObject:scheme withName:@"urlScheme" skipIfNil:1];

  clientProcess = self->_clientProcess;
  v10 = FBSProcessPrettyDescription();
  v11 = [v3 appendObject:v10 withName:@"client"];

  build = [v3 build];

  return build;
}

- (FBSystemServiceOpenApplicationRequest)initWithBundleId:(id)id
{
  idCopy = id;
  v8.receiver = self;
  v8.super_class = FBSystemServiceOpenApplicationRequest;
  v5 = [(FBSystemServiceOpenApplicationRequest *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(FBSystemServiceOpenApplicationRequest *)v5 setBundleIdentifier:idCopy];
  }

  return v6;
}

@end