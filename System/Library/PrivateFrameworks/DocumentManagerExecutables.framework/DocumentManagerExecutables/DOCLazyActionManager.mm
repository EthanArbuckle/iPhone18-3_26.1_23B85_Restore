@interface DOCLazyActionManager
- (NSArray)actions;
- (_TtC26DocumentManagerExecutables20DOCLazyActionManager)init;
- (_TtC26DocumentManagerExecutables20DOCLazyActionManager)initWithActionsConstructor:(id)a3;
- (_TtC26DocumentManagerExecutables20DOCLazyActionManager)initWithItemManager:(id)a3 managedPermission:(id)a4;
@end

@implementation DOCLazyActionManager

- (_TtC26DocumentManagerExecutables20DOCLazyActionManager)initWithActionsConstructor:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = _Block_copy(a3);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *&self->DOCActionManager_opaque[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCLazyActionManager____lazy_storage____lazyActions] = 0;
  v8 = &self->DOCActionManager_opaque[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCLazyActionManager_actionsClosure];
  *v8 = partial apply for thunk for @escaping @callee_unowned @convention(block) () -> (@autoreleased NSArray);
  v8[1] = v7;
  v9 = objc_opt_self();

  v10 = [v9 defaultManager];
  v11 = [objc_opt_self() defaultPermission];
  v14.receiver = self;
  v14.super_class = ObjectType;
  v12 = [(DOCActionManager *)&v14 initWithItemManager:v10 managedPermission:v11];

  return v12;
}

- (NSArray)actions
{
  v2 = self;
  DOCLazyActionManager._lazyActions.getter();

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (_TtC26DocumentManagerExecutables20DOCLazyActionManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC26DocumentManagerExecutables20DOCLazyActionManager)initWithItemManager:(id)a3 managedPermission:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end