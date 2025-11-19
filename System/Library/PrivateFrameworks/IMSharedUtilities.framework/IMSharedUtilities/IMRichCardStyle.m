@interface IMRichCardStyle
- (BOOL)isEqual:(id)a3;
- (IMRichCardStyle)init;
- (IMRichCardStyle)initWithBold:(BOOL)a3 italics:(BOOL)a4 underline:(BOOL)a5;
- (id)dictionaryRepresentation;
- (int64_t)hash;
@end

@implementation IMRichCardStyle

- (IMRichCardStyle)initWithBold:(BOOL)a3 italics:(BOOL)a4 underline:(BOOL)a5
{
  *(&self->super.isa + OBJC_IVAR___IMRichCardStyle_bold) = a3;
  *(&self->super.isa + OBJC_IVAR___IMRichCardStyle_italics) = a4;
  *(&self->super.isa + OBJC_IVAR___IMRichCardStyle_underline) = a5;
  v6.receiver = self;
  v6.super_class = IMRichCardStyle;
  return [(IMRichCardStyle *)&v6 init];
}

- (id)dictionaryRepresentation
{
  v2 = self;
  sub_1A87AD820();

  v3 = sub_1A88C8188();

  return v3;
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

  v6 = IMRichCardStyle.isEqual(_:)(v8);

  sub_1A860169C(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  v2 = self;
  v3 = IMRichCardStyle.hash.getter();

  return v3;
}

- (IMRichCardStyle)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end