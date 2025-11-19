@interface CreateiCloudLinkViewController
- (_TtC25CreateiCloudLinkExtension30CreateiCloudLinkViewController)initWithCoder:(id)a3;
- (_TtC25CreateiCloudLinkExtension30CreateiCloudLinkViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)beginRequestWithExtensionContext:(id)a3;
@end

@implementation CreateiCloudLinkViewController

- (void)beginRequestWithExtensionContext:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100001850(v4);
}

- (_TtC25CreateiCloudLinkExtension30CreateiCloudLinkViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_100009440();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  *(&self->super.super.super.isa + OBJC_IVAR____TtC25CreateiCloudLinkExtension30CreateiCloudLinkViewController_optionsGroups) = _swiftEmptyArrayStorage;
  v8 = OBJC_IVAR____TtC25CreateiCloudLinkExtension30CreateiCloudLinkViewController_fileUrl;
  v9 = sub_100009320();
  (*(*(v9 - 8) + 56))(self + v8, 1, 1, v9);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC25CreateiCloudLinkExtension30CreateiCloudLinkViewController_createiCloudLinkViewModel) = 0;
  v10 = a4;
  if (v7)
  {
    v11 = sub_100009430();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = self;
  v14.super_class = type metadata accessor for CreateiCloudLinkViewController();
  v12 = [(CreateiCloudLinkViewController *)&v14 initWithNibName:v11 bundle:a4];

  return v12;
}

- (_TtC25CreateiCloudLinkExtension30CreateiCloudLinkViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC25CreateiCloudLinkExtension30CreateiCloudLinkViewController_optionsGroups) = _swiftEmptyArrayStorage;
  v5 = OBJC_IVAR____TtC25CreateiCloudLinkExtension30CreateiCloudLinkViewController_fileUrl;
  v6 = sub_100009320();
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC25CreateiCloudLinkExtension30CreateiCloudLinkViewController_createiCloudLinkViewModel) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for CreateiCloudLinkViewController();
  v7 = a3;
  v8 = [(CreateiCloudLinkViewController *)&v10 initWithCoder:v7];

  if (v8)
  {
  }

  return v8;
}

@end