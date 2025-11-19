@interface MTScheduledObject
+ (id)scheduledObjectForScheduleable:(id)a3 trigger:(id)a4;
+ (unint64_t)scheduledTypeForTriggerType:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToScheduledObject:(id)a3;
- (MTScheduledObject)initWithScheduleable:(id)a3 trigger:(id)a4;
- (NSString)description;
- (unint64_t)hash;
- (unint64_t)type;
@end

@implementation MTScheduledObject

+ (id)scheduledObjectForScheduleable:(id)a3 trigger:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithScheduleable:v7 trigger:v6];

  return v8;
}

- (MTScheduledObject)initWithScheduleable:(id)a3 trigger:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = MTScheduledObject;
  v8 = [(MTScheduledObject *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    scheduleable = v8->_scheduleable;
    v8->_scheduleable = v9;

    v11 = [v7 copy];
    trigger = v8->_trigger;
    v8->_trigger = v11;
  }

  return v8;
}

- (unint64_t)type
{
  v3 = objc_opt_class();
  v4 = [(MTScheduledObject *)self trigger];
  v5 = [v3 scheduledTypeForTriggerType:{objc_msgSend(v4, "triggerType")}];

  return v5;
}

+ (unint64_t)scheduledTypeForTriggerType:(unint64_t)a3
{
  if (a3 - 2 > 6)
  {
    return 0;
  }

  else
  {
    return qword_1B20B8908[a3 - 2];
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(MTScheduledObject *)self scheduleable];
  v6 = [(MTScheduledObject *)self trigger];
  v7 = [v3 stringWithFormat:@"<%@:%p %@, Trigger: %@>", v4, self, v5, v6];

  return v7;
}

- (unint64_t)hash
{
  v3 = [(MTScheduledObject *)self scheduleable];
  v4 = [v3 hash];
  v5 = [(MTScheduledObject *)self trigger];
  v6 = [v5 hash];

  return v6 ^ v4;
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
    v8 = [(MTScheduledObject *)self isEqualToScheduledObject:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqualToScheduledObject:(id)a3
{
  v6 = a3;
  v7 = [v6 scheduleable];
  v8 = [(MTScheduledObject *)self scheduleable];
  if (v7 != v8)
  {
    v3 = [v6 scheduleable];
    v4 = [(MTScheduledObject *)self scheduleable];
    if (![v3 isEqual:v4])
    {
      v9 = 0;
LABEL_8:

      goto LABEL_9;
    }
  }

  v10 = [v6 trigger];
  v11 = [(MTScheduledObject *)self trigger];
  if (v10 == v11)
  {
    v9 = 1;
  }

  else
  {
    v12 = [v6 trigger];
    v13 = [(MTScheduledObject *)self trigger];
    v9 = [v12 isEqual:v13];
  }

  if (v7 != v8)
  {
    goto LABEL_8;
  }

LABEL_9:

  return v9;
}

@end