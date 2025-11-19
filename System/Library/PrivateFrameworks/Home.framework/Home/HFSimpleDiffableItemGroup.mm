@interface HFSimpleDiffableItemGroup
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HFSimpleDiffableItemGroup

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(HFSimpleDiffableItemGroup *)self diffableItems];
  [v4 setDiffableItems:v5];

  v6 = [(HFSimpleDiffableItemGroup *)self groupIdentifier];
  [v4 setGroupIdentifier:v6];

  return v4;
}

@end