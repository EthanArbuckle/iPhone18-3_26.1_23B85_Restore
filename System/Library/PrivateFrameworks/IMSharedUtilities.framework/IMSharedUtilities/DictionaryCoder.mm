@interface DictionaryCoder
- (_TtC17IMSharedUtilities15DictionaryCoder)init;
- (void)encodeBool:(BOOL)bool forKey:(id)key;
- (void)encodeBytes:(const char *)bytes length:(int64_t)length forKey:(id)key;
- (void)encodeDouble:(double)double forKey:(id)key;
- (void)encodeObject:(id)object forKey:(id)key;
@end

@implementation DictionaryCoder

- (_TtC17IMSharedUtilities15DictionaryCoder)init
{
  v3 = OBJC_IVAR____TtC17IMSharedUtilities15DictionaryCoder_logger;
  if (qword_1EB302308 != -1)
  {
    swift_once();
  }

  v4 = sub_1A88C7E58();
  v5 = sub_1A85EF0E4(v4, qword_1EB307D00);
  (*(*(v4 - 8) + 16))(self + v3, v5, v4);
  v6 = (&self->super.super.isa + OBJC_IVAR____TtC17IMSharedUtilities15DictionaryCoder_key);
  *v6 = 0;
  v6[1] = 0;
  sub_1A870CCE0(&qword_1EB303B60);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1A88E14F0;
  v8 = MEMORY[0x1E69E7CC0];
  *(v7 + 32) = sub_1A8738AAC(MEMORY[0x1E69E7CC0]);
  *(&self->super.super.isa + OBJC_IVAR____TtC17IMSharedUtilities15DictionaryCoder_dicts) = v7;
  *(&self->super.super.isa + OBJC_IVAR____TtC17IMSharedUtilities15DictionaryCoder_arrays) = v8;
  v10.receiver = self;
  v10.super_class = type metadata accessor for DictionaryCoder();
  return [(DictionaryCoder *)&v10 init];
}

- (void)encodeBool:(BOOL)bool forKey:(id)key
{
  v5 = sub_1A88C82E8();
  v7 = v6;
  selfCopy = self;
  v9 = sub_1A88C86C8();
  v10[3] = sub_1A85FC408();
  v10[0] = v9;
  sub_1A8860BC0(v10, v5, v7);

  sub_1A85F1084(v10);
}

- (void)encodeBytes:(const char *)bytes length:(int64_t)length forKey:(id)key
{
  v8 = sub_1A88C82E8();
  v10 = v9;
  if (bytes)
  {
    v11 = v8;
    selfCopy = self;
    v13 = sub_1A8861F2C(bytes, length);
    v15[3] = MEMORY[0x1E6969088];
    v15[0] = v13;
    v15[1] = v14;
    sub_1A8860BC0(v15, v11, v10);

    sub_1A85F1084(v15);
  }

  else
  {
  }
}

- (void)encodeDouble:(double)double forKey:(id)key
{
  v5 = sub_1A88C82E8();
  v7 = v6;
  selfCopy = self;
  v9 = sub_1A88C7758();
  v10[3] = sub_1A85FC408();
  v10[0] = v9;
  sub_1A8860BC0(v10, v5, v7);

  sub_1A85F1084(v10);
}

- (void)encodeObject:(id)object forKey:(id)key
{
  if (object)
  {
    keyCopy = key;
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1A88C8CB8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v13, 0, sizeof(v13));
    keyCopy2 = key;
    selfCopy2 = self;
  }

  v10 = sub_1A88C82E8();
  v12 = v11;

  sub_1A8861908(v13, v10, v12);

  sub_1A85EF638(v13, &qword_1EB3057B0);
}

@end