@interface WorkoutLocationPinView
- (_TtC9MomentsUI22WorkoutLocationPinView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier;
- (_TtC9MomentsUI22WorkoutLocationPinView)initWithCoder:(id)coder;
- (void)drawRect:(CGRect)rect;
@end

@implementation WorkoutLocationPinView

- (_TtC9MomentsUI22WorkoutLocationPinView)initWithCoder:(id)coder
{
  type metadata accessor for WorkoutLocationPinView();
  swift_deallocPartialClassInstance();
  return 0;
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  v9.origin.x = x;
  v9.origin.y = y;
  v9.size.width = width;
  v9.size.height = height;
  WorkoutLocationPinView.draw(_:)(v9);
}

- (_TtC9MomentsUI22WorkoutLocationPinView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end