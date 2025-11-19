@interface DOCSmartFolderManager
+ (_TtC26DocumentManagerExecutables21DOCSmartFolderManager)sharedManager;
- (_TtC26DocumentManagerExecutables21DOCSmartFolderManager)init;
- (void)dealloc;
@end

@implementation DOCSmartFolderManager

void __43__DOCSmartFolderManager_OBJC_sharedManager__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedManager__sharedManager;
  sharedManager__sharedManager = v0;

  v2 = +[_TtC26DocumentManagerExecutables21DOCSmartFolderManager sharedManager];
  [sharedManager__sharedManager setUnderlyingSmartFolderManager:v2];
}

+ (_TtC26DocumentManagerExecutables21DOCSmartFolderManager)sharedManager
{
  if (one-time initialization token for sharedManager != -1)
  {
    swift_once();
  }

  v3 = static DOCSmartFolderManager.sharedManager;

  return v3;
}

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCSmartFolderManager_database);
  v3 = self;
  [v2 close];
  v4.receiver = v3;
  v4.super_class = type metadata accessor for DOCSmartFolderManager();
  [(DOCSmartFolderManager *)&v4 dealloc];
}

- (_TtC26DocumentManagerExecutables21DOCSmartFolderManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end