@interface ICModelAvailabilityManager
+ (ICModelAvailabilityManager)sharedInstance;
- (BOOL)supportsCallTranscription;
- (BOOL)supportsGeneralASR;
- (BOOL)supportsOnDeviceSummary;
- (BOOL)supportsPrivateCloudComputeSummary;
- (ICModelAvailabilityManager)init;
- (void)fetchAndCacheAsyncAvailabilities:(id)availabilities;
@end

@implementation ICModelAvailabilityManager

+ (ICModelAvailabilityManager)sharedInstance
{
  if (qword_1EC7D3418 != -1)
  {
    swift_once();
  }

  v3 = qword_1EC7D3428;

  return v3;
}

- (ICModelAvailabilityManager)init
{
  type metadata accessor for AppleIntelligenceSupportStatus();
  MEMORY[0x1EEE9AC00]();
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR___ICModelAvailabilityManager_generalASRLock;
  v6 = sub_1D45C4D98();
  (*(*(v6 - 8) + 56))(v4, 3, 3, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3438);
  v7 = swift_allocObject();
  *(v7 + ((*(*v7 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1D4578A38(v4, v7 + *(*v7 + *MEMORY[0x1E69E6B68] + 16));
  *(&self->super.isa + v5) = v7;
  v9.receiver = self;
  v9.super_class = ICModelAvailabilityManager;
  return [(ICModelAvailabilityManager *)&v9 init];
}

- (void)fetchAndCacheAsyncAvailabilities:(id)availabilities
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3450);
  MEMORY[0x1EEE9AC00]();
  v6 = &v13 - v5;
  v7 = _Block_copy(availabilities);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = self;
  v9 = sub_1D45C4FC8();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_1D45CAE80;
  v10[5] = v8;
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1D45CAE90;
  v11[5] = v10;
  selfCopy = self;
  sub_1D45B818C(0, 0, v6, &unk_1D45CAEA0, v11);
}

- (BOOL)supportsCallTranscription
{
  sharedConnection = [objc_opt_self() sharedConnection];
  if (sharedConnection)
  {
    v3 = sharedConnection;
    isNotesTranscriptionAllowed = [sharedConnection isNotesTranscriptionAllowed];

    if (isNotesTranscriptionAllowed)
    {
      LOBYTE(sharedConnection) = TUTranscriptionAvailabilityForUseCase() != 0;
    }

    else
    {
      LOBYTE(sharedConnection) = 0;
    }
  }

  else
  {
    __break(1u);
  }

  return sharedConnection;
}

- (BOOL)supportsPrivateCloudComputeSummary
{
  selfCopy = self;
  v3 = ICModelAvailabilityManager.supportsPrivateCloudComputeSummary.getter();

  return v3 & 1;
}

- (BOOL)supportsOnDeviceSummary
{
  selfCopy = self;
  v3 = ICModelAvailabilityManager.supportsOnDeviceSummary.getter();

  return v3 & 1;
}

- (BOOL)supportsGeneralASR
{
  selfCopy = self;
  v3 = ICModelAvailabilityManager.supportsGeneralASR.getter();

  return v3 & 1;
}

@end