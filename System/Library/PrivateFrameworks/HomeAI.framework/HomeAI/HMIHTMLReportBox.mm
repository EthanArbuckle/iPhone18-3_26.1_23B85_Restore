@interface HMIHTMLReportBox
- (CGRect)boundingBox;
- (HMIHTMLReportBox)initWithBoundingBox:(CGRect)box text:(id)text color:(id)color opacity:(float)opacity value:(float)value;
@end

@implementation HMIHTMLReportBox

- (HMIHTMLReportBox)initWithBoundingBox:(CGRect)box text:(id)text color:(id)color opacity:(float)opacity value:(float)value
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  textCopy = text;
  colorCopy = color;
  v21.receiver = self;
  v21.super_class = HMIHTMLReportBox;
  v18 = [(HMIHTMLReportBox *)&v21 init];
  v19 = v18;
  if (v18)
  {
    v18->_boundingBox.origin.x = x;
    v18->_boundingBox.origin.y = y;
    v18->_boundingBox.size.width = width;
    v18->_boundingBox.size.height = height;
    objc_storeStrong(&v18->_text, text);
    objc_storeStrong(&v19->_color, color);
    v19->_opacity = opacity;
    v19->_value = value;
  }

  return v19;
}

- (CGRect)boundingBox
{
  objc_copyStruct(v6, &self->_boundingBox, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end