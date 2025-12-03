@interface RTScenarioTrigger
+ (id)scenarioTriggerSettledStateToString:(unint64_t)string;
+ (id)scenarioTriggerTypeToString:(unint64_t)string;
- (BOOL)isEqual:(id)equal;
- (RTScenarioTrigger)init;
- (RTScenarioTrigger)initWithCoder:(id)coder;
- (RTScenarioTrigger)initWithType:(unint64_t)type;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTScenarioTrigger

+ (id)scenarioTriggerTypeToString:(unint64_t)string
{
  if (string > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E80B3D88[string];
  }
}

+ (id)scenarioTriggerSettledStateToString:(unint64_t)string
{
  v3 = @"Unknown";
  if (string == 2)
  {
    v3 = @"Settled";
  }

  if (string == 1)
  {
    return @"Unsettled";
  }

  else
  {
    return v3;
  }
}

- (void)encodeWithCoder:(id)coder
{
  v3 = MEMORY[0x1E696AD98];
  type = self->_type;
  coderCopy = coder;
  v6 = [v3 numberWithUnsignedInteger:type];
  [coderCopy encodeObject:v6 forKey:@"type"];
}

- (RTScenarioTrigger)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];

  unsignedIntegerValue = [v5 unsignedIntegerValue];

  return [(RTScenarioTrigger *)self initWithType:unsignedIntegerValue];
}

- (RTScenarioTrigger)init
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  v2 = objc_opt_class();
  _RTRequireInitializer(v2, sel_initWithType_);
}

- (RTScenarioTrigger)initWithType:(unint64_t)type
{
  v5.receiver = self;
  v5.super_class = RTScenarioTrigger;
  result = [(RTScenarioTrigger *)&v5 init];
  if (result)
  {
    result->_type = type;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else if (equalCopy && [(RTScenarioTrigger *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v6 = v5;
    type = [(RTScenarioTrigger *)self type];
    type2 = [(RTScenarioTrigger *)v6 type];

    v9 = type == type2;
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