@interface HMIHTMLReportBox
- (CGRect)boundingBox;
- (HMIHTMLReportBox)initWithBoundingBox:(CGRect)a3 text:(id)a4 color:(id)a5 opacity:(float)a6 value:(float)a7;
@end

@implementation HMIHTMLReportBox

- (HMIHTMLReportBox)initWithBoundingBox:(CGRect)a3 text:(id)a4 color:(id)a5 opacity:(float)a6 value:(float)a7
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v16 = a4;
  v17 = a5;
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
    objc_storeStrong(&v18->_text, a4);
    objc_storeStrong(&v19->_color, a5);
    v19->_opacity = a6;
    v19->_value = a7;
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