@interface SGReminderDueLocation
+ (id)mergeDueLocations:(id)locations;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToReminderDueLocation:(id)location;
- (SGReminderDueLocation)initWithLocationType:(unsigned __int8)type trigger:(unsigned __int8)trigger name:(id)name;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation SGReminderDueLocation

- (BOOL)isEqualToReminderDueLocation:(id)location
{
  locationCopy = location;
  v5 = locationCopy;
  if (locationCopy && (locationType = self->_locationType, locationType == [locationCopy locationType]) && (trigger = self->_trigger, trigger == objc_msgSend(v5, "trigger")))
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGReminderDueLocation *)self isEqualToReminderDueLocation:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v5 = objc_opt_new();
  v6 = v5;
  if (v5)
  {
    *(v5 + 8) = self->_locationType;
    *(v5 + 9) = self->_trigger;
    v7 = [(NSString *)self->_name copyWithZone:zone];
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

- (SGReminderDueLocation)initWithLocationType:(unsigned __int8)type trigger:(unsigned __int8)trigger name:(id)name
{
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = SGReminderDueLocation;
  v10 = [(SGReminderDueLocation *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_locationType = type;
    v10->_trigger = trigger;
    objc_storeStrong(&v10->_name, name);
  }

  return v11;
}

+ (id)mergeDueLocations:(id)locations
{
  v25 = *MEMORY[0x277D85DE8];
  locationsCopy = locations;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  allObjects = [locationsCopy allObjects];
  v5 = [allObjects countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(allObjects);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        locationType = [v12 locationType];
        if (v7)
        {
          if (locationType && [v12 locationType] != v7)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v7 = locationType;
        }

        trigger = [v12 trigger];
        if (v8)
        {
          if (trigger && [v12 trigger] != v8)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v8 = trigger;
        }

        name = [v12 name];
        v16 = name;
        if (v9)
        {
          if (name && ([v9 isEqualToString:name] & 1) == 0)
          {

LABEL_26:
            v17 = 0;
            goto LABEL_27;
          }
        }

        else
        {
          v9 = name;
        }
      }

      v6 = [allObjects countByEnumeratingWithState:&v20 objects:v24 count:16];
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