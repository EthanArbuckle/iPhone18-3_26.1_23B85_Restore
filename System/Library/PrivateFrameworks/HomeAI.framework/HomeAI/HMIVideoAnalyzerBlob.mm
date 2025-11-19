@interface HMIVideoAnalyzerBlob
- (CGRect)boundingBox;
- (HMIVideoAnalyzerBlob)initWithBoundingBox:(CGRect)a3 timeStamp:(id *)a4 blobArea:(float)a5 blobID:(unsigned __int16)a6;
@end

@implementation HMIVideoAnalyzerBlob

- (HMIVideoAnalyzerBlob)initWithBoundingBox:(CGRect)a3 timeStamp:(id *)a4 blobArea:(float)a5 blobID:(unsigned __int16)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v15.receiver = self;
  v15.super_class = HMIVideoAnalyzerBlob;
  result = [(HMIVideoAnalyzerBlob *)&v15 init];
  if (result)
  {
    result->_boundingBox.origin.x = x;
    result->_boundingBox.origin.y = y;
    result->_boundingBox.size.width = width;
    result->_boundingBox.size.height = height;
    v14 = *&a4->var0;
    result->_timeStamp.epoch = a4->var3;
    *&result->_timeStamp.value = v14;
    result->_blobArea = a5;
    result->_blobID = a6;
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