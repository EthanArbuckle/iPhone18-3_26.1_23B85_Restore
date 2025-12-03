@interface CALNSnoozeCategory
+ (id)snoozeCategories;
+ (id)snoozeCategoryForEventWithStartDate:(id)date endDate:(id)endDate now:(id)now isAllDay:(BOOL)day;
- (CALNSnoozeCategory)initWithSuffix:(id)suffix timedExpirationInterval:(double)interval leeway:(double)leeway relativeToEnd:(BOOL)end validForAllDay:(BOOL)day actions:(id)actions;
- (id)expirationDateForEventWithStartDate:(id)date endDate:(id)endDate isAllDay:(BOOL)day;
@end

@implementation CALNSnoozeCategory

- (CALNSnoozeCategory)initWithSuffix:(id)suffix timedExpirationInterval:(double)interval leeway:(double)leeway relativeToEnd:(BOOL)end validForAllDay:(BOOL)day actions:(id)actions
{
  suffixCopy = suffix;
  actionsCopy = actions;
  v20.receiver = self;
  v20.super_class = CALNSnoozeCategory;
  v17 = [(CALNSnoozeCategory *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_suffix, suffix);
    v18->_timedExpirationInterval = interval;
    v18->_leeway = leeway;
    v18->_relativeToEnd = end;
    v18->_validForAllDay = day;
    objc_storeStrong(&v18->_actions, actions);
  }

  return v18;
}

- (id)expirationDateForEventWithStartDate:(id)date endDate:(id)endDate isAllDay:(BOOL)day
{
  dateCopy = date;
  endDateCopy = endDate;
  v10 = endDateCopy;
  if (day || (timedExpirationInterval = self->_timedExpirationInterval, timedExpirationInterval == -1000000000.0))
  {
    v12 = 0;
  }

  else
  {
    v14 = -timedExpirationInterval;
    if (!self->_relativeToEnd)
    {
      endDateCopy = dateCopy;
    }

    v12 = [endDateCopy dateByAddingTimeInterval:v14];
  }

  return v12;
}

+ (id)snoozeCategoryForEventWithStartDate:(id)date endDate:(id)endDate now:(id)now isAllDay:(BOOL)day
{
  dayCopy = day;
  v34 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  nowCopy = now;
  snoozeCategories = [self snoozeCategories];
  [dateCopy timeIntervalSinceDate:nowCopy];
  v15 = v14;
  [endDateCopy timeIntervalSinceDate:nowCopy];
  v17 = v16;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v18 = snoozeCategories;
  v19 = [v18 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v30;
    while (2)
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v30 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v29 + 1) + 8 * i);
        if (dayCopy)
        {
          if (*(v23 + 17))
          {
            goto LABEL_17;
          }
        }

        else
        {
          v24 = *(v23 + 8);
          if (v24 == -1000000000.0 || (!*(v23 + 16) ? (v25 = v15 > v24) : (v25 = v17 > v24), v25))
          {
LABEL_17:
            v26 = v23;
            goto LABEL_18;
          }
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  v26 = 0;
LABEL_18:

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

+ (id)snoozeCategories
{
  if (snoozeCategories_onceToken != -1)
  {
    +[CALNSnoozeCategory snoozeCategories];
  }

  v3 = snoozeCategories_categories;

  return v3;
}

void __38__CALNSnoozeCategory_snoozeCategories__block_invoke()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v0 = [CALNSnoozeCategory alloc];
  v1 = [(CALNSnoozeCategory *)v0 initWithSuffix:&stru_28551FB98 timedExpirationInterval:0 leeway:1 relativeToEnd:MEMORY[0x277CBEBF8] validForAllDay:-1000000000.0 actions:0.0];
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = snoozeCategories_categories;
  snoozeCategories_categories = v2;

  v4 = *MEMORY[0x277D85DE8];
}

@end