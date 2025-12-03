@interface CLKUIBezierPathStepper
- (CLKUIBezierPathStepper)init;
- (UIBezierPath)path;
- (id)mapOffsetsToPathPositions:(id)positions;
- (void)setPath:(id)path;
- (void)updateSegmentsWithPath:(id)path;
@end

@implementation CLKUIBezierPathStepper

- (UIBezierPath)path
{
  v3 = OBJC_IVAR___CLKUIBezierPathStepper_path;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setPath:(id)path
{
  v5 = OBJC_IVAR___CLKUIBezierPathStepper_path;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = path;
  pathCopy = path;
  selfCopy = self;

  if (pathCopy)
  {
    CLKUIBezierPathStepper.updateSegments(path:)(pathCopy);
  }
}

- (CLKUIBezierPathStepper)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___CLKUIBezierPathStepper_path;
  *(&self->super.isa + OBJC_IVAR___CLKUIBezierPathStepper_path) = 0;
  v5 = MEMORY[0x1E69E7CC0];
  *(&self->super.isa + OBJC_IVAR___CLKUIBezierPathStepper_segments) = MEMORY[0x1E69E7CC0];
  *(&self->super.isa + OBJC_IVAR___CLKUIBezierPathStepper_segmentLengthTables) = v5;
  swift_beginAccess();
  *(&self->super.isa + v4) = 0;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(CLKUIBezierPathStepper *)&v7 init];
}

- (void)updateSegmentsWithPath:(id)path
{
  pathCopy = path;
  selfCopy = self;
  CLKUIBezierPathStepper.updateSegments(path:)(pathCopy);
}

- (id)mapOffsetsToPathPositions:(id)positions
{
  v4 = sub_1E49FE008();
  selfCopy = self;
  CLKUIBezierPathStepper.mapOffsetsToPathPositions(_:)(v4);

  type metadata accessor for SlopedPoint();
  v6 = sub_1E49FDFF8();

  return v6;
}

@end