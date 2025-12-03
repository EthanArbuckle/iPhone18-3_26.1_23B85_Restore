@interface ULOdometryState
- (ULOdometryState)initWithDeviceIdentifier:(id)identifier deltaPositionX:(id)x deltaPositionY:(id)y deltaPositionZ:(id)z timestamp:(double)timestamp;
@end

@implementation ULOdometryState

- (ULOdometryState)initWithDeviceIdentifier:(id)identifier deltaPositionX:(id)x deltaPositionY:(id)y deltaPositionZ:(id)z timestamp:(double)timestamp
{
  identifierCopy = identifier;
  xCopy = x;
  yCopy = y;
  zCopy = z;
  v22.receiver = self;
  v22.super_class = ULOdometryState;
  v16 = [(ULOdometryState *)&v22 init];
  v17 = v16;
  if (v16)
  {
    [(ULOdometryState *)v16 setDeviceIdentifier:identifierCopy];
    if (xCopy)
    {
      v18 = xCopy;
    }

    else
    {
      v18 = &unk_286A71FE8;
    }

    [(ULOdometryState *)v17 setDeltaPositionX:v18];
    if (yCopy)
    {
      v19 = yCopy;
    }

    else
    {
      v19 = &unk_286A71FE8;
    }

    [(ULOdometryState *)v17 setDeltaPositionY:v19];
    if (zCopy)
    {
      v20 = zCopy;
    }

    else
    {
      v20 = &unk_286A71FE8;
    }

    [(ULOdometryState *)v17 setDeltaPositionZ:v20];
    [(ULOdometryState *)v17 setTimestamp:timestamp];
  }

  return v17;
}

@end