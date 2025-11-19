@interface _DPWordRecorder
- (BOOL)record:(id)a3;
- (id)description;
@end

@implementation _DPWordRecorder

- (BOOL)record:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  [(_DPDataRecorder *)self->_recorder recordWords:v4];
  objc_autoreleasePoolPop(v5);

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