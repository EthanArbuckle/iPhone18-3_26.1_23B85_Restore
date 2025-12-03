@interface MTTrigger
+ (MTTrigger)triggerWithDate:(id)date triggerType:(unint64_t)type;
+ (id)_stringForType:(unint64_t)type;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTrigger:(id)trigger;
- (BOOL)isForAlert;
- (BOOL)isForSnooze;
- (BOOL)isScheduled;
- (MTTrigger)initWithCoder:(id)coder;
- (MTTrigger)initWithDate:(id)date type:(unint64_t)type;
- (MTTrigger)initWithDate:(id)date type:(unint64_t)type isPastOverrideEvent:(BOOL)event;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MTTrigger

+ (MTTrigger)triggerWithDate:(id)date triggerType:(unint64_t)type
{
  dateCopy = date;
  v7 = [[self alloc] initWithDate:dateCopy type:type];

  return v7;
}

- (MTTrigger)initWithDate:(id)date type:(unint64_t)type isPastOverrideEvent:(BOOL)event
{
  dateCopy = date;
  v13.receiver = self;
  v13.super_class = MTTrigger;
  v9 = [(MTTrigger *)&v13 init];
  if (v9)
  {
    v10 = [dateCopy copy];
    triggerDate = v9->_triggerDate;
    v9->_triggerDate = v10;

    v9->_triggerType = type;
    v9->_isPastOverrideEvent = event;
  }

  return v9;
}

- (MTTrigger)initWithDate:(id)date type:(unint64_t)type
{
  dateCopy = date;
  v11.receiver = self;
  v11.super_class = MTTrigger;
  v7 = [(MTTrigger *)&v11 init];
  if (v7)
  {
    v8 = [dateCopy copy];
    triggerDate = v7->_triggerDate;
    v7->_triggerDate = v8;

    v7->_triggerType = type;
  }

  return v7;
}

- (unint64_t)hash
{
  triggerDate = [(MTTrigger *)self triggerDate];
  v4 = [triggerDate hash];
  triggerType = [(MTTrigger *)self triggerType];

  return triggerType ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = equalCopy;
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

- (BOOL)isEqualToTrigger:(id)trigger
{
  triggerCopy = trigger;
  triggerType = [(MTTrigger *)self triggerType];
  if (triggerType == [triggerCopy triggerType])
  {
    triggerDate = [(MTTrigger *)self triggerDate];
    triggerDate2 = [triggerCopy triggerDate];
    if (triggerDate == triggerDate2)
    {
      v10 = 1;
    }

    else
    {
      triggerDate3 = [(MTTrigger *)self triggerDate];
      triggerDate4 = [triggerCopy triggerDate];
      v10 = [triggerDate3 isEqual:triggerDate4];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (MTTrigger)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MTTrigger;
  v5 = [(MTTrigger *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTTriggerType"];
    v5->_triggerType = [v6 unsignedIntegerValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTTriggerDate"];
    v8 = [v7 copy];
    triggerDate = v5->_triggerDate;
    v5->_triggerDate = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  coderCopy = coder;
  v6 = [v4 numberWithUnsignedInteger:{-[MTTrigger triggerType](self, "triggerType")}];
  [coderCopy encodeObject:v6 forKey:@"MTTriggerType"];

  triggerDate = [(MTTrigger *)self triggerDate];
  [coderCopy encodeObject:triggerDate forKey:@"MTTriggerDate"];
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  triggerDate = [(MTTrigger *)self triggerDate];
  triggerDate2 = [compareCopy triggerDate];

  v7 = [triggerDate compare:triggerDate2];
  return v7;
}

- (BOOL)isForSnooze
{
  triggerType = [(MTTrigger *)self triggerType];
  if (triggerType != 1)
  {
    LOBYTE(triggerType) = [(MTTrigger *)self triggerType]== 3 || [(MTTrigger *)self triggerType]== 5;
  }

  return triggerType;
}

- (BOOL)isForAlert
{
  if (![(MTTrigger *)self triggerType])
  {
LABEL_4:
    LOBYTE(triggerType) = 1;
    return triggerType;
  }

  triggerType = [(MTTrigger *)self triggerType];
  if (triggerType != 1)
  {
    if ([(MTTrigger *)self triggerType]!= 4)
    {
      LOBYTE(triggerType) = [(MTTrigger *)self triggerType]== 5;
      return triggerType;
    }

    goto LABEL_4;
  }

  return triggerType;
}

- (BOOL)isScheduled
{
  if ([(MTTrigger *)self isForGoToBed]|| [(MTTrigger *)self isForAlert])
  {
    return 1;
  }

  return [(MTTrigger *)self isEvent];
}

+ (id)_stringForType:(unint64_t)type
{
  if (type > 8)
  {
    return 0;
  }

  else
  {
    return off_1E7B0FFA8[type];
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(MTTrigger *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(MTTrigger *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = [MEMORY[0x1E698E680] builderWithObject:self];
  v5 = [objc_opt_class() _stringForType:{-[MTTrigger triggerType](self, "triggerType")}];
  [v4 appendString:v5 withName:@"trigger"];

  triggerDate = [(MTTrigger *)self triggerDate];
  mtDescription = [triggerDate mtDescription];
  [v4 appendString:mtDescription withName:@"date"];

  v8 = [v4 appendBool:-[MTTrigger isPastOverrideEvent](self withName:"isPastOverrideEvent") ifEqualTo:{@"isPastOverride", 1}];

  return v4;
}

@end