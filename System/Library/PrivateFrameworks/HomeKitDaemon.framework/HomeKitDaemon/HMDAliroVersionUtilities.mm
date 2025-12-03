@interface HMDAliroVersionUtilities
+ (BOOL)isCurrentDeviceCompatibleWithAliroVersion:(id)version includeUWBCompatibility:(BOOL)compatibility;
+ (id)chunks:(id)chunks;
+ (id)concatenate:(id)concatenate;
+ (id)dataFromNumber:(id)number error:(id *)error;
+ (void)readAliroVersionIntoMemoryOnHomeManager:(id)manager;
+ (void)readAndSaveAliroVersionFromSESOnHomeManager:(id)manager completionHandler:(id)handler;
- (HMDAliroVersionUtilities)init;
@end

@implementation HMDAliroVersionUtilities

+ (id)concatenate:(id)concatenate
{
  v3 = sub_22A4DD83C();
  v4 = sub_22966BFE8(v3);
  v6 = v5;

  v7 = sub_22A4DB61C();
  sub_2295798D4(v4, v6);

  return v7;
}

+ (id)chunks:(id)chunks
{
  chunksCopy = chunks;
  v4 = sub_22A4DB62C();
  v6 = v5;

  _s13HomeKitDaemon21AliroVersionUtilitiesC6chunksySay10Foundation4DataVGAGFZ_0(v4, v6);
  sub_2295798D4(v4, v6);
  v7 = sub_22A4DD81C();

  return v7;
}

+ (id)dataFromNumber:(id)number error:(id *)error
{
  numberCopy = number;
  v6 = sub_229672F78(number);
  v8 = v7;

  v9 = sub_22A4DB61C();
  sub_2295798D4(v6, v8);

  return v9;
}

+ (void)readAndSaveAliroVersionFromSESOnHomeManager:(id)manager completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v16 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = manager;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_22A4DD9DC();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22A57C078;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22A57B590;
  v15[5] = v14;
  swift_unknownObjectRetain();
  sub_229859F70(0, 0, v10, &unk_22A581CC0, v15);
}

+ (void)readAliroVersionIntoMemoryOnHomeManager:(id)manager
{
  swift_unknownObjectRetain();
  sub_22A4DE01C();
  swift_unknownObjectRelease();
  v3 = v7;
  v4 = __swift_project_boxed_opaque_existential_0(v6, v7);
  ObjCClassMetadata = swift_getObjCClassMetadata();
  sub_2296720CC(v4, ObjCClassMetadata, v3);
  __swift_destroy_boxed_opaque_existential_0(v6);
}

+ (BOOL)isCurrentDeviceCompatibleWithAliroVersion:(id)version includeUWBCompatibility:(BOOL)compatibility
{
  versionCopy = version;
  v6 = _s13HomeKitDaemon21AliroVersionUtilitiesC29isCurrentDeviceCompatibleWith0dE023includeUWBCompatibilitySbAaEC_SbtFZ_0(versionCopy, compatibility);

  return v6 & 1;
}

- (HMDAliroVersionUtilities)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AliroVersionUtilities();
  return [(HMDAliroVersionUtilities *)&v3 init];
}

@end