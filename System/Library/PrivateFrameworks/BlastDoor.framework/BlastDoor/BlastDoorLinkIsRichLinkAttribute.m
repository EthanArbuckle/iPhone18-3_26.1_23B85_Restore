@interface BlastDoorLinkIsRichLinkAttribute
- (BlastDoorLinkIsRichLinkAttribute)init;
- (NSString)description;
- (_NSRange)range;
@end

@implementation BlastDoorLinkIsRichLinkAttribute

- (NSString)description
{
  v4 = *(&self->super.isa + OBJC_IVAR___BlastDoorLinkIsRichLinkAttribute_linkIsRichLinkAttribute);
  v5 = self->linkIsRichLinkAttribute[OBJC_IVAR___BlastDoorLinkIsRichLinkAttribute_linkIsRichLinkAttribute + 8];
  sub_2146D9608();
  v2 = sub_2146D9588();

  return v2;
}

- (_NSRange)range
{
  v2 = sub_21454F43C(self, a2, &OBJC_IVAR___BlastDoorLinkIsRichLinkAttribute_linkIsRichLinkAttribute);
  result.length = v3;
  result.location = v2;
  return result;
}

- (BlastDoorLinkIsRichLinkAttribute)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end