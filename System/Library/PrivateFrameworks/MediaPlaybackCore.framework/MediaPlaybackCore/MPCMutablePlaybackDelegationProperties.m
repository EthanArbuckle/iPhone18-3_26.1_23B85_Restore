@interface MPCMutablePlaybackDelegationProperties
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)setDeviceGUID:(id)a3;
- (void)setDeviceName:(id)a3;
- (void)setRequestUserAgent:(id)a3;
- (void)setTimeZone:(id)a3;
@end

@implementation MPCMutablePlaybackDelegationProperties

- (void)setTimeZone:(id)a3
{
  if (self->super._timeZone != a3)
  {
    v5 = [a3 copy];
    timeZone = self->super._timeZone;
    self->super._timeZone = v5;

    MEMORY[0x1EEE66BB8](v5, timeZone);
  }
}

- (void)setRequestUserAgent:(id)a3
{
  if (self->super._requestUserAgent != a3)
  {
    v5 = [a3 copy];
    requestUserAgent = self->super._requestUserAgent;
    self->super._requestUserAgent = v5;

    MEMORY[0x1EEE66BB8](v5, requestUserAgent);
  }
}

- (void)setDeviceName:(id)a3
{
  if (self->super._deviceName != a3)
  {
    v5 = [a3 copy];
    deviceName = self->super._deviceName;
    self->super._deviceName = v5;

    MEMORY[0x1EEE66BB8](v5, deviceName);
  }
}

- (void)setDeviceGUID:(id)a3
{
  if (self->super._deviceGUID != a3)
  {
    v5 = [a3 copy];
    deviceGUID = self->super._deviceGUID;
    self->super._deviceGUID = v5;

    MEMORY[0x1EEE66BB8](v5, deviceGUID);
  }
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();

  return [(MPCPlaybackDelegationProperties *)self _copyWithClass:v5 zone:a3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();

  return [(MPCPlaybackDelegationProperties *)self _copyWithClass:v5 zone:a3];
}

@end