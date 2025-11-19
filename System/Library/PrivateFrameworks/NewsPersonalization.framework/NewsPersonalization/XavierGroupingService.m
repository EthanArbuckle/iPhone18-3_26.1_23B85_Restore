@interface XavierGroupingService
- (id)bestOfGroupFromFeedItems:(id)a3 scoreProfiles:(id)a4 configurationSet:(int64_t)a5 error:(id *)a6;
- (id)bestOfGroupFromHeadlines:(id)a3 configurationSet:(int64_t)a4 error:(id *)a5;
@end

@implementation XavierGroupingService

- (id)bestOfGroupFromHeadlines:(id)a3 configurationSet:(int64_t)a4 error:(id *)a5
{
  sub_1C6B0F7A8(0, &qword_1EDCE6570, &protocolRef_FCHeadlineProviding);
  v7 = sub_1C6D79780();

  XavierGroupingService.bestOfGroup(fromHeadlines:configurationSet:)(v7, a4);

  if (a5)
  {
    v8 = 0;
    *a5 = 0;
  }

  v9 = sub_1C6D79760();

  return v9;
}

- (id)bestOfGroupFromFeedItems:(id)a3 scoreProfiles:(id)a4 configurationSet:(int64_t)a5 error:(id *)a6
{
  sub_1C6B0F7A8(0, &qword_1EDCEA8E0, &protocolRef_FCFeedPersonalizingItem);
  v9 = sub_1C6D79780();
  v10 = a4;

  XavierGroupingService.bestOfGroup(fromFeedItems:scoreProfiles:configurationSet:)(v9, v10, a5);

  if (a6)
  {
    v11 = 0;
    *a6 = 0;
  }

  v12 = sub_1C6D79760();

  return v12;
}

@end