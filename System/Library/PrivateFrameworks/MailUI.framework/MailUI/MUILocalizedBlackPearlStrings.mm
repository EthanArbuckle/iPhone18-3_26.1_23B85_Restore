@interface MUILocalizedBlackPearlStrings
+ (id)allCurrentAndFutureMessagesAutomaticallyCategorizedForDisplayName:(id)name;
+ (id)allCurrentAndFutureMessagesFromDisplayName:(id)name willBeCategorizedInBucket:(int64_t)bucket;
+ (id)categorizeAllMessagesForDisplayName:(id)name;
+ (id)resetUserOverrideForNumberOfOverrides:(int64_t)overrides;
+ (id)timeSensitiveBannerSubtitleForCategoryType:(unint64_t)type;
+ (id)timeSensitiveTitleForCategoryType:(unint64_t)type;
+ (id)titleForManuallyCategorizingMessagesFromDisplayName:(id)name toBucket:(int64_t)bucket;
+ (id)titleForRestoringAutomaticCategorizationForDisplayName:(id)name;
@end

@implementation MUILocalizedBlackPearlStrings

+ (id)resetUserOverrideForNumberOfOverrides:(int64_t)overrides
{
  v4 = _EFLocalizedStringFromTable();
  overrides = [MEMORY[0x277CCACA8] localizedStringWithFormat:v4, overrides];

  return overrides;
}

+ (id)allCurrentAndFutureMessagesAutomaticallyCategorizedForDisplayName:(id)name
{
  nameCopy = name;
  v4 = _EFLocalizedStringFromTable();
  nameCopy = [MEMORY[0x277CCACA8] localizedStringWithFormat:v4, nameCopy];

  return nameCopy;
}

+ (id)categorizeAllMessagesForDisplayName:(id)name
{
  nameCopy = name;
  v4 = _EFLocalizedStringFromTable();
  nameCopy = [MEMORY[0x277CCACA8] localizedStringWithFormat:v4, nameCopy];

  return nameCopy;
}

+ (id)allCurrentAndFutureMessagesFromDisplayName:(id)name willBeCategorizedInBucket:(int64_t)bucket
{
  nameCopy = name;
  v6 = _EFLocalizedStringFromTable();
  v7 = MEMORY[0x277CCACA8];
  v8 = MUILocalizedStringFromBucket(bucket);
  v9 = [v7 localizedStringWithFormat:v6, nameCopy, v8];

  return v9;
}

+ (id)titleForRestoringAutomaticCategorizationForDisplayName:(id)name
{
  nameCopy = name;
  v4 = _EFLocalizedStringFromTable();
  nameCopy = [MEMORY[0x277CCACA8] localizedStringWithFormat:v4, nameCopy];

  return nameCopy;
}

+ (id)titleForManuallyCategorizingMessagesFromDisplayName:(id)name toBucket:(int64_t)bucket
{
  nameCopy = name;
  v6 = _EFLocalizedStringFromTable();
  v7 = MEMORY[0x277CCACA8];
  v8 = MUILocalizedStringFromBucket(bucket);
  v9 = [v7 localizedStringWithFormat:v6, nameCopy, v8];

  return v9;
}

+ (id)timeSensitiveTitleForCategoryType:(unint64_t)type
{
  v4 = _EFLocalizedStringFromTable();
  v5 = MEMORY[0x277CCACA8];
  v6 = MUILocalizedStringSingularFromCategory(type);
  v7 = [v5 localizedStringWithFormat:v4, v6];

  return v7;
}

+ (id)timeSensitiveBannerSubtitleForCategoryType:(unint64_t)type
{
  v4 = _EFLocalizedStringFromTable();
  v5 = MEMORY[0x277CCACA8];
  v6 = MUIBucketFromEMCategoryType(type);
  v7 = MUILocalizedStringFromBucket(v6);
  v8 = [v5 localizedStringWithFormat:v4, v7];

  return v8;
}

@end