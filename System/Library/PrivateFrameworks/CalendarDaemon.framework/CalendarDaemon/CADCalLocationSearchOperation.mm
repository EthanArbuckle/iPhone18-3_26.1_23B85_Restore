@interface CADCalLocationSearchOperation
- (void)configureSearch:(id)a3;
@end

@implementation CADCalLocationSearchOperation

- (void)configureSearch:(id)a3
{
  v3 = a3;
  [v3 setSearchParticipants:0];
  [v3 setSearchLocations:1];
  [v3 setSearchAttendees:0];
  [v3 setShouldMatchLocationsOnlyForEventSearch:1];
}

@end