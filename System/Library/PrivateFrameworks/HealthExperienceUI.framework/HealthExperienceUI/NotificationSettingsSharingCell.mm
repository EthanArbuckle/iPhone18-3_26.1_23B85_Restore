@interface NotificationSettingsSharingCell
- (_TtC18HealthExperienceUI31NotificationSettingsSharingCell)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI31NotificationSettingsSharingCell)initWithFrame:(CGRect)a3;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
@end

@implementation NotificationSettingsSharingCell

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = sub_1BA4A40C8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A40B8();
  v8 = self;
  sub_1BA076200();

  (*(v5 + 8))(v7, v4);
}

- (_TtC18HealthExperienceUI31NotificationSettingsSharingCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = self + OBJC_IVAR____TtC18HealthExperienceUI31NotificationSettingsSharingCell_item;
  v9 = type metadata accessor for NotificationSettingsSharingCell();
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v11.receiver = self;
  v11.super_class = v9;
  return [(NotificationSettingsSharingCell *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC18HealthExperienceUI31NotificationSettingsSharingCell)initWithCoder:(id)a3
{
  v4 = self + OBJC_IVAR____TtC18HealthExperienceUI31NotificationSettingsSharingCell_item;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for NotificationSettingsSharingCell();
  v5 = a3;
  v6 = [(NotificationSettingsSharingCell *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end