@interface DOCSBFolderStatesObservervationManager
+ (DOCSBFolderStatesObservervationManager)sharedManager;
- (DOCFolderStateProviding)folderObservationProvider;
- (DOCSBFolderStatesObservervationManager)init;
- (NSDictionary)folderStates;
- (id)_fetchStoredItemsWithFolderID:(id)a3;
- (void)_compareItemsWithLeft:(id)a3 right:(id)a4;
- (void)_handleFolderChangedWithFolderID:(id)a3 topItems:(id)a4;
- (void)_storeItems:(id)a3 folderID:(id)a4;
- (void)setFolderObservationProvider:(id)a3;
- (void)setFolderStates:(id)a3;
- (void)start;
- (void)stopObservingFolderID:(id)a3;
@end

@implementation DOCSBFolderStatesObservervationManager

+ (DOCSBFolderStatesObservervationManager)sharedManager
{
  if (qword_27EEE28D8 != -1)
  {
    swift_once();
  }

  v3 = qword_27EEE2D00;

  return v3;
}

- (DOCFolderStateProviding)folderObservationProvider
{
  v2 = *(self + OBJC_IVAR___DOCSBFolderStatesObservervationManager_folderObservationProvider);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (void)setFolderObservationProvider:(id)a3
{
  v3 = *(self + OBJC_IVAR___DOCSBFolderStatesObservervationManager_folderObservationProvider);
  *(self + OBJC_IVAR___DOCSBFolderStatesObservervationManager_folderObservationProvider) = a3;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (NSDictionary)folderStates
{
  v2 = *(self + OBJC_IVAR___DOCSBFolderStatesObservervationManager_folderStates);
  type metadata accessor for DOCSBFolderState(self);

  v3 = sub_24938A3EC();

  return v3;
}

- (void)setFolderStates:(id)a3
{
  type metadata accessor for DOCSBFolderState(self);
  v4 = sub_24938A3FC();
  v5 = *(self + OBJC_IVAR___DOCSBFolderStatesObservervationManager_folderStates);
  *(self + OBJC_IVAR___DOCSBFolderStatesObservervationManager_folderStates) = v4;
}

- (void)stopObservingFolderID:(id)a3
{
  v4 = sub_24938A45C();
  v6 = v5;
  v7 = self;
  sub_249380564(v4, v6);
}

- (void)_handleFolderChangedWithFolderID:(id)a3 topItems:(id)a4
{
  v5 = sub_24938A45C();
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2D58, &qword_24938F5D8);
  v8 = sub_24938A4FC();
  v9 = self;
  sub_249380BE4(v5, v7, v8);
}

- (void)_compareItemsWithLeft:(id)a3 right:(id)a4
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2D58, &qword_24938F5D8);
  v5 = sub_24938A4FC();
  v6 = sub_24938A4FC();
  v7 = self;
  sub_249381F9C(v5, v6);
}

- (id)_fetchStoredItemsWithFolderID:(id)a3
{
  v4 = sub_24938A45C();
  v6 = v5;
  v7 = self;
  sub_2493822B4(v4, v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2D58, &qword_24938F5D8);
  v8 = sub_24938A4EC();

  return v8;
}

- (void)_storeItems:(id)a3 folderID:(id)a4
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEE2D58, &qword_24938F5D8);
  v5 = sub_24938A4FC();
  v6 = sub_24938A45C();
  v8 = v7;
  v9 = self;
  sub_24938255C(v5, v6, v8);
}

- (DOCSBFolderStatesObservervationManager)init
{
  *(self + OBJC_IVAR___DOCSBFolderStatesObservervationManager_folderObservationProvider) = 0;
  v3 = OBJC_IVAR___DOCSBFolderStatesObservervationManager_folderStates;
  *(self + v3) = sub_249384FC8(MEMORY[0x277D84F90]);
  v5.receiver = self;
  v5.super_class = DOCSBFolderStatesObservervationManager;
  return [(DOCSBFolderStatesObservervationManager *)&v5 init];
}

- (void)start
{
  if (qword_27EEE28C0 != -1)
  {
    swift_once();
  }

  v0 = sub_24938A3AC();
  __swift_project_value_buffer(v0, qword_27EEE2AE0);
  oslog = sub_24938A38C();
  v1 = sub_24938A53C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_249382D44(0x29287472617473, 0xE700000000000000, &v5);
    _os_log_impl(&dword_249340000, oslog, v1, "%s TODO fetch saved state for all known folders", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v3);
    MEMORY[0x24C1F6C70](v3, -1, -1);
    MEMORY[0x24C1F6C70](v2, -1, -1);
  }
}

@end