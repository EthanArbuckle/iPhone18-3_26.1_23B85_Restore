@interface FIMindfulnessReminder
- (BOOL)isEqual:(id)equal;
- (FIMindfulnessReminder)initWithCoder:(id)coder;
- (FIMindfulnessReminder)initWithType:(int64_t)type customDateComponents:(id)components customWeekdaySelection:(unint64_t)selection enabled:(BOOL)enabled;
- (id)_typeDescription;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FIMindfulnessReminder

- (FIMindfulnessReminder)initWithType:(int64_t)type customDateComponents:(id)components customWeekdaySelection:(unint64_t)selection enabled:(BOOL)enabled
{
  componentsCopy = components;
  v15.receiver = self;
  v15.super_class = FIMindfulnessReminder;
  v12 = [(FIMindfulnessReminder *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_customDateComponents, components);
    v13->_enabled = enabled;
    v13->_customWeekdaySelection = selection;
    v13->_type = type;
  }

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_7;
  }

  if (self == equalCopy)
  {
    v12 = 1;
    goto LABEL_13;
  }

  type = self->_type;
  if (type == [(FIMindfulnessReminder *)equalCopy type])
  {
    customDateComponents = self->_customDateComponents;
    customDateComponents = [(FIMindfulnessReminder *)v5 customDateComponents];
    if (customDateComponents == customDateComponents)
    {
      customWeekdaySelection = self->_customWeekdaySelection;
      v12 = customWeekdaySelection == [(FIMindfulnessReminder *)v5 customWeekdaySelection];
    }

    else
    {
      v9 = self->_customDateComponents;
      customDateComponents2 = [(FIMindfulnessReminder *)v5 customDateComponents];
      if ([(NSDateComponents *)v9 isEqual:customDateComponents2])
      {
        v11 = self->_customWeekdaySelection;
        v12 = v11 == [(FIMindfulnessReminder *)v5 customWeekdaySelection];
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
LABEL_7:
    v12 = 0;
  }

LABEL_13:

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  enabled = self->_enabled;
  _typeDescription = [(FIMindfulnessReminder *)self _typeDescription];
  v6 = [v3 stringWithFormat:@"FIMindfulnessReminder (%p): enabled: %d, type: %@, date components: (hour: %ld, minute: %ld)", self, enabled, _typeDescription, -[NSDateComponents hour](self->_customDateComponents, "hour"), -[NSDateComponents minute](self->_customDateComponents, "minute")];

  return v6;
}

- (id)_typeDescription
{
  v2 = self->_type - 1;
  if (v2 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_2790046C0[v2];
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  customDateComponents = self->_customDateComponents;
  v6 = coderCopy;
  if (customDateComponents)
  {
    [coderCopy encodeObject:customDateComponents forKey:@"CustomDateComponents"];
    coderCopy = v6;
  }

  [coderCopy encodeInteger:self->_customWeekdaySelection forKey:@"CustomWeekdaySelection"];
  [v6 encodeBool:self->_enabled forKey:@"Enabled"];
  [v6 encodeInteger:self->_type forKey:@"Type"];
}

- (FIMindfulnessReminder)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = FIMindfulnessReminder;
  v5 = [(FIMindfulnessReminder *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CustomDateComponents"];
    customDateComponents = v5->_customDateComponents;
    v5->_customDateComponents = v6;

    v5->_customWeekdaySelection = [coderCopy decodeIntegerForKey:@"CustomWeekdaySelection"];
    v5->_enabled = [coderCopy decodeBoolForKey:@"Enabled"];
    v8 = [coderCopy decodeIntegerForKey:@"Type"];
    if (v8 <= 3)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v5->_type = v9;
  }

  return v5;
}

@end