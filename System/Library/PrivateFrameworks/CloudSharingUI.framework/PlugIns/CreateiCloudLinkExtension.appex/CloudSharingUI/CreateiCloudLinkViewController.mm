@interface CreateiCloudLinkViewController
- (_TtC25CreateiCloudLinkExtension30CreateiCloudLinkViewController)initWithCoder:(id)coder;
- (_TtC25CreateiCloudLinkExtension30CreateiCloudLinkViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)beginRequestWithExtensionContext:(id)context;
@end

@implementation CreateiCloudLinkViewController

- (void)beginRequestWithExtensionContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  sub_100001850(contextCopy);
}

- (_TtC25CreateiCloudLinkExtension30CreateiCloudLinkViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
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
  bundleCopy = bundle;
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
  v12 = [(CreateiCloudLinkViewController *)&v14 initWithNibName:v11 bundle:bundle];

  return v12;
}

- (_TtC25CreateiCloudLinkExtension30CreateiCloudLinkViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC25CreateiCloudLinkExtension30CreateiCloudLinkViewController_optionsGroups) = _swiftEmptyArrayStorage;
  v5 = OBJC_IVAR____TtC25CreateiCloudLinkExtension30CreateiCloudLinkViewController_fileUrl;
  v6 = sub_100009320();
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC25CreateiCloudLinkExtension30CreateiCloudLinkViewController_createiCloudLinkViewModel) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for CreateiCloudLinkViewController();
  coderCopy = coder;
  v8 = [(CreateiCloudLinkViewController *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

@end