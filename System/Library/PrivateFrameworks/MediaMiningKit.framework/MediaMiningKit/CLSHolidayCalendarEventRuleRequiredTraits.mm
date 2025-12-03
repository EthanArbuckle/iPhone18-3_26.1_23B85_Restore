@interface CLSHolidayCalendarEventRuleRequiredTraits
+ (id)_locationTraitDebugStringForTrait:(unint64_t)trait;
+ (id)_peopleTraitDebugStringForTrait:(unint64_t)trait;
+ (unint64_t)importanceEnumForImportanceString:(id)string;
- (BOOL)evaluateWithTraits:(id)traits evaluateLocationTraits:(BOOL)locationTraits;
- (CLSHolidayCalendarEventRuleRequiredTraits)initWithDescription:(id)description;
- (id)description;
- (unint64_t)importanceForScene:(id)scene;
@end

@implementation CLSHolidayCalendarEventRuleRequiredTraits

- (unint64_t)importanceForScene:(id)scene
{
  v3 = [(NSDictionary *)self->_defaultScenesWithImportanceString objectForKeyedSubscript:scene];
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

- (BOOL)evaluateWithTraits:(id)traits evaluateLocationTraits:(BOOL)locationTraits
{
  locationTraitsCopy = locationTraits;
  v54 = *MEMORY[0x277D85DE8];
  traitsCopy = traits;
  if (locationTraitsCopy && -[CLSHolidayCalendarEventRuleTraits locationTrait](self, "locationTrait") && [traitsCopy locationTrait])
  {
    locationTrait = [(CLSHolidayCalendarEventRuleTraits *)self locationTrait];
    v8 = ([traitsCopy locationTrait] & locationTrait) != 0;
  }

  else
  {
    v8 = 1;
  }

  if (-[CLSHolidayCalendarEventRuleTraits peopleTrait](self, "peopleTrait") && [traitsCopy peopleTrait])
  {
    peopleTrait = [(CLSHolidayCalendarEventRuleTraits *)self peopleTrait];
    v10 = ([traitsCopy peopleTrait] & peopleTrait) != 0;
  }

  else
  {
    v10 = 1;
  }

  if (-[CLSHolidayCalendarEventRuleRequiredTraits peopleCountRangeIsRequired](self, "peopleCountRangeIsRequired") && [traitsCopy numberOfPeople] != 0x7FFFFFFFFFFFFFFFLL)
  {
    numberOfPeople = [traitsCopy numberOfPeople];
    v11 = numberOfPeople >= [(CLSHolidayCalendarEventRuleRequiredTraits *)self minimumPeopleCount];
  }

  else
  {
    v11 = 1;
  }

  if ([(CLSHolidayCalendarEventRuleRequiredTraits *)self mustContainMePerson])
  {
    containsMePerson = [traitsCopy containsMePerson];
  }

  else
  {
    containsMePerson = 1;
  }

  v14 = v8 && v10;
  v15 = v11 & containsMePerson;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v17 = NSStringFromBOOL();
    v18 = NSStringFromBOOL();
    locationTrait2 = [traitsCopy locationTrait];
    locationTrait3 = [(CLSHolidayCalendarEventRuleTraits *)self locationTrait];
    v25 = NSStringFromBOOL();
    peopleTrait2 = [traitsCopy peopleTrait];
    peopleTrait3 = [(CLSHolidayCalendarEventRuleTraits *)self peopleTrait];
    v22 = NSStringFromBOOL();
    numberOfPeople2 = [traitsCopy numberOfPeople];
    minimumPeopleCount = [(CLSHolidayCalendarEventRuleRequiredTraits *)self minimumPeopleCount];
    v20 = NSStringFromBOOL();
    *buf = 138415362;
    v29 = v17;
    v30 = 2112;
    v31 = v18;
    v32 = 2048;
    v33 = locationTrait2;
    v34 = 2048;
    v35 = locationTrait3;
    v36 = 2112;
    v37 = v25;
    v38 = 2048;
    v39 = peopleTrait2;
    v40 = 2048;
    v41 = peopleTrait3;
    v42 = 2112;
    v43 = v22;
    v44 = 2048;
    v45 = numberOfPeople2;
    v46 = 2048;
    v47 = minimumPeopleCount;
    v48 = 2112;
    v49 = v20;
    v50 = 1024;
    containsMePerson2 = [traitsCopy containsMePerson];
    v52 = 1024;
    mustContainMePerson = [(CLSHolidayCalendarEventRuleRequiredTraits *)self mustContainMePerson];
    _os_log_debug_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Traits succeeded %@ : location %@ (given %lu, needed %lu), people %@ (given %lu, needed %lu), minimumPeopleCount %@ (given %lu, needed %lu), mustContainMe %@ (given %d, needed %d)", buf, 0x7Cu);
  }

  return v14 & v15;
}

