@interface GDGraphObjectContext
- (id)graphActivityEventFromEntityIdentifier:(id)a3 error:(id *)a4;
- (id)graphActivityEventTypeFromEntityIdentifier:(id)a3 error:(id *)a4;
- (id)graphAttendingAPerformanceActivityEventFromEntityIdentifier:(id)a3 error:(id *)a4;
- (id)graphBehaviorActivityEventFromEntityIdentifier:(id)a3 error:(id *)a4;
- (id)graphBicyclingActivityEventFromEntityIdentifier:(id)a3 error:(id *)a4;
- (id)graphCalendarEventFromEntityIdentifier:(id)a3 error:(id *)a4;
- (id)graphCommunicatingActivityEventFromEntityIdentifier:(id)a3 error:(id *)a4;
- (id)graphCommuteActivityEventFromEntityIdentifier:(id)a3 error:(id *)a4;
- (id)graphDiningActivityEventFromEntityIdentifier:(id)a3 error:(id *)a4;
- (id)graphDrivingActivityEventFromEntityIdentifier:(id)a3 error:(id *)a4;
- (id)graphEatingActivityEventFromEntityIdentifier:(id)a3 error:(id *)a4;
- (id)graphEventFromEntityIdentifier:(id)a3 error:(id *)a4;
- (id)graphExercisingActivityEventFromEntityIdentifier:(id)a3 error:(id *)a4;
- (id)graphFacetimeActivityEventFromEntityIdentifier:(id)a3 error:(id *)a4;
- (id)graphGamingActivityEventFromEntityIdentifier:(id)a3 error:(id *)a4;
- (id)graphGoingToBedActivityEventFromEntityIdentifier:(id)a3 error:(id *)a4;
- (id)graphHikingActivityEventFromEntityIdentifier:(id)a3 error:(id *)a4;
- (id)graphLocationFromEntityIdentifier:(id)a3 error:(id *)a4;
- (id)graphLocationVisitActivityEventFromEntityIdentifier:(id)a3 error:(id *)a4;
- (id)graphMeetingActivityEventFromEntityIdentifier:(id)a3 error:(id *)a4;
- (id)graphMindfulnessActivityEventFromEntityIdentifier:(id)a3 error:(id *)a4;
- (id)graphModeOfTransportationFromEntityIdentifier:(id)a3 error:(id *)a4;
- (id)graphObjectFromEntityIdentifier:(id)a3 error:(id *)a4;
- (id)graphOnThePhoneActivityEventFromEntityIdentifier:(id)a3 error:(id *)a4;
- (id)graphOrganizationFromEntityIdentifier:(id)a3 error:(id *)a4;
- (id)graphPersonFromEntityIdentifier:(id)a3 error:(id *)a4;
- (id)graphReadingActivityEventFromEntityIdentifier:(id)a3 error:(id *)a4;
- (id)graphRunningActivityEventFromEntityIdentifier:(id)a3 error:(id *)a4;
- (id)graphShoppingActivityEventFromEntityIdentifier:(id)a3 error:(id *)a4;
- (id)graphSleepingActivityEventFromEntityIdentifier:(id)a3 error:(id *)a4;
- (id)graphSocializingActivityEventFromEntityIdentifier:(id)a3 error:(id *)a4;
- (id)graphSoftwareFromEntityIdentifier:(id)a3 error:(id *)a4;
- (id)graphSongEventFromEntityIdentifier:(id)a3 error:(id *)a4;
- (id)graphSongFromEntityIdentifier:(id)a3 error:(id *)a4;
- (id)graphSportsGameEventFromEntityIdentifier:(id)a3 error:(id *)a4;
- (id)graphSportsTeamFromEntityIdentifier:(id)a3 error:(id *)a4;
- (id)graphStationaryActivityEventFromEntityIdentifier:(id)a3 error:(id *)a4;
- (id)graphTopicFromEntityIdentifier:(id)a3 error:(id *)a4;
- (id)graphTransportationActivityEventFromEntityIdentifier:(id)a3 error:(id *)a4;
- (id)graphTravelingActivityEventFromEntityIdentifier:(id)a3 error:(id *)a4;
- (id)graphVacationingActivityEventFromEntityIdentifier:(id)a3 error:(id *)a4;
- (id)graphWakingUpActivityEventFromEntityIdentifier:(id)a3 error:(id *)a4;
- (id)graphWalkingActivityEventFromEntityIdentifier:(id)a3 error:(id *)a4;
- (id)graphWatchingTVActivityEventFromEntityIdentifier:(id)a3 error:(id *)a4;
- (id)graphWorkingActivityEventFromEntityIdentifier:(id)a3 error:(id *)a4;
@end

