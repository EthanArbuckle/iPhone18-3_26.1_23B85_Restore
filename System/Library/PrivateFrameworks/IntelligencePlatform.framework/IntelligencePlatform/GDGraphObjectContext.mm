@interface GDGraphObjectContext
- (id)graphActivityEventFromEntityIdentifier:(id)identifier error:(id *)error;
- (id)graphActivityEventTypeFromEntityIdentifier:(id)identifier error:(id *)error;
- (id)graphAttendingAPerformanceActivityEventFromEntityIdentifier:(id)identifier error:(id *)error;
- (id)graphBehaviorActivityEventFromEntityIdentifier:(id)identifier error:(id *)error;
- (id)graphBicyclingActivityEventFromEntityIdentifier:(id)identifier error:(id *)error;
- (id)graphCalendarEventFromEntityIdentifier:(id)identifier error:(id *)error;
- (id)graphCommunicatingActivityEventFromEntityIdentifier:(id)identifier error:(id *)error;
- (id)graphCommuteActivityEventFromEntityIdentifier:(id)identifier error:(id *)error;
- (id)graphDiningActivityEventFromEntityIdentifier:(id)identifier error:(id *)error;
- (id)graphDrivingActivityEventFromEntityIdentifier:(id)identifier error:(id *)error;
- (id)graphEatingActivityEventFromEntityIdentifier:(id)identifier error:(id *)error;
- (id)graphEventFromEntityIdentifier:(id)identifier error:(id *)error;
- (id)graphExercisingActivityEventFromEntityIdentifier:(id)identifier error:(id *)error;
- (id)graphFacetimeActivityEventFromEntityIdentifier:(id)identifier error:(id *)error;
- (id)graphGamingActivityEventFromEntityIdentifier:(id)identifier error:(id *)error;
- (id)graphGoingToBedActivityEventFromEntityIdentifier:(id)identifier error:(id *)error;
- (id)graphHikingActivityEventFromEntityIdentifier:(id)identifier error:(id *)error;
- (id)graphLocationFromEntityIdentifier:(id)identifier error:(id *)error;
- (id)graphLocationVisitActivityEventFromEntityIdentifier:(id)identifier error:(id *)error;
- (id)graphMeetingActivityEventFromEntityIdentifier:(id)identifier error:(id *)error;
- (id)graphMindfulnessActivityEventFromEntityIdentifier:(id)identifier error:(id *)error;
- (id)graphModeOfTransportationFromEntityIdentifier:(id)identifier error:(id *)error;
- (id)graphObjectFromEntityIdentifier:(id)identifier error:(id *)error;
- (id)graphOnThePhoneActivityEventFromEntityIdentifier:(id)identifier error:(id *)error;
- (id)graphOrganizationFromEntityIdentifier:(id)identifier error:(id *)error;
- (id)graphPersonFromEntityIdentifier:(id)identifier error:(id *)error;
- (id)graphReadingActivityEventFromEntityIdentifier:(id)identifier error:(id *)error;
- (id)graphRunningActivityEventFromEntityIdentifier:(id)identifier error:(id *)error;
- (id)graphShoppingActivityEventFromEntityIdentifier:(id)identifier error:(id *)error;
- (id)graphSleepingActivityEventFromEntityIdentifier:(id)identifier error:(id *)error;
- (id)graphSocializingActivityEventFromEntityIdentifier:(id)identifier error:(id *)error;
- (id)graphSoftwareFromEntityIdentifier:(id)identifier error:(id *)error;
- (id)graphSongEventFromEntityIdentifier:(id)identifier error:(id *)error;
- (id)graphSongFromEntityIdentifier:(id)identifier error:(id *)error;
- (id)graphSportsGameEventFromEntityIdentifier:(id)identifier error:(id *)error;
- (id)graphSportsTeamFromEntityIdentifier:(id)identifier error:(id *)error;
- (id)graphStationaryActivityEventFromEntityIdentifier:(id)identifier error:(id *)error;
- (id)graphTopicFromEntityIdentifier:(id)identifier error:(id *)error;
- (id)graphTransportationActivityEventFromEntityIdentifier:(id)identifier error:(id *)error;
- (id)graphTravelingActivityEventFromEntityIdentifier:(id)identifier error:(id *)error;
- (id)graphVacationingActivityEventFromEntityIdentifier:(id)identifier error:(id *)error;
- (id)graphWakingUpActivityEventFromEntityIdentifier:(id)identifier error:(id *)error;
- (id)graphWalkingActivityEventFromEntityIdentifier:(id)identifier error:(id *)error;
- (id)graphWatchingTVActivityEventFromEntityIdentifier:(id)identifier error:(id *)error;
- (id)graphWorkingActivityEventFromEntityIdentifier:(id)identifier error:(id *)error;
@end

