@interface DOCButtonGestureRecognizer
- (_TtC26DocumentManagerExecutables26DOCButtonGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)reset;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
@end

@implementation DOCButtonGestureRecognizer

- (_TtC26DocumentManagerExecutables26DOCButtonGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  if (a3)
  {
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  return DOCButtonGestureRecognizer.init(target:action:)(v6, a4);
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  type metadata accessor for UITouch();
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  swift_beginAccess();
  v7 = a4;
  v8 = self;
  specialized Set._subtract<A>(_:)(v6);
  swift_endAccess();
  isa = Set._bridgeToObjectiveC()().super.isa;

  v10.receiver = v8;
  v10.super_class = type metadata accessor for DOCButtonGestureRecognizer();
  [(DOCButtonGestureRecognizer *)&v10 touchesCancelled:isa withEvent:v7];

  [(DOCButtonGestureRecognizer *)v8 setState:4];
}

- (void)reset
{
  v2 = self;
  DOCButtonGestureRecognizer.reset()();
}

@end