@implementation GDGraphObjectContext

- (id)graphObjectFromEntityIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(GDGraphObjectContext *)self context];
  v8 = [v7 graphObjectFrom:v6 error:a4];

  return v8;
}

- (id)graphSoftwareFromEntityIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(GDGraphObjectContext *)self context];
  v8 = [v7 graphSoftwareFrom:v6 error:a4];

  return v8;
}

- (id)graphModeOfTransportationFromEntityIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(GDGraphObjectContext *)self context];
  v8 = [v7 graphModeOfTransportationFrom:v6 error:a4];

  return v8;
}

- (id)graphActivityEventTypeFromEntityIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(GDGraphObjectContext *)self context];
  v8 = [v7 graphActivityEventTypeFrom:v6 error:a4];

  return v8;
}

- (id)graphSongFromEntityIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(GDGraphObjectContext *)self context];
  v8 = [v7 graphSongFrom:v6 error:a4];

  return v8;
}

- (id)graphTopicFromEntityIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(GDGraphObjectContext *)self context];
  v8 = [v7 graphTopicFrom:v6 error:a4];

  return v8;
}

- (id)graphPersonFromEntityIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(GDGraphObjectContext *)self context];
  v8 = [v7 graphPersonFrom:v6 error:a4];

  return v8;
}

- (id)graphSportsTeamFromEntityIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(GDGraphObjectContext *)self context];
  v8 = [v7 graphSportsTeamFrom:v6 error:a4];

  return v8;
}

- (id)graphOrganizationFromEntityIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(GDGraphObjectContext *)self context];
  v8 = [v7 graphOrganizationFrom:v6 error:a4];

  return v8;
}

- (id)graphLocationFromEntityIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(GDGraphObjectContext *)self context];
  v8 = [v7 graphLocationFrom:v6 error:a4];

  return v8;
}

- (id)graphSongEventFromEntityIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(GDGraphObjectContext *)self context];
  v8 = [v7 graphSongEventFrom:v6 error:a4];

  return v8;
}

- (id)graphCalendarEventFromEntityIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(GDGraphObjectContext *)self context];
  v8 = [v7 graphCalendarEventFrom:v6 error:a4];

  return v8;
}

- (id)graphBehaviorActivityEventFromEntityIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(GDGraphObjectContext *)self context];
  v8 = [v7 graphBehaviorActivityEventFrom:v6 error:a4];

  return v8;
}

- (id)graphDrivingActivityEventFromEntityIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(GDGraphObjectContext *)self context];
  v8 = [v7 graphDrivingActivityEventFrom:v6 error:a4];

  return v8;
}

- (id)graphFacetimeActivityEventFromEntityIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(GDGraphObjectContext *)self context];
  v8 = [v7 graphFacetimeActivityEventFrom:v6 error:a4];

  return v8;
}

- (id)graphOnThePhoneActivityEventFromEntityIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(GDGraphObjectContext *)self context];
  v8 = [v7 graphOnThePhoneActivityEventFrom:v6 error:a4];

  return v8;
}

- (id)graphHikingActivityEventFromEntityIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(GDGraphObjectContext *)self context];
  v8 = [v7 graphHikingActivityEventFrom:v6 error:a4];

  return v8;
}

- (id)graphBicyclingActivityEventFromEntityIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(GDGraphObjectContext *)self context];
  v8 = [v7 graphBicyclingActivityEventFrom:v6 error:a4];

  return v8;
}

- (id)graphRunningActivityEventFromEntityIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(GDGraphObjectContext *)self context];
  v8 = [v7 graphRunningActivityEventFrom:v6 error:a4];

  return v8;
}

- (id)graphWalkingActivityEventFromEntityIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(GDGraphObjectContext *)self context];
  v8 = [v7 graphWalkingActivityEventFrom:v6 error:a4];

  return v8;
}

- (id)graphLocationVisitActivityEventFromEntityIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(GDGraphObjectContext *)self context];
  v8 = [v7 graphLocationVisitActivityEventFrom:v6 error:a4];

  return v8;
}

- (id)graphStationaryActivityEventFromEntityIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(GDGraphObjectContext *)self context];
  v8 = [v7 graphStationaryActivityEventFrom:v6 error:a4];

  return v8;
}

