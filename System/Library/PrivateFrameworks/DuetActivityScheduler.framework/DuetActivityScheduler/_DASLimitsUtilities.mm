@interface _DASLimitsUtilities
+ (int64_t)bitmaskForLimitationName:(id)name;
@end

@implementation _DASLimitsUtilities

+ (int64_t)bitmaskForLimitationName:(id)name
{
  v11[4] = *MEMORY[0x1E69E9840];
  v10[0] = @"Configuration";
  v10[1] = @"ActivityRate";
  v11[0] = &unk_1F2ED4988;
  v11[1] = &unk_1F2ED49A0;
  v10[2] = @"ProcessRate";
  v10[3] = @"Runtime";
  v11[2] = &unk_1F2ED49B8;
  v11[3] = &unk_1F2ED49D0;
  v3 = MEMORY[0x1E695DF20];
  nameCopy = name;
  v5 = [v3 dictionaryWithObjects:v11 forKeys:v10 count:4];
  v6 = [v5 objectForKeyedSubscript:nameCopy];

  if (v6)
  {
    v7 = 1 << [v6 unsignedIntegerValue];
  }

  else
  {
    v7 = -1;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

@end