@interface BKEnrollPearlResultInfo
- (BKEnrollPearlResultInfo)initWithServerIdentity:(id)a3 details:(id)a4 device:(id)a5;
@end

@implementation BKEnrollPearlResultInfo

- (BKEnrollPearlResultInfo)initWithServerIdentity:(id)a3 details:(id)a4 device:(id)a5
{
  v8 = a4;
  v14.receiver = self;
  v14.super_class = BKEnrollPearlResultInfo;
  v9 = [(BKEnrollResultInfo *)&v14 initWithServerIdentity:a3 details:v8 device:a5];
  v10 = v9;
  if (v8 && v9)
  {
    v11 = [v8 objectForKeyedSubscript:@"BKEnrollDetailGlassesDetected"];
    v12 = v11;
    if (v11)
    {
      v10->_glassesDetected = [v11 BOOLValue];
    }
  }

  return v10;
}

@end