@implementation GDGraphObjectContext

- (id)graphObjectFromEntityIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  context = [(GDGraphObjectContext *)self context];
  v8 = [context graphObjectFrom:identifierCopy error:error];

  return v8;
}

- (id)graphSoftwareFromEntityIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  context = [(GDGraphObjectContext *)self context];
  v8 = [context graphSoftwareFrom:identifierCopy error:error];

  return v8;
}

- (id)graphModeOfTransportationFromEntityIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  context = [(GDGraphObjectContext *)self context];
  v8 = [context graphModeOfTransportationFrom:identifierCopy error:error];

  return v8;
}

- (id)graphActivityEventTypeFromEntityIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  context = [(GDGraphObjectContext *)self context];
  v8 = [context graphActivityEventTypeFrom:identifierCopy error:error];

  return v8;
}

- (id)graphSongFromEntityIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  context = [(GDGraphObjectContext *)self context];
  v8 = [context graphSongFrom:identifierCopy error:error];

  return v8;
}

- (id)graphTopicFromEntityIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  context = [(GDGraphObjectContext *)self context];
  v8 = [context graphTopicFrom:identifierCopy error:error];

  return v8;
}

- (id)graphPersonFromEntityIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  context = [(GDGraphObjectContext *)self context];
  v8 = [context graphPersonFrom:identifierCopy error:error];

  return v8;
}

- (id)graphSportsTeamFromEntityIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  context = [(GDGraphObjectContext *)self context];
  v8 = [context graphSportsTeamFrom:identifierCopy error:error];

  return v8;
}

- (id)graphOrganizationFromEntityIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  context = [(GDGraphObjectContext *)self context];
  v8 = [context graphOrganizationFrom:identifierCopy error:error];

  return v8;
}

- (id)graphLocationFromEntityIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  context = [(GDGraphObjectContext *)self context];
  v8 = [context graphLocationFrom:identifierCopy error:error];

  return v8;
}

- (id)graphSongEventFromEntityIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  context = [(GDGraphObjectContext *)self context];
  v8 = [context graphSongEventFrom:identifierCopy error:error];

  return v8;
}

- (id)graphCalendarEventFromEntityIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  context = [(GDGraphObjectContext *)self context];
  v8 = [context graphCalendarEventFrom:identifierCopy error:error];

  return v8;
}

- (id)graphBehaviorActivityEventFromEntityIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  context = [(GDGraphObjectContext *)self context];
  v8 = [context graphBehaviorActivityEventFrom:identifierCopy error:error];

  return v8;
}

- (id)graphDrivingActivityEventFromEntityIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  context = [(GDGraphObjectContext *)self context];
  v8 = [context graphDrivingActivityEventFrom:identifierCopy error:error];

  return v8;
}

- (id)graphFacetimeActivityEventFromEntityIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  context = [(GDGraphObjectContext *)self context];
  v8 = [context graphFacetimeActivityEventFrom:identifierCopy error:error];

  return v8;
}

- (id)graphOnThePhoneActivityEventFromEntityIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  context = [(GDGraphObjectContext *)self context];
  v8 = [context graphOnThePhoneActivityEventFrom:identifierCopy error:error];

  return v8;
}

- (id)graphHikingActivityEventFromEntityIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  context = [(GDGraphObjectContext *)self context];
  v8 = [context graphHikingActivityEventFrom:identifierCopy error:error];

  return v8;
}

- (id)graphBicyclingActivityEventFromEntityIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  context = [(GDGraphObjectContext *)self context];
  v8 = [context graphBicyclingActivityEventFrom:identifierCopy error:error];

  return v8;
}

- (id)graphRunningActivityEventFromEntityIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  context = [(GDGraphObjectContext *)self context];
  v8 = [context graphRunningActivityEventFrom:identifierCopy error:error];

  return v8;
}

- (id)graphWalkingActivityEventFromEntityIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  context = [(GDGraphObjectContext *)self context];
  v8 = [context graphWalkingActivityEventFrom:identifierCopy error:error];

  return v8;
}

- (id)graphLocationVisitActivityEventFromEntityIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  context = [(GDGraphObjectContext *)self context];
  v8 = [context graphLocationVisitActivityEventFrom:identifierCopy error:error];

  return v8;
}

- (id)graphStationaryActivityEventFromEntityIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  context = [(GDGraphObjectContext *)self context];
  v8 = [context graphStationaryActivityEventFrom:identifierCopy error:error];

  return v8;
}

- (id)graphAttendingAPerformanceActivityEventFromEntityIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  context = [(GDGraphObjectContext *)self context];
  v8 = [context graphAttendingAPerformanceActivityEventFrom:identifierCopy error:error];

  return v8;
}

- (id)graphDiningActivityEventFromEntityIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  context = [(GDGraphObjectContext *)self context];
  v8 = [context graphDiningActivityEventFrom:identifierCopy error:error];

  return v8;
}

- (id)graphCommuteActivityEventFromEntityIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  context = [(GDGraphObjectContext *)self context];
  v8 = [context graphCommuteActivityEventFrom:identifierCopy error:error];

  return v8;
}

- (id)graphExercisingActivityEventFromEntityIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  context = [(GDGraphObjectContext *)self context];
  v8 = [context graphExercisingActivityEventFrom:identifierCopy error:error];

  return v8;
}

- (id)graphGoingToBedActivityEventFromEntityIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  context = [(GDGraphObjectContext *)self context];
  v8 = [context graphGoingToBedActivityEventFrom:identifierCopy error:error];

  return v8;
}

- (id)graphWakingUpActivityEventFromEntityIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  context = [(GDGraphObjectContext *)self context];
  v8 = [context graphWakingUpActivityEventFrom:identifierCopy error:error];

  return v8;
}

- (id)graphSocializingActivityEventFromEntityIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  context = [(GDGraphObjectContext *)self context];
  v8 = [context graphSocializingActivityEventFrom:identifierCopy error:error];

  return v8;
}

- (id)graphGamingActivityEventFromEntityIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  context = [(GDGraphObjectContext *)self context];
  v8 = [context graphGamingActivityEventFrom:identifierCopy error:error];

  return v8;
}

- (id)graphVacationingActivityEventFromEntityIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  context = [(GDGraphObjectContext *)self context];
  v8 = [context graphVacationingActivityEventFrom:identifierCopy error:error];

  return v8;
}

- (id)graphReadingActivityEventFromEntityIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  context = [(GDGraphObjectContext *)self context];
  v8 = [context graphReadingActivityEventFrom:identifierCopy error:error];

  return v8;
}

- (id)graphTravelingActivityEventFromEntityIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  context = [(GDGraphObjectContext *)self context];
  v8 = [context graphTravelingActivityEventFrom:identifierCopy error:error];

  return v8;
}

- (id)graphSleepingActivityEventFromEntityIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  context = [(GDGraphObjectContext *)self context];
  v8 = [context graphSleepingActivityEventFrom:identifierCopy error:error];

  return v8;
}

- (id)graphMindfulnessActivityEventFromEntityIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  context = [(GDGraphObjectContext *)self context];
  v8 = [context graphMindfulnessActivityEventFrom:identifierCopy error:error];

  return v8;
}

- (id)graphShoppingActivityEventFromEntityIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  context = [(GDGraphObjectContext *)self context];
  v8 = [context graphShoppingActivityEventFrom:identifierCopy error:error];

  return v8;
}

- (id)graphCommunicatingActivityEventFromEntityIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  context = [(GDGraphObjectContext *)self context];
  v8 = [context graphCommunicatingActivityEventFrom:identifierCopy error:error];

  return v8;
}

- (id)graphWatchingTVActivityEventFromEntityIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  context = [(GDGraphObjectContext *)self context];
  v8 = [context graphWatchingTVActivityEventFrom:identifierCopy error:error];

  return v8;
}

- (id)graphEatingActivityEventFromEntityIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  context = [(GDGraphObjectContext *)self context];
  v8 = [context graphEatingActivityEventFrom:identifierCopy error:error];

  return v8;
}

- (id)graphMeetingActivityEventFromEntityIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  context = [(GDGraphObjectContext *)self context];
  v8 = [context graphMeetingActivityEventFrom:identifierCopy error:error];

  return v8;
}

- (id)graphWorkingActivityEventFromEntityIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  context = [(GDGraphObjectContext *)self context];
  v8 = [context graphWorkingActivityEventFrom:identifierCopy error:error];

  return v8;
}

- (id)graphTransportationActivityEventFromEntityIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  context = [(GDGraphObjectContext *)self context];
  v8 = [context graphTransportationActivityEventFrom:identifierCopy error:error];

  return v8;
}

- (id)graphSportsGameEventFromEntityIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  context = [(GDGraphObjectContext *)self context];
  v8 = [context graphSportsGameEventFrom:identifierCopy error:error];

  return v8;
}

- (id)graphActivityEventFromEntityIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  context = [(GDGraphObjectContext *)self context];
  v8 = [context graphActivityEventFrom:identifierCopy error:error];

  return v8;
}

- (id)graphEventFromEntityIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  context = [(GDGraphObjectContext *)self context];
  v8 = [context graphEventFrom:identifierCopy error:error];

  return v8;
}

@end