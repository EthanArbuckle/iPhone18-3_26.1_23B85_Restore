@interface DOCAnalyticsManager
- (void)tagsDidChangeWithNotification:(id)a3;
@end

@implementation DOCAnalyticsManager

- (void)tagsDidChangeWithNotification:(id)a3
{
  v3[0] = 0xD00000000000002ELL;
  v3[1] = 0x8000000249BCBFF0;
  v3[2] = 0;
  v3[3] = 0;
  v4 = 2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  specialized DOCAnalyticsManager.sendEvent(_:)(v3, static DOCAnalyticsManager.shared);
  outlined destroy of DOCAnalyticsItemTaggedEvent(v3);
}

@end