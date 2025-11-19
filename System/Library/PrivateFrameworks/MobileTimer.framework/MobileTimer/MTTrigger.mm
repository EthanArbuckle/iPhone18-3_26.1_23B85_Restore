@interface MTTrigger
+ (MTTrigger)triggerWithDate:(id)a3 triggerType:(unint64_t)a4;
+ (id)_stringForType:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToTrigger:(id)a3;
- (BOOL)isForAlert;
- (BOOL)isForSnooze;
- (BOOL)isScheduled;
- (MTTrigger)initWithCoder:(id)a3;
- (MTTrigger)initWithDate:(id)a3 type:(unint64_t)a4;
- (MTTrigger)initWithDate:(id)a3 type:(unint64_t)a4 isPastOverrideEvent:(BOOL)a5;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MTTrigger

+ (MTTrigger)triggerWithDate:(id)a3 triggerType:(unint64_t)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithDate:v6 type:a4];

  return v7;
}

- (MTTrigger)initWithDate:(id)a3 type:(unint64_t)a4 isPastOverrideEvent:(BOOL)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = MTTrigger;
  v9 = [(MTTrigger *)&v13 init];
  if (v9)
  {
    v10 = [v8 copy];
    triggerDate = v9->_triggerDate;
    v9->_triggerDate = v10;

    v9->_triggerType = a4;
    v9->_isPastOverrideEvent = a5;
  }

  return v9;
}

- (MTTrigger)initWithDate:(id)a3 type:(unint64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = MTTrigger;
  v7 = [(MTTrigger *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    triggerDate = v7->_triggerDate;
    v7->_triggerDate = v8;

    v7->_triggerType = a4;
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = [(MTTrigger *)self triggerDate];
  v4 = [v3 hash];
  v5 = [(MTTrigger *)self triggerType];

  return v5 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [(MTTrigger *)self isEqualToTrigger:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqualToTrigger:(id)a3
{
  v4 = a3;
  v5 = [(MTTrigger *)self triggerType];
  if (v5 == [v4 triggerType])
  {
    v6 = [(MTTrigger *)self triggerDate];
    v7 = [v4 triggerDate];
    if (v6 == v7)
    {
      v10 = 1;
    }

    else
    {
      v8 = [(MTTrigger *)self triggerDate];
      v9 = [v4 triggerDate];
      v10 = [v8 isEqual:v9];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (MTTrigger)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MTTrigger;
  v5 = [(MTTrigger *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTTriggerType"];
    v5->_triggerType = [v6 unsignedIntegerValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTTriggerDate"];
    v8 = [v7 copy];
    triggerDate = v5->_triggerDate;
    v5->_triggerDate = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  v6 = [v4 numberWithUnsignedInteger:{-[MTTrigger triggerType](self, "triggerType")}];
  [v5 encodeObject:v6 forKey:@"MTTriggerType"];

  v7 = [(MTTrigger *)self triggerDate];
  [v5 encodeObject:v7 forKey:@"MTTriggerDate"];
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(MTTrigger *)self triggerDate];
  v6 = [v4 triggerDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (BOOL)isForSnooze
{
  v3 = [(MTTrigger *)self triggerType];
  if (v3 != 1)
  {
    LOBYTE(v3) = [(MTTrigger *)self triggerType]== 3 || [(MTTrigger *)self triggerType]== 5;
  }

  return v3;
}

- (BOOL)isForAlert
{
  if (![(MTTrigger *)self triggerType])
  {
LABEL_4:
    LOBYTE(v3) = 1;
    return v3;
  }

  v3 = [(MTTrigger *)self triggerType];
  if (v3 != 1)
  {
    if ([(MTTrigger *)self triggerType]!= 4)
    {
      LOBYTE(v3) = [(MTTrigger *)self triggerType]== 5;
      return v3;
    }

    goto LABEL_4;
  }

  return v3;
}

- (BOOL)isScheduled
{
  if ([(MTTrigger *)self isForGoToBed]|| [(MTTrigger *)self isForAlert])
  {
    return 1;
  }

  return [(MTTrigger *)self isEvent];
}

+ (id)_stringForType:(unint64_t)a3
{
  if (a3 > 8)
  {
    return 0;
  }

  else
  {
    return off_1E7B0FFA8[a3];
  }
}

- (id)succinctDescription
{
  v2 = [(MTTrigger *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(MTTrigger *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [MEMORY[0x1E698E680] builderWithObject:self];
  v5 = [objc_opt_class() _stringForType:{-[MTTrigger triggerType](self, "triggerType")}];
  [v4 appendString:v5 withName:@"trigger"];

  v6 = [(MTTrigger *)self triggerDate];
  v7 = [v6 mtDescription];
  [v4 appendString:v7 withName:@"date"];

  v8 = [v4 appendBool:-[MTTrigger isPastOverrideEvent](self withName:"isPastOverrideEvent") ifEqualTo:{@"isPastOverride", 1}];

  return v4;
}

@end