@interface CALNUNNotificationCategoryMapper
+ (id)_calnNotificationCategoryFromUNNotificationCategory:(id)category;
+ (id)_unNotificationCategoryFromCALNNotificationCategory:(id)category;
+ (id)calnNotificationCategoriesFromUNNotificationCategories:(id)categories;
+ (id)unNotificationCategoriesFromCALNNotificationCategories:(id)categories;
+ (unint64_t)_unNotificationCategoryOptionsFromCALNNotificationCategoryOptions:(unint64_t)options;
@end

@implementation CALNUNNotificationCategoryMapper

+ (id)unNotificationCategoriesFromCALNNotificationCategories:(id)categories
{
  v4 = MEMORY[0x277CBEB58];
  categoriesCopy = categories;
  v6 = [v4 set];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __91__CALNUNNotificationCategoryMapper_unNotificationCategoriesFromCALNNotificationCategories___block_invoke;
  v13 = &unk_278D6F700;
  v14 = v6;
  selfCopy = self;
  v7 = v6;
  [categoriesCopy enumerateObjectsUsingBlock:&v10];

  v8 = [v7 copy];

  return v8;
}

void __91__CALNUNNotificationCategoryMapper_unNotificationCategoriesFromCALNNotificationCategories___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 40) _unNotificationCategoryFromCALNNotificationCategory:a2];
  [*(a1 + 32) addObject:v3];
}

+ (id)calnNotificationCategoriesFromUNNotificationCategories:(id)categories
{
  v4 = MEMORY[0x277CBEB58];
  categoriesCopy = categories;
  v6 = [v4 set];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __91__CALNUNNotificationCategoryMapper_calnNotificationCategoriesFromUNNotificationCategories___block_invoke;
  v13 = &unk_278D6F728;
  v14 = v6;
  selfCopy = self;
  v7 = v6;
  [categoriesCopy enumerateObjectsUsingBlock:&v10];

  v8 = [v7 copy];

  return v8;
}

void __91__CALNUNNotificationCategoryMapper_calnNotificationCategoriesFromUNNotificationCategories___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 40) _calnNotificationCategoryFromUNNotificationCategory:a2];
  [*(a1 + 32) addObject:v3];
}

+ (id)_unNotificationCategoryFromCALNNotificationCategory:(id)category
{
  categoryCopy = category;
  actions = [categoryCopy actions];
  v6 = [CALNUNNotificationActionMapper unNotificationActionsFromCALNNotificationActions:actions];

  v7 = [self _unNotificationCategoryOptionsFromCALNNotificationCategoryOptions:{objc_msgSend(categoryCopy, "options")}];
  v8 = MEMORY[0x277CE1F98];
  identifier = [categoryCopy identifier];
  hiddenPreviewsBodyPlaceholder = [categoryCopy hiddenPreviewsBodyPlaceholder];
  categorySummaryFormat = [categoryCopy categorySummaryFormat];

  v12 = [v8 categoryWithIdentifier:identifier actions:v6 intentIdentifiers:MEMORY[0x277CBEBF8] hiddenPreviewsBodyPlaceholder:hiddenPreviewsBodyPlaceholder categorySummaryFormat:categorySummaryFormat options:v7];

  return v12;
}

+ (id)_calnNotificationCategoryFromUNNotificationCategory:(id)category
{
  categoryCopy = category;
  actions = [categoryCopy actions];
  v6 = [CALNUNNotificationActionMapper calnNotificationActionsFromUNNotificationActions:actions];

  v7 = [self _calnNotificationCategoryOptionsFromUNNotificationCategoryOptions:{objc_msgSend(categoryCopy, "options")}];
  identifier = [categoryCopy identifier];
  hiddenPreviewsBodyPlaceholder = [categoryCopy hiddenPreviewsBodyPlaceholder];
  categorySummaryFormat = [categoryCopy categorySummaryFormat];

  v11 = [CALNNotificationCategory categoryWithIdentifier:identifier actions:v6 hiddenPreviewsBodyPlaceholder:hiddenPreviewsBodyPlaceholder options:v7 categorySummaryFormat:categorySummaryFormat];

  return v11;
}

+ (unint64_t)_unNotificationCategoryOptionsFromCALNNotificationCategoryOptions:(unint64_t)options
{
  v3 = 8388609;
  if ((options & 4) == 0)
  {
    v3 = 1;
  }

  return options & 2 | (((options >> 3) & 1) << 17) | v3;
}

@end