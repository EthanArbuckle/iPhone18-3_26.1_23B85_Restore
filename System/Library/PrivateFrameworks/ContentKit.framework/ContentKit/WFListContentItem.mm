@interface WFListContentItem
+ (id)ownedTypes;
- (BOOL)getListSubtitle:(id)a3;
- (BOOL)getListThumbnail:(id)a3 forSize:(CGSize)a4;
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

- (BOOL)getListThumbnail:(id)a3 forSize:(CGSize)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(WFListContentItem *)self listItem];
  v7 = [v6 image];

  if (v5)
  {
    v13 = *MEMORY[0x277D7A398];
    v8 = MEMORY[0x277CCABB0];
    if ([v7 displayStyle] == 1)
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

    v5[2](v5, v7, v11);
  }

  return v7 != 0;
}

- (BOOL)getListSubtitle:(id)a3
{
  v4 = a3;
  v5 = [(WFListContentItem *)self listItem];
  v6 = [v5 subtitle];

  if (v4)
  {
    v7 = [(WFListContentItem *)self listItem];
    v8 = [v7 subtitle];
    v4[2](v4, v8);
  }

  return v6 != 0;
}

- (id)richListTitle
{
  v2 = [(WFListContentItem *)self listItem];
  v3 = [v2 title];

  return v3;
}

@end