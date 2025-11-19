@interface WorkoutLocationPinView
- (_TtC9MomentsUI22WorkoutLocationPinView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4;
- (_TtC9MomentsUI22WorkoutLocationPinView)initWithCoder:(id)a3;
- (void)drawRect:(CGRect)a3;
@end

@implementation WorkoutLocationPinView

- (_TtC9MomentsUI22WorkoutLocationPinView)initWithCoder:(id)a3
{
  type metadata accessor for WorkoutLocationPinView();
  swift_deallocPartialClassInstance();
  return 0;
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  v9.origin.x = x;
  v9.origin.y = y;
  v9.size.width = width;
  v9.size.height = height;
  WorkoutLocationPinView.draw(_:)(v9);
}

- (_TtC9MomentsUI22WorkoutLocationPinView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end