@interface LocationDataProvider
- (_TtC11ClockPoster20LocationDataProvider)init;
@end

@implementation LocationDataProvider

- (_TtC11ClockPoster20LocationDataProvider)init
{
  ObjectType = swift_getObjectType();
  swift_defaultActor_initialize();
  *&self->_anon_60[8] = MEMORY[0x1E69E7CC8];
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(LocationDataProvider *)&v5 init];
}

@end