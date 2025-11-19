uint64_t CloudManager.dbSnapshotEventPublisher.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgs5NeverOGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PassthroughSubject<DBSnapshotAnalytics.SnapshotEvent?, Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCy9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgs5NeverOGMd);
  return Publisher.eraseToAnyPublisher()();
}

uint64_t key path setter for CloudManager.viewModel : CloudManager()
{
  swift_getKeyPath();
  swift_getKeyPath();
  swift_unknownObjectRetain();

  return static Published.subscript.setter();
}

uint64_t CloudManager.viewModel.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*CloudManager.viewModel.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return BlurGradientView.locations.modify;
}

uint64_t key path setter for CloudManager.$viewModel : CloudManager(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy9MomentsUI7CloudDB_pSg_GMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9MomentsUI7CloudDB_pSgGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t CloudManager.$viewModel.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy9MomentsUI7CloudDB_pSg_GMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9MomentsUI7CloudDB_pSgGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*CloudManager.$viewModel.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy9MomentsUI7CloudDB_pSg_GMd);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC9MomentsUI12CloudManager__viewModel;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9MomentsUI7CloudDB_pSgGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return DBManager.$pendingDBChanges.modify;
}

uint64_t key path setter for CloudManager.cloudModel : CloudManager(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  ObjectType = swift_getObjectType();
  v5 = swift_unknownObjectRetain();

  return specialized CloudManager.cloudModel.setter(v5, v3, ObjectType, v2);
}

uint64_t CloudManager.cloudModel.setter(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return specialized CloudManager.cloudModel.setter(a1, v2, ObjectType, a2);
}

uint64_t closure #1 in CloudManager.cloudModel.didset()
{
  v1 = (v0[7] + OBJC_IVAR____TtC9MomentsUI12CloudManager_cloudModel);
  swift_beginAccess();
  v0[8] = *v1;
  v0[9] = v1[1];
  swift_unknownObjectRetain();

  return MEMORY[0x2822009F8](closure #1 in CloudManager.cloudModel.didset, 0, 0);
}

{
  type metadata accessor for MainActor();
  *(v0 + 80) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in CloudManager.cloudModel.didset, v2, v1);
}

{

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v1 = v0[5];
  if (!v1 || (v2 = v0[8], swift_unknownObjectRelease(), v2 != v1))
  {
    v3 = v0[8];
    v4 = v0[9];
    swift_getKeyPath();
    swift_getKeyPath();
    v0[5] = v3;
    v0[6] = v4;
    swift_unknownObjectRetain();

    static Published.subscript.setter();
  }

  v5 = v0[7];

  return MEMORY[0x2822009F8](closure #1 in CloudManager.cloudModel.didset, v5, 0);
}

{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

void (*CloudManager.cloudModel.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = OBJC_IVAR____TtC9MomentsUI12CloudManager_cloudModel;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  swift_unknownObjectRetain();
  return CloudManager.cloudModel.modify;
}

void CloudManager.cloudModel.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  ObjectType = swift_getObjectType();
  v7 = v3[5];
  if (a2)
  {
    v8 = swift_unknownObjectRetain();
    specialized CloudManager.cloudModel.setter(v8, v7, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  else
  {
    specialized CloudManager.cloudModel.setter(v4, v3[5], ObjectType, v5);
  }

  free(v3);
}

uint64_t CloudManager.lastSyncStart.setter(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = OBJC_IVAR____TtC9MomentsUI12CloudManager_lastSyncStart;
  swift_beginAccess();
  (*(v4 + 24))(v1 + v10, a1, v3);
  swift_endAccess();
  v11 = *(v4 + 16);
  v11(v9, v1 + v10, v3);
  v12 = OBJC_IVAR____TtC9MomentsUI12CloudManager_lastSyncEnd;
  swift_beginAccess();
  v11(v7, v1 + v12, v3);
  LOBYTE(v12) = static Date.> infix(_:_:)();
  v13 = *(v4 + 8);
  v13(v7, v3);
  v13(v9, v3);
  swift_getKeyPath();
  swift_getKeyPath();
  v15[7] = v12 & 1;

  static Published.subscript.setter();
  return v13(a1, v3);
}

uint64_t CloudManager.lastSyncEnd.setter(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = OBJC_IVAR____TtC9MomentsUI12CloudManager_lastSyncEnd;
  swift_beginAccess();
  (*(v4 + 24))(v1 + v10, a1, v3);
  swift_endAccess();
  v11 = OBJC_IVAR____TtC9MomentsUI12CloudManager_lastSyncStart;
  swift_beginAccess();
  v12 = *(v4 + 16);
  v12(v9, v1 + v11, v3);
  v12(v7, v1 + v10, v3);
  LOBYTE(v10) = static Date.> infix(_:_:)();
  v13 = *(v4 + 8);
  v13(v7, v3);
  v13(v9, v3);
  swift_getKeyPath();
  swift_getKeyPath();
  v15[7] = v10 & 1;

  static Published.subscript.setter();
  return v13(a1, v3);
}

uint64_t key path setter for CloudManager.$isSyncing : CloudManager(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t CloudManager.lastSyncDuration.getter()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v13[-v6];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v13[24] & 1) == 0)
  {
    v9 = OBJC_IVAR____TtC9MomentsUI12CloudManager_lastSyncEnd;
    swift_beginAccess();
    v10 = *(v2 + 16);
    v10(v7, v0 + v9, v1);
    v11 = OBJC_IVAR____TtC9MomentsUI12CloudManager_lastSyncStart;
    swift_beginAccess();
    v10(v5, v0 + v11, v1);
    Date.timeIntervalSince(_:)();
    v12 = *(v2 + 8);
    v12(v5, v1);
    return (v12)(v7, v1);
  }

  return result;
}

uint64_t one-time initialization function for $inDelegate()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss9TaskLocalCySbGMd);
  swift_allocObject();
  result = TaskLocal.init(wrappedValue:)();
  static CloudManager.SyncEngine.$inDelegate = result;
  return result;
}

uint64_t *CloudManager.init(automaticallySync:cloudSyncStateURL:cloudDeviceDBURL:cloudSuggestionsStateURL:suggestionsDBURL:cloudSyncDBURL:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v183 = a6;
  v184 = a5;
  v185 = a4;
  v186 = a3;
  v187 = a2;
  v181 = a1;
  v182 = *v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v177 = &v143 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v176 = &v143 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v179 = &v143 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v178 = &v143 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v175 = &v143 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v174 = &v143 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v173 = &v143 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v172 = &v143 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v171 = &v143 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v170 = &v143 - v28;
  MEMORY[0x28223BE20](v27);
  v169 = &v143 - v29;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9MomentsUI7CloudDB_pSgGMd);
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v166 = &v143 - v30;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay9MomentsUI11CloudDeviceVGGMd);
  v164 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v163 = &v143 - v31;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVys6UInt64V8sequence_AESg11suggestionstSgGMd);
  v161 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v160 = &v143 - v32;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9MomentsUI9DBManagerCSgGMd);
  v158 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v157 = &v143 - v33;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd);
  v155 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v154 = &v143 - v34;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9MomentsUI12CloudManagerC9FreeSpaceOSgGMd);
  v152 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v146 = &v143 - v35;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  v188 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v37 = &v143 - v36;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9MomentsUI24CloudManagerAccountStateOSg_So10CKRecordIDCSgtGMd);
  v144 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v39 = &v143 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbSgGMd);
  v41 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v43 = &v143 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd);
  v149 = v44;
  v45 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v47 = &v143 - v46;
  v147 = &v143 - v46;
  swift_defaultActor_initialize();
  v7[14] = 0;
  v7[15] = 0;
  v7[16] = -1;
  v48 = MEMORY[0x277D84F90];
  v7[17] = 0;
  v7[18] = v48;
  v7[19] = v48;
  v49 = OBJC_IVAR____TtC9MomentsUI12CloudManager__primaryID;
  v189 = 0;
  v190 = 0;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
  Published.init(initialValue:)();
  v50 = *(v45 + 32);
  v148 = v45 + 32;
  v150 = v50;
  v50(v7 + v49, v47, v44);
  *(v7 + OBJC_IVAR____TtC9MomentsUI12CloudManager_primaryIDAssign) = 0;
  v51 = OBJC_IVAR____TtC9MomentsUI12CloudManager__onboarded;
  LOBYTE(v189) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd);
  Published.init(initialValue:)();
  v52 = *(v41 + 32);
  v52(v7 + v51, v43, v40);
  *(v7 + OBJC_IVAR____TtC9MomentsUI12CloudManager_onboardedObserver) = 0;
  v53 = OBJC_IVAR____TtC9MomentsUI12CloudManager___accountState;
  LOBYTE(v189) = 3;
  v190 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI24CloudManagerAccountStateOSg_So10CKRecordIDCSgtMd);
  Published.init(initialValue:)();
  (*(v144 + 32))(v7 + v53, v39, v145);
  v54 = OBJC_IVAR____TtC9MomentsUI12CloudManager__accountUpdating;
  LOBYTE(v189) = 0;
  Published.init(initialValue:)();
  v55 = *(v188 + 32);
  v188 += 32;
  v55(v7 + v54, v37, v180);
  v56 = OBJC_IVAR____TtC9MomentsUI12CloudManager__freeSpace;
  LOBYTE(v189) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI12CloudManagerC9FreeSpaceOSgMd);
  v57 = v146;
  Published.init(initialValue:)();
  (*(v152 + 32))(v7 + v56, v57, v153);
  v58 = OBJC_IVAR____TtC9MomentsUI12CloudManager__cloudQuotaExceeded;
  LOBYTE(v189) = 2;
  Published.init(initialValue:)();
  v52(v7 + v58, v43, v40);
  v59 = OBJC_IVAR____TtC9MomentsUI12CloudManager__iCloudPhotoLibraryAvailable;
  LOBYTE(v189) = 2;
  Published.init(initialValue:)();
  v52(v7 + v59, v43, v40);
  v60 = OBJC_IVAR____TtC9MomentsUI12CloudManager__healthDataAvailable;
  LOBYTE(v189) = 2;
  Published.init(initialValue:)();
  v52(v7 + v60, v43, v40);
  v61 = v7 + OBJC_IVAR____TtC9MomentsUI12CloudManager_healthDataAvailableSubscription;
  *v61 = 0u;
  *(v61 + 1) = 0u;
  *(v61 + 4) = 0;
  v62 = OBJC_IVAR____TtC9MomentsUI12CloudManager__gcActiveCount;
  v189 = 0;
  v63 = v154;
  Published.init(initialValue:)();
  v64 = *(v155 + 32);
  v65 = v156;
  v64(v7 + v62, v63, v156);
  v66 = OBJC_IVAR____TtC9MomentsUI12CloudManager__uiActiveCount;
  v189 = 0;
  Published.init(initialValue:)();
  v64(v7 + v66, v63, v65);
  *(v7 + OBJC_IVAR____TtC9MomentsUI12CloudManager__uiActiveIDs) = MEMORY[0x277D84FA0];
  *(v7 + OBJC_IVAR____TtC9MomentsUI12CloudManager__uiActiveTask) = 0;
  v67 = OBJC_IVAR____TtC9MomentsUI12CloudManager__dbManager;
  v189 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI9DBManagerCSgMd);
  v68 = v157;
  Published.init(initialValue:)();
  (*(v158 + 32))(v7 + v67, v68, v159);
  *(v7 + OBJC_IVAR____TtC9MomentsUI12CloudManager_dbManagerAssign) = 0;
  v69 = OBJC_IVAR____TtC9MomentsUI12CloudManager__snapshotGeneration;
  v189 = 0;
  v190 = 0;
  v70 = v147;
  Published.init(initialValue:)();
  v150(v7 + v69, v70, v149);
  v71 = OBJC_IVAR____TtC9MomentsUI12CloudManager__pendingDBChanges;
  LOBYTE(v189) = 0;
  v72 = MEMORY[0x277D839B0];
  Published.init(initialValue:)();
  v73 = v180;
  v55(v7 + v71, v37, v180);
  *(v7 + OBJC_IVAR____TtC9MomentsUI12CloudManager_pendingDBChangesAssign) = 0;
  v74 = OBJC_IVAR____TtC9MomentsUI12CloudManager__latestLocalSnapshotSequence;
  v189 = 0;
  v190 = 0;
  v191 = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V8sequence_ABSg11suggestionstSgMd);
  v75 = v160;
  Published.init(initialValue:)();
  (*(v161 + 32))(v7 + v74, v75, v162);
  *(v7 + OBJC_IVAR____TtC9MomentsUI12CloudManager_latestLocalSnapshotSequenceAssign) = 0;
  v76 = OBJC_IVAR____TtC9MomentsUI12CloudManager__newlyOnboardedDevices;
  v189 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI11CloudDeviceVGMd);
  v77 = v163;
  Published.init(initialValue:)();
  (*(v164 + 32))(v7 + v76, v77, v165);
  *(v7 + OBJC_IVAR____TtC9MomentsUI12CloudManager_newlyOnboardedDevicesAssign) = 0;
  v78 = OBJC_IVAR____TtC9MomentsUI12CloudManager_dbSnapshotEventSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgs5NeverOGMd);
  swift_allocObject();
  *(v7 + v78) = PassthroughSubject.init()();
  v79 = OBJC_IVAR____TtC9MomentsUI12CloudManager__viewModel;
  v189 = 0;
  v190 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI7CloudDB_pSgMd);
  v80 = v166;
  Published.init(initialValue:)();
  (*(v167 + 32))(v7 + v79, v80, v168);
  static Date.distantPast.getter();
  static Date.distantPast.getter();
  v81 = OBJC_IVAR____TtC9MomentsUI12CloudManager__isSyncing;
  LOBYTE(v189) = 0;
  Published.init(initialValue:)();
  v55(v7 + v81, v37, v73);
  v82 = OBJC_IVAR____TtC9MomentsUI12CloudManager___isRefreshing;
  LOBYTE(v189) = 0;
  Published.init(initialValue:)();
  v55(v7 + v82, v37, v73);
  *(v7 + OBJC_IVAR____TtC9MomentsUI12CloudManager__cancelRefresh) = 0;
  v83 = OBJC_IVAR____TtC9MomentsUI12CloudManager__isInitializing;
  LOBYTE(v189) = 0;
  Published.init(initialValue:)();
  v55(v7 + v83, v37, v73);
  v84 = OBJC_IVAR____TtC9MomentsUI12CloudManager__hasInitialized;
  LOBYTE(v189) = 0;
  Published.init(initialValue:)();
  v55(v7 + v84, v37, v73);
  *(v7 + OBJC_IVAR____TtC9MomentsUI12CloudManager_hasFinishedBasicInitialization) = 0;
  v85 = OBJC_IVAR____TtC9MomentsUI12CloudManager__isDoingBasicInitialization;
  LOBYTE(v189) = 0;
  Published.init(initialValue:)();
  v86 = v7 + v85;
  v87 = v169;
  v55(v86, v37, v73);
  *(v7 + OBJC_IVAR____TtC9MomentsUI12CloudManager_initRetries) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys23CustomStringConvertible_pSgGMd);
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_21658CA40;
  v89 = MEMORY[0x277D839D8];
  *(v88 + 56) = v72;
  *(v88 + 64) = v89;
  *(v88 + 32) = v181;
  outlined init with copy of DateInterval?(v187, v87, &_s10Foundation3URLVSgMd);
  v90 = type metadata accessor for URL();
  v91 = *(v90 - 8);
  v92 = *(v91 + 48);
  v93 = v92(v87, 1, v90);
  v188 = v91;
  if (v93 == 1)
  {
    outlined destroy of UTType?(v87, &_s10Foundation3URLVSgMd);
    *(v88 + 72) = 0u;
    *(v88 + 88) = 0u;
    *(v88 + 104) = 0;
  }

  else
  {
    *(v88 + 96) = v90;
    *(v88 + 104) = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v88 + 72));
    (*(v91 + 32))(boxed_opaque_existential_1, v87, v90);
  }

  v95 = v170;
  outlined init with copy of DateInterval?(v186, v170, &_s10Foundation3URLVSgMd);
  v96 = v92(v95, 1, v90);
  v97 = v175;
  v99 = v172;
  v98 = v173;
  v100 = v171;
  if (v96 == 1)
  {
    outlined destroy of UTType?(v95, &_s10Foundation3URLVSgMd);
    *(v88 + 112) = 0u;
    *(v88 + 128) = 0u;
    *(v88 + 144) = 0;
  }

  else
  {
    *(v88 + 136) = v90;
    *(v88 + 144) = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    v101 = __swift_allocate_boxed_opaque_existential_1((v88 + 112));
    (*(v188 + 32))(v101, v95, v90);
  }

  outlined init with copy of DateInterval?(v185, v100, &_s10Foundation3URLVSgMd);
  if (v92(v100, 1, v90) == 1)
  {
    outlined destroy of UTType?(v100, &_s10Foundation3URLVSgMd);
    *(v88 + 152) = 0u;
    *(v88 + 168) = 0u;
    *(v88 + 184) = 0;
  }

  else
  {
    *(v88 + 176) = v90;
    *(v88 + 184) = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    v102 = __swift_allocate_boxed_opaque_existential_1((v88 + 152));
    (*(v188 + 32))(v102, v100, v90);
  }

  outlined init with copy of DateInterval?(v184, v99, &_s10Foundation3URLVSgMd);
  if (v92(v99, 1, v90) == 1)
  {
    outlined destroy of UTType?(v99, &_s10Foundation3URLVSgMd);
    *(v88 + 192) = 0u;
    *(v88 + 208) = 0u;
    *(v88 + 224) = 0;
  }

  else
  {
    *(v88 + 216) = v90;
    *(v88 + 224) = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    v103 = __swift_allocate_boxed_opaque_existential_1((v88 + 192));
    (*(v188 + 32))(v103, v99, v90);
  }

  outlined init with copy of DateInterval?(v183, v98, &_s10Foundation3URLVSgMd);
  if (v92(v98, 1, v90) == 1)
  {
    outlined destroy of UTType?(v98, &_s10Foundation3URLVSgMd);
    *(v88 + 232) = 0u;
    *(v88 + 248) = 0u;
    *(v88 + 264) = 0;
  }

  else
  {
    *(v88 + 256) = v90;
    *(v88 + 264) = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    v104 = __swift_allocate_boxed_opaque_existential_1((v88 + 232));
    (*(v188 + 32))(v104, v98, v90);
  }

  static CloudLog.LogBeginInfo(_:_:)(v88, "init(automaticallySync:cloudSyncStateURL:cloudDeviceDBURL:cloudSuggestionsStateURL:suggestionsDBURL:cloudSyncDBURL:)", 116, 2, v182, &protocol witness table for CloudManager);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_10Foundation3URLVtGMd);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation3URLVtMd);
  v106 = *(*(v105 - 8) + 72);
  v107 = (*(*(v105 - 8) + 80) + 32) & ~*(*(v105 - 8) + 80);
  v108 = swift_allocObject();
  *(v108 + 16) = xmmword_21658E7C0;
  v180 = v108;
  v109 = (v108 + v107);
  v110 = *(v105 + 48);
  *v109 = 0xD000000000000011;
  *(v109 + 1) = 0x8000000216584BC0;
  v111 = v174;
  outlined init with copy of DateInterval?(v187, v174, &_s10Foundation3URLVSgMd);
  if (v92(v111, 1, v90) == 1)
  {
    if (one-time initialization token for defaultSyncStateURL != -1)
    {
      swift_once();
    }

    v112 = __swift_project_value_buffer(v90, static CloudRootDB.defaultSyncStateURL);
    (*(v188 + 16))(&v109[v110], v112, v90);
    if (v92(v111, 1, v90) != 1)
    {
      outlined destroy of UTType?(v111, &_s10Foundation3URLVSgMd);
    }
  }

  else
  {
    (*(v188 + 32))(&v109[v110], v111, v90);
  }

  v113 = &v109[v106];
  v114 = *(v105 + 48);
  *v113 = 0xD000000000000010;
  *(v113 + 1) = 0x8000000216583B10;
  outlined init with copy of DateInterval?(v186, v97, &_s10Foundation3URLVSgMd);
  if (v92(v97, 1, v90) == 1)
  {
    if (one-time initialization token for defaultDeviceDBURL != -1)
    {
      swift_once();
    }

    v115 = __swift_project_value_buffer(v90, static CloudDevicesDB.defaultDeviceDBURL);
    (*(v188 + 16))(&v113[v114], v115, v90);
    if (v92(v97, 1, v90) != 1)
    {
      outlined destroy of UTType?(v97, &_s10Foundation3URLVSgMd);
    }
  }

  else
  {
    (*(v188 + 32))(&v113[v114], v97, v90);
  }

  v116 = &v109[2 * v106];
  v117 = *(v105 + 48);
  *v116 = 0xD000000000000018;
  *(v116 + 1) = 0x8000000216578F60;
  v118 = v178;
  outlined init with copy of DateInterval?(v185, v178, &_s10Foundation3URLVSgMd);
  if (v92(v118, 1, v90) == 1)
  {
    if (one-time initialization token for defaultSuggestionsStateURL != -1)
    {
      swift_once();
    }

    v119 = __swift_project_value_buffer(v90, static CloudSuggestionsDB.defaultSuggestionsStateURL);
    (*(v188 + 16))(&v116[v117], v119, v90);
    v120 = v178;
    if (v92(v178, 1, v90) != 1)
    {
      outlined destroy of UTType?(v120, &_s10Foundation3URLVSgMd);
    }
  }

  else
  {
    (*(v188 + 32))(&v116[v117], v118, v90);
  }

  v181 &= 1u;
  v121 = &v109[3 * v106];
  v122 = *(v105 + 48);
  *v121 = 0xD000000000000010;
  *(v121 + 1) = 0x8000000216578F80;
  v123 = v179;
  outlined init with copy of DateInterval?(v184, v179, &_s10Foundation3URLVSgMd);
  if (v92(v123, 1, v90) == 1)
  {
    if (one-time initialization token for defaultSuggestionsDBURL != -1)
    {
      swift_once();
    }

    v124 = __swift_project_value_buffer(v90, static CloudSuggestionsDB.defaultSuggestionsDBURL);
    v125 = v188;
    (*(v188 + 16))(&v121[v122], v124, v90);
    v126 = v179;
    if (v92(v179, 1, v90) != 1)
    {
      outlined destroy of UTType?(v126, &_s10Foundation3URLVSgMd);
    }
  }

  else
  {
    v127 = v123;
    v125 = v188;
    (*(v188 + 32))(&v121[v122], v127, v90);
  }

  v128 = &v109[4 * v106];
  v129 = *(v105 + 48);
  strcpy(v128, "cloudSyncDBURL");
  v128[15] = -18;
  v130 = v176;
  outlined init with copy of DateInterval?(v183, v176, &_s10Foundation3URLVSgMd);
  if (v92(v130, 1, v90) == 1)
  {
    if (one-time initialization token for defaultCloudSyncDBURL != -1)
    {
      swift_once();
    }

    v131 = __swift_project_value_buffer(v90, static CloudSyncDB.defaultCloudSyncDBURL);
    (*(v125 + 16))(&v128[v129], v131, v90);
    if (v92(v130, 1, v90) != 1)
    {
      outlined destroy of UTType?(v130, &_s10Foundation3URLVSgMd);
    }
  }

  else
  {
    (*(v125 + 32))(&v128[v129], v130, v90);
  }

  v132 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation3URLVTt0g5Tf4g_n(v180);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v133 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v132);

  type metadata accessor for CloudRootDB();
  swift_allocObject();
  v134 = CloudRootDB.init(emptyDB:config:)(0, v133);
  v135 = (v7 + OBJC_IVAR____TtC9MomentsUI12CloudManager_cloudModel);
  *v135 = v134;
  v135[1] = &protocol witness table for CloudRootDB;
  *(v7 + 160) = v181;
  v136 = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type CloudManager and conformance CloudManager, type metadata accessor for CloudManager);
  v137 = *(*v134 + 240);

  v137(v138, v136);
  v139 = type metadata accessor for TaskPriority();
  v140 = v177;
  (*(*(v139 - 8) + 56))(v177, 1, 1, v139);
  v141 = swift_allocObject();
  v141[2] = 0;
  v141[3] = 0;
  v141[4] = v7;
  v141[5] = v134;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v140, &async function pointer to partial apply for closure #1 in CloudManager.init(automaticallySync:cloudSyncStateURL:cloudDeviceDBURL:cloudSuggestionsStateURL:suggestionsDBURL:cloudSyncDBURL:), v141);

  static CloudLog.LogEndInfo(_:)("init(automaticallySync:cloudSyncStateURL:cloudDeviceDBURL:cloudSuggestionsStateURL:suggestionsDBURL:cloudSyncDBURL:)", 116, 2, v182, &protocol witness table for CloudManager);
  outlined destroy of UTType?(v183, &_s10Foundation3URLVSgMd);
  outlined destroy of UTType?(v184, &_s10Foundation3URLVSgMd);
  outlined destroy of UTType?(v185, &_s10Foundation3URLVSgMd);
  outlined destroy of UTType?(v186, &_s10Foundation3URLVSgMd);
  outlined destroy of UTType?(v187, &_s10Foundation3URLVSgMd);
  return v7;
}

uint64_t closure #1 in CloudManager.init(automaticallySync:cloudSyncStateURL:cloudDeviceDBURL:cloudSuggestionsStateURL:suggestionsDBURL:cloudSyncDBURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  return MEMORY[0x2822009F8](closure #1 in CloudManager.init(automaticallySync:cloudSyncStateURL:cloudDeviceDBURL:cloudSuggestionsStateURL:suggestionsDBURL:cloudSyncDBURL:), 0, 0);
}

uint64_t closure #1 in CloudManager.init(automaticallySync:cloudSyncStateURL:cloudDeviceDBURL:cloudSuggestionsStateURL:suggestionsDBURL:cloudSyncDBURL:)()
{
  type metadata accessor for MainActor();
  *(v0 + 48) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in CloudManager.init(automaticallySync:cloudSyncStateURL:cloudDeviceDBURL:cloudSuggestionsStateURL:suggestionsDBURL:cloudSyncDBURL:), v2, v1);
}

{
  v1 = v0[5];

  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = v1;
  v0[3] = &protocol witness table for CloudRootDB;

  static Published.subscript.setter();
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = specialized closure #4 in static IncrementalProcessor.renderAndSaveSuggestionsIfNecessary(qos:publishDraftOnSave:);

  return CloudManager.initializeSyncEngine(wait:_:)(0, 1953066601, 0xE400000000000000);
}

uint64_t CloudManager.deinit()
{
  v1 = *(v0 + 132);
  if (v1 != -1)
  {
    notify_cancel(v1);
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v2 = OBJC_IVAR____TtC9MomentsUI12CloudManager__primaryID;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd);
  v29 = *(*(v3 - 8) + 8);
  v29(v0 + v2, v3);

  v4 = OBJC_IVAR____TtC9MomentsUI12CloudManager__onboarded;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbSgGMd);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  swift_unknownObjectRelease();
  v7 = OBJC_IVAR____TtC9MomentsUI12CloudManager___accountState;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9MomentsUI24CloudManagerAccountStateOSg_So10CKRecordIDCSgtGMd);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC9MomentsUI12CloudManager__accountUpdating;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  v11 = *(*(v10 - 8) + 8);
  v11(v0 + v9, v10);
  v12 = OBJC_IVAR____TtC9MomentsUI12CloudManager__freeSpace;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9MomentsUI12CloudManagerC9FreeSpaceOSgGMd);
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  v6(v0 + OBJC_IVAR____TtC9MomentsUI12CloudManager__cloudQuotaExceeded, v5);
  v6(v0 + OBJC_IVAR____TtC9MomentsUI12CloudManager__iCloudPhotoLibraryAvailable, v5);
  v6(v0 + OBJC_IVAR____TtC9MomentsUI12CloudManager__healthDataAvailable, v5);
  outlined destroy of UTType?(v0 + OBJC_IVAR____TtC9MomentsUI12CloudManager_healthDataAvailableSubscription, &_s7Combine11Cancellable_pSgMd);
  v14 = OBJC_IVAR____TtC9MomentsUI12CloudManager__gcActiveCount;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd);
  v16 = *(*(v15 - 8) + 8);
  v16(v0 + v14, v15);
  v16(v0 + OBJC_IVAR____TtC9MomentsUI12CloudManager__uiActiveCount, v15);

  v17 = OBJC_IVAR____TtC9MomentsUI12CloudManager__dbManager;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9MomentsUI9DBManagerCSgGMd);
  (*(*(v18 - 8) + 8))(v0 + v17, v18);

  v29(v0 + OBJC_IVAR____TtC9MomentsUI12CloudManager__snapshotGeneration, v3);
  v11(v0 + OBJC_IVAR____TtC9MomentsUI12CloudManager__pendingDBChanges, v10);

  v19 = OBJC_IVAR____TtC9MomentsUI12CloudManager__latestLocalSnapshotSequence;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVys6UInt64V8sequence_AESg11suggestionstSgGMd);
  (*(*(v20 - 8) + 8))(v0 + v19, v20);

  v21 = OBJC_IVAR____TtC9MomentsUI12CloudManager__newlyOnboardedDevices;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay9MomentsUI11CloudDeviceVGGMd);
  (*(*(v22 - 8) + 8))(v0 + v21, v22);

  v23 = OBJC_IVAR____TtC9MomentsUI12CloudManager__viewModel;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9MomentsUI7CloudDB_pSgGMd);
  (*(*(v24 - 8) + 8))(v0 + v23, v24);
  swift_unknownObjectRelease();
  v25 = OBJC_IVAR____TtC9MomentsUI12CloudManager_lastSyncStart;
  v26 = type metadata accessor for Date();
  v27 = *(*(v26 - 8) + 8);
  v27(v0 + v25, v26);
  v27(v0 + OBJC_IVAR____TtC9MomentsUI12CloudManager_lastSyncEnd, v26);
  v11(v0 + OBJC_IVAR____TtC9MomentsUI12CloudManager__isSyncing, v10);
  v11(v0 + OBJC_IVAR____TtC9MomentsUI12CloudManager___isRefreshing, v10);
  v11(v0 + OBJC_IVAR____TtC9MomentsUI12CloudManager__isInitializing, v10);
  v11(v0 + OBJC_IVAR____TtC9MomentsUI12CloudManager__hasInitialized, v10);
  v11(v0 + OBJC_IVAR____TtC9MomentsUI12CloudManager__isDoingBasicInitialization, v10);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t CloudManager.__deallocating_deinit()
{
  CloudManager.deinit();

  return MEMORY[0x282200960](v0);
}

void closure #1 in static CloudManager._checkTCC(retrying:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = a4;
  v23 = a7;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v21 - v15;
  v24 = MEMORY[0x21CE91FC0](a2, a3);
  (*(v13 + 16))(v16, a1, v12);
  v17 = (*(v13 + 80) + 56) & ~*(v13 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = v22;
  *(v18 + 3) = a5;
  *(v18 + 4) = a2;
  *(v18 + 5) = a3;
  *(v18 + 6) = a6;
  (*(v13 + 32))(&v18[v17], v16, v12);
  *&v18[(v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8] = v23;
  aBlock[4] = partial apply for closure #1 in closure #1 in static CloudManager._checkTCC(retrying:);
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  aBlock[3] = &block_descriptor_360;
  v19 = _Block_copy(aBlock);

  v20 = v24;
  TCCAccessRequest();
  _Block_release(v19);
}

uint64_t closure #1 in closure #1 in static CloudManager._checkTCC(retrying:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v81 = a6;
  v82 = a2;
  v83 = a3;
  v84 = a4;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v76 = &v71 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v75 = &v71 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v71 - v19;
  swift_beginAccess();
  v22 = static CloudManager.bundleID;
  v21 = qword_2811A6958;

  v23 = MEMORY[0x21CE91FC0](v22, v21);

  v24 = TCCAccessCopyInformationForBundleId();

  if (!v24)
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v10, static CloudManager.Log);
    swift_beginAccess();
    (*(v11 + 16))(v14, v27, v10);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = v10;
      v32 = swift_slowAlloc();
      v88[0] = v32;
      *v30 = 136315138;
      *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x8000000216585600, v88);
      _os_log_impl(&dword_21607C000, v28, v29, "CloudManager.%s TCC not available. Missing entitlement:\n<key>com.apple.private.tcc.manager.access.read</key>\n<array>\n    <string>kTCCServiceAll</string>\n</array>", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x21CE94770](v32, -1, -1);
      MEMORY[0x21CE94770](v30, -1, -1);

      (*(v11 + 8))(v14, v31);
    }

    else
    {

      (*(v11 + 8))(v14, v10);
    }

    v53 = a1 & 1;
    goto LABEL_32;
  }

  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();
  v78 = v10;
  if (!v25)
  {

LABEL_10:
    v26 = 0;
    goto LABEL_11;
  }

  v87[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd);
  static Array._conditionallyBridgeFromObjectiveC(_:result:)();

  v26 = v87[0];
  if (!v87[0])
  {
    goto LABEL_10;
  }

LABEL_11:
  v77 = a5;
  v80 = v11;
  v33 = specialized static CloudManager._safeTCCDescription(_:)(v26);
  v35 = v34;
  if (one-time initialization token for Log != -1)
  {
LABEL_45:
    swift_once();
  }

  v36 = v78;
  v37 = __swift_project_value_buffer(v78, static CloudManager.Log);
  swift_beginAccess();
  v38 = v80;
  v39 = *(v80 + 16);
  v74 = v37;
  v73 = v80 + 16;
  v72 = v39;
  v39(v20, v37, v36);

  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.info.getter();

  v42 = os_log_type_enabled(v40, v41);
  v79 = a7;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v87[0] = v44;
    *v43 = 136446466;
    *(v43 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x8000000216585600, v87);
    *(v43 + 12) = 2080;
    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, v87);

    *(v43 + 14) = v45;
    _os_log_impl(&dword_21607C000, v40, v41, "CloudManager.%{public}s TCC access: %s", v43, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v44, -1, -1);
    MEMORY[0x21CE94770](v43, -1, -1);
  }

  else
  {
  }

  v46 = *(v38 + 8);
  v46(v20, v36);
  v48 = v82;
  v47 = v83;
  v49 = v77;
  if (!v26)
  {
    goto LABEL_29;
  }

  a7 = *(v26 + 16);
  if (!a7)
  {
LABEL_28:

    goto LABEL_29;
  }

  v71 = v46;
  v35 = 0;
  v33 = MEMORY[0x277D837D0];
  while (1)
  {
    if (v35 >= *(v26 + 16))
    {
      __break(1u);
      goto LABEL_45;
    }

    v20 = *(v26 + 8 * v35 + 32);
    if (!*(v20 + 2))
    {
      goto LABEL_19;
    }

    v50 = specialized __RawDictionaryStorage.find<A>(_:)(v48, v47);
    if ((v51 & 1) == 0 || (outlined init with copy of Any(*(v20 + 7) + 32 * v50, v87), (swift_dynamicCast() & 1) == 0))
    {

      goto LABEL_19;
    }

    if (v85 == v84 && v86 == v49)
    {
      break;
    }

    v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v52)
    {
      goto LABEL_34;
    }

    v48 = v82;
    v47 = v83;
LABEL_19:
    if (a7 == ++v35)
    {
      goto LABEL_28;
    }
  }

LABEL_34:

  v56 = v78;
  if (*(v20 + 2) && (v57 = specialized __RawDictionaryStorage.find<A>(_:)(0x6F666E494343546BLL, 0xEF6465746E617247), (v58 & 1) != 0))
  {
    outlined init with copy of Any(*(v20 + 7) + 32 * v57, v87);

    if (swift_dynamicCast())
    {
      v59 = v85;
      v60 = v75;
      v72(v75, v74, v56);
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v87[0] = v64;
        *v63 = 136446466;
        *(v63 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x8000000216585600, v87);
        *(v63 + 12) = 1024;
        *(v63 + 14) = v59;
        _os_log_impl(&dword_21607C000, v61, v62, "CloudManager.%{public}s TCC iCloud access granted: %{BOOL}d", v63, 0x12u);
        __swift_destroy_boxed_opaque_existential_1(v64);
        MEMORY[0x21CE94770](v64, -1, -1);
        MEMORY[0x21CE94770](v63, -1, -1);
      }

      v71(v60, v56);
      v65 = v81;
      swift_beginAccess();
      *(v65 + 16) = v59;
      goto LABEL_29;
    }
  }

  else
  {
  }

  v66 = v76;
  v72(v76, v74, v56);
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v87[0] = v70;
    *v69 = 136446210;
    *(v69 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x8000000216585600, v87);
    _os_log_impl(&dword_21607C000, v67, v68, "CloudManager.%{public}s TCC iCloud access granted: unknown", v69, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v70);
    MEMORY[0x21CE94770](v70, -1, -1);
    MEMORY[0x21CE94770](v69, -1, -1);
  }

  v71(v66, v56);
LABEL_29:
  v53 = 2;
LABEL_32:
  v54 = v81;
  swift_beginAccess();
  *(v54 + 16) = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
  return CheckedContinuation.resume(returning:)();
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  v3 = a2 != 0;

  v2(v3);
}

