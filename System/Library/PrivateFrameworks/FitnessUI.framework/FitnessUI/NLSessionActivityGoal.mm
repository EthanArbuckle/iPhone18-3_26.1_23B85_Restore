@interface NLSessionActivityGoal
+ (id)goalWithGoalTypeIdentifier:(unint64_t)identifier value:(id)value requiredDistance:(id)distance;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToNLSessionActivityGoal:(id)goal;
- (NLSessionActivityGoal)initWithCoder:(id)coder;
- (NLSessionActivityGoal)initWithGoalTypeIdentifier:(unint64_t)identifier value:(id)value requiredDistance:(id)distance;
- (double)doubleValue;
- (id)_quantityForDoubleValue:(double)value;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setRequiredDistance:(id)distance;
@end

@implementation NLSessionActivityGoal

- (NLSessionActivityGoal)initWithGoalTypeIdentifier:(unint64_t)identifier value:(id)value requiredDistance:(id)distance
{
  valueCopy = value;
  distanceCopy = distance;
  v14.receiver = self;
  v14.super_class = NLSessionActivityGoal;
  v11 = [(NLSessionActivityGoal *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_goalTypeIdentifier = identifier;
    objc_storeStrong(&v11->_value, value);
    if (distanceCopy)
    {
      [(NLSessionActivityGoal *)v12 setRequiredDistance:distanceCopy];
    }
  }

  return v12;
}

- (double)doubleValue
{
  goalTypeIdentifier = [(NLSessionActivityGoal *)self goalTypeIdentifier];
  if (goalTypeIdentifier == 1)
  {
    value = self->_value;
    meterUnit = [MEMORY[0x1E696C510] meterUnit];
    goto LABEL_7;
  }

  if (goalTypeIdentifier == 2)
  {
    value = self->_value;
    meterUnit = [MEMORY[0x1E696C510] secondUnit];
    goto LABEL_7;
  }

  v4 = 0.0;
  if (goalTypeIdentifier == 3)
  {
    value = self->_value;
    meterUnit = [MEMORY[0x1E696C510] kilocalorieUnit];
LABEL_7:
    v7 = meterUnit;
    [(HKQuantity *)value doubleValueForUnit:meterUnit];
    v4 = v8;
  }

  return v4;
}

- (id)_quantityForDoubleValue:(double)value
{
  goalTypeIdentifier = self->_goalTypeIdentifier;
  switch(goalTypeIdentifier)
  {
    case 1uLL:
      v5 = MEMORY[0x1E696C348];
      meterUnit = [MEMORY[0x1E696C510] meterUnit];
      goto LABEL_7;
    case 2uLL:
      v5 = MEMORY[0x1E696C348];
      meterUnit = [MEMORY[0x1E696C510] secondUnit];
      goto LABEL_7;
    case 3uLL:
      v5 = MEMORY[0x1E696C348];
      meterUnit = [MEMORY[0x1E696C510] kilocalorieUnit];
LABEL_7:
      v7 = meterUnit;
      v8 = [v5 quantityWithUnit:meterUnit doubleValue:value];

      goto LABEL_9;
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:self->_goalTypeIdentifier forKey:@"NLSessionActivityGoalGoalTypeIdentifier"];
  [(NLSessionActivityGoal *)self doubleValue];
  [coderCopy encodeDouble:@"NLSessionActivityGoalValue" forKey:?];
  [coderCopy encodeObject:self->_value forKey:@"NLSessionActivityGoalQuantity"];
  requiredDistance = self->_requiredDistance;
  if (requiredDistance)
  {
    [coderCopy encodeObject:requiredDistance forKey:@"NLSessionActivityGoalRequiredDistance"];
  }
}

- (NLSessionActivityGoal)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = NLSessionActivityGoal;
  v5 = [(NLSessionActivityGoal *)&v10 init];
  if (v5)
  {
    -[NLSessionActivityGoal setGoalTypeIdentifier:](v5, "setGoalTypeIdentifier:", [coderCopy decodeIntegerForKey:@"NLSessionActivityGoalGoalTypeIdentifier"]);
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"NLSessionActivityGoalQuantity"];
    if (v6)
    {
      [(NLSessionActivityGoal *)v5 setValue:v6];
    }

    else
    {
      [coderCopy decodeDoubleForKey:@"NLSessionActivityGoalValue"];
      v7 = [(NLSessionActivityGoal *)v5 _quantityForDoubleValue:?];
      [(NLSessionActivityGoal *)v5 setValue:v7];
    }

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"NLSessionActivityGoalRequiredDistance"];
    if (v8)
    {
      [(NLSessionActivityGoal *)v5 setRequiredDistance:v8];
    }
  }

  return v5;
}

+ (id)goalWithGoalTypeIdentifier:(unint64_t)identifier value:(id)value requiredDistance:(id)distance
{
  distanceCopy = distance;
  valueCopy = value;
  v10 = [[self alloc] initWithGoalTypeIdentifier:identifier value:valueCopy requiredDistance:distanceCopy];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NLSessionActivityGoal *)self isEqualToNLSessionActivityGoal:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToNLSessionActivityGoal:(id)goal
{
  goalCopy = goal;
  goalTypeIdentifier = [goalCopy goalTypeIdentifier];
  if (goalTypeIdentifier == [(NLSessionActivityGoal *)self goalTypeIdentifier])
  {
    value = [goalCopy value];
    value2 = [(NLSessionActivityGoal *)self value];
    if (value == value2 || ([goalCopy value], v3 = objc_claimAutoreleasedReturnValue(), -[NLSessionActivityGoal value](self, "value"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqual:", v4)))
    {
      requiredDistance = [goalCopy requiredDistance];
      requiredDistance2 = [(NLSessionActivityGoal *)self requiredDistance];
      v13 = requiredDistance2;
      if (requiredDistance == requiredDistance2)
      {

        v10 = 1;
      }

      else
      {
        requiredDistance3 = [goalCopy requiredDistance];
        requiredDistance4 = [(NLSessionActivityGoal *)self requiredDistance];
        v10 = [requiredDistance3 isEqual:requiredDistance4];
      }

      if (value == value2)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v10 = 0;
    }

LABEL_11:
    goto LABEL_12;
  }

  v10 = 0;
LABEL_12:

  return v10;
}

- (unint64_t)hash
{
  value = [(NLSessionActivityGoal *)self value];
  v4 = [value hash];

  requiredDistance = [(NLSessionActivityGoal *)self requiredDistance];
  v6 = [requiredDistance hash];

  return v6 ^ v4 ^ self->_goalTypeIdentifier;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [NLSessionActivityGoal alloc];
  goalTypeIdentifier = [(NLSessionActivityGoal *)self goalTypeIdentifier];
  value = [(NLSessionActivityGoal *)self value];
  requiredDistance = [(NLSessionActivityGoal *)self requiredDistance];
  v8 = [(NLSessionActivityGoal *)v4 initWithGoalTypeIdentifier:goalTypeIdentifier value:value requiredDistance:requiredDistance];

  return v8;
}

- (void)setRequiredDistance:(id)distance
{
  distanceCopy = distance;
  meterUnit = [MEMORY[0x1E696C510] meterUnit];
  [(HKQuantity *)distanceCopy doubleValueForUnit:meterUnit];
  v7 = v6;

  if (v7 <= 0.0)
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Invalid unit type. Expected HKQuantity of unit distance." userInfo:0];
    objc_exception_throw(v9);
  }

  requiredDistance = self->_requiredDistance;
  self->_requiredDistance = distanceCopy;
}

@end