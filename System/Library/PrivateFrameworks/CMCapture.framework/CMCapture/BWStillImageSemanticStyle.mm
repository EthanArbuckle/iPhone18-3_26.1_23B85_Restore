@interface BWStillImageSemanticStyle
- (BWStillImageSemanticStyle)initWithSemanticStyle:(id)style;
@end

@implementation BWStillImageSemanticStyle

- (BWStillImageSemanticStyle)initWithSemanticStyle:(id)style
{
  v8.receiver = self;
  v8.super_class = BWStillImageSemanticStyle;
  v4 = [(BWStillImageSemanticStyle *)&v8 init];
  if (v4)
  {
    [style mappedToneBias];
    v4->_toneBias = v5;
    [style mappedWarmthBias];
    v4->_warmthBias = v6;
  }

  return v4;
}

@end