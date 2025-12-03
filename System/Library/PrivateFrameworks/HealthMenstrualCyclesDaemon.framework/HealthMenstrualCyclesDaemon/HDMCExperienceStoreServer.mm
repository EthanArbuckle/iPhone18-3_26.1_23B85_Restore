@interface HDMCExperienceStoreServer
+ (BOOL)validateConfiguration:(id)configuration client:(id)client error:(id *)error;
+ (Class)configurationClass;
+ (NSString)taskIdentifier;
- (HDMCExperienceStoreServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (id)exportedInterface;
- (id)remoteInterface;
- (void)experienceModelManagerDidUpdateModel;
- (void)remote_deleteSetupRecord:(id)record completion:(id)completion;
- (void)remote_persistSetupRecord:(id)record completion:(id)completion;
- (void)remote_persistSetupRecord:(id)record mergeWith:(id)with completion:(id)completion;
- (void)remote_stopObservingChanges;
@end

@implementation HDMCExperienceStoreServer

- (HDMCExperienceStoreServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  v9 = sub_22944F0B4();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22944F094();
  configurationCopy = configuration;
  clientCopy = client;
  swift_unknownObjectRetain();
  return HDMCExperienceStoreServer.init(uuid:configuration:client:delegate:)(v12, configuration, clientCopy, delegate);
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

+ (BOOL)validateConfiguration:(id)configuration client:(id)client error:(id *)error
{
  configurationCopy = configuration;
  clientCopy = client;
  sub_22943D9B8(clientCopy);

  return 1;
}

- (void)remote_stopObservingChanges
{
  selfCopy = self;
  sub_22943B5DC();
}

- (void)remote_persistSetupRecord:(id)record completion:(id)completion
{
  v7 = sub_22944F0B4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(completion);
  *(swift_allocObject() + 16) = v12;
  recordCopy = record;
  selfCopy = self;
  sampleUUID = [recordCopy sampleUUID];
  sub_22944F094();

  sub_22943BF70(recordCopy, v11, sub_22943DDAC);

  (*(v8 + 8))(v11, v7);
}

- (void)remote_persistSetupRecord:(id)record mergeWith:(id)with completion:(id)completion
{
  v8 = sub_22944F0B4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(completion);
  sub_22944F094();
  *(swift_allocObject() + 16) = v13;
  recordCopy = record;
  selfCopy = self;
  sub_22943BF70(recordCopy, v12, sub_22943DDAC);

  (*(v9 + 8))(v12, v8);
}

- (void)remote_deleteSetupRecord:(id)record completion:(id)completion
{
  v6 = _Block_copy(completion);
  *(swift_allocObject() + 16) = v6;
  recordCopy = record;
  selfCopy = self;
  sub_22943C5E4(recordCopy, sub_22943DDAC);
}

- (void)experienceModelManagerDidUpdateModel
{
  selfCopy = self;
  HDMCExperienceStoreServer.experienceModelManagerDidUpdateModel()();
}

@end