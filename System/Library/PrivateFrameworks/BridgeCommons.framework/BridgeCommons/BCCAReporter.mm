@interface BCCAReporter
+ (id)descriptionForDiscoverSuccessType:(unint64_t)type;
+ (id)discoverRouteDescription;
+ (void)incrementDiscoverSuccessType:(unint64_t)type;
@end

@implementation BCCAReporter

+ (id)discoverRouteDescription
{
  routeType = [self routeType];
  if ((routeType - 1) > 2)
  {
    return @"Undefined";
  }

  else
  {
    return off_278D22520[routeType - 1];
  }
}

+ (id)descriptionForDiscoverSuccessType:(unint64_t)type
{
  if (type > 6)
  {
    if (type > 9)
    {
      switch(type)
      {
        case 0xAuLL:
          return @"VideoTutorials";
        case 0xBuLL:
          return @"FitnessPlus";
        case 0xCuLL:
          [self setRouteType:3];
          return @"DiscoverVisitInSyncTrap";
      }

      return @"Unknown";
    }

    if (type == 7)
    {
      return @"CustomizeYourWatch";
    }

    else if (type == 8)
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
    if (type <= 3)
    {
      switch(type)
      {
        case 1uLL:
          [self setRouteType:?];
          return @"DiscoverVisitPaired";
        case 2uLL:
          [self setRouteType:?];
          return @"DiscoverVisitUnpaired";
        case 3uLL:
          return @"WhatsNewInWatchOS";
      }

      return @"Unknown";
    }

    if (type == 4)
    {
      return @"WelcomeToAppleWatch";
    }

    else if (type == 5)
    {
      return @"GetToKnowCurrentSeries";
    }

    else
    {
      return @"UserGuide";
    }
  }
}

+ (void)incrementDiscoverSuccessType:(unint64_t)type
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"StoryID";
  v4 = [self descriptionForDiscoverSuccessType:type];
  v8[1] = @"RouteID";
  v9[0] = v4;
  discoverRouteDescription = [self discoverRouteDescription];
  v9[1] = discoverRouteDescription;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  [self sendEvent:@"com.apple.com.apple.Bridge.DiscoverTab.Story" with:v6];

  v7 = *MEMORY[0x277D85DE8];
}

@end