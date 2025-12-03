@interface Actuator
- (_TtC11DockKitCore8Actuator)initWithId:(int64_t)id type:(int64_t)type name:(id)name minPosition:(double)position maxPosition:(double)maxPosition maxSpeed:(double)speed maxAcceleration:(double)acceleration homePosition:(double)self0 controlParams:(id)self1 cameraLimits:(id)self2;
- (void)encodeWithCoder:(id)coder;
@end

@implementation Actuator

- (_TtC11DockKitCore8Actuator)initWithId:(int64_t)id type:(int64_t)type name:(id)name minPosition:(double)position maxPosition:(double)maxPosition maxSpeed:(double)speed maxAcceleration:(double)acceleration homePosition:(double)self0 controlParams:(id)self1 cameraLimits:(id)self2
{
  v19 = sub_224627CD8();
  v21 = v20;
  v22 = sub_224627C58();
  type metadata accessor for CameraLimit();
  v23 = sub_224627ED8();
  return Actuator.init(id:type:name:minPosition:maxPosition:maxSpeed:maxAcceleration:homePosition:controlParams:cameraLimits:)(id, type, v19, v21, v22, v23, position, maxPosition, speed, acceleration, homePosition);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  Actuator.encode(with:)(coderCopy);
}

@end