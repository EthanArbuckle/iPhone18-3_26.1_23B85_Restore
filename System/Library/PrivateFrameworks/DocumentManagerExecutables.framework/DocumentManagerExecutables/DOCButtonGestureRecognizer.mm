@interface DOCButtonGestureRecognizer
- (_TtC26DocumentManagerExecutables26DOCButtonGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)reset;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
@end

@implementation DOCButtonGestureRecognizer

- (_TtC26DocumentManagerExecutables26DOCButtonGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  if (target)
  {
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  return DOCButtonGestureRecognizer.init(target:action:)(v6, action);
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  type metadata accessor for UITouch();
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  swift_beginAccess();
  eventCopy = event;
  selfCopy = self;
  specialized Set._subtract<A>(_:)(v6);
  swift_endAccess();
  isa = Set._bridgeToObjectiveC()().super.isa;

  v10.receiver = selfCopy;
  v10.super_class = type metadata accessor for DOCButtonGestureRecognizer();
  [(DOCButtonGestureRecognizer *)&v10 touchesCancelled:isa withEvent:eventCopy];

  [(DOCButtonGestureRecognizer *)selfCopy setState:4];
}

- (void)reset
{
  selfCopy = self;
  DOCButtonGestureRecognizer.reset()();
}

@end