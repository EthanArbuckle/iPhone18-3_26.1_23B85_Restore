@interface DOCCreateFolderViewController
- (id)initForCreatingFolderInParentItem:(id)item suggestedName:(id)name transitionProxy:(id)proxy;
@end

@implementation DOCCreateFolderViewController

- (id)initForCreatingFolderInParentItem:(id)item suggestedName:(id)name transitionProxy:(id)proxy
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  itemCopy = item;
  swift_unknownObjectRetain();
  v11 = specialized DOCCreateFolderViewController.init(creatingFolderInParentItem:suggestedName:transitionProxy:)(itemCopy, v7, v9, proxy);

  return v11;
}

@end