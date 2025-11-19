@interface LCFFetureValueNameType
- (id)init:(id)a3 featureValueType:(int64_t)a4;
@end

@implementation LCFFetureValueNameType

- (id)init:(id)a3 featureValueType:(int64_t)a4
{
  v7 = a3;
  v10.receiver = self;
  v10.super_class = LCFFetureValueNameType;
  v8 = [(LCFFetureValueNameType *)&v10 init];
  if (v8)
  {
    LCFLoggingUtilsInit();
    objc_storeStrong(&v8->_featureName, a3);
    v8->_featureValueType = a4;
  }

  return v8;
}

@end