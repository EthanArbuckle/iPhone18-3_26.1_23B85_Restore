@interface WidgetTimelineRefresherDataSource
- (_TtC13HomeKitDaemon33WidgetTimelineRefresherDataSource)init;
- (id)darwinNotificationProviderForTimelineRefresher:(id)a3;
- (id)matterDeviceControllerForTimelineRefresher:(id)a3 withUUID:(id)a4;
- (id)widgetConfigurationReaderForTimelineRefresher:(id)a3;
- (id)widgetTimelineControllerForTimelineRefresher:(id)a3;
@end

@implementation WidgetTimelineRefresherDataSource

- (id)darwinNotificationProviderForTimelineRefresher:(id)a3
{
  v3 = [objc_allocWithZone(MEMORY[0x277CD19C0]) init];

  return v3;
}

- (id)widgetConfigurationReaderForTimelineRefresher:(id)a3
{
  v3 = [objc_allocWithZone(HMDWidgetConfigurationReader) init];

  return v3;
}

- (id)widgetTimelineControllerForTimelineRefresher:(id)a3
{
  v3 = [objc_allocWithZone(HMDWidgetTimelineController) init];

  return v3;
}

- (id)matterDeviceControllerForTimelineRefresher:(id)a3 withUUID:(id)a4
{
  v4 = sub_22A4DB7DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DB79C();
  v9 = objc_opt_self();
  v10 = sub_22A4DB77C();
  v11 = [v9 matterDeviceControllerWithUUID_];

  (*(v5 + 8))(v8, v4);

  return v11;
}

- (_TtC13HomeKitDaemon33WidgetTimelineRefresherDataSource)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for WidgetTimelineRefresherDataSource();
  return [(WidgetTimelineRefresherDataSource *)&v3 init];
}

@end