@interface XavierGroupingService
- (id)bestOfGroupFromFeedItems:(id)items scoreProfiles:(id)profiles configurationSet:(int64_t)set error:(id *)error;
- (id)bestOfGroupFromHeadlines:(id)headlines configurationSet:(int64_t)set error:(id *)error;
@end

@implementation XavierGroupingService

- (id)bestOfGroupFromHeadlines:(id)headlines configurationSet:(int64_t)set error:(id *)error
{
  sub_1C6B0F7A8(0, &qword_1EDCE6570, &protocolRef_FCHeadlineProviding);
  v7 = sub_1C6D79780();

  XavierGroupingService.bestOfGroup(fromHeadlines:configurationSet:)(v7, set);

  if (error)
  {
    v8 = 0;
    *error = 0;
  }

  v9 = sub_1C6D79760();

  return v9;
}

- (id)bestOfGroupFromFeedItems:(id)items scoreProfiles:(id)profiles configurationSet:(int64_t)set error:(id *)error
{
  sub_1C6B0F7A8(0, &qword_1EDCEA8E0, &protocolRef_FCFeedPersonalizingItem);
  v9 = sub_1C6D79780();
  profilesCopy = profiles;

  XavierGroupingService.bestOfGroup(fromFeedItems:scoreProfiles:configurationSet:)(v9, profilesCopy, set);

  if (error)
  {
    v11 = 0;
    *error = 0;
  }

  v12 = sub_1C6D79760();

  return v12;
}

@end