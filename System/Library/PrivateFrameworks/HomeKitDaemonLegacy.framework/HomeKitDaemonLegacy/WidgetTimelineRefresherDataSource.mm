@interface WidgetTimelineRefresherDataSource
- (_TtC19HomeKitDaemonLegacy33WidgetTimelineRefresherDataSource)init;
- (id)darwinNotificationProviderForTimelineRefresher:(id)refresher;
- (id)widgetConfigurationReaderForTimelineRefresher:(id)refresher;
- (id)widgetTimelineControllerForTimelineRefresher:(id)refresher;
@end

@implementation WidgetTimelineRefresherDataSource

- (id)darwinNotificationProviderForTimelineRefresher:(id)refresher
{
  v3 = [objc_allocWithZone(MEMORY[0x277CD19C0]) init];

  return v3;
}

- (id)widgetConfigurationReaderForTimelineRefresher:(id)refresher
{
  v3 = [objc_allocWithZone(HMDWidgetConfigurationReader) init];

  return v3;
}

- (id)widgetTimelineControllerForTimelineRefresher:(id)refresher
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