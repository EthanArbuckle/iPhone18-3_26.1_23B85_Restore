@interface HFDashboardStaticSectionListItem
- (HFDashboardStaticSectionListItem)initWithResults:(id)a3;
- (NSString)uuidString;
- (void)setUuidString:(id)a3;
@end

@implementation HFDashboardStaticSectionListItem

- (NSString)uuidString
{
  v2 = (self + OBJC_IVAR___HFDashboardStaticSectionListItem_uuidString);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  v5 = sub_20DD64E74();

  return v5;
}

- (void)setUuidString:(id)a3
{
  v4 = sub_20DD64EB4();
  v6 = v5;
  v7 = (self + OBJC_IVAR___HFDashboardStaticSectionListItem_uuidString);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;
}

- (HFDashboardStaticSectionListItem)initWithResults:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end