- (CLSHolidayCalendarEventRuleRequiredTraits)initWithDescription:(id)description
{
  descriptionCopy = description;
  v18.receiver = self;
  v18.super_class = CLSHolidayCalendarEventRuleRequiredTraits;
  v5 = [(CLSHolidayCalendarEventRuleTraits *)&v18 init];
  if (v5)
  {
    v6 = [descriptionCopy objectForKeyedSubscript:@"eventType"];
    v5->_type = [v6 unsignedIntegerValue];

    v7 = [descriptionCopy objectForKeyedSubscript:@"eventCategory"];
    v5->_eventCategory = [v7 unsignedIntegerValue];

    v8 = [descriptionCopy objectForKeyedSubscript:@"peopleTrait"];
    unsignedIntegerValue = [v8 unsignedIntegerValue];

    [(CLSHolidayCalendarEventRuleTraits *)v5 setPeopleTrait:unsignedIntegerValue];
    v10 = [descriptionCopy objectForKeyedSubscript:@"minimumPeopleCount"];
    v5->_minimumPeopleCount = [v10 unsignedIntegerValue];
    v11 = [descriptionCopy objectForKeyedSubscript:@"locationTrait"];
    unsignedIntegerValue2 = [v11 unsignedIntegerValue];

    [(CLSHolidayCalendarEventRuleTraits *)v5 setLocationTrait:unsignedIntegerValue2];
    v13 = [descriptionCopy objectForKeyedSubscript:@"scenes"];
    defaultScenesWithImportanceString = v5->_defaultScenesWithImportanceString;
    v5->_defaultScenesWithImportanceString = v13;

    v15 = [descriptionCopy objectForKeyedSubscript:@"mustContainMe"];
    v5->_mustContainMePerson = [v15 BOOLValue];

    v16 = [descriptionCopy objectForKeyedSubscript:@"allowApproximateDateCalculation"];
    v5->_allowApproximateDateCalculation = [v16 BOOLValue];
  }

  return v5;
}

+ (unint64_t)importanceEnumForImportanceString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"edgeCase"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"medium"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"important"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"imperative"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_peopleTraitDebugStringForTrait:(unint64_t)trait
{
  v19 = *MEMORY[0x277D85DE8];
  if (trait)
  {
    array = [MEMORY[0x277CBEB18] array];
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

          unsignedIntegerValue = [*(*(&v14 + 1) + 8 * i) unsignedIntegerValue];
          if ((unsignedIntegerValue & trait) != 0)
          {
            if (unsignedIntegerValue <= 7)
            {
              if (unsignedIntegerValue > 1)
              {
                if (unsignedIntegerValue == 2)
                {
                  v10 = @"family";
                }

                else
                {
                  v10 = 0;
                  if (unsignedIntegerValue == 4)
                  {
                    v10 = @"friend";
                  }
                }
              }

              else if (unsignedIntegerValue)
              {
                if (unsignedIntegerValue == 1)
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

            else if (unsignedIntegerValue <= 31)
            {
              if (unsignedIntegerValue == 8)
              {
                v10 = @"coworker";
              }

              else
              {
                v10 = 0;
                if (unsignedIntegerValue == 16)
                {
                  v10 = @"acquaintance";
                }
              }
            }

            else if (unsignedIntegerValue == 32)
            {
              v10 = @"mother";
            }

            else if (unsignedIntegerValue == 64)
            {
              v10 = @"father";
            }

            else
            {
              v10 = 0;
              if (unsignedIntegerValue == 127)
              {
                v10 = @"Any";
              }
            }

            v11 = v10;
            [array addObject:v11];
          }
        }

        v6 = [&unk_28449B2C8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }

    v12 = [array componentsJoinedByString:{@", "}];
  }

  else
  {
    v12 = @"ignore";
  }

  return v12;
}

+ (id)_locationTraitDebugStringForTrait:(unint64_t)trait
{
  v19 = *MEMORY[0x277D85DE8];
  if (trait)
  {
    array = [MEMORY[0x277CBEB18] array];
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

          unsignedIntegerValue = [*(*(&v14 + 1) + 8 * i) unsignedIntegerValue];
          if ((unsignedIntegerValue & trait) != 0)
          {
            if (unsignedIntegerValue > 7)
            {
              if (unsignedIntegerValue > 31)
              {
                if (unsignedIntegerValue == 32)
                {
                  v10 = @"out of superset country";
                }

                else
                {
                  v10 = 0;
                  if (unsignedIntegerValue == 63)
                  {
                    v10 = @"Any";
                  }
                }
              }

              else if (unsignedIntegerValue == 8)
              {
                v10 = @"out of superset city";
              }

              else
              {
                v10 = 0;
                if (unsignedIntegerValue == 16)
                {
                  v10 = @"out of extended area";
                }
              }
            }

            else if (unsignedIntegerValue > 1)
            {
              if (unsignedIntegerValue == 2)
              {
                v10 = @"in superset extended area";
              }

              else
              {
                v10 = 0;
                if (unsignedIntegerValue == 4)
                {
                  v10 = @"in superset country";
                }
              }
            }

            else if (unsignedIntegerValue)
            {
              if (unsignedIntegerValue == 1)
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
            [array addObject:v11];
          }
        }

        v6 = [&unk_28449B2B0 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }

    v12 = [array componentsJoinedByString:{@", "}];
  }

  else
  {
    v12 = @"ignore";
  }

  return v12;
}

@end