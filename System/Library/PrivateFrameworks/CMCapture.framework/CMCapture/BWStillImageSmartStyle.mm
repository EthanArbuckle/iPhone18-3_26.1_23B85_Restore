@interface BWStillImageSmartStyle
- (BWStillImageSmartStyle)initWithSmartStyle:(id)a3;
- (void)dealloc;
@end

@implementation BWStillImageSmartStyle

- (BWStillImageSmartStyle)initWithSmartStyle:(id)a3
{
  v9.receiver = self;
  v9.super_class = BWStillImageSmartStyle;
  v4 = [(BWStillImageSmartStyle *)&v9 init];
  if (v4)
  {
    v4->_cast = [objc_msgSend(a3 "cast")];
    [a3 intensity];
    v4->_intensity = v5;
    [a3 toneBias];
    v4->_toneBias = v6;
    [a3 colorBias];
    v4->_colorBias = v7;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWStillImageSmartStyle;
  [(BWStillImageSmartStyle *)&v3 dealloc];
}

@end