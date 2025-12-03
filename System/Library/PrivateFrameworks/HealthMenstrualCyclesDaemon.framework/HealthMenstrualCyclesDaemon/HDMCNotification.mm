@interface HDMCNotification
- (BOOL)isEqual:(id)equal;
- (HDMCNotification)initWithFireOnDayIndex:(int64_t)index category:(id)category fertileWindowEndDayIndex:(int64_t)dayIndex daysShifted:(int64_t)shifted;
- (id)eventIdentifierFromUpdateFertileWindowNotification;
@end

@implementation HDMCNotification

- (HDMCNotification)initWithFireOnDayIndex:(int64_t)index category:(id)category fertileWindowEndDayIndex:(int64_t)dayIndex daysShifted:(int64_t)shifted
{
  categoryCopy = category;
  v15.receiver = self;
  v15.super_class = HDMCNotification;
  v12 = [(HDMCNotification *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_fireOnDayIndex = index;
    objc_storeStrong(&v12->_category, category);
    v13->_fertileWindowEndDayIndex = dayIndex;
    v13->_daysShifted = shifted;
  }

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      fireOnDayIndex = self->_fireOnDayIndex;
      if (fireOnDayIndex == [(HDMCNotification *)v5 fireOnDayIndex])
      {
        category = self->_category;
        category = [(HDMCNotification *)v5 category];
        if ([(NSString *)category isEqualToString:category]&& (fertileWindowEndDayIndex = self->_fertileWindowEndDayIndex, fertileWindowEndDayIndex == [(HDMCNotification *)v5 fertileWindowEndDayIndex]))
        {
          daysShifted = self->_daysShifted;
          v11 = daysShifted == [(HDMCNotification *)v5 daysShifted];
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)eventIdentifierFromUpdateFertileWindowNotification
{
  v3 = MEMORY[0x277CCACA8];
  category = [(HDMCNotification *)self category];
  v5 = [v3 stringWithFormat:@"%@%ld_%ld", category, -[HDMCNotification fertileWindowEndDayIndex](self, "fertileWindowEndDayIndex"), -[HDMCNotification daysShifted](self, "daysShifted")];

  return v5;
}

@end