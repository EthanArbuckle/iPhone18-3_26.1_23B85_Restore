@interface HMDHAPAccessoryDefaultDataSource
- (BOOL)isResidentCapable;
- (HMDHAPAccessoryDefaultDataSource)init;
- (HMDHAPAccessorySwiftDataSource)swiftDataSource;
- (NSDate)currentDate;
@end

@implementation HMDHAPAccessoryDefaultDataSource

- (HMDHAPAccessorySwiftDataSource)swiftDataSource
{
  v2 = *(&self->super.isa + OBJC_IVAR___HMDHAPAccessoryDefaultDataSource_swiftDataSource);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (NSDate)currentDate
{
  v2 = sub_22A4DB74C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DB71C();
  v7 = sub_22A4DB6AC();
  (*(v3 + 8))(v6, v2);

  return v7;
}

- (BOOL)isResidentCapable
{
  deviceCapabilities = [objc_opt_self() deviceCapabilities];
  isResidentCapable = [deviceCapabilities isResidentCapable];

  return isResidentCapable;
}

- (HMDHAPAccessoryDefaultDataSource)init
{
  *(&self->super.isa + OBJC_IVAR___HMDHAPAccessoryDefaultDataSource_swiftDataSource) = [objc_allocWithZone(_s22DefaultSwiftDataSourceCMa()) init];
  v4.receiver = self;
  v4.super_class = HMDHAPAccessoryDefaultDataSource;
  return [(HMDHAPAccessoryDefaultDataSource *)&v4 init];
}

@end