@interface Texture.Buffer
- (_TtCV13IconRendering7Texture6Buffer)init;
- (id)copyWithZone:(void *)zone;
- (id)map;
- (void)dealloc;
@end

@implementation Texture.Buffer

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtCV13IconRendering7Texture6Buffer_bytes);
  selfCopy = self;
  if (v4)
  {
    MEMORY[0x1B2730CA0](v4, -1, -1);
  }

  v6.receiver = self;
  v6.super_class = ObjectType;
  [(Texture.Buffer *)&v6 dealloc];
}

- (_TtCV13IconRendering7Texture6Buffer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)map
{
  v2 = *(self + OBJC_IVAR____TtCV13IconRendering7Texture6Buffer_bytes);
  if (v2)
  {
    v3 = _s14descr1F2858FF9O3MapCMa();
    v4 = objc_allocWithZone(v3);
    *&v4[OBJC_IVAR____TtCCV13IconRendering7Texture6BufferP33_087535AF78BBB9411A15E8D8E24641C33Map_bytes] = v2;
    v6.receiver = v4;
    v6.super_class = v3;
    v5 = [(Texture.Buffer *)&v6 init];

    return v5;
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_1B1615304(v6);

  __swift_project_boxed_opaque_existential_0(v6, v6[3]);
  v4 = sub_1B161A438();
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v4;
}

@end