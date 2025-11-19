@interface SGReminderDueLocation
+ (id)mergeDueLocations:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToReminderDueLocation:(id)a3;
- (SGReminderDueLocation)initWithLocationType:(unsigned __int8)a3 trigger:(unsigned __int8)a4 name:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation SGReminderDueLocation

- (BOOL)isEqualToReminderDueLocation:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && (locationType = self->_locationType, locationType == [v4 locationType]) && (trigger = self->_trigger, trigger == objc_msgSend(v5, "trigger")))
  {
    v8 = self->_name;
    v9 = v8;
    if (v8 == v5[2])
    {
      v10 = 1;
    }

    else
    {
      v10 = [(NSString *)v8 isEqual:?];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGReminderDueLocation *)self isEqualToReminderDueLocation:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();
  v5 = objc_opt_new();
  v6 = v5;
  if (v5)
  {
    *(v5 + 8) = self->_locationType;
    *(v5 + 9) = self->_trigger;
    v7 = [(NSString *)self->_name copyWithZone:a3];
    v8 = v6[2];
    v6[2] = v7;
  }

  return v6;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [MEMORY[0x277D020D0] describeReminderDueLocationType:self->_locationType];
  v5 = [MEMORY[0x277D020D0] describeReminderDueLocationTrigger:self->_trigger];
  v6 = [v3 initWithFormat:@"<SGReminderDueLocation type:'%@' trigger: %@ name: %@>", v4, v5, self->_name];

  return v6;
}

- (SGReminderDueLocation)initWithLocationType:(unsigned __int8)a3 trigger:(unsigned __int8)a4 name:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = SGReminderDueLocation;
  v10 = [(SGReminderDueLocation *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_locationType = a3;
    v10->_trigger = a4;
    objc_storeStrong(&v10->_name, a5);
  }

  return v11;
}

+ (id)mergeDueLocations:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [v3 allObjects];
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = *v21;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [v12 locationType];
        if (v7)
        {
          if (v13 && [v12 locationType] != v7)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v7 = v13;
        }

        v14 = [v12 trigger];
        if (v8)
        {
          if (v14 && [v12 trigger] != v8)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v8 = v14;
        }

        v15 = [v12 name];
        v16 = v15;
        if (v9)
        {
          if (v15 && ([v9 isEqualToString:v15] & 1) == 0)
          {

LABEL_26:
            v17 = 0;
            goto LABEL_27;
          }
        }

        else
        {
          v9 = v15;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
  }

  v17 = [[SGReminderDueLocation alloc] initWithLocationType:v7 trigger:v8 name:v9];
LABEL_27:

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

@end