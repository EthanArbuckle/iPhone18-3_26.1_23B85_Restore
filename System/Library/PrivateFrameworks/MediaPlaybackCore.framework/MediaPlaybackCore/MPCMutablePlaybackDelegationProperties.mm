@interface MPCMutablePlaybackDelegationProperties
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)setDeviceGUID:(id)d;
- (void)setDeviceName:(id)name;
- (void)setRequestUserAgent:(id)agent;
- (void)setTimeZone:(id)zone;
@end

@implementation MPCMutablePlaybackDelegationProperties

- (void)setTimeZone:(id)zone
{
  if (self->super._timeZone != zone)
  {
    v5 = [zone copy];
    timeZone = self->super._timeZone;
    self->super._timeZone = v5;

    MEMORY[0x1EEE66BB8](v5, timeZone);
  }
}

- (void)setRequestUserAgent:(id)agent
{
  if (self->super._requestUserAgent != agent)
  {
    v5 = [agent copy];
    requestUserAgent = self->super._requestUserAgent;
    self->super._requestUserAgent = v5;

    MEMORY[0x1EEE66BB8](v5, requestUserAgent);
  }
}

- (void)setDeviceName:(id)name
{
  if (self->super._deviceName != name)
  {
    v5 = [name copy];
    deviceName = self->super._deviceName;
    self->super._deviceName = v5;

    MEMORY[0x1EEE66BB8](v5, deviceName);
  }
}

- (void)setDeviceGUID:(id)d
{
  if (self->super._deviceGUID != d)
  {
    v5 = [d copy];
    deviceGUID = self->super._deviceGUID;
    self->super._deviceGUID = v5;

    MEMORY[0x1EEE66BB8](v5, deviceGUID);
  }
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();

  return [(MPCPlaybackDelegationProperties *)self _copyWithClass:v5 zone:zone];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();

  return [(MPCPlaybackDelegationProperties *)self _copyWithClass:v5 zone:zone];
}

@end