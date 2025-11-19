@interface MTIDCommon
+ (id)idOptions;
@end

@implementation MTIDCommon

+ (id)idOptions
{
  if (idOptions_onceToken != -1)
  {
    +[MTIDCommon idOptions];
  }

  v3 = idOptions_options;

  return v3;
}

void __23__MTIDCommon_idOptions__block_invoke()
{
  v3[9] = *MEMORY[0x277D85DE8];
  v3[0] = @"date";
  v3[1] = @"syncWaitTime";
  v3[2] = @"idType";
  v3[3] = @"cachePolicy";
  v3[4] = @"reset";
  v3[5] = @"dsId";
  v3[6] = @"iTunesUserRequired";
  v3[7] = @"appBundleID";
  v3[8] = @"existingOnly";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:9];
  v1 = idOptions_options;
  idOptions_options = v0;

  v2 = *MEMORY[0x277D85DE8];
}

@end