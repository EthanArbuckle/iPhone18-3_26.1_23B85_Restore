@interface DOCNodeObserver
- (DOCNode)node;
- (_TtC26DocumentManagerExecutables15DOCNodeObserver)init;
- (_TtC26DocumentManagerExecutables15DOCNodeObserver)initWithObservedNode:(id)a3 source:(id)a4 enableDeepObserving:(BOOL)a5;
- (void)dealloc;
- (void)removeSubscriber:(id)a3;
- (void)setNode:(id)a3;
@end

@implementation DOCNodeObserver

- (DOCNode)node
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setNode:(id)a3
{
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCNodeObserver_node;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (_TtC26DocumentManagerExecutables15DOCNodeObserver)initWithObservedNode:(id)a3 source:(id)a4 enableDeepObserving:(BOOL)a5
{
  swift_unknownObjectRetain();
  v8 = a4;
  return DOCNodeObserver.init(observedNode:source:enableDeepObserving:)(a3, a4, a5);
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *((*MEMORY[0x277D85000] & **(&self->super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCNodeObserver_collection)) + 0x1C8);
  v5 = self;
  v4();
  v6.receiver = v5;
  v6.super_class = ObjectType;
  [(DOCNodeObserver *)&v6 dealloc];
}

- (_TtC26DocumentManagerExecutables15DOCNodeObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)removeSubscriber:(id)a3
{
  v4 = a3;
  v5 = self;
  DOCNodeObserver.removeSubscriber(_:)();
}

@end