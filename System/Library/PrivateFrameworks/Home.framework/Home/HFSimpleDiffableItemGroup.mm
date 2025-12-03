@interface HFSimpleDiffableItemGroup
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HFSimpleDiffableItemGroup

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  diffableItems = [(HFSimpleDiffableItemGroup *)self diffableItems];
  [v4 setDiffableItems:diffableItems];

  groupIdentifier = [(HFSimpleDiffableItemGroup *)self groupIdentifier];
  [v4 setGroupIdentifier:groupIdentifier];

  return v4;
}

@end