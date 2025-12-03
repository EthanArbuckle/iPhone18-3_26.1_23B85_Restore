@interface HMDAliroVersion
- (HMDAliroVersion)init;
- (HMDAliroVersion)initWithExpeditedTransactionSupportedVersions:(id)versions bleUWBSupportedVersions:(id)supportedVersions bleAdvertisingVersions:(id)advertisingVersions;
- (NSString)description;
@end

@implementation HMDAliroVersion

- (HMDAliroVersion)initWithExpeditedTransactionSupportedVersions:(id)versions bleUWBSupportedVersions:(id)supportedVersions bleAdvertisingVersions:(id)advertisingVersions
{
  versionsCopy = versions;
  supportedVersionsCopy = supportedVersions;
  advertisingVersionsCopy = advertisingVersions;
  v11 = sub_22A4DB62C();
  v13 = v12;

  v14 = sub_22A4DB62C();
  v16 = v15;

  v17 = sub_22A4DB62C();
  v19 = v18;

  v20 = _s13HomeKitDaemon21AliroVersionUtilitiesC6chunksySay10Foundation4DataVGAGFZ_0(v11, v13);
  v21 = sub_2296725BC(v20);

  *(&self->super.isa + OBJC_IVAR___HMDAliroVersion_expeditedTransactionSupportedVersions) = v21;
  v22 = _s13HomeKitDaemon21AliroVersionUtilitiesC6chunksySay10Foundation4DataVGAGFZ_0(v14, v16);
  v23 = sub_2296725BC(v22);

  *(&self->super.isa + OBJC_IVAR___HMDAliroVersion_bleUWBSupportedVersions) = v23;
  v24 = _s13HomeKitDaemon21AliroVersionUtilitiesC6chunksySay10Foundation4DataVGAGFZ_0(v17, v19);
  v25 = sub_2296725BC(v24);

  *(&self->super.isa + OBJC_IVAR___HMDAliroVersion_bleAdvertisingVersions) = v25;
  v28.receiver = self;
  v28.super_class = type metadata accessor for AliroVersion();
  v26 = [(HMDAliroVersion *)&v28 init];
  sub_2295798D4(v17, v19);
  sub_2295798D4(v14, v16);
  sub_2295798D4(v11, v13);
  return v26;
}

- (NSString)description
{
  selfCopy = self;
  AliroVersion.description.getter();

  v3 = sub_22A4DD5AC();

  return v3;
}

- (HMDAliroVersion)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end