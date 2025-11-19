@interface WidgetTimelineRefresherDataSource
- (_TtC19HomeKitDaemonLegacy33WidgetTimelineRefresherDataSource)init;
- (id)darwinNotificationProviderForTimelineRefresher:(id)a3;
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

- (_TtC19HomeKitDaemonLegacy33WidgetTimelineRefresherDataSource)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for WidgetTimelineRefresherDataSource();
  return [(WidgetTimelineRefresherDataSource *)&v3 init];
}

@end