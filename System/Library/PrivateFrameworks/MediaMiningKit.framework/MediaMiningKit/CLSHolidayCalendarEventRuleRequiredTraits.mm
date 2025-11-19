@interface CLSHolidayCalendarEventRuleRequiredTraits
+ (id)_locationTraitDebugStringForTrait:(unint64_t)a3;
+ (id)_peopleTraitDebugStringForTrait:(unint64_t)a3;
+ (unint64_t)importanceEnumForImportanceString:(id)a3;
- (BOOL)evaluateWithTraits:(id)a3 evaluateLocationTraits:(BOOL)a4;
- (CLSHolidayCalendarEventRuleRequiredTraits)initWithDescription:(id)a3;
- (id)description;
- (unint64_t)importanceForScene:(id)a3;
@end

@implementation CLSHolidayCalendarEventRuleRequiredTraits

- (unint64_t)importanceForScene:(id)a3
{
  v3 = [(NSDictionary *)self->_defaultScenesWithImportanceString objectForKeyedSubscript:a3];
  v4 = [CLSHolidayCalendarEventRuleRequiredTraits importanceEnumForImportanceString:v3];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%p:%@> location %lu, people %lu, minimumPeopleCount %lu, mustContainMe %d, type %lu, category %lu", self, v5, -[CLSHolidayCalendarEventRuleTraits locationTrait](self, "locationTrait"), -[CLSHolidayCalendarEventRuleTraits peopleTrait](self, "peopleTrait"), self->_minimumPeopleCount, self->_mustContainMePerson, self->_type, self->_eventCategory];

  return v6;
}

- (BOOL)evaluateWithTraits:(id)a3 evaluateLocationTraits:(BOOL)a4
{
  v4 = a4;
  v54 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v4 && -[CLSHolidayCalendarEventRuleTraits locationTrait](self, "locationTrait") && [v6 locationTrait])
  {
    v7 = [(CLSHolidayCalendarEventRuleTraits *)self locationTrait];
    v8 = ([v6 locationTrait] & v7) != 0;
  }

  else
  {
    v8 = 1;
  }

  if (-[CLSHolidayCalendarEventRuleTraits peopleTrait](self, "peopleTrait") && [v6 peopleTrait])
  {
    v9 = [(CLSHolidayCalendarEventRuleTraits *)self peopleTrait];
    v10 = ([v6 peopleTrait] & v9) != 0;
  }

  else
  {
    v10 = 1;
  }

  if (-[CLSHolidayCalendarEventRuleRequiredTraits peopleCountRangeIsRequired](self, "peopleCountRangeIsRequired") && [v6 numberOfPeople] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = [v6 numberOfPeople];
    v11 = v12 >= [(CLSHolidayCalendarEventRuleRequiredTraits *)self minimumPeopleCount];
  }

  else
  {
    v11 = 1;
  }

  if ([(CLSHolidayCalendarEventRuleRequiredTraits *)self mustContainMePerson])
  {
    v13 = [v6 containsMePerson];
  }

  else
  {
    v13 = 1;
  }

  v14 = v8 && v10;
  v15 = v11 & v13;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v17 = NSStringFromBOOL();
    v18 = NSStringFromBOOL();
    v27 = [v6 locationTrait];
    v26 = [(CLSHolidayCalendarEventRuleTraits *)self locationTrait];
    v25 = NSStringFromBOOL();
    v24 = [v6 peopleTrait];
    v23 = [(CLSHolidayCalendarEventRuleTraits *)self peopleTrait];
    v22 = NSStringFromBOOL();
    v21 = [v6 numberOfPeople];
    v19 = [(CLSHolidayCalendarEventRuleRequiredTraits *)self minimumPeopleCount];
    v20 = NSStringFromBOOL();
    *buf = 138415362;
    v29 = v17;
    v30 = 2112;
    v31 = v18;
    v32 = 2048;
    v33 = v27;
    v34 = 2048;
    v35 = v26;
    v36 = 2112;
    v37 = v25;
    v38 = 2048;
    v39 = v24;
    v40 = 2048;
    v41 = v23;
    v42 = 2112;
    v43 = v22;
    v44 = 2048;
    v45 = v21;
    v46 = 2048;
    v47 = v19;
    v48 = 2112;
    v49 = v20;
    v50 = 1024;
    v51 = [v6 containsMePerson];
    v52 = 1024;
    v53 = [(CLSHolidayCalendarEventRuleRequiredTraits *)self mustContainMePerson];
    _os_log_debug_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Traits succeeded %@ : location %@ (given %lu, needed %lu), people %@ (given %lu, needed %lu), minimumPeopleCount %@ (given %lu, needed %lu), mustContainMe %@ (given %d, needed %d)", buf, 0x7Cu);
  }

  return v14 & v15;
}

