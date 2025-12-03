@interface _DPStringRecorder
- (BOOL)record:(id)record;
- (BOOL)record:(id)record metadata:(id)metadata;
- (id)description;
@end

@implementation _DPStringRecorder

- (BOOL)record:(id)record
{
  recordCopy = record;
  v5 = objc_autoreleasePoolPush();
  [(_DPDataRecorder *)self->_recorder recordStrings:recordCopy];
  objc_autoreleasePoolPop(v5);

  return 1;
}

- (BOOL)record:(id)record metadata:(id)metadata
{
  recordCopy = record;
  metadataCopy = metadata;
  v8 = objc_autoreleasePoolPush();
  [(_DPDataRecorder *)self->_recorder recordStrings:recordCopy metadata:metadataCopy];
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