@interface IMChip
+ (id)chipWithType:(int64_t)type dictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (IMAttributableContent)chip;
- (IMChip)init;
- (IMChip)initWithType:(int64_t)type chip:(id)chip;
- (id)dictionaryRepresentation;
- (int64_t)hash;
@end

@implementation IMChip

- (IMAttributableContent)chip
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (IMChip)initWithType:(int64_t)type chip:(id)chip
{
  *(&self->super.isa + OBJC_IVAR___IMChip_type) = type;
  *(&self->super.isa + OBJC_IVAR___IMChip_chip) = chip;
  v5.receiver = self;
  v5.super_class = IMChip;
  swift_unknownObjectRetain();
  return [(IMChip *)&v5 init];
}

- (id)dictionaryRepresentation
{
  selfCopy = self;
  sub_1A8836778();

  v3 = sub_1A88C8188();

  return v3;
}

+ (id)chipWithType:(int64_t)type dictionary:(id)dictionary
{
  if (dictionary)
  {
    v5 = sub_1A88C81A8();
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1A8836CB8(type, v5);

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1A88C8CB8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = IMChip.isEqual(_:)(v8);

  sub_1A860169C(v8);
  return v6;
}

- (int64_t)hash
{
  sub_1A88C9588();
  selfCopy = self;
  MEMORY[0x1AC56FE00]([(IMChip *)selfCopy type]);
  v4 = sub_1A88C9568();

  return v4;
}

- (IMChip)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end