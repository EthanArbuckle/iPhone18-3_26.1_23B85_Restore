@interface IMChip
+ (id)chipWithType:(int64_t)a3 dictionary:(id)a4;
- (BOOL)isEqual:(id)a3;
- (IMAttributableContent)chip;
- (IMChip)init;
- (IMChip)initWithType:(int64_t)a3 chip:(id)a4;
- (id)dictionaryRepresentation;
- (int64_t)hash;
@end

@implementation IMChip

- (IMAttributableContent)chip
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (IMChip)initWithType:(int64_t)a3 chip:(id)a4
{
  *(&self->super.isa + OBJC_IVAR___IMChip_type) = a3;
  *(&self->super.isa + OBJC_IVAR___IMChip_chip) = a4;
  v5.receiver = self;
  v5.super_class = IMChip;
  swift_unknownObjectRetain();
  return [(IMChip *)&v5 init];
}

- (id)dictionaryRepresentation
{
  v2 = self;
  sub_1A8836778();

  v3 = sub_1A88C8188();

  return v3;
}

+ (id)chipWithType:(int64_t)a3 dictionary:(id)a4
{
  if (a4)
  {
    v5 = sub_1A88C81A8();
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1A8836CB8(a3, v5);

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1A88C8CB8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = IMChip.isEqual(_:)(v8);

  sub_1A860169C(v8);
  return v6;
}

- (int64_t)hash
{
  sub_1A88C9588();
  v3 = self;
  MEMORY[0x1AC56FE00]([(IMChip *)v3 type]);
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