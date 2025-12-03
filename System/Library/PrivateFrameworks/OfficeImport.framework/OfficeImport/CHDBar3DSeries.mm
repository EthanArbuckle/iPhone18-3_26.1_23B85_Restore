@interface CHDBar3DSeries
- (CHDBar3DSeries)init;
- (id)shallowCopy;
@end

@implementation CHDBar3DSeries

- (id)shallowCopy
{
  v5.receiver = self;
  v5.super_class = CHDBar3DSeries;
  shallowCopy = [(CHDSeries *)&v5 shallowCopy];
  [shallowCopy setShapeType:*(&self->super.mHiddenFlag + 3)];

  return shallowCopy;
}

- (CHDBar3DSeries)init
{
  v3.receiver = self;
  v3.super_class = CHDBar3DSeries;
  result = [(CHDBar3DSeries *)&v3 init];
  if (result)
  {
    *(&result->super.mHiddenFlag + 3) = 0;
  }

  return result;
}

@end