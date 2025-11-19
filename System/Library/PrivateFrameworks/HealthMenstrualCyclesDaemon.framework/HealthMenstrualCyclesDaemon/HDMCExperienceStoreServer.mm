@interface HDMCExperienceStoreServer
+ (BOOL)validateConfiguration:(id)a3 client:(id)a4 error:(id *)a5;
+ (Class)configurationClass;
+ (NSString)taskIdentifier;
- (HDMCExperienceStoreServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (id)exportedInterface;
- (id)remoteInterface;
- (void)experienceModelManagerDidUpdateModel;
- (void)remote_deleteSetupRecord:(id)a3 completion:(id)a4;
- (void)remote_persistSetupRecord:(id)a3 completion:(id)a4;
- (void)remote_persistSetupRecord:(id)a3 mergeWith:(id)a4 completion:(id)a5;
- (void)remote_stopObservingChanges;
@end

@implementation HDMCExperienceStoreServer

- (HDMCExperienceStoreServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v9 = sub_22944F0B4();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22944F094();
  v13 = a4;
  v14 = a5;
  swift_unknownObjectRetain();
  return HDMCExperienceStoreServer.init(uuid:configuration:client:delegate:)(v12, a4, v14, a6);
}

+ (NSString)taskIdentifier
{
  sub_2293D30DC(0, &qword_2813DBE90, 0x277D119A8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v3)
  {
    sub_22944F894();
    v4 = sub_22944F864();

    v3 = v4;
  }

  return v3;
}

- (id)exportedInterface
{
  v2 = HKMCExperienceStoreServerInterface();

  return v2;
}

- (id)remoteInterface
{
  v2 = HKMCExperienceStoreClientInterface();

  return v2;
}

+ (Class)configurationClass
{
  sub_2293D30DC(0, &qword_2813DBE88, 0x277CCDA98);

  return swift_getObjCClassFromMetadata();
}

+ (BOOL)validateConfiguration:(id)a3 client:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = a4;
  sub_22943D9B8(v7);

  return 1;
}

- (void)remote_stopObservingChanges
{
  v2 = self;
  sub_22943B5DC();
}

- (void)remote_persistSetupRecord:(id)a3 completion:(id)a4
{
  v7 = sub_22944F0B4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(a4);
  *(swift_allocObject() + 16) = v12;
  v13 = a3;
  v14 = self;
  v15 = [v13 sampleUUID];
  sub_22944F094();

  sub_22943BF70(v13, v11, sub_22943DDAC);

  (*(v8 + 8))(v11, v7);
}

- (void)remote_persistSetupRecord:(id)a3 mergeWith:(id)a4 completion:(id)a5
{
  v8 = sub_22944F0B4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(a5);
  sub_22944F094();
  *(swift_allocObject() + 16) = v13;
  v14 = a3;
  v15 = self;
  sub_22943BF70(v14, v12, sub_22943DDAC);

  (*(v9 + 8))(v12, v8);
}

- (void)remote_deleteSetupRecord:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  *(swift_allocObject() + 16) = v6;
  v7 = a3;
  v8 = self;
  sub_22943C5E4(v7, sub_22943DDAC);
}

- (void)experienceModelManagerDidUpdateModel
{
  v2 = self;
  HDMCExperienceStoreServer.experienceModelManagerDidUpdateModel()();
}

@end