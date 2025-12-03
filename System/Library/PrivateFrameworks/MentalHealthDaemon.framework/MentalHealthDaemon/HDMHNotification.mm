@interface HDMHNotification
- (BOOL)isEqual:(id)equal;
- (HDMHNotification)initWithFireOnDayIndex:(int64_t)index dateComponents:(id)components category:(id)category;
- (id)eventIdentifier;
@end

@implementation HDMHNotification

- (HDMHNotification)initWithFireOnDayIndex:(int64_t)index dateComponents:(id)components category:(id)category
{
  componentsCopy = components;
  categoryCopy = category;
  v14.receiver = self;
  v14.super_class = HDMHNotification;
  v11 = [(HDMHNotification *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_fireOnDayIndex = index;
    objc_storeStrong(&v11->_dateComponents, components);
    objc_storeStrong(&v12->_category, category);
  }

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      dateComponents = self->_dateComponents;
      dateComponents = [(HDMHNotification *)v5 dateComponents];
      if ([(NSDateComponents *)dateComponents isEqual:dateComponents])
      {
        category = self->_category;
        category = [(HDMHNotification *)v5 category];
        if ([(NSString *)category isEqualToString:category])
        {
          eventIdentifier = [(HDMHNotification *)self eventIdentifier];
          eventIdentifier2 = [(HDMHNotification *)v5 eventIdentifier];
          v12 = [eventIdentifier isEqualToString:eventIdentifier2];
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