@interface MPCMutablePlaybackRequestEnvironment
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)setClientIdentifier:(id)a3;
- (void)setClientVersion:(id)a3;
- (void)setDelegationProperties:(id)a3;
- (void)setRequestingBundleIdentifier:(id)a3;
- (void)setRequestingBundleVersion:(id)a3;
- (void)setUserIdentity:(id)a3;
@end

@implementation MPCMutablePlaybackRequestEnvironment

- (void)setUserIdentity:(id)a3
{
  if (self->super._userIdentity != a3)
  {
    v5 = [a3 copy];
    userIdentity = self->super._userIdentity;
    self->super._userIdentity = v5;

    MEMORY[0x1EEE66BB8](v5, userIdentity);
  }
}

- (void)setRequestingBundleVersion:(id)a3
{
  if (self->super._requestingBundleVersion != a3)
  {
    v5 = [a3 copy];
    requestingBundleVersion = self->super._requestingBundleVersion;
    self->super._requestingBundleVersion = v5;

    MEMORY[0x1EEE66BB8](v5, requestingBundleVersion);
  }
}

- (void)setRequestingBundleIdentifier:(id)a3
{
  if (self->super._requestingBundleIdentifier != a3)
  {
    v5 = [a3 copy];
    requestingBundleIdentifier = self->super._requestingBundleIdentifier;
    self->super._requestingBundleIdentifier = v5;

    MEMORY[0x1EEE66BB8](v5, requestingBundleIdentifier);
  }
}

- (void)setDelegationProperties:(id)a3
{
  if (self->super._delegationProperties != a3)
  {
    v5 = [a3 copy];
    delegationProperties = self->super._delegationProperties;
    self->super._delegationProperties = v5;

    MEMORY[0x1EEE66BB8](v5, delegationProperties);
  }
}

- (void)setClientVersion:(id)a3
{
  if (self->super._clientVersion != a3)
  {
    v5 = [a3 copy];
    clientVersion = self->super._clientVersion;
    self->super._clientVersion = v5;

    MEMORY[0x1EEE66BB8](v5, clientVersion);
  }
}

- (void)setClientIdentifier:(id)a3
{
  if (self->super._clientIdentifier != a3)
  {
    v5 = [a3 copy];
    clientIdentifier = self->super._clientIdentifier;
    self->super._clientIdentifier = v5;

    MEMORY[0x1EEE66BB8](v5, clientIdentifier);
  }
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_class();

  return [(MPCPlaybackRequestEnvironment *)self _copyWithPlaybackRequestEnvironmentClass:v4];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_class();

  return [(MPCPlaybackRequestEnvironment *)self _copyWithPlaybackRequestEnvironmentClass:v4];
}

@end