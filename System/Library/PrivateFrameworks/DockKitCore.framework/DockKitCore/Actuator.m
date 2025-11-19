@interface Actuator
- (_TtC11DockKitCore8Actuator)initWithId:(int64_t)a3 type:(int64_t)a4 name:(id)a5 minPosition:(double)a6 maxPosition:(double)a7 maxSpeed:(double)a8 maxAcceleration:(double)a9 homePosition:(double)a10 controlParams:(id)a11 cameraLimits:(id)a12;
- (void)encodeWithCoder:(id)a3;
@end

@implementation Actuator

- (_TtC11DockKitCore8Actuator)initWithId:(int64_t)a3 type:(int64_t)a4 name:(id)a5 minPosition:(double)a6 maxPosition:(double)a7 maxSpeed:(double)a8 maxAcceleration:(double)a9 homePosition:(double)a10 controlParams:(id)a11 cameraLimits:(id)a12
{
  v19 = sub_224627CD8();
  v21 = v20;
  v22 = sub_224627C58();
  type metadata accessor for CameraLimit();
  v23 = sub_224627ED8();
  return Actuator.init(id:type:name:minPosition:maxPosition:maxSpeed:maxAcceleration:homePosition:controlParams:cameraLimits:)(a3, a4, v19, v21, v22, v23, a6, a7, a8, a9, a10);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  Actuator.encode(with:)(v4);
}

@end