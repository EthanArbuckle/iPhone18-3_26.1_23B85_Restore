@interface NTPBSmarterFetchRequest(FCAdditions)
- (void)initWithUserInfo:()FCAdditions personalizationParams:tagsFollowed:mutedTagIDs:fetchRecordSpecs:fetchSource:fetchStrategy:fromDate:toDate:;
@end

@implementation NTPBSmarterFetchRequest(FCAdditions)

- (void)initWithUserInfo:()FCAdditions personalizationParams:tagsFollowed:mutedTagIDs:fetchRecordSpecs:fetchSource:fetchStrategy:fromDate:toDate:
{
  v31 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = a11;
  v32.receiver = a1;
  v32.super_class = &off_1F2EE75E0;
  v25 = objc_msgSendSuper2(&v32, sel_init);
  v26 = v25;
  if (v25)
  {
    [v25 setUserInfo:v31];
    [v26 setPersonalizationParams:v17];
    v27 = [v18 mutableCopy];
    [v26 setTagsFolloweds:v27];

    v28 = [v19 mutableCopy];
    [v26 setMutedTagIds:v28];

    v29 = [v20 mutableCopy];
    [v26 setFetchRecordSpecs:v29];

    [v26 setFetchSource:v21];
    [v26 setFetchStrategy:v22];
    [v26 setFromTimestamp:{objc_msgSend(v23, "fc_millisecondTimeIntervalSince1970")}];
    [v26 setToTimestamp:{objc_msgSend(v24, "fc_millisecondTimeIntervalSince1970")}];
  }

  return v26;
}

@end