@interface MUILocalizedBlackPearlStrings
+ (id)allCurrentAndFutureMessagesAutomaticallyCategorizedForDisplayName:(id)a3;
+ (id)allCurrentAndFutureMessagesFromDisplayName:(id)a3 willBeCategorizedInBucket:(int64_t)a4;
+ (id)categorizeAllMessagesForDisplayName:(id)a3;
+ (id)resetUserOverrideForNumberOfOverrides:(int64_t)a3;
+ (id)timeSensitiveBannerSubtitleForCategoryType:(unint64_t)a3;
+ (id)timeSensitiveTitleForCategoryType:(unint64_t)a3;
+ (id)titleForManuallyCategorizingMessagesFromDisplayName:(id)a3 toBucket:(int64_t)a4;
+ (id)titleForRestoringAutomaticCategorizationForDisplayName:(id)a3;
@end

@implementation MUILocalizedBlackPearlStrings

+ (id)resetUserOverrideForNumberOfOverrides:(int64_t)a3
{
  v4 = _EFLocalizedStringFromTable();
  v5 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v4, a3];

  return v5;
}

+ (id)allCurrentAndFutureMessagesAutomaticallyCategorizedForDisplayName:(id)a3
{
  v3 = a3;
  v4 = _EFLocalizedStringFromTable();
  v5 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v4, v3];

  return v5;
}

+ (id)categorizeAllMessagesForDisplayName:(id)a3
{
  v3 = a3;
  v4 = _EFLocalizedStringFromTable();
  v5 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v4, v3];

  return v5;
}

+ (id)allCurrentAndFutureMessagesFromDisplayName:(id)a3 willBeCategorizedInBucket:(int64_t)a4
{
  v5 = a3;
  v6 = _EFLocalizedStringFromTable();
  v7 = MEMORY[0x277CCACA8];
  v8 = MUILocalizedStringFromBucket(a4);
  v9 = [v7 localizedStringWithFormat:v6, v5, v8];

  return v9;
}

+ (id)titleForRestoringAutomaticCategorizationForDisplayName:(id)a3
{
  v3 = a3;
  v4 = _EFLocalizedStringFromTable();
  v5 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v4, v3];

  return v5;
}

+ (id)titleForManuallyCategorizingMessagesFromDisplayName:(id)a3 toBucket:(int64_t)a4
{
  v5 = a3;
  v6 = _EFLocalizedStringFromTable();
  v7 = MEMORY[0x277CCACA8];
  v8 = MUILocalizedStringFromBucket(a4);
  v9 = [v7 localizedStringWithFormat:v6, v5, v8];

  return v9;
}

+ (id)timeSensitiveTitleForCategoryType:(unint64_t)a3
{
  v4 = _EFLocalizedStringFromTable();
  v5 = MEMORY[0x277CCACA8];
  v6 = MUILocalizedStringSingularFromCategory(a3);
  v7 = [v5 localizedStringWithFormat:v4, v6];

  return v7;
}

+ (id)timeSensitiveBannerSubtitleForCategoryType:(unint64_t)a3
{
  v4 = _EFLocalizedStringFromTable();
  v5 = MEMORY[0x277CCACA8];
  v6 = MUIBucketFromEMCategoryType(a3);
  v7 = MUILocalizedStringFromBucket(v6);
  v8 = [v5 localizedStringWithFormat:v4, v7];

  return v8;
}

@end