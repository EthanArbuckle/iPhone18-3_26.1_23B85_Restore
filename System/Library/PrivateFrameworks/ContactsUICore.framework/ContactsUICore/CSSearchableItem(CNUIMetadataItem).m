@interface CSSearchableItem(CNUIMetadataItem)
- (id)_cnui_valueForAttribute:()CNUIMetadataItem;
@end

@implementation CSSearchableItem(CNUIMetadataItem)

- (id)_cnui_valueForAttribute:()CNUIMetadataItem
{
  v4 = a3;
  v5 = [a1 attributeSet];
  v6 = [v5 attributeForKey:v4];

  return v6;
}

@end