@interface ClocksIntentHandler
- (id)allClocks;
- (id)clocksFromCities:(id)cities;
- (id)defaultCitiesForClocks:(id)clocks;
- (id)userConfiguredClocks;
- (void)getCitiesMatchingSearch:(id)search completionHandler:(id)handler;
- (void)handleClocks:(id)clocks completion:(id)completion;
- (void)provideCitiesOptionsForClocks:(id)clocks searchTerm:(id)term withCompletion:(id)completion;
@end

@implementation ClocksIntentHandler

- (void)provideCitiesOptionsForClocks:(id)clocks searchTerm:(id)term withCompletion:(id)completion
{
  termCopy = term;
  completionCopy = completion;
  if ([termCopy length])
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100001AF4;
    v12[3] = &unk_1000041F0;
    v13 = completionCopy;
    [(ClocksIntentHandler *)self getCitiesMatchingSearch:termCopy completionHandler:v12];
  }

  else
  {
    v9 = [INObjectCollection alloc];
    allClocks = [(ClocksIntentHandler *)self allClocks];
    v11 = [v9 initWithItems:allClocks];

    [v11 setUsesIndexedCollation:1];
    (*(completionCopy + 2))(completionCopy, v11, 0);
  }
}

- (id)allClocks
{
  v3 = +[WorldClockManager sharedManager];
  allCities = [v3 allCities];
  v5 = [(ClocksIntentHandler *)self clocksFromCities:allCities];

  return v5;
}

- (id)clocksFromCities:(id)cities
{
  citiesCopy = cities;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100001CCC;
  v7[3] = &unk_100004218;
  v8 = objc_opt_new();
  v4 = v8;
  [citiesCopy enumerateObjectsUsingBlock:v7];

  v5 = [v4 copy];

  return v5;
}

- (id)defaultCitiesForClocks:(id)clocks
{
  v4 = +[WorldClockManager sharedManager];
  v5 = [v4 citiesMatchingIdentifiers:&off_1000043B0];
  v6 = [(ClocksIntentHandler *)self clocksFromCities:v5];

  return v6;
}

- (void)getCitiesMatchingSearch:(id)search completionHandler:(id)handler
{
  searchCopy = search;
  handlerCopy = handler;
  allClocks = [(ClocksIntentHandler *)self allClocks];
  if ([searchCopy length])
  {
    v8 = +[WorldClockManager sharedManager];
    v9 = [v8 citiesMatchingName:searchCopy];
    v10 = [(ClocksIntentHandler *)self clocksFromCities:v9];

    handlerCopy[2](handlerCopy, v10, 0);
  }

  else
  {
    handlerCopy[2](handlerCopy, allClocks, 0);
  }
}

- (id)userConfiguredClocks
{
  v3 = +[WorldClockManager sharedManager];
  cities = [v3 cities];
  v5 = [(ClocksIntentHandler *)self clocksFromCities:cities];

  return v5;
}

- (void)handleClocks:(id)clocks completion:(id)completion
{
  clocksCopy = clocks;
  completionCopy = completion;
  v38 = objc_opt_new();
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v35 = clocksCopy;
  obj = [clocksCopy cities];
  v39 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v39)
  {
    v37 = *v41;
    do
    {
      for (i = 0; i != v39; i = i + 1)
      {
        if (*v41 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v40 + 1) + 8 * i);
        v8 = [MTWorldClock alloc];
        identifier = [v7 identifier];
        displayString = [v7 displayString];
        v11 = [v8 initWithIdentifier:identifier displayString:displayString];

        displayString2 = [v7 displayString];
        [v11 setCity:displayString2];

        timeZoneName = [v7 timeZoneName];

        [v11 setTimeZoneName:timeZoneName];
        timeZoneName2 = [v11 timeZoneName];
        v15 = [NSTimeZone timeZoneWithName:timeZoneName2];

        v16 = +[NSTimeZone systemTimeZone];
        v17 = +[NSDate date];
        v18 = [v15 secondsFromGMTForDate:v17];
        v19 = v18 - [v16 secondsFromGMTForDate:v17];
        v20 = [MTUtilities dayAndTimeZoneOffsetStringFromDate:v17 withTimeZoneOffset:v19 timeZoneAbbreviation:0 spaceBeforeTimeDesignator:0 hoursOnly:0 numericOnly:0];
        [v11 setSubtitleString:v20];
        v21 = [NSNumber numberWithInteger:v18];
        [v11 setTimeZoneOffsetFromGMT:v21];

        v22 = [NSNumber numberWithInteger:v19];
        [v11 setTimeZoneOffset:v22];

        abbreviation = [v15 abbreviation];
        [v11 setTimeZoneAbbreviation:abbreviation];

        isDaylightSavingTime = [v15 isDaylightSavingTime];
        v25 = [NSNumber numberWithBool:isDaylightSavingTime];
        [v11 setIsDaylightSavingTime:v25];

        if (isDaylightSavingTime)
        {
          v26 = 2;
        }

        else
        {
          v26 = 0;
        }

        v27 = [v15 localizedName:v26 locale:{0, completionCopy}];
        [v11 setTimeZoneDisplayName:v27];

        v28 = [v17 dateByAddingTimeInterval:v19];
        v29 = +[NSCalendar currentCalendar];
        v30 = [v29 components:252 fromDate:v28];

        v31 = +[NSCalendar currentCalendar];
        v32 = [v31 components:224 fromDate:v28];

        [v11 setCurrentDate:v30];
        [v11 setCurrentTime:v32];

        [v38 addObject:v11];
      }

      v39 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v39);
  }

  v33 = [[ClocksIntentResponse alloc] initWithCode:4 userActivity:0];
  [v33 setClocks:v38];
  completionCopy[2](completionCopy, v33);
}

@end