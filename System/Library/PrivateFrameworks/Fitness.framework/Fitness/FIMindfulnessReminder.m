@interface FIMindfulnessReminder
- (BOOL)isEqual:(id)a3;
- (FIMindfulnessReminder)initWithCoder:(id)a3;
- (FIMindfulnessReminder)initWithType:(int64_t)a3 customDateComponents:(id)a4 customWeekdaySelection:(unint64_t)a5 enabled:(BOOL)a6;
- (id)_typeDescription;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FIMindfulnessReminder

- (FIMindfulnessReminder)initWithType:(int64_t)a3 customDateComponents:(id)a4 customWeekdaySelection:(unint64_t)a5 enabled:(BOOL)a6
{
  v11 = a4;
  v15.receiver = self;
  v15.super_class = FIMindfulnessReminder;
  v12 = [(FIMindfulnessReminder *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_customDateComponents, a4);
    v13->_enabled = a6;
    v13->_customWeekdaySelection = a5;
    v13->_type = a3;
  }

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_7;
  }

  if (self == v4)
  {
    v12 = 1;
    goto LABEL_13;
  }

  type = self->_type;
  if (type == [(FIMindfulnessReminder *)v4 type])
  {
    customDateComponents = self->_customDateComponents;
    v8 = [(FIMindfulnessReminder *)v5 customDateComponents];
    if (customDateComponents == v8)
    {
      customWeekdaySelection = self->_customWeekdaySelection;
      v12 = customWeekdaySelection == [(FIMindfulnessReminder *)v5 customWeekdaySelection];
    }

    else
    {
      v9 = self->_customDateComponents;
      v10 = [(FIMindfulnessReminder *)v5 customDateComponents];
      if ([(NSDateComponents *)v9 isEqual:v10])
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
  v5 = [(FIMindfulnessReminder *)self _typeDescription];
  v6 = [v3 stringWithFormat:@"FIMindfulnessReminder (%p): enabled: %d, type: %@, date components: (hour: %ld, minute: %ld)", self, enabled, v5, -[NSDateComponents hour](self->_customDateComponents, "hour"), -[NSDateComponents minute](self->_customDateComponents, "minute")];

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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  customDateComponents = self->_customDateComponents;
  v6 = v4;
  if (customDateComponents)
  {
    [v4 encodeObject:customDateComponents forKey:@"CustomDateComponents"];
    v4 = v6;
  }

  [v4 encodeInteger:self->_customWeekdaySelection forKey:@"CustomWeekdaySelection"];
  [v6 encodeBool:self->_enabled forKey:@"Enabled"];
  [v6 encodeInteger:self->_type forKey:@"Type"];
}

- (FIMindfulnessReminder)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = FIMindfulnessReminder;
  v5 = [(FIMindfulnessReminder *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CustomDateComponents"];
    customDateComponents = v5->_customDateComponents;
    v5->_customDateComponents = v6;

    v5->_customWeekdaySelection = [v4 decodeIntegerForKey:@"CustomWeekdaySelection"];
    v5->_enabled = [v4 decodeBoolForKey:@"Enabled"];
    v8 = [v4 decodeIntegerForKey:@"Type"];
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