@interface _DPStringRecorder
- (BOOL)record:(id)a3;
- (BOOL)record:(id)a3 metadata:(id)a4;
- (id)description;
@end

@implementation _DPStringRecorder

- (BOOL)record:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  [(_DPDataRecorder *)self->_recorder recordStrings:v4];
  objc_autoreleasePoolPop(v5);

  return 1;
}

- (BOOL)record:(id)a3 metadata:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  [(_DPDataRecorder *)self->_recorder recordStrings:v6 metadata:v7];
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