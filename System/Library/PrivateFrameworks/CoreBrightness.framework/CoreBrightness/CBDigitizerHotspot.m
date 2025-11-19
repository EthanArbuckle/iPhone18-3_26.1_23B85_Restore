@interface CBDigitizerHotspot
- (BOOL)isClearedAt:(float)a3;
- (CBDigitizerHotspot)init;
- (id)description;
@end

@implementation CBDigitizerHotspot

- (CBDigitizerHotspot)init
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = CBDigitizerHotspot;
  v5 = [(CBDigitizerHotspot *)&v3 init];
  if (v5)
  {
    v5->_touchReleaseTime = 0.0;
    v5->_touchTriggerDelay = 5.0;
  }

  return v5;
}

- (BOOL)isClearedAt:(float)a3
{
  v4 = 0;
  if (self->_triggered == 2)
  {
    return (a3 - self->_touchReleaseTime) > self->_touchTriggerDelay;
  }

  return v4;
}

- (id)description
{
  v7 = self;
  v6 = a2;
  v5 = MEMORY[0x1E696AEC0];
  v4 = (&kTouchStateStr)[[(CBDigitizerHotspot *)self triggered]];
  [(CBDigitizerHotspot *)v7 touchReleaseTime];
  return [v5 stringWithFormat:@"state=%s touchReleased=%.2f", v4, v2];
}

@end