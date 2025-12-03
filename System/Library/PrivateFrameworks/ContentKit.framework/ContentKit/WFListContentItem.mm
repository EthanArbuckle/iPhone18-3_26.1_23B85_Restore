@interface WFListContentItem
+ (id)ownedTypes;
- (BOOL)getListSubtitle:(id)subtitle;
- (BOOL)getListThumbnail:(id)thumbnail forSize:(CGSize)size;
- (WFListItem)listItem;
- (id)richListTitle;
@end

@implementation WFListContentItem

+ (id)ownedTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [WFObjectType typeWithClass:objc_opt_class()];
  v4 = [v2 orderedSetWithObject:v3];

  return v4;
}

- (WFListItem)listItem
{
  v3 = objc_opt_class();

  return [(WFContentItem *)self objectForClass:v3];
}

- (BOOL)getListThumbnail:(id)thumbnail forSize:(CGSize)size
{
  v14[1] = *MEMORY[0x277D85DE8];
  thumbnailCopy = thumbnail;
  listItem = [(WFListContentItem *)self listItem];
  image = [listItem image];

  if (thumbnailCopy)
  {
    v13 = *MEMORY[0x277D7A398];
    v8 = MEMORY[0x277CCABB0];
    if ([image displayStyle] == 1)
    {
      v9 = 3;
    }

    else
    {
      v9 = 1;
    }

    v10 = [v8 numberWithUnsignedInteger:v9];
    v14[0] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];

    thumbnailCopy[2](thumbnailCopy, image, v11);
  }

  return image != 0;
}

- (BOOL)getListSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  listItem = [(WFListContentItem *)self listItem];
  subtitle = [listItem subtitle];

  if (subtitleCopy)
  {
    listItem2 = [(WFListContentItem *)self listItem];
    subtitle2 = [listItem2 subtitle];
    subtitleCopy[2](subtitleCopy, subtitle2);
  }

  return subtitle != 0;
}

- (id)richListTitle
{
  listItem = [(WFListContentItem *)self listItem];
  title = [listItem title];

  return title;
}

@end