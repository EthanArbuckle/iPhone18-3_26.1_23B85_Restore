@interface CADCalLocationSearchOperation
- (void)configureSearch:(id)search;
@end

@implementation CADCalLocationSearchOperation

- (void)configureSearch:(id)search
{
  searchCopy = search;
  [searchCopy setSearchParticipants:0];
  [searchCopy setSearchLocations:1];
  [searchCopy setSearchAttendees:0];
  [searchCopy setShouldMatchLocationsOnlyForEventSearch:1];
}

@end