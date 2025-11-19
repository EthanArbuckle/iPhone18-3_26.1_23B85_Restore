@interface CADFilterSuggestedCalendarsAccessHandler
- (CADFilterSuggestedCalendarsAccessHandler)initWithDatabaseDataProvider:(id)a3 permissionValidator:(id)a4;
- (void)gatherRestrictedCalendarRowIDs:(id)a3 forAction:(unint64_t)a4 inDatabase:(CalDatabase *)a5;
@end

@implementation CADFilterSuggestedCalendarsAccessHandler

- (CADFilterSuggestedCalendarsAccessHandler)initWithDatabaseDataProvider:(id)a3 permissionValidator:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CADFilterSuggestedCalendarsAccessHandler;
  v8 = [(CADAccountAccessHandler *)&v11 initWithDatabaseDataProvider:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_permissionValidator, a4);
  }

  return v9;
}

- (void)gatherRestrictedCalendarRowIDs:(id)a3 forAction:(unint64_t)a4 inDatabase:(CalDatabase *)a5
{
  v14 = a3;
  v7 = [(CADFilterSuggestedCalendarsAccessHandler *)self permissionValidator];
  if ([v7 canModifySuggestedEventCalendar])
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

  v9 = [(CADAccountAccessHandler *)self dataProvider];
  v10 = [v9 suggestionsCalendarRowIDInDatabase:a5];
  if (v10 >= 1)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithInt:v10];
    [v14 addObject:v11];
  }

  v12 = [v9 naturalLanguageSuggestionsCalendarRowIDInDatabase:a5];
  if (v12 >= 1)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithInt:v12];
    [v14 addObject:v13];
  }

LABEL_10:
}

@end