@interface CNFavoritesEntry(CNUIUserActionItem)
+ (id)favoritesEntryForUserActionItem:()CNUIUserActionItem;
@end

@implementation CNFavoritesEntry(CNUIUserActionItem)

+ (id)favoritesEntryForUserActionItem:()CNUIUserActionItem
{
  v3 = a3;
  contactProperty = [v3 contactProperty];
  v5 = objc_alloc(MEMORY[0x1E695CE98]);
  contact = [contactProperty contact];
  v7 = [contactProperty key];
  identifier = [contactProperty identifier];
  type = [v3 type];
  bundleIdentifier = [v3 bundleIdentifier];

  v11 = [v5 initWithContact:contact propertyKey:v7 labeledValueIdentifier:identifier actionType:type bundleIdentifier:bundleIdentifier store:0];

  return v11;
}

@end