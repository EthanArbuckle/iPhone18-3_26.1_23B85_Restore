@interface MTScheduledObject
+ (id)scheduledObjectForScheduleable:(id)scheduleable trigger:(id)trigger;
+ (unint64_t)scheduledTypeForTriggerType:(unint64_t)type;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToScheduledObject:(id)object;
- (MTScheduledObject)initWithScheduleable:(id)scheduleable trigger:(id)trigger;
- (NSString)description;
- (unint64_t)hash;
- (unint64_t)type;
@end

@implementation MTScheduledObject

+ (id)scheduledObjectForScheduleable:(id)scheduleable trigger:(id)trigger
{
  triggerCopy = trigger;
  scheduleableCopy = scheduleable;
  v8 = [[self alloc] initWithScheduleable:scheduleableCopy trigger:triggerCopy];

  return v8;
}

- (MTScheduledObject)initWithScheduleable:(id)scheduleable trigger:(id)trigger
{
  scheduleableCopy = scheduleable;
  triggerCopy = trigger;
  v14.receiver = self;
  v14.super_class = MTScheduledObject;
  v8 = [(MTScheduledObject *)&v14 init];
  if (v8)
  {
    v9 = [scheduleableCopy copy];
    scheduleable = v8->_scheduleable;
    v8->_scheduleable = v9;

    v11 = [triggerCopy copy];
    trigger = v8->_trigger;
    v8->_trigger = v11;
  }

  return v8;
}

- (unint64_t)type
{
  v3 = objc_opt_class();
  trigger = [(MTScheduledObject *)self trigger];
  v5 = [v3 scheduledTypeForTriggerType:{objc_msgSend(trigger, "triggerType")}];

  return v5;
}

+ (unint64_t)scheduledTypeForTriggerType:(unint64_t)type
{
  if (type - 2 > 6)
  {
    return 0;
  }

  else
  {
    return qword_1B20B8908[type - 2];
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  scheduleable = [(MTScheduledObject *)self scheduleable];
  trigger = [(MTScheduledObject *)self trigger];
  v7 = [v3 stringWithFormat:@"<%@:%p %@, Trigger: %@>", v4, self, scheduleable, trigger];

  return v7;
}

- (unint64_t)hash
{
  scheduleable = [(MTScheduledObject *)self scheduleable];
  v4 = [scheduleable hash];
  trigger = [(MTScheduledObject *)self trigger];
  v6 = [trigger hash];

  return v6 ^ v4;
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
    v8 = [(MTScheduledObject *)self isEqualToScheduledObject:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqualToScheduledObject:(id)object
{
  objectCopy = object;
  scheduleable = [objectCopy scheduleable];
  scheduleable2 = [(MTScheduledObject *)self scheduleable];
  if (scheduleable != scheduleable2)
  {
    scheduleable3 = [objectCopy scheduleable];
    scheduleable4 = [(MTScheduledObject *)self scheduleable];
    if (![scheduleable3 isEqual:scheduleable4])
    {
      v9 = 0;
LABEL_8:

      goto LABEL_9;
    }
  }

  trigger = [objectCopy trigger];
  trigger2 = [(MTScheduledObject *)self trigger];
  if (trigger == trigger2)
  {
    v9 = 1;
  }

  else
  {
    trigger3 = [objectCopy trigger];
    trigger4 = [(MTScheduledObject *)self trigger];
    v9 = [trigger3 isEqual:trigger4];
  }

  if (scheduleable != scheduleable2)
  {
    goto LABEL_8;
  }

LABEL_9:

  return v9;
}

@end