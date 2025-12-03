@interface CBDigitizerHotspot
- (BOOL)isClearedAt:(float)at;
- (CBDigitizerHotspot)init;
- (id)description;
@end

@implementation CBDigitizerHotspot

- (CBDigitizerHotspot)init
{
  selfCopy = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = CBDigitizerHotspot;
  selfCopy = [(CBDigitizerHotspot *)&v3 init];
  if (selfCopy)
  {
    selfCopy->_touchReleaseTime = 0.0;
    selfCopy->_touchTriggerDelay = 5.0;
  }

  return selfCopy;
}

- (BOOL)isClearedAt:(float)at
{
  v4 = 0;
  if (self->_triggered == 2)
  {
    return (at - self->_touchReleaseTime) > self->_touchTriggerDelay;
  }

  return v4;
}

- (id)description
{
  selfCopy = self;
  v6 = a2;
  v5 = MEMORY[0x1E696AEC0];
  v4 = (&kTouchStateStr)[[(CBDigitizerHotspot *)self triggered]];
  [(CBDigitizerHotspot *)selfCopy touchReleaseTime];
  return [v5 stringWithFormat:@"state=%s touchReleased=%.2f", v4, v2];
}

@end