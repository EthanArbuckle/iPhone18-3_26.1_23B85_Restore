@interface BCCAReporter
+ (id)descriptionForDiscoverSuccessType:(unint64_t)a3;
+ (id)discoverRouteDescription;
+ (void)incrementDiscoverSuccessType:(unint64_t)a3;
@end

@implementation BCCAReporter

+ (id)discoverRouteDescription
{
  v2 = [a1 routeType];
  if ((v2 - 1) > 2)
  {
    return @"Undefined";
  }

  else
  {
    return off_278D22520[v2 - 1];
  }
}

+ (id)descriptionForDiscoverSuccessType:(unint64_t)a3
{
  if (a3 > 6)
  {
    if (a3 > 9)
    {
      switch(a3)
      {
        case 0xAuLL:
          return @"VideoTutorials";
        case 0xBuLL:
          return @"FitnessPlus";
        case 0xCuLL:
          [a1 setRouteType:3];
          return @"DiscoverVisitInSyncTrap";
      }

      return @"Unknown";
    }

    if (a3 == 7)
    {
      return @"CustomizeYourWatch";
    }

    else if (a3 == 8)
    {
      return @"HealthAndFitness";
    }

    else
    {
      return @"ExploreWatchApps";
    }
  }

  else
  {
    if (a3 <= 3)
    {
      switch(a3)
      {
        case 1uLL:
          [a1 setRouteType:?];
          return @"DiscoverVisitPaired";
        case 2uLL:
          [a1 setRouteType:?];
          return @"DiscoverVisitUnpaired";
        case 3uLL:
          return @"WhatsNewInWatchOS";
      }

      return @"Unknown";
    }

    if (a3 == 4)
    {
      return @"WelcomeToAppleWatch";
    }

    else if (a3 == 5)
    {
      return @"GetToKnowCurrentSeries";
    }

    else
    {
      return @"UserGuide";
    }
  }
}

+ (void)incrementDiscoverSuccessType:(unint64_t)a3
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"StoryID";
  v4 = [a1 descriptionForDiscoverSuccessType:a3];
  v8[1] = @"RouteID";
  v9[0] = v4;
  v5 = [a1 discoverRouteDescription];
  v9[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  [a1 sendEvent:@"com.apple.com.apple.Bridge.DiscoverTab.Story" with:v6];

  v7 = *MEMORY[0x277D85DE8];
}

@end