- (id)graphAttendingAPerformanceActivityEventFromEntityIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(GDGraphObjectContext *)self context];
  v8 = [v7 graphAttendingAPerformanceActivityEventFrom:v6 error:a4];

  return v8;
}

- (id)graphDiningActivityEventFromEntityIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(GDGraphObjectContext *)self context];
  v8 = [v7 graphDiningActivityEventFrom:v6 error:a4];

  return v8;
}

- (id)graphCommuteActivityEventFromEntityIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(GDGraphObjectContext *)self context];
  v8 = [v7 graphCommuteActivityEventFrom:v6 error:a4];

  return v8;
}

- (id)graphExercisingActivityEventFromEntityIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(GDGraphObjectContext *)self context];
  v8 = [v7 graphExercisingActivityEventFrom:v6 error:a4];

  return v8;
}

- (id)graphGoingToBedActivityEventFromEntityIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(GDGraphObjectContext *)self context];
  v8 = [v7 graphGoingToBedActivityEventFrom:v6 error:a4];

  return v8;
}

- (id)graphWakingUpActivityEventFromEntityIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(GDGraphObjectContext *)self context];
  v8 = [v7 graphWakingUpActivityEventFrom:v6 error:a4];

  return v8;
}

- (id)graphSocializingActivityEventFromEntityIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(GDGraphObjectContext *)self context];
  v8 = [v7 graphSocializingActivityEventFrom:v6 error:a4];

  return v8;
}

- (id)graphGamingActivityEventFromEntityIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(GDGraphObjectContext *)self context];
  v8 = [v7 graphGamingActivityEventFrom:v6 error:a4];

  return v8;
}

- (id)graphVacationingActivityEventFromEntityIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(GDGraphObjectContext *)self context];
  v8 = [v7 graphVacationingActivityEventFrom:v6 error:a4];

  return v8;
}

- (id)graphReadingActivityEventFromEntityIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(GDGraphObjectContext *)self context];
  v8 = [v7 graphReadingActivityEventFrom:v6 error:a4];

  return v8;
}

- (id)graphTravelingActivityEventFromEntityIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(GDGraphObjectContext *)self context];
  v8 = [v7 graphTravelingActivityEventFrom:v6 error:a4];

  return v8;
}

- (id)graphSleepingActivityEventFromEntityIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(GDGraphObjectContext *)self context];
  v8 = [v7 graphSleepingActivityEventFrom:v6 error:a4];

  return v8;
}

- (id)graphMindfulnessActivityEventFromEntityIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(GDGraphObjectContext *)self context];
  v8 = [v7 graphMindfulnessActivityEventFrom:v6 error:a4];

  return v8;
}

- (id)graphShoppingActivityEventFromEntityIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(GDGraphObjectContext *)self context];
  v8 = [v7 graphShoppingActivityEventFrom:v6 error:a4];

  return v8;
}

- (id)graphCommunicatingActivityEventFromEntityIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(GDGraphObjectContext *)self context];
  v8 = [v7 graphCommunicatingActivityEventFrom:v6 error:a4];

  return v8;
}

- (id)graphWatchingTVActivityEventFromEntityIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(GDGraphObjectContext *)self context];
  v8 = [v7 graphWatchingTVActivityEventFrom:v6 error:a4];

  return v8;
}

- (id)graphEatingActivityEventFromEntityIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(GDGraphObjectContext *)self context];
  v8 = [v7 graphEatingActivityEventFrom:v6 error:a4];

  return v8;
}

- (id)graphMeetingActivityEventFromEntityIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(GDGraphObjectContext *)self context];
  v8 = [v7 graphMeetingActivityEventFrom:v6 error:a4];

  return v8;
}

- (id)graphWorkingActivityEventFromEntityIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(GDGraphObjectContext *)self context];
  v8 = [v7 graphWorkingActivityEventFrom:v6 error:a4];

  return v8;
}

- (id)graphTransportationActivityEventFromEntityIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(GDGraphObjectContext *)self context];
  v8 = [v7 graphTransportationActivityEventFrom:v6 error:a4];

  return v8;
}

- (id)graphSportsGameEventFromEntityIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(GDGraphObjectContext *)self context];
  v8 = [v7 graphSportsGameEventFrom:v6 error:a4];

  return v8;
}

- (id)graphActivityEventFromEntityIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(GDGraphObjectContext *)self context];
  v8 = [v7 graphActivityEventFrom:v6 error:a4];

  return v8;
}

- (id)graphEventFromEntityIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(GDGraphObjectContext *)self context];
  v8 = [v7 graphEventFrom:v6 error:a4];

  return v8;
}

@end