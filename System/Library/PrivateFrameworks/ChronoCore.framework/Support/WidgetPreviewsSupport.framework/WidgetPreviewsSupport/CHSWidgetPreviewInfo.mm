@interface CHSWidgetPreviewInfo
- (BOOL)isEqual:(id)a3;
- (CHSWidgetPreviewInfo)init;
- (NSString)description;
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CHSWidgetPreviewInfo

- (NSString)description
{
  v2 = self;
  sub_243426C5C();

  v3 = sub_24342C6BC();

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_24342C7CC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_243426EA0(v8);

  sub_243423FB4(v8, &qword_27ED756B8, &qword_24342DA30);
  return v6 & 1;
}

- (int64_t)hash
{
  v2 = self;
  v3 = sub_243427358();

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_243427B5C(v4);
}

- (CHSWidgetPreviewInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end