uint64_t CloudManager.initializeBasicSyncEngine()()
{
  v1[124] = v0;
  v1[125] = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  v1[126] = swift_task_alloc();
  v2 = type metadata accessor for NSRunLoop.SchedulerTimeType.Stride();
  v1[127] = v2;
  v1[128] = *(v2 - 8);
  v1[129] = swift_task_alloc();
  v3 = type metadata accessor for NSNotificationCenter.Publisher();
  v1[130] = v3;
  v1[131] = *(v3 - 8);
  v1[132] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO8DebounceVy_So20NSNotificationCenterC10FoundationE9PublisherVSo9NSRunLoopCGMd);
  v1[133] = v4;
  v1[134] = *(v4 - 8);
  v1[135] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVys6UInt64V8sequence_AISg11suggestionstSgs5NeverOGGMd);
  v1[136] = v5;
  v1[137] = *(v5 - 8);
  v1[138] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AC0A6LatestVy_AA12AnyPublisherVySbs5NeverOGALGSbGMd);
  v1[139] = v6;
  v1[140] = *(v6 - 8);
  v1[141] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AC3MapVy_AC0A6LatestVy_AA12AnyPublisherVySbs5NeverOGANGSbGGMd);
  v1[142] = v7;
  v1[143] = *(v7 - 8);
  v1[144] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v1[145] = v8;
  v1[146] = *(v8 - 8);
  v1[147] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy9MomentsUI9DBManagerCSg_GMd);
  v1[148] = v9;
  v1[149] = *(v9 - 8);
  v1[150] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy9MomentsUI9DBManagerCSgs5NeverOGGMd);
  v1[151] = v10;
  v1[152] = *(v10 - 8);
  v1[153] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVySay9MomentsUI11CloudDeviceVGs5NeverOGGMd);
  v1[154] = v11;
  v1[155] = *(v11 - 8);
  v1[156] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy9MomentsUI11CloudDeviceVSgs5NeverOGGMd);
  v1[157] = v12;
  v1[158] = *(v12 - 8);
  v1[159] = swift_task_alloc();
  v13 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1[160] = v13;
  v1[161] = *(v13 - 8);
  v1[162] = swift_task_alloc();
  v1[163] = type metadata accessor for OS_dispatch_queue.Attributes();
  v1[164] = swift_task_alloc();
  type metadata accessor for DispatchQoS();
  v1[165] = swift_task_alloc();
  v14 = type metadata accessor for Logger();
  v1[166] = v14;
  v1[167] = *(v14 - 8);
  v1[168] = swift_task_alloc();
  v1[169] = swift_task_alloc();
  v1[170] = swift_task_alloc();
  v1[171] = swift_task_alloc();
  v1[172] = swift_task_alloc();
  v1[173] = swift_task_alloc();
  v1[174] = swift_task_alloc();
  v1[175] = swift_task_alloc();

  return MEMORY[0x2822009F8](CloudManager.initializeBasicSyncEngine(), v0, 0);
}

{
  v184 = v0;
  v1 = v0;
  v183[1] = *MEMORY[0x277D85DE8];
  v2 = v0[125];
  v3 = v0[124];
  static CloudLog.LogBeginInfo(_:_:)(0, "initializeBasicSyncEngine()", 27, 2, v2, &protocol witness table for CloudManager);
  v4 = OBJC_IVAR____TtC9MomentsUI12CloudManager_hasFinishedBasicInitialization;
  v1[176] = OBJC_IVAR____TtC9MomentsUI12CloudManager_hasFinishedBasicInitialization;
  if (*(v3 + v4) & 1) != 0 || (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , (*(v1 + 1730)))
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v5 = v1[168];
    v6 = v1[167];
    v7 = v1[166];
    v8 = __swift_project_value_buffer(v7, static CloudManager.Log);
    swift_beginAccess();
    (*(v6 + 16))(v5, v8, v7);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v1[168];
    v13 = v1[167];
    v14 = v1[166];
    if (v11)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v183[0] = v16;
      *v15 = 136446210;
      *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000002165856B0, v183);
      _os_log_impl(&dword_21607C000, v9, v10, "CloudManager.%{public}s: already done", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x21CE94770](v16, -1, -1);
      MEMORY[0x21CE94770](v15, -1, -1);
    }

    (*(v13 + 8))(v12, v14);
LABEL_8:
    static CloudLog.LogEndInfo(_:)("initializeBasicSyncEngine()", 27, 2, v1[125], &protocol witness table for CloudManager);

    v17 = v1[1];

    return v17();
  }

  v19 = v1[124];
  swift_getKeyPath();
  swift_getKeyPath();
  *(v1 + 1729) = 1;

  static Published.subscript.setter();
  if (!*(v19 + 112))
  {
    v20 = v1 + 8;
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v21 = v1[175];
    v22 = v1[167];
    v23 = v1[166];
    v24 = __swift_project_value_buffer(v23, static CloudManager.Log);
    swift_beginAccess();
    (*(v22 + 16))(v21, v24, v23);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();
    v27 = os_log_type_enabled(v25, v26);
    v28 = v1[175];
    v29 = v1[167];
    v30 = v1[166];
    if (v27)
    {
      v180 = v1 + 8;
      v31 = swift_slowAlloc();
      v32 = v1;
      v33 = swift_slowAlloc();
      v183[0] = v33;
      *v31 = 136446466;
      swift_beginAccess();
      v34 = StaticString.description.getter();
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, v183);

      *(v31 + 4) = v36;
      *(v31 + 12) = 2082;
      *(v31 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000002165856B0, v183);
      _os_log_impl(&dword_21607C000, v25, v26, "%{public}s.%{public}s Registering accountChangeObserver...", v31, 0x16u);
      swift_arrayDestroy();
      v37 = v33;
      v1 = v32;
      MEMORY[0x21CE94770](v37, -1, -1);
      v38 = v31;
      v20 = v180;
      MEMORY[0x21CE94770](v38, -1, -1);

      (*(v29 + 8))(v28, v30);
    }

    else
    {

      (*(v29 + 8))(v28, v30);
    }

    v39 = v1[125];
    v40 = v1[124];
    v41 = [objc_opt_self() defaultCenter];
    v42 = *MEMORY[0x277CBBF00];
    v43 = swift_allocObject();
    *(v43 + 16) = v40;
    *(v43 + 24) = v39;
    v1[12] = partial apply for closure #1 in CloudManager.initializeBasicSyncEngine();
    v1[13] = v43;
    v1[8] = MEMORY[0x277D85DD0];
    v1[9] = 1107296256;
    v1[10] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
    v1[11] = &block_descriptor_387;
    v44 = _Block_copy(v20);

    v45 = [v41 addObserverForName:v42 object:0 queue:0 usingBlock:v44];
    _Block_release(v44);

    *(v19 + 112) = v45;
    swift_unknownObjectRelease();
  }

  v46 = v1[124];
  if (*(v46 + 128) == -1)
  {
    v47 = v1[162];
    v48 = v1[161];
    v178 = v1[125];
    v175 = v1[160];
    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    static DispatchQoS.unspecified.getter();
    v1[122] = MEMORY[0x277D84F90];
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
    lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v48 + 104))(v47, *MEMORY[0x277D85260], v175);
    v49 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    *(v1 + 431) = -1;
    v50 = swift_allocObject();
    v50[2] = v46;
    v50[3] = 0xD000000000000025;
    v50[4] = 0x80000002165856D0;
    v50[5] = v178;
    v1[6] = partial apply for closure #2 in CloudManager.initializeBasicSyncEngine();
    v1[7] = v50;
    v1[2] = MEMORY[0x277D85DD0];
    v1[3] = 1107296256;
    v1[4] = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
    v1[5] = &block_descriptor_418;
    v51 = _Block_copy(v1 + 2);

    v52 = v49;

    notify_register_dispatch("com.apple.cloudd.authorizationChanged", v1 + 431, v52, v51);

    _Block_release(v51);
    v46 = v1[124];
  }

  if (*(v46 + 132) == -1)
  {
    *(v1 + 430) = -1;
    notify_register_check("com.apple.cloudd.authorizationChanged", v1 + 430);
    *(v46 + 132) = *(v1 + 430);
    v46 = v1[124];
    if (*(v46 + 120))
    {
      goto LABEL_29;
    }
  }

  else if (*(v46 + 120))
  {
    goto LABEL_29;
  }

  v181 = v1 + 14;
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v53 = v1[174];
  v54 = v1[167];
  v55 = v1[166];
  v56 = __swift_project_value_buffer(v55, static CloudManager.Log);
  swift_beginAccess();
  (*(v54 + 16))(v53, v56, v55);
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.info.getter();
  v59 = os_log_type_enabled(v57, v58);
  v60 = v1[174];
  v61 = v1[167];
  v62 = v1[166];
  if (v59)
  {
    v63 = swift_slowAlloc();
    v64 = v1;
    v65 = swift_slowAlloc();
    v183[0] = v65;
    *v63 = 136446466;
    swift_beginAccess();
    v66 = StaticString.description.getter();
    v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v67, v183);

    *(v63 + 4) = v68;
    *(v63 + 12) = 2082;
    *(v63 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000002165856B0, v183);
    _os_log_impl(&dword_21607C000, v57, v58, "%{public}s.%{public}s Registering applicationResumedObserver...", v63, 0x16u);
    swift_arrayDestroy();
    v69 = v65;
    v1 = v64;
    MEMORY[0x21CE94770](v69, -1, -1);
    MEMORY[0x21CE94770](v63, -1, -1);
  }

  (*(v61 + 8))(v60, v62);
  v70 = v1[124];
  v71 = [objc_opt_self() defaultCenter];
  v72 = *MEMORY[0x277D766E8];
  v1[18] = partial apply for closure #3 in CloudManager.initializeBasicSyncEngine();
  v1[19] = v70;
  v1[14] = MEMORY[0x277D85DD0];
  v1[15] = 1107296256;
  v1[16] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
  v1[17] = &block_descriptor_390;
  v73 = _Block_copy(v181);

  v74 = [v71 addObserverForName:v72 object:0 queue:0 usingBlock:v73];
  _Block_release(v73);

  *(v46 + 120) = v74;
  swift_unknownObjectRelease();
  v46 = v1[124];
LABEL_29:
  v75 = OBJC_IVAR____TtC9MomentsUI12CloudManager_primaryIDAssign;
  v1[177] = OBJC_IVAR____TtC9MomentsUI12CloudManager_primaryIDAssign;
  if (*(v46 + v75))
  {
    v76 = OBJC_IVAR____TtC9MomentsUI12CloudManager_newlyOnboardedDevicesAssign;
    v1[181] = OBJC_IVAR____TtC9MomentsUI12CloudManager_newlyOnboardedDevicesAssign;
    if (*(v46 + v76))
    {
      v77 = OBJC_IVAR____TtC9MomentsUI12CloudManager_dbManagerAssign;
      v1[185] = OBJC_IVAR____TtC9MomentsUI12CloudManager_dbManagerAssign;
      if (*(v46 + v77))
      {
        v78 = OBJC_IVAR____TtC9MomentsUI12CloudManager_pendingDBChangesAssign;
        v1[194] = OBJC_IVAR____TtC9MomentsUI12CloudManager_pendingDBChangesAssign;
        if (*(v46 + v78))
        {
          v79 = OBJC_IVAR____TtC9MomentsUI12CloudManager_latestLocalSnapshotSequenceAssign;
          v1[206] = OBJC_IVAR____TtC9MomentsUI12CloudManager_latestLocalSnapshotSequenceAssign;
          if (*(v46 + v79))
          {
            v80 = OBJC_IVAR____TtC9MomentsUI12CloudManager_healthDataAvailableSubscription;
            swift_beginAccess();
            outlined init with copy of DateInterval?(v46 + v80, (v1 + 30), &_s7Combine11Cancellable_pSgMd);
            v81 = v1[33];
            outlined destroy of UTType?((v1 + 30), &_s7Combine11Cancellable_pSgMd);
            if (!v81)
            {
              v182 = v1[135];
              v177 = v1[133];
              v179 = v1[134];
              v170 = v1[132];
              v171 = v1[130];
              v82 = v1[129];
              v172 = v1[128];
              v173 = v1[127];
              v174 = v1[131];
              v83 = v1[126];
              v176 = v1[125];
              v84 = [objc_opt_self() defaultCenter];
              NSNotificationCenter.publisher(for:object:)();

              static NSRunLoop.SchedulerTimeType.Stride.milliseconds(_:)();
              v85 = [objc_opt_self() mainRunLoop];
              v1[111] = v85;
              v86 = type metadata accessor for NSRunLoop.SchedulerOptions();
              (*(*(v86 - 8) + 56))(v83, 1, 1, v86);
              type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSRunLoop);
              _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher, MEMORY[0x277CC9DB0]);
              lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue(&lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop, &lazy cache variable for type metadata for NSRunLoop);
              Publisher.debounce<A>(for:scheduler:options:)();
              outlined destroy of UTType?(v83, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

              (*(v172 + 8))(v82, v173);
              (*(v174 + 8))(v170, v171);
              v87 = swift_allocObject();
              swift_weakInit();
              v88 = swift_allocObject();
              *(v88 + 16) = v87;
              *(v88 + 24) = v176;
              lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.Debounce<NSNotificationCenter.Publisher, NSRunLoop> and conformance Publishers.Debounce<A, B>, &_s7Combine10PublishersO8DebounceVy_So20NSNotificationCenterC10FoundationE9PublisherVSo9NSRunLoopCGMd);
              v89 = Publisher<>.sink(receiveValue:)();

              (*(v179 + 8))(v182, v177);
              v90 = type metadata accessor for AnyCancellable();
              v91 = MEMORY[0x277CBCDA0];
              v1[28] = v90;
              v1[29] = v91;
              v1[25] = v89;
              swift_beginAccess();
              outlined assign with take of AttributedString?((v1 + 25), v46 + v80, &_s7Combine11Cancellable_pSgMd);
              swift_endAccess();
            }

            *(v1[124] + v1[176]) = 1;
            swift_getKeyPath();
            swift_getKeyPath();
            *(v1 + 1728) = 0;

            static Published.subscript.setter();
            goto LABEL_8;
          }

          if (one-time initialization token for Log != -1)
          {
            swift_once();
          }

          v155 = v1[169];
          v156 = v1[167];
          v157 = v1[166];
          v158 = __swift_project_value_buffer(v157, static CloudManager.Log);
          swift_beginAccess();
          (*(v156 + 16))(v155, v158, v157);
          v159 = Logger.logObject.getter();
          v160 = static os_log_type_t.info.getter();
          v161 = os_log_type_enabled(v159, v160);
          v162 = v1[169];
          v163 = v1[167];
          v164 = v1[166];
          if (v161)
          {
            v165 = swift_slowAlloc();
            v166 = swift_slowAlloc();
            *v165 = 136446466;
            v183[0] = v166;
            swift_beginAccess();
            v167 = StaticString.description.getter();
            v169 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v167, v168, v183);

            *(v165 + 4) = v169;
            *(v165 + 12) = 2082;
            *(v165 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000002165856B0, v183);
            _os_log_impl(&dword_21607C000, v159, v160, "%{public}s.%{public}s Registering latestLocalSnapshotSequenceAssign...", v165, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x21CE94770](v166, -1, -1);
            MEMORY[0x21CE94770](v165, -1, -1);
          }

          (*(v163 + 8))(v162, v164);
          type metadata accessor for MainActor();
          v1[207] = static MainActor.shared.getter();
          v122 = dispatch thunk of Actor.unownedExecutor.getter();
          v124 = CloudManager.initializeBasicSyncEngine();
        }

        else
        {
          if (one-time initialization token for Log != -1)
          {
            swift_once();
          }

          v140 = v1[170];
          v141 = v1[167];
          v142 = v1[166];
          v143 = __swift_project_value_buffer(v142, static CloudManager.Log);
          swift_beginAccess();
          (*(v141 + 16))(v140, v143, v142);
          v144 = Logger.logObject.getter();
          v145 = static os_log_type_t.info.getter();
          v146 = os_log_type_enabled(v144, v145);
          v147 = v1[170];
          v148 = v1[167];
          v149 = v1[166];
          if (v146)
          {
            v150 = swift_slowAlloc();
            v151 = swift_slowAlloc();
            *v150 = 136446466;
            v183[0] = v151;
            swift_beginAccess();
            v152 = StaticString.description.getter();
            v154 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v152, v153, v183);

            *(v150 + 4) = v154;
            *(v150 + 12) = 2082;
            *(v150 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000002165856B0, v183);
            _os_log_impl(&dword_21607C000, v144, v145, "%{public}s.%{public}s Registering pendingDBChangesAssign...", v150, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x21CE94770](v151, -1, -1);
            MEMORY[0x21CE94770](v150, -1, -1);
          }

          (*(v148 + 8))(v147, v149);
          type metadata accessor for MainActor();
          v1[195] = static MainActor.shared.getter();
          v122 = dispatch thunk of Actor.unownedExecutor.getter();
          v124 = CloudManager.initializeBasicSyncEngine();
        }
      }

      else
      {
        if (one-time initialization token for Log != -1)
        {
          swift_once();
        }

        v125 = v1[171];
        v126 = v1[167];
        v127 = v1[166];
        v128 = __swift_project_value_buffer(v127, static CloudManager.Log);
        swift_beginAccess();
        (*(v126 + 16))(v125, v128, v127);
        v129 = Logger.logObject.getter();
        v130 = static os_log_type_t.info.getter();
        v131 = os_log_type_enabled(v129, v130);
        v132 = v1[171];
        v133 = v1[167];
        v134 = v1[166];
        if (v131)
        {
          v135 = swift_slowAlloc();
          v136 = swift_slowAlloc();
          *v135 = 136446466;
          v183[0] = v136;
          swift_beginAccess();
          v137 = StaticString.description.getter();
          v139 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v137, v138, v183);

          *(v135 + 4) = v139;
          *(v135 + 12) = 2082;
          *(v135 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000002165856B0, v183);
          _os_log_impl(&dword_21607C000, v129, v130, "%{public}s.%{public}s Registering dbManagerAssign...", v135, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x21CE94770](v136, -1, -1);
          MEMORY[0x21CE94770](v135, -1, -1);
        }

        (*(v133 + 8))(v132, v134);
        type metadata accessor for MainActor();
        v1[186] = static MainActor.shared.getter();
        v122 = dispatch thunk of Actor.unownedExecutor.getter();
        v124 = CloudManager.initializeBasicSyncEngine();
      }
    }

    else
    {
      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v107 = v1[172];
      v108 = v1[167];
      v109 = v1[166];
      v110 = __swift_project_value_buffer(v109, static CloudManager.Log);
      swift_beginAccess();
      (*(v108 + 16))(v107, v110, v109);
      v111 = Logger.logObject.getter();
      v112 = static os_log_type_t.info.getter();
      v113 = os_log_type_enabled(v111, v112);
      v114 = v1[172];
      v115 = v1[167];
      v116 = v1[166];
      if (v113)
      {
        v117 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        *v117 = 136446466;
        v183[0] = v118;
        swift_beginAccess();
        v119 = StaticString.description.getter();
        v121 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v119, v120, v183);

        *(v117 + 4) = v121;
        *(v117 + 12) = 2082;
        *(v117 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000002165856B0, v183);
        _os_log_impl(&dword_21607C000, v111, v112, "%{public}s.%{public}s Registering newlyOnboardedDevicesAssign...", v117, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v118, -1, -1);
        MEMORY[0x21CE94770](v117, -1, -1);
      }

      (*(v115 + 8))(v114, v116);
      type metadata accessor for MainActor();
      v1[182] = static MainActor.shared.getter();
      v122 = dispatch thunk of Actor.unownedExecutor.getter();
      v124 = CloudManager.initializeBasicSyncEngine();
    }
  }

  else
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v92 = v1[173];
    v93 = v1[167];
    v94 = v1[166];
    v95 = __swift_project_value_buffer(v94, static CloudManager.Log);
    swift_beginAccess();
    (*(v93 + 16))(v92, v95, v94);
    v96 = Logger.logObject.getter();
    v97 = static os_log_type_t.info.getter();
    v98 = os_log_type_enabled(v96, v97);
    v99 = v1[173];
    v100 = v1[167];
    v101 = v1[166];
    if (v98)
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      *v102 = 136446466;
      v183[0] = v103;
      swift_beginAccess();
      v104 = StaticString.description.getter();
      v106 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v105, v183);

      *(v102 + 4) = v106;
      *(v102 + 12) = 2082;
      *(v102 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000002165856B0, v183);
      _os_log_impl(&dword_21607C000, v96, v97, "%{public}s.%{public}s Registering primaryIDAssign...", v102, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v103, -1, -1);
      MEMORY[0x21CE94770](v102, -1, -1);
    }

    (*(v100 + 8))(v99, v101);
    type metadata accessor for MainActor();
    v1[178] = static MainActor.shared.getter();
    v122 = dispatch thunk of Actor.unownedExecutor.getter();
    v124 = CloudManager.initializeBasicSyncEngine();
  }

  return MEMORY[0x2822009F8](v124, v122, v123);
}

{
  v1 = *(v0 + 992);

  *(v0 + 1432) = CloudManager.devicesDB.getter();

  return MEMORY[0x2822009F8](CloudManager.initializeBasicSyncEngine(), v1, 0);
}

{
  v98 = v0;
  v97[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1432);
  if (v1)
  {
    v2 = CloudManager.initializeBasicSyncEngine();
    v3 = 0;
LABEL_33:

    return MEMORY[0x2822009F8](v2, v1, v3);
  }

  v4 = *(v0 + 992);
  v5 = OBJC_IVAR____TtC9MomentsUI12CloudManager_newlyOnboardedDevicesAssign;
  *(v0 + 1448) = OBJC_IVAR____TtC9MomentsUI12CloudManager_newlyOnboardedDevicesAssign;
  if (!*(v4 + v5))
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v23 = *(v0 + 1376);
    v24 = *(v0 + 1336);
    v25 = *(v0 + 1328);
    v26 = __swift_project_value_buffer(v25, static CloudManager.Log);
    swift_beginAccess();
    (*(v24 + 16))(v23, v26, v25);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();
    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v0 + 1376);
    v31 = *(v0 + 1336);
    v32 = *(v0 + 1328);
    if (v29)
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v97[0] = v34;
      *v33 = 136446466;
      swift_beginAccess();
      v35 = StaticString.description.getter();
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, v97);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2082;
      *(v33 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000002165856B0, v97);
      _os_log_impl(&dword_21607C000, v27, v28, "%{public}s.%{public}s Registering newlyOnboardedDevicesAssign...", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v34, -1, -1);
      MEMORY[0x21CE94770](v33, -1, -1);
    }

    (*(v31 + 8))(v30, v32);
    type metadata accessor for MainActor();
    *(v0 + 1456) = static MainActor.shared.getter();
    v38 = dispatch thunk of Actor.unownedExecutor.getter();
    v40 = CloudManager.initializeBasicSyncEngine();
    goto LABEL_32;
  }

  v6 = OBJC_IVAR____TtC9MomentsUI12CloudManager_dbManagerAssign;
  *(v0 + 1480) = OBJC_IVAR____TtC9MomentsUI12CloudManager_dbManagerAssign;
  if (!*(v4 + v6))
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v41 = *(v0 + 1368);
    v42 = *(v0 + 1336);
    v43 = *(v0 + 1328);
    v44 = __swift_project_value_buffer(v43, static CloudManager.Log);
    swift_beginAccess();
    (*(v42 + 16))(v41, v44, v43);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.info.getter();
    v47 = os_log_type_enabled(v45, v46);
    v48 = *(v0 + 1368);
    v49 = *(v0 + 1336);
    v50 = *(v0 + 1328);
    if (v47)
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v97[0] = v52;
      *v51 = 136446466;
      swift_beginAccess();
      v53 = StaticString.description.getter();
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, v97);

      *(v51 + 4) = v55;
      *(v51 + 12) = 2082;
      *(v51 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000002165856B0, v97);
      _os_log_impl(&dword_21607C000, v45, v46, "%{public}s.%{public}s Registering dbManagerAssign...", v51, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v52, -1, -1);
      MEMORY[0x21CE94770](v51, -1, -1);
    }

    (*(v49 + 8))(v48, v50);
    type metadata accessor for MainActor();
    *(v0 + 1488) = static MainActor.shared.getter();
    v38 = dispatch thunk of Actor.unownedExecutor.getter();
    v40 = CloudManager.initializeBasicSyncEngine();
    goto LABEL_32;
  }

  v7 = OBJC_IVAR____TtC9MomentsUI12CloudManager_pendingDBChangesAssign;
  *(v0 + 1552) = OBJC_IVAR____TtC9MomentsUI12CloudManager_pendingDBChangesAssign;
  if (!*(v4 + v7))
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v56 = *(v0 + 1360);
    v57 = *(v0 + 1336);
    v58 = *(v0 + 1328);
    v59 = __swift_project_value_buffer(v58, static CloudManager.Log);
    swift_beginAccess();
    (*(v57 + 16))(v56, v59, v58);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.info.getter();
    v62 = os_log_type_enabled(v60, v61);
    v63 = *(v0 + 1360);
    v64 = *(v0 + 1336);
    v65 = *(v0 + 1328);
    if (v62)
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v97[0] = v67;
      *v66 = 136446466;
      swift_beginAccess();
      v68 = StaticString.description.getter();
      v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v69, v97);

      *(v66 + 4) = v70;
      *(v66 + 12) = 2082;
      *(v66 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000002165856B0, v97);
      _os_log_impl(&dword_21607C000, v60, v61, "%{public}s.%{public}s Registering pendingDBChangesAssign...", v66, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v67, -1, -1);
      MEMORY[0x21CE94770](v66, -1, -1);
    }

    (*(v64 + 8))(v63, v65);
    type metadata accessor for MainActor();
    *(v0 + 1560) = static MainActor.shared.getter();
    v38 = dispatch thunk of Actor.unownedExecutor.getter();
    v40 = CloudManager.initializeBasicSyncEngine();
    goto LABEL_32;
  }

  v8 = OBJC_IVAR____TtC9MomentsUI12CloudManager_latestLocalSnapshotSequenceAssign;
  *(v0 + 1648) = OBJC_IVAR____TtC9MomentsUI12CloudManager_latestLocalSnapshotSequenceAssign;
  if (!*(v4 + v8))
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v71 = *(v0 + 1352);
    v72 = *(v0 + 1336);
    v73 = *(v0 + 1328);
    v74 = __swift_project_value_buffer(v73, static CloudManager.Log);
    swift_beginAccess();
    (*(v72 + 16))(v71, v74, v73);
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.info.getter();
    v77 = os_log_type_enabled(v75, v76);
    v78 = *(v0 + 1352);
    v79 = *(v0 + 1336);
    v80 = *(v0 + 1328);
    if (v77)
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v97[0] = v82;
      *v81 = 136446466;
      swift_beginAccess();
      v83 = StaticString.description.getter();
      v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v84, v97);

      *(v81 + 4) = v85;
      *(v81 + 12) = 2082;
      *(v81 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000002165856B0, v97);
      _os_log_impl(&dword_21607C000, v75, v76, "%{public}s.%{public}s Registering latestLocalSnapshotSequenceAssign...", v81, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v82, -1, -1);
      MEMORY[0x21CE94770](v81, -1, -1);
    }

    (*(v79 + 8))(v78, v80);
    type metadata accessor for MainActor();
    *(v0 + 1656) = static MainActor.shared.getter();
    v38 = dispatch thunk of Actor.unownedExecutor.getter();
    v40 = CloudManager.initializeBasicSyncEngine();
LABEL_32:
    v86 = v38;
    v87 = v39;
    v2 = v40;
    v1 = v86;
    v3 = v87;
    goto LABEL_33;
  }

  v9 = OBJC_IVAR____TtC9MomentsUI12CloudManager_healthDataAvailableSubscription;
  swift_beginAccess();
  outlined init with copy of DateInterval?(v4 + v9, v0 + 240, &_s7Combine11Cancellable_pSgMd);
  v10 = *(v0 + 264);
  outlined destroy of UTType?(v0 + 240, &_s7Combine11Cancellable_pSgMd);
  if (!v10)
  {
    v96 = *(v0 + 1080);
    v94 = *(v0 + 1064);
    v95 = *(v0 + 1072);
    v88 = *(v0 + 1056);
    v89 = *(v0 + 1040);
    v11 = *(v0 + 1032);
    v90 = *(v0 + 1024);
    v91 = *(v0 + 1016);
    v92 = *(v0 + 1048);
    v12 = *(v0 + 1008);
    v93 = *(v0 + 1000);
    v13 = [objc_opt_self() defaultCenter];
    NSNotificationCenter.publisher(for:object:)();

    static NSRunLoop.SchedulerTimeType.Stride.milliseconds(_:)();
    v14 = [objc_opt_self() mainRunLoop];
    *(v0 + 888) = v14;
    v15 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSRunLoop);
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher, MEMORY[0x277CC9DB0]);
    lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue(&lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop, &lazy cache variable for type metadata for NSRunLoop);
    Publisher.debounce<A>(for:scheduler:options:)();
    outlined destroy of UTType?(v12, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

    (*(v90 + 8))(v11, v91);
    (*(v92 + 8))(v88, v89);
    v16 = swift_allocObject();
    swift_weakInit();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = v93;
    lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.Debounce<NSNotificationCenter.Publisher, NSRunLoop> and conformance Publishers.Debounce<A, B>, &_s7Combine10PublishersO8DebounceVy_So20NSNotificationCenterC10FoundationE9PublisherVSo9NSRunLoopCGMd);
    v18 = Publisher<>.sink(receiveValue:)();

    (*(v95 + 8))(v96, v94);
    v19 = type metadata accessor for AnyCancellable();
    v20 = MEMORY[0x277CBCDA0];
    *(v0 + 224) = v19;
    *(v0 + 232) = v20;
    *(v0 + 200) = v18;
    swift_beginAccess();
    outlined assign with take of AttributedString?(v0 + 200, v4 + v9, &_s7Combine11Cancellable_pSgMd);
    swift_endAccess();
  }

  *(*(v0 + 992) + *(v0 + 1408)) = 1;
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 1728) = 0;

  static Published.subscript.setter();
  static CloudLog.LogEndInfo(_:)("initializeBasicSyncEngine()", 27, 2, *(v0 + 1000), &protocol witness table for CloudManager);

  v21 = *(v0 + 8);

  return v21();
}

{
  v1 = v0[124];
  v0[118] = *(v0[179] + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_primaryDeviceSubject);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy9MomentsUI11CloudDeviceVSgs5NeverOGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PassthroughSubject<CloudDevice?, Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCy9MomentsUI11CloudDeviceVSgs5NeverOGMd);
  v0[180] = Publisher.eraseToAnyPublisher()();

  return MEMORY[0x2822009F8](CloudManager.initializeBasicSyncEngine(), v1, 0);
}

{
  v101 = v0;
  v100[1] = *MEMORY[0x277D85DE8];
  v98 = *(v0 + 1416);
  v1 = *(v0 + 1272);
  v2 = *(v0 + 1264);
  v3 = *(v0 + 1256);
  v4 = *(v0 + 1000);
  v5 = *(v0 + 992);
  *(v0 + 952) = *(v0 + 1440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy9MomentsUI11CloudDeviceVSgs5NeverOGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AnyPublisher<CloudDevice?, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy9MomentsUI11CloudDeviceVSgs5NeverOGMd);
  Publisher.removeDuplicates(by:)();

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<AnyPublisher<CloudDevice?, Never>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy9MomentsUI11CloudDeviceVSgs5NeverOGGMd);

  v7 = Publisher<>.sink(receiveValue:)();

  (*(v2 + 8))(v1, v3);
  *(v5 + v98) = v7;

  v8 = *(v0 + 992);
  v9 = OBJC_IVAR____TtC9MomentsUI12CloudManager_newlyOnboardedDevicesAssign;
  *(v0 + 1448) = OBJC_IVAR____TtC9MomentsUI12CloudManager_newlyOnboardedDevicesAssign;
  if (*(v8 + v9))
  {
    v10 = OBJC_IVAR____TtC9MomentsUI12CloudManager_dbManagerAssign;
    *(v0 + 1480) = OBJC_IVAR____TtC9MomentsUI12CloudManager_dbManagerAssign;
    if (*(v8 + v10))
    {
      v11 = OBJC_IVAR____TtC9MomentsUI12CloudManager_pendingDBChangesAssign;
      *(v0 + 1552) = OBJC_IVAR____TtC9MomentsUI12CloudManager_pendingDBChangesAssign;
      if (*(v8 + v11))
      {
        v12 = OBJC_IVAR____TtC9MomentsUI12CloudManager_latestLocalSnapshotSequenceAssign;
        *(v0 + 1648) = OBJC_IVAR____TtC9MomentsUI12CloudManager_latestLocalSnapshotSequenceAssign;
        if (*(v8 + v12))
        {
          v13 = OBJC_IVAR____TtC9MomentsUI12CloudManager_healthDataAvailableSubscription;
          swift_beginAccess();
          outlined init with copy of DateInterval?(v8 + v13, v0 + 240, &_s7Combine11Cancellable_pSgMd);
          v14 = *(v0 + 264);
          outlined destroy of UTType?(v0 + 240, &_s7Combine11Cancellable_pSgMd);
          if (!v14)
          {
            v99 = *(v0 + 1080);
            v96 = *(v0 + 1064);
            v97 = *(v0 + 1072);
            v90 = *(v0 + 1056);
            v91 = *(v0 + 1040);
            v15 = *(v0 + 1032);
            v92 = *(v0 + 1024);
            v93 = *(v0 + 1016);
            v94 = *(v0 + 1048);
            v16 = *(v0 + 1008);
            v95 = *(v0 + 1000);
            v17 = [objc_opt_self() defaultCenter];
            NSNotificationCenter.publisher(for:object:)();

            static NSRunLoop.SchedulerTimeType.Stride.milliseconds(_:)();
            v18 = [objc_opt_self() mainRunLoop];
            *(v0 + 888) = v18;
            v19 = type metadata accessor for NSRunLoop.SchedulerOptions();
            (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
            type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSRunLoop);
            _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher, MEMORY[0x277CC9DB0]);
            lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue(&lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop, &lazy cache variable for type metadata for NSRunLoop);
            Publisher.debounce<A>(for:scheduler:options:)();
            outlined destroy of UTType?(v16, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

            (*(v92 + 8))(v15, v93);
            (*(v94 + 8))(v90, v91);
            v20 = swift_allocObject();
            swift_weakInit();
            v21 = swift_allocObject();
            *(v21 + 16) = v20;
            *(v21 + 24) = v95;
            lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.Debounce<NSNotificationCenter.Publisher, NSRunLoop> and conformance Publishers.Debounce<A, B>, &_s7Combine10PublishersO8DebounceVy_So20NSNotificationCenterC10FoundationE9PublisherVSo9NSRunLoopCGMd);
            v22 = Publisher<>.sink(receiveValue:)();

            (*(v97 + 8))(v99, v96);
            v23 = type metadata accessor for AnyCancellable();
            v24 = MEMORY[0x277CBCDA0];
            *(v0 + 224) = v23;
            *(v0 + 232) = v24;
            *(v0 + 200) = v22;
            swift_beginAccess();
            outlined assign with take of AttributedString?(v0 + 200, v8 + v13, &_s7Combine11Cancellable_pSgMd);
            swift_endAccess();
          }

          *(*(v0 + 992) + *(v0 + 1408)) = 1;
          swift_getKeyPath();
          swift_getKeyPath();
          *(v0 + 1728) = 0;

          static Published.subscript.setter();
          static CloudLog.LogEndInfo(_:)("initializeBasicSyncEngine()", 27, 2, *(v0 + 1000), &protocol witness table for CloudManager);

          v25 = *(v0 + 8);

          return v25();
        }

        if (one-time initialization token for Log != -1)
        {
          swift_once();
        }

        v75 = *(v0 + 1352);
        v76 = *(v0 + 1336);
        v77 = *(v0 + 1328);
        v78 = __swift_project_value_buffer(v77, static CloudManager.Log);
        swift_beginAccess();
        (*(v76 + 16))(v75, v78, v77);
        v79 = Logger.logObject.getter();
        v80 = static os_log_type_t.info.getter();
        v81 = os_log_type_enabled(v79, v80);
        v82 = *(v0 + 1352);
        v83 = *(v0 + 1336);
        v84 = *(v0 + 1328);
        if (v81)
        {
          v85 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          v100[0] = v86;
          *v85 = 136446466;
          swift_beginAccess();
          v87 = StaticString.description.getter();
          v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v88, v100);

          *(v85 + 4) = v89;
          *(v85 + 12) = 2082;
          *(v85 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000002165856B0, v100);
          _os_log_impl(&dword_21607C000, v79, v80, "%{public}s.%{public}s Registering latestLocalSnapshotSequenceAssign...", v85, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x21CE94770](v86, -1, -1);
          MEMORY[0x21CE94770](v85, -1, -1);
        }

        (*(v83 + 8))(v82, v84);
        type metadata accessor for MainActor();
        *(v0 + 1656) = static MainActor.shared.getter();
        v42 = dispatch thunk of Actor.unownedExecutor.getter();
        v44 = CloudManager.initializeBasicSyncEngine();
      }

      else
      {
        if (one-time initialization token for Log != -1)
        {
          swift_once();
        }

        v60 = *(v0 + 1360);
        v61 = *(v0 + 1336);
        v62 = *(v0 + 1328);
        v63 = __swift_project_value_buffer(v62, static CloudManager.Log);
        swift_beginAccess();
        (*(v61 + 16))(v60, v63, v62);
        v64 = Logger.logObject.getter();
        v65 = static os_log_type_t.info.getter();
        v66 = os_log_type_enabled(v64, v65);
        v67 = *(v0 + 1360);
        v68 = *(v0 + 1336);
        v69 = *(v0 + 1328);
        if (v66)
        {
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          v100[0] = v71;
          *v70 = 136446466;
          swift_beginAccess();
          v72 = StaticString.description.getter();
          v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v73, v100);

          *(v70 + 4) = v74;
          *(v70 + 12) = 2082;
          *(v70 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000002165856B0, v100);
          _os_log_impl(&dword_21607C000, v64, v65, "%{public}s.%{public}s Registering pendingDBChangesAssign...", v70, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x21CE94770](v71, -1, -1);
          MEMORY[0x21CE94770](v70, -1, -1);
        }

        (*(v68 + 8))(v67, v69);
        type metadata accessor for MainActor();
        *(v0 + 1560) = static MainActor.shared.getter();
        v42 = dispatch thunk of Actor.unownedExecutor.getter();
        v44 = CloudManager.initializeBasicSyncEngine();
      }
    }

    else
    {
      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v45 = *(v0 + 1368);
      v46 = *(v0 + 1336);
      v47 = *(v0 + 1328);
      v48 = __swift_project_value_buffer(v47, static CloudManager.Log);
      swift_beginAccess();
      (*(v46 + 16))(v45, v48, v47);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.info.getter();
      v51 = os_log_type_enabled(v49, v50);
      v52 = *(v0 + 1368);
      v53 = *(v0 + 1336);
      v54 = *(v0 + 1328);
      if (v51)
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v100[0] = v56;
        *v55 = 136446466;
        swift_beginAccess();
        v57 = StaticString.description.getter();
        v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v58, v100);

        *(v55 + 4) = v59;
        *(v55 + 12) = 2082;
        *(v55 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000002165856B0, v100);
        _os_log_impl(&dword_21607C000, v49, v50, "%{public}s.%{public}s Registering dbManagerAssign...", v55, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v56, -1, -1);
        MEMORY[0x21CE94770](v55, -1, -1);
      }

      (*(v53 + 8))(v52, v54);
      type metadata accessor for MainActor();
      *(v0 + 1488) = static MainActor.shared.getter();
      v42 = dispatch thunk of Actor.unownedExecutor.getter();
      v44 = CloudManager.initializeBasicSyncEngine();
    }
  }

  else
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v27 = *(v0 + 1376);
    v28 = *(v0 + 1336);
    v29 = *(v0 + 1328);
    v30 = __swift_project_value_buffer(v29, static CloudManager.Log);
    swift_beginAccess();
    (*(v28 + 16))(v27, v30, v29);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();
    v33 = os_log_type_enabled(v31, v32);
    v34 = *(v0 + 1376);
    v35 = *(v0 + 1336);
    v36 = *(v0 + 1328);
    if (v33)
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v100[0] = v38;
      *v37 = 136446466;
      swift_beginAccess();
      v39 = StaticString.description.getter();
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, v100);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2082;
      *(v37 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000002165856B0, v100);
      _os_log_impl(&dword_21607C000, v31, v32, "%{public}s.%{public}s Registering newlyOnboardedDevicesAssign...", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v38, -1, -1);
      MEMORY[0x21CE94770](v37, -1, -1);
    }

    (*(v35 + 8))(v34, v36);
    type metadata accessor for MainActor();
    *(v0 + 1456) = static MainActor.shared.getter();
    v42 = dispatch thunk of Actor.unownedExecutor.getter();
    v44 = CloudManager.initializeBasicSyncEngine();
  }

  return MEMORY[0x2822009F8](v44, v42, v43);
}

