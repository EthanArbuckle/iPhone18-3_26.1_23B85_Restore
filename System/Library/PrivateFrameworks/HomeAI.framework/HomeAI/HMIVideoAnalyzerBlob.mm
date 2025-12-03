@interface HMIVideoAnalyzerBlob
- (CGRect)boundingBox;
- (HMIVideoAnalyzerBlob)initWithBoundingBox:(CGRect)box timeStamp:(id *)stamp blobArea:(float)area blobID:(unsigned __int16)d;
@end

@implementation HMIVideoAnalyzerBlob

- (HMIVideoAnalyzerBlob)initWithBoundingBox:(CGRect)box timeStamp:(id *)stamp blobArea:(float)area blobID:(unsigned __int16)d
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  v15.receiver = self;
  v15.super_class = HMIVideoAnalyzerBlob;
  result = [(HMIVideoAnalyzerBlob *)&v15 init];
  if (result)
  {
    result->_boundingBox.origin.x = x;
    result->_boundingBox.origin.y = y;
    result->_boundingBox.size.width = width;
    result->_boundingBox.size.height = height;
    v14 = *&stamp->var0;
    result->_timeStamp.epoch = stamp->var3;
    *&result->_timeStamp.value = v14;
    result->_blobArea = area;
    result->_blobID = d;
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