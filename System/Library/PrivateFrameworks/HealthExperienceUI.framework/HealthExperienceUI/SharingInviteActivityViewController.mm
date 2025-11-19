@interface SharingInviteActivityViewController
- (_TtC18HealthExperienceUI35SharingInviteActivityViewController)initWithActivityItems:(id)a3 applicationActivities:(id)a4;
- (void)_prepareActivity:(id)a3;
@end

@implementation SharingInviteActivityViewController

- (void)_prepareActivity:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BA2B7524(v4);
}

- (_TtC18HealthExperienceUI35SharingInviteActivityViewController)initWithActivityItems:(id)a3 applicationActivities:(id)a4
{
  v4 = a4;
  if (a4)
  {
    sub_1B9F0ADF8(0, &qword_1EBBF0030);
    sub_1BA4A6B08();
    v7 = a3;
    v4 = sub_1BA4A6AE8();
  }

  else
  {
    v8 = a3;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for SharingInviteActivityViewController();
  v9 = [(SharingInviteActivityViewController *)&v11 initWithActivityItems:a3 applicationActivities:v4];

  return v9;
}

@end