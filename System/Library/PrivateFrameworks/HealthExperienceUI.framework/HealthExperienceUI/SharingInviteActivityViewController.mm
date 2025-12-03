@interface SharingInviteActivityViewController
- (_TtC18HealthExperienceUI35SharingInviteActivityViewController)initWithActivityItems:(id)items applicationActivities:(id)activities;
- (void)_prepareActivity:(id)activity;
@end

@implementation SharingInviteActivityViewController

- (void)_prepareActivity:(id)activity
{
  activityCopy = activity;
  selfCopy = self;
  sub_1BA2B7524(activityCopy);
}

- (_TtC18HealthExperienceUI35SharingInviteActivityViewController)initWithActivityItems:(id)items applicationActivities:(id)activities
{
  activitiesCopy = activities;
  if (activities)
  {
    sub_1B9F0ADF8(0, &qword_1EBBF0030);
    sub_1BA4A6B08();
    itemsCopy = items;
    activitiesCopy = sub_1BA4A6AE8();
  }

  else
  {
    itemsCopy2 = items;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for SharingInviteActivityViewController();
  v9 = [(SharingInviteActivityViewController *)&v11 initWithActivityItems:items applicationActivities:activitiesCopy];

  return v9;
}

@end