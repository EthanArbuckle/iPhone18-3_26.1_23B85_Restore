@interface CALNSnoozeCategory
+ (id)snoozeCategories;
+ (id)snoozeCategoryForEventWithStartDate:(id)a3 endDate:(id)a4 now:(id)a5 isAllDay:(BOOL)a6;
- (CALNSnoozeCategory)initWithSuffix:(id)a3 timedExpirationInterval:(double)a4 leeway:(double)a5 relativeToEnd:(BOOL)a6 validForAllDay:(BOOL)a7 actions:(id)a8;
- (id)expirationDateForEventWithStartDate:(id)a3 endDate:(id)a4 isAllDay:(BOOL)a5;
@end

@implementation CALNSnoozeCategory

- (CALNSnoozeCategory)initWithSuffix:(id)a3 timedExpirationInterval:(double)a4 leeway:(double)a5 relativeToEnd:(BOOL)a6 validForAllDay:(BOOL)a7 actions:(id)a8
{
  v15 = a3;
  v16 = a8;
  v20.receiver = self;
  v20.super_class = CALNSnoozeCategory;
  v17 = [(CALNSnoozeCategory *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_suffix, a3);
    v18->_timedExpirationInterval = a4;
    v18->_leeway = a5;
    v18->_relativeToEnd = a6;
    v18->_validForAllDay = a7;
    objc_storeStrong(&v18->_actions, a8);
  }

  return v18;
}

- (id)expirationDateForEventWithStartDate:(id)a3 endDate:(id)a4 isAllDay:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (a5 || (timedExpirationInterval = self->_timedExpirationInterval, timedExpirationInterval == -1000000000.0))
  {
    v12 = 0;
  }

  else
  {
    v14 = -timedExpirationInterval;
    if (!self->_relativeToEnd)
    {
      v9 = v8;
    }

    v12 = [v9 dateByAddingTimeInterval:v14];
  }

  return v12;
}

+ (id)snoozeCategoryForEventWithStartDate:(id)a3 endDate:(id)a4 now:(id)a5 isAllDay:(BOOL)a6
{
  v6 = a6;
  v34 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [a1 snoozeCategories];
  [v10 timeIntervalSinceDate:v12];
  v15 = v14;
  [v11 timeIntervalSinceDate:v12];
  v17 = v16;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v18 = v13;
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
        if (v6)
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