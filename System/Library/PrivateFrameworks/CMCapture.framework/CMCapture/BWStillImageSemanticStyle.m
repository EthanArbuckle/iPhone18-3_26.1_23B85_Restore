@interface BWStillImageSemanticStyle
- (BWStillImageSemanticStyle)initWithSemanticStyle:(id)a3;
@end

@implementation BWStillImageSemanticStyle

- (BWStillImageSemanticStyle)initWithSemanticStyle:(id)a3
{
  v8.receiver = self;
  v8.super_class = BWStillImageSemanticStyle;
  v4 = [(BWStillImageSemanticStyle *)&v8 init];
  if (v4)
  {
    [a3 mappedToneBias];
    v4->_toneBias = v5;
    [a3 mappedWarmthBias];
    v4->_warmthBias = v6;
  }

  return v4;
}

@end