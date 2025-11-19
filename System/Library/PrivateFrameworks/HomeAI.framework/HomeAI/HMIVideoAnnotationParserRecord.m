@interface HMIVideoAnnotationParserRecord
- (CGRect)boundingBox;
- (HMIVideoAnnotationParserRecord)initWithBoundingBox:(CGRect)a3 timeStamp:(double)a4;
@end

@implementation HMIVideoAnnotationParserRecord

- (HMIVideoAnnotationParserRecord)initWithBoundingBox:(CGRect)a3 timeStamp:(double)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10.receiver = self;
  v10.super_class = HMIVideoAnnotationParserRecord;
  result = [(HMIVideoAnnotationParserRecord *)&v10 init];
  if (result)
  {
    result->_boundingBox.origin.y = y;
    result->_boundingBox.size.width = width;
    result->_boundingBox.size.height = height;
    result->_timeStamp = a4;
    result->_boundingBox.origin.x = x;
  }

  return result;
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