@interface CADFilterSuggestedCalendarsAccessHandler
- (CADFilterSuggestedCalendarsAccessHandler)initWithDatabaseDataProvider:(id)provider permissionValidator:(id)validator;
- (void)gatherRestrictedCalendarRowIDs:(id)ds forAction:(unint64_t)action inDatabase:(CalDatabase *)database;
@end

@implementation CADFilterSuggestedCalendarsAccessHandler

- (CADFilterSuggestedCalendarsAccessHandler)initWithDatabaseDataProvider:(id)provider permissionValidator:(id)validator
{
  validatorCopy = validator;
  v11.receiver = self;
  v11.super_class = CADFilterSuggestedCalendarsAccessHandler;
  v8 = [(CADAccountAccessHandler *)&v11 initWithDatabaseDataProvider:provider];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_permissionValidator, validator);
  }

  return v9;
}

- (void)gatherRestrictedCalendarRowIDs:(id)ds forAction:(unint64_t)action inDatabase:(CalDatabase *)database
{
  dsCopy = ds;
  permissionValidator = [(CADFilterSuggestedCalendarsAccessHandler *)self permissionValidator];
  if ([permissionValidator canModifySuggestedEventCalendar])
  {
    v8 = +[CADFeatureSet isSuggestionsEnabled];

    if (v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  dataProvider = [(CADAccountAccessHandler *)self dataProvider];
  v10 = [dataProvider suggestionsCalendarRowIDInDatabase:database];
  if (v10 >= 1)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithInt:v10];
    [dsCopy addObject:v11];
  }

  v12 = [dataProvider naturalLanguageSuggestionsCalendarRowIDInDatabase:database];
  if (v12 >= 1)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithInt:v12];
    [dsCopy addObject:v13];
  }

LABEL_10:
}

@end