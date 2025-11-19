@interface HFOrderedHomeKitItemData
+ (id)dataWithUniqueIdentifier:(id)a3 title:(id)a4 dateAdded:(id)a5;
@end

@implementation HFOrderedHomeKitItemData

+ (id)dataWithUniqueIdentifier:(id)a3 title:(id)a4 dateAdded:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(a1);
  [v11 setUniqueIdentifier:v10];

  [v11 setTitle:v9];
  [v11 setDateAdded:v8];

  return v11;
}

@end