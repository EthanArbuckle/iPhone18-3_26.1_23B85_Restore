@interface CSSearchableItem(CNUIMetadataItem)
- (id)_cnui_valueForAttribute:()CNUIMetadataItem;
@end

@implementation CSSearchableItem(CNUIMetadataItem)

- (id)_cnui_valueForAttribute:()CNUIMetadataItem
{
  v4 = a3;
  attributeSet = [self attributeSet];
  v6 = [attributeSet attributeForKey:v4];

  return v6;
}

@end