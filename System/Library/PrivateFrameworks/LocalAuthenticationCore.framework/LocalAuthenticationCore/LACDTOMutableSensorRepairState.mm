@interface LACDTOMutableSensorRepairState
+ (id)nullInstance;
- (BOOL)isEqual:(id)equal;
- (LACDTOMutableSensorRepairState)initWithFlag:(int64_t)flag;
- (NSString)description;
@end

@implementation LACDTOMutableSensorRepairState

- (LACDTOMutableSensorRepairState)initWithFlag:(int64_t)flag
{
  v5.receiver = self;
  v5.super_class = LACDTOMutableSensorRepairState;
  result = [(LACDTOMutableSensorRepairState *)&v5 init];
  if (result)
  {
    result->_repairFlag = flag;
  }

  return result;
}

+ (id)nullInstance
{
  v2 = objc_alloc_init(LACDTOMutableSensorRepairState);
  [(LACDTOMutableSensorRepairState *)v2 setRepairFlag:0];

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy conformsToProtocol:&unk_1F26A1940])
  {
    v5 = equalCopy;
    repairFlag = [(LACDTOMutableSensorRepairState *)self repairFlag];
    repairFlag2 = [v5 repairFlag];

    v8 = repairFlag == repairFlag2;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)description
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = MEMORY[0x1E696AEC0];
  repairFlag = [(LACDTOMutableSensorRepairState *)self repairFlag];
  if ((repairFlag - 1) > 2)
  {
    v7 = @"Unknown";
  }

  else
  {
    v7 = off_1E7A97700[repairFlag - 1];
  }

  v8 = [v5 stringWithFormat:@"repairFlag: %@", v7];
  v14[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v10 = [v9 componentsJoinedByString:@" "];;
  v11 = [v3 stringWithFormat:@"<%@ %p %@>", v4, self, v10];;

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

@end