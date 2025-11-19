@interface ULOdometryStatus
- (ULOdometryStatus)initWithDeviceIdentifier:(id)a3 odometrySourceType:(int64_t)a4 deltaPositionX:(id)a5 deltaPositionY:(id)a6 deltaPositionZ:(id)a7 date:(id)a8;
@end

@implementation ULOdometryStatus

- (ULOdometryStatus)initWithDeviceIdentifier:(id)a3 odometrySourceType:(int64_t)a4 deltaPositionX:(id)a5 deltaPositionY:(id)a6 deltaPositionZ:(id)a7 date:(id)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v25.receiver = self;
  v25.super_class = ULOdometryStatus;
  v19 = [(ULOdometryStatus *)&v25 init];
  v20 = v19;
  if (v19)
  {
    [(ULOdometryStatus *)v19 setDeviceIdentifier:v14];
    [(ULOdometryStatus *)v20 setOdometrySourceType:a4];
    if (v15)
    {
      v21 = v15;
    }

    else
    {
      v21 = &unk_286A71FD0;
    }

    [(ULOdometryStatus *)v20 setDeltaPositionX:v21];
    if (v16)
    {
      v22 = v16;
    }

    else
    {
      v22 = &unk_286A71FD0;
    }

    [(ULOdometryStatus *)v20 setDeltaPositionY:v22];
    if (v17)
    {
      v23 = v17;
    }

    else
    {
      v23 = &unk_286A71FD0;
    }

    [(ULOdometryStatus *)v20 setDeltaPositionZ:v23];
    [(ULOdometryStatus *)v20 setStatusDate:v18];
  }

  return v20;
}

@end