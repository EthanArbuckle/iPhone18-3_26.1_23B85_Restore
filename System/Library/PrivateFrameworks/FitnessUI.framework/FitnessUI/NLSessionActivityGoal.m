@interface NLSessionActivityGoal
+ (id)goalWithGoalTypeIdentifier:(unint64_t)a3 value:(id)a4 requiredDistance:(id)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToNLSessionActivityGoal:(id)a3;
- (NLSessionActivityGoal)initWithCoder:(id)a3;
- (NLSessionActivityGoal)initWithGoalTypeIdentifier:(unint64_t)a3 value:(id)a4 requiredDistance:(id)a5;
- (double)doubleValue;
- (id)_quantityForDoubleValue:(double)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setRequiredDistance:(id)a3;
@end

@implementation NLSessionActivityGoal

- (NLSessionActivityGoal)initWithGoalTypeIdentifier:(unint64_t)a3 value:(id)a4 requiredDistance:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = NLSessionActivityGoal;
  v11 = [(NLSessionActivityGoal *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_goalTypeIdentifier = a3;
    objc_storeStrong(&v11->_value, a4);
    if (v10)
    {
      [(NLSessionActivityGoal *)v12 setRequiredDistance:v10];
    }
  }

  return v12;
}

- (double)doubleValue
{
  v3 = [(NLSessionActivityGoal *)self goalTypeIdentifier];
  if (v3 == 1)
  {
    value = self->_value;
    v6 = [MEMORY[0x1E696C510] meterUnit];
    goto LABEL_7;
  }

  if (v3 == 2)
  {
    value = self->_value;
    v6 = [MEMORY[0x1E696C510] secondUnit];
    goto LABEL_7;
  }

  v4 = 0.0;
  if (v3 == 3)
  {
    value = self->_value;
    v6 = [MEMORY[0x1E696C510] kilocalorieUnit];
LABEL_7:
    v7 = v6;
    [(HKQuantity *)value doubleValueForUnit:v6];
    v4 = v8;
  }

  return v4;
}

- (id)_quantityForDoubleValue:(double)a3
{
  goalTypeIdentifier = self->_goalTypeIdentifier;
  switch(goalTypeIdentifier)
  {
    case 1uLL:
      v5 = MEMORY[0x1E696C348];
      v6 = [MEMORY[0x1E696C510] meterUnit];
      goto LABEL_7;
    case 2uLL:
      v5 = MEMORY[0x1E696C348];
      v6 = [MEMORY[0x1E696C510] secondUnit];
      goto LABEL_7;
    case 3uLL:
      v5 = MEMORY[0x1E696C348];
      v6 = [MEMORY[0x1E696C510] kilocalorieUnit];
LABEL_7:
      v7 = v6;
      v8 = [v5 quantityWithUnit:v6 doubleValue:a3];

      goto LABEL_9;
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeInteger:self->_goalTypeIdentifier forKey:@"NLSessionActivityGoalGoalTypeIdentifier"];
  [(NLSessionActivityGoal *)self doubleValue];
  [v5 encodeDouble:@"NLSessionActivityGoalValue" forKey:?];
  [v5 encodeObject:self->_value forKey:@"NLSessionActivityGoalQuantity"];
  requiredDistance = self->_requiredDistance;
  if (requiredDistance)
  {
    [v5 encodeObject:requiredDistance forKey:@"NLSessionActivityGoalRequiredDistance"];
  }
}

- (NLSessionActivityGoal)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = NLSessionActivityGoal;
  v5 = [(NLSessionActivityGoal *)&v10 init];
  if (v5)
  {
    -[NLSessionActivityGoal setGoalTypeIdentifier:](v5, "setGoalTypeIdentifier:", [v4 decodeIntegerForKey:@"NLSessionActivityGoalGoalTypeIdentifier"]);
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"NLSessionActivityGoalQuantity"];
    if (v6)
    {
      [(NLSessionActivityGoal *)v5 setValue:v6];
    }

    else
    {
      [v4 decodeDoubleForKey:@"NLSessionActivityGoalValue"];
      v7 = [(NLSessionActivityGoal *)v5 _quantityForDoubleValue:?];
      [(NLSessionActivityGoal *)v5 setValue:v7];
    }

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"NLSessionActivityGoalRequiredDistance"];
    if (v8)
    {
      [(NLSessionActivityGoal *)v5 setRequiredDistance:v8];
    }
  }

  return v5;
}

+ (id)goalWithGoalTypeIdentifier:(unint64_t)a3 value:(id)a4 requiredDistance:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [[a1 alloc] initWithGoalTypeIdentifier:a3 value:v9 requiredDistance:v8];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NLSessionActivityGoal *)self isEqualToNLSessionActivityGoal:v4];
  }

  return v5;
}

- (BOOL)isEqualToNLSessionActivityGoal:(id)a3
{
  v6 = a3;
  v7 = [v6 goalTypeIdentifier];
  if (v7 == [(NLSessionActivityGoal *)self goalTypeIdentifier])
  {
    v8 = [v6 value];
    v9 = [(NLSessionActivityGoal *)self value];
    if (v8 == v9 || ([v6 value], v3 = objc_claimAutoreleasedReturnValue(), -[NLSessionActivityGoal value](self, "value"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqual:", v4)))
    {
      v11 = [v6 requiredDistance];
      v12 = [(NLSessionActivityGoal *)self requiredDistance];
      v13 = v12;
      if (v11 == v12)
      {

        v10 = 1;
      }

      else
      {
        v14 = [v6 requiredDistance];
        v15 = [(NLSessionActivityGoal *)self requiredDistance];
        v10 = [v14 isEqual:v15];
      }

      if (v8 == v9)
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
  v3 = [(NLSessionActivityGoal *)self value];
  v4 = [v3 hash];

  v5 = [(NLSessionActivityGoal *)self requiredDistance];
  v6 = [v5 hash];

  return v6 ^ v4 ^ self->_goalTypeIdentifier;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [NLSessionActivityGoal alloc];
  v5 = [(NLSessionActivityGoal *)self goalTypeIdentifier];
  v6 = [(NLSessionActivityGoal *)self value];
  v7 = [(NLSessionActivityGoal *)self requiredDistance];
  v8 = [(NLSessionActivityGoal *)v4 initWithGoalTypeIdentifier:v5 value:v6 requiredDistance:v7];

  return v8;
}

- (void)setRequiredDistance:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696C510] meterUnit];
  [(HKQuantity *)v4 doubleValueForUnit:v5];
  v7 = v6;

  if (v7 <= 0.0)
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Invalid unit type. Expected HKQuantity of unit distance." userInfo:0];
    objc_exception_throw(v9);
  }

  requiredDistance = self->_requiredDistance;
  self->_requiredDistance = v4;
}

@end