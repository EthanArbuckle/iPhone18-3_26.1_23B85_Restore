@interface RTScenarioTrigger
+ (id)scenarioTriggerSettledStateToString:(unint64_t)a3;
+ (id)scenarioTriggerTypeToString:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (RTScenarioTrigger)init;
- (RTScenarioTrigger)initWithCoder:(id)a3;
- (RTScenarioTrigger)initWithType:(unint64_t)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTScenarioTrigger

+ (id)scenarioTriggerTypeToString:(unint64_t)a3
{
  if (a3 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E80B3D88[a3];
  }
}

+ (id)scenarioTriggerSettledStateToString:(unint64_t)a3
{
  v3 = @"Unknown";
  if (a3 == 2)
  {
    v3 = @"Settled";
  }

  if (a3 == 1)
  {
    return @"Unsettled";
  }

  else
  {
    return v3;
  }
}

- (void)encodeWithCoder:(id)a3
{
  v3 = MEMORY[0x1E696AD98];
  type = self->_type;
  v5 = a3;
  v6 = [v3 numberWithUnsignedInteger:type];
  [v5 encodeObject:v6 forKey:@"type"];
}

- (RTScenarioTrigger)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];

  v6 = [v5 unsignedIntegerValue];

  return [(RTScenarioTrigger *)self initWithType:v6];
}

- (RTScenarioTrigger)init
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  v2 = objc_opt_class();
  _RTRequireInitializer(v2, sel_initWithType_);
}

- (RTScenarioTrigger)initWithType:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = RTScenarioTrigger;
  result = [(RTScenarioTrigger *)&v5 init];
  if (result)
  {
    result->_type = a3;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [RTScenarioTrigger scenarioTriggerTypeToString:self->_type];
  v5 = [v3 stringWithFormat:@"RTScenarioTriggerType, %@ (%lu)", v4, self->_type];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v9 = 1;
  }

  else if (v4 && [(RTScenarioTrigger *)v4 isMemberOfClass:objc_opt_class()])
  {
    v6 = v5;
    v7 = [(RTScenarioTrigger *)self type];
    v8 = [(RTScenarioTrigger *)v6 type];

    v9 = v7 == v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [objc_opt_class() hash];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[RTScenarioTrigger type](self, "type")}];
  v5 = [v4 hash];

  return v5 ^ v3;
}

@end