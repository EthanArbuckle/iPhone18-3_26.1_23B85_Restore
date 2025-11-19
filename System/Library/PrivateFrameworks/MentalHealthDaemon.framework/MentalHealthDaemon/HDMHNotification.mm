@interface HDMHNotification
- (BOOL)isEqual:(id)a3;
- (HDMHNotification)initWithFireOnDayIndex:(int64_t)a3 dateComponents:(id)a4 category:(id)a5;
- (id)eventIdentifier;
@end

@implementation HDMHNotification

- (HDMHNotification)initWithFireOnDayIndex:(int64_t)a3 dateComponents:(id)a4 category:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = HDMHNotification;
  v11 = [(HDMHNotification *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_fireOnDayIndex = a3;
    objc_storeStrong(&v11->_dateComponents, a4);
    objc_storeStrong(&v12->_category, a5);
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      dateComponents = self->_dateComponents;
      v7 = [(HDMHNotification *)v5 dateComponents];
      if ([(NSDateComponents *)dateComponents isEqual:v7])
      {
        category = self->_category;
        v9 = [(HDMHNotification *)v5 category];
        if ([(NSString *)category isEqualToString:v9])
        {
          v10 = [(HDMHNotification *)self eventIdentifier];
          v11 = [(HDMHNotification *)v5 eventIdentifier];
          v12 = [v10 isEqualToString:v11];
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)eventIdentifier
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld%ld", -[NSDateComponents hour](self->_dateComponents, "hour"), -[NSDateComponents minute](self->_dateComponents, "minute")];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%ld_%@", self->_category, self->_fireOnDayIndex, v3];

  return v4;
}

@end