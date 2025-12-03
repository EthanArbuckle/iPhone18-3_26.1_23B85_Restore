@interface DOCNodeObserver
- (DOCNode)node;
- (_TtC26DocumentManagerExecutables15DOCNodeObserver)init;
- (_TtC26DocumentManagerExecutables15DOCNodeObserver)initWithObservedNode:(id)node source:(id)source enableDeepObserving:(BOOL)observing;
- (void)dealloc;
- (void)removeSubscriber:(id)subscriber;
- (void)setNode:(id)node;
@end

@implementation DOCNodeObserver

- (DOCNode)node
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setNode:(id)node
{
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCNodeObserver_node;
  swift_beginAccess();
  *(&self->super.isa + v5) = node;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (_TtC26DocumentManagerExecutables15DOCNodeObserver)initWithObservedNode:(id)node source:(id)source enableDeepObserving:(BOOL)observing
{
  swift_unknownObjectRetain();
  sourceCopy = source;
  return DOCNodeObserver.init(observedNode:source:enableDeepObserving:)(node, source, observing);
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *((*MEMORY[0x277D85000] & **(&self->super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCNodeObserver_collection)) + 0x1C8);
  selfCopy = self;
  v4();
  v6.receiver = selfCopy;
  v6.super_class = ObjectType;
  [(DOCNodeObserver *)&v6 dealloc];
}

- (_TtC26DocumentManagerExecutables15DOCNodeObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)removeSubscriber:(id)subscriber
{
  subscriberCopy = subscriber;
  selfCopy = self;
  DOCNodeObserver.removeSubscriber(_:)();
}

@end