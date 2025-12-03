@interface LCFFetureValueNameType
- (id)init:(id)init featureValueType:(int64_t)type;
@end

@implementation LCFFetureValueNameType

- (id)init:(id)init featureValueType:(int64_t)type
{
  initCopy = init;
  v10.receiver = self;
  v10.super_class = LCFFetureValueNameType;
  v8 = [(LCFFetureValueNameType *)&v10 init];
  if (v8)
  {
    LCFLoggingUtilsInit();
    objc_storeStrong(&v8->_featureName, init);
    v8->_featureValueType = type;
  }

  return v8;
}

@end