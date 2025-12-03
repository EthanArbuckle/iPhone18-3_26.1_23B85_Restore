@interface NotesDataManager
- (_TtC11NotesShared16NotesDataManager)init;
- (void)dealloc;
@end

@implementation NotesDataManager

- (void)dealloc
{
  if (*(&self->super.isa + OBJC_IVAR____TtC11NotesShared16NotesDataManager_didStartSharedContext) == 1)
  {
    v3 = objc_opt_self();
    selfCopy = self;
    [v3 clearSharedContext];
  }

  else
  {
    selfCopy2 = self;
  }

  v6.receiver = self;
  v6.super_class = type metadata accessor for NotesDataManager();
  [(NotesDataManager *)&v6 dealloc];
}

- (_TtC11NotesShared16NotesDataManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end