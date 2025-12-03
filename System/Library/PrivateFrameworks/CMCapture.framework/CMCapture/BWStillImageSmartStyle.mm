@interface BWStillImageSmartStyle
- (BWStillImageSmartStyle)initWithSmartStyle:(id)style;
- (void)dealloc;
@end

@implementation BWStillImageSmartStyle

- (BWStillImageSmartStyle)initWithSmartStyle:(id)style
{
  v9.receiver = self;
  v9.super_class = BWStillImageSmartStyle;
  v4 = [(BWStillImageSmartStyle *)&v9 init];
  if (v4)
  {
    v4->_cast = [objc_msgSend(style "cast")];
    [style intensity];
    v4->_intensity = v5;
    [style toneBias];
    v4->_toneBias = v6;
    [style colorBias];
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