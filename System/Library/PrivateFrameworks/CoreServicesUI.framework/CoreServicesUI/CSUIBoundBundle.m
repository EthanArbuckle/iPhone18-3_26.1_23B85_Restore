@interface CSUIBoundBundle
- (NSString)description;
- (NSString)localizedName;
- (NSURL)bundleURL;
- (UIImage)iconImage;
- (_TtC14CoreServicesUI15CSUIBoundBundle)init;
@end

@implementation CSUIBoundBundle

- (NSURL)bundleURL
{
  v3 = sub_2478D889C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(&self->super.isa + OBJC_IVAR____TtC14CoreServicesUI15CSUIBoundBundle_boundBundleInfo);
  v9 = self;
  v10 = [v8 URL];
  sub_2478D887C();

  v11 = sub_2478D886C();
  (*(v4 + 8))(v7, v3);

  return v11;
}

- (NSString)localizedName
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC14CoreServicesUI15CSUIBoundBundle_boundBundleInfo);
  v3 = self;
  v4 = [v2 localizedName];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    sub_2478D89EC();
    v5 = sub_2478D89BC();
  }

  return v5;
}

- (UIImage)iconImage
{
  v2 = *&self->boundBundleInfo[OBJC_IVAR____TtC14CoreServicesUI15CSUIBoundBundle_boundBundleInfo + 16];
  if (v2)
  {
    v3 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)description
{
  v2 = self;
  sub_2478C3624();

  v3 = sub_2478D89BC();

  return v3;
}

- (_TtC14CoreServicesUI15CSUIBoundBundle)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end