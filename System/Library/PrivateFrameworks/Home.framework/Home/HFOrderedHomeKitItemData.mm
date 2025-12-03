@interface HFOrderedHomeKitItemData
+ (id)dataWithUniqueIdentifier:(id)identifier title:(id)title dateAdded:(id)added;
@end

@implementation HFOrderedHomeKitItemData

+ (id)dataWithUniqueIdentifier:(id)identifier title:(id)title dateAdded:(id)added
{
  addedCopy = added;
  titleCopy = title;
  identifierCopy = identifier;
  v11 = objc_alloc_init(self);
  [v11 setUniqueIdentifier:identifierCopy];

  [v11 setTitle:titleCopy];
  [v11 setDateAdded:addedCopy];

  return v11;
}

@end