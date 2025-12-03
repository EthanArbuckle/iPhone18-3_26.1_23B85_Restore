@interface NotificationScheduleItem
- (NotificationScheduleItem)initWithCoder:(id)coder;
- (id)initScheduleWithType:(id)type hour:(id)hour minute:(id)minute weekdays:(id)weekdays;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NotificationScheduleItem

- (id)initScheduleWithType:(id)type hour:(id)hour minute:(id)minute weekdays:(id)weekdays
{
  v30 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  hourCopy = hour;
  minuteCopy = minute;
  weekdaysCopy = weekdays;
  v28.receiver = self;
  v28.super_class = NotificationScheduleItem;
  v15 = [(NotificationScheduleItem *)&v28 init];
  p_isa = &v15->super.isa;
  if (v15)
  {
    objc_storeStrong(&v15->_scheduleType, type);
    objc_storeStrong(p_isa + 2, hour);
    objc_storeStrong(p_isa + 3, minute);
    objc_storeStrong(p_isa + 4, weekdays);
    if ([p_isa[1] intValue] == 2)
    {
      if ([hourCopy intValue] > 0x17 || objc_msgSend(minuteCopy, "intValue") > 0x3B)
      {
LABEL_16:
        v22 = 0;
        goto LABEL_17;
      }

      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v17 = weekdaysCopy;
      v18 = [v17 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v25;
        while (2)
        {
          v21 = 0;
          do
          {
            if (*v25 != v20)
            {
              objc_enumerationMutation(v17);
            }

            if ([*(*(&v24 + 1) + 8 * v21) intValue] - 8 < 0xFFFFFFF9)
            {

              goto LABEL_16;
            }

            ++v21;
          }

          while (v19 != v21);
          v19 = [v17 countByEnumeratingWithState:&v24 objects:v29 count:16];
          if (v19)
          {
            continue;
          }

          break;
        }
      }
    }
  }

  v22 = p_isa;
LABEL_17:

  return v22;
}

- (NotificationScheduleItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = NotificationScheduleItem;
  v5 = [(NotificationScheduleItem *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    scheduleType = v5->_scheduleType;
    v5->_scheduleType = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hour"];
    hour = v5->_hour;
    v5->_hour = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"minute"];
    minute = v5->_minute;
    v5->_minute = v10;

    v12 = [coderCopy decodeIntForKey:@"weekdays"];
    v13 = objc_opt_new();
    v14 = 1;
    do
    {
      if ((v12 >> (v14 - 1)))
      {
        v15 = [MEMORY[0x277CCABB0] numberWithInt:v14];
        [v13 addObject:v15];
      }

      v14 = (v14 + 1);
    }

    while (v14 != 8);
    v16 = [v13 copy];
    weekdays = v5->_weekdays;
    v5->_weekdays = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v17 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  [coderCopy encodeObject:self->_scheduleType forKey:@"type"];
  [coderCopy encodeObject:self->_hour forKey:@"hour"];
  [coderCopy encodeObject:self->_minute forKey:@"minute"];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_weekdays;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = 0;
    v8 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        intValue = [*(*(&v12 + 1) + 8 * i) intValue];
        v11 = 1 << ((intValue & 7) - 1);
        if ((intValue & 7) == 0)
        {
          LOBYTE(v11) = 0;
        }

        v7 |= v11;
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
    v6 = v7 & 0x7F;
  }

  [coderCopy encodeInt:v6 forKey:@"weekdays"];
}

@end