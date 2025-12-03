@interface NRSwitchRecord
- (NRSwitchRecord)initWithDeviceID:(id)d date:(id)date switchIndex:(unsigned int)index;
@end

@implementation NRSwitchRecord

- (NRSwitchRecord)initWithDeviceID:(id)d date:(id)date switchIndex:(unsigned int)index
{
  dCopy = d;
  dateCopy = date;
  v10 = [(NRSwitchRecord *)self init];
  if (v10)
  {
    v11 = [MEMORY[0x1E695DEF0] fromUUID:dCopy];
    objc_storeStrong(&v10->super._deviceIDBytes, v11);

    v12 = dateCopy;
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
    v10->super._switchIndex = index;
  }

  return v10;
}

@end