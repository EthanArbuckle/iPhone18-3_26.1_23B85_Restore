@interface LocalWindowScene
- (_TtC12DrawingBoard16LocalWindowScene)initWithSession:(id)session connectionOptions:(id)options;
- (void)_invalidate;
- (void)_readySceneForConnection;
@end

@implementation LocalWindowScene

- (void)_readySceneForConnection
{
  sub_249D73274();
  sub_249D73264();
  sub_249D73254();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  LocalWindowScene._readySceneForConnection()();
}

- (void)_invalidate
{
  ObjectType = swift_getObjectType();
  sub_249D73274();
  sub_249D73264();
  sub_249D73254();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4.receiver = self;
  v4.super_class = ObjectType;
  [(LocalWindowScene *)&v4 _invalidate];
}

- (_TtC12DrawingBoard16LocalWindowScene)initWithSession:(id)session connectionOptions:(id)options
{
  ObjectType = swift_getObjectType();
  sub_249D73274();
  sub_249D73264();
  sub_249D73254();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12DrawingBoard16LocalWindowScene_myWindow) = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = [(LocalWindowScene *)&v10 initWithSession:session connectionOptions:options];

  return v8;
}

@end