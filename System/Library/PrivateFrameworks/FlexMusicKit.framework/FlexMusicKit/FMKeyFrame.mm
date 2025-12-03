@interface FMKeyFrame
- (FMKeyFrame)initWithValue:(float)value atTime:(int64_t)time;
- (id)description;
@end

@implementation FMKeyFrame

- (FMKeyFrame)initWithValue:(float)value atTime:(int64_t)time
{
  v7.receiver = self;
  v7.super_class = FMKeyFrame;
  result = [(FMKeyFrame *)&v7 init];
  if (result)
  {
    result->_value = value;
    result->_sampleTime = time;
  }

  return result;
}

- (id)description
{
  v6 = MEMORY[0x277CCACA8];
  v7 = objc_msgSend_sampleTime(self, a2, v2, v3, v4);
  objc_msgSend_value(self, v8, v9, v10, v11);
  return objc_msgSend_stringWithFormat_(v6, v13, @"t = %d value = %f", v14, v15, v7, v12);
}

@end