@interface NAWeakZoomable
- (NAWeakZoomable)init;
- (NAWeakZoomable)initWithZoomable:(id)zoomable;
@end

@implementation NAWeakZoomable

- (NAWeakZoomable)initWithZoomable:(id)zoomable
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v7.receiver = self;
  v7.super_class = ObjectType;
  swift_unknownObjectRetain();
  v5 = [(NAWeakZoomable *)&v7 init];
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v5;
}

- (NAWeakZoomable)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end