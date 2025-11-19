@interface ICloudPlusViewController
- (_TtC14FamilyCircleUI24ICloudPlusViewController)initWithCoder:(id)a3;
- (_TtC14FamilyCircleUI24ICloudPlusViewController)initWithNibName:(id)a3 bundle:(id)a4;
@end

@implementation ICloudPlusViewController

- (_TtC14FamilyCircleUI24ICloudPlusViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_21BE28A0C();
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC14FamilyCircleUI24ICloudPlusViewController_iCloudPlusFamilyFlow) = 0;
    v6 = a4;
    v7 = sub_21BE289CC();
  }

  else
  {
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC14FamilyCircleUI24ICloudPlusViewController_iCloudPlusFamilyFlow) = 0;
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for ICloudPlusViewController();
  v9 = [(HelpfulRemoteUiHostingVC *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC14FamilyCircleUI24ICloudPlusViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC14FamilyCircleUI24ICloudPlusViewController_iCloudPlusFamilyFlow) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ICloudPlusViewController();
  v4 = a3;
  v5 = [(HelpfulRemoteUiHostingVC *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end