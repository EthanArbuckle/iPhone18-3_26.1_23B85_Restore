@interface HUExpandableItemModule
- (HFItem)showOptionsItem;
@end

@implementation HUExpandableItemModule

- (HFItem)showOptionsItem
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUExpandableItemModule.m" lineNumber:15 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HUExpandableItemModule showOptionsItem]", objc_opt_class()}];

  return 0;
}

@end