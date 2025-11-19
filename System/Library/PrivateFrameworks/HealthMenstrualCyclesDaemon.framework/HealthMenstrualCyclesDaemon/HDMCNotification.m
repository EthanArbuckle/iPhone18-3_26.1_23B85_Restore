@interface HDMCNotification
- (BOOL)isEqual:(id)a3;
- (HDMCNotification)initWithFireOnDayIndex:(int64_t)a3 category:(id)a4 fertileWindowEndDayIndex:(int64_t)a5 daysShifted:(int64_t)a6;
- (id)eventIdentifierFromUpdateFertileWindowNotification;
@end

@implementation HDMCNotification

- (HDMCNotification)initWithFireOnDayIndex:(int64_t)a3 category:(id)a4 fertileWindowEndDayIndex:(int64_t)a5 daysShifted:(int64_t)a6
{
  v11 = a4;
  v15.receiver = self;
  v15.super_class = HDMCNotification;
  v12 = [(HDMCNotification *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_fireOnDayIndex = a3;
    objc_storeStrong(&v12->_category, a4);
    v13->_fertileWindowEndDayIndex = a5;
    v13->_daysShifted = a6;
  }

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      fireOnDayIndex = self->_fireOnDayIndex;
      if (fireOnDayIndex == [(HDMCNotification *)v5 fireOnDayIndex])
      {
        category = self->_category;
        v8 = [(HDMCNotification *)v5 category];
        if ([(NSString *)category isEqualToString:v8]&& (fertileWindowEndDayIndex = self->_fertileWindowEndDayIndex, fertileWindowEndDayIndex == [(HDMCNotification *)v5 fertileWindowEndDayIndex]))
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
  v4 = [(HDMCNotification *)self category];
  v5 = [v3 stringWithFormat:@"%@%ld_%ld", v4, -[HDMCNotification fertileWindowEndDayIndex](self, "fertileWindowEndDayIndex"), -[HDMCNotification daysShifted](self, "daysShifted")];

  return v5;
}

@end