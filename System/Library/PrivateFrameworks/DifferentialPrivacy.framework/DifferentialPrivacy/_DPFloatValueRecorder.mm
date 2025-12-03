@interface _DPFloatValueRecorder
- (BOOL)recordFloatVectors:(id)vectors;
- (BOOL)recordFloatVectors:(id)vectors metadata:(id)metadata;
- (id)description;
@end

@implementation _DPFloatValueRecorder

- (BOOL)recordFloatVectors:(id)vectors
{
  vectorsCopy = vectors;
  v5 = objc_autoreleasePoolPush();
  [(_DPDataRecorder *)self->_recorder recordFloatVectors:vectorsCopy];
  objc_autoreleasePoolPop(v5);

  return 1;
}

- (BOOL)recordFloatVectors:(id)vectors metadata:(id)metadata
{
  vectorsCopy = vectors;
  metadataCopy = metadata;
  v8 = objc_autoreleasePoolPush();
  [(_DPDataRecorder *)self->_recorder recordFloatVectors:vectorsCopy metadata:metadataCopy];
  objc_autoreleasePoolPop(v8);

  return 1;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@: { recorder=%@ }", v5, self->_recorder];

  return v6;
}

@end