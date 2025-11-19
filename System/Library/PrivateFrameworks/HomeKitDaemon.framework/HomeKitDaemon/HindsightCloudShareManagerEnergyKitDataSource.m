@interface HindsightCloudShareManagerEnergyKitDataSource
- (BOOL)shouldCreateZoneForHome:(id)a3;
- (BOOL)shouldGrantWriteAccessToUser:(id)a3;
- (BOOL)shouldShareWithUser:(id)a3;
- (HMDHomeKitVersion)minimumHomeKitVersion;
- (_TtC13HomeKitDaemon45HindsightCloudShareManagerEnergyKitDataSource)init;
- (id)zoneUUIDForHome:(id)a3;
@end

@implementation HindsightCloudShareManagerEnergyKitDataSource

- (_TtC13HomeKitDaemon45HindsightCloudShareManagerEnergyKitDataSource)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for HindsightCloudShareManagerEnergyKitDataSource();
  return [(HindsightCloudShareManagerEnergyKitDataSource *)&v3 init];
}

- (HMDHomeKitVersion)minimumHomeKitVersion
{
  v2 = [objc_opt_self() version13_0];

  return v2;
}

- (id)zoneUUIDForHome:(id)a3
{
  v4 = sub_22A4DB7DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - v10;
  sub_22A4DBDAC();
  v12 = a3;
  v13 = [v12 spiClientIdentifier];
  sub_22A4DB79C();

  sub_22A4DBD9C();
  v14 = *(v5 + 8);
  v14(v9, v4);
  v15 = sub_22A4DB77C();
  v14(v11, v4);

  return v15;
}

- (BOOL)shouldCreateZoneForHome:(id)a3
{
  v3 = a3;
  v4 = [objc_msgSend(v3 featuresDataSource)];

  swift_unknownObjectRelease();
  return v4;
}

- (BOOL)shouldShareWithUser:(id)a3
{
  v3 = a3;
  if ([v3 isAllowedToAccessActivityHistory] && (v4 = objc_msgSend(v3, sel_home)) != 0)
  {
    v5 = v4;
    v6 = [objc_msgSend(v4 featuresDataSource)];

    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)shouldGrantWriteAccessToUser:(id)a3
{
  v3 = a3;
  v4 = [v3 home];
  if (v4)
  {
    v5 = v4;
    v6 = [objc_msgSend(v4 featuresDataSource)];

    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end