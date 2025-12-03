@interface CHSWidgetPreviewInfo
- (BOOL)isEqual:(id)equal;
- (CHSWidgetPreviewInfo)init;
- (NSString)description;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHSWidgetPreviewInfo

- (NSString)description
{
  selfCopy = self;
  sub_243426C5C();

  v3 = sub_24342C6BC();

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_24342C7CC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_243426EA0(v8);

  sub_243423FB4(v8, &qword_27ED756B8, &qword_24342DA30);
  return v6 & 1;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = sub_243427358();

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_243427B5C(coderCopy);
}

- (CHSWidgetPreviewInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end