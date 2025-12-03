@interface MPCMutablePlaybackRequestEnvironment
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)setClientIdentifier:(id)identifier;
- (void)setClientVersion:(id)version;
- (void)setDelegationProperties:(id)properties;
- (void)setRequestingBundleIdentifier:(id)identifier;
- (void)setRequestingBundleVersion:(id)version;
- (void)setUserIdentity:(id)identity;
@end

@implementation MPCMutablePlaybackRequestEnvironment

- (void)setUserIdentity:(id)identity
{
  if (self->super._userIdentity != identity)
  {
    v5 = [identity copy];
    userIdentity = self->super._userIdentity;
    self->super._userIdentity = v5;

    MEMORY[0x1EEE66BB8](v5, userIdentity);
  }
}

- (void)setRequestingBundleVersion:(id)version
{
  if (self->super._requestingBundleVersion != version)
  {
    v5 = [version copy];
    requestingBundleVersion = self->super._requestingBundleVersion;
    self->super._requestingBundleVersion = v5;

    MEMORY[0x1EEE66BB8](v5, requestingBundleVersion);
  }
}

- (void)setRequestingBundleIdentifier:(id)identifier
{
  if (self->super._requestingBundleIdentifier != identifier)
  {
    v5 = [identifier copy];
    requestingBundleIdentifier = self->super._requestingBundleIdentifier;
    self->super._requestingBundleIdentifier = v5;

    MEMORY[0x1EEE66BB8](v5, requestingBundleIdentifier);
  }
}

- (void)setDelegationProperties:(id)properties
{
  if (self->super._delegationProperties != properties)
  {
    v5 = [properties copy];
    delegationProperties = self->super._delegationProperties;
    self->super._delegationProperties = v5;

    MEMORY[0x1EEE66BB8](v5, delegationProperties);
  }
}

- (void)setClientVersion:(id)version
{
  if (self->super._clientVersion != version)
  {
    v5 = [version copy];
    clientVersion = self->super._clientVersion;
    self->super._clientVersion = v5;

    MEMORY[0x1EEE66BB8](v5, clientVersion);
  }
}

- (void)setClientIdentifier:(id)identifier
{
  if (self->super._clientIdentifier != identifier)
  {
    v5 = [identifier copy];
    clientIdentifier = self->super._clientIdentifier;
    self->super._clientIdentifier = v5;

    MEMORY[0x1EEE66BB8](v5, clientIdentifier);
  }
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();

  return [(MPCPlaybackRequestEnvironment *)self _copyWithPlaybackRequestEnvironmentClass:v4];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();

  return [(MPCPlaybackRequestEnvironment *)self _copyWithPlaybackRequestEnvironmentClass:v4];
}

@end