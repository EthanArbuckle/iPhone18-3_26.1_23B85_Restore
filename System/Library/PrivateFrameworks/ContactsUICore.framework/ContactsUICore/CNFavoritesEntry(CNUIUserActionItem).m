@interface CNFavoritesEntry(CNUIUserActionItem)
+ (id)favoritesEntryForUserActionItem:()CNUIUserActionItem;
@end

@implementation CNFavoritesEntry(CNUIUserActionItem)

+ (id)favoritesEntryForUserActionItem:()CNUIUserActionItem
{
  v3 = a3;
  v4 = [v3 contactProperty];
  v5 = objc_alloc(MEMORY[0x1E695CE98]);
  v6 = [v4 contact];
  v7 = [v4 key];
  v8 = [v4 identifier];
  v9 = [v3 type];
  v10 = [v3 bundleIdentifier];

  v11 = [v5 initWithContact:v6 propertyKey:v7 labeledValueIdentifier:v8 actionType:v9 bundleIdentifier:v10 store:0];

  return v11;
}

@end