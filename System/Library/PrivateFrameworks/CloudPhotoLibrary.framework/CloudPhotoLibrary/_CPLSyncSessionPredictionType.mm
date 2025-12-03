@interface _CPLSyncSessionPredictionType
- (id)initWithType:(void *)type formatter:;
@end

@implementation _CPLSyncSessionPredictionType

- (id)initWithType:(void *)type formatter:
{
  v6 = a2;
  typeCopy = type;
  if (self)
  {
    v10.receiver = self;
    v10.super_class = _CPLSyncSessionPredictionType;
    v8 = objc_msgSendSuper2(&v10, sel_init);
    self = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 1, a2);
      objc_storeStrong(self + 2, type);
    }
  }

  return self;
}

@end