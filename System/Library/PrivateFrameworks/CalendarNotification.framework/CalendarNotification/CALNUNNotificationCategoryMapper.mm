@interface CALNUNNotificationCategoryMapper
+ (id)_calnNotificationCategoryFromUNNotificationCategory:(id)a3;
+ (id)_unNotificationCategoryFromCALNNotificationCategory:(id)a3;
+ (id)calnNotificationCategoriesFromUNNotificationCategories:(id)a3;
+ (id)unNotificationCategoriesFromCALNNotificationCategories:(id)a3;
+ (unint64_t)_unNotificationCategoryOptionsFromCALNNotificationCategoryOptions:(unint64_t)a3;
@end

@implementation CALNUNNotificationCategoryMapper

+ (id)unNotificationCategoriesFromCALNNotificationCategories:(id)a3
{
  v4 = MEMORY[0x277CBEB58];
  v5 = a3;
  v6 = [v4 set];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __91__CALNUNNotificationCategoryMapper_unNotificationCategoriesFromCALNNotificationCategories___block_invoke;
  v13 = &unk_278D6F700;
  v14 = v6;
  v15 = a1;
  v7 = v6;
  [v5 enumerateObjectsUsingBlock:&v10];

  v8 = [v7 copy];

  return v8;
}

void __91__CALNUNNotificationCategoryMapper_unNotificationCategoriesFromCALNNotificationCategories___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 40) _unNotificationCategoryFromCALNNotificationCategory:a2];
  [*(a1 + 32) addObject:v3];
}

+ (id)calnNotificationCategoriesFromUNNotificationCategories:(id)a3
{
  v4 = MEMORY[0x277CBEB58];
  v5 = a3;
  v6 = [v4 set];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __91__CALNUNNotificationCategoryMapper_calnNotificationCategoriesFromUNNotificationCategories___block_invoke;
  v13 = &unk_278D6F728;
  v14 = v6;
  v15 = a1;
  v7 = v6;
  [v5 enumerateObjectsUsingBlock:&v10];

  v8 = [v7 copy];

  return v8;
}

void __91__CALNUNNotificationCategoryMapper_calnNotificationCategoriesFromUNNotificationCategories___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 40) _calnNotificationCategoryFromUNNotificationCategory:a2];
  [*(a1 + 32) addObject:v3];
}

+ (id)_unNotificationCategoryFromCALNNotificationCategory:(id)a3
{
  v4 = a3;
  v5 = [v4 actions];
  v6 = [CALNUNNotificationActionMapper unNotificationActionsFromCALNNotificationActions:v5];

  v7 = [a1 _unNotificationCategoryOptionsFromCALNNotificationCategoryOptions:{objc_msgSend(v4, "options")}];
  v8 = MEMORY[0x277CE1F98];
  v9 = [v4 identifier];
  v10 = [v4 hiddenPreviewsBodyPlaceholder];
  v11 = [v4 categorySummaryFormat];

  v12 = [v8 categoryWithIdentifier:v9 actions:v6 intentIdentifiers:MEMORY[0x277CBEBF8] hiddenPreviewsBodyPlaceholder:v10 categorySummaryFormat:v11 options:v7];

  return v12;
}

+ (id)_calnNotificationCategoryFromUNNotificationCategory:(id)a3
{
  v4 = a3;
  v5 = [v4 actions];
  v6 = [CALNUNNotificationActionMapper calnNotificationActionsFromUNNotificationActions:v5];

  v7 = [a1 _calnNotificationCategoryOptionsFromUNNotificationCategoryOptions:{objc_msgSend(v4, "options")}];
  v8 = [v4 identifier];
  v9 = [v4 hiddenPreviewsBodyPlaceholder];
  v10 = [v4 categorySummaryFormat];

  v11 = [CALNNotificationCategory categoryWithIdentifier:v8 actions:v6 hiddenPreviewsBodyPlaceholder:v9 options:v7 categorySummaryFormat:v10];

  return v11;
}

+ (unint64_t)_unNotificationCategoryOptionsFromCALNNotificationCategoryOptions:(unint64_t)a3
{
  v3 = 8388609;
  if ((a3 & 4) == 0)
  {
    v3 = 1;
  }

  return a3 & 2 | (((a3 >> 3) & 1) << 17) | v3;
}

@end