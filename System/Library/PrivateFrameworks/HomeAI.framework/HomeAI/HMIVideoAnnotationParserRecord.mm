@interface HMIVideoAnnotationParserRecord
- (CGRect)boundingBox;
- (HMIVideoAnnotationParserRecord)initWithBoundingBox:(CGRect)box timeStamp:(double)stamp;
@end

@implementation HMIVideoAnnotationParserRecord

- (HMIVideoAnnotationParserRecord)initWithBoundingBox:(CGRect)box timeStamp:(double)stamp
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  v10.receiver = self;
  v10.super_class = HMIVideoAnnotationParserRecord;
  result = [(HMIVideoAnnotationParserRecord *)&v10 init];
  if (result)
  {
    result->_boundingBox.origin.y = y;
    result->_boundingBox.size.width = width;
    result->_boundingBox.size.height = height;
    result->_timeStamp = stamp;
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