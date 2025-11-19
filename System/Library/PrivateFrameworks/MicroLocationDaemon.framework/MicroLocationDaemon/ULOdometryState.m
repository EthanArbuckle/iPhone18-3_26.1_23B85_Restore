@interface ULOdometryState
- (ULOdometryState)initWithDeviceIdentifier:(id)a3 deltaPositionX:(id)a4 deltaPositionY:(id)a5 deltaPositionZ:(id)a6 timestamp:(double)a7;
@end

@implementation ULOdometryState

- (ULOdometryState)initWithDeviceIdentifier:(id)a3 deltaPositionX:(id)a4 deltaPositionY:(id)a5 deltaPositionZ:(id)a6 timestamp:(double)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v22.receiver = self;
  v22.super_class = ULOdometryState;
  v16 = [(ULOdometryState *)&v22 init];
  v17 = v16;
  if (v16)
  {
    [(ULOdometryState *)v16 setDeviceIdentifier:v12];
    if (v13)
    {
      v18 = v13;
    }

    else
    {
      v18 = &unk_286A71FE8;
    }

    [(ULOdometryState *)v17 setDeltaPositionX:v18];
    if (v14)
    {
      v19 = v14;
    }

    else
    {
      v19 = &unk_286A71FE8;
    }

    [(ULOdometryState *)v17 setDeltaPositionY:v19];
    if (v15)
    {
      v20 = v15;
    }

    else
    {
      v20 = &unk_286A71FE8;
    }

    [(ULOdometryState *)v17 setDeltaPositionZ:v20];
    [(ULOdometryState *)v17 setTimestamp:a7];
  }

  return v17;
}

@end