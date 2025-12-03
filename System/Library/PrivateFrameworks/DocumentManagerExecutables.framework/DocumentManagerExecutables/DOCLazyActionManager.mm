@interface DOCLazyActionManager
- (NSArray)actions;
- (_TtC26DocumentManagerExecutables20DOCLazyActionManager)init;
- (_TtC26DocumentManagerExecutables20DOCLazyActionManager)initWithActionsConstructor:(id)constructor;
- (_TtC26DocumentManagerExecutables20DOCLazyActionManager)initWithItemManager:(id)manager managedPermission:(id)permission;
@end

@implementation DOCLazyActionManager

- (_TtC26DocumentManagerExecutables20DOCLazyActionManager)initWithActionsConstructor:(id)constructor
{
  ObjectType = swift_getObjectType();
  v6 = _Block_copy(constructor);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *&self->DOCActionManager_opaque[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCLazyActionManager____lazy_storage____lazyActions] = 0;
  v8 = &self->DOCActionManager_opaque[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCLazyActionManager_actionsClosure];
  *v8 = partial apply for thunk for @escaping @callee_unowned @convention(block) () -> (@autoreleased NSArray);
  v8[1] = v7;
  v9 = objc_opt_self();

  defaultManager = [v9 defaultManager];
  defaultPermission = [objc_opt_self() defaultPermission];
  v14.receiver = self;
  v14.super_class = ObjectType;
  v12 = [(DOCActionManager *)&v14 initWithItemManager:defaultManager managedPermission:defaultPermission];

  return v12;
}

- (NSArray)actions
{
  selfCopy = self;
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

- (_TtC26DocumentManagerExecutables20DOCLazyActionManager)initWithItemManager:(id)manager managedPermission:(id)permission
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end