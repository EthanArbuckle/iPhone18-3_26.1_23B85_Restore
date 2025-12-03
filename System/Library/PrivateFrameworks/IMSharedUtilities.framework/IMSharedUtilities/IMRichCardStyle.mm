@interface IMRichCardStyle
- (BOOL)isEqual:(id)equal;
- (IMRichCardStyle)init;
- (IMRichCardStyle)initWithBold:(BOOL)bold italics:(BOOL)italics underline:(BOOL)underline;
- (id)dictionaryRepresentation;
- (int64_t)hash;
@end

@implementation IMRichCardStyle

- (IMRichCardStyle)initWithBold:(BOOL)bold italics:(BOOL)italics underline:(BOOL)underline
{
  *(&self->super.isa + OBJC_IVAR___IMRichCardStyle_bold) = bold;
  *(&self->super.isa + OBJC_IVAR___IMRichCardStyle_italics) = italics;
  *(&self->super.isa + OBJC_IVAR___IMRichCardStyle_underline) = underline;
  v6.receiver = self;
  v6.super_class = IMRichCardStyle;
  return [(IMRichCardStyle *)&v6 init];
}

- (id)dictionaryRepresentation
{
  selfCopy = self;
  sub_1A87AD820();

  v3 = sub_1A88C8188();

  return v3;
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

  v6 = IMRichCardStyle.isEqual(_:)(v8);

  sub_1A860169C(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  selfCopy = self;
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