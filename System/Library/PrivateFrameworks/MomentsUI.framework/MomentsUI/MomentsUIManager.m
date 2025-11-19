@interface MomentsUIManager
- (_TtC9MomentsUI16MomentsUIManager)init;
@end

@implementation MomentsUIManager

- (_TtC9MomentsUI16MomentsUIManager)init
{
  *&self->sharedServer[OBJC_IVAR____TtC9MomentsUI16MomentsUIManager_sharedServer] = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC9MomentsUI16MomentsUIManager_cloudManager;
  *(&self->super.isa + v3) = closure #1 in variable initialization expression of MomentsUIManager.cloudManager();
  v5.receiver = self;
  v5.super_class = type metadata accessor for MomentsUIManager();
  return [(MomentsUIManager *)&v5 init];
}

@end