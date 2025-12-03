@interface BKEnrollPearlResultInfo
- (BKEnrollPearlResultInfo)initWithServerIdentity:(id)identity details:(id)details device:(id)device;
@end

@implementation BKEnrollPearlResultInfo

- (BKEnrollPearlResultInfo)initWithServerIdentity:(id)identity details:(id)details device:(id)device
{
  detailsCopy = details;
  v14.receiver = self;
  v14.super_class = BKEnrollPearlResultInfo;
  v9 = [(BKEnrollResultInfo *)&v14 initWithServerIdentity:identity details:detailsCopy device:device];
  v10 = v9;
  if (detailsCopy && v9)
  {
    v11 = [detailsCopy objectForKeyedSubscript:@"BKEnrollDetailGlassesDetected"];
    v12 = v11;
    if (v11)
    {
      v10->_glassesDetected = [v11 BOOLValue];
    }
  }

  return v10;
}

@end