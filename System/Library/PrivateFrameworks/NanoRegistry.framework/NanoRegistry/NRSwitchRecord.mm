@interface NRSwitchRecord
- (NRSwitchRecord)initWithDeviceID:(id)a3 date:(id)a4 switchIndex:(unsigned int)a5;
@end

@implementation NRSwitchRecord

- (NRSwitchRecord)initWithDeviceID:(id)a3 date:(id)a4 switchIndex:(unsigned int)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(NRSwitchRecord *)self init];
  if (v10)
  {
    v11 = [MEMORY[0x1E695DEF0] fromUUID:v8];
    objc_storeStrong(&v10->super._deviceIDBytes, v11);

    v12 = v9;
    v13 = v12;
    if (v12)
    {
      [v12 timeIntervalSinceReferenceDate];
      *&v10->super._has |= 1u;
      v10->super._dateTimeInterval = v14;
    }

    else
    {
      *&v10->super._has &= ~1u;
    }

    *&v10->super._has |= 2u;
    v10->super._switchIndex = a5;
  }

  return v10;
}

@end