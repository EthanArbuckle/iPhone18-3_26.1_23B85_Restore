@interface DOCUSBStorageKitManager
- (_TtC26DocumentManagerExecutables23DOCUSBStorageKitManager)init;
- (void)initialPopulateComplete;
@end

@implementation DOCUSBStorageKitManager

- (_TtC26DocumentManagerExecutables23DOCUSBStorageKitManager)init
{
  *(&self->super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCUSBStorageKitManager_prewarmStarted) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCUSBStorageKitManager_prewarmComplete) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for DOCUSBStorageKitManager();
  return [(DOCUSBStorageKitManager *)&v3 init];
}

- (void)initialPopulateComplete
{
  selfCopy = self;
  DOCUSBStorageKitManager.initialPopulateComplete()();
}

@end