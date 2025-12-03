@interface CALNEventRepresentationDataSourceUtils
+ (id)_userActivityUserInfoForEvent:(id)event;
+ (void)updateEventRepresentation:(id)representation forEvent:(id)event;
@end

@implementation CALNEventRepresentationDataSourceUtils

+ (void)updateEventRepresentation:(id)representation forEvent:(id)event
{
  representationCopy = representation;
  eventCopy = event;
  v7 = [self _userActivityUserInfoForEvent:eventCopy];
  [representationCopy setUserActivityUserInfo:v7];
  organizerContactDictionary = [representationCopy organizerContactDictionary];

  if (!organizerContactDictionary)
  {
    organizer = [eventCopy organizer];
    v10 = organizer;
    if (organizer && ([organizer isCurrentUser] & 1) == 0)
    {
      organizer2 = [eventCopy organizer];
      [representationCopy setOrganizerForContactDictionary:organizer2];
    }
  }
}

+ (id)_userActivityUserInfoForEvent:(id)event
{
  v3 = MEMORY[0x277CF7CF0];
  eventCopy = event;
  v5 = [[v3 alloc] initWithEvent:eventCopy view:1 forceLocal:1];

  dictionary = [v5 dictionary];

  return dictionary;
}

@end