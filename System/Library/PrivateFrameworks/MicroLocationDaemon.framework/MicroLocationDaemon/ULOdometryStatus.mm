@interface ULOdometryStatus
- (ULOdometryStatus)initWithDeviceIdentifier:(id)identifier odometrySourceType:(int64_t)type deltaPositionX:(id)x deltaPositionY:(id)y deltaPositionZ:(id)z date:(id)date;
@end

@implementation ULOdometryStatus

- (ULOdometryStatus)initWithDeviceIdentifier:(id)identifier odometrySourceType:(int64_t)type deltaPositionX:(id)x deltaPositionY:(id)y deltaPositionZ:(id)z date:(id)date
{
  identifierCopy = identifier;
  xCopy = x;
  yCopy = y;
  zCopy = z;
  dateCopy = date;
  v25.receiver = self;
  v25.super_class = ULOdometryStatus;
  v19 = [(ULOdometryStatus *)&v25 init];
  v20 = v19;
  if (v19)
  {
    [(ULOdometryStatus *)v19 setDeviceIdentifier:identifierCopy];
    [(ULOdometryStatus *)v20 setOdometrySourceType:type];
    if (xCopy)
    {
      v21 = xCopy;
    }

    else
    {
      v21 = &unk_286A71FD0;
    }

    [(ULOdometryStatus *)v20 setDeltaPositionX:v21];
    if (yCopy)
    {
      v22 = yCopy;
    }

    else
    {
      v22 = &unk_286A71FD0;
    }

    [(ULOdometryStatus *)v20 setDeltaPositionY:v22];
    if (zCopy)
    {
      v23 = zCopy;
    }

    else
    {
      v23 = &unk_286A71FD0;
    }

    [(ULOdometryStatus *)v20 setDeltaPositionZ:v23];
    [(ULOdometryStatus *)v20 setStatusDate:dateCopy];
  }

  return v20;
}

@end