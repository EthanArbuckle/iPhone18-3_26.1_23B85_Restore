@interface ICloudPlusViewController
- (_TtC14FamilyCircleUI24ICloudPlusViewController)initWithCoder:(id)coder;
- (_TtC14FamilyCircleUI24ICloudPlusViewController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation ICloudPlusViewController

- (_TtC14FamilyCircleUI24ICloudPlusViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_21BE28A0C();
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC14FamilyCircleUI24ICloudPlusViewController_iCloudPlusFamilyFlow) = 0;
    bundleCopy = bundle;
    v7 = sub_21BE289CC();
  }

  else
  {
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC14FamilyCircleUI24ICloudPlusViewController_iCloudPlusFamilyFlow) = 0;
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for ICloudPlusViewController();
  v9 = [(HelpfulRemoteUiHostingVC *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC14FamilyCircleUI24ICloudPlusViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC14FamilyCircleUI24ICloudPlusViewController_iCloudPlusFamilyFlow) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ICloudPlusViewController();
  coderCopy = coder;
  v5 = [(HelpfulRemoteUiHostingVC *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end