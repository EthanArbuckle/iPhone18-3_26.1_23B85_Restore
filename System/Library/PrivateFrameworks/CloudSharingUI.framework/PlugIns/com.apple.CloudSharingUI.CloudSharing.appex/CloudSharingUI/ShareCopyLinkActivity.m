@interface ShareCopyLinkActivity
- (BOOL)canPerformWithActivityItems:(id)a3;
- (NSString)activityTitle;
- (NSString)activityType;
- (UIImage)activityImage;
- (_TtC37com_apple_CloudSharingUI_CloudSharing21ShareCopyLinkActivity)init;
- (id)_activitySettingsImage;
- (void)performActivity;
- (void)prepareWithActivityItems:(id)a3;
@end

@implementation ShareCopyLinkActivity

- (NSString)activityType
{
  if (qword_100115F90 != -1)
  {
    swift_once();
  }

  v3 = qword_100120E98;

  return v3;
}

- (NSString)activityTitle
{
  v2 = sub_1000C6D44();

  return v2;
}

- (UIImage)activityImage
{
  v2 = sub_1000C6D44();
  v3 = [objc_opt_self() imageNamed:v2];

  return v3;
}

- (id)_activitySettingsImage
{
  v2 = sub_1000C6D44();
  v3 = [objc_opt_self() imageNamed:v2];

  if (v3)
  {
    v4 = [v3 _applicationIconImageForFormat:0 precomposed:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)canPerformWithActivityItems:(id)a3
{
  v4 = sub_1000C6E94();
  v5 = self;
  v6 = sub_1000C5944(v4);

  return v6 & 1;
}

- (void)prepareWithActivityItems:(id)a3
{
  v4 = sub_1000C6E94();
  v5 = self;
  sub_1000C50BC(v4);
}

- (void)performActivity
{
  v2 = self;
  sub_1000C5320();
}

- (_TtC37com_apple_CloudSharingUI_CloudSharing21ShareCopyLinkActivity)init
{
  v3 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing21ShareCopyLinkActivity_urlToCopy;
  v4 = sub_1000C5D84();
  (*(*(v4 - 8) + 56))(self + v3, 1, 1, v4);
  v6.receiver = self;
  v6.super_class = type metadata accessor for ShareCopyLinkActivity();
  return [(ShareCopyLinkActivity *)&v6 init];
}

@end