- (CLSHolidayCalendarEventRuleRequiredTraits)initWithDescription:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = CLSHolidayCalendarEventRuleRequiredTraits;
  v5 = [(CLSHolidayCalendarEventRuleTraits *)&v18 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventType"];
    v5->_type = [v6 unsignedIntegerValue];

    v7 = [v4 objectForKeyedSubscript:@"eventCategory"];
    v5->_eventCategory = [v7 unsignedIntegerValue];

    v8 = [v4 objectForKeyedSubscript:@"peopleTrait"];
    v9 = [v8 unsignedIntegerValue];

    [(CLSHolidayCalendarEventRuleTraits *)v5 setPeopleTrait:v9];
    v10 = [v4 objectForKeyedSubscript:@"minimumPeopleCount"];
    v5->_minimumPeopleCount = [v10 unsignedIntegerValue];
    v11 = [v4 objectForKeyedSubscript:@"locationTrait"];
    v12 = [v11 unsignedIntegerValue];

    [(CLSHolidayCalendarEventRuleTraits *)v5 setLocationTrait:v12];
    v13 = [v4 objectForKeyedSubscript:@"scenes"];
    defaultScenesWithImportanceString = v5->_defaultScenesWithImportanceString;
    v5->_defaultScenesWithImportanceString = v13;

    v15 = [v4 objectForKeyedSubscript:@"mustContainMe"];
    v5->_mustContainMePerson = [v15 BOOLValue];

    v16 = [v4 objectForKeyedSubscript:@"allowApproximateDateCalculation"];
    v5->_allowApproximateDateCalculation = [v16 BOOLValue];
  }

  return v5;
}

+ (unint64_t)importanceEnumForImportanceString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"edgeCase"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"medium"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"important"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"imperative"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_peopleTraitDebugStringForTrait:(unint64_t)a3
{
  v19 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [&unk_28449B2C8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(&unk_28449B2C8);
          }

          v9 = [*(*(&v14 + 1) + 8 * i) unsignedIntegerValue];
          if ((v9 & a3) != 0)
          {
            if (v9 <= 7)
            {
              if (v9 > 1)
              {
                if (v9 == 2)
                {
                  v10 = @"family";
                }

                else
                {
                  v10 = 0;
                  if (v9 == 4)
                  {
                    v10 = @"friend";
                  }
                }
              }

              else if (v9)
              {
                if (v9 == 1)
                {
                  v10 = @"favorite";
                }

                else
                {
                  v10 = 0;
                }
              }

              else
              {
                v10 = @"ignore";
              }
            }

            else if (v9 <= 31)
            {
              if (v9 == 8)
              {
                v10 = @"coworker";
              }

              else
              {
                v10 = 0;
                if (v9 == 16)
                {
                  v10 = @"acquaintance";
                }
              }
            }

            else if (v9 == 32)
            {
              v10 = @"mother";
            }

            else if (v9 == 64)
            {
              v10 = @"father";
            }

            else
            {
              v10 = 0;
              if (v9 == 127)
              {
                v10 = @"Any";
              }
            }

            v11 = v10;
            [v4 addObject:v11];
          }
        }

        v6 = [&unk_28449B2C8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }

    v12 = [v4 componentsJoinedByString:{@", "}];
  }

  else
  {
    v12 = @"ignore";
  }

  return v12;
}

+ (id)_locationTraitDebugStringForTrait:(unint64_t)a3
{
  v19 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [&unk_28449B2B0 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(&unk_28449B2B0);
          }

          v9 = [*(*(&v14 + 1) + 8 * i) unsignedIntegerValue];
          if ((v9 & a3) != 0)
          {
            if (v9 > 7)
            {
              if (v9 > 31)
              {
                if (v9 == 32)
                {
                  v10 = @"out of superset country";
                }

                else
                {
                  v10 = 0;
                  if (v9 == 63)
                  {
                    v10 = @"Any";
                  }
                }
              }

              else if (v9 == 8)
              {
                v10 = @"out of superset city";
              }

              else
              {
                v10 = 0;
                if (v9 == 16)
                {
                  v10 = @"out of extended area";
                }
              }
            }

            else if (v9 > 1)
            {
              if (v9 == 2)
              {
                v10 = @"in superset extended area";
              }

              else
              {
                v10 = 0;
                if (v9 == 4)
                {
                  v10 = @"in superset country";
                }
              }
            }

            else if (v9)
            {
              if (v9 == 1)
              {
                v10 = @"in superset city";
              }

              else
              {
                v10 = 0;
              }
            }

            else
            {
              v10 = @"ignore";
            }

            v11 = v10;
            [v4 addObject:v11];
          }
        }

        v6 = [&unk_28449B2B0 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }

    v12 = [v4 componentsJoinedByString:{@", "}];
  }

  else
  {
    v12 = @"ignore";
  }

  return v12;
}

@end