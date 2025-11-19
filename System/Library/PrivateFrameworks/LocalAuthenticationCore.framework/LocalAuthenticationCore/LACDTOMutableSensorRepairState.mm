@interface LACDTOMutableSensorRepairState
+ (id)nullInstance;
- (BOOL)isEqual:(id)a3;
- (LACDTOMutableSensorRepairState)initWithFlag:(int64_t)a3;
- (NSString)description;
@end

@implementation LACDTOMutableSensorRepairState

- (LACDTOMutableSensorRepairState)initWithFlag:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = LACDTOMutableSensorRepairState;
  result = [(LACDTOMutableSensorRepairState *)&v5 init];
  if (result)
  {
    result->_repairFlag = a3;
  }

  return result;
}

+ (id)nullInstance
{
  v2 = objc_alloc_init(LACDTOMutableSensorRepairState);
  [(LACDTOMutableSensorRepairState *)v2 setRepairFlag:0];

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_1F26A1940])
  {
    v5 = v4;
    v6 = [(LACDTOMutableSensorRepairState *)self repairFlag];
    v7 = [v5 repairFlag];

    v8 = v6 == v7;
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
  v6 = [(LACDTOMutableSensorRepairState *)self repairFlag];
  if ((v6 - 1) > 2)
  {
    v7 = @"Unknown";
  }

  else
  {
    v7 = off_1E7A97700[v6 - 1];
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