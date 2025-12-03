@interface BLTPBActionFactoryVersion1
- (id)actionWithBBAction:(id)action;
@end

@implementation BLTPBActionFactoryVersion1

- (id)actionWithBBAction:(id)action
{
  actionCopy = action;
  if ([actionCopy behavior])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = BLTPBActionFactoryVersion1;
    v5 = [(BLTPBActionFactory *)&v7 actionWithBBAction:actionCopy];
  }

  return v5;
}

@end