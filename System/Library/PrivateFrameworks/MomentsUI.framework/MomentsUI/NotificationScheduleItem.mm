@interface NotificationScheduleItem
- (NotificationScheduleItem)initWithCoder:(id)a3;
- (id)initScheduleWithType:(id)a3 hour:(id)a4 minute:(id)a5 weekdays:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NotificationScheduleItem

- (id)initScheduleWithType:(id)a3 hour:(id)a4 minute:(id)a5 weekdays:(id)a6
{
  v30 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v28.receiver = self;
  v28.super_class = NotificationScheduleItem;
  v15 = [(NotificationScheduleItem *)&v28 init];
  p_isa = &v15->super.isa;
  if (v15)
  {
    objc_storeStrong(&v15->_scheduleType, a3);
    objc_storeStrong(p_isa + 2, a4);
    objc_storeStrong(p_isa + 3, a5);
    objc_storeStrong(p_isa + 4, a6);
    if ([p_isa[1] intValue] == 2)
    {
      if ([v12 intValue] > 0x17 || objc_msgSend(v13, "intValue") > 0x3B)
      {
LABEL_16:
        v22 = 0;
        goto LABEL_17;
      }

      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v17 = v14;
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

- (NotificationScheduleItem)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = NotificationScheduleItem;
  v5 = [(NotificationScheduleItem *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    scheduleType = v5->_scheduleType;
    v5->_scheduleType = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hour"];
    hour = v5->_hour;
    v5->_hour = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"minute"];
    minute = v5->_minute;
    v5->_minute = v10;

    v12 = [v4 decodeIntForKey:@"weekdays"];
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

- (void)encodeWithCoder:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 encodeObject:self->_scheduleType forKey:@"type"];
  [v4 encodeObject:self->_hour forKey:@"hour"];
  [v4 encodeObject:self->_minute forKey:@"minute"];
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

        v10 = [*(*(&v12 + 1) + 8 * i) intValue];
        v11 = 1 << ((v10 & 7) - 1);
        if ((v10 & 7) == 0)
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

  [v4 encodeInt:v6 forKey:@"weekdays"];
}

@end