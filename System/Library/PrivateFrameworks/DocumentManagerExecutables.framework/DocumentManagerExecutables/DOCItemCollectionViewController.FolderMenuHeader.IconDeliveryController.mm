@interface DOCItemCollectionViewController.FolderMenuHeader.IconDeliveryController
- (_TtCCC26DocumentManagerExecutables31DOCItemCollectionViewController16FolderMenuHeader22IconDeliveryController)init;
- (void)dealloc;
- (void)thumbnailLoaded:(id)loaded;
@end

@implementation DOCItemCollectionViewController.FolderMenuHeader.IconDeliveryController

- (void)dealloc
{
  v3 = OBJC_IVAR____TtCCC26DocumentManagerExecutables31DOCItemCollectionViewController16FolderMenuHeader22IconDeliveryController_iconThumbnail;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  selfCopy = self;
  [v4 removeListener_];
  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for DOCItemCollectionViewController.FolderMenuHeader.IconDeliveryController();
  [(DOCItemCollectionViewController.FolderMenuHeader.IconDeliveryController *)&v6 dealloc];
}

- (void)thumbnailLoaded:(id)loaded
{
  swift_unknownObjectRetain();
  selfCopy = self;
  DOCItemCollectionViewController.FolderMenuHeader.IconDeliveryController.iconProvidingDidLoadCompletion.didset(partial apply for closure #1 in DOCItemCollectionViewController.FolderMenuHeader.IconDeliveryController.thumbnailLoaded(_:), &block_descriptor_28_4);
  swift_unknownObjectRelease();
}

- (_TtCCC26DocumentManagerExecutables31DOCItemCollectionViewController16FolderMenuHeader22IconDeliveryController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end