{
  v1 = *(v0 + 992);

  *(v0 + 1464) = CloudManager.devicesDB.getter();

  return MEMORY[0x2822009F8](CloudManager.initializeBasicSyncEngine(), v1, 0);
}

{
  v82 = v0;
  v81[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1464);
  if (v1)
  {
    v2 = CloudManager.initializeBasicSyncEngine();
    v3 = 0;
LABEL_27:

    return MEMORY[0x2822009F8](v2, v1, v3);
  }

  v4 = *(v0 + 992);
  v5 = OBJC_IVAR____TtC9MomentsUI12CloudManager_dbManagerAssign;
  *(v0 + 1480) = OBJC_IVAR____TtC9MomentsUI12CloudManager_dbManagerAssign;
  if (!*(v4 + v5))
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 1368);
    v23 = *(v0 + 1336);
    v24 = *(v0 + 1328);
    v25 = __swift_project_value_buffer(v24, static CloudManager.Log);
    swift_beginAccess();
    (*(v23 + 16))(v22, v25, v24);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();
    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v0 + 1368);
    v30 = *(v0 + 1336);
    v31 = *(v0 + 1328);
    if (v28)
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v81[0] = v33;
      *v32 = 136446466;
      swift_beginAccess();
      v34 = StaticString.description.getter();
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, v81);

      *(v32 + 4) = v36;
      *(v32 + 12) = 2082;
      *(v32 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000002165856B0, v81);
      _os_log_impl(&dword_21607C000, v26, v27, "%{public}s.%{public}s Registering dbManagerAssign...", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v33, -1, -1);
      MEMORY[0x21CE94770](v32, -1, -1);
    }

    (*(v30 + 8))(v29, v31);
    type metadata accessor for MainActor();
    *(v0 + 1488) = static MainActor.shared.getter();
    v37 = dispatch thunk of Actor.unownedExecutor.getter();
    v39 = CloudManager.initializeBasicSyncEngine();
    goto LABEL_26;
  }

  v6 = OBJC_IVAR____TtC9MomentsUI12CloudManager_pendingDBChangesAssign;
  *(v0 + 1552) = OBJC_IVAR____TtC9MomentsUI12CloudManager_pendingDBChangesAssign;
  if (!*(v4 + v6))
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v40 = *(v0 + 1360);
    v41 = *(v0 + 1336);
    v42 = *(v0 + 1328);
    v43 = __swift_project_value_buffer(v42, static CloudManager.Log);
    swift_beginAccess();
    (*(v41 + 16))(v40, v43, v42);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.info.getter();
    v46 = os_log_type_enabled(v44, v45);
    v47 = *(v0 + 1360);
    v48 = *(v0 + 1336);
    v49 = *(v0 + 1328);
    if (v46)
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v81[0] = v51;
      *v50 = 136446466;
      swift_beginAccess();
      v52 = StaticString.description.getter();
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, v81);

      *(v50 + 4) = v54;
      *(v50 + 12) = 2082;
      *(v50 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000002165856B0, v81);
      _os_log_impl(&dword_21607C000, v44, v45, "%{public}s.%{public}s Registering pendingDBChangesAssign...", v50, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v51, -1, -1);
      MEMORY[0x21CE94770](v50, -1, -1);
    }

    (*(v48 + 8))(v47, v49);
    type metadata accessor for MainActor();
    *(v0 + 1560) = static MainActor.shared.getter();
    v37 = dispatch thunk of Actor.unownedExecutor.getter();
    v39 = CloudManager.initializeBasicSyncEngine();
    goto LABEL_26;
  }

  v7 = OBJC_IVAR____TtC9MomentsUI12CloudManager_latestLocalSnapshotSequenceAssign;
  *(v0 + 1648) = OBJC_IVAR____TtC9MomentsUI12CloudManager_latestLocalSnapshotSequenceAssign;
  if (!*(v4 + v7))
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v55 = *(v0 + 1352);
    v56 = *(v0 + 1336);
    v57 = *(v0 + 1328);
    v58 = __swift_project_value_buffer(v57, static CloudManager.Log);
    swift_beginAccess();
    (*(v56 + 16))(v55, v58, v57);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.info.getter();
    v61 = os_log_type_enabled(v59, v60);
    v62 = *(v0 + 1352);
    v63 = *(v0 + 1336);
    v64 = *(v0 + 1328);
    if (v61)
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v81[0] = v66;
      *v65 = 136446466;
      swift_beginAccess();
      v67 = StaticString.description.getter();
      v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v68, v81);

      *(v65 + 4) = v69;
      *(v65 + 12) = 2082;
      *(v65 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000002165856B0, v81);
      _os_log_impl(&dword_21607C000, v59, v60, "%{public}s.%{public}s Registering latestLocalSnapshotSequenceAssign...", v65, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v66, -1, -1);
      MEMORY[0x21CE94770](v65, -1, -1);
    }

    (*(v63 + 8))(v62, v64);
    type metadata accessor for MainActor();
    *(v0 + 1656) = static MainActor.shared.getter();
    v37 = dispatch thunk of Actor.unownedExecutor.getter();
    v39 = CloudManager.initializeBasicSyncEngine();
LABEL_26:
    v70 = v37;
    v71 = v38;
    v2 = v39;
    v1 = v70;
    v3 = v71;
    goto LABEL_27;
  }

  v8 = OBJC_IVAR____TtC9MomentsUI12CloudManager_healthDataAvailableSubscription;
  swift_beginAccess();
  outlined init with copy of DateInterval?(v4 + v8, v0 + 240, &_s7Combine11Cancellable_pSgMd);
  v9 = *(v0 + 264);
  outlined destroy of UTType?(v0 + 240, &_s7Combine11Cancellable_pSgMd);
  if (!v9)
  {
    v80 = *(v0 + 1080);
    v78 = *(v0 + 1064);
    v79 = *(v0 + 1072);
    v72 = *(v0 + 1056);
    v73 = *(v0 + 1040);
    v10 = *(v0 + 1032);
    v74 = *(v0 + 1024);
    v75 = *(v0 + 1016);
    v76 = *(v0 + 1048);
    v11 = *(v0 + 1008);
    v77 = *(v0 + 1000);
    v12 = [objc_opt_self() defaultCenter];
    NSNotificationCenter.publisher(for:object:)();

    static NSRunLoop.SchedulerTimeType.Stride.milliseconds(_:)();
    v13 = [objc_opt_self() mainRunLoop];
    *(v0 + 888) = v13;
    v14 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSRunLoop);
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher, MEMORY[0x277CC9DB0]);
    lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue(&lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop, &lazy cache variable for type metadata for NSRunLoop);
    Publisher.debounce<A>(for:scheduler:options:)();
    outlined destroy of UTType?(v11, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

    (*(v74 + 8))(v10, v75);
    (*(v76 + 8))(v72, v73);
    v15 = swift_allocObject();
    swift_weakInit();
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 24) = v77;
    lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.Debounce<NSNotificationCenter.Publisher, NSRunLoop> and conformance Publishers.Debounce<A, B>, &_s7Combine10PublishersO8DebounceVy_So20NSNotificationCenterC10FoundationE9PublisherVSo9NSRunLoopCGMd);
    v17 = Publisher<>.sink(receiveValue:)();

    (*(v79 + 8))(v80, v78);
    v18 = type metadata accessor for AnyCancellable();
    v19 = MEMORY[0x277CBCDA0];
    *(v0 + 224) = v18;
    *(v0 + 232) = v19;
    *(v0 + 200) = v17;
    swift_beginAccess();
    outlined assign with take of AttributedString?(v0 + 200, v4 + v8, &_s7Combine11Cancellable_pSgMd);
    swift_endAccess();
  }

  *(*(v0 + 992) + *(v0 + 1408)) = 1;
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 1728) = 0;

  static Published.subscript.setter();
  static CloudLog.LogEndInfo(_:)("initializeBasicSyncEngine()", 27, 2, *(v0 + 1000), &protocol witness table for CloudManager);

  v20 = *(v0 + 8);

  return v20();
}

{
  v1 = v0[124];
  v0[115] = *(v0[183] + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_newlyOnboardedDevicesSubject);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySay9MomentsUI11CloudDeviceVGs5NeverOGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type CurrentValueSubject<[CloudDevice], Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCySay9MomentsUI11CloudDeviceVGs5NeverOGMd);
  v0[184] = Publisher.eraseToAnyPublisher()();

  return MEMORY[0x2822009F8](CloudManager.initializeBasicSyncEngine(), v1, 0);
}

{
  v85 = v0;
  v84[1] = *MEMORY[0x277D85DE8];
  v82 = *(v0 + 1448);
  v1 = *(v0 + 1248);
  v2 = *(v0 + 1240);
  v3 = *(v0 + 1232);
  v4 = *(v0 + 1000);
  v5 = *(v0 + 992);
  *(v0 + 928) = *(v0 + 1472);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySay9MomentsUI11CloudDeviceVGs5NeverOGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AnyPublisher<[CloudDevice], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySay9MomentsUI11CloudDeviceVGs5NeverOGMd);
  lazy protocol witness table accessor for type [CloudDevice] and conformance <A> [A]();
  Publisher<>.removeDuplicates()();

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<AnyPublisher<[CloudDevice], Never>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVySay9MomentsUI11CloudDeviceVGs5NeverOGGMd);

  v7 = Publisher<>.sink(receiveValue:)();

  (*(v2 + 8))(v1, v3);
  *(v5 + v82) = v7;

  v8 = *(v0 + 992);
  v9 = OBJC_IVAR____TtC9MomentsUI12CloudManager_dbManagerAssign;
  *(v0 + 1480) = OBJC_IVAR____TtC9MomentsUI12CloudManager_dbManagerAssign;
  if (*(v8 + v9))
  {
    v10 = OBJC_IVAR____TtC9MomentsUI12CloudManager_pendingDBChangesAssign;
    *(v0 + 1552) = OBJC_IVAR____TtC9MomentsUI12CloudManager_pendingDBChangesAssign;
    if (*(v8 + v10))
    {
      v11 = OBJC_IVAR____TtC9MomentsUI12CloudManager_latestLocalSnapshotSequenceAssign;
      *(v0 + 1648) = OBJC_IVAR____TtC9MomentsUI12CloudManager_latestLocalSnapshotSequenceAssign;
      if (*(v8 + v11))
      {
        v12 = OBJC_IVAR____TtC9MomentsUI12CloudManager_healthDataAvailableSubscription;
        swift_beginAccess();
        outlined init with copy of DateInterval?(v8 + v12, v0 + 240, &_s7Combine11Cancellable_pSgMd);
        v13 = *(v0 + 264);
        outlined destroy of UTType?(v0 + 240, &_s7Combine11Cancellable_pSgMd);
        if (!v13)
        {
          v83 = *(v0 + 1080);
          v80 = *(v0 + 1064);
          v81 = *(v0 + 1072);
          v74 = *(v0 + 1056);
          v75 = *(v0 + 1040);
          v14 = *(v0 + 1032);
          v76 = *(v0 + 1024);
          v77 = *(v0 + 1016);
          v78 = *(v0 + 1048);
          v15 = *(v0 + 1008);
          v79 = *(v0 + 1000);
          v16 = [objc_opt_self() defaultCenter];
          NSNotificationCenter.publisher(for:object:)();

          static NSRunLoop.SchedulerTimeType.Stride.milliseconds(_:)();
          v17 = [objc_opt_self() mainRunLoop];
          *(v0 + 888) = v17;
          v18 = type metadata accessor for NSRunLoop.SchedulerOptions();
          (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
          type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSRunLoop);
          _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher, MEMORY[0x277CC9DB0]);
          lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue(&lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop, &lazy cache variable for type metadata for NSRunLoop);
          Publisher.debounce<A>(for:scheduler:options:)();
          outlined destroy of UTType?(v15, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

          (*(v76 + 8))(v14, v77);
          (*(v78 + 8))(v74, v75);
          v19 = swift_allocObject();
          swift_weakInit();
          v20 = swift_allocObject();
          *(v20 + 16) = v19;
          *(v20 + 24) = v79;
          lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.Debounce<NSNotificationCenter.Publisher, NSRunLoop> and conformance Publishers.Debounce<A, B>, &_s7Combine10PublishersO8DebounceVy_So20NSNotificationCenterC10FoundationE9PublisherVSo9NSRunLoopCGMd);
          v21 = Publisher<>.sink(receiveValue:)();

          (*(v81 + 8))(v83, v80);
          v22 = type metadata accessor for AnyCancellable();
          v23 = MEMORY[0x277CBCDA0];
          *(v0 + 224) = v22;
          *(v0 + 232) = v23;
          *(v0 + 200) = v21;
          swift_beginAccess();
          outlined assign with take of AttributedString?(v0 + 200, v8 + v12, &_s7Combine11Cancellable_pSgMd);
          swift_endAccess();
        }

        *(*(v0 + 992) + *(v0 + 1408)) = 1;
        swift_getKeyPath();
        swift_getKeyPath();
        *(v0 + 1728) = 0;

        static Published.subscript.setter();
        static CloudLog.LogEndInfo(_:)("initializeBasicSyncEngine()", 27, 2, *(v0 + 1000), &protocol witness table for CloudManager);

        v24 = *(v0 + 8);

        return v24();
      }

      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v59 = *(v0 + 1352);
      v60 = *(v0 + 1336);
      v61 = *(v0 + 1328);
      v62 = __swift_project_value_buffer(v61, static CloudManager.Log);
      swift_beginAccess();
      (*(v60 + 16))(v59, v62, v61);
      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.info.getter();
      v65 = os_log_type_enabled(v63, v64);
      v66 = *(v0 + 1352);
      v67 = *(v0 + 1336);
      v68 = *(v0 + 1328);
      if (v65)
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v84[0] = v70;
        *v69 = 136446466;
        swift_beginAccess();
        v71 = StaticString.description.getter();
        v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v72, v84);

        *(v69 + 4) = v73;
        *(v69 + 12) = 2082;
        *(v69 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000002165856B0, v84);
        _os_log_impl(&dword_21607C000, v63, v64, "%{public}s.%{public}s Registering latestLocalSnapshotSequenceAssign...", v69, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v70, -1, -1);
        MEMORY[0x21CE94770](v69, -1, -1);
      }

      (*(v67 + 8))(v66, v68);
      type metadata accessor for MainActor();
      *(v0 + 1656) = static MainActor.shared.getter();
      v41 = dispatch thunk of Actor.unownedExecutor.getter();
      v43 = CloudManager.initializeBasicSyncEngine();
    }

    else
    {
      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v44 = *(v0 + 1360);
      v45 = *(v0 + 1336);
      v46 = *(v0 + 1328);
      v47 = __swift_project_value_buffer(v46, static CloudManager.Log);
      swift_beginAccess();
      (*(v45 + 16))(v44, v47, v46);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.info.getter();
      v50 = os_log_type_enabled(v48, v49);
      v51 = *(v0 + 1360);
      v52 = *(v0 + 1336);
      v53 = *(v0 + 1328);
      if (v50)
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v84[0] = v55;
        *v54 = 136446466;
        swift_beginAccess();
        v56 = StaticString.description.getter();
        v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v57, v84);

        *(v54 + 4) = v58;
        *(v54 + 12) = 2082;
        *(v54 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000002165856B0, v84);
        _os_log_impl(&dword_21607C000, v48, v49, "%{public}s.%{public}s Registering pendingDBChangesAssign...", v54, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v55, -1, -1);
        MEMORY[0x21CE94770](v54, -1, -1);
      }

      (*(v52 + 8))(v51, v53);
      type metadata accessor for MainActor();
      *(v0 + 1560) = static MainActor.shared.getter();
      v41 = dispatch thunk of Actor.unownedExecutor.getter();
      v43 = CloudManager.initializeBasicSyncEngine();
    }
  }

  else
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v26 = *(v0 + 1368);
    v27 = *(v0 + 1336);
    v28 = *(v0 + 1328);
    v29 = __swift_project_value_buffer(v28, static CloudManager.Log);
    swift_beginAccess();
    (*(v27 + 16))(v26, v29, v28);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();
    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 1368);
    v34 = *(v0 + 1336);
    v35 = *(v0 + 1328);
    if (v32)
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v84[0] = v37;
      *v36 = 136446466;
      swift_beginAccess();
      v38 = StaticString.description.getter();
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, v84);

      *(v36 + 4) = v40;
      *(v36 + 12) = 2082;
      *(v36 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000002165856B0, v84);
      _os_log_impl(&dword_21607C000, v30, v31, "%{public}s.%{public}s Registering dbManagerAssign...", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v37, -1, -1);
      MEMORY[0x21CE94770](v36, -1, -1);
    }

    (*(v34 + 8))(v33, v35);
    type metadata accessor for MainActor();
    *(v0 + 1488) = static MainActor.shared.getter();
    v41 = dispatch thunk of Actor.unownedExecutor.getter();
    v43 = CloudManager.initializeBasicSyncEngine();
  }

  return MEMORY[0x2822009F8](v43, v41, v42);
}

{
  v1 = *(v0 + 992);

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(v0 + 1496) = *(v0 + 816);

  return MEMORY[0x2822009F8](CloudManager.initializeBasicSyncEngine(), v1, 0);
}

{
  v71 = v0;
  v70[1] = *MEMORY[0x277D85DE8];
  if (*(v0 + 1496))
  {
    v1 = *(v0 + 1504);
    ObjectType = swift_getObjectType();
    v3 = (*(v1 + 40))(ObjectType, v1);
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  *(v0 + 1512) = v3;
  v4 = *(v3 + 16);
  *(v0 + 1520) = v4;
  if (v4)
  {
    v5 = 0;
    while (1)
    {
      *(v0 + 1528) = v5;
      outlined init with copy of DBObject(*(v0 + 1512) + 40 * v5 + 32, v0 + 160);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI10CloudSubDB_pMd);
      type metadata accessor for CloudSuggestionsDB();
      if (swift_dynamicCast())
      {
        break;
      }

      v5 = *(v0 + 1528) + 1;
      if (v5 == *(v0 + 1520))
      {
        goto LABEL_8;
      }
    }

    v23 = *(v0 + 984);
    *(v0 + 1536) = v23;
    v24 = CloudManager.initializeBasicSyncEngine();
    v25 = 0;
  }

  else
  {
LABEL_8:

    v6 = *(v0 + 992);
    v7 = OBJC_IVAR____TtC9MomentsUI12CloudManager_pendingDBChangesAssign;
    *(v0 + 1552) = OBJC_IVAR____TtC9MomentsUI12CloudManager_pendingDBChangesAssign;
    if (*(v6 + v7))
    {
      v8 = OBJC_IVAR____TtC9MomentsUI12CloudManager_latestLocalSnapshotSequenceAssign;
      *(v0 + 1648) = OBJC_IVAR____TtC9MomentsUI12CloudManager_latestLocalSnapshotSequenceAssign;
      if (*(v6 + v8))
      {
        v9 = OBJC_IVAR____TtC9MomentsUI12CloudManager_healthDataAvailableSubscription;
        swift_beginAccess();
        outlined init with copy of DateInterval?(v6 + v9, v0 + 240, &_s7Combine11Cancellable_pSgMd);
        v10 = *(v0 + 264);
        outlined destroy of UTType?(v0 + 240, &_s7Combine11Cancellable_pSgMd);
        if (!v10)
        {
          v69 = *(v0 + 1080);
          v67 = *(v0 + 1064);
          v68 = *(v0 + 1072);
          v61 = *(v0 + 1056);
          v62 = *(v0 + 1040);
          v11 = *(v0 + 1032);
          v63 = *(v0 + 1024);
          v64 = *(v0 + 1016);
          v65 = *(v0 + 1048);
          v12 = *(v0 + 1008);
          v66 = *(v0 + 1000);
          v13 = [objc_opt_self() defaultCenter];
          NSNotificationCenter.publisher(for:object:)();

          static NSRunLoop.SchedulerTimeType.Stride.milliseconds(_:)();
          v14 = [objc_opt_self() mainRunLoop];
          *(v0 + 888) = v14;
          v15 = type metadata accessor for NSRunLoop.SchedulerOptions();
          (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
          type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSRunLoop);
          _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher, MEMORY[0x277CC9DB0]);
          lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue(&lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop, &lazy cache variable for type metadata for NSRunLoop);
          Publisher.debounce<A>(for:scheduler:options:)();
          outlined destroy of UTType?(v12, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

          (*(v63 + 8))(v11, v64);
          (*(v65 + 8))(v61, v62);
          v16 = swift_allocObject();
          swift_weakInit();
          v17 = swift_allocObject();
          *(v17 + 16) = v16;
          *(v17 + 24) = v66;
          lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.Debounce<NSNotificationCenter.Publisher, NSRunLoop> and conformance Publishers.Debounce<A, B>, &_s7Combine10PublishersO8DebounceVy_So20NSNotificationCenterC10FoundationE9PublisherVSo9NSRunLoopCGMd);
          v18 = Publisher<>.sink(receiveValue:)();

          (*(v68 + 8))(v69, v67);
          v19 = type metadata accessor for AnyCancellable();
          v20 = MEMORY[0x277CBCDA0];
          *(v0 + 224) = v19;
          *(v0 + 232) = v20;
          *(v0 + 200) = v18;
          swift_beginAccess();
          outlined assign with take of AttributedString?(v0 + 200, v6 + v9, &_s7Combine11Cancellable_pSgMd);
          swift_endAccess();
        }

        *(*(v0 + 992) + *(v0 + 1408)) = 1;
        swift_getKeyPath();
        swift_getKeyPath();
        *(v0 + 1728) = 0;

        static Published.subscript.setter();
        static CloudLog.LogEndInfo(_:)("initializeBasicSyncEngine()", 27, 2, *(v0 + 1000), &protocol witness table for CloudManager);

        v21 = *(v0 + 8);

        return v21();
      }

      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v44 = *(v0 + 1352);
      v45 = *(v0 + 1336);
      v46 = *(v0 + 1328);
      v47 = __swift_project_value_buffer(v46, static CloudManager.Log);
      swift_beginAccess();
      (*(v45 + 16))(v44, v47, v46);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.info.getter();
      v50 = os_log_type_enabled(v48, v49);
      v51 = *(v0 + 1352);
      v52 = *(v0 + 1336);
      v53 = *(v0 + 1328);
      if (v50)
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v70[0] = v55;
        *v54 = 136446466;
        swift_beginAccess();
        v56 = StaticString.description.getter();
        v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v57, v70);

        *(v54 + 4) = v58;
        *(v54 + 12) = 2082;
        *(v54 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000002165856B0, v70);
        _os_log_impl(&dword_21607C000, v48, v49, "%{public}s.%{public}s Registering latestLocalSnapshotSequenceAssign...", v54, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v55, -1, -1);
        MEMORY[0x21CE94770](v54, -1, -1);
      }

      (*(v52 + 8))(v51, v53);
      type metadata accessor for MainActor();
      *(v0 + 1656) = static MainActor.shared.getter();
      v41 = dispatch thunk of Actor.unownedExecutor.getter();
      v43 = CloudManager.initializeBasicSyncEngine();
    }

    else
    {
      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v26 = *(v0 + 1360);
      v27 = *(v0 + 1336);
      v28 = *(v0 + 1328);
      v29 = __swift_project_value_buffer(v28, static CloudManager.Log);
      swift_beginAccess();
      (*(v27 + 16))(v26, v29, v28);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.info.getter();
      v32 = os_log_type_enabled(v30, v31);
      v33 = *(v0 + 1360);
      v34 = *(v0 + 1336);
      v35 = *(v0 + 1328);
      if (v32)
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v70[0] = v37;
        *v36 = 136446466;
        swift_beginAccess();
        v38 = StaticString.description.getter();
        v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, v70);

        *(v36 + 4) = v40;
        *(v36 + 12) = 2082;
        *(v36 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000002165856B0, v70);
        _os_log_impl(&dword_21607C000, v30, v31, "%{public}s.%{public}s Registering pendingDBChangesAssign...", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v37, -1, -1);
        MEMORY[0x21CE94770](v36, -1, -1);
      }

      (*(v34 + 8))(v33, v35);
      type metadata accessor for MainActor();
      *(v0 + 1560) = static MainActor.shared.getter();
      v41 = dispatch thunk of Actor.unownedExecutor.getter();
      v43 = CloudManager.initializeBasicSyncEngine();
    }

    v59 = v41;
    v60 = v42;
    v24 = v43;
    v23 = v59;
    v25 = v60;
  }

  return MEMORY[0x2822009F8](v24, v23, v25);
}

{
  v1 = v0[150];
  v2 = v0[149];
  v3 = v0[148];
  v4 = v0[124];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9MomentsUI9DBManagerCSgGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy9MomentsUI9DBManagerCSg_GMd);
  v0[193] = Publisher.eraseToAnyPublisher()();
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](CloudManager.initializeBasicSyncEngine(), v4, 0);
}

{
  v75 = v0;
  v74[1] = *MEMORY[0x277D85DE8];
  v72 = *(v0 + 1480);
  v1 = *(v0 + 1224);
  v2 = *(v0 + 1216);
  v3 = *(v0 + 1208);
  v4 = *(v0 + 1000);
  v5 = *(v0 + 992);
  *(v0 + 904) = *(v0 + 1544);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy9MomentsUI9DBManagerCSgs5NeverOGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AnyPublisher<DBManager?, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy9MomentsUI9DBManagerCSgs5NeverOGMd);
  Publisher.removeDuplicates(by:)();

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<AnyPublisher<DBManager?, Never>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy9MomentsUI9DBManagerCSgs5NeverOGGMd);

  v7 = Publisher<>.sink(receiveValue:)();

  (*(v2 + 8))(v1, v3);
  *(v5 + v72) = v7;

  v8 = *(v0 + 1528) + 1;
  if (v8 == *(v0 + 1520))
  {
LABEL_4:

    v9 = *(v0 + 992);
    v10 = OBJC_IVAR____TtC9MomentsUI12CloudManager_pendingDBChangesAssign;
    *(v0 + 1552) = OBJC_IVAR____TtC9MomentsUI12CloudManager_pendingDBChangesAssign;
    if (*(v9 + v10))
    {
      v11 = OBJC_IVAR____TtC9MomentsUI12CloudManager_latestLocalSnapshotSequenceAssign;
      *(v0 + 1648) = OBJC_IVAR____TtC9MomentsUI12CloudManager_latestLocalSnapshotSequenceAssign;
      if (*(v9 + v11))
      {
        v12 = OBJC_IVAR____TtC9MomentsUI12CloudManager_healthDataAvailableSubscription;
        swift_beginAccess();
        outlined init with copy of DateInterval?(v9 + v12, v0 + 240, &_s7Combine11Cancellable_pSgMd);
        v13 = *(v0 + 264);
        outlined destroy of UTType?(v0 + 240, &_s7Combine11Cancellable_pSgMd);
        if (!v13)
        {
          v73 = *(v0 + 1080);
          v70 = *(v0 + 1064);
          v71 = *(v0 + 1072);
          v64 = *(v0 + 1056);
          v65 = *(v0 + 1040);
          v14 = *(v0 + 1032);
          v66 = *(v0 + 1024);
          v67 = *(v0 + 1016);
          v68 = *(v0 + 1048);
          v15 = *(v0 + 1008);
          v69 = *(v0 + 1000);
          v16 = [objc_opt_self() defaultCenter];
          NSNotificationCenter.publisher(for:object:)();

          static NSRunLoop.SchedulerTimeType.Stride.milliseconds(_:)();
          v17 = [objc_opt_self() mainRunLoop];
          *(v0 + 888) = v17;
          v18 = type metadata accessor for NSRunLoop.SchedulerOptions();
          (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
          type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSRunLoop);
          _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher, MEMORY[0x277CC9DB0]);
          lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue(&lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop, &lazy cache variable for type metadata for NSRunLoop);
          Publisher.debounce<A>(for:scheduler:options:)();
          outlined destroy of UTType?(v15, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

          (*(v66 + 8))(v14, v67);
          (*(v68 + 8))(v64, v65);
          v19 = swift_allocObject();
          swift_weakInit();
          v20 = swift_allocObject();
          *(v20 + 16) = v19;
          *(v20 + 24) = v69;
          lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.Debounce<NSNotificationCenter.Publisher, NSRunLoop> and conformance Publishers.Debounce<A, B>, &_s7Combine10PublishersO8DebounceVy_So20NSNotificationCenterC10FoundationE9PublisherVSo9NSRunLoopCGMd);
          v21 = Publisher<>.sink(receiveValue:)();

          (*(v71 + 8))(v73, v70);
          v22 = type metadata accessor for AnyCancellable();
          v23 = MEMORY[0x277CBCDA0];
          *(v0 + 224) = v22;
          *(v0 + 232) = v23;
          *(v0 + 200) = v21;
          swift_beginAccess();
          outlined assign with take of AttributedString?(v0 + 200, v9 + v12, &_s7Combine11Cancellable_pSgMd);
          swift_endAccess();
        }

        *(*(v0 + 992) + *(v0 + 1408)) = 1;
        swift_getKeyPath();
        swift_getKeyPath();
        *(v0 + 1728) = 0;

        static Published.subscript.setter();
        static CloudLog.LogEndInfo(_:)("initializeBasicSyncEngine()", 27, 2, *(v0 + 1000), &protocol witness table for CloudManager);

        v24 = *(v0 + 8);

        return v24();
      }

      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v47 = *(v0 + 1352);
      v48 = *(v0 + 1336);
      v49 = *(v0 + 1328);
      v50 = __swift_project_value_buffer(v49, static CloudManager.Log);
      swift_beginAccess();
      (*(v48 + 16))(v47, v50, v49);
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.info.getter();
      v53 = os_log_type_enabled(v51, v52);
      v54 = *(v0 + 1352);
      v55 = *(v0 + 1336);
      v56 = *(v0 + 1328);
      if (v53)
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v74[0] = v58;
        *v57 = 136446466;
        swift_beginAccess();
        v59 = StaticString.description.getter();
        v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, v74);

        *(v57 + 4) = v61;
        *(v57 + 12) = 2082;
        *(v57 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000002165856B0, v74);
        _os_log_impl(&dword_21607C000, v51, v52, "%{public}s.%{public}s Registering latestLocalSnapshotSequenceAssign...", v57, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v58, -1, -1);
        MEMORY[0x21CE94770](v57, -1, -1);
      }

      (*(v55 + 8))(v54, v56);
      type metadata accessor for MainActor();
      *(v0 + 1656) = static MainActor.shared.getter();
      v41 = dispatch thunk of Actor.unownedExecutor.getter();
      v43 = CloudManager.initializeBasicSyncEngine();
    }

    else
    {
      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v26 = *(v0 + 1360);
      v27 = *(v0 + 1336);
      v28 = *(v0 + 1328);
      v29 = __swift_project_value_buffer(v28, static CloudManager.Log);
      swift_beginAccess();
      (*(v27 + 16))(v26, v29, v28);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.info.getter();
      v32 = os_log_type_enabled(v30, v31);
      v33 = *(v0 + 1360);
      v34 = *(v0 + 1336);
      v35 = *(v0 + 1328);
      if (v32)
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v74[0] = v37;
        *v36 = 136446466;
        swift_beginAccess();
        v38 = StaticString.description.getter();
        v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, v74);

        *(v36 + 4) = v40;
        *(v36 + 12) = 2082;
        *(v36 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000002165856B0, v74);
        _os_log_impl(&dword_21607C000, v30, v31, "%{public}s.%{public}s Registering pendingDBChangesAssign...", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v37, -1, -1);
        MEMORY[0x21CE94770](v36, -1, -1);
      }

      (*(v34 + 8))(v33, v35);
      type metadata accessor for MainActor();
      *(v0 + 1560) = static MainActor.shared.getter();
      v41 = dispatch thunk of Actor.unownedExecutor.getter();
      v43 = CloudManager.initializeBasicSyncEngine();
    }

    v62 = v41;
    v63 = v42;
    v45 = v43;
    v44 = v62;
    v46 = v63;
  }

  else
  {
    while (1)
    {
      *(v0 + 1528) = v8;
      outlined init with copy of DBObject(*(v0 + 1512) + 40 * v8 + 32, v0 + 160);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI10CloudSubDB_pMd);
      type metadata accessor for CloudSuggestionsDB();
      if (swift_dynamicCast())
      {
        break;
      }

      v8 = *(v0 + 1528) + 1;
      if (v8 == *(v0 + 1520))
      {
        goto LABEL_4;
      }
    }

    v44 = *(v0 + 984);
    *(v0 + 1536) = v44;
    v45 = CloudManager.initializeBasicSyncEngine();
    v46 = 0;
  }

  return MEMORY[0x2822009F8](v45, v44, v46);
}

{
  v1 = *(v0 + 992);

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(v0 + 1568) = *(v0 + 832);

  return MEMORY[0x2822009F8](CloudManager.initializeBasicSyncEngine(), v1, 0);
}

{
  if (v0[196])
  {
    v1 = v0[197];
    ObjectType = swift_getObjectType();
    v3 = (*(v1 + 40))(ObjectType, v1);
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v0[198] = v3;
  v4 = *(v3 + 16);
  v0[199] = v4;
  if (!v4)
  {
LABEL_16:

    __break(1u);
  }

  v5 = 0;
  while (1)
  {
    v0[202] = v5;
    v0[200] = 0;
    v0[201] = 0;
    outlined init with copy of DBObject(v3 + 40 * v5 + 32, (v0 + 40));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI10CloudSubDB_pMd);
    type metadata accessor for CloudSuggestionsDB();
    if (swift_dynamicCast())
    {
      v8 = v0[121];
      v0[203] = v8;
      v9 = CloudManager.initializeBasicSyncEngine();
      goto LABEL_12;
    }

    type metadata accessor for CloudSyncDB();
    if (swift_dynamicCast())
    {
      break;
    }

    v6 = v0[199];
    v7 = v0[202] + 1;
    __swift_destroy_boxed_opaque_existential_1((v0 + 40));
    if (v7 == v6)
    {

      __break(1u);
      goto LABEL_16;
    }

    v5 = v0[202] + 1;
    v3 = v0[198];
  }

  v8 = v0[120];
  v0[205] = v8;
  v9 = CloudManager.initializeBasicSyncEngine();
LABEL_12:

  return MEMORY[0x2822009F8](v9, v8, 0);
}

{
  v1 = v0[124];
  v0[110] = *(v0[203] + OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB_pendingDBChangesSubject);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySbs5NeverOGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type CurrentValueSubject<Bool, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCySbs5NeverOGMd);
  v0[204] = Publisher.eraseToAnyPublisher()();

  return MEMORY[0x2822009F8](CloudManager.initializeBasicSyncEngine(), v1, 0);
}

{
  v67 = v0;
  v66[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1632);

  v2 = *(v0 + 1600);
  v3 = *(v0 + 1592);
  v4 = *(v0 + 1616) + 1;
  __swift_destroy_boxed_opaque_existential_1(v0 + 320);
  if (v4 != v3)
  {
    while (1)
    {
      v5 = *(v0 + 1616);
      *(v0 + 1616) = v5 + 1;
      *(v0 + 1608) = v1;
      *(v0 + 1600) = v2;
      outlined init with copy of DBObject(*(v0 + 1584) + 40 * v5 + 72, v0 + 320);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI10CloudSubDB_pMd);
      type metadata accessor for CloudSuggestionsDB();
      if (swift_dynamicCast())
      {
        v9 = *(v0 + 968);
        *(v0 + 1624) = v9;
        v50 = CloudManager.initializeBasicSyncEngine();
        goto LABEL_20;
      }

      type metadata accessor for CloudSyncDB();
      if (swift_dynamicCast())
      {
        break;
      }

      v6 = *(v0 + 1592);
      v7 = *(v0 + 1616) + 1;
      __swift_destroy_boxed_opaque_existential_1(v0 + 320);
      if (v7 == v6)
      {
        goto LABEL_5;
      }
    }

    v9 = *(v0 + 960);
    *(v0 + 1640) = v9;
    v50 = CloudManager.initializeBasicSyncEngine();
LABEL_20:
    v8 = v50;
    v10 = 0;
    goto LABEL_21;
  }

LABEL_5:

  if (!v2)
  {
    __break(1u);
    goto LABEL_25;
  }

  *(v0 + 936) = v2;
  if (!v1)
  {
LABEL_25:
    __break(1u);
    return MEMORY[0x2822009F8](v8, v9, v10);
  }

  v64 = *(v0 + 1552);
  v60 = *(v0 + 1136);
  v62 = *(v0 + 1144);
  v11 = *(v0 + 1128);
  v12 = *(v0 + 1120);
  v54 = *(v0 + 1112);
  v56 = *(v0 + 1152);
  v13 = *(v0 + 1000);
  v58 = *(v0 + 992);
  *(v0 + 912) = v1;
  *(swift_allocObject() + 16) = v13;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySbs5NeverOGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AnyPublisher<Bool, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySbs5NeverOGMd);
  Publisher.combineLatest<A, B>(_:_:)();

  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.Map<Publishers.CombineLatest<AnyPublisher<Bool, Never>, AnyPublisher<Bool, Never>>, Bool> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AC0A6LatestVy_AA12AnyPublisherVySbs5NeverOGALGSbGMd);
  Publisher<>.removeDuplicates()();
  (*(v12 + 8))(v11, v54);
  v14 = swift_allocObject();
  *(v14 + 16) = v58;
  *(v14 + 24) = v13;
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<Publishers.Map<Publishers.CombineLatest<AnyPublisher<Bool, Never>, AnyPublisher<Bool, Never>>, Bool>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AC3MapVy_AC0A6LatestVy_AA12AnyPublisherVySbs5NeverOGANGSbGGMd);

  v15 = Publisher<>.sink(receiveValue:)();

  (*(v62 + 8))(v56, v60);
  *(v58 + v64) = v15;

  v16 = *(v0 + 992);
  v17 = OBJC_IVAR____TtC9MomentsUI12CloudManager_latestLocalSnapshotSequenceAssign;
  *(v0 + 1648) = OBJC_IVAR____TtC9MomentsUI12CloudManager_latestLocalSnapshotSequenceAssign;
  if (!*(v16 + v17))
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v32 = *(v0 + 1352);
    v33 = *(v0 + 1336);
    v34 = *(v0 + 1328);
    v35 = __swift_project_value_buffer(v34, static CloudManager.Log);
    swift_beginAccess();
    (*(v33 + 16))(v32, v35, v34);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.info.getter();
    v38 = os_log_type_enabled(v36, v37);
    v39 = *(v0 + 1352);
    v40 = *(v0 + 1336);
    v41 = *(v0 + 1328);
    if (v38)
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v66[0] = v43;
      *v42 = 136446466;
      swift_beginAccess();
      v44 = StaticString.description.getter();
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, v66);

      *(v42 + 4) = v46;
      *(v42 + 12) = 2082;
      *(v42 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000002165856B0, v66);
      _os_log_impl(&dword_21607C000, v36, v37, "%{public}s.%{public}s Registering latestLocalSnapshotSequenceAssign...", v42, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v43, -1, -1);
      MEMORY[0x21CE94770](v42, -1, -1);
    }

    (*(v40 + 8))(v39, v41);
    type metadata accessor for MainActor();
    *(v0 + 1656) = static MainActor.shared.getter();
    v47 = dispatch thunk of Actor.unownedExecutor.getter();
    v49 = v48;
    v8 = CloudManager.initializeBasicSyncEngine();
    v9 = v47;
    v10 = v49;
LABEL_21:

    return MEMORY[0x2822009F8](v8, v9, v10);
  }

  v18 = OBJC_IVAR____TtC9MomentsUI12CloudManager_healthDataAvailableSubscription;
  swift_beginAccess();
  outlined init with copy of DateInterval?(v16 + v18, v0 + 240, &_s7Combine11Cancellable_pSgMd);
  v19 = *(v0 + 264);
  outlined destroy of UTType?(v0 + 240, &_s7Combine11Cancellable_pSgMd);
  if (!v19)
  {
    v65 = *(v0 + 1080);
    v61 = *(v0 + 1064);
    v63 = *(v0 + 1072);
    v51 = *(v0 + 1056);
    v52 = *(v0 + 1040);
    v20 = *(v0 + 1032);
    v53 = *(v0 + 1024);
    v55 = *(v0 + 1016);
    v57 = *(v0 + 1048);
    v21 = *(v0 + 1008);
    v59 = *(v0 + 1000);
    v22 = [objc_opt_self() defaultCenter];
    NSNotificationCenter.publisher(for:object:)();

    static NSRunLoop.SchedulerTimeType.Stride.milliseconds(_:)();
    v23 = [objc_opt_self() mainRunLoop];
    *(v0 + 888) = v23;
    v24 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v24 - 8) + 56))(v21, 1, 1, v24);
    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSRunLoop);
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher, MEMORY[0x277CC9DB0]);
    lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue(&lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop, &lazy cache variable for type metadata for NSRunLoop);
    Publisher.debounce<A>(for:scheduler:options:)();
    outlined destroy of UTType?(v21, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

    (*(v53 + 8))(v20, v55);
    (*(v57 + 8))(v51, v52);
    v25 = swift_allocObject();
    swift_weakInit();
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    *(v26 + 24) = v59;
    lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.Debounce<NSNotificationCenter.Publisher, NSRunLoop> and conformance Publishers.Debounce<A, B>, &_s7Combine10PublishersO8DebounceVy_So20NSNotificationCenterC10FoundationE9PublisherVSo9NSRunLoopCGMd);
    v27 = Publisher<>.sink(receiveValue:)();

    (*(v63 + 8))(v65, v61);
    v28 = type metadata accessor for AnyCancellable();
    v29 = MEMORY[0x277CBCDA0];
    *(v0 + 224) = v28;
    *(v0 + 232) = v29;
    *(v0 + 200) = v27;
    swift_beginAccess();
    outlined assign with take of AttributedString?(v0 + 200, v16 + v18, &_s7Combine11Cancellable_pSgMd);
    swift_endAccess();
  }

  *(*(v0 + 992) + *(v0 + 1408)) = 1;
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 1728) = 0;

  static Published.subscript.setter();
  static CloudLog.LogEndInfo(_:)("initializeBasicSyncEngine()", 27, 2, *(v0 + 1000), &protocol witness table for CloudManager);

  v30 = *(v0 + 8);

  return v30();
}

{
  v1 = *(v0 + 992);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.getter();
  swift_endAccess();

  return MEMORY[0x2822009F8](CloudManager.initializeBasicSyncEngine(), v1, 0);
}

{
  v70 = v0;
  v69[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1176);
  v2 = *(v0 + 1168);
  v3 = *(v0 + 1160);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<Bool>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySb_GMd);
  v4 = Publisher.eraseToAnyPublisher()();

  (*(v2 + 8))(v1, v3);
  v5 = *(v0 + 1608);
  v6 = *(v0 + 1592);
  v7 = *(v0 + 1616) + 1;
  __swift_destroy_boxed_opaque_existential_1(v0 + 320);
  if (v7 != v6)
  {
    while (1)
    {
      v8 = *(v0 + 1616);
      *(v0 + 1616) = v8 + 1;
      *(v0 + 1608) = v5;
      *(v0 + 1600) = v4;
      outlined init with copy of DBObject(*(v0 + 1584) + 40 * v8 + 72, v0 + 320);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI10CloudSubDB_pMd);
      type metadata accessor for CloudSuggestionsDB();
      if (swift_dynamicCast())
      {
        v12 = *(v0 + 968);
        *(v0 + 1624) = v12;
        v53 = CloudManager.initializeBasicSyncEngine();
        goto LABEL_20;
      }

      type metadata accessor for CloudSyncDB();
      if (swift_dynamicCast())
      {
        break;
      }

      v9 = *(v0 + 1592);
      v10 = *(v0 + 1616) + 1;
      __swift_destroy_boxed_opaque_existential_1(v0 + 320);
      if (v10 == v9)
      {
        goto LABEL_5;
      }
    }

    v12 = *(v0 + 960);
    *(v0 + 1640) = v12;
    v53 = CloudManager.initializeBasicSyncEngine();
LABEL_20:
    v11 = v53;
    v13 = 0;
    goto LABEL_21;
  }

LABEL_5:

  if (!v4)
  {
    __break(1u);
    goto LABEL_25;
  }

  *(v0 + 936) = v4;
  if (!v5)
  {
LABEL_25:
    __break(1u);
    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  v67 = *(v0 + 1552);
  v63 = *(v0 + 1136);
  v65 = *(v0 + 1144);
  v14 = *(v0 + 1128);
  v15 = *(v0 + 1120);
  v57 = *(v0 + 1112);
  v59 = *(v0 + 1152);
  v16 = *(v0 + 1000);
  v61 = *(v0 + 992);
  *(v0 + 912) = v5;
  *(swift_allocObject() + 16) = v16;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySbs5NeverOGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AnyPublisher<Bool, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySbs5NeverOGMd);
  Publisher.combineLatest<A, B>(_:_:)();

  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.Map<Publishers.CombineLatest<AnyPublisher<Bool, Never>, AnyPublisher<Bool, Never>>, Bool> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AC0A6LatestVy_AA12AnyPublisherVySbs5NeverOGALGSbGMd);
  Publisher<>.removeDuplicates()();
  (*(v15 + 8))(v14, v57);
  v17 = swift_allocObject();
  *(v17 + 16) = v61;
  *(v17 + 24) = v16;
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<Publishers.Map<Publishers.CombineLatest<AnyPublisher<Bool, Never>, AnyPublisher<Bool, Never>>, Bool>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AC3MapVy_AC0A6LatestVy_AA12AnyPublisherVySbs5NeverOGANGSbGGMd);

  v18 = Publisher<>.sink(receiveValue:)();

  (*(v65 + 8))(v59, v63);
  *(v61 + v67) = v18;

  v19 = *(v0 + 992);
  v20 = OBJC_IVAR____TtC9MomentsUI12CloudManager_latestLocalSnapshotSequenceAssign;
  *(v0 + 1648) = OBJC_IVAR____TtC9MomentsUI12CloudManager_latestLocalSnapshotSequenceAssign;
  if (!*(v19 + v20))
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v35 = *(v0 + 1352);
    v36 = *(v0 + 1336);
    v37 = *(v0 + 1328);
    v38 = __swift_project_value_buffer(v37, static CloudManager.Log);
    swift_beginAccess();
    (*(v36 + 16))(v35, v38, v37);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.info.getter();
    v41 = os_log_type_enabled(v39, v40);
    v42 = *(v0 + 1352);
    v43 = *(v0 + 1336);
    v44 = *(v0 + 1328);
    if (v41)
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v69[0] = v46;
      *v45 = 136446466;
      swift_beginAccess();
      v47 = StaticString.description.getter();
      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, v69);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2082;
      *(v45 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000002165856B0, v69);
      _os_log_impl(&dword_21607C000, v39, v40, "%{public}s.%{public}s Registering latestLocalSnapshotSequenceAssign...", v45, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v46, -1, -1);
      MEMORY[0x21CE94770](v45, -1, -1);
    }

    (*(v43 + 8))(v42, v44);
    type metadata accessor for MainActor();
    *(v0 + 1656) = static MainActor.shared.getter();
    v50 = dispatch thunk of Actor.unownedExecutor.getter();
    v52 = v51;
    v11 = CloudManager.initializeBasicSyncEngine();
    v12 = v50;
    v13 = v52;
LABEL_21:

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  v21 = OBJC_IVAR____TtC9MomentsUI12CloudManager_healthDataAvailableSubscription;
  swift_beginAccess();
  outlined init with copy of DateInterval?(v19 + v21, v0 + 240, &_s7Combine11Cancellable_pSgMd);
  v22 = *(v0 + 264);
  outlined destroy of UTType?(v0 + 240, &_s7Combine11Cancellable_pSgMd);
  if (!v22)
  {
    v68 = *(v0 + 1080);
    v64 = *(v0 + 1064);
    v66 = *(v0 + 1072);
    v54 = *(v0 + 1056);
    v55 = *(v0 + 1040);
    v23 = *(v0 + 1032);
    v56 = *(v0 + 1024);
    v58 = *(v0 + 1016);
    v60 = *(v0 + 1048);
    v24 = *(v0 + 1008);
    v62 = *(v0 + 1000);
    v25 = [objc_opt_self() defaultCenter];
    NSNotificationCenter.publisher(for:object:)();

    static NSRunLoop.SchedulerTimeType.Stride.milliseconds(_:)();
    v26 = [objc_opt_self() mainRunLoop];
    *(v0 + 888) = v26;
    v27 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v27 - 8) + 56))(v24, 1, 1, v27);
    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSRunLoop);
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher, MEMORY[0x277CC9DB0]);
    lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue(&lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop, &lazy cache variable for type metadata for NSRunLoop);
    Publisher.debounce<A>(for:scheduler:options:)();
    outlined destroy of UTType?(v24, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

    (*(v56 + 8))(v23, v58);
    (*(v60 + 8))(v54, v55);
    v28 = swift_allocObject();
    swift_weakInit();
    v29 = swift_allocObject();
    *(v29 + 16) = v28;
    *(v29 + 24) = v62;
    lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.Debounce<NSNotificationCenter.Publisher, NSRunLoop> and conformance Publishers.Debounce<A, B>, &_s7Combine10PublishersO8DebounceVy_So20NSNotificationCenterC10FoundationE9PublisherVSo9NSRunLoopCGMd);
    v30 = Publisher<>.sink(receiveValue:)();

    (*(v66 + 8))(v68, v64);
    v31 = type metadata accessor for AnyCancellable();
    v32 = MEMORY[0x277CBCDA0];
    *(v0 + 224) = v31;
    *(v0 + 232) = v32;
    *(v0 + 200) = v30;
    swift_beginAccess();
    outlined assign with take of AttributedString?(v0 + 200, v19 + v21, &_s7Combine11Cancellable_pSgMd);
    swift_endAccess();
  }

  *(*(v0 + 992) + *(v0 + 1408)) = 1;
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 1728) = 0;

  static Published.subscript.setter();
  static CloudLog.LogEndInfo(_:)("initializeBasicSyncEngine()", 27, 2, *(v0 + 1000), &protocol witness table for CloudManager);

  v33 = *(v0 + 8);

  return v33();
}

{
  v1 = *(v0 + 992);

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(v0 + 1664) = *(v0 + 848);

  return MEMORY[0x2822009F8](CloudManager.initializeBasicSyncEngine(), v1, 0);
}

{
  if (*(v0 + 1664))
  {
    v1 = *(v0 + 1672);
    ObjectType = swift_getObjectType();
    v3 = (*(v1 + 40))(ObjectType, v1);
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  *(v0 + 1680) = v3;
  v4 = *(v3 + 16);
  *(v0 + 1688) = v4;
  if (v4)
  {
    v5 = 0;
    while (1)
    {
      *(v0 + 1696) = v5;
      outlined init with copy of DBObject(v3 + 40 * v5 + 32, v0 + 280);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI10CloudSubDB_pMd);
      type metadata accessor for CloudSuggestionsDB();
      if (swift_dynamicCast())
      {
        break;
      }

      v6 = *(v0 + 1688);
      v7 = *(v0 + 1696) + 1;
      __swift_destroy_boxed_opaque_existential_1(v0 + 280);
      if (v7 == v6)
      {
        goto LABEL_13;
      }

      v5 = *(v0 + 1696) + 1;
      v3 = *(v0 + 1680);
    }

    v8 = *(v0 + 896);
    *(v0 + 1704) = v8;

    return MEMORY[0x2822009F8](CloudManager.initializeBasicSyncEngine(), v8, 0);
  }

  else
  {
LABEL_13:

    v9 = *(v0 + 992);
    v10 = OBJC_IVAR____TtC9MomentsUI12CloudManager_healthDataAvailableSubscription;
    swift_beginAccess();
    outlined init with copy of DateInterval?(v9 + v10, v0 + 240, &_s7Combine11Cancellable_pSgMd);
    v11 = *(v0 + 264);
    outlined destroy of UTType?(v0 + 240, &_s7Combine11Cancellable_pSgMd);
    if (!v11)
    {
      v31 = *(v0 + 1072);
      v32 = *(v0 + 1080);
      v24 = *(v0 + 1056);
      v25 = *(v0 + 1040);
      v12 = *(v0 + 1032);
      v26 = *(v0 + 1024);
      v27 = *(v0 + 1016);
      v28 = *(v0 + 1048);
      v13 = *(v0 + 1008);
      v29 = *(v0 + 1000);
      v30 = *(v0 + 1064);
      v14 = [objc_opt_self() defaultCenter];
      NSNotificationCenter.publisher(for:object:)();

      static NSRunLoop.SchedulerTimeType.Stride.milliseconds(_:)();
      v15 = [objc_opt_self() mainRunLoop];
      *(v0 + 888) = v15;
      v16 = type metadata accessor for NSRunLoop.SchedulerOptions();
      (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
      type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSRunLoop);
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher, MEMORY[0x277CC9DB0]);
      lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue(&lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop, &lazy cache variable for type metadata for NSRunLoop);
      Publisher.debounce<A>(for:scheduler:options:)();
      outlined destroy of UTType?(v13, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

      (*(v26 + 8))(v12, v27);
      (*(v28 + 8))(v24, v25);
      v17 = swift_allocObject();
      swift_weakInit();
      v18 = swift_allocObject();
      *(v18 + 16) = v17;
      *(v18 + 24) = v29;
      lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.Debounce<NSNotificationCenter.Publisher, NSRunLoop> and conformance Publishers.Debounce<A, B>, &_s7Combine10PublishersO8DebounceVy_So20NSNotificationCenterC10FoundationE9PublisherVSo9NSRunLoopCGMd);
      v19 = Publisher<>.sink(receiveValue:)();

      (*(v31 + 8))(v32, v30);
      v20 = type metadata accessor for AnyCancellable();
      v21 = MEMORY[0x277CBCDA0];
      *(v0 + 224) = v20;
      *(v0 + 232) = v21;
      *(v0 + 200) = v19;
      swift_beginAccess();
      outlined assign with take of AttributedString?(v0 + 200, v9 + v10, &_s7Combine11Cancellable_pSgMd);
      swift_endAccess();
    }

    *(*(v0 + 992) + *(v0 + 1408)) = 1;
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 1728) = 0;

    static Published.subscript.setter();
    static CloudLog.LogEndInfo(_:)("initializeBasicSyncEngine()", 27, 2, *(v0 + 1000), &protocol witness table for CloudManager);

    v22 = *(v0 + 8);

    return v22();
  }
}

{
  v1 = v0[124];
  v0[109] = *(v0[213] + OBJC_IVAR____TtC9MomentsUI18CloudSuggestionsDB_latestLocalSnapshotSequenceSubject);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCys6UInt64V8sequence_AESg11suggestionstSgs5NeverOGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PassthroughSubject<(sequence: UInt64, suggestions: UInt64?)?, Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCys6UInt64V8sequence_AESg11suggestionstSgs5NeverOGMd);
  v0[214] = Publisher.eraseToAnyPublisher()();

  return MEMORY[0x2822009F8](CloudManager.initializeBasicSyncEngine(), v1, 0);
}

{
  v35 = *(v0 + 1648);
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1088);
  v4 = *(v0 + 1000);
  v5 = *(v0 + 992);
  *(v0 + 864) = *(v0 + 1712);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVys6UInt64V8sequence_AESg11suggestionstSgs5NeverOGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AnyPublisher<(sequence: UInt64, suggestions: UInt64?)?, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVys6UInt64V8sequence_AESg11suggestionstSgs5NeverOGMd);
  Publisher.removeDuplicates(by:)();

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<AnyPublisher<(sequence: UInt64, suggestions: UInt64?)?, Never>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVys6UInt64V8sequence_AISg11suggestionstSgs5NeverOGGMd);

  v7 = Publisher<>.sink(receiveValue:)();

  (*(v2 + 8))(v1, v3);
  *(v5 + v35) = v7;

  while (1)
  {
    v8 = *(v0 + 1688);
    v9 = *(v0 + 1696) + 1;
    __swift_destroy_boxed_opaque_existential_1(v0 + 280);
    if (v9 == v8)
    {
      break;
    }

    v10 = *(v0 + 1696);
    *(v0 + 1696) = v10 + 1;
    outlined init with copy of DBObject(*(v0 + 1680) + 40 * v10 + 72, v0 + 280);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI10CloudSubDB_pMd);
    type metadata accessor for CloudSuggestionsDB();
    if (swift_dynamicCast())
    {
      v11 = *(v0 + 896);
      *(v0 + 1704) = v11;

      return MEMORY[0x2822009F8](CloudManager.initializeBasicSyncEngine(), v11, 0);
    }
  }

  v12 = *(v0 + 992);
  v13 = OBJC_IVAR____TtC9MomentsUI12CloudManager_healthDataAvailableSubscription;
  swift_beginAccess();
  outlined init with copy of DateInterval?(v12 + v13, v0 + 240, &_s7Combine11Cancellable_pSgMd);
  v14 = *(v0 + 264);
  outlined destroy of UTType?(v0 + 240, &_s7Combine11Cancellable_pSgMd);
  if (!v14)
  {
    v34 = *(v0 + 1072);
    v36 = *(v0 + 1080);
    v27 = *(v0 + 1056);
    v28 = *(v0 + 1040);
    v15 = *(v0 + 1032);
    v29 = *(v0 + 1024);
    v30 = *(v0 + 1016);
    v31 = *(v0 + 1048);
    v16 = *(v0 + 1008);
    v32 = *(v0 + 1000);
    v33 = *(v0 + 1064);
    v17 = [objc_opt_self() defaultCenter];
    NSNotificationCenter.publisher(for:object:)();

    static NSRunLoop.SchedulerTimeType.Stride.milliseconds(_:)();
    v18 = [objc_opt_self() mainRunLoop];
    *(v0 + 888) = v18;
    v19 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSRunLoop);
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher, MEMORY[0x277CC9DB0]);
    lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue(&lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop, &lazy cache variable for type metadata for NSRunLoop);
    Publisher.debounce<A>(for:scheduler:options:)();
    outlined destroy of UTType?(v16, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

    (*(v29 + 8))(v15, v30);
    (*(v31 + 8))(v27, v28);
    v20 = swift_allocObject();
    swift_weakInit();
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    *(v21 + 24) = v32;
    lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.Debounce<NSNotificationCenter.Publisher, NSRunLoop> and conformance Publishers.Debounce<A, B>, &_s7Combine10PublishersO8DebounceVy_So20NSNotificationCenterC10FoundationE9PublisherVSo9NSRunLoopCGMd);
    v22 = Publisher<>.sink(receiveValue:)();

    (*(v34 + 8))(v36, v33);
    v23 = type metadata accessor for AnyCancellable();
    v24 = MEMORY[0x277CBCDA0];
    *(v0 + 224) = v23;
    *(v0 + 232) = v24;
    *(v0 + 200) = v22;
    swift_beginAccess();
    outlined assign with take of AttributedString?(v0 + 200, v12 + v13, &_s7Combine11Cancellable_pSgMd);
    swift_endAccess();
  }

  *(*(v0 + 992) + *(v0 + 1408)) = 1;
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 1728) = 0;

  static Published.subscript.setter();
  static CloudLog.LogEndInfo(_:)("initializeBasicSyncEngine()", 27, 2, *(v0 + 1000), &protocol witness table for CloudManager);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t closure #1 in CloudManager.initializeBasicSyncEngine()()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, static CloudManager.Log);
  swift_beginAccess();
  (*(v1 + 16))(v3, v4, v0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136446210;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000002165856B0, &v11);
    _os_log_impl(&dword_21607C000, v5, v6, "CloudManager.%{public}s CKAccountChanged notification", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x21CE94770](v8, -1, -1);
    MEMORY[0x21CE94770](v7, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  v9 = swift_allocObject();
  swift_weakInit();
  return specialized BTask.init(name:operation:)(0xD00000000000003ELL, 0x8000000216585770, &async function pointer to partial apply for closure #1 in closure #1 in CloudManager.initializeBasicSyncEngine(), v9);
}

uint64_t closure #2 in CloudManager.initializeBasicSyncEngine()(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26[-v8];
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, static CloudManager.Log);
  swift_beginAccess();
  (*(v11 + 16))(v13, v14, v10);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v28 = a4;
    v27 = a1;
    v18 = a3;
    v19 = v17;
    v20 = swift_slowAlloc();
    v29 = v20;
    *v19 = 136446210;
    *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000002165856B0, &v29);
    _os_log_impl(&dword_21607C000, v15, v16, "CloudManager.%{public}s Account authorization changed notification", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x21CE94770](v20, -1, -1);
    v21 = v19;
    a3 = v18;
    a1 = v27;
    a4 = v28;
    MEMORY[0x21CE94770](v21, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = v23;
  *(v24 + 40) = a1;
  *(v24 + 48) = a3;
  *(v24 + 56) = a4;

  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in closure #2 in CloudManager.initializeBasicSyncEngine(), v24);

  return outlined destroy of UTType?(v9, &_sScPSgMd);
}

uint64_t closure #1 in closure #2 in CloudManager.initializeBasicSyncEngine()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  *(v7 + 80) = a5;
  *(v7 + 40) = a4;
  return MEMORY[0x2822009F8](closure #1 in closure #2 in CloudManager.initializeBasicSyncEngine(), 0, 0);
}

uint64_t closure #1 in closure #2 in CloudManager.initializeBasicSyncEngine()()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 72) = v2;
    *v2 = v0;
    v2[1] = closure #1 in closure #2 in CloudManager.initializeBasicSyncEngine();
    v3 = *(v0 + 48);
    v4 = *(v0 + 56);

    return CloudManager.initializeSyncEngine(wait:_:)(0, v3, v4);
  }

  else
  {
    notify_cancel(*(v0 + 80));
    v6 = *(v0 + 8);

    return v6();
  }
}

{

  return MEMORY[0x2822009F8](closure #2 in DBWriter.latestSnapshots(), 0, 0);
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned Int32) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t closure #3 in CloudManager.initializeBasicSyncEngine()()
{
  v0 = swift_allocObject();
  swift_weakInit();

  return specialized BTask.init(name:operation:)(0xD000000000000043, 0x8000000216585700, &async function pointer to partial apply for closure #1 in closure #3 in CloudManager.initializeBasicSyncEngine(), v0);
}

uint64_t closure #1 in closure #3 in CloudManager.initializeBasicSyncEngine()()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = closure #1 in CloudManager.onboarded.didset;

    return CloudManager.initializeSyncEngine(wait:_:)(0, 0xD000000000000014, 0x8000000216585750);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t closure #4 in CloudManager.initializeBasicSyncEngine()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudDevice();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v19 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSg_ADtMd);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - v13;
  v15 = *(v12 + 56);
  outlined init with copy of DateInterval?(a1, &v19 - v13, &_s9MomentsUI11CloudDeviceVSgMd);
  outlined init with copy of DateInterval?(a2, &v14[v15], &_s9MomentsUI11CloudDeviceVSgMd);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    outlined init with copy of DateInterval?(v14, v10, &_s9MomentsUI11CloudDeviceVSgMd);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      outlined init with take of CloudDevice(&v14[v15], v7);
      v17 = specialized static CloudDevice.== infix(_:_:)(v10, v7);
      outlined destroy of CloudDevice(v7);
      outlined destroy of CloudDevice(v10);
      outlined destroy of UTType?(v14, &_s9MomentsUI11CloudDeviceVSgMd);
      return v17 & 1;
    }

    outlined destroy of CloudDevice(v10);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    outlined destroy of UTType?(v14, &_s9MomentsUI11CloudDeviceVSg_ADtMd);
    v17 = 0;
    return v17 & 1;
  }

  outlined destroy of UTType?(v14, &_s9MomentsUI11CloudDeviceVSgMd);
  v17 = 1;
  return v17 & 1;
}

uint64_t closure #5 in CloudManager.initializeBasicSyncEngine()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSgMd);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  outlined init with copy of DateInterval?(a1, v10, &_s9MomentsUI11CloudDeviceVSgMd);
  v15 = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type CloudManager and conformance CloudManager, type metadata accessor for CloudManager);
  v16 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = v15;
  v18[4] = a2;
  outlined init with take of URL?(v10, v18 + v16, &_s9MomentsUI11CloudDeviceVSgMd);
  *(v18 + v17) = a3;
  swift_retain_n();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v13, &async function pointer to partial apply for closure #1 in closure #5 in CloudManager.initializeBasicSyncEngine(), v18);
}

uint64_t closure #1 in closure #5 in CloudManager.initializeBasicSyncEngine()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v7 = type metadata accessor for Logger();
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSgMd);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #5 in CloudManager.initializeBasicSyncEngine(), a4, 0);
}

uint64_t closure #1 in closure #5 in CloudManager.initializeBasicSyncEngine()()
{
  v38 = v0;
  v1 = v0[17];
  outlined init with copy of DateInterval?(v0[11], v1, &_s9MomentsUI11CloudDeviceVSgMd);
  v2 = type metadata accessor for CloudDevice();
  v3 = *(*(v2 - 8) + 48);
  v4 = v3(v1, 1, v2);
  v5 = v0[17];
  if (v4 == 1)
  {
    outlined destroy of UTType?(v0[17], &_s9MomentsUI11CloudDeviceVSgMd);
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v6 = *v5;
    v7 = v5[1];

    outlined destroy of CloudDevice(v5);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v0[8] = v6;
  v0[9] = v7;

  static Published.subscript.setter();
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v8 = v0[16];
  v10 = v0[13];
  v9 = v0[14];
  v12 = v0[11];
  v11 = v0[12];
  v13 = __swift_project_value_buffer(v11, static CloudManager.Log);
  swift_beginAccess();
  (*(v10 + 16))(v9, v13, v11);
  outlined init with copy of DateInterval?(v12, v8, &_s9MomentsUI11CloudDeviceVSgMd);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  v16 = os_log_type_enabled(v14, v15);
  v17 = v0[16];
  if (v16)
  {
    v18 = v0[15];
    v19 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = v36;
    *v19 = 136446722;
    swift_beginAccess();
    v20 = StaticString.description.getter();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v37);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2082;
    *(v19 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000002165856B0, &v37);
    *(v19 + 22) = 2080;
    outlined init with copy of DateInterval?(v17, v18, &_s9MomentsUI11CloudDeviceVSgMd);
    v23 = v3(v18, 1, v2);
    v24 = v0[15];
    if (v23 == 1)
    {
      outlined destroy of UTType?(v0[15], &_s9MomentsUI11CloudDeviceVSgMd);
      v25 = 0xE300000000000000;
      v26 = 7104878;
    }

    else
    {
      v26 = *v24;
      v25 = v24[1];

      outlined destroy of CloudDevice(v24);
    }

    v31 = v0[13];
    v30 = v0[14];
    v32 = v0[12];
    outlined destroy of UTType?(v0[16], &_s9MomentsUI11CloudDeviceVSgMd);
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v25, &v37);

    *(v19 + 24) = v33;
    _os_log_impl(&dword_21607C000, v14, v15, "%{public}s.%{public}s Updating primaryDevice to %s", v19, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v36, -1, -1);
    MEMORY[0x21CE94770](v19, -1, -1);

    (*(v31 + 8))(v30, v32);
  }

  else
  {
    v28 = v0[13];
    v27 = v0[14];
    v29 = v0[12];

    outlined destroy of UTType?(v17, &_s9MomentsUI11CloudDeviceVSgMd);
    (*(v28 + 8))(v27, v29);
  }

  v34 = v0[1];

  return v34();
}

uint64_t closure #6 in CloudManager.initializeBasicSyncEngine()(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = *a1;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type CloudManager and conformance CloudManager, type metadata accessor for CloudManager);
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = v11;
  v12[4] = a2;
  v12[5] = v9;
  v12[6] = a3;
  swift_retain_n();

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in closure #6 in CloudManager.initializeBasicSyncEngine(), v12);
}

uint64_t closure #1 in closure #6 in CloudManager.initializeBasicSyncEngine()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v7 = type metadata accessor for Logger();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #6 in CloudManager.initializeBasicSyncEngine(), a4, 0);
}

uint64_t closure #1 in closure #6 in CloudManager.initializeBasicSyncEngine()()
{
  v26 = v0;
  v1 = v0[10];
  swift_getKeyPath();
  swift_getKeyPath();
  v0[8] = v1;

  static Published.subscript.setter();
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  v5 = __swift_project_value_buffer(v4, static CloudManager.Log);
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[12];
  v10 = v0[13];
  v11 = v0[11];
  if (v8)
  {
    v12 = v0[10];
    v13 = swift_slowAlloc();
    v24 = v10;
    v25 = swift_slowAlloc();
    v14 = v25;
    *v13 = 136446722;
    swift_beginAccess();
    v15 = StaticString.description.getter();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v25);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000002165856B0, &v25);
    *(v13 + 22) = 2080;
    v18 = type metadata accessor for CloudDevice();
    v19 = MEMORY[0x21CE922B0](v12, v18);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v25);

    *(v13 + 24) = v21;
    _os_log_impl(&dword_21607C000, v6, v7, "%{public}s.%{public}s Updating newlyOnboardedDevices to %s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v14, -1, -1);
    MEMORY[0x21CE94770](v13, -1, -1);

    (*(v9 + 8))(v24, v11);
  }

  else
  {

    (*(v9 + 8))(v10, v11);
  }

  v22 = v0[1];

  return v22();
}

uint64_t closure #8 in CloudManager.initializeBasicSyncEngine()(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = *a1;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type CloudManager and conformance CloudManager, type metadata accessor for CloudManager);
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = v11;
  v12[4] = a2;
  v12[5] = v9;
  v12[6] = a3;

  swift_retain_n();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in closure #8 in CloudManager.initializeBasicSyncEngine(), v12);
}

uint64_t closure #1 in closure #8 in CloudManager.initializeBasicSyncEngine()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v7 = type metadata accessor for Logger();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #8 in CloudManager.initializeBasicSyncEngine(), a4, 0);
}

uint64_t closure #1 in closure #8 in CloudManager.initializeBasicSyncEngine()()
{
  v20 = v0;
  v1 = v0[10];
  swift_getKeyPath();
  swift_getKeyPath();
  v0[8] = v1;

  static Published.subscript.setter();
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  v5 = __swift_project_value_buffer(v4, static CloudManager.Log);
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[12];
  v9 = v0[13];
  v11 = v0[11];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136446466;
    swift_beginAccess();
    v14 = StaticString.description.getter();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v19);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2082;
    *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000002165856B0, &v19);
    _os_log_impl(&dword_21607C000, v6, v7, "%{public}s.%{public}s Updating dbManager", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v13, -1, -1);
    MEMORY[0x21CE94770](v12, -1, -1);
  }

  (*(v10 + 8))(v9, v11);

  v17 = v0[1];

  return v17();
}

uint64_t closure #9 in CloudManager.initializeBasicSyncEngine()@<X0>(unsigned __int8 *a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *a2;
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v6, static CloudManager.Log);
  swift_beginAccess();
  (*(v7 + 16))(v9, v12, v6);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = a3;
    v17 = v16;
    v26 = v16;
    *v15 = 136446978;
    v24 = v11;
    swift_beginAccess();
    v18 = StaticString.description.getter();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v26);
    v11 = v24;

    *(v15 + 4) = v20;
    *(v15 + 12) = 2082;
    *(v15 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000002165856B0, &v26);
    *(v15 + 22) = 1026;
    *(v15 + 24) = v10;
    *(v15 + 28) = 1026;
    *(v15 + 30) = v11;
    _os_log_impl(&dword_21607C000, v13, v14, "%{public}s.%{public}s cloudSync.pendingDBChanges = %{BOOL,public}d || suggestions.pendingDBChanges = %{BOOL,public}d", v15, 0x22u);
    swift_arrayDestroy();
    v21 = v17;
    a3 = v25;
    MEMORY[0x21CE94770](v21, -1, -1);
    MEMORY[0x21CE94770](v15, -1, -1);
  }

  result = (*(v7 + 8))(v9, v6);
  *a3 = (v10 | v11) & 1;
  return result;
}

uint64_t closure #10 in CloudManager.initializeBasicSyncEngine()(unsigned __int8 *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, static CloudManager.Log);
  swift_beginAccess();
  (*(v5 + 16))(v7, v9, v4);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136446722;
    v18 = a2;
    swift_beginAccess();
    v14 = StaticString.description.getter();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v19);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2082;
    *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000002165856B0, &v19);
    *(v12 + 22) = 1026;
    *(v12 + 24) = v8;
    _os_log_impl(&dword_21607C000, v10, v11, "%{public}s.%{public}s pendingDBChanges = %{BOOL,public}d", v12, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v13, -1, -1);
    MEMORY[0x21CE94770](v12, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v19) = v8;

  return static Published.subscript.setter();
}

uint64_t closure #12 in CloudManager.initializeBasicSyncEngine()(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = a1[1];
  v10 = *(a1 + 16);
  v11 = *(a1 + 17);
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v4, static CloudManager.Log);
  swift_beginAccess();
  (*(v5 + 16))(v7, v12, v4);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v30 = v8;
    v16 = v15;
    v17 = swift_slowAlloc();
    v28[1] = a2;
    v29 = v9;
    v28[0] = v17;
    v31 = v17;
    *v16 = 136446722;
    swift_beginAccess();
    v18 = StaticString.description.getter();
    v20 = v11;
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v31);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2082;
    *(v16 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000002165856B0, &v31);
    *(v16 + 22) = 2082;
    v32 = v30;
    v33 = v29;
    v34 = v10;
    v35 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V8sequence_ABSg11suggestionstSgMd);
    v22 = String.init<A>(describing:)();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v31);

    *(v16 + 24) = v24;
    v11 = v20;
    _os_log_impl(&dword_21607C000, v13, v14, "%{public}s.%{public}s latestLocalSnapshotSequence = %{public}s", v16, 0x20u);
    v25 = v28[0];
    swift_arrayDestroy();
    v9 = v29;
    MEMORY[0x21CE94770](v25, -1, -1);
    v26 = v16;
    v8 = v30;
    MEMORY[0x21CE94770](v26, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  swift_getKeyPath();
  swift_getKeyPath();
  v32 = v8;
  v33 = v9;
  v34 = v10;
  v35 = v11;

  return static Published.subscript.setter();
}

uint64_t closure #13 in CloudManager.initializeBasicSyncEngine()(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v23 - v4;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v6, static CloudManager.Log);
  swift_beginAccess();
  (*(v7 + 16))(v9, v10, v6);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v23 = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v24 = v15;
    *v14 = 136446466;
    swift_beginAccess();
    v16 = StaticString.description.getter();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v24);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000002165856B0, &v24);
    _os_log_impl(&dword_21607C000, v11, v12, "%{public}s.%{public}s HKUserPreferencesDidChange notification", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v15, -1, -1);
    v19 = v14;
    a2 = v23;
    MEMORY[0x21CE94770](v19, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = a2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in closure #13 in CloudManager.initializeBasicSyncEngine(), v21);
}

uint64_t closure #1 in closure #13 in CloudManager.initializeBasicSyncEngine()()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = closure #1 in CloudManager.onboarded.didset;

    return CloudManager.checkHealthDataAvailable()();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

const char *UIUserInterfaceIdiom.stringValue.getter(uint64_t a1)
{
  if (a1 <= 1)
  {
    switch(a1)
    {
      case -1:
        return ".unspecified";
      case 0:
        return ".phone";
      case 1:
        return ".pad";
    }

    return ".unknown";
  }

  if (a1 <= 4)
  {
    if (a1 == 2)
    {
      return ".tv";
    }

    if (a1 == 3)
    {
      return ".carPlay";
    }

    return ".unknown";
  }

  if (a1 != 5)
  {
    if (a1 == 6)
    {
      return ".vision";
    }

    return ".unknown";
  }

  return ".mac";
}

uint64_t closure #3 in CloudManager.initializeSyncEngine(wait:_:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v4;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v2, &async function pointer to partial apply for closure #1 in closure #3 in CloudManager.initializeSyncEngine(wait:_:), v5);

  return outlined destroy of UTType?(v2, &_sScPSgMd);
}

uint64_t closure #1 in closure #3 in CloudManager.initializeSyncEngine(wait:_:)()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](closure #1 in closure #3 in CloudManager.initializeSyncEngine(wait:_:), Strong, 0);
  }

  else
  {
    v2 = *(v0 + 8);

    return v2();
  }
}

{
  CloudManager._updateOnboarded()();

  return MEMORY[0x2822009F8](closure #1 in closure #3 in CloudManager.initializeSyncEngine(wait:_:), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t CloudManager._updateOnboarded()()
{
  v1 = *v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static CloudLog.LogBegin(_:_:)(0, "_updateOnboarded()", 18, 2, v1, &protocol witness table for CloudManager);
  swift_beginAccess();
  v6 = static MomentsUIManager.isOnboarded;
  if (static MomentsUIManager.isOnboarded)
  {
    v7 = qword_2811A7CD0;

    v9 = v6(v8);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v10 = v20;
    swift_getKeyPath();
    swift_getKeyPath();
    v20 = v9;

    static Published.subscript.setter();
    CloudManager.onboarded.didset(v10);
    outlined consume of (@escaping @callee_guaranteed () -> (@unowned UInt?))?(v6, v7);
  }

  else
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v11 = __swift_project_value_buffer(v2, static CloudManager.Log);
    swift_beginAccess();
    (*(v3 + 16))(v5, v11, v2);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v19 = v15;
      *v14 = 136446210;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x8000000216585640, &v19);
      _os_log_impl(&dword_21607C000, v12, v13, "CloudManager.%{public}s MomentsUIManager.isOnboarded is not initialized", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x21CE94770](v15, -1, -1);
      MEMORY[0x21CE94770](v14, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v16 = v19;
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v19) = 1;

    static Published.subscript.setter();
    CloudManager.onboarded.didset(v16);
  }

  return static CloudLog.LogEnd(_:)("_updateOnboarded()", 18, 2, v1, &protocol witness table for CloudManager);
}

uint64_t closure #4 in CloudManager.initializeSyncEngine(wait:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a4;
  v5 = swift_task_alloc();
  *(v4 + 72) = v5;
  *v5 = v4;
  v5[1] = closure #4 in CloudManager.initializeSyncEngine(wait:_:);

  return MEMORY[0x282200480](250000000);
}

uint64_t closure #4 in CloudManager.initializeSyncEngine(wait:_:)()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](closure #4 in CloudManager.initializeSyncEngine(wait:_:), 0, 0);
  }
}

{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    strcpy((v0 + 40), "Retry numer ");
    *(v0 + 53) = 0;
    *(v0 + 54) = -5120;
    *(v0 + 88) = OBJC_IVAR____TtC9MomentsUI12CloudManager_initRetries;

    return MEMORY[0x2822009F8](closure #4 in CloudManager.initializeSyncEngine(wait:_:), Strong, 0);
  }

  else
  {
    v2 = *(v0 + 8);

    return v2();
  }
}

{
  v0[12] = *(v0[10] + v0[11]);
  return MEMORY[0x2822009F8](closure #4 in CloudManager.initializeSyncEngine(wait:_:), 0, 0);
}

{
  v0[7] = v0[12];
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x21CE92100](v1);

  v3 = v0[5];
  v2 = v0[6];
  v0[13] = v2;
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = closure #4 in CloudManager.initializeSyncEngine(wait:_:);

  return CloudManager.initializeSyncEngine(wait:_:)(0, v3, v2);
}

{

  return MEMORY[0x2822009F8](closure #4 in CloudManager.initializeSyncEngine(wait:_:), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _sScTss5Error_pRs_rlE8detached4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntFZyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  outlined init with copy of DateInterval?(a3, v22 - v9, &_sScPSgMd);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    outlined destroy of UTType?(v10, &_sScPSgMd);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned CKAccountStatus, @unowned NSError?) -> () with result type CKAccountStatus(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t closure #5 in CloudManager.initializeSyncEngine(wait:_:)(uint64_t a1, uint64_t a2, void *a3)
{
  *(v3 + 16) = a3;
  *(v3 + 24) = *a3;
  return MEMORY[0x2822009F8](closure #5 in CloudManager.initializeSyncEngine(wait:_:), 0, 0);
}

uint64_t closure #5 in CloudManager.initializeSyncEngine(wait:_:)()
{
  if (one-time initialization token for DEBUG_NO_NETWORK != -1)
  {
    swift_once();
  }

  if (static CloudManager.DEBUG_NO_NETWORK)
  {
    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = v0[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys23CustomStringConvertible_pSgGMd);
    v4 = swift_allocObject();
    v5 = MEMORY[0x277D839B0];
    *(v4 + 16) = xmmword_21658E190;
    v6 = MEMORY[0x277D839D8];
    *(v4 + 56) = v5;
    *(v4 + 64) = v6;
    *(v4 + 32) = 1;
    v7 = MEMORY[0x277D83838];
    *(v4 + 96) = MEMORY[0x277D837D0];
    *(v4 + 104) = v7;
    *(v4 + 72) = 0xD00000000000001DLL;
    *(v4 + 80) = 0x8000000216584A40;
    v8 = MEMORY[0x277D83BF8];
    *(v4 + 136) = MEMORY[0x277D83B88];
    *(v4 + 144) = v8;
    *(v4 + 112) = 1326;
    static CloudLog.LogBeginInfo(_:_:)(v4, "refresh(force:wait:_:_:)", 24, 2, v3, &protocol witness table for CloudManager);

    v9 = swift_task_alloc();
    v0[4] = v9;
    *v9 = v0;
    v9[1] = closure #5 in CloudManager.initializeSyncEngine(wait:_:);

    return CloudManager._waitForInitialization(_:_:)("refresh(force:wait:_:_:)", 24, 2, 2018);
  }
}

{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 40) = v3;
  *v3 = v2;
  v3[1] = closure #5 in CloudManager.initializeSyncEngine(wait:_:);

  return CloudManager._refresh(force:wait:)(1, 0);
}

{

  return MEMORY[0x2822009F8](closure #5 in CloudManager.initializeSyncEngine(wait:_:), 0, 0);
}

{
  static CloudLog.LogEndInfo(_:)("refresh(force:wait:_:_:)", 24, 2, *(v0 + 24), &protocol witness table for CloudManager);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CloudManager@<X0>(uint64_t *a1@<X8>)
{
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CloudManager.handleEvent(_:syncEngine:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x2822009F8](CloudManager.handleEvent(_:syncEngine:), v2, 0);
}

uint64_t CloudManager.handleEvent(_:syncEngine:)()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys23CustomStringConvertible_pSgGMd);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_21658CA50;
  v4 = type metadata accessor for CKSyncEngine.Event();
  *(v3 + 56) = v4;
  *(v3 + 64) = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type CKSyncEngine.Event and conformance CKSyncEngine.Event, MEMORY[0x277CBBD88]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v3 + 32));
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v2, v4);
  static CloudLog.LogBegin(_:_:)(v3, "handleEvent(_:syncEngine:)", 26, 2, v1, &protocol witness table for CloudManager);

  if (one-time initialization token for $inDelegate != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  *(v0 + 64) = 1;
  v10 = swift_task_alloc();
  *(v0 + 48) = v10;
  v10[2] = v9;
  v10[3] = v6;
  v10[4] = v8;
  v10[5] = v7;
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type CloudManager and conformance CloudManager, type metadata accessor for CloudManager);
  v11 = swift_task_alloc();
  *(v0 + 56) = v11;
  *v11 = v0;
  v11[1] = CloudManager.handleEvent(_:syncEngine:);

  return MEMORY[0x282200908]();
}

{
  static CloudLog.LogEnd(_:)("handleEvent(_:syncEngine:)", 26, 2, *(v0 + 40), &protocol witness table for CloudManager);
  v1 = *(v0 + 8);

  return v1();
}

void CloudManager.handleEvent(_:syncEngine:)()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = *(v2 + 32);

    MEMORY[0x2822009F8](CloudManager.handleEvent(_:syncEngine:), v3, 0);
  }
}

uint64_t closure #1 in CloudManager.handleEvent(_:syncEngine:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[9] = a2;
  v6 = type metadata accessor for Logger();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  Changes = type metadata accessor for CKSyncEngine.Event.DidFetchChanges();
  v4[15] = Changes;
  v4[16] = *(Changes - 8);
  v4[17] = swift_task_alloc();
  v8 = type metadata accessor for CKSyncEngine.Event.WillFetchChanges();
  v4[18] = v8;
  v4[19] = *(v8 - 8);
  v4[20] = swift_task_alloc();
  v9 = type metadata accessor for CKSyncEngine.Event.SentRecordZoneChanges();
  v4[21] = v9;
  v4[22] = *(v9 - 8);
  v4[23] = swift_task_alloc();
  v10 = type metadata accessor for CKSyncEngine.Event.FetchedRecordZoneChanges();
  v4[24] = v10;
  v4[25] = *(v10 - 8);
  v4[26] = swift_task_alloc();
  v11 = type metadata accessor for CKSyncEngine.Event.FetchedDatabaseChanges();
  v4[27] = v11;
  v4[28] = *(v11 - 8);
  v4[29] = swift_task_alloc();
  v12 = type metadata accessor for CKSyncEngine.Event.AccountChange();
  v4[30] = v12;
  v4[31] = *(v12 - 8);
  v4[32] = swift_task_alloc();
  v13 = type metadata accessor for CKSyncEngine.Event.StateUpdate();
  v4[33] = v13;
  v4[34] = *(v13 - 8);
  v4[35] = swift_task_alloc();
  v14 = type metadata accessor for CKSyncEngine.Event();
  v4[36] = v14;
  v4[37] = *(v14 - 8);
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in CloudManager.handleEvent(_:syncEngine:), a3, 0);
}

uint64_t closure #1 in CloudManager.handleEvent(_:syncEngine:)()
{
  v76 = v0;
  v1 = v0[39];
  v2 = v0[36];
  v3 = v0[37];
  v4 = *(v3 + 16);
  v4(v1, v0[9], v2);
  v5 = (*(v3 + 88))(v1, v2);
  if (v5 == *MEMORY[0x277CBBC98])
  {
    v6 = v0[39];
    v8 = v0[34];
    v7 = v0[35];
    v9 = v0[33];
    (*(v0[37] + 96))(v6, v0[36]);
    (*(v8 + 32))(v7, v6, v9);
    v73 = specialized CloudManager.handleStateChange(_:syncEngine:);
    v10 = swift_task_alloc();
    v0[40] = v10;
    *v10 = v0;
    v10[1] = closure #1 in CloudManager.handleEvent(_:syncEngine:);
    v11 = v0[35];
LABEL_9:

    return v73(v11);
  }

  if (v5 == *MEMORY[0x277CBBCD0])
  {
    v12 = v0[39];
    v14 = v0[31];
    v13 = v0[32];
    v15 = v0[30];
    (*(v0[37] + 96))(v12, v0[36]);
    (*(v14 + 32))(v13, v12, v15);
    v73 = specialized CloudManager.handleAccountChange(_:syncEngine:);
    v16 = swift_task_alloc();
    v0[41] = v16;
    *v16 = v0;
    v16[1] = closure #1 in CloudManager.handleEvent(_:syncEngine:);
    v11 = v0[32];
    goto LABEL_9;
  }

  if (v5 == *MEMORY[0x277CBBD58])
  {
    v17 = v0[39];
    v19 = v0[28];
    v18 = v0[29];
    v20 = v0[27];
    (*(v0[37] + 96))(v17, v0[36]);
    (*(v19 + 32))(v18, v17, v20);
    v73 = specialized CloudManager.handleFetchedDatabaseChanges(_:syncEngine:);
    v21 = swift_task_alloc();
    v0[42] = v21;
    *v21 = v0;
    v21[1] = closure #1 in CloudManager.handleEvent(_:syncEngine:);
    v11 = v0[29];
    goto LABEL_9;
  }

  if (v5 == *MEMORY[0x277CBBD70])
  {
    v22 = v0[39];
    v24 = v0[25];
    v23 = v0[26];
    v25 = v0[24];
    (*(v0[37] + 96))(v22, v0[36]);
    (*(v24 + 32))(v23, v22, v25);
    v73 = specialized CloudManager.handleFetchedRecordZoneChanges(_:syncEngine:);
    v26 = swift_task_alloc();
    v0[43] = v26;
    *v26 = v0;
    v26[1] = closure #1 in CloudManager.handleEvent(_:syncEngine:);
    v11 = v0[26];
    goto LABEL_9;
  }

  if (v5 == *MEMORY[0x277CBBD28])
  {
    goto LABEL_13;
  }

  if (v5 == *MEMORY[0x277CBBD40])
  {
    v29 = v0[39];
    v31 = v0[22];
    v30 = v0[23];
    v32 = v0[21];
    (*(v0[37] + 96))(v29, v0[36]);
    (*(v31 + 32))(v30, v29, v32);
    v33 = swift_task_alloc();
    v0[44] = v33;
    *v33 = v0;
    v33[1] = closure #1 in CloudManager.handleEvent(_:syncEngine:);
    v34 = v0[23];
    v35 = v0[11];

    return CloudManager.handleSentRecordZoneChanges(_:syncEngine:)(v34, v35);
  }

  if (v5 == *MEMORY[0x277CBBD20])
  {
    v36 = v0[39];
    v38 = v0[19];
    v37 = v0[20];
    v39 = v0[18];
    (*(v0[37] + 96))(v36, v0[36]);
    (*(v38 + 32))(v37, v36, v39);
    v40 = swift_task_alloc();
    v0[48] = v40;
    *v40 = v0;
    v40[1] = closure #1 in CloudManager.handleEvent(_:syncEngine:);
    v41 = v0[20];
    v42 = v0[11];

    return CloudManager.handleWillFetchChanges(_:syncEngine:)(v41, v42);
  }

  if (v5 == *MEMORY[0x277CBBD80] || v5 == *MEMORY[0x277CBBD78])
  {
LABEL_13:
    (*(v0[37] + 8))(v0[39], v0[36]);
LABEL_14:

    v28 = v0[1];

    return v28();
  }

  if (v5 != *MEMORY[0x277CBBD00])
  {
    if (v5 != *MEMORY[0x277CBBD08] && v5 != *MEMORY[0x277CBBCE0] && v5 != *MEMORY[0x277CBBCE8] && v5 != *MEMORY[0x277CBBCA0] && v5 != *MEMORY[0x277CBBCD8])
    {
      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v50 = v0[38];
      v51 = v0[36];
      v53 = v0[13];
      v52 = v0[14];
      v54 = v0[12];
      v55 = v0[9];
      v56 = __swift_project_value_buffer(v54, static CloudManager.Log);
      swift_beginAccess();
      (*(v53 + 16))(v52, v56, v54);
      v4(v50, v55, v51);
      v57 = Logger.logObject.getter();
      v70 = static os_log_type_t.error.getter();
      log = v57;
      v58 = os_log_type_enabled(v57, v70);
      v60 = v0[37];
      v59 = v0[38];
      v61 = v0[36];
      v62 = v0[13];
      v74 = v0[14];
      v71 = v0[12];
      if (v58)
      {
        v63 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v75 = v69;
        *v63 = 136315138;
        _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type CKSyncEngine.Event and conformance CKSyncEngine.Event, MEMORY[0x277CBBD88]);
        v64 = dispatch thunk of CustomStringConvertible.description.getter();
        v66 = v65;
        v67 = *(v60 + 8);
        v67(v59, v61);
        v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v66, &v75);

        *(v63 + 4) = v68;
        _os_log_impl(&dword_21607C000, log, v70, "Received unknown event: %s", v63, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v69);
        MEMORY[0x21CE94770](v69, -1, -1);
        MEMORY[0x21CE94770](v63, -1, -1);
      }

      else
      {

        v67 = *(v60 + 8);
        v67(v59, v61);
      }

      (*(v62 + 8))(v74, v71);
      v67(v0[39], v0[36]);
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v43 = v0[39];
  v45 = v0[16];
  v44 = v0[17];
  v46 = v0[15];
  (*(v0[37] + 96))(v43, v0[36]);
  (*(v45 + 32))(v44, v43, v46);
  v47 = swift_task_alloc();
  v0[50] = v47;
  *v47 = v0;
  v47[1] = closure #1 in CloudManager.handleEvent(_:syncEngine:);
  v48 = v0[17];
  v49 = v0[11];

  return CloudManager.handleDidFetchChanges(_:syncEngine:)(v48, v49);
}

{
  v1 = *(*v0 + 80);

  return MEMORY[0x2822009F8](closure #1 in CloudManager.handleEvent(_:syncEngine:), v1, 0);
}

{
  (*(v0[34] + 8))(v0[35], v0[33]);

  v1 = v0[1];

  return v1();
}

{
  v1 = *(*v0 + 80);

  return MEMORY[0x2822009F8](closure #1 in CloudManager.handleEvent(_:syncEngine:), v1, 0);
}

{
  (*(v0[31] + 8))(v0[32], v0[30]);

  v1 = v0[1];

  return v1();
}

{
  v1 = *(*v0 + 80);

  return MEMORY[0x2822009F8](closure #1 in CloudManager.handleEvent(_:syncEngine:), v1, 0);
}

{
  (*(v0[28] + 8))(v0[29], v0[27]);

  v1 = v0[1];

  return v1();
}

{
  v1 = *(*v0 + 80);

  return MEMORY[0x2822009F8](closure #1 in CloudManager.handleEvent(_:syncEngine:), v1, 0);
}

{
  (*(v0[25] + 8))(v0[26], v0[24]);

  v1 = v0[1];

  return v1();
}

{
  v1 = *(*v0 + 80);

  return MEMORY[0x2822009F8](closure #1 in CloudManager.handleEvent(_:syncEngine:), v1, 0);
}

{
  v1 = (v0[10] + OBJC_IVAR____TtC9MomentsUI12CloudManager_cloudModel);
  swift_beginAccess();
  v2 = *v1;
  v3 = v1[1];
  v0[45] = v3;
  ObjectType = swift_getObjectType();
  v0[46] = ObjectType;
  v0[8] = v2;
  v5 = *(v3 + 8);
  v6 = *(v5 + 112);
  swift_unknownObjectRetain();
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  v0[47] = v7;
  *v7 = v0;
  v7[1] = closure #1 in CloudManager.handleEvent(_:syncEngine:);

  return v9(ObjectType, v5);
}

{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[10];

    v4 = closure #1 in CloudManager.handleEvent(_:syncEngine:);
    v5 = v3;
  }

  else
  {
    v6 = v2[10];
    specialized CloudManager.cloudModel.setter(v2[8], v6, v2[46], v2[45]);
    v4 = closure #1 in CloudManager.handleEvent(_:syncEngine:);
    v5 = v6;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

{
  (*(v0[22] + 8))(v0[23], v0[21]);

  v1 = v0[1];

  return v1();
}

{
  v2 = *v1;
  *(*v1 + 392) = v0;

  v3 = *(v2 + 80);
  if (v0)
  {
    v4 = closure #1 in CloudManager.handleEvent(_:syncEngine:);
  }

  else
  {
    v4 = closure #1 in CloudManager.handleEvent(_:syncEngine:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  (*(v0[19] + 8))(v0[20], v0[18]);

  v1 = v0[1];

  return v1();
}

{
  v2 = *v1;
  *(*v1 + 408) = v0;

  v3 = *(v2 + 80);
  if (v0)
  {
    v4 = closure #1 in CloudManager.handleEvent(_:syncEngine:);
  }

  else
  {
    v4 = closure #1 in CloudManager.handleEvent(_:syncEngine:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  (*(v0[16] + 8))(v0[17], v0[15]);

  v1 = v0[1];

  return v1();
}

{
  specialized CloudManager.cloudModel.setter(v0[8], v0[10], v0[46], v0[45]);
  (*(v0[22] + 8))(v0[23], v0[21]);

  v1 = v0[1];

  return v1();
}

{
  v1 = v0[49];
  (*(v0[19] + 8))(v0[20], v0[18]);

  v2 = v0[1];

  return v2();
}

{
  v1 = v0[51];
  (*(v0[16] + 8))(v0[17], v0[15]);

  v2 = v0[1];

  return v2();
}

uint64_t CloudManager.handleStateChange(_:syncEngine:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = static Exif.filterVideo(inputURL:outputURL:);

  return (specialized CloudManager.handleStateChange(_:syncEngine:))(a1);
}

uint64_t CloudManager.handleAccountChange(_:syncEngine:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = static Exif.filterVideo(inputURL:outputURL:);

  return (specialized CloudManager.handleAccountChange(_:syncEngine:))(a1);
}

uint64_t CloudManager.handleFetchedDatabaseChanges(_:syncEngine:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = static Exif.filterVideo(inputURL:outputURL:);

  return (specialized CloudManager.handleFetchedDatabaseChanges(_:syncEngine:))(a1);
}

uint64_t CloudManager.handleFetchedRecordZoneChanges(_:syncEngine:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = static Exif.filterVideo(inputURL:outputURL:);

  return (specialized CloudManager.handleFetchedRecordZoneChanges(_:syncEngine:))(a1);
}

uint64_t CloudManager.handleSentRecordZoneChanges(_:syncEngine:)(uint64_t a1, uint64_t a2)
{
  v3[32] = a2;
  v3[33] = v2;
  v3[31] = a1;
  v3[34] = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CloudKit12CKSyncEngineC5StateC13SerializationVSgMd);
  v3[35] = swift_task_alloc();
  v4 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
  v3[36] = v4;
  v3[37] = *(v4 - 8);
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[40] = v5;
  v3[41] = *(v5 - 8);
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v6 = type metadata accessor for CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave();
  v3[48] = v6;
  v3[49] = *(v6 - 8);
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();
  v3[56] = swift_task_alloc();

  return MEMORY[0x2822009F8](CloudManager.handleSentRecordZoneChanges(_:syncEngine:), v2, 0);
}

uint64_t CloudManager.handleSentRecordZoneChanges(_:syncEngine:)()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 248);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys23CustomStringConvertible_pSgGMd);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21658CA50;
  v5 = type metadata accessor for CKSyncEngine.Event.SentRecordZoneChanges();
  *(v4 + 56) = v5;
  *(v4 + 64) = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type CKSyncEngine.Event.SentRecordZoneChanges and conformance CKSyncEngine.Event.SentRecordZoneChanges, MEMORY[0x277CBBD30]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v4 + 32));
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v3, v5);
  static CloudLog.LogBegin(_:_:)(v4, "handleSentRecordZoneChanges(_:syncEngine:)", 42, 2, v1, &protocol witness table for CloudManager);

  v7 = OBJC_IVAR____TtC9MomentsUI12CloudManager_cloudModel;
  *(v0 + 456) = OBJC_IVAR____TtC9MomentsUI12CloudManager_cloudModel;
  v8 = (v2 + v7);
  swift_beginAccess();
  v9 = *v8;
  *(v0 + 464) = v8[1];
  v198 = v9;
  v10 = swift_unknownObjectRetain();
  v11 = v3;
  v12 = MEMORY[0x21CE917E0](v10);
  *(v0 + 472) = v12;
  if (v12 >> 62)
  {
    v13 = __CocoaSet.count.getter();
    *(v0 + 480) = v13;
    if (v13)
    {
      goto LABEL_3;
    }

    goto LABEL_11;
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  *(v0 + 480) = v13;
  if (!v13)
  {
LABEL_11:

    v23 = MEMORY[0x21CE917D0](v22);
    *(v0 + 520) = v23;
    v24 = *(v23 + 16);
    *(v0 + 528) = v24;
    if (!v24)
    {
LABEL_55:

      if (*(MEMORY[0x277D84F90] + 16))
      {
        CKSyncEngine.state.getter();
        v122._rawValue = MEMORY[0x277D84F90];
        CKSyncEngine.State.add(pendingDatabaseChanges:)(MEMORY[0x277D84F90]);

        CKSyncEngine.state.getter();
        CKSyncEngine.State.add(pendingRecordZoneChanges:)(v122);
      }

      v123 = *(v0 + 272);
      swift_unknownObjectRelease();
      static CloudLog.LogEnd(_:)("handleSentRecordZoneChanges(_:syncEngine:)", 42, 2, v123, &protocol witness table for CloudManager);

      v124 = *(v0 + 8);

      return v124();
    }

    v25 = 0;
    v26 = *(v0 + 392);
    *(v0 + 744) = *(v26 + 80);
    v27 = MEMORY[0x277CBBC68];
    *(v0 + 536) = *(v26 + 72);
    *(v0 + 544) = *(v26 + 16);
    *(v0 + 748) = *v27;
    while (1)
    {
      *(v0 + 568) = MEMORY[0x277D84F90];
      *(v0 + 560) = v25;
      *(v0 + 552) = v198;
      v33 = *(v0 + 544);
      v34 = *(v0 + 448);
      v35 = *(v0 + 384);
      v36 = *(v0 + 520) + ((*(v0 + 744) + 32) & ~*(v0 + 744)) + *(v0 + 536) * v25;
      *(v0 + 576) = (*(v0 + 392) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v37 = v33(v34, v36, v35);
      v38 = MEMORY[0x21CE917B0](v37);
      *(v0 + 584) = v38;
      v39 = MEMORY[0x21CE917A0]();
      *(v0 + 192) = v39;
      type metadata accessor for related decl 'e' for CKErrorCode(0);
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type related decl 'e' for CKErrorCode and conformance related decl 'e' for CKErrorCode, type metadata accessor for related decl 'e' for CKErrorCode);
      _BridgedStoredNSError.code.getter();

      v40 = *(v0 + 200);
      if (v40 <= 13)
      {
        if (v40 <= 5)
        {
          if ((v40 - 3) >= 2)
          {
            goto LABEL_50;
          }
        }

        else if (v40 != 6 && v40 != 9)
        {
          if (v40 == 11)
          {
            v125 = *(v0 + 748);
            v127 = *(v0 + 296);
            v126 = *(v0 + 304);
            v128 = *(v0 + 288);
            *v126 = [v38 recordID];
            (*(v127 + 104))(v126, v125, v128);
            v11 = MEMORY[0x277D84F90];
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              goto LABEL_83;
            }

LABEL_61:
            v131 = v11[2];
            v130 = v11[3];
            if (v131 >= v130 >> 1)
            {
              v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v130 > 1, v131 + 1, 1, v11);
            }

            v133 = *(v0 + 296);
            v132 = *(v0 + 304);
            v134 = *(v0 + 288);
            v11[2] = v131 + 1;
            (*(v133 + 32))(v11 + ((*(v133 + 80) + 32) & ~*(v133 + 80)) + *(v133 + 72) * v131, v132, v134);
            *(v0 + 712) = v11;
            v135 = *(v0 + 464);
            v136 = [*(v0 + 584) recordID];
            *(v0 + 720) = v136;
            ObjectType = swift_getObjectType();
            *(v0 + 208) = v198;
            v138 = *(v135 + 8);
            v208 = (*(v138 + 192) + **(v138 + 192));
            v139 = swift_task_alloc();
            *(v0 + 728) = v139;
            *v139 = v0;
            v139[1] = CloudManager.handleSentRecordZoneChanges(_:syncEngine:);
            v140 = v136;
            v141 = ObjectType;
            v142 = v138;
            v143 = v208;

            return v143(v140, v141, v142);
          }

          goto LABEL_50;
        }
      }

      else if (v40 <= 22)
      {
        if (v40 == 14)
        {
          v77 = MEMORY[0x21CE917A0]();
          v78 = related decl 'e' for CKErrorCode.serverRecord.getter();
          *(v0 + 592) = v78;

          if (v78)
          {
            v170 = (*(v0 + 264) + *(v0 + 456));
            v171 = *v170;
            *(v0 + 600) = *v170;
            v172 = v170[1];
            v173 = swift_getObjectType();
            *(v0 + 608) = v173;
            *(v0 + 232) = v171;
            swift_unknownObjectRetain_n();
            v174 = [v38 recordID];
            *(v0 + 616) = v174;
            v175 = *(v172 + 8);
            *(v0 + 624) = v175;
            v210 = (*(v175 + 152) + **(v175 + 152));
            v176 = swift_task_alloc();
            *(v0 + 632) = v176;
            *v176 = v0;
            v176[1] = CloudManager.handleSentRecordZoneChanges(_:syncEngine:);
            v140 = v174;
            v141 = v173;
            v142 = v175;
            v143 = v210;

            return v143(v140, v141, v142);
          }

          if (one-time initialization token for Log != -1)
          {
            swift_once();
          }

          v204 = *(v0 + 544);
          v79 = *(v0 + 448);
          v80 = *(v0 + 432);
          v81 = *(v0 + 384);
          v82 = *(v0 + 368);
          v83 = *(v0 + 320);
          v84 = *(v0 + 328);
          v85 = __swift_project_value_buffer(v83, static CloudManager.Log);
          swift_beginAccess();
          (*(v84 + 16))(v82, v85, v83);
          v204(v80, v79, v81);
          v86 = Logger.logObject.getter();
          v87 = static os_log_type_t.error.getter();
          v88 = os_log_type_enabled(v86, v87);
          v89 = *(v0 + 448);
          v90 = *(v0 + 432);
          v91 = *(v0 + 384);
          v92 = *(v0 + 392);
          v93 = *(v0 + 368);
          v94 = *(v0 + 328);
          v205 = *(v0 + 320);
          if (v88)
          {
            v196 = *(v0 + 448);
            v95 = swift_slowAlloc();
            v191 = v91;
            v96 = swift_slowAlloc();
            *v95 = 138412290;
            MEMORY[0x21CE917A0]();
            v193 = v93;
            v97 = _swift_stdlib_bridgeErrorToNSError();
            v98 = *(v92 + 8);
            v98(v90, v191);
            *(v95 + 4) = v97;
            *v96 = v97;
            _os_log_impl(&dword_21607C000, v86, v87, "No server record for conflict %@", v95, 0xCu);
            outlined destroy of UTType?(v96, &_sSo8NSObjectCSgMd);
            MEMORY[0x21CE94770](v96, -1, -1);
            MEMORY[0x21CE94770](v95, -1, -1);

            (*(v94 + 8))(v193, v205);
            v98(v196, v191);
          }

          else
          {

            v101 = *(v92 + 8);
            v101(v90, v91);
            (*(v94 + 8))(v93, v205);
            v101(v89, v91);
          }

          goto LABEL_14;
        }

        if (v40 != 20)
        {
          if (v40 == 21)
          {
            if (one-time initialization token for Log != -1)
            {
              swift_once();
            }

            v144 = *(v0 + 544);
            v145 = *(v0 + 448);
            v146 = *(v0 + 424);
            v147 = *(v0 + 384);
            v148 = *(v0 + 360);
            v149 = *(v0 + 320);
            v150 = *(v0 + 328);
            v151 = __swift_project_value_buffer(v149, static CloudManager.Log);
            swift_beginAccess();
            (*(v150 + 16))(v148, v151, v149);
            v144(v146, v145, v147);
            v152 = Logger.logObject.getter();
            v153 = static os_log_type_t.error.getter();
            v154 = os_log_type_enabled(v152, v153);
            v155 = *(v0 + 424);
            v156 = *(v0 + 384);
            v157 = *(v0 + 392);
            if (v154)
            {
              v158 = swift_slowAlloc();
              v159 = swift_slowAlloc();
              *v158 = 138412290;
              MEMORY[0x21CE917A0]();
              v160 = _swift_stdlib_bridgeErrorToNSError();
              v161 = *(v157 + 8);
              v161(v155, v156);
              *(v158 + 4) = v160;
              *v159 = v160;
              _os_log_impl(&dword_21607C000, v152, v153, "Invalid change token, resetting %@", v158, 0xCu);
              outlined destroy of UTType?(v159, &_sSo8NSObjectCSgMd);
              MEMORY[0x21CE94770](v159, -1, -1);
              MEMORY[0x21CE94770](v158, -1, -1);
            }

            else
            {

              v161 = *(v157 + 8);
              v161(v155, v156);
            }

            *(v0 + 680) = v161;
            v177 = *(v0 + 280);
            v178 = (*(v0 + 264) + *(v0 + 456));
            (*(*(v0 + 328) + 8))(*(v0 + 360), *(v0 + 320));
            v179 = v178[1];
            v180 = swift_getObjectType();
            v181 = type metadata accessor for CKSyncEngine.State.Serialization();
            (*(*(v181 - 8) + 56))(v177, 1, 1, v181);
            v182 = *(v179 + 24);
            swift_unknownObjectRetain();
            v182(v177, v180, v179);
            swift_unknownObjectRelease();
            v183 = *v178;
            v184 = v178[1];
            *(v0 + 688) = v184;
            v185 = swift_getObjectType();
            *(v0 + 696) = v185;
            *(v0 + 216) = v183;
            v186 = *(v184 + 8);
            v187 = *(v186 + 112);
            swift_unknownObjectRetain();
            v199 = (v187 + *v187);
            v188 = swift_task_alloc();
            *(v0 + 704) = v188;
            *v188 = v0;
            v188[1] = CloudManager.handleSentRecordZoneChanges(_:syncEngine:);

            return v199(v185, v186);
          }

LABEL_50:
          v206 = v38;
          if (one-time initialization token for Log != -1)
          {
            swift_once();
          }

          v102 = *(v0 + 544);
          v103 = *(v0 + 448);
          v104 = *(v0 + 400);
          v105 = *(v0 + 384);
          v107 = *(v0 + 328);
          v106 = *(v0 + 336);
          v108 = *(v0 + 320);
          v109 = __swift_project_value_buffer(v108, static CloudManager.Log);
          swift_beginAccess();
          (*(v107 + 16))(v106, v109, v108);
          v102(v104, v103, v105);
          v110 = v206;
          v111 = Logger.logObject.getter();
          v112 = static os_log_type_t.fault.getter();

          v113 = os_log_type_enabled(v111, v112);
          v71 = *(v0 + 448);
          v115 = *(v0 + 392);
          v114 = *(v0 + 400);
          v74 = *(v0 + 384);
          v116 = *(v0 + 328);
          v207 = *(v0 + 336);
          v197 = *(v0 + 320);
          if (v113)
          {
            v117 = swift_slowAlloc();
            loga = v74;
            v118 = swift_slowAlloc();
            *v117 = 138412546;
            v119 = [v110 recordID];
            *(v117 + 4) = v119;
            *v118 = v119;
            *(v117 + 12) = 2112;
            MEMORY[0x21CE917A0]();
            v194 = v71;
            v120 = _swift_stdlib_bridgeErrorToNSError();
            v121 = *(v115 + 8);
            v121(v114, loga);
            *(v117 + 14) = v120;
            v118[1] = v120;
            _os_log_impl(&dword_21607C000, v111, v112, "Unknown error saving record %@: %@", v117, 0x16u);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
            swift_arrayDestroy();
            MEMORY[0x21CE94770](v118, -1, -1);
            MEMORY[0x21CE94770](v117, -1, -1);

            (*(v116 + 8))(v207, v197);
            v121(v194, loga);
            goto LABEL_14;
          }

          v76 = *(v115 + 8);
          v76(v114, v74);
          (*(v116 + 8))(v207, v197);
          goto LABEL_39;
        }
      }

      else
      {
        if (v40 > 24)
        {
          switch(v40)
          {
            case 25:
              v201 = v38;
              if (one-time initialization token for Log != -1)
              {
                swift_once();
              }

              v41 = *(v0 + 544);
              v42 = *(v0 + 448);
              v43 = *(v0 + 408);
              v44 = *(v0 + 384);
              v45 = *(v0 + 344);
              v46 = *(v0 + 320);
              v47 = *(v0 + 328);
              v48 = __swift_project_value_buffer(v46, static CloudManager.Log);
              swift_beginAccess();
              (*(v47 + 16))(v45, v48, v46);
              v41(v43, v42, v44);
              v49 = Logger.logObject.getter();
              v50 = static os_log_type_t.error.getter();
              v51 = os_log_type_enabled(v49, v50);
              v52 = *(v0 + 408);
              v53 = *(v0 + 384);
              v54 = *(v0 + 392);
              if (v51)
              {
                v55 = swift_slowAlloc();
                v56 = swift_slowAlloc();
                *v55 = 138412290;
                MEMORY[0x21CE917A0]();
                v57 = _swift_stdlib_bridgeErrorToNSError();
                v58 = *(v54 + 8);
                v58(v52, v53);
                *(v55 + 4) = v57;
                *v56 = v57;
                _os_log_impl(&dword_21607C000, v49, v50, "Quota exceeded %@", v55, 0xCu);
                outlined destroy of UTType?(v56, &_sSo8NSObjectCSgMd);
                MEMORY[0x21CE94770](v56, -1, -1);
                MEMORY[0x21CE94770](v55, -1, -1);
              }

              else
              {

                v58 = *(v54 + 8);
                v58(v52, v53);
              }

              v99 = *(v0 + 448);
              v100 = *(v0 + 384);
              (*(*(v0 + 328) + 8))(*(v0 + 344), *(v0 + 320));
              swift_getKeyPath();
              swift_getKeyPath();
              *(v0 + 752) = 1;

              static Published.subscript.setter();

              v58(v99, v100);
              goto LABEL_14;
            case 26:
              v162 = 0;
              goto LABEL_72;
            case 28:
              v162 = 1;
LABEL_72:
              v163 = *(v0 + 464);
              v164 = [v38 recordID];
              v165 = [v164 zoneID];

              v166 = [objc_allocWithZone(MEMORY[0x277CBC5E8]) initWithZoneID_];
              *(v0 + 656) = v166;

              v167 = swift_getObjectType();
              *(v0 + 224) = v198;
              v168 = *(v163 + 8);
              v209 = (*(v168 + 184) + **(v168 + 184));
              v169 = swift_task_alloc();
              *(v0 + 664) = v169;
              *v169 = v0;
              v169[1] = CloudManager.handleSentRecordZoneChanges(_:syncEngine:);

              return v209(v166, v38, v162, v167, v168);
          }

          goto LABEL_50;
        }

        if (v40 != 23)
        {
          goto LABEL_50;
        }
      }

      v202 = v38;
      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v59 = *(v0 + 544);
      v60 = *(v0 + 448);
      v61 = *(v0 + 416);
      v62 = *(v0 + 384);
      v63 = *(v0 + 352);
      v64 = *(v0 + 320);
      v65 = *(v0 + 328);
      v66 = __swift_project_value_buffer(v64, static CloudManager.Log);
      swift_beginAccess();
      (*(v65 + 16))(v63, v66, v64);
      v59(v61, v60, v62);
      v67 = v202;
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.debug.getter();

      v70 = os_log_type_enabled(v68, v69);
      v71 = *(v0 + 448);
      v72 = *(v0 + 416);
      v74 = *(v0 + 384);
      v73 = *(v0 + 392);
      v203 = *(v0 + 352);
      v75 = *(v0 + 328);
      v195 = *(v0 + 320);
      if (!v70)
      {

        v76 = *(v73 + 8);
        v76(v72, v74);
        (*(v75 + 8))(v203, v195);
LABEL_39:
        v76(v71, v74);
        goto LABEL_14;
      }

      v28 = swift_slowAlloc();
      log = v74;
      v29 = swift_slowAlloc();
      *v28 = 138412546;
      v30 = [v67 recordID];
      *(v28 + 4) = v30;
      *v29 = v30;
      *(v28 + 12) = 2112;
      MEMORY[0x21CE917A0]();
      v192 = v71;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      v32 = *(v73 + 8);
      v32(v72, log);
      *(v28 + 14) = v31;
      v29[1] = v31;
      _os_log_impl(&dword_21607C000, v68, v69, "Retryable error saving %@: %@", v28, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v29, -1, -1);
      MEMORY[0x21CE94770](v28, -1, -1);

      (*(v75 + 8))(v203, v195);
      v32(v192, log);
LABEL_14:
      v25 = *(v0 + 560) + 1;
      if (v25 == *(v0 + 528))
      {
        goto LABEL_55;
      }
    }
  }

LABEL_3:
  if (v13 < 1)
  {
    __break(1u);
LABEL_83:
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11[2] + 1, 1, v11);
    goto LABEL_61;
  }

  *(v0 + 488) = 0;
  v14 = *(v0 + 472);
  if ((v14 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x21CE93180](0);
  }

  else
  {
    v15 = *(v14 + 32);
  }

  v16 = v15;
  *(v0 + 496) = v15;
  v17 = *(v0 + 464);
  v18 = swift_getObjectType();
  *(v0 + 184) = v198;
  v19 = *(v17 + 8);
  v200 = (*(v19 + 176) + **(v19 + 176));
  v20 = swift_task_alloc();
  *(v0 + 504) = v20;
  *v20 = v0;
  v20[1] = CloudManager.handleSentRecordZoneChanges(_:syncEngine:);

  return v200(v16, 0, v18, v19);
}

{
  v1 = *v0;
  v2 = *(*v0 + 264);

  *(v1 + 512) = *(v1 + 184);

  return MEMORY[0x2822009F8](CloudManager.handleSentRecordZoneChanges(_:syncEngine:), v2, 0);
}

{
  v1 = *(v0 + 488);
  v2 = *(v0 + 480);

  v186 = *(v0 + 512);
  if (v1 + 1 != v2)
  {
    v103 = *(v0 + 488) + 1;
    *(v0 + 488) = v103;
    v104 = *(v0 + 472);
    if ((v104 & 0xC000000000000001) != 0)
    {
      v105 = MEMORY[0x21CE93180]();
    }

    else
    {
      v105 = *(v104 + 8 * v103 + 32);
    }

    v110 = v105;
    *(v0 + 496) = v105;
    v111 = *(v0 + 464);
    ObjectType = swift_getObjectType();
    *(v0 + 184) = v186;
    v113 = *(v111 + 8);
    v198 = (*(v113 + 176) + **(v113 + 176));
    v114 = swift_task_alloc();
    *(v0 + 504) = v114;
    *v114 = v0;
    v114[1] = CloudManager.handleSentRecordZoneChanges(_:syncEngine:);

    return v198(v110, 0, ObjectType, v113);
  }

  v4 = MEMORY[0x21CE917D0](v3);
  *(v0 + 520) = v4;
  v5 = *(v4 + 16);
  *(v0 + 528) = v5;
  if (!v5)
  {
LABEL_48:

    if (*(MEMORY[0x277D84F90] + 16))
    {
      CKSyncEngine.state.getter();
      v106._rawValue = MEMORY[0x277D84F90];
      CKSyncEngine.State.add(pendingDatabaseChanges:)(MEMORY[0x277D84F90]);

      CKSyncEngine.state.getter();
      CKSyncEngine.State.add(pendingRecordZoneChanges:)(v106);
    }

    v107 = *(v0 + 272);
    swift_unknownObjectRelease();
    static CloudLog.LogEnd(_:)("handleSentRecordZoneChanges(_:syncEngine:)", 42, 2, v107, &protocol witness table for CloudManager);

    v108 = *(v0 + 8);

    return v108();
  }

  v6 = 0;
  v7 = *(v0 + 392);
  *(v0 + 744) = *(v7 + 80);
  v8 = MEMORY[0x277CBBC68];
  *(v0 + 536) = *(v7 + 72);
  *(v0 + 544) = *(v7 + 16);
  *(v0 + 748) = *v8;
  while (1)
  {
    *(v0 + 568) = MEMORY[0x277D84F90];
    *(v0 + 560) = v6;
    *(v0 + 552) = v186;
    v14 = *(v0 + 544);
    v15 = *(v0 + 448);
    v16 = *(v0 + 384);
    v17 = *(v0 + 520) + ((*(v0 + 744) + 32) & ~*(v0 + 744)) + *(v0 + 536) * v6;
    *(v0 + 576) = (*(v0 + 392) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v18 = v14(v15, v17, v16);
    v19 = MEMORY[0x21CE917B0](v18);
    *(v0 + 584) = v19;
    v20 = MEMORY[0x21CE917A0]();
    *(v0 + 192) = v20;
    type metadata accessor for related decl 'e' for CKErrorCode(0);
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type related decl 'e' for CKErrorCode and conformance related decl 'e' for CKErrorCode, type metadata accessor for related decl 'e' for CKErrorCode);
    _BridgedStoredNSError.code.getter();

    v21 = *(v0 + 200);
    if (v21 > 13)
    {
      break;
    }

    if (v21 <= 5)
    {
      if ((v21 - 3) >= 2)
      {
        goto LABEL_41;
      }
    }

    else if (v21 != 6 && v21 != 9)
    {
      if (v21 == 11)
      {
        v115 = *(v0 + 748);
        v117 = *(v0 + 296);
        v116 = *(v0 + 304);
        v118 = *(v0 + 288);
        *v116 = [v19 recordID];
        (*(v117 + 104))(v116, v115, v118);
        v119 = MEMORY[0x277D84F90];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v119 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v119[2] + 1, 1, v119);
        }

        v122 = v119[2];
        v121 = v119[3];
        if (v122 >= v121 >> 1)
        {
          v119 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v121 > 1, v122 + 1, 1, v119);
        }

        v124 = *(v0 + 296);
        v123 = *(v0 + 304);
        v125 = *(v0 + 288);
        v119[2] = v122 + 1;
        (*(v124 + 32))(v119 + ((*(v124 + 80) + 32) & ~*(v124 + 80)) + *(v124 + 72) * v122, v123, v125);
        *(v0 + 712) = v119;
        v126 = *(v0 + 464);
        v127 = [*(v0 + 584) recordID];
        *(v0 + 720) = v127;
        v128 = swift_getObjectType();
        *(v0 + 208) = v186;
        v129 = *(v126 + 8);
        v199 = (*(v129 + 192) + **(v129 + 192));
        v130 = swift_task_alloc();
        *(v0 + 728) = v130;
        *v130 = v0;
        v130[1] = CloudManager.handleSentRecordZoneChanges(_:syncEngine:);
        v131 = v127;
        v132 = v128;
        v133 = v129;
        v134 = v199;

        return v134(v131, v132, v133);
      }

LABEL_41:
      v196 = v19;
      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v83 = *(v0 + 544);
      v84 = *(v0 + 448);
      v85 = *(v0 + 400);
      v86 = *(v0 + 384);
      v88 = *(v0 + 328);
      v87 = *(v0 + 336);
      v89 = *(v0 + 320);
      v90 = __swift_project_value_buffer(v89, static CloudManager.Log);
      swift_beginAccess();
      (*(v88 + 16))(v87, v90, v89);
      v83(v85, v84, v86);
      v91 = v196;
      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.fault.getter();

      v94 = os_log_type_enabled(v92, v93);
      v52 = *(v0 + 448);
      v96 = *(v0 + 392);
      v95 = *(v0 + 400);
      v55 = *(v0 + 384);
      v97 = *(v0 + 328);
      v197 = *(v0 + 336);
      v189 = *(v0 + 320);
      if (v94)
      {
        v98 = swift_slowAlloc();
        loga = v55;
        v99 = swift_slowAlloc();
        *v98 = 138412546;
        v100 = [v91 recordID];
        *(v98 + 4) = v100;
        *v99 = v100;
        *(v98 + 12) = 2112;
        MEMORY[0x21CE917A0]();
        v185 = v52;
        v101 = _swift_stdlib_bridgeErrorToNSError();
        v102 = *(v96 + 8);
        v102(v95, loga);
        *(v98 + 14) = v101;
        v99[1] = v101;
        _os_log_impl(&dword_21607C000, v92, v93, "Unknown error saving record %@: %@", v98, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v99, -1, -1);
        MEMORY[0x21CE94770](v98, -1, -1);

        (*(v97 + 8))(v197, v189);
        v102(v185, loga);
        goto LABEL_5;
      }

      v57 = *(v96 + 8);
      v57(v95, v55);
      (*(v97 + 8))(v197, v189);
      goto LABEL_30;
    }

LABEL_26:
    v192 = v19;
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v40 = *(v0 + 544);
    v41 = *(v0 + 448);
    v42 = *(v0 + 416);
    v43 = *(v0 + 384);
    v44 = *(v0 + 352);
    v45 = *(v0 + 320);
    v46 = *(v0 + 328);
    v47 = __swift_project_value_buffer(v45, static CloudManager.Log);
    swift_beginAccess();
    (*(v46 + 16))(v44, v47, v45);
    v40(v42, v41, v43);
    v48 = v192;
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();

    v51 = os_log_type_enabled(v49, v50);
    v52 = *(v0 + 448);
    v53 = *(v0 + 416);
    v55 = *(v0 + 384);
    v54 = *(v0 + 392);
    v193 = *(v0 + 352);
    v56 = *(v0 + 328);
    v187 = *(v0 + 320);
    if (!v51)
    {

      v57 = *(v54 + 8);
      v57(v53, v55);
      (*(v56 + 8))(v193, v187);
LABEL_30:
      v57(v52, v55);
      goto LABEL_5;
    }

    v9 = swift_slowAlloc();
    log = v55;
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    v11 = [v48 recordID];
    *(v9 + 4) = v11;
    *v10 = v11;
    *(v9 + 12) = 2112;
    MEMORY[0x21CE917A0]();
    v183 = v52;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    v13 = *(v54 + 8);
    v13(v53, log);
    *(v9 + 14) = v12;
    v10[1] = v12;
    _os_log_impl(&dword_21607C000, v49, v50, "Retryable error saving %@: %@", v9, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v10, -1, -1);
    MEMORY[0x21CE94770](v9, -1, -1);

    (*(v56 + 8))(v193, v187);
    v13(v183, log);
LABEL_5:
    v6 = *(v0 + 560) + 1;
    if (v6 == *(v0 + 528))
    {
      goto LABEL_48;
    }
  }

  if (v21 <= 22)
  {
    if (v21 == 14)
    {
      v58 = MEMORY[0x21CE917A0]();
      v59 = related decl 'e' for CKErrorCode.serverRecord.getter();
      *(v0 + 592) = v59;

      if (!v59)
      {
        if (one-time initialization token for Log != -1)
        {
          swift_once();
        }

        v194 = *(v0 + 544);
        v60 = *(v0 + 448);
        v61 = *(v0 + 432);
        v62 = *(v0 + 384);
        v63 = *(v0 + 368);
        v64 = *(v0 + 320);
        v65 = *(v0 + 328);
        v66 = __swift_project_value_buffer(v64, static CloudManager.Log);
        swift_beginAccess();
        (*(v65 + 16))(v63, v66, v64);
        v194(v61, v60, v62);
        v67 = Logger.logObject.getter();
        v68 = static os_log_type_t.error.getter();
        v69 = os_log_type_enabled(v67, v68);
        v70 = *(v0 + 448);
        v71 = *(v0 + 432);
        v72 = *(v0 + 384);
        v73 = *(v0 + 392);
        v74 = *(v0 + 368);
        v75 = *(v0 + 328);
        v195 = *(v0 + 320);
        if (v69)
        {
          v188 = *(v0 + 448);
          v76 = swift_slowAlloc();
          v182 = v72;
          v77 = swift_slowAlloc();
          *v76 = 138412290;
          MEMORY[0x21CE917A0]();
          v184 = v74;
          v78 = _swift_stdlib_bridgeErrorToNSError();
          v79 = *(v73 + 8);
          v79(v71, v182);
          *(v76 + 4) = v78;
          *v77 = v78;
          _os_log_impl(&dword_21607C000, v67, v68, "No server record for conflict %@", v76, 0xCu);
          outlined destroy of UTType?(v77, &_sSo8NSObjectCSgMd);
          MEMORY[0x21CE94770](v77, -1, -1);
          MEMORY[0x21CE94770](v76, -1, -1);

          (*(v75 + 8))(v184, v195);
          v79(v188, v182);
        }

        else
        {

          v82 = *(v73 + 8);
          v82(v71, v72);
          (*(v75 + 8))(v74, v195);
          v82(v70, v72);
        }

        goto LABEL_5;
      }

      v161 = (*(v0 + 264) + *(v0 + 456));
      v162 = *v161;
      *(v0 + 600) = *v161;
      v163 = v161[1];
      v164 = swift_getObjectType();
      *(v0 + 608) = v164;
      *(v0 + 232) = v162;
      swift_unknownObjectRetain_n();
      v165 = [v19 recordID];
      *(v0 + 616) = v165;
      v166 = *(v163 + 8);
      *(v0 + 624) = v166;
      v201 = (*(v166 + 152) + **(v166 + 152));
      v167 = swift_task_alloc();
      *(v0 + 632) = v167;
      *v167 = v0;
      v167[1] = CloudManager.handleSentRecordZoneChanges(_:syncEngine:);
      v131 = v165;
      v132 = v164;
      v133 = v166;
      v134 = v201;

      return v134(v131, v132, v133);
    }

    if (v21 != 20)
    {
      if (v21 == 21)
      {
        if (one-time initialization token for Log != -1)
        {
          swift_once();
        }

        v135 = *(v0 + 544);
        v136 = *(v0 + 448);
        v137 = *(v0 + 424);
        v138 = *(v0 + 384);
        v139 = *(v0 + 360);
        v140 = *(v0 + 320);
        v141 = *(v0 + 328);
        v142 = __swift_project_value_buffer(v140, static CloudManager.Log);
        swift_beginAccess();
        (*(v141 + 16))(v139, v142, v140);
        v135(v137, v136, v138);
        v143 = Logger.logObject.getter();
        v144 = static os_log_type_t.error.getter();
        v145 = os_log_type_enabled(v143, v144);
        v146 = *(v0 + 424);
        v147 = *(v0 + 384);
        v148 = *(v0 + 392);
        if (v145)
        {
          v149 = swift_slowAlloc();
          v150 = swift_slowAlloc();
          *v149 = 138412290;
          MEMORY[0x21CE917A0]();
          v151 = _swift_stdlib_bridgeErrorToNSError();
          v152 = *(v148 + 8);
          v152(v146, v147);
          *(v149 + 4) = v151;
          *v150 = v151;
          _os_log_impl(&dword_21607C000, v143, v144, "Invalid change token, resetting %@", v149, 0xCu);
          outlined destroy of UTType?(v150, &_sSo8NSObjectCSgMd);
          MEMORY[0x21CE94770](v150, -1, -1);
          MEMORY[0x21CE94770](v149, -1, -1);
        }

        else
        {

          v152 = *(v148 + 8);
          v152(v146, v147);
        }

        *(v0 + 680) = v152;
        v168 = *(v0 + 280);
        v169 = (*(v0 + 264) + *(v0 + 456));
        (*(*(v0 + 328) + 8))(*(v0 + 360), *(v0 + 320));
        v170 = v169[1];
        v171 = swift_getObjectType();
        v172 = type metadata accessor for CKSyncEngine.State.Serialization();
        (*(*(v172 - 8) + 56))(v168, 1, 1, v172);
        v173 = *(v170 + 24);
        swift_unknownObjectRetain();
        v173(v168, v171, v170);
        swift_unknownObjectRelease();
        v174 = *v169;
        v175 = v169[1];
        *(v0 + 688) = v175;
        v176 = swift_getObjectType();
        *(v0 + 696) = v176;
        *(v0 + 216) = v174;
        v177 = *(v175 + 8);
        v178 = *(v177 + 112);
        swift_unknownObjectRetain();
        v190 = (v178 + *v178);
        v179 = swift_task_alloc();
        *(v0 + 704) = v179;
        *v179 = v0;
        v179[1] = CloudManager.handleSentRecordZoneChanges(_:syncEngine:);

        return v190(v176, v177);
      }

      goto LABEL_41;
    }

    goto LABEL_26;
  }

  if (v21 <= 24)
  {
    if (v21 != 23)
    {
      goto LABEL_41;
    }

    goto LABEL_26;
  }

  if (v21 == 25)
  {
    v191 = v19;
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 544);
    v23 = *(v0 + 448);
    v24 = *(v0 + 408);
    v25 = *(v0 + 384);
    v26 = *(v0 + 344);
    v27 = *(v0 + 320);
    v28 = *(v0 + 328);
    v29 = __swift_project_value_buffer(v27, static CloudManager.Log);
    swift_beginAccess();
    (*(v28 + 16))(v26, v29, v27);
    v22(v24, v23, v25);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 408);
    v34 = *(v0 + 384);
    v35 = *(v0 + 392);
    if (v32)
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      MEMORY[0x21CE917A0]();
      v38 = _swift_stdlib_bridgeErrorToNSError();
      v39 = *(v35 + 8);
      v39(v33, v34);
      *(v36 + 4) = v38;
      *v37 = v38;
      _os_log_impl(&dword_21607C000, v30, v31, "Quota exceeded %@", v36, 0xCu);
      outlined destroy of UTType?(v37, &_sSo8NSObjectCSgMd);
      MEMORY[0x21CE94770](v37, -1, -1);
      MEMORY[0x21CE94770](v36, -1, -1);
    }

    else
    {

      v39 = *(v35 + 8);
      v39(v33, v34);
    }

    v80 = *(v0 + 448);
    v81 = *(v0 + 384);
    (*(*(v0 + 328) + 8))(*(v0 + 344), *(v0 + 320));
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 752) = 1;

    static Published.subscript.setter();

    v39(v80, v81);
    goto LABEL_5;
  }

  if (v21 != 26)
  {
    if (v21 == 28)
    {
      v153 = 1;
      goto LABEL_70;
    }

    goto LABEL_41;
  }

  v153 = 0;
LABEL_70:
  v154 = *(v0 + 464);
  v155 = [v19 recordID];
  v156 = [v155 zoneID];

  v157 = [objc_allocWithZone(MEMORY[0x277CBC5E8]) initWithZoneID_];
  *(v0 + 656) = v157;

  v158 = swift_getObjectType();
  *(v0 + 224) = v186;
  v159 = *(v154 + 8);
  v200 = (*(v159 + 184) + **(v159 + 184));
  v160 = swift_task_alloc();
  *(v0 + 664) = v160;
  *v160 = v0;
  v160[1] = CloudManager.handleSentRecordZoneChanges(_:syncEngine:);

  return v200(v157, v19, v153, v158, v159);
}

{
  if (*(v0 + 753))
  {
    v1 = *(v0 + 624);
    *(v0 + 240) = *(v0 + 600);
    v2 = *(v0 + 592);
    v219 = (*(v1 + 176) + **(v1 + 176));
    v3 = swift_task_alloc();
    *(v0 + 640) = v3;
    *v3 = v0;
    v3[1] = CloudManager.handleSentRecordZoneChanges(_:syncEngine:);
    v4 = *(v0 + 624);
    v5 = *(v0 + 608);

    return v219(v2, 1, v5, v4);
  }

  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 544);
  v8 = *(v0 + 440);
  v9 = *(v0 + 448);
  v11 = *(v0 + 376);
  v10 = *(v0 + 384);
  v12 = *(v0 + 320);
  v13 = *(v0 + 328);
  v14 = __swift_project_value_buffer(v12, static CloudManager.Log);
  swift_beginAccess();
  (*(v13 + 16))(v11, v14, v12);
  v7(v8, v9, v10);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  v17 = os_log_type_enabled(v15, v16);
  v215 = *(v0 + 592);
  v18 = *(v0 + 584);
  v20 = *(v0 + 440);
  v19 = *(v0 + 448);
  v21 = *(v0 + 384);
  v22 = *(v0 + 392);
  v23 = *(v0 + 376);
  v24 = *(v0 + 328);
  v220 = *(v0 + 320);
  if (v17)
  {
    v213 = *(v0 + 376);
    v25 = swift_slowAlloc();
    v207 = v18;
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    MEMORY[0x21CE917A0]();
    v204 = v19;
    v27 = _swift_stdlib_bridgeErrorToNSError();
    v28 = *(v22 + 8);
    v28(v20, v21);
    *(v25 + 4) = v27;
    *v26 = v27;
    _os_log_impl(&dword_21607C000, v15, v16, "No local object for conflict %@", v25, 0xCu);
    outlined destroy of UTType?(v26, &_sSo8NSObjectCSgMd);
    MEMORY[0x21CE94770](v26, -1, -1);
    MEMORY[0x21CE94770](v25, -1, -1);

    swift_unknownObjectRelease();
    (*(v24 + 8))(v213, v220);
    v28(v204, v21);
  }

  else
  {
    swift_unknownObjectRelease();

    v29 = *(v22 + 8);
    v29(v20, v21);
    (*(v24 + 8))(v23, v220);
    v29(v19, v21);
  }

  v30 = *(v0 + 568);
  v216 = *(v0 + 552);
  v31 = *(v0 + 560) + 1;
  if (v31 == *(v0 + 528))
  {
LABEL_11:

    if (v30[2])
    {
      CKSyncEngine.state.getter();
      CKSyncEngine.State.add(pendingDatabaseChanges:)(MEMORY[0x277D84F90]);

      CKSyncEngine.state.getter();
      CKSyncEngine.State.add(pendingRecordZoneChanges:)(v30);
    }

    v32 = *(v0 + 272);
    swift_unknownObjectRelease();
    static CloudLog.LogEnd(_:)("handleSentRecordZoneChanges(_:syncEngine:)", 42, 2, v32, &protocol witness table for CloudManager);

    v33 = *(v0 + 8);

    return v33();
  }

  v214 = *(v0 + 568);
  while (1)
  {
    *(v0 + 568) = v30;
    *(v0 + 560) = v31;
    *(v0 + 552) = v216;
    v37 = *(v0 + 544);
    v38 = *(v0 + 448);
    v39 = *(v0 + 384);
    v40 = *(v0 + 520) + ((*(v0 + 744) + 32) & ~*(v0 + 744)) + *(v0 + 536) * v31;
    *(v0 + 576) = (*(v0 + 392) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v41 = v37(v38, v40, v39);
    v42 = MEMORY[0x21CE917B0](v41);
    *(v0 + 584) = v42;
    v43 = MEMORY[0x21CE917A0]();
    *(v0 + 192) = v43;
    type metadata accessor for related decl 'e' for CKErrorCode(0);
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type related decl 'e' for CKErrorCode and conformance related decl 'e' for CKErrorCode, type metadata accessor for related decl 'e' for CKErrorCode);
    _BridgedStoredNSError.code.getter();

    v44 = *(v0 + 200);
    v221 = v42;
    if (v44 > 13)
    {
      break;
    }

    if (v44 <= 5)
    {
      if ((v44 - 3) >= 2)
      {
        goto LABEL_55;
      }
    }

    else if (v44 != 6 && v44 != 9)
    {
      if (v44 == 11)
      {
        v138 = *(v0 + 748);
        v140 = *(v0 + 296);
        v139 = *(v0 + 304);
        v141 = *(v0 + 288);
        *v139 = [v42 recordID];
        (*(v140 + 104))(v139, v138, v141);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v30[2] + 1, 1, v30);
        }

        v144 = v30[2];
        v143 = v30[3];
        if (v144 >= v143 >> 1)
        {
          v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v143 > 1, v144 + 1, 1, v30);
        }

        v146 = *(v0 + 296);
        v145 = *(v0 + 304);
        v147 = *(v0 + 288);
        v30[2] = v144 + 1;
        (*(v146 + 32))(v30 + ((*(v146 + 80) + 32) & ~*(v146 + 80)) + *(v146 + 72) * v144, v145, v147);
        *(v0 + 712) = v30;
        v148 = *(v0 + 464);
        v149 = [*(v0 + 584) recordID];
        *(v0 + 720) = v149;
        ObjectType = swift_getObjectType();
        *(v0 + 208) = v216;
        v151 = *(v148 + 8);
        v223 = (*(v151 + 192) + **(v151 + 192));
        v152 = swift_task_alloc();
        *(v0 + 728) = v152;
        *v152 = v0;
        v152[1] = CloudManager.handleSentRecordZoneChanges(_:syncEngine:);
        v153 = v149;
        v154 = ObjectType;
        v155 = v151;
        v156 = v223;

        return v156(v153, v154, v155);
      }

LABEL_55:
      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v114 = *(v0 + 544);
      v115 = *(v0 + 448);
      v116 = *(v0 + 400);
      v117 = *(v0 + 384);
      v119 = *(v0 + 328);
      v118 = *(v0 + 336);
      v120 = *(v0 + 320);
      v121 = __swift_project_value_buffer(v120, static CloudManager.Log);
      swift_beginAccess();
      (*(v119 + 16))(v118, v121, v120);
      v114(v116, v115, v117);
      v122 = v221;
      v123 = Logger.logObject.getter();
      v124 = static os_log_type_t.fault.getter();

      v125 = os_log_type_enabled(v123, v124);
      v126 = *(v0 + 448);
      v128 = *(v0 + 392);
      v127 = *(v0 + 400);
      v129 = *(v0 + 384);
      v80 = *(v0 + 328);
      v130 = *(v0 + 336);
      v222 = *(v0 + 320);
      if (v125)
      {
        v210 = *(v0 + 448);
        v131 = swift_slowAlloc();
        v208 = v130;
        v132 = swift_slowAlloc();
        *v131 = 138412546;
        v133 = [v122 recordID];
        *(v131 + 4) = v133;
        *v132 = v133;
        *(v131 + 12) = 2112;
        MEMORY[0x21CE917A0]();
        v134 = _swift_stdlib_bridgeErrorToNSError();
        v135 = v129;
        v136 = v134;
        v205 = v122;
        v85 = *(v128 + 8);
        v137 = v127;
        v87 = v135;
        v85(v137);
        *(v131 + 14) = v136;
        v132[1] = v136;
        _os_log_impl(&dword_21607C000, v123, v124, "Unknown error saving record %@: %@", v131, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v132, -1, -1);
        MEMORY[0x21CE94770](v131, -1, -1);

        goto LABEL_44;
      }

      v88 = *(v128 + 8);
      v88(v127, v129);
      (*(v80 + 8))(v130, v222);
      v89 = v126;
      v90 = v129;
LABEL_46:
      v88(v89, v90);
      v30 = v214;
      goto LABEL_19;
    }

LABEL_40:
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v63 = *(v0 + 544);
    v64 = *(v0 + 448);
    v65 = *(v0 + 416);
    v66 = *(v0 + 384);
    v67 = *(v0 + 352);
    v68 = *(v0 + 320);
    v69 = *(v0 + 328);
    v70 = __swift_project_value_buffer(v68, static CloudManager.Log);
    swift_beginAccess();
    (*(v69 + 16))(v67, v70, v68);
    v63(v65, v64, v66);
    v71 = v221;
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.debug.getter();

    v74 = os_log_type_enabled(v72, v73);
    v75 = *(v0 + 448);
    v76 = *(v0 + 416);
    v78 = *(v0 + 384);
    v77 = *(v0 + 392);
    v79 = *(v0 + 352);
    v80 = *(v0 + 328);
    v222 = *(v0 + 320);
    if (!v74)
    {

      v88 = *(v77 + 8);
      v88(v76, v78);
      (*(v80 + 8))(v79, v222);
      v89 = v75;
      v90 = v78;
      goto LABEL_46;
    }

    v210 = *(v0 + 448);
    v81 = swift_slowAlloc();
    log = v78;
    v82 = swift_slowAlloc();
    *v81 = 138412546;
    v83 = [v71 recordID];
    *(v81 + 4) = v83;
    *v82 = v83;
    *(v81 + 12) = 2112;
    MEMORY[0x21CE917A0]();
    v205 = v71;
    v208 = v79;
    v84 = _swift_stdlib_bridgeErrorToNSError();
    v85 = *(v77 + 8);
    v86 = v76;
    v87 = log;
    (v85)(v86, log);
    *(v81 + 14) = v84;
    v82[1] = v84;
    _os_log_impl(&dword_21607C000, v72, v73, "Retryable error saving %@: %@", v81, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v82, -1, -1);
    MEMORY[0x21CE94770](v81, -1, -1);

LABEL_44:
    (*(v80 + 8))(v208, v222);
    (v85)(v210, v87);
    v30 = v214;
LABEL_19:
    v31 = *(v0 + 560) + 1;
    if (v31 == *(v0 + 528))
    {
      goto LABEL_11;
    }
  }

  if (v44 <= 22)
  {
    if (v44 == 14)
    {
      v91 = MEMORY[0x21CE917A0]();
      v92 = related decl 'e' for CKErrorCode.serverRecord.getter();
      *(v0 + 592) = v92;

      if (!v92)
      {
        if (one-time initialization token for Log != -1)
        {
          swift_once();
        }

        v211 = *(v0 + 544);
        v93 = *(v0 + 448);
        v94 = *(v0 + 432);
        v95 = *(v0 + 384);
        v96 = *(v0 + 368);
        v97 = *(v0 + 320);
        v98 = *(v0 + 328);
        v99 = __swift_project_value_buffer(v97, static CloudManager.Log);
        swift_beginAccess();
        (*(v98 + 16))(v96, v99, v97);
        v211(v94, v93, v95);
        v100 = Logger.logObject.getter();
        v101 = static os_log_type_t.error.getter();
        v102 = os_log_type_enabled(v100, v101);
        v103 = *(v0 + 448);
        v104 = *(v0 + 432);
        v105 = *(v0 + 384);
        v106 = *(v0 + 392);
        v107 = *(v0 + 368);
        v108 = *(v0 + 328);
        v212 = *(v0 + 320);
        if (v102)
        {
          v209 = *(v0 + 448);
          v109 = swift_slowAlloc();
          loga = v105;
          v110 = swift_slowAlloc();
          *v109 = 138412290;
          MEMORY[0x21CE917A0]();
          v206 = v107;
          v111 = _swift_stdlib_bridgeErrorToNSError();
          v112 = *(v106 + 8);
          v112(v104, loga);
          *(v109 + 4) = v111;
          *v110 = v111;
          _os_log_impl(&dword_21607C000, v100, v101, "No server record for conflict %@", v109, 0xCu);
          outlined destroy of UTType?(v110, &_sSo8NSObjectCSgMd);
          MEMORY[0x21CE94770](v110, -1, -1);
          MEMORY[0x21CE94770](v109, -1, -1);

          (*(v108 + 8))(v206, v212);
          v112(v209, loga);
        }

        else
        {

          v113 = *(v106 + 8);
          v113(v104, v105);
          (*(v108 + 8))(v107, v212);
          v113(v103, v105);
        }

        goto LABEL_19;
      }

      v183 = (*(v0 + 264) + *(v0 + 456));
      v184 = *v183;
      *(v0 + 600) = *v183;
      v185 = v183[1];
      v186 = swift_getObjectType();
      *(v0 + 608) = v186;
      *(v0 + 232) = v184;
      swift_unknownObjectRetain_n();
      v187 = [v42 recordID];
      *(v0 + 616) = v187;
      v188 = *(v185 + 8);
      *(v0 + 624) = v188;
      v224 = (*(v188 + 152) + **(v188 + 152));
      v189 = swift_task_alloc();
      *(v0 + 632) = v189;
      *v189 = v0;
      v189[1] = CloudManager.handleSentRecordZoneChanges(_:syncEngine:);
      v153 = v187;
      v154 = v186;
      v155 = v188;
      v156 = v224;

      return v156(v153, v154, v155);
    }

    if (v44 != 20)
    {
      if (v44 == 21)
      {
        if (one-time initialization token for Log != -1)
        {
          swift_once();
        }

        v157 = *(v0 + 544);
        v158 = *(v0 + 448);
        v159 = *(v0 + 424);
        v160 = *(v0 + 384);
        v161 = *(v0 + 360);
        v162 = *(v0 + 320);
        v163 = *(v0 + 328);
        v164 = __swift_project_value_buffer(v162, static CloudManager.Log);
        swift_beginAccess();
        (*(v163 + 16))(v161, v164, v162);
        v157(v159, v158, v160);
        v165 = Logger.logObject.getter();
        v166 = static os_log_type_t.error.getter();
        v167 = os_log_type_enabled(v165, v166);
        v168 = *(v0 + 424);
        v169 = *(v0 + 384);
        v170 = *(v0 + 392);
        if (v167)
        {
          v171 = swift_slowAlloc();
          v172 = swift_slowAlloc();
          *v171 = 138412290;
          MEMORY[0x21CE917A0]();
          v173 = _swift_stdlib_bridgeErrorToNSError();
          v174 = *(v170 + 8);
          v174(v168, v169);
          *(v171 + 4) = v173;
          *v172 = v173;
          _os_log_impl(&dword_21607C000, v165, v166, "Invalid change token, resetting %@", v171, 0xCu);
          outlined destroy of UTType?(v172, &_sSo8NSObjectCSgMd);
          MEMORY[0x21CE94770](v172, -1, -1);
          MEMORY[0x21CE94770](v171, -1, -1);
        }

        else
        {

          v174 = *(v170 + 8);
          v174(v168, v169);
        }

        *(v0 + 680) = v174;
        v190 = *(v0 + 280);
        v191 = (*(v0 + 264) + *(v0 + 456));
        (*(*(v0 + 328) + 8))(*(v0 + 360), *(v0 + 320));
        v192 = v191[1];
        v193 = swift_getObjectType();
        v194 = type metadata accessor for CKSyncEngine.State.Serialization();
        (*(*(v194 - 8) + 56))(v190, 1, 1, v194);
        v195 = *(v192 + 24);
        swift_unknownObjectRetain();
        v195(v190, v193, v192);
        swift_unknownObjectRelease();
        v196 = *v191;
        v197 = v191[1];
        *(v0 + 688) = v197;
        v198 = swift_getObjectType();
        *(v0 + 696) = v198;
        *(v0 + 216) = v196;
        v199 = *(v197 + 8);
        v200 = *(v199 + 112);
        swift_unknownObjectRetain();
        v218 = (v200 + *v200);
        v201 = swift_task_alloc();
        *(v0 + 704) = v201;
        *v201 = v0;
        v201[1] = CloudManager.handleSentRecordZoneChanges(_:syncEngine:);

        return v218(v198, v199);
      }

      goto LABEL_55;
    }

    goto LABEL_40;
  }

  if (v44 <= 24)
  {
    if (v44 != 23)
    {
      goto LABEL_55;
    }

    goto LABEL_40;
  }

  if (v44 == 25)
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v45 = *(v0 + 544);
    v46 = *(v0 + 448);
    v47 = *(v0 + 408);
    v48 = *(v0 + 384);
    v49 = *(v0 + 344);
    v50 = *(v0 + 320);
    v51 = *(v0 + 328);
    v52 = __swift_project_value_buffer(v50, static CloudManager.Log);
    swift_beginAccess();
    (*(v51 + 16))(v49, v52, v50);
    v45(v47, v46, v48);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    v55 = os_log_type_enabled(v53, v54);
    v56 = *(v0 + 408);
    v57 = *(v0 + 384);
    v58 = *(v0 + 392);
    if (v55)
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *v59 = 138412290;
      MEMORY[0x21CE917A0]();
      v61 = _swift_stdlib_bridgeErrorToNSError();
      v62 = *(v58 + 8);
      v62(v56, v57);
      *(v59 + 4) = v61;
      *v60 = v61;
      v34 = v62;
      _os_log_impl(&dword_21607C000, v53, v54, "Quota exceeded %@", v59, 0xCu);
      outlined destroy of UTType?(v60, &_sSo8NSObjectCSgMd);
      MEMORY[0x21CE94770](v60, -1, -1);
      MEMORY[0x21CE94770](v59, -1, -1);
    }

    else
    {

      v34 = *(v58 + 8);
      v34(v56, v57);
    }

    v30 = v214;
    v35 = *(v0 + 448);
    v36 = *(v0 + 384);
    (*(*(v0 + 328) + 8))(*(v0 + 344), *(v0 + 320));
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 752) = 1;

    static Published.subscript.setter();

    v34(v35, v36);
    goto LABEL_19;
  }

  if (v44 != 26)
  {
    if (v44 == 28)
    {
      v175 = 1;
      goto LABEL_73;
    }

    goto LABEL_55;
  }

  v175 = 0;
LABEL_73:
  v176 = *(v0 + 464);
  v177 = [v42 recordID];
  v178 = [v177 zoneID];

  v179 = [objc_allocWithZone(MEMORY[0x277CBC5E8]) initWithZoneID_];
  *(v0 + 656) = v179;

  v180 = swift_getObjectType();
  *(v0 + 224) = v216;
  v181 = *(v176 + 8);
  v217 = (*(v181 + 184) + **(v181 + 184));
  v182 = swift_task_alloc();
  *(v0 + 664) = v182;
  *v182 = v0;
  v182[1] = CloudManager.handleSentRecordZoneChanges(_:syncEngine:);

  return v217(v179, v42, v175, v180, v181);
}

{
  v1 = *v0;
  v2 = *(*v0 + 264);

  *(v1 + 648) = *(v1 + 240);

  return MEMORY[0x2822009F8](CloudManager.handleSentRecordZoneChanges(_:syncEngine:), v2, 0);
}

{
  v1 = *(v0 + 592);
  v2 = *(v0 + 584);
  v3 = *(v0 + 448);
  v4 = *(v0 + 384);
  v5 = *(v0 + 392);
  swift_unknownObjectRelease();

  (*(v5 + 8))(v3, v4);
  v6 = *(v0 + 568);
  v189 = *(v0 + 552);
  v7 = *(v0 + 560) + 1;
  if (v7 == *(v0 + 528))
  {
LABEL_2:

    if (v6[2])
    {
      CKSyncEngine.state.getter();
      CKSyncEngine.State.add(pendingDatabaseChanges:)(MEMORY[0x277D84F90]);

      CKSyncEngine.state.getter();
      CKSyncEngine.State.add(pendingRecordZoneChanges:)(v6);
    }

    v8 = *(v0 + 272);
    swift_unknownObjectRelease();
    static CloudLog.LogEnd(_:)("handleSentRecordZoneChanges(_:syncEngine:)", 42, 2, v8, &protocol witness table for CloudManager);

    v9 = *(v0 + 8);

    return v9();
  }

  v188 = *(v0 + 568);
  while (1)
  {
    *(v0 + 568) = v6;
    *(v0 + 560) = v7;
    *(v0 + 552) = v189;
    v14 = *(v0 + 544);
    v15 = *(v0 + 448);
    v16 = *(v0 + 384);
    v17 = *(v0 + 520) + ((*(v0 + 744) + 32) & ~*(v0 + 744)) + *(v0 + 536) * v7;
    *(v0 + 576) = (*(v0 + 392) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v18 = v14(v15, v17, v16);
    v19 = MEMORY[0x21CE917B0](v18);
    *(v0 + 584) = v19;
    v20 = MEMORY[0x21CE917A0]();
    *(v0 + 192) = v20;
    type metadata accessor for related decl 'e' for CKErrorCode(0);
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type related decl 'e' for CKErrorCode and conformance related decl 'e' for CKErrorCode, type metadata accessor for related decl 'e' for CKErrorCode);
    _BridgedStoredNSError.code.getter();

    v21 = *(v0 + 200);
    v192 = v19;
    if (v21 > 13)
    {
      break;
    }

    if (v21 <= 5)
    {
      if ((v21 - 3) >= 2)
      {
        goto LABEL_46;
      }
    }

    else if (v21 != 6 && v21 != 9)
    {
      if (v21 == 11)
      {
        v115 = *(v0 + 748);
        v117 = *(v0 + 296);
        v116 = *(v0 + 304);
        v118 = *(v0 + 288);
        *v116 = [v19 recordID];
        (*(v117 + 104))(v116, v115, v118);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
        }

        v121 = v6[2];
        v120 = v6[3];
        if (v121 >= v120 >> 1)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v120 > 1, v121 + 1, 1, v6);
        }

        v123 = *(v0 + 296);
        v122 = *(v0 + 304);
        v124 = *(v0 + 288);
        v6[2] = v121 + 1;
        (*(v123 + 32))(v6 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v121, v122, v124);
        *(v0 + 712) = v6;
        v125 = *(v0 + 464);
        v126 = [*(v0 + 584) recordID];
        *(v0 + 720) = v126;
        ObjectType = swift_getObjectType();
        *(v0 + 208) = v189;
        v128 = *(v125 + 8);
        v194 = (*(v128 + 192) + **(v128 + 192));
        v129 = swift_task_alloc();
        *(v0 + 728) = v129;
        *v129 = v0;
        v129[1] = CloudManager.handleSentRecordZoneChanges(_:syncEngine:);
        v130 = v126;
        v131 = ObjectType;
        v132 = v128;
        v133 = v194;

        return v133(v130, v131, v132);
      }

LABEL_46:
      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v91 = *(v0 + 544);
      v92 = *(v0 + 448);
      v93 = *(v0 + 400);
      v94 = *(v0 + 384);
      v96 = *(v0 + 328);
      v95 = *(v0 + 336);
      v97 = *(v0 + 320);
      v98 = __swift_project_value_buffer(v97, static CloudManager.Log);
      swift_beginAccess();
      (*(v96 + 16))(v95, v98, v97);
      v91(v93, v92, v94);
      v99 = v192;
      v100 = Logger.logObject.getter();
      v101 = static os_log_type_t.fault.getter();

      v102 = os_log_type_enabled(v100, v101);
      v103 = *(v0 + 448);
      v105 = *(v0 + 392);
      v104 = *(v0 + 400);
      v106 = *(v0 + 384);
      v57 = *(v0 + 328);
      v107 = *(v0 + 336);
      v193 = *(v0 + 320);
      if (v102)
      {
        v185 = *(v0 + 448);
        v108 = swift_slowAlloc();
        v183 = v107;
        v109 = swift_slowAlloc();
        *v108 = 138412546;
        v110 = [v99 recordID];
        *(v108 + 4) = v110;
        *v109 = v110;
        *(v108 + 12) = 2112;
        MEMORY[0x21CE917A0]();
        v111 = _swift_stdlib_bridgeErrorToNSError();
        v112 = v106;
        v113 = v111;
        v181 = v99;
        v62 = *(v105 + 8);
        v114 = v104;
        v64 = v112;
        v62(v114);
        *(v108 + 14) = v113;
        v109[1] = v113;
        _os_log_impl(&dword_21607C000, v100, v101, "Unknown error saving record %@: %@", v108, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v109, -1, -1);
        MEMORY[0x21CE94770](v108, -1, -1);

        goto LABEL_35;
      }

      v65 = *(v105 + 8);
      v65(v104, v106);
      (*(v57 + 8))(v107, v193);
      v66 = v103;
      v67 = v106;
LABEL_37:
      v65(v66, v67);
      v6 = v188;
      goto LABEL_10;
    }

LABEL_31:
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v40 = *(v0 + 544);
    v41 = *(v0 + 448);
    v42 = *(v0 + 416);
    v43 = *(v0 + 384);
    v44 = *(v0 + 352);
    v45 = *(v0 + 320);
    v46 = *(v0 + 328);
    v47 = __swift_project_value_buffer(v45, static CloudManager.Log);
    swift_beginAccess();
    (*(v46 + 16))(v44, v47, v45);
    v40(v42, v41, v43);
    v48 = v192;
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();

    v51 = os_log_type_enabled(v49, v50);
    v52 = *(v0 + 448);
    v53 = *(v0 + 416);
    v55 = *(v0 + 384);
    v54 = *(v0 + 392);
    v56 = *(v0 + 352);
    v57 = *(v0 + 328);
    v193 = *(v0 + 320);
    if (!v51)
    {

      v65 = *(v54 + 8);
      v65(v53, v55);
      (*(v57 + 8))(v56, v193);
      v66 = v52;
      v67 = v55;
      goto LABEL_37;
    }

    v185 = *(v0 + 448);
    v58 = swift_slowAlloc();
    v179 = v55;
    v59 = swift_slowAlloc();
    *v58 = 138412546;
    v60 = [v48 recordID];
    *(v58 + 4) = v60;
    *v59 = v60;
    *(v58 + 12) = 2112;
    MEMORY[0x21CE917A0]();
    v181 = v48;
    v183 = v56;
    v61 = _swift_stdlib_bridgeErrorToNSError();
    v62 = *(v54 + 8);
    v63 = v53;
    v64 = v179;
    (v62)(v63, v179);
    *(v58 + 14) = v61;
    v59[1] = v61;
    _os_log_impl(&dword_21607C000, v49, v50, "Retryable error saving %@: %@", v58, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v59, -1, -1);
    MEMORY[0x21CE94770](v58, -1, -1);

LABEL_35:
    (*(v57 + 8))(v183, v193);
    (v62)(v185, v64);
    v6 = v188;
LABEL_10:
    v7 = *(v0 + 560) + 1;
    if (v7 == *(v0 + 528))
    {
      goto LABEL_2;
    }
  }

  if (v21 <= 22)
  {
    if (v21 == 14)
    {
      v68 = MEMORY[0x21CE917A0]();
      v69 = related decl 'e' for CKErrorCode.serverRecord.getter();
      *(v0 + 592) = v69;

      if (!v69)
      {
        if (one-time initialization token for Log != -1)
        {
          swift_once();
        }

        v186 = *(v0 + 544);
        v70 = *(v0 + 448);
        v71 = *(v0 + 432);
        v72 = *(v0 + 384);
        v73 = *(v0 + 368);
        v74 = *(v0 + 320);
        v75 = *(v0 + 328);
        v76 = __swift_project_value_buffer(v74, static CloudManager.Log);
        swift_beginAccess();
        (*(v75 + 16))(v73, v76, v74);
        v186(v71, v70, v72);
        v77 = Logger.logObject.getter();
        v78 = static os_log_type_t.error.getter();
        v79 = os_log_type_enabled(v77, v78);
        v80 = *(v0 + 448);
        v81 = *(v0 + 432);
        v82 = *(v0 + 384);
        v83 = *(v0 + 392);
        v84 = *(v0 + 368);
        v85 = *(v0 + 328);
        v187 = *(v0 + 320);
        if (v79)
        {
          v184 = *(v0 + 448);
          v86 = swift_slowAlloc();
          v180 = v82;
          v87 = swift_slowAlloc();
          *v86 = 138412290;
          MEMORY[0x21CE917A0]();
          v182 = v84;
          v88 = _swift_stdlib_bridgeErrorToNSError();
          v89 = *(v83 + 8);
          v89(v81, v180);
          *(v86 + 4) = v88;
          *v87 = v88;
          _os_log_impl(&dword_21607C000, v77, v78, "No server record for conflict %@", v86, 0xCu);
          outlined destroy of UTType?(v87, &_sSo8NSObjectCSgMd);
          MEMORY[0x21CE94770](v87, -1, -1);
          MEMORY[0x21CE94770](v86, -1, -1);

          (*(v85 + 8))(v182, v187);
          v89(v184, v180);
        }

        else
        {

          v90 = *(v83 + 8);
          v90(v81, v82);
          (*(v85 + 8))(v84, v187);
          v90(v80, v82);
        }

        goto LABEL_10;
      }

      v160 = (*(v0 + 264) + *(v0 + 456));
      v161 = *v160;
      *(v0 + 600) = *v160;
      v162 = v160[1];
      v163 = swift_getObjectType();
      *(v0 + 608) = v163;
      *(v0 + 232) = v161;
      swift_unknownObjectRetain_n();
      v164 = [v19 recordID];
      *(v0 + 616) = v164;
      v165 = *(v162 + 8);
      *(v0 + 624) = v165;
      v195 = (*(v165 + 152) + **(v165 + 152));
      v166 = swift_task_alloc();
      *(v0 + 632) = v166;
      *v166 = v0;
      v166[1] = CloudManager.handleSentRecordZoneChanges(_:syncEngine:);
      v130 = v164;
      v131 = v163;
      v132 = v165;
      v133 = v195;

      return v133(v130, v131, v132);
    }

    if (v21 != 20)
    {
      if (v21 == 21)
      {
        if (one-time initialization token for Log != -1)
        {
          swift_once();
        }

        v134 = *(v0 + 544);
        v135 = *(v0 + 448);
        v136 = *(v0 + 424);
        v137 = *(v0 + 384);
        v138 = *(v0 + 360);
        v139 = *(v0 + 320);
        v140 = *(v0 + 328);
        v141 = __swift_project_value_buffer(v139, static CloudManager.Log);
        swift_beginAccess();
        (*(v140 + 16))(v138, v141, v139);
        v134(v136, v135, v137);
        v142 = Logger.logObject.getter();
        v143 = static os_log_type_t.error.getter();
        v144 = os_log_type_enabled(v142, v143);
        v145 = *(v0 + 424);
        v146 = *(v0 + 384);
        v147 = *(v0 + 392);
        if (v144)
        {
          v148 = swift_slowAlloc();
          v149 = swift_slowAlloc();
          *v148 = 138412290;
          MEMORY[0x21CE917A0]();
          v150 = _swift_stdlib_bridgeErrorToNSError();
          v151 = *(v147 + 8);
          v151(v145, v146);
          *(v148 + 4) = v150;
          *v149 = v150;
          _os_log_impl(&dword_21607C000, v142, v143, "Invalid change token, resetting %@", v148, 0xCu);
          outlined destroy of UTType?(v149, &_sSo8NSObjectCSgMd);
          MEMORY[0x21CE94770](v149, -1, -1);
          MEMORY[0x21CE94770](v148, -1, -1);
        }

        else
        {

          v151 = *(v147 + 8);
          v151(v145, v146);
        }

        *(v0 + 680) = v151;
        v167 = *(v0 + 280);
        v168 = (*(v0 + 264) + *(v0 + 456));
        (*(*(v0 + 328) + 8))(*(v0 + 360), *(v0 + 320));
        v169 = v168[1];
        v170 = swift_getObjectType();
        v171 = type metadata accessor for CKSyncEngine.State.Serialization();
        (*(*(v171 - 8) + 56))(v167, 1, 1, v171);
        v172 = *(v169 + 24);
        swift_unknownObjectRetain();
        v172(v167, v170, v169);
        swift_unknownObjectRelease();
        v173 = *v168;
        v174 = v168[1];
        *(v0 + 688) = v174;
        v175 = swift_getObjectType();
        *(v0 + 696) = v175;
        *(v0 + 216) = v173;
        v176 = *(v174 + 8);
        v177 = *(v176 + 112);
        swift_unknownObjectRetain();
        v191 = (v177 + *v177);
        v178 = swift_task_alloc();
        *(v0 + 704) = v178;
        *v178 = v0;
        v178[1] = CloudManager.handleSentRecordZoneChanges(_:syncEngine:);

        return v191(v175, v176);
      }

      goto LABEL_46;
    }

    goto LABEL_31;
  }

  if (v21 <= 24)
  {
    if (v21 != 23)
    {
      goto LABEL_46;
    }

    goto LABEL_31;
  }

  if (v21 == 25)
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 544);
    v23 = *(v0 + 448);
    v24 = *(v0 + 408);
    v25 = *(v0 + 384);
    v26 = *(v0 + 344);
    v27 = *(v0 + 320);
    v28 = *(v0 + 328);
    v29 = __swift_project_value_buffer(v27, static CloudManager.Log);
    swift_beginAccess();
    (*(v28 + 16))(v26, v29, v27);
    v22(v24, v23, v25);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 408);
    v34 = *(v0 + 384);
    v35 = *(v0 + 392);
    if (v32)
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      MEMORY[0x21CE917A0]();
      v38 = _swift_stdlib_bridgeErrorToNSError();
      v39 = *(v35 + 8);
      v39(v33, v34);
      *(v36 + 4) = v38;
      *v37 = v38;
      v11 = v39;
      _os_log_impl(&dword_21607C000, v30, v31, "Quota exceeded %@", v36, 0xCu);
      outlined destroy of UTType?(v37, &_sSo8NSObjectCSgMd);
      MEMORY[0x21CE94770](v37, -1, -1);
      MEMORY[0x21CE94770](v36, -1, -1);
    }

    else
    {

      v11 = *(v35 + 8);
      v11(v33, v34);
    }

    v6 = v188;
    v12 = *(v0 + 448);
    v13 = *(v0 + 384);
    (*(*(v0 + 328) + 8))(*(v0 + 344), *(v0 + 320));
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 752) = 1;

    static Published.subscript.setter();

    v11(v12, v13);
    goto LABEL_10;
  }

  if (v21 != 26)
  {
    if (v21 == 28)
    {
      v152 = 1;
      goto LABEL_64;
    }

    goto LABEL_46;
  }

  v152 = 0;
LABEL_64:
  v153 = *(v0 + 464);
  v154 = [v19 recordID];
  v155 = [v154 zoneID];

  v156 = [objc_allocWithZone(MEMORY[0x277CBC5E8]) initWithZoneID_];
  *(v0 + 656) = v156;

  v157 = swift_getObjectType();
  *(v0 + 224) = v189;
  v158 = *(v153 + 8);
  v190 = (*(v158 + 184) + **(v158 + 184));
  v159 = swift_task_alloc();
  *(v0 + 664) = v159;
  *v159 = v0;
  v159[1] = CloudManager.handleSentRecordZoneChanges(_:syncEngine:);

  return v190(v156, v19, v152, v157, v158);
}

{
  if (*(v0 + 754) == 1)
  {
    v1 = *(v0 + 748);
    v2 = *(v0 + 312);
    v3 = *(v0 + 288);
    v4 = *(v0 + 296);
    *v2 = [*(v0 + 584) recordID];
    (*(v4 + 104))(v2, v1, v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v0 + 568);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, *(v0 + 568));
    }

    v8 = v6[2];
    v7 = v6[3];
    if (v8 >= v7 >> 1)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v7 > 1, v8 + 1, 1, v6);
    }

    v9 = *(v0 + 312);
    v10 = *(v0 + 288);
    v11 = *(v0 + 296);

    v6[2] = v8 + 1;
    (*(v11 + 32))(v6 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v8, v9, v10);
  }

  else
  {

    v6 = *(v0 + 568);
  }

  v12 = *(v0 + 672);
  *(v0 + 712) = v6;
  v13 = *(v0 + 464);
  v14 = [*(v0 + 584) recordID];
  *(v0 + 720) = v14;
  ObjectType = swift_getObjectType();
  *(v0 + 208) = v12;
  v16 = *(v13 + 8);
  v19 = (*(v16 + 192) + **(v16 + 192));
  v17 = swift_task_alloc();
  *(v0 + 728) = v17;
  *v17 = v0;
  v17[1] = CloudManager.handleSentRecordZoneChanges(_:syncEngine:);

  return v19(v14, ObjectType, v16);
}

{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[33];

    v4 = CloudManager.handleSentRecordZoneChanges(_:syncEngine:);
    v5 = v3;
  }

  else
  {
    v6 = v2[33];
    specialized CloudManager.cloudModel.setter(v2[27], v6, v2[87], v2[86]);
    v4 = CloudManager.handleSentRecordZoneChanges(_:syncEngine:);
    v5 = v6;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

{
  v1 = *(v0 + 680);
  v2 = *(v0 + 448);
  v3 = *(v0 + 384);
  v4 = *(v0 + 264);

  v1(v2, v3);
  *(v4 + 136) = 0;

  v5 = *(v0 + 568);
  v188 = *(v0 + 552);
  v6 = *(v0 + 560) + 1;
  if (v6 == *(v0 + 528))
  {
LABEL_2:

    if (v5[2])
    {
      CKSyncEngine.state.getter();
      CKSyncEngine.State.add(pendingDatabaseChanges:)(MEMORY[0x277D84F90]);

      CKSyncEngine.state.getter();
      CKSyncEngine.State.add(pendingRecordZoneChanges:)(v5);
    }

    v7 = *(v0 + 272);
    swift_unknownObjectRelease();
    static CloudLog.LogEnd(_:)("handleSentRecordZoneChanges(_:syncEngine:)", 42, 2, v7, &protocol witness table for CloudManager);

    v8 = *(v0 + 8);

    return v8();
  }

  v187 = *(v0 + 568);
  while (1)
  {
    *(v0 + 568) = v5;
    *(v0 + 560) = v6;
    *(v0 + 552) = v188;
    v13 = *(v0 + 544);
    v14 = *(v0 + 448);
    v15 = *(v0 + 384);
    v16 = *(v0 + 520) + ((*(v0 + 744) + 32) & ~*(v0 + 744)) + *(v0 + 536) * v6;
    *(v0 + 576) = (*(v0 + 392) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v17 = v13(v14, v16, v15);
    v18 = MEMORY[0x21CE917B0](v17);
    *(v0 + 584) = v18;
    v19 = MEMORY[0x21CE917A0]();
    *(v0 + 192) = v19;
    type metadata accessor for related decl 'e' for CKErrorCode(0);
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type related decl 'e' for CKErrorCode and conformance related decl 'e' for CKErrorCode, type metadata accessor for related decl 'e' for CKErrorCode);
    _BridgedStoredNSError.code.getter();

    v20 = *(v0 + 200);
    v191 = v18;
    if (v20 > 13)
    {
      break;
    }

    if (v20 <= 5)
    {
      if ((v20 - 3) >= 2)
      {
        goto LABEL_46;
      }
    }

    else if (v20 != 6 && v20 != 9)
    {
      if (v20 == 11)
      {
        v114 = *(v0 + 748);
        v116 = *(v0 + 296);
        v115 = *(v0 + 304);
        v117 = *(v0 + 288);
        *v115 = [v18 recordID];
        (*(v116 + 104))(v115, v114, v117);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
        }

        v120 = v5[2];
        v119 = v5[3];
        if (v120 >= v119 >> 1)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v119 > 1, v120 + 1, 1, v5);
        }

        v122 = *(v0 + 296);
        v121 = *(v0 + 304);
        v123 = *(v0 + 288);
        v5[2] = v120 + 1;
        (*(v122 + 32))(v5 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v120, v121, v123);
        *(v0 + 712) = v5;
        v124 = *(v0 + 464);
        v125 = [*(v0 + 584) recordID];
        *(v0 + 720) = v125;
        ObjectType = swift_getObjectType();
        *(v0 + 208) = v188;
        v127 = *(v124 + 8);
        v193 = (*(v127 + 192) + **(v127 + 192));
        v128 = swift_task_alloc();
        *(v0 + 728) = v128;
        *v128 = v0;
        v128[1] = CloudManager.handleSentRecordZoneChanges(_:syncEngine:);
        v129 = v125;
        v130 = ObjectType;
        v131 = v127;
        v132 = v193;

        return v132(v129, v130, v131);
      }

LABEL_46:
      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v90 = *(v0 + 544);
      v91 = *(v0 + 448);
      v92 = *(v0 + 400);
      v93 = *(v0 + 384);
      v95 = *(v0 + 328);
      v94 = *(v0 + 336);
      v96 = *(v0 + 320);
      v97 = __swift_project_value_buffer(v96, static CloudManager.Log);
      swift_beginAccess();
      (*(v95 + 16))(v94, v97, v96);
      v90(v92, v91, v93);
      v98 = v191;
      v99 = Logger.logObject.getter();
      v100 = static os_log_type_t.fault.getter();

      v101 = os_log_type_enabled(v99, v100);
      v102 = *(v0 + 448);
      v104 = *(v0 + 392);
      v103 = *(v0 + 400);
      v105 = *(v0 + 384);
      v56 = *(v0 + 328);
      v106 = *(v0 + 336);
      v192 = *(v0 + 320);
      if (v101)
      {
        v184 = *(v0 + 448);
        v107 = swift_slowAlloc();
        v182 = v106;
        v108 = swift_slowAlloc();
        *v107 = 138412546;
        v109 = [v98 recordID];
        *(v107 + 4) = v109;
        *v108 = v109;
        *(v107 + 12) = 2112;
        MEMORY[0x21CE917A0]();
        v110 = _swift_stdlib_bridgeErrorToNSError();
        v111 = v105;
        v112 = v110;
        v180 = v98;
        v61 = *(v104 + 8);
        v113 = v103;
        v63 = v111;
        v61(v113);
        *(v107 + 14) = v112;
        v108[1] = v112;
        _os_log_impl(&dword_21607C000, v99, v100, "Unknown error saving record %@: %@", v107, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v108, -1, -1);
        MEMORY[0x21CE94770](v107, -1, -1);

        goto LABEL_35;
      }

      v64 = *(v104 + 8);
      v64(v103, v105);
      (*(v56 + 8))(v106, v192);
      v65 = v102;
      v66 = v105;
LABEL_37:
      v64(v65, v66);
      v5 = v187;
      goto LABEL_10;
    }

LABEL_31:
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v39 = *(v0 + 544);
    v40 = *(v0 + 448);
    v41 = *(v0 + 416);
    v42 = *(v0 + 384);
    v43 = *(v0 + 352);
    v44 = *(v0 + 320);
    v45 = *(v0 + 328);
    v46 = __swift_project_value_buffer(v44, static CloudManager.Log);
    swift_beginAccess();
    (*(v45 + 16))(v43, v46, v44);
    v39(v41, v40, v42);
    v47 = v191;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();

    v50 = os_log_type_enabled(v48, v49);
    v51 = *(v0 + 448);
    v52 = *(v0 + 416);
    v54 = *(v0 + 384);
    v53 = *(v0 + 392);
    v55 = *(v0 + 352);
    v56 = *(v0 + 328);
    v192 = *(v0 + 320);
    if (!v50)
    {

      v64 = *(v53 + 8);
      v64(v52, v54);
      (*(v56 + 8))(v55, v192);
      v65 = v51;
      v66 = v54;
      goto LABEL_37;
    }

    v184 = *(v0 + 448);
    v57 = swift_slowAlloc();
    v178 = v54;
    v58 = swift_slowAlloc();
    *v57 = 138412546;
    v59 = [v47 recordID];
    *(v57 + 4) = v59;
    *v58 = v59;
    *(v57 + 12) = 2112;
    MEMORY[0x21CE917A0]();
    v180 = v47;
    v182 = v55;
    v60 = _swift_stdlib_bridgeErrorToNSError();
    v61 = *(v53 + 8);
    v62 = v52;
    v63 = v178;
    (v61)(v62, v178);
    *(v57 + 14) = v60;
    v58[1] = v60;
    _os_log_impl(&dword_21607C000, v48, v49, "Retryable error saving %@: %@", v57, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v58, -1, -1);
    MEMORY[0x21CE94770](v57, -1, -1);

LABEL_35:
    (*(v56 + 8))(v182, v192);
    (v61)(v184, v63);
    v5 = v187;
LABEL_10:
    v6 = *(v0 + 560) + 1;
    if (v6 == *(v0 + 528))
    {
      goto LABEL_2;
    }
  }

  if (v20 <= 22)
  {
    if (v20 == 14)
    {
      v67 = MEMORY[0x21CE917A0]();
      v68 = related decl 'e' for CKErrorCode.serverRecord.getter();
      *(v0 + 592) = v68;

      if (!v68)
      {
        if (one-time initialization token for Log != -1)
        {
          swift_once();
        }

        v185 = *(v0 + 544);
        v69 = *(v0 + 448);
        v70 = *(v0 + 432);
        v71 = *(v0 + 384);
        v72 = *(v0 + 368);
        v73 = *(v0 + 320);
        v74 = *(v0 + 328);
        v75 = __swift_project_value_buffer(v73, static CloudManager.Log);
        swift_beginAccess();
        (*(v74 + 16))(v72, v75, v73);
        v185(v70, v69, v71);
        v76 = Logger.logObject.getter();
        v77 = static os_log_type_t.error.getter();
        v78 = os_log_type_enabled(v76, v77);
        v79 = *(v0 + 448);
        v80 = *(v0 + 432);
        v81 = *(v0 + 384);
        v82 = *(v0 + 392);
        v83 = *(v0 + 368);
        v84 = *(v0 + 328);
        v186 = *(v0 + 320);
        if (v78)
        {
          v183 = *(v0 + 448);
          v85 = swift_slowAlloc();
          v179 = v81;
          v86 = swift_slowAlloc();
          *v85 = 138412290;
          MEMORY[0x21CE917A0]();
          v181 = v83;
          v87 = _swift_stdlib_bridgeErrorToNSError();
          v88 = *(v82 + 8);
          v88(v80, v179);
          *(v85 + 4) = v87;
          *v86 = v87;
          _os_log_impl(&dword_21607C000, v76, v77, "No server record for conflict %@", v85, 0xCu);
          outlined destroy of UTType?(v86, &_sSo8NSObjectCSgMd);
          MEMORY[0x21CE94770](v86, -1, -1);
          MEMORY[0x21CE94770](v85, -1, -1);

          (*(v84 + 8))(v181, v186);
          v88(v183, v179);
        }

        else
        {

          v89 = *(v82 + 8);
          v89(v80, v81);
          (*(v84 + 8))(v83, v186);
          v89(v79, v81);
        }

        goto LABEL_10;
      }

      v159 = (*(v0 + 264) + *(v0 + 456));
      v160 = *v159;
      *(v0 + 600) = *v159;
      v161 = v159[1];
      v162 = swift_getObjectType();
      *(v0 + 608) = v162;
      *(v0 + 232) = v160;
      swift_unknownObjectRetain_n();
      v163 = [v18 recordID];
      *(v0 + 616) = v163;
      v164 = *(v161 + 8);
      *(v0 + 624) = v164;
      v194 = (*(v164 + 152) + **(v164 + 152));
      v165 = swift_task_alloc();
      *(v0 + 632) = v165;
      *v165 = v0;
      v165[1] = CloudManager.handleSentRecordZoneChanges(_:syncEngine:);
      v129 = v163;
      v130 = v162;
      v131 = v164;
      v132 = v194;

      return v132(v129, v130, v131);
    }

    if (v20 != 20)
    {
      if (v20 == 21)
      {
        if (one-time initialization token for Log != -1)
        {
          swift_once();
        }

        v133 = *(v0 + 544);
        v134 = *(v0 + 448);
        v135 = *(v0 + 424);
        v136 = *(v0 + 384);
        v137 = *(v0 + 360);
        v138 = *(v0 + 320);
        v139 = *(v0 + 328);
        v140 = __swift_project_value_buffer(v138, static CloudManager.Log);
        swift_beginAccess();
        (*(v139 + 16))(v137, v140, v138);
        v133(v135, v134, v136);
        v141 = Logger.logObject.getter();
        v142 = static os_log_type_t.error.getter();
        v143 = os_log_type_enabled(v141, v142);
        v144 = *(v0 + 424);
        v145 = *(v0 + 384);
        v146 = *(v0 + 392);
        if (v143)
        {
          v147 = swift_slowAlloc();
          v148 = swift_slowAlloc();
          *v147 = 138412290;
          MEMORY[0x21CE917A0]();
          v149 = _swift_stdlib_bridgeErrorToNSError();
          v150 = *(v146 + 8);
          v150(v144, v145);
          *(v147 + 4) = v149;
          *v148 = v149;
          _os_log_impl(&dword_21607C000, v141, v142, "Invalid change token, resetting %@", v147, 0xCu);
          outlined destroy of UTType?(v148, &_sSo8NSObjectCSgMd);
          MEMORY[0x21CE94770](v148, -1, -1);
          MEMORY[0x21CE94770](v147, -1, -1);
        }

        else
        {

          v150 = *(v146 + 8);
          v150(v144, v145);
        }

        *(v0 + 680) = v150;
        v166 = *(v0 + 280);
        v167 = (*(v0 + 264) + *(v0 + 456));
        (*(*(v0 + 328) + 8))(*(v0 + 360), *(v0 + 320));
        v168 = v167[1];
        v169 = swift_getObjectType();
        v170 = type metadata accessor for CKSyncEngine.State.Serialization();
        (*(*(v170 - 8) + 56))(v166, 1, 1, v170);
        v171 = *(v168 + 24);
        swift_unknownObjectRetain();
        v171(v166, v169, v168);
        swift_unknownObjectRelease();
        v172 = *v167;
        v173 = v167[1];
        *(v0 + 688) = v173;
        v174 = swift_getObjectType();
        *(v0 + 696) = v174;
        *(v0 + 216) = v172;
        v175 = *(v173 + 8);
        v176 = *(v175 + 112);
        swift_unknownObjectRetain();
        v190 = (v176 + *v176);
        v177 = swift_task_alloc();
        *(v0 + 704) = v177;
        *v177 = v0;
        v177[1] = CloudManager.handleSentRecordZoneChanges(_:syncEngine:);

        return v190(v174, v175);
      }

      goto LABEL_46;
    }

    goto LABEL_31;
  }

  if (v20 <= 24)
  {
    if (v20 != 23)
    {
      goto LABEL_46;
    }

    goto LABEL_31;
  }

  if (v20 == 25)
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 544);
    v22 = *(v0 + 448);
    v23 = *(v0 + 408);
    v24 = *(v0 + 384);
    v25 = *(v0 + 344);
    v26 = *(v0 + 320);
    v27 = *(v0 + 328);
    v28 = __swift_project_value_buffer(v26, static CloudManager.Log);
    swift_beginAccess();
    (*(v27 + 16))(v25, v28, v26);
    v21(v23, v22, v24);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 408);
    v33 = *(v0 + 384);
    v34 = *(v0 + 392);
    if (v31)
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      MEMORY[0x21CE917A0]();
      v37 = _swift_stdlib_bridgeErrorToNSError();
      v38 = *(v34 + 8);
      v38(v32, v33);
      *(v35 + 4) = v37;
      *v36 = v37;
      v10 = v38;
      _os_log_impl(&dword_21607C000, v29, v30, "Quota exceeded %@", v35, 0xCu);
      outlined destroy of UTType?(v36, &_sSo8NSObjectCSgMd);
      MEMORY[0x21CE94770](v36, -1, -1);
      MEMORY[0x21CE94770](v35, -1, -1);
    }

    else
    {

      v10 = *(v34 + 8);
      v10(v32, v33);
    }

    v5 = v187;
    v11 = *(v0 + 448);
    v12 = *(v0 + 384);
    (*(*(v0 + 328) + 8))(*(v0 + 344), *(v0 + 320));
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 752) = 1;

    static Published.subscript.setter();

    v10(v11, v12);
    goto LABEL_10;
  }

  if (v20 != 26)
  {
    if (v20 == 28)
    {
      v151 = 1;
      goto LABEL_64;
    }

    goto LABEL_46;
  }

  v151 = 0;
LABEL_64:
  v152 = *(v0 + 464);
  v153 = [v18 recordID];
  v154 = [v153 zoneID];

  v155 = [objc_allocWithZone(MEMORY[0x277CBC5E8]) initWithZoneID_];
  *(v0 + 656) = v155;

  v156 = swift_getObjectType();
  *(v0 + 224) = v188;
  v157 = *(v152 + 8);
  v189 = (*(v157 + 184) + **(v157 + 184));
  v158 = swift_task_alloc();
  *(v0 + 664) = v158;
  *v158 = v0;
  v158[1] = CloudManager.handleSentRecordZoneChanges(_:syncEngine:);

  return v189(v155, v18, v151, v156, v157);
}

{
  v1 = *v0;
  v2 = *(*v0 + 720);
  v3 = *(*v0 + 264);

  *(v1 + 736) = *(v1 + 208);

  return MEMORY[0x2822009F8](CloudManager.handleSentRecordZoneChanges(_:syncEngine:), v3, 0);
}

{
  v1 = *(v0 + 448);
  v2 = *(v0 + 384);
  v3 = *(v0 + 392);

  (*(v3 + 8))(v1, v2);
  v187 = *(v0 + 736);
  v4 = *(v0 + 712);
  v5 = *(v0 + 560) + 1;
  if (v5 == *(v0 + 528))
  {
LABEL_2:

    if (v4[2])
    {
      CKSyncEngine.state.getter();
      CKSyncEngine.State.add(pendingDatabaseChanges:)(MEMORY[0x277D84F90]);

      CKSyncEngine.state.getter();
      CKSyncEngine.State.add(pendingRecordZoneChanges:)(v4);
    }

    v6 = *(v0 + 272);
    swift_unknownObjectRelease();
    static CloudLog.LogEnd(_:)("handleSentRecordZoneChanges(_:syncEngine:)", 42, 2, v6, &protocol witness table for CloudManager);

    v7 = *(v0 + 8);

    return v7();
  }

  v186 = *(v0 + 712);
  while (1)
  {
    *(v0 + 568) = v4;
    *(v0 + 560) = v5;
    *(v0 + 552) = v187;
    v12 = *(v0 + 544);
    v13 = *(v0 + 448);
    v14 = *(v0 + 384);
    v15 = *(v0 + 520) + ((*(v0 + 744) + 32) & ~*(v0 + 744)) + *(v0 + 536) * v5;
    *(v0 + 576) = (*(v0 + 392) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v16 = v12(v13, v15, v14);
    v17 = MEMORY[0x21CE917B0](v16);
    *(v0 + 584) = v17;
    v18 = MEMORY[0x21CE917A0]();
    *(v0 + 192) = v18;
    type metadata accessor for related decl 'e' for CKErrorCode(0);
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type related decl 'e' for CKErrorCode and conformance related decl 'e' for CKErrorCode, type metadata accessor for related decl 'e' for CKErrorCode);
    _BridgedStoredNSError.code.getter();

    v19 = *(v0 + 200);
    v190 = v17;
    if (v19 > 13)
    {
      break;
    }

    if (v19 <= 5)
    {
      if ((v19 - 3) >= 2)
      {
        goto LABEL_46;
      }
    }

    else if (v19 != 6 && v19 != 9)
    {
      if (v19 == 11)
      {
        v113 = *(v0 + 748);
        v115 = *(v0 + 296);
        v114 = *(v0 + 304);
        v116 = *(v0 + 288);
        *v114 = [v17 recordID];
        (*(v115 + 104))(v114, v113, v116);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
        }

        v119 = v4[2];
        v118 = v4[3];
        if (v119 >= v118 >> 1)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v118 > 1, v119 + 1, 1, v4);
        }

        v121 = *(v0 + 296);
        v120 = *(v0 + 304);
        v122 = *(v0 + 288);
        v4[2] = v119 + 1;
        (*(v121 + 32))(v4 + ((*(v121 + 80) + 32) & ~*(v121 + 80)) + *(v121 + 72) * v119, v120, v122);
        *(v0 + 712) = v4;
        v123 = *(v0 + 464);
        v124 = [*(v0 + 584) recordID];
        *(v0 + 720) = v124;
        ObjectType = swift_getObjectType();
        *(v0 + 208) = v187;
        v126 = *(v123 + 8);
        v192 = (*(v126 + 192) + **(v126 + 192));
        v127 = swift_task_alloc();
        *(v0 + 728) = v127;
        *v127 = v0;
        v127[1] = CloudManager.handleSentRecordZoneChanges(_:syncEngine:);
        v128 = v124;
        v129 = ObjectType;
        v130 = v126;
        v131 = v192;

        return v131(v128, v129, v130);
      }

LABEL_46:
      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v89 = *(v0 + 544);
      v90 = *(v0 + 448);
      v91 = *(v0 + 400);
      v92 = *(v0 + 384);
      v94 = *(v0 + 328);
      v93 = *(v0 + 336);
      v95 = *(v0 + 320);
      v96 = __swift_project_value_buffer(v95, static CloudManager.Log);
      swift_beginAccess();
      (*(v94 + 16))(v93, v96, v95);
      v89(v91, v90, v92);
      v97 = v190;
      v98 = Logger.logObject.getter();
      v99 = static os_log_type_t.fault.getter();

      v100 = os_log_type_enabled(v98, v99);
      v101 = *(v0 + 448);
      v103 = *(v0 + 392);
      v102 = *(v0 + 400);
      v104 = *(v0 + 384);
      v55 = *(v0 + 328);
      v105 = *(v0 + 336);
      v191 = *(v0 + 320);
      if (v100)
      {
        v183 = *(v0 + 448);
        v106 = swift_slowAlloc();
        v181 = v105;
        v107 = swift_slowAlloc();
        *v106 = 138412546;
        v108 = [v97 recordID];
        *(v106 + 4) = v108;
        *v107 = v108;
        *(v106 + 12) = 2112;
        MEMORY[0x21CE917A0]();
        v109 = _swift_stdlib_bridgeErrorToNSError();
        v110 = v104;
        v111 = v109;
        v179 = v97;
        v60 = *(v103 + 8);
        v112 = v102;
        v62 = v110;
        v60(v112);
        *(v106 + 14) = v111;
        v107[1] = v111;
        _os_log_impl(&dword_21607C000, v98, v99, "Unknown error saving record %@: %@", v106, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v107, -1, -1);
        MEMORY[0x21CE94770](v106, -1, -1);

        goto LABEL_35;
      }

      v63 = *(v103 + 8);
      v63(v102, v104);
      (*(v55 + 8))(v105, v191);
      v64 = v101;
      v65 = v104;
LABEL_37:
      v63(v64, v65);
      v4 = v186;
      goto LABEL_10;
    }

LABEL_31:
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v38 = *(v0 + 544);
    v39 = *(v0 + 448);
    v40 = *(v0 + 416);
    v41 = *(v0 + 384);
    v42 = *(v0 + 352);
    v43 = *(v0 + 320);
    v44 = *(v0 + 328);
    v45 = __swift_project_value_buffer(v43, static CloudManager.Log);
    swift_beginAccess();
    (*(v44 + 16))(v42, v45, v43);
    v38(v40, v39, v41);
    v46 = v190;
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();

    v49 = os_log_type_enabled(v47, v48);
    v50 = *(v0 + 448);
    v51 = *(v0 + 416);
    v53 = *(v0 + 384);
    v52 = *(v0 + 392);
    v54 = *(v0 + 352);
    v55 = *(v0 + 328);
    v191 = *(v0 + 320);
    if (!v49)
    {

      v63 = *(v52 + 8);
      v63(v51, v53);
      (*(v55 + 8))(v54, v191);
      v64 = v50;
      v65 = v53;
      goto LABEL_37;
    }

    v183 = *(v0 + 448);
    v56 = swift_slowAlloc();
    v177 = v53;
    v57 = swift_slowAlloc();
    *v56 = 138412546;
    v58 = [v46 recordID];
    *(v56 + 4) = v58;
    *v57 = v58;
    *(v56 + 12) = 2112;
    MEMORY[0x21CE917A0]();
    v179 = v46;
    v181 = v54;
    v59 = _swift_stdlib_bridgeErrorToNSError();
    v60 = *(v52 + 8);
    v61 = v51;
    v62 = v177;
    (v60)(v61, v177);
    *(v56 + 14) = v59;
    v57[1] = v59;
    _os_log_impl(&dword_21607C000, v47, v48, "Retryable error saving %@: %@", v56, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v57, -1, -1);
    MEMORY[0x21CE94770](v56, -1, -1);

LABEL_35:
    (*(v55 + 8))(v181, v191);
    (v60)(v183, v62);
    v4 = v186;
LABEL_10:
    v5 = *(v0 + 560) + 1;
    if (v5 == *(v0 + 528))
    {
      goto LABEL_2;
    }
  }

  if (v19 <= 22)
  {
    if (v19 == 14)
    {
      v66 = MEMORY[0x21CE917A0]();
      v67 = related decl 'e' for CKErrorCode.serverRecord.getter();
      *(v0 + 592) = v67;

      if (!v67)
      {
        if (one-time initialization token for Log != -1)
        {
          swift_once();
        }

        v184 = *(v0 + 544);
        v68 = *(v0 + 448);
        v69 = *(v0 + 432);
        v70 = *(v0 + 384);
        v71 = *(v0 + 368);
        v72 = *(v0 + 320);
        v73 = *(v0 + 328);
        v74 = __swift_project_value_buffer(v72, static CloudManager.Log);
        swift_beginAccess();
        (*(v73 + 16))(v71, v74, v72);
        v184(v69, v68, v70);
        v75 = Logger.logObject.getter();
        v76 = static os_log_type_t.error.getter();
        v77 = os_log_type_enabled(v75, v76);
        v78 = *(v0 + 448);
        v79 = *(v0 + 432);
        v80 = *(v0 + 384);
        v81 = *(v0 + 392);
        v82 = *(v0 + 368);
        v83 = *(v0 + 328);
        v185 = *(v0 + 320);
        if (v77)
        {
          v182 = *(v0 + 448);
          v84 = swift_slowAlloc();
          v178 = v80;
          v85 = swift_slowAlloc();
          *v84 = 138412290;
          MEMORY[0x21CE917A0]();
          v180 = v82;
          v86 = _swift_stdlib_bridgeErrorToNSError();
          v87 = *(v81 + 8);
          v87(v79, v178);
          *(v84 + 4) = v86;
          *v85 = v86;
          _os_log_impl(&dword_21607C000, v75, v76, "No server record for conflict %@", v84, 0xCu);
          outlined destroy of UTType?(v85, &_sSo8NSObjectCSgMd);
          MEMORY[0x21CE94770](v85, -1, -1);
          MEMORY[0x21CE94770](v84, -1, -1);

          (*(v83 + 8))(v180, v185);
          v87(v182, v178);
        }

        else
        {

          v88 = *(v81 + 8);
          v88(v79, v80);
          (*(v83 + 8))(v82, v185);
          v88(v78, v80);
        }

        goto LABEL_10;
      }

      v158 = (*(v0 + 264) + *(v0 + 456));
      v159 = *v158;
      *(v0 + 600) = *v158;
      v160 = v158[1];
      v161 = swift_getObjectType();
      *(v0 + 608) = v161;
      *(v0 + 232) = v159;
      swift_unknownObjectRetain_n();
      v162 = [v17 recordID];
      *(v0 + 616) = v162;
      v163 = *(v160 + 8);
      *(v0 + 624) = v163;
      v193 = (*(v163 + 152) + **(v163 + 152));
      v164 = swift_task_alloc();
      *(v0 + 632) = v164;
      *v164 = v0;
      v164[1] = CloudManager.handleSentRecordZoneChanges(_:syncEngine:);
      v128 = v162;
      v129 = v161;
      v130 = v163;
      v131 = v193;

      return v131(v128, v129, v130);
    }

    if (v19 != 20)
    {
      if (v19 == 21)
      {
        if (one-time initialization token for Log != -1)
        {
          swift_once();
        }

        v132 = *(v0 + 544);
        v133 = *(v0 + 448);
        v134 = *(v0 + 424);
        v135 = *(v0 + 384);
        v136 = *(v0 + 360);
        v137 = *(v0 + 320);
        v138 = *(v0 + 328);
        v139 = __swift_project_value_buffer(v137, static CloudManager.Log);
        swift_beginAccess();
        (*(v138 + 16))(v136, v139, v137);
        v132(v134, v133, v135);
        v140 = Logger.logObject.getter();
        v141 = static os_log_type_t.error.getter();
        v142 = os_log_type_enabled(v140, v141);
        v143 = *(v0 + 424);
        v144 = *(v0 + 384);
        v145 = *(v0 + 392);
        if (v142)
        {
          v146 = swift_slowAlloc();
          v147 = swift_slowAlloc();
          *v146 = 138412290;
          MEMORY[0x21CE917A0]();
          v148 = _swift_stdlib_bridgeErrorToNSError();
          v149 = *(v145 + 8);
          v149(v143, v144);
          *(v146 + 4) = v148;
          *v147 = v148;
          _os_log_impl(&dword_21607C000, v140, v141, "Invalid change token, resetting %@", v146, 0xCu);
          outlined destroy of UTType?(v147, &_sSo8NSObjectCSgMd);
          MEMORY[0x21CE94770](v147, -1, -1);
          MEMORY[0x21CE94770](v146, -1, -1);
        }

        else
        {

          v149 = *(v145 + 8);
          v149(v143, v144);
        }

        *(v0 + 680) = v149;
        v165 = *(v0 + 280);
        v166 = (*(v0 + 264) + *(v0 + 456));
        (*(*(v0 + 328) + 8))(*(v0 + 360), *(v0 + 320));
        v167 = v166[1];
        v168 = swift_getObjectType();
        v169 = type metadata accessor for CKSyncEngine.State.Serialization();
        (*(*(v169 - 8) + 56))(v165, 1, 1, v169);
        v170 = *(v167 + 24);
        swift_unknownObjectRetain();
        v170(v165, v168, v167);
        swift_unknownObjectRelease();
        v171 = *v166;
        v172 = v166[1];
        *(v0 + 688) = v172;
        v173 = swift_getObjectType();
        *(v0 + 696) = v173;
        *(v0 + 216) = v171;
        v174 = *(v172 + 8);
        v175 = *(v174 + 112);
        swift_unknownObjectRetain();
        v189 = (v175 + *v175);
        v176 = swift_task_alloc();
        *(v0 + 704) = v176;
        *v176 = v0;
        v176[1] = CloudManager.handleSentRecordZoneChanges(_:syncEngine:);

        return v189(v173, v174);
      }

      goto LABEL_46;
    }

    goto LABEL_31;
  }

  if (v19 <= 24)
  {
    if (v19 != 23)
    {
      goto LABEL_46;
    }

    goto LABEL_31;
  }

  if (v19 == 25)
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 544);
    v21 = *(v0 + 448);
    v22 = *(v0 + 408);
    v23 = *(v0 + 384);
    v24 = *(v0 + 344);
    v25 = *(v0 + 320);
    v26 = *(v0 + 328);
    v27 = __swift_project_value_buffer(v25, static CloudManager.Log);
    swift_beginAccess();
    (*(v26 + 16))(v24, v27, v25);
    v20(v22, v21, v23);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 408);
    v32 = *(v0 + 384);
    v33 = *(v0 + 392);
    if (v30)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      MEMORY[0x21CE917A0]();
      v36 = _swift_stdlib_bridgeErrorToNSError();
      v37 = *(v33 + 8);
      v37(v31, v32);
      *(v34 + 4) = v36;
      *v35 = v36;
      v9 = v37;
      _os_log_impl(&dword_21607C000, v28, v29, "Quota exceeded %@", v34, 0xCu);
      outlined destroy of UTType?(v35, &_sSo8NSObjectCSgMd);
      MEMORY[0x21CE94770](v35, -1, -1);
      MEMORY[0x21CE94770](v34, -1, -1);
    }

    else
    {

      v9 = *(v33 + 8);
      v9(v31, v32);
    }

    v4 = v186;
    v10 = *(v0 + 448);
    v11 = *(v0 + 384);
    (*(*(v0 + 328) + 8))(*(v0 + 344), *(v0 + 320));
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 752) = 1;

    static Published.subscript.setter();

    v9(v10, v11);
    goto LABEL_10;
  }

  if (v19 != 26)
  {
    if (v19 == 28)
    {
      v150 = 1;
      goto LABEL_64;
    }

    goto LABEL_46;
  }

  v150 = 0;
LABEL_64:
  v151 = *(v0 + 464);
  v152 = [v17 recordID];
  v153 = [v152 zoneID];

  v154 = [objc_allocWithZone(MEMORY[0x277CBC5E8]) initWithZoneID_];
  *(v0 + 656) = v154;

  v155 = swift_getObjectType();
  *(v0 + 224) = v187;
  v156 = *(v151 + 8);
  v188 = (*(v156 + 184) + **(v156 + 184));
  v157 = swift_task_alloc();
  *(v0 + 664) = v157;
  *v157 = v0;
  v157[1] = CloudManager.handleSentRecordZoneChanges(_:syncEngine:);

  return v188(v154, v17, v150, v155, v156);
}

{
  specialized CloudManager.cloudModel.setter(*(v0 + 216), *(v0 + 264), *(v0 + 696), *(v0 + 688));
  v1 = *(v0 + 680);
  v2 = *(v0 + 448);
  v3 = *(v0 + 384);
  v4 = *(v0 + 264);

  v1(v2, v3);
  *(v4 + 136) = 0;

  v177 = *(v0 + 552);
  v5 = *(v0 + 568);
  v6 = *(v0 + 560) + 1;
  if (v6 == *(v0 + 528))
  {
LABEL_2:

    if (v5[2])
    {
      CKSyncEngine.state.getter();
      CKSyncEngine.State.add(pendingDatabaseChanges:)(MEMORY[0x277D84F90]);

      CKSyncEngine.state.getter();
      CKSyncEngine.State.add(pendingRecordZoneChanges:)(v5);
    }

    v7 = *(v0 + 272);
    swift_unknownObjectRelease();
    static CloudLog.LogEnd(_:)("handleSentRecordZoneChanges(_:syncEngine:)", 42, 2, v7, &protocol witness table for CloudManager);

    v8 = *(v0 + 8);

    return v8();
  }

  v176 = *(v0 + 568);
  while (1)
  {
    *(v0 + 568) = v5;
    *(v0 + 560) = v6;
    *(v0 + 552) = v177;
    v11 = *(v0 + 544);
    v12 = *(v0 + 448);
    v13 = *(v0 + 384);
    v14 = *(v0 + 520) + ((*(v0 + 744) + 32) & ~*(v0 + 744)) + *(v0 + 536) * v6;
    *(v0 + 576) = (*(v0 + 392) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v15 = v11(v12, v14, v13);
    v16 = MEMORY[0x21CE917B0](v15);
    *(v0 + 584) = v16;
    v17 = MEMORY[0x21CE917A0]();
    *(v0 + 192) = v17;
    type metadata accessor for related decl 'e' for CKErrorCode(0);
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type related decl 'e' for CKErrorCode and conformance related decl 'e' for CKErrorCode, type metadata accessor for related decl 'e' for CKErrorCode);
    _BridgedStoredNSError.code.getter();

    v18 = *(v0 + 200);
    if (v18 > 13)
    {
      break;
    }

    if (v18 <= 5)
    {
      if ((v18 - 3) >= 2)
      {
        goto LABEL_46;
      }
    }

    else if (v18 != 6 && v18 != 9)
    {
      if (v18 == 11)
      {
        v105 = *(v0 + 748);
        v107 = *(v0 + 296);
        v106 = *(v0 + 304);
        v108 = *(v0 + 288);
        *v106 = [v16 recordID];
        (*(v107 + 104))(v106, v105, v108);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
        }

        v111 = v5[2];
        v110 = v5[3];
        if (v111 >= v110 >> 1)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v110 > 1, v111 + 1, 1, v5);
        }

        v113 = *(v0 + 296);
        v112 = *(v0 + 304);
        v114 = *(v0 + 288);
        v5[2] = v111 + 1;
        (*(v113 + 32))(v5 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v111, v112, v114);
        *(v0 + 712) = v5;
        v115 = *(v0 + 464);
        v116 = [*(v0 + 584) recordID];
        *(v0 + 720) = v116;
        ObjectType = swift_getObjectType();
        *(v0 + 208) = v177;
        v118 = *(v115 + 8);
        v185 = (*(v118 + 192) + **(v118 + 192));
        v119 = swift_task_alloc();
        *(v0 + 728) = v119;
        *v119 = v0;
        v119[1] = CloudManager.handleSentRecordZoneChanges(_:syncEngine:);
        v120 = v116;
        v121 = ObjectType;
        v122 = v118;
        v123 = v185;

        return v123(v120, v121, v122);
      }

LABEL_46:
      v89 = v16;
      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v90 = *(v0 + 544);
      v91 = *(v0 + 448);
      v92 = *(v0 + 400);
      v93 = *(v0 + 384);
      v95 = *(v0 + 328);
      v94 = *(v0 + 336);
      v96 = *(v0 + 320);
      v97 = __swift_project_value_buffer(v96, static CloudManager.Log);
      swift_beginAccess();
      (*(v95 + 16))(v94, v97, v96);
      v90(v92, v91, v93);
      v47 = v89;
      v48 = Logger.logObject.getter();
      v98 = static os_log_type_t.fault.getter();

      v99 = os_log_type_enabled(v48, v98);
      v51 = *(v0 + 448);
      v54 = *(v0 + 392);
      v52 = *(v0 + 400);
      v53 = *(v0 + 384);
      v55 = *(v0 + 328);
      v178 = *(v0 + 320);
      v183 = *(v0 + 336);
      if (v99)
      {
        v171 = *(v0 + 384);
        v100 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        *v100 = 138412546;
        v102 = [v47 recordID];
        *(v100 + 4) = v102;
        *v101 = v102;
        *(v100 + 12) = 2112;
        MEMORY[0x21CE917A0]();
        v172 = v47;
        v174 = v51;
        v103 = _swift_stdlib_bridgeErrorToNSError();
        v60 = *(v54 + 8);
        v104 = v52;
        v62 = v171;
        v60(v104, v171);
        *(v100 + 14) = v103;
        v101[1] = v103;
        _os_log_impl(&dword_21607C000, v48, v98, "Unknown error saving record %@: %@", v100, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v101, -1, -1);
        v63 = v100;
        goto LABEL_35;
      }

      goto LABEL_8;
    }

LABEL_31:
    v38 = v16;
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v39 = *(v0 + 544);
    v40 = *(v0 + 448);
    v41 = *(v0 + 416);
    v42 = *(v0 + 384);
    v43 = *(v0 + 352);
    v44 = *(v0 + 320);
    v45 = *(v0 + 328);
    v46 = __swift_project_value_buffer(v44, static CloudManager.Log);
    swift_beginAccess();
    (*(v45 + 16))(v43, v46, v44);
    v39(v41, v40, v42);
    v47 = v38;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();

    v50 = os_log_type_enabled(v48, v49);
    v51 = *(v0 + 448);
    v52 = *(v0 + 416);
    v53 = *(v0 + 384);
    v54 = *(v0 + 392);
    v55 = *(v0 + 328);
    v178 = *(v0 + 320);
    v183 = *(v0 + 352);
    if (v50)
    {
      v56 = swift_slowAlloc();
      v169 = v53;
      v57 = swift_slowAlloc();
      *v56 = 138412546;
      v58 = [v47 recordID];
      *(v56 + 4) = v58;
      *v57 = v58;
      *(v56 + 12) = 2112;
      MEMORY[0x21CE917A0]();
      v172 = v47;
      v174 = v51;
      v59 = _swift_stdlib_bridgeErrorToNSError();
      v60 = *(v54 + 8);
      v61 = v52;
      v62 = v169;
      v60(v61, v169);
      *(v56 + 14) = v59;
      v57[1] = v59;
      _os_log_impl(&dword_21607C000, v48, v49, "Retryable error saving %@: %@", v56, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v57, -1, -1);
      v63 = v56;
LABEL_35:
      MEMORY[0x21CE94770](v63, -1, -1);

      (*(v55 + 8))(v183, v178);
      v60(v174, v62);
      goto LABEL_9;
    }

LABEL_8:

    v10 = *(v54 + 8);
    v10(v52, v53);
    (*(v55 + 8))(v183, v178);
    v10(v51, v53);
LABEL_9:
    v5 = v176;
LABEL_10:
    v6 = *(v0 + 560) + 1;
    if (v6 == *(v0 + 528))
    {
      goto LABEL_2;
    }
  }

  if (v18 <= 22)
  {
    if (v18 == 14)
    {
      v64 = MEMORY[0x21CE917A0]();
      v65 = related decl 'e' for CKErrorCode.serverRecord.getter();
      *(v0 + 592) = v65;

      if (!v65)
      {
        v184 = v16;
        if (one-time initialization token for Log != -1)
        {
          swift_once();
        }

        v179 = *(v0 + 544);
        v66 = *(v0 + 448);
        v67 = *(v0 + 432);
        v68 = *(v0 + 384);
        v69 = *(v0 + 368);
        v70 = *(v0 + 320);
        v71 = *(v0 + 328);
        v72 = __swift_project_value_buffer(v70, static CloudManager.Log);
        swift_beginAccess();
        (*(v71 + 16))(v69, v72, v70);
        v179(v67, v66, v68);
        v73 = Logger.logObject.getter();
        v74 = static os_log_type_t.error.getter();
        v75 = os_log_type_enabled(v73, v74);
        v76 = *(v0 + 448);
        v77 = *(v0 + 432);
        v78 = *(v0 + 384);
        v79 = *(v0 + 392);
        v80 = *(v0 + 368);
        v81 = *(v0 + 328);
        v180 = *(v0 + 320);
        if (v75)
        {
          v170 = *(v0 + 384);
          v82 = swift_slowAlloc();
          v175 = v76;
          v83 = swift_slowAlloc();
          *v82 = 138412290;
          MEMORY[0x21CE917A0]();
          v173 = v80;
          v84 = _swift_stdlib_bridgeErrorToNSError();
          v85 = *(v79 + 8);
          v85(v77, v170);
          *(v82 + 4) = v84;
          *v83 = v84;
          _os_log_impl(&dword_21607C000, v73, v74, "No server record for conflict %@", v82, 0xCu);
          outlined destroy of UTType?(v83, &_sSo8NSObjectCSgMd);
          MEMORY[0x21CE94770](v83, -1, -1);
          MEMORY[0x21CE94770](v82, -1, -1);

          (*(v81 + 8))(v173, v180);
          v85(v175, v170);
        }

        else
        {

          v88 = *(v79 + 8);
          v88(v77, v78);
          (*(v81 + 8))(v80, v180);
          v88(v76, v78);
        }

        goto LABEL_10;
      }

      v150 = (*(v0 + 264) + *(v0 + 456));
      v151 = *v150;
      *(v0 + 600) = *v150;
      v152 = v150[1];
      v153 = swift_getObjectType();
      *(v0 + 608) = v153;
      *(v0 + 232) = v151;
      swift_unknownObjectRetain_n();
      v154 = [v16 recordID];
      *(v0 + 616) = v154;
      v155 = *(v152 + 8);
      *(v0 + 624) = v155;
      v187 = (*(v155 + 152) + **(v155 + 152));
      v156 = swift_task_alloc();
      *(v0 + 632) = v156;
      *v156 = v0;
      v156[1] = CloudManager.handleSentRecordZoneChanges(_:syncEngine:);
      v120 = v154;
      v121 = v153;
      v122 = v155;
      v123 = v187;

      return v123(v120, v121, v122);
    }

    if (v18 != 20)
    {
      if (v18 == 21)
      {
        if (one-time initialization token for Log != -1)
        {
          swift_once();
        }

        v124 = *(v0 + 544);
        v125 = *(v0 + 448);
        v126 = *(v0 + 424);
        v127 = *(v0 + 384);
        v128 = *(v0 + 360);
        v129 = *(v0 + 320);
        v130 = *(v0 + 328);
        v131 = __swift_project_value_buffer(v129, static CloudManager.Log);
        swift_beginAccess();
        (*(v130 + 16))(v128, v131, v129);
        v124(v126, v125, v127);
        v132 = Logger.logObject.getter();
        v133 = static os_log_type_t.error.getter();
        v134 = os_log_type_enabled(v132, v133);
        v135 = *(v0 + 424);
        v136 = *(v0 + 384);
        v137 = *(v0 + 392);
        if (v134)
        {
          v138 = swift_slowAlloc();
          v139 = swift_slowAlloc();
          *v138 = 138412290;
          MEMORY[0x21CE917A0]();
          v140 = _swift_stdlib_bridgeErrorToNSError();
          v141 = *(v137 + 8);
          v141(v135, v136);
          *(v138 + 4) = v140;
          *v139 = v140;
          _os_log_impl(&dword_21607C000, v132, v133, "Invalid change token, resetting %@", v138, 0xCu);
          outlined destroy of UTType?(v139, &_sSo8NSObjectCSgMd);
          MEMORY[0x21CE94770](v139, -1, -1);
          MEMORY[0x21CE94770](v138, -1, -1);
        }

        else
        {

          v141 = *(v137 + 8);
          v141(v135, v136);
        }

        *(v0 + 680) = v141;
        v157 = *(v0 + 280);
        v158 = (*(v0 + 264) + *(v0 + 456));
        (*(*(v0 + 328) + 8))(*(v0 + 360), *(v0 + 320));
        v159 = v158[1];
        v160 = swift_getObjectType();
        v161 = type metadata accessor for CKSyncEngine.State.Serialization();
        (*(*(v161 - 8) + 56))(v157, 1, 1, v161);
        v162 = *(v159 + 24);
        swift_unknownObjectRetain();
        v162(v157, v160, v159);
        swift_unknownObjectRelease();
        v163 = *v158;
        v164 = v158[1];
        *(v0 + 688) = v164;
        v165 = swift_getObjectType();
        *(v0 + 696) = v165;
        *(v0 + 216) = v163;
        v166 = *(v164 + 8);
        v167 = *(v166 + 112);
        swift_unknownObjectRetain();
        v181 = (v167 + *v167);
        v168 = swift_task_alloc();
        *(v0 + 704) = v168;
        *v168 = v0;
        v168[1] = CloudManager.handleSentRecordZoneChanges(_:syncEngine:);

        return v181(v165, v166);
      }

      goto LABEL_46;
    }

    goto LABEL_31;
  }

  if (v18 <= 24)
  {
    if (v18 != 23)
    {
      goto LABEL_46;
    }

    goto LABEL_31;
  }

  if (v18 == 25)
  {
    v182 = v16;
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v19 = *(v0 + 544);
    v20 = *(v0 + 448);
    v21 = *(v0 + 408);
    v22 = *(v0 + 384);
    v23 = *(v0 + 344);
    v24 = *(v0 + 320);
    v25 = *(v0 + 328);
    v26 = __swift_project_value_buffer(v24, static CloudManager.Log);
    swift_beginAccess();
    (*(v25 + 16))(v23, v26, v24);
    v19(v21, v20, v22);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v0 + 408);
    v31 = *(v0 + 384);
    v32 = *(v0 + 392);
    if (v29)
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      MEMORY[0x21CE917A0]();
      v35 = _swift_stdlib_bridgeErrorToNSError();
      v36 = *(v32 + 8);
      v36(v30, v31);
      *(v33 + 4) = v35;
      *v34 = v35;
      v37 = v36;
      _os_log_impl(&dword_21607C000, v27, v28, "Quota exceeded %@", v33, 0xCu);
      outlined destroy of UTType?(v34, &_sSo8NSObjectCSgMd);
      MEMORY[0x21CE94770](v34, -1, -1);
      MEMORY[0x21CE94770](v33, -1, -1);
    }

    else
    {

      v37 = *(v32 + 8);
      v37(v30, v31);
    }

    v5 = v176;
    v86 = *(v0 + 448);
    v87 = *(v0 + 384);
    (*(*(v0 + 328) + 8))(*(v0 + 344), *(v0 + 320));
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 752) = 1;

    static Published.subscript.setter();

    v37(v86, v87);
    goto LABEL_10;
  }

  if (v18 != 26)
  {
    if (v18 == 28)
    {
      v142 = 1;
      goto LABEL_63;
    }

    goto LABEL_46;
  }

  v142 = 0;
LABEL_63:
  v143 = *(v0 + 464);
  v144 = [v16 recordID];
  v145 = [v144 zoneID];

  v146 = [objc_allocWithZone(MEMORY[0x277CBC5E8]) initWithZoneID_];
  *(v0 + 656) = v146;

  v147 = swift_getObjectType();
  *(v0 + 224) = v177;
  v148 = *(v143 + 8);
  v186 = (*(v148 + 184) + **(v148 + 184));
  v149 = swift_task_alloc();
  *(v0 + 664) = v149;
  *v149 = v0;
  v149[1] = CloudManager.handleSentRecordZoneChanges(_:syncEngine:);

  return v186(v146, v16, v142, v147, v148);
}