@interface IKListItemLockupElement
- (IKViewElement)relatedContent;
- (NSArray)decorationImages;
- (NSArray)images;
- (NSString)itemHeight;
@end

@implementation IKListItemLockupElement

- (NSString)itemHeight
{
  v2 = [(IKViewElement *)self style];
  v3 = [v2 itemHeight];

  return v3;
}

- (NSArray)images
{
  v2 = [(IKViewElement *)self childElementsWithType:49];
  v3 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_26];
  v4 = [v2 filteredArrayUsingPredicate:v3];

  if ([(NSArray *)v4 count])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (NSArray)decorationImages
{
  v2 = [(IKViewElement *)self childElementsWithType:49];
  v3 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_2_0];
  v4 = [v2 filteredArrayUsingPredicate:v3];

  if ([(NSArray *)v4 count])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (IKViewElement)relatedContent
{
  v2 = [(IKViewElement *)self childElementWithType:100];
  v3 = [v2 children];
  v4 = [v3 firstObject];

  return v4;
}

@end