uint64_t CloudManager.handleSentRecordZoneChanges(_:syncEngine:)(char a1)
{
  v2 = *(*v1 + 616);
  v3 = *(*v1 + 264);
  *(*v1 + 753) = a1;

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](CloudManager.handleSentRecordZoneChanges(_:syncEngine:), v3, 0);
}

{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 264);
  *(v3 + 754) = a1;

  *(v3 + 672) = *(v2 + 224);

  return MEMORY[0x2822009F8](CloudManager.handleSentRecordZoneChanges(_:syncEngine:), v4, 0);
}

uint64_t CloudManager.handleWillFetchChanges(_:syncEngine:)(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v3[18] = *v2;
  type metadata accessor for Date();
  v3[19] = swift_task_alloc();
  Changes = type metadata accessor for CKSyncEngine.FetchChangesOptions.Scope();
  v3[20] = Changes;
  v3[21] = *(Changes - 8);
  v3[22] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[23] = v5;
  v3[24] = *(v5 - 8);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  ChangesContext = type metadata accessor for CKSyncEngine.FetchChangesContext();
  v3[27] = ChangesContext;
  v3[28] = *(ChangesContext - 8);
  v3[29] = swift_task_alloc();
  ChangesOptions = type metadata accessor for CKSyncEngine.FetchChangesOptions();
  v3[30] = ChangesOptions;
  v3[31] = *(ChangesOptions - 8);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](CloudManager.handleWillFetchChanges(_:syncEngine:), v2, 0);
}

void CloudManager.handleWillFetchChanges(_:syncEngine:)()
{
  v75 = v0;
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  v4 = v0[18];
  v5 = v0[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys23CustomStringConvertible_pSgGMd);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_21658CA50;
  Changes = type metadata accessor for CKSyncEngine.Event.WillFetchChanges();
  *(v6 + 56) = Changes;
  *(v6 + 64) = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type CKSyncEngine.Event.WillFetchChanges and conformance CKSyncEngine.Event.WillFetchChanges, MEMORY[0x277CBBD10]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v6 + 32));
  (*(*(Changes - 8) + 16))(boxed_opaque_existential_1, v5, Changes);
  static CloudLog.LogBegin(_:_:)(v6, "handleWillFetchChanges(_:syncEngine:)", 37, 2, v4, &protocol witness table for CloudManager);

  MEMORY[0x21CE91780](v9);
  CKSyncEngine.FetchChangesContext.options.getter();
  (*(v2 + 8))(v1, v3);
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v10 = v0[34];
  v11 = v0[35];
  v12 = v0[33];
  v72 = v0[32];
  v13 = v0[30];
  v14 = v0[31];
  v15 = v0[26];
  v17 = v0[23];
  v16 = v0[24];
  v18 = __swift_project_value_buffer(v17, static CloudManager.Log);
  v0[36] = v18;
  swift_beginAccess();
  v19 = *(v16 + 16);
  v0[37] = v19;
  v0[38] = (v16 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v19(v15, v18, v17);
  v20 = *(v14 + 16);
  v20(v10, v11, v13);
  v20(v12, v11, v13);
  v20(v72, v11, v13);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  v23 = os_log_type_enabled(v21, v22);
  v25 = v0[33];
  v24 = v0[34];
  v26 = v0[31];
  v27 = v0[30];
  if (v23)
  {
    v68 = v22;
    log = v21;
    v29 = v0[21];
    v28 = v0[22];
    v30 = v0[20];
    v31 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v74 = v67;
    *v31 = 136447234;
    swift_beginAccess();
    v32 = StaticString.description.getter();
    v70 = v25;
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v74);

    *(v31 + 4) = v34;
    *(v31 + 12) = 2082;
    *(v31 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x8000000216584C50, &v74);
    *(v31 + 22) = 2080;
    MEMORY[0x21CE916C0]();
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type CKSyncEngine.FetchChangesOptions.Scope and conformance CKSyncEngine.FetchChangesOptions.Scope, MEMORY[0x277CBBC38]);
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v36;
    (*(v29 + 8))(v28, v30);
    v38 = *(v26 + 8);
    v38(v24, v27);
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v74);

    *(v31 + 24) = v39;
    *(v31 + 32) = 2080;
    v40 = CKSyncEngine.FetchChangesOptions.prioritizedZoneIDs.getter();
    v41 = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordZoneID);
    v42 = MEMORY[0x21CE922B0](v40, v41);
    v44 = v43;

    v38(v70, v27);
    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, &v74);

    *(v31 + 34) = v45;
    *(v31 + 42) = 1026;
    v47 = MEMORY[0x21CE91610](v46);
    v48 = [v47 defaultConfiguration];

    if (!v48)
    {
      __break(1u);
      return;
    }

    v49 = v0[32];
    v50 = v0[30];
    v73 = v0[26];
    v52 = v0[23];
    v51 = v0[24];
    v53 = [v48 allowsCellularAccess];

    v38(v49, v50);
    *(v31 + 44) = v53;
    _os_log_impl(&dword_21607C000, log, v68, "%{public}s.%{public}s %s, %s, cellular=%{BOOL,public}d", v31, 0x30u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v67, -1, -1);
    MEMORY[0x21CE94770](v31, -1, -1);

    v54 = *(v51 + 8);
    v54(v73, v52);
  }

  else
  {
    v55 = v0[26];
    v56 = v0[23];
    v57 = v0[24];
    v38 = *(v26 + 8);
    v38(v0[32], v0[30]);

    v38(v25, v27);
    v38(v24, v27);
    v54 = *(v57 + 8);
    v54(v55, v56);
  }

  v0[39] = v38;
  v0[40] = v54;
  v58 = v0[19];
  v59 = v0[17];
  static Date.now.getter();
  CloudManager.lastSyncStart.setter(v58);
  v60 = (v59 + OBJC_IVAR____TtC9MomentsUI12CloudManager_cloudModel);
  swift_beginAccess();
  v61 = *v60;
  v62 = v60[1];
  v0[41] = v62;
  ObjectType = swift_getObjectType();
  v0[42] = ObjectType;
  v0[14] = v61;
  v64 = *(v62 + 8);
  v65 = *(v64 + 128);
  swift_unknownObjectRetain();
  v71 = (v65 + *v65);
  v66 = swift_task_alloc();
  v0[43] = v66;
  *v66 = v0;
  v66[1] = CloudManager.handleWillFetchChanges(_:syncEngine:);

  v71(ObjectType, v64);
}

uint64_t CloudManager.handleWillFetchChanges(_:syncEngine:)()
{
  v2 = *v1;
  (*v1)[44] = v0;

  if (v0)
  {
    v3 = v2[17];
    v4 = CloudManager.handleWillFetchChanges(_:syncEngine:);
  }

  else
  {
    v5 = v2[17];
    specialized CloudManager.cloudModel.setter(v2[14], v5, v2[42], v2[41]);
    v4 = CloudManager.handleWillFetchChanges(_:syncEngine:);
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  (*(v0 + 312))(*(v0 + 280), *(v0 + 240));
  static CloudLog.LogEnd(_:)("handleWillFetchChanges(_:syncEngine:)", 37, 2, *(v0 + 144), &protocol witness table for CloudManager);

  v1 = *(v0 + 8);

  return v1();
}

{
  specialized CloudManager.cloudModel.setter(v0[14], v0[17], v0[42], v0[41]);
  v1 = swift_task_alloc();
  v0[45] = v1;
  *v1 = v0;
  v1[1] = CloudManager.handleWillFetchChanges(_:syncEngine:);

  return MEMORY[0x28210DB58]();
}

{
  v1 = *(*v0 + 136);

  return MEMORY[0x2822009F8](CloudManager.handleWillFetchChanges(_:syncEngine:), v1, 0);
}

{
  v35 = v0;
  v1 = v0[44];
  v2 = v0[37];
  v3 = v0[36];
  v4 = v0[25];
  v5 = v0[23];
  v6 = v0[19];
  static Date.now.getter();
  CloudManager.lastSyncEnd.setter(v6);
  v2(v4, v3, v5);
  v7 = v1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[44];
    v32 = v0[35];
    v33 = v0[39];
    v30 = v0[40];
    v31 = v0[30];
    v28 = v0[23];
    v29 = v0[25];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v34 = v13;
    *v11 = 136446722;
    swift_beginAccess();
    v14 = StaticString.description.getter();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v34);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2082;
    *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x8000000216584C50, &v34);
    *(v11 + 22) = 2112;
    v17 = v10;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v18;
    *v12 = v18;
    _os_log_impl(&dword_21607C000, v8, v9, "%{public}s.%{public}s CloudKit Fetch ABORTED %@", v11, 0x20u);
    outlined destroy of UTType?(v12, &_sSo8NSObjectCSgMd);
    MEMORY[0x21CE94770](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v13, -1, -1);
    MEMORY[0x21CE94770](v11, -1, -1);

    v30(v29, v28);
    v33(v32, v31);
  }

  else
  {
    v19 = v0[44];
    v21 = v0[39];
    v20 = v0[40];
    v22 = v0[35];
    v23 = v0[30];
    v24 = v0[25];
    v25 = v0[23];

    v20(v24, v25);
    v21(v22, v23);
  }

  static CloudLog.LogEnd(_:)("handleWillFetchChanges(_:syncEngine:)", 37, 2, v0[18], &protocol witness table for CloudManager);

  v26 = v0[1];

  return v26();
}

uint64_t CloudManager.handleDidFetchChanges(_:syncEngine:)(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v3[15] = *v2;
  v4 = type metadata accessor for Logger();
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();
  v5 = type metadata accessor for CKSyncEngine.SendChangesOptions.Scope();
  v3[19] = v5;
  v3[20] = *(v5 - 8);
  v3[21] = swift_task_alloc();
  v6 = type metadata accessor for CKSyncEngine.SendChangesOptions();
  v3[22] = v6;
  v7 = *(v6 - 8);
  v3[23] = v7;
  v3[24] = *(v7 + 64);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  type metadata accessor for Date();
  v3[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](CloudManager.handleDidFetchChanges(_:syncEngine:), v2, 0);
}

uint64_t CloudManager.handleDidFetchChanges(_:syncEngine:)()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];
  v0[29] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys23CustomStringConvertible_pSgGMd);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21658CA50;
  Changes = type metadata accessor for CKSyncEngine.Event.DidFetchChanges();
  *(v4 + 56) = Changes;
  *(v4 + 64) = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type CKSyncEngine.Event.DidFetchChanges and conformance CKSyncEngine.Event.DidFetchChanges, MEMORY[0x277CBBCF0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v4 + 32));
  (*(*(Changes - 8) + 16))(boxed_opaque_existential_1, v3, Changes);
  static CloudLog.LogBegin(_:_:)(v4, "handleDidFetchChanges(_:syncEngine:)", 36, 2, v1, &protocol witness table for CloudManager);

  v7 = (v2 + OBJC_IVAR____TtC9MomentsUI12CloudManager_cloudModel);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  v0[30] = v9;
  ObjectType = swift_getObjectType();
  v0[31] = ObjectType;
  v0[8] = v8;
  v11 = *(v9 + 8);
  v12 = *(v11 + 144);
  swift_unknownObjectRetain();
  v15 = (v12 + *v12);
  v13 = swift_task_alloc();
  v0[32] = v13;
  *v13 = v0;
  v13[1] = CloudManager.handleDidFetchChanges(_:syncEngine:);

  return v15(ObjectType, v11);
}

{
  v2 = *v1;
  (*v1)[33] = v0;

  if (v0)
  {
    v3 = v2[14];
    v4 = CloudManager.handleDidFetchChanges(_:syncEngine:);
  }

  else
  {
    v5 = v2[14];
    specialized CloudManager.cloudModel.setter(v2[8], v5, v2[31], v2[30]);
    v4 = CloudManager.handleDidFetchChanges(_:syncEngine:);
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = *v0;
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 184);
  v4 = *(*v0 + 176);
  v5 = *(*v0 + 112);

  v6 = *(v3 + 8);
  *(v1 + 304) = v6;
  v6(v2, v4);

  return MEMORY[0x2822009F8](CloudManager.handleDidFetchChanges(_:syncEngine:), v5, 0);
}

{
  v1 = *(v0 + 280);

  (*(v0 + 304))(*(v0 + 216), *(v0 + 176));
  static CloudLog.LogEnd(_:)("_sendChanges(zoneSet:reason:numRecords:expectedSize:syncEngine:_:_:)", 68, 2, *(v0 + 120), &protocol witness table for CloudManager);

  v2 = *(v0 + 224);
  v3 = *(v0 + 120);
  static Date.now.getter();
  CloudManager.lastSyncEnd.setter(v2);
  static CloudLog.LogEnd(_:)("handleDidFetchChanges(_:syncEngine:)", 36, 2, v3, &protocol witness table for CloudManager);

  v4 = *(v0 + 8);

  return v4();
}

{
  v24 = v0;
  specialized CloudManager.cloudModel.setter(v0[8], v0[14], v0[31], v0[30]);
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v1 = v0[33];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];
  v5 = __swift_project_value_buffer(v4, static CloudManager.Log);
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[33];
  v12 = v0[17];
  v11 = v0[18];
  v13 = v0[16];
  if (v9)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v14 = 136446466;
    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x8000000216584C80, &v23);
    *(v14 + 12) = 2112;
    v17 = v10;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v18;
    *v15 = v18;
    _os_log_impl(&dword_21607C000, v7, v8, "CloudManager.%{public}s: CloudKit Fetch FAILED %@", v14, 0x16u);
    outlined destroy of UTType?(v15, &_sSo8NSObjectCSgMd);
    MEMORY[0x21CE94770](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x21CE94770](v16, -1, -1);
    MEMORY[0x21CE94770](v14, -1, -1);
  }

  else
  {
  }

  (*(v12 + 8))(v11, v13);
  v19 = v0[28];
  v20 = v0[15];
  static Date.now.getter();
  CloudManager.lastSyncEnd.setter(v19);
  static CloudLog.LogEnd(_:)("handleDidFetchChanges(_:syncEngine:)", 36, 2, v20, &protocol witness table for CloudManager);

  v21 = v0[1];

  return v21();
}

id CloudManager.handleDidFetchChanges(_:syncEngine:)()
{
  *(v0 + 72) = MEMORY[0x277D84FA0];
  CKSyncEngine.state.getter();
  v1 = CKSyncEngine.State.pendingDatabaseChanges.getter();

  v2 = *(v1 + 16);

  if (v2)
  {
    CKSyncEngine.state.getter();
    v3 = CKSyncEngine.State.pendingDatabaseChanges.getter();

    v4 = CloudManager._pendingDatabaseChanges2ZoneIDs(changes:)(v3);

    specialized Set.formUnion<A>(_:)(v4);
  }

  CKSyncEngine.state.getter();
  v5 = CKSyncEngine.State.pendingRecordZoneChanges.getter();

  v6 = *(v5 + 16);

  if (v6)
  {
    CKSyncEngine.state.getter();
    v7 = CKSyncEngine.State.pendingRecordZoneChanges.getter();

    v8 = CloudManager._pendingRecordZoneChanges2ZoneIDs(changes:)(v7);

    specialized Set.formUnion<A>(_:)(v8);
  }

  v9 = *(v0 + 72);
  *(v0 + 272) = v9;
  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = __CocoaSet.count.getter();
  }

  else
  {
    v10 = *(v9 + 16);
  }

  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21658CA40;
  v12 = MEMORY[0x277D837D0];
  v13 = MEMORY[0x277D83838];
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = v13;
  v14 = MEMORY[0x277D83B88];
  v15 = MEMORY[0x277D83BF8];
  *(v11 + 32) = 0xD00000000000004ALL;
  *(v11 + 40) = 0x8000000216584CB0;
  *(v11 + 96) = v14;
  *(v11 + 104) = v15;
  v16 = v14;
  *(v11 + 72) = v10;
  *(v0 + 80) = 1;
  type metadata accessor for CKOperationGroupTransferSize(0);
  v17 = String.init<A>(describing:)();
  *(v11 + 136) = v12;
  *(v11 + 144) = v13;
  *(v11 + 112) = v17;
  *(v11 + 120) = v18;
  *(v11 + 176) = v12;
  *(v11 + 184) = v13;
  *(v11 + 152) = 0xD000000000000024;
  *(v11 + 160) = 0x8000000216584C80;
  *(v11 + 216) = v16;
  *(v11 + 224) = v15;
  *(v11 + 192) = 1826;
  if (one-time initialization token for $inDelegate != -1)
  {
    swift_once();
  }

  v19 = *(v0 + 120);
  TaskLocal.get()();
  v20 = *(v0 + 312);
  v21 = MEMORY[0x277D839D8];
  *(v11 + 256) = MEMORY[0x277D839B0];
  *(v11 + 264) = v21;
  *(v11 + 232) = v20;
  static CloudLog.LogBegin(_:_:)(v11, "_sendChanges(zoneSet:reason:numRecords:expectedSize:syncEngine:_:_:)", 68, 2, v19, &protocol witness table for CloudManager);

  if ((v9 & 0xC000000000000001) != 0)
  {
    v22 = v10;
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_17;
    }
  }

  else
  {
    v22 = v10;
    if (!*(v9 + 16))
    {
LABEL_17:
      static CloudLog.LogEnd(_:)("_sendChanges(zoneSet:reason:numRecords:expectedSize:syncEngine:_:_:)", 68, 2, *(v0 + 120), &protocol witness table for CloudManager);

      v40 = *(v0 + 224);
      v41 = *(v0 + 120);
      static Date.now.getter();
      CloudManager.lastSyncEnd.setter(v40);
      static CloudLog.LogEnd(_:)("handleDidFetchChanges(_:syncEngine:)", 36, 2, v41, &protocol witness table for CloudManager);

      v42 = *(v0 + 8);

      return v42();
    }
  }

  v49 = specialized _copyCollectionToContiguousArray<A>(_:)(v9);
  v23 = [objc_allocWithZone(MEMORY[0x277CBC4F8]) init];
  *(v0 + 280) = v23;
  v24 = MEMORY[0x21CE91FC0](0xD00000000000004ALL, 0x8000000216584CB0);
  [v23 setName_];

  [v23 setQuantity_];
  [v23 setExpectedSendSize_];
  result = [v23 defaultConfiguration];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v26 = result;
  v28 = *(v0 + 208);
  v27 = *(v0 + 216);
  v46 = *(v0 + 200);
  v47 = *(v0 + 192);
  v29 = *(v0 + 176);
  v30 = *(v0 + 184);
  v31 = *(v0 + 160);
  v32 = *(v0 + 168);
  v33 = *(v0 + 152);
  v50 = *(v0 + 120);
  v48 = *(v0 + 104);
  [result setAllowsCellularAccess_];

  *v32 = v49;
  (*(v31 + 104))(v32, *MEMORY[0x277CBBC18], v33);
  v34 = v23;
  CKSyncEngine.SendChangesOptions.init(scope:operationGroup:)();
  v35 = *(v30 + 16);
  v35(v28, v27, v29);
  v35(v46, v28, v29);
  v36 = (*(v30 + 80) + 48) & ~*(v30 + 80);
  v37 = swift_allocObject();
  *(v0 + 288) = v37;
  *(v37 + 2) = 0xD000000000000024;
  *(v37 + 3) = 0x8000000216584C80;
  *(v37 + 4) = 1826;
  *(v37 + 5) = v48;
  (*(v30 + 32))(&v37[v36], v28, v29);
  *&v37[(v47 + v36 + 7) & 0xFFFFFFFFFFFFFFF8] = v50;

  TaskLocal.get()();
  if (*(v0 + 313))
  {
    v38 = *(*(v0 + 184) + 8);
    v38(*(v0 + 200), *(v0 + 176));
    _StringGuts.grow(_:)(27);

    *(v0 + 88) = 1826;
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x21CE92100](v39);

    specialized static BTask.detached(name:operation:)(0xD00000000000007DLL, 0x8000000216584D50, &async function pointer to partial apply for closure #1 in CloudManager._sendChanges(zoneSet:reason:numRecords:expectedSize:syncEngine:_:_:), v37);

    v38(*(v0 + 216), *(v0 + 176));
    goto LABEL_17;
  }

  v43 = swift_task_alloc();
  *(v0 + 296) = v43;
  *v43 = v0;
  v43[1] = CloudManager.handleDidFetchChanges(_:syncEngine:);
  v44 = *(v0 + 200);
  v45 = *(v0 + 104);

  return specialized closure #1 in CloudManager._sendChanges(zoneSet:reason:numRecords:expectedSize:syncEngine:_:_:)(0xD000000000000024, 0x8000000216584C80, 1826, v45, v44);
}

uint64_t CloudManager.nextRecordZoneChangeBatch(_:syncEngine:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  v4[10] = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CloudKit12CKSyncEngineC21RecordZoneChangeBatchVSgMd);
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](CloudManager.nextRecordZoneChangeBatch(_:syncEngine:), v3, 0);
}

uint64_t CloudManager.nextRecordZoneChangeBatch(_:syncEngine:)()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys23CustomStringConvertible_pSgGMd);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21658CA50;
  v5 = type metadata accessor for CKSyncEngine.SendChangesContext();
  *(v4 + 56) = v5;
  *(v4 + 64) = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type CKSyncEngine.SendChangesContext and conformance CKSyncEngine.SendChangesContext, MEMORY[0x277CBBC08]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v4 + 32));
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v3, v5);
  static CloudLog.LogBegin(_:_:)(v4, "nextRecordZoneChangeBatch(_:syncEngine:)", 40, 2, v1, &protocol witness table for CloudManager);

  v7 = (v2 + OBJC_IVAR____TtC9MomentsUI12CloudManager_cloudModel);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  ObjectType = swift_getObjectType();
  v0[5] = v8;
  v11 = *(v9 + 8);
  v14 = (*(v11 + 32) + **(v11 + 32));
  v12 = swift_task_alloc();
  v0[12] = v12;
  *v12 = v0;
  v12[1] = CloudManager.nextRecordZoneChangeBatch(_:syncEngine:);

  return v14(ObjectType, v11);
}

{
  v1 = *(v0 + 88);
  v2 = type metadata accessor for CKSyncEngine.RecordZoneChangeBatch();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  if (one-time initialization token for $inDelegate != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 104);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 72);
  *(v0 + 128) = 1;
  v7 = swift_task_alloc();
  *(v0 + 112) = v7;
  *(v7 + 16) = *(v0 + 56);
  *(v7 + 32) = v3;
  *(v7 + 40) = v4;
  *(v7 + 48) = v6;
  *(v7 + 56) = v5;
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type CloudManager and conformance CloudManager, type metadata accessor for CloudManager);
  v8 = swift_task_alloc();
  *(v0 + 120) = v8;
  *v8 = v0;
  v8[1] = CloudManager.nextRecordZoneChangeBatch(_:syncEngine:);

  return MEMORY[0x282200908]();
}

{
  v1 = v0[10];
  outlined init with take of URL?(v0[11], v0[6], &_s8CloudKit12CKSyncEngineC21RecordZoneChangeBatchVSgMd);
  static CloudLog.LogEnd(_:)("nextRecordZoneChangeBatch(_:syncEngine:)", 40, 2, v1, &protocol witness table for CloudManager);

  v2 = v0[1];

  return v2();
}

uint64_t CloudManager.nextRecordZoneChangeBatch(_:syncEngine:)(uint64_t a1)
{
  v2 = *(*v1 + 72);
  *(*v1 + 104) = a1;

  return MEMORY[0x2822009F8](CloudManager.nextRecordZoneChangeBatch(_:syncEngine:), v2, 0);
}

void CloudManager.nextRecordZoneChangeBatch(_:syncEngine:)()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = *(v2 + 72);

    MEMORY[0x2822009F8](CloudManager.nextRecordZoneChangeBatch(_:syncEngine:), v3, 0);
  }
}

uint64_t closure #1 in CloudManager.nextRecordZoneChangeBatch(_:syncEngine:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v7[2] = a2;
  v7[3] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CloudKit12CKSyncEngineC21RecordZoneChangeBatchVSgMd);
  v7[8] = swift_task_alloc();
  v9 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
  v7[9] = v9;
  v7[10] = *(v9 - 8);
  v7[11] = swift_task_alloc();
  v7[12] = swift_task_alloc();
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  v10 = type metadata accessor for CKSyncEngine.SendChangesOptions();
  v7[21] = v10;
  v7[22] = *(v10 - 8);
  v7[23] = swift_task_alloc();
  v11 = type metadata accessor for CKSyncEngine.SendChangesOptions.Scope();
  v7[24] = v11;
  v7[25] = *(v11 - 8);
  v7[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in CloudManager.nextRecordZoneChangeBatch(_:syncEngine:), a6, 0);
}

uint64_t closure #1 in CloudManager.nextRecordZoneChangeBatch(_:syncEngine:)()
{
  v195 = v0;
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v4 = CKSyncEngine.SendChangesContext.options.getter();
  MEMORY[0x21CE915D0](v4);
  (*(v2 + 8))(v1, v3);
  v5 = specialized static DefaultsManager.MomentsUIDomain.BOOLeanValueFor(_:)();
  if (v5 != 2 && (v5 & 1) != 0)
  {
    v6 = v0[26];
    CKSyncEngine.state.getter();
    v7 = CKSyncEngine.State.pendingRecordZoneChanges.getter();

    v8 = swift_task_alloc();
    *(v8 + 16) = v6;
    v9 = specialized _ArrayProtocol.filter(_:)(partial apply for closure #1 in closure #1 in CloudManager.nextRecordZoneChangeBatch(_:syncEngine:), v8, v7);

    v10 = MEMORY[0x277D84F90];
    goto LABEL_81;
  }

  CKSyncEngine.state.getter();
  v11 = CKSyncEngine.State.pendingRecordZoneChanges.getter();

  v12 = v11;
  v186 = *(v11 + 16);
  if (v186)
  {
    v13 = 0;
    v14 = v0[10];
    v16 = *(v14 + 16);
    v14 += 16;
    v15 = v16;
    v180 = (*(v14 + 64) + 32) & ~*(v14 + 64);
    v184 = v12 + v180;
    v178 = (v14 + 72);
    v193 = (v14 - 8);
    v175 = (v14 + 80);
    v17 = v0[4];
    v174 = v17 & 0xC000000000000001;
    v192 = *(v14 + 56);
    v187 = v17;
    v181 = v17 + 56;
    v177 = *MEMORY[0x277CBBC68];
    v179 = (v14 + 16);
    v9 = MEMORY[0x277D84F90];
    v171 = *MEMORY[0x277CBBC70];
    v10 = MEMORY[0x277D84F90];
    v176 = v0;
    v185 = v16;
    while (1)
    {
      v15(v0[20], v184 + v13 * v192, v0[9]);
      if (CKSyncEngine.SendChangesOptions.Scope.contains(_:)())
      {
        v188 = v13;
        if (one-time initialization token for cloud != -1)
        {
          swift_once();
        }

        v22 = v0[19];
        v21 = v0[20];
        v23 = v0[9];
        v24 = type metadata accessor for Logger();
        __swift_project_value_buffer(v24, static CommonLogger.cloud);
        v15(v22, v21, v23);
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.debug.getter();
        v27 = os_log_type_enabled(v25, v26);
        v28 = v0[19];
        v29 = v0[9];
        if (v27)
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v194[0] = v31;
          *v30 = 136446466;
          *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, 0x8000000216584DD0, v194);
          *(v30 + 12) = 2080;
          _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type CKSyncEngine.PendingRecordZoneChange and conformance CKSyncEngine.PendingRecordZoneChange, MEMORY[0x277CBBC78]);
          v32 = v10;
          v33 = dispatch thunk of CustomStringConvertible.description.getter();
          v34 = v9;
          v36 = v35;
          v182 = *v193;
          (*v193)(v28, v29);
          v37 = v33;
          v10 = v32;
          v15 = v185;
          v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v36, v194);
          v9 = v34;
          v0 = v176;

          *(v30 + 14) = v38;
          _os_log_impl(&dword_21607C000, v25, v26, "CloudManager.%{public}s Scheduling in-scope change: %s", v30, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x21CE94770](v31, -1, -1);
          MEMORY[0x21CE94770](v30, -1, -1);
        }

        else
        {

          v182 = *v193;
          (*v193)(v28, v29);
        }

        v15(v0[18], v0[20], v0[9]);
        v13 = v188;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9[2] + 1, 1, v9);
        }

        v67 = v9[2];
        v66 = v9[3];
        if (v67 >= v66 >> 1)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v66 > 1, v67 + 1, 1, v9);
        }

        v68 = v0[18];
        v69 = v0[9];
        v182(v0[20], v69);
        v9[2] = v67 + 1;
        (*v179)(v9 + v180 + v67 * v192, v68, v69);
        goto LABEL_8;
      }

      v39 = v0[17];
      v40 = v0[9];
      v15(v39, v0[20], v40);
      v41 = (*v178)(v39, v40);
      if (v41 == v177)
      {
        break;
      }

      if (v41 == v171)
      {
        v70 = v0[17];
        (*v175)(v70, v0[9]);
        v183 = *v70;
        v71 = [*v70 zoneID];
        v72 = v71;
        if (v174)
        {
          v73 = v71;
          v74 = __CocoaSet.contains(_:)();

          if (v74)
          {
            goto LABEL_30;
          }
        }

        else
        {
          if (*(v187 + 16))
          {
            type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordZoneID);
            v118 = NSObject._rawHashValue(seed:)(*(v187 + 40));
            v119 = -1 << *(v187 + 32);
            v120 = v118 & ~v119;
            if ((*(v181 + ((v120 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v120))
            {
              v121 = ~v119;
              while (1)
              {
                v122 = *(*(v187 + 48) + 8 * v120);
                v123 = static NSObject.== infix(_:_:)();

                if (v123)
                {
                  break;
                }

                v120 = (v120 + 1) & v121;
                if (((*(v181 + ((v120 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v120) & 1) == 0)
                {
                  goto LABEL_56;
                }
              }

              v15 = v185;
LABEL_30:
              v172 = v10;
              if (one-time initialization token for cloud != -1)
              {
                swift_once();
              }

              v75 = v0[20];
              v76 = v0[11];
              v77 = v0[9];
              v78 = type metadata accessor for Logger();
              __swift_project_value_buffer(v78, static CommonLogger.cloud);
              v15(v76, v75, v77);
              v79 = Logger.logObject.getter();
              v80 = static os_log_type_t.info.getter();
              v81 = os_log_type_enabled(v79, v80);
              v54 = v0[20];
              v55 = v0[11];
              v56 = v0[9];
              if (v81)
              {
                v170 = v0[20];
                v82 = swift_slowAlloc();
                loga = swift_slowAlloc();
                v194[0] = loga;
                *v82 = 136446466;
                *(v82 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, 0x8000000216584DD0, v194);
                *(v82 + 12) = 2080;
                _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type CKSyncEngine.PendingRecordZoneChange and conformance CKSyncEngine.PendingRecordZoneChange, MEMORY[0x277CBBC78]);
                v83 = dispatch thunk of CustomStringConvertible.description.getter();
                v84 = v9;
                v86 = v85;
                v166 = *v193;
                (*v193)(v55, v56);
                v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v86, v194);
                v9 = v84;
                v0 = v176;

                *(v82 + 14) = v87;
                _os_log_impl(&dword_21607C000, v79, v80, "CloudManager.%{public}s Skipping out-of-scope change: %s", v82, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x21CE94770](loga, -1, -1);
                MEMORY[0x21CE94770](v82, -1, -1);

                v166(v170, v56);
                goto LABEL_70;
              }

LABEL_69:
              v145 = *v193;
              (*v193)(v55, v56);
              v145(v54, v56);
              goto LABEL_70;
            }
          }

LABEL_56:

          v15 = v185;
        }

        if (one-time initialization token for cloud != -1)
        {
          swift_once();
        }

        v124 = v0[20];
        v125 = v0[13];
        v126 = v0[9];
        v127 = type metadata accessor for Logger();
        __swift_project_value_buffer(v127, static CommonLogger.cloud);
        v15(v125, v124, v126);
        v128 = Logger.logObject.getter();
        v129 = static os_log_type_t.error.getter();
        v130 = os_log_type_enabled(v128, v129);
        v131 = v0[13];
        v132 = v0[9];
        if (v130)
        {
          v191 = v13;
          v133 = swift_slowAlloc();
          v134 = swift_slowAlloc();
          v194[0] = v134;
          *v133 = 136446466;
          *(v133 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, 0x8000000216584DD0, v194);
          *(v133 + 12) = 2080;
          _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type CKSyncEngine.PendingRecordZoneChange and conformance CKSyncEngine.PendingRecordZoneChange, MEMORY[0x277CBBC78]);
          v135 = v10;
          v136 = dispatch thunk of CustomStringConvertible.description.getter();
          v137 = v9;
          v139 = v138;
          v173 = *v193;
          (*v193)(v131, v132);
          v140 = v136;
          v10 = v135;
          v15 = v185;
          v141 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v140, v139, v194);
          v9 = v137;
          v0 = v176;

          *(v133 + 14) = v141;
          _os_log_impl(&dword_21607C000, v128, v129, "CloudManager.%{public}s Unknown change: %s", v133, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x21CE94770](v134, -1, -1);
          v142 = v133;
          v13 = v191;
          MEMORY[0x21CE94770](v142, -1, -1);
        }

        else
        {

          v173 = *v193;
          (*v193)(v131, v132);
        }

        v15(v0[12], v0[20], v0[9]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10[2] + 1, 1, v10);
        }

        v114 = v10[2];
        v143 = v10[3];
        v115 = v114 + 1;
        if (v114 >= v143 >> 1)
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v143 > 1, v114 + 1, 1, v10);
        }

        v116 = v0[20];
        v117 = v0[12];
        goto LABEL_67;
      }

      v18 = v0[17];
      v19 = v0[9];
      v20 = *v193;
      (*v193)(v0[20], v19);
      v20(v18, v19);
LABEL_7:
      v15 = v185;
LABEL_8:
      if (++v13 == v186)
      {

        if (!v10[2])
        {
          goto LABEL_81;
        }

        goto LABEL_76;
      }
    }

    v42 = v0[17];
    (*v175)(v42, v0[9]);
    v183 = *v42;
    v43 = [*v42 zoneID];
    v44 = v43;
    if (v174)
    {
      v45 = v43;
      v46 = __CocoaSet.contains(_:)();

      if (v46)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (*(v187 + 16))
      {
        type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordZoneID);
        v88 = NSObject._rawHashValue(seed:)(*(v187 + 40));
        v89 = -1 << *(v187 + 32);
        v90 = v88 & ~v89;
        if ((*(v181 + ((v90 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v90))
        {
          v91 = ~v89;
          while (1)
          {
            v92 = *(*(v187 + 48) + 8 * v90);
            v93 = static NSObject.== infix(_:_:)();

            if (v93)
            {
              break;
            }

            v90 = (v90 + 1) & v91;
            if (((*(v181 + ((v90 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v90) & 1) == 0)
            {
              goto LABEL_39;
            }
          }

          v15 = v185;
LABEL_17:
          v172 = v10;
          if (one-time initialization token for cloud != -1)
          {
            swift_once();
          }

          v47 = v0[20];
          v48 = v0[14];
          v49 = v0[9];
          v50 = type metadata accessor for Logger();
          __swift_project_value_buffer(v50, static CommonLogger.cloud);
          v15(v48, v47, v49);
          v51 = Logger.logObject.getter();
          v52 = static os_log_type_t.info.getter();
          v53 = os_log_type_enabled(v51, v52);
          v54 = v0[20];
          v55 = v0[14];
          v56 = v0[9];
          if (v53)
          {
            v189 = v0[20];
            v57 = swift_slowAlloc();
            v169 = swift_slowAlloc();
            v194[0] = v169;
            *v57 = 136446466;
            *(v57 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, 0x8000000216584DD0, v194);
            *(v57 + 12) = 2080;
            _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type CKSyncEngine.PendingRecordZoneChange and conformance CKSyncEngine.PendingRecordZoneChange, MEMORY[0x277CBBC78]);
            v58 = v9;
            v59 = dispatch thunk of CustomStringConvertible.description.getter();
            log = v51;
            v60 = v13;
            v62 = v61;
            v63 = *v193;
            (*v193)(v55, v56);
            v64 = v59;
            v9 = v58;
            v0 = v176;
            v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v62, v194);
            v13 = v60;

            *(v57 + 14) = v65;
            _os_log_impl(&dword_21607C000, log, v52, "CloudManager.%{public}s Skipping out-of-scope change: %s", v57, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x21CE94770](v169, -1, -1);
            MEMORY[0x21CE94770](v57, -1, -1);

            v63(v189, v56);
LABEL_70:
            v10 = v172;
            goto LABEL_7;
          }

          goto LABEL_69;
        }
      }

LABEL_39:

      v15 = v185;
    }

    if (one-time initialization token for cloud != -1)
    {
      swift_once();
    }

    v94 = v0[20];
    v95 = v0[16];
    v96 = v0[9];
    v97 = type metadata accessor for Logger();
    __swift_project_value_buffer(v97, static CommonLogger.cloud);
    v15(v95, v94, v96);
    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.error.getter();
    v100 = os_log_type_enabled(v98, v99);
    v101 = v0[16];
    v102 = v0[9];
    if (v100)
    {
      v190 = v13;
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v194[0] = v104;
      *v103 = 136446466;
      *(v103 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, 0x8000000216584DD0, v194);
      *(v103 + 12) = 2080;
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type CKSyncEngine.PendingRecordZoneChange and conformance CKSyncEngine.PendingRecordZoneChange, MEMORY[0x277CBBC78]);
      v105 = v10;
      v106 = dispatch thunk of CustomStringConvertible.description.getter();
      v107 = v9;
      v109 = v108;
      v173 = *v193;
      (*v193)(v101, v102);
      v110 = v106;
      v10 = v105;
      v15 = v185;
      v111 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v110, v109, v194);
      v9 = v107;
      v0 = v176;

      *(v103 + 14) = v111;
      _os_log_impl(&dword_21607C000, v98, v99, "CloudManager.%{public}s Unknown change: %s", v103, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v104, -1, -1);
      v112 = v103;
      v13 = v190;
      MEMORY[0x21CE94770](v112, -1, -1);
    }

    else
    {

      v173 = *v193;
      (*v193)(v101, v102);
    }

    v15(v0[15], v0[20], v0[9]);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10[2] + 1, 1, v10);
    }

    v114 = v10[2];
    v113 = v10[3];
    v115 = v114 + 1;
    if (v114 >= v113 >> 1)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v113 > 1, v114 + 1, 1, v10);
    }

    v116 = v0[20];
    v117 = v0[15];
LABEL_67:
    v144 = v0[9];

    v173(v116, v144);
    v10[2] = v115;
    (*v179)(v10 + v180 + v114 * v192, v117, v144);
    goto LABEL_7;
  }

  v9 = MEMORY[0x277D84F90];
  v10 = MEMORY[0x277D84F90];
  if (!*(MEMORY[0x277D84F90] + 16))
  {
    goto LABEL_81;
  }

LABEL_76:
  if (one-time initialization token for cloud != -1)
  {
    swift_once();
  }

  v146 = type metadata accessor for Logger();
  __swift_project_value_buffer(v146, static CommonLogger.cloud);
  v147 = Logger.logObject.getter();
  v148 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v147, v148))
  {
    v149 = v0[9];
    v150 = swift_slowAlloc();
    v151 = swift_slowAlloc();
    v194[0] = v151;
    *v150 = 136446466;
    *(v150 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, 0x8000000216584DD0, v194);
    *(v150 + 12) = 2080;

    v153 = MEMORY[0x21CE922B0](v152, v149);
    v155 = v154;

    v156 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v153, v155, v194);

    *(v150 + 14) = v156;
    _os_log_impl(&dword_21607C000, v147, v148, "CloudManager.%{public}s Removing unknown changes: %s", v150, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v151, -1, -1);
    MEMORY[0x21CE94770](v150, -1, -1);
  }

  CKSyncEngine.state.getter();

  CKSyncEngine.State.remove(pendingRecordZoneChanges:)(v157);

LABEL_81:
  v0[27] = v10;
  v158 = v0[26];
  v160 = v0[6];
  v159 = v0[7];
  v161 = v0[3];
  v162 = swift_task_alloc();
  v0[28] = v162;
  v162[2] = v158;
  v162[3] = v160;
  v162[4] = v161;
  v162[5] = v159;
  v163 = swift_task_alloc();
  v0[29] = v163;
  *v163 = v0;
  v163[1] = closure #1 in CloudManager.nextRecordZoneChangeBatch(_:syncEngine:);
  v164 = v0[8];

  return MEMORY[0x28210DC20](v164, v9, &async function pointer to partial apply for closure #2 in closure #1 in CloudManager.nextRecordZoneChangeBatch(_:syncEngine:), v162);
}

{
  v1 = *(*v0 + 48);

  return MEMORY[0x2822009F8](closure #1 in CloudManager.nextRecordZoneChangeBatch(_:syncEngine:), v1, 0);
}

{
  v1 = v0[26];
  v3 = v0[24];
  v2 = v0[25];
  outlined assign with take of AttributedString?(v0[8], v0[5], &_s8CloudKit12CKSyncEngineC21RecordZoneChangeBatchVSgMd);

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t closure #2 in closure #1 in CloudManager.nextRecordZoneChangeBatch(_:syncEngine:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  v5 = type metadata accessor for Logger();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in closure #1 in CloudManager.nextRecordZoneChangeBatch(_:syncEngine:), 0, 0);
}

uint64_t closure #2 in closure #1 in CloudManager.nextRecordZoneChangeBatch(_:syncEngine:)()
{
  v20 = v0;
  if (CKSyncEngine.SendChangesOptions.Scope.contains(_:)(*(v0 + 80)))
  {
    v1 = *(v0 + 96);
    *(v0 + 136) = OBJC_IVAR____TtC9MomentsUI12CloudManager_cloudModel;

    return MEMORY[0x2822009F8](closure #2 in closure #1 in CloudManager.nextRecordZoneChangeBatch(_:syncEngine:), v1, 0);
  }

  else
  {
    if (one-time initialization token for cloud != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 80);
    __swift_project_value_buffer(*(v0 + 112), static CommonLogger.cloud);
    v3 = v2;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 80);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v19 = v9;
      *v7 = 136446466;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, 0x8000000216584DD0, &v19);
      *(v7 + 12) = 2112;
      *(v7 + 14) = v6;
      *v8 = v6;
      v10 = v6;
      _os_log_impl(&dword_21607C000, v4, v5, "CloudManager.%{public}s Unknown recordID:%@", v7, 0x16u);
      outlined destroy of UTType?(v8, &_sSo8NSObjectCSgMd);
      MEMORY[0x21CE94770](v8, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x21CE94770](v9, -1, -1);
      MEMORY[0x21CE94770](v7, -1, -1);
    }

    v11 = *(v0 + 80);
    CKSyncEngine.state.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8CloudKit12CKSyncEngineC23PendingRecordZoneChangeOGMd);
    v12 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
    v13 = *(v12 - 8);
    v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_21658CA50;
    *(v15 + v14) = v11;
    (*(v13 + 104))(v15 + v14, *MEMORY[0x277CBBC68], v12);
    v16 = v11;
    CKSyncEngine.State.remove(pendingRecordZoneChanges:)(v15);

    v17 = *(v0 + 8);

    return v17(0);
  }
}

{
  v1 = (v0[12] + v0[17]);
  swift_beginAccess();
  v2 = *v1;
  v0[18] = *v1;
  v3 = v1[1];
  ObjectType = swift_getObjectType();
  v0[8] = v2;
  v5 = *(v3 + 8);
  v6 = *(v5 + 168);
  swift_unknownObjectRetain();
  v10 = (v6 + *v6);
  v7 = swift_task_alloc();
  v0[19] = v7;
  *v7 = v0;
  v7[1] = closure #2 in closure #1 in CloudManager.nextRecordZoneChangeBatch(_:syncEngine:);
  v8 = v0[10];

  return v10(v8, ObjectType, v5);
}

{
  v20 = v0;
  if (v0[20])
  {
    v1 = v0[12];

    return MEMORY[0x2822009F8](closure #2 in closure #1 in CloudManager.nextRecordZoneChangeBatch(_:syncEngine:), v1, 0);
  }

  else
  {
    if (one-time initialization token for cloud != -1)
    {
      swift_once();
    }

    v2 = v0[10];
    __swift_project_value_buffer(v0[14], static CommonLogger.cloud);
    v3 = v2;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[10];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v19 = v9;
      *v7 = 136446466;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, 0x8000000216584DD0, &v19);
      *(v7 + 12) = 2112;
      *(v7 + 14) = v6;
      *v8 = v6;
      v10 = v6;
      _os_log_impl(&dword_21607C000, v4, v5, "CloudManager.%{public}s Unknown recordID:%@", v7, 0x16u);
      outlined destroy of UTType?(v8, &_sSo8NSObjectCSgMd);
      MEMORY[0x21CE94770](v8, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x21CE94770](v9, -1, -1);
      MEMORY[0x21CE94770](v7, -1, -1);
    }

    v11 = v0[10];
    CKSyncEngine.state.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8CloudKit12CKSyncEngineC23PendingRecordZoneChangeOGMd);
    v12 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
    v13 = *(v12 - 8);
    v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_21658CA50;
    *(v15 + v14) = v11;
    (*(v13 + 104))(v15 + v14, *MEMORY[0x277CBBC68], v12);
    v16 = v11;
    CKSyncEngine.State.remove(pendingRecordZoneChanges:)(v15);

    v17 = v0[1];

    return v17(0);
  }
}

{
  v1 = v0[20];
  v2 = (v0[12] + v0[17]);
  v3 = *v2;
  v0[21] = *v2;
  v4 = v2[1];
  ObjectType = swift_getObjectType();
  v0[9] = v3;
  v6 = *(v4 + 8);
  v7 = *(v6 + 224);
  swift_unknownObjectRetain();
  v10 = (v7 + *v7);
  v8 = swift_task_alloc();
  v0[22] = v8;
  *v8 = v0;
  v8[1] = closure #2 in closure #1 in CloudManager.nextRecordZoneChangeBatch(_:syncEngine:);

  return v10(v1, ObjectType, v6);
}

{
  v23 = v0;
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v4 = __swift_project_value_buffer(v3, static CloudManager.Log);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[24];
  if (v7)
  {
    v9 = v0[23];
    v11 = v0[15];
    v10 = v0[16];
    v12 = v0[14];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136446466;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, 0x8000000216584DD0, &v22);
    *(v13 + 12) = 2080;
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v22);

    *(v13 + 14) = v15;
    _os_log_impl(&dword_21607C000, v5, v6, "CloudManager.%{public}s Sending record:\n%s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v14, -1, -1);
    MEMORY[0x21CE94770](v13, -1, -1);

    (*(v11 + 8))(v10, v12);
  }

  else
  {
    v17 = v0[15];
    v16 = v0[16];
    v18 = v0[14];

    (*(v17 + 8))(v16, v18);
  }

  v19 = v0[20];

  v20 = v0[1];

  return v20(v19);
}

uint64_t closure #2 in closure #1 in CloudManager.nextRecordZoneChangeBatch(_:syncEngine:)(uint64_t a1)
{
  *(*v1 + 160) = a1;

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](closure #2 in closure #1 in CloudManager.nextRecordZoneChangeBatch(_:syncEngine:), 0, 0);
}

uint64_t closure #2 in closure #1 in CloudManager.nextRecordZoneChangeBatch(_:syncEngine:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = a2;

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](closure #2 in closure #1 in CloudManager.nextRecordZoneChangeBatch(_:syncEngine:), 0, 0);
}

uint64_t CloudManager.nextFetchChangesOptions(_:syncEngine:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v3[19] = a2;
  v3[20] = v4;
  v3[18] = a1;
  Changes = type metadata accessor for CKSyncEngine.FetchChangesOptions.ZoneConfiguration();
  v3[21] = Changes;
  v3[22] = *(Changes - 8);
  v3[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CloudKit12CKSyncEngineC19FetchChangesOptionsV17ZoneConfigurationVSgMd);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v6 = type metadata accessor for CKSyncEngine.FetchChangesOptions.Scope();
  v3[27] = v6;
  v3[28] = *(v6 - 8);
  v3[29] = swift_task_alloc();
  ChangesOptions = type metadata accessor for CKSyncEngine.FetchChangesOptions();
  v3[30] = ChangesOptions;
  v3[31] = *(ChangesOptions - 8);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](CloudManager.nextFetchChangesOptions(_:syncEngine:), v2, 0);
}

void CloudManager.nextFetchChangesOptions(_:syncEngine:)()
{
  v77 = v0 + 7;
  v85 = v0 + 15;
  v2 = v0[19];
  v1 = v0[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys23CustomStringConvertible_pSgGMd);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_21658CA50;
  ChangesContext = type metadata accessor for CKSyncEngine.FetchChangesContext();
  *(v3 + 56) = ChangesContext;
  *(v3 + 64) = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type CKSyncEngine.FetchChangesContext and conformance CKSyncEngine.FetchChangesContext, MEMORY[0x277CBBC20]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v3 + 32));
  (*(*(ChangesContext - 8) + 16))(boxed_opaque_existential_1, v2, ChangesContext);
  static CloudLog.LogBegin(_:_:)(v3, "nextFetchChangesOptions(_:syncEngine:)", 38, 2, v1, &protocol witness table for CloudManager);

  CKSyncEngine.FetchChangesContext.options.getter();
  v88 = MEMORY[0x277D84F90];
  v6 = _s9MomentsUI10CloudSubDBPAAE5zonesShySo14CKRecordZoneIDCGvgZAA0c7DevicesE0C_Ttg5Tm(&one-time initialization token for cloudRecordTypes, &static CloudDevicesDB.cloudRecordTypes);
  if ((v6 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordZoneID);
    lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue(&lazy protocol witness table cache variable for type CKRecordZoneID and conformance NSObject, &lazy cache variable for type metadata for CKRecordZoneID);
    Set.Iterator.init(_cocoa:)();
    v8 = v0[2];
    v9 = v0[3];
    v10 = v0[4];
    v11 = v0[5];
    v12 = v0[6];
  }

  else
  {
    v11 = 0;
    v13 = -1 << *(v6 + 32);
    v8 = v6;
    v9 = v6 + 56;
    v10 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v12 = v15 & *(v6 + 56);
  }

  v79 = v0;
  v80 = v10;
  v16 = (v10 + 64) >> 6;
  v86 = (v0[31] + 8);
  v83 = (v0[28] + 8);
  v87 = MEMORY[0x277D84F90];
  v81 = v16;
LABEL_8:
  v17 = v11;
  if (v8 < 0)
  {
    while (1)
    {
      v22 = __CocoaSet.Iterator.next()();
      if (!v22)
      {
        break;
      }

      v79[17] = v22;
      type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordZoneID);
      swift_dynamicCast();
      v21 = v79[16];
      v11 = v17;
      v20 = v12;
      if (!v21)
      {
        break;
      }

LABEL_17:
      v23 = v9;
      v24 = v8;
      v25 = v79[32];
      v27 = v79[29];
      v26 = v79[30];
      v28 = v79[27];
      Changes = CKSyncEngine.FetchChangesContext.options.getter();
      MEMORY[0x21CE916C0](Changes);
      (*v86)(v25, v26);
      v30 = CKSyncEngine.FetchChangesOptions.Scope.contains(_:)(v21);
      (*v83)(v27, v28);
      if (v30)
      {
        v31 = v21;
        MEMORY[0x21CE92260]();
        if (*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v88 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v87 = v88;
        v12 = v20;
        v8 = v24;
        v9 = v23;
        v16 = v81;
        goto LABEL_8;
      }

      v17 = v11;
      v12 = v20;
      v8 = v24;
      v9 = v23;
      v16 = v81;
      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v18 = v17;
    v19 = v12;
    v11 = v17;
    if (!v12)
    {
      while (1)
      {
        v11 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v11 >= v16)
        {
          v12 = 0;
          goto LABEL_24;
        }

        v19 = *(v9 + 8 * v11);
        ++v18;
        if (v19)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_56;
    }

LABEL_13:
    v20 = (v19 - 1) & v19;
    v21 = *(*(v8 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v19)))));
    if (v21)
    {
      goto LABEL_17;
    }
  }

LABEL_24:
  outlined consume of Set<CKRecordZoneID>.Iterator._Variant(v8, v9, v80, v17, v12);
  v7 = v87;
  if (!(v87 >> 62))
  {
    v32 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_26;
  }

LABEL_56:
  v73 = v7;
  v32 = __CocoaSet.count.getter();
  v7 = v73;
LABEL_26:
  v33 = v77;
  v34 = v79;
  if (v32)
  {
    if (v32 >= 1)
    {
      v35 = 0;
      v36 = v79[22];
      v82 = v7 & 0xC000000000000001;
      v84 = v32;
      v74 = v36;
      v78 = (v36 + 56);
      v75 = (v36 + 32);
      v76 = (v36 + 48);
      while (1)
      {
        if (v82)
        {
          v39 = MEMORY[0x21CE93180](v35);
        }

        else
        {
          v39 = *(v7 + 8 * v35 + 32);
        }

        v40 = v39;
        v41 = CKSyncEngine.FetchChangesOptions.prioritizedZoneIDs.getter();
        v34[15] = v40;
        v42 = swift_task_alloc();
        *(v42 + 16) = v85;
        v43 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v42, v41);

        if ((v43 & 1) == 0)
        {
          v44 = v40;
          v45 = CKSyncEngine.FetchChangesOptions.prioritizedZoneIDs.modify();
          v47 = v46;
          MEMORY[0x21CE92260]();
          if (*((*v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v45(v33, 0);
        }

        v48 = specialized static DefaultsManager.MomentsUIDomain.BOOLeanValueFor(_:)();
        if (v48 == 2 || (v48 & 1) != 0)
        {
          v49 = CKSyncEngine.FetchChangesOptions.zoneConfigurations.getter();
          if (!*(v49 + 16) || (v50 = specialized __RawDictionaryStorage.find<A>(_:)(v40), (v51 & 1) == 0))
          {
            v55 = v34[25];
            v54 = v34[26];
            v56 = v34[21];

            v57 = *v78;
            (*v78)(v54, 1, 1, v56);
            outlined destroy of UTType?(v54, &_s8CloudKit12CKSyncEngineC19FetchChangesOptionsV17ZoneConfigurationVSgMd);
            v58 = v40;
            CKSyncEngine.FetchChangesOptions.ZoneConfiguration.init(shouldFetchAssetContents:resultsLimit:)();
            v57(v55, 0, 1, v56);
            v34 = v79;
            v59 = CKSyncEngine.FetchChangesOptions.zoneConfigurations.modify();
            v61 = v60;
            if ((*v76)(v55, 1, v56) == 1)
            {
              v37 = v79[24];
              outlined destroy of UTType?(v79[25], &_s8CloudKit12CKSyncEngineC19FetchChangesOptionsV17ZoneConfigurationVSgMd);
              specialized Dictionary._Variant.removeValue(forKey:)(v58, v37);

              outlined destroy of UTType?(v37, &_s8CloudKit12CKSyncEngineC19FetchChangesOptionsV17ZoneConfigurationVSgMd);
            }

            else
            {
              v62 = v79[23];
              (*v75)(v62, v79[25], v79[21]);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v89 = *v61;
              *v61 = 0x8000000000000000;
              specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v62, v58, isUniquelyReferenced_nonNull_native);

              *v61 = v89;
            }

            v59();

            v33 = v77;
            v7 = v87;
            v38 = v84;
            goto LABEL_31;
          }

          v52 = v34[26];
          v53 = v34[21];
          (*(v74 + 16))(v52, *(v49 + 56) + *(v74 + 72) * v50, v53);

          (*(v74 + 56))(v52, 0, 1, v53);
          outlined destroy of UTType?(v52, &_s8CloudKit12CKSyncEngineC19FetchChangesOptionsV17ZoneConfigurationVSgMd);
        }

        else
        {
        }

        v7 = v87;
        v38 = v84;
LABEL_31:
        if (v38 == ++v35)
        {
          goto LABEL_48;
        }
      }
    }

    __break(1u);
    goto LABEL_58;
  }

LABEL_48:
  v64 = specialized static DefaultsManager.MomentsUIDomain.BOOLeanValueFor(_:)();
  if (v64 == 2 || (v64 & 1) != 0)
  {
    CKSyncEngine.FetchChangesOptions.ZoneConfiguration.init(shouldFetchAssetContents:resultsLimit:)();
    v64 = CKSyncEngine.FetchChangesOptions.defaultZoneConfiguration.setter();
  }

  v65 = MEMORY[0x21CE91610](v64);
  v66 = [v65 defaultConfiguration];

  if (!v66)
  {
LABEL_58:
    __break(1u);
    return;
  }

  v67 = v34[33];
  v69 = v34[30];
  v68 = v34[31];
  v70 = v34[20];
  v71 = v34[18];

  [v66 setAllowsCellularAccess_];

  (*(v68 + 32))(v71, v67, v69);
  static CloudLog.LogEnd(_:)("nextFetchChangesOptions(_:syncEngine:)", 38, 2, v70, &protocol witness table for CloudManager);

  v72 = v34[1];

  v72();
}

uint64_t closure #1 in CloudManager._sendChanges(zoneSet:reason:numRecords:expectedSize:syncEngine:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_task_alloc();
  *(v7 + 16) = v13;
  *v13 = v7;
  v13[1] = static Exif.filterVideo(inputURL:outputURL:);

  return specialized closure #1 in CloudManager._sendChanges(zoneSet:reason:numRecords:expectedSize:syncEngine:_:_:)(a3, a4, a5, a6, a7);
}

uint64_t CloudManager._pendingDatabaseChanges2ZoneIDs(changes:)(uint64_t a1)
{
  v3 = *v1;
  v4 = type metadata accessor for CKSyncEngine.PendingDatabaseChange();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v10 = (&v27 - v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys23CustomStringConvertible_pSgGMd);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21658CA50;
  *(v11 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8CloudKit12CKSyncEngineC21PendingDatabaseChangeOGMd);
  *(v11 + 64) = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type [CKSyncEngine.PendingDatabaseChange] and conformance [A], &_sSay8CloudKit12CKSyncEngineC21PendingDatabaseChangeOGMd);
  *(v11 + 32) = a1;

  static CloudLog.LogBegin(_:_:)(v11, "_pendingDatabaseChanges2ZoneIDs(changes:)", 41, 2, v3, &protocol witness table for CloudManager);

  v12 = MEMORY[0x277D84FA0];
  v36 = MEMORY[0x277D84FA0];
  v13 = *(a1 + 16);
  if (v13)
  {
    v28 = v3;
    v16 = *(v5 + 16);
    v14 = v5 + 16;
    v15 = v16;
    v17 = (a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64)));
    v32 = *(v14 + 56);
    v18 = v14;
    v19 = (v14 + 72);
    v34 = *MEMORY[0x277CBBC50];
    v29 = *MEMORY[0x277CBBC48];
    v33 = (v18 - 8);
    v30 = v4;
    v31 = (v18 + 80);
    v16(v10, v17, v4);
    while (1)
    {
      v15(v8, v10, v4);
      v24 = (*v19)(v8, v4);
      if (v24 == v34)
      {
        (*v31)(v8, v4);
        v20 = v10;
        v21 = v15;
        v22 = v18;
        v23 = *v8;
        specialized Set._Variant.insert(_:)(&v35, [*v8 zoneID]);

        v18 = v22;
        v15 = v21;
        v10 = v20;
        v4 = v30;

        (*v33)(v20, v4);
      }

      else if (v24 == v29)
      {
        (*v31)(v8, v4);
        specialized Set._Variant.insert(_:)(&v35, *v8);

        (*v33)(v10, v4);
      }

      else
      {
        v25 = *v33;
        (*v33)(v10, v4);
        v25(v8, v4);
      }

      v17 += v32;
      if (!--v13)
      {
        break;
      }

      v15(v10, v17, v4);
    }

    v12 = v36;
    v3 = v28;
  }

  static CloudLog.LogEnd(_:)("_pendingDatabaseChanges2ZoneIDs(changes:)", 41, 2, v3, &protocol witness table for CloudManager);
  return v12;
}

uint64_t CloudManager._pendingRecordZoneChanges2ZoneIDs(changes:)(uint64_t a1)
{
  v3 = *v1;
  v4 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys23CustomStringConvertible_pSgGMd);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21658CA50;
  *(v11 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8CloudKit12CKSyncEngineC23PendingRecordZoneChangeOGMd);
  *(v11 + 64) = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type [CKSyncEngine.PendingRecordZoneChange] and conformance [A], &_sSay8CloudKit12CKSyncEngineC23PendingRecordZoneChangeOGMd);
  *(v11 + 32) = a1;

  static CloudLog.LogBegin(_:_:)(v11, "_pendingRecordZoneChanges2ZoneIDs(changes:)", 43, 2, v3, &protocol witness table for CloudManager);

  v12 = MEMORY[0x277D84FA0];
  v32 = MEMORY[0x277D84FA0];
  v13 = *(a1 + 16);
  if (v13)
  {
    v25 = v3;
    v16 = *(v5 + 16);
    v14 = v5 + 16;
    v15 = v16;
    v17 = (a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64)));
    v30 = *(v14 + 56);
    v18 = (v14 + 72);
    v29 = *MEMORY[0x277CBBC68];
    v26 = *MEMORY[0x277CBBC70];
    v19 = v14;
    v20 = (v14 - 8);
    v27 = (v19 + 80);
    v28 = v19;
    v16(v10, v17, v4);
    while (1)
    {
      v15(v8, v10, v4);
      v22 = (*v18)(v8, v4);
      if (v22 == v29 || v22 == v26)
      {
        (*v27)(v8, v4);
        v21 = *v8;
        specialized Set._Variant.insert(_:)(&v31, [*v8 zoneID]);

        (*v20)(v10, v4);
      }

      else
      {
        v23 = *v20;
        (*v20)(v10, v4);
        v23(v8, v4);
      }

      v17 += v30;
      if (!--v13)
      {
        break;
      }

      v15(v10, v17, v4);
    }

    v12 = v32;
    v3 = v25;
  }

  static CloudLog.LogEnd(_:)("_pendingRecordZoneChanges2ZoneIDs(changes:)", 43, 2, v3, &protocol witness table for CloudManager);
  return v12;
}

uint64_t protocol witness for CKSyncEngineDelegate.handleEvent(_:syncEngine:) in conformance CloudManager(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = static Exif.filterImage(imageSource:outputURL:);

  return CloudManager.handleEvent(_:syncEngine:)(a1, a2);
}

uint64_t protocol witness for CKSyncEngineDelegate.nextRecordZoneChangeBatch(_:syncEngine:) in conformance CloudManager(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = static Exif.filterVideo(inputURL:outputURL:);

  return CloudManager.nextRecordZoneChangeBatch(_:syncEngine:)(a1, a2, a3);
}

uint64_t protocol witness for CKSyncEngineDelegate.nextFetchChangesOptions(_:syncEngine:) in conformance CloudManager(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = static Exif.filterVideo(inputURL:outputURL:);

  return CloudManager.nextFetchChangesOptions(_:syncEngine:)(a1, a2);
}

uint64_t protocol witness for CKSyncEngineDelegate.shouldFetchChanges(zoneID:syncEngine:) in conformance CloudManager(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](protocol witness for CKSyncEngineDelegate.shouldFetchChanges(zoneID:syncEngine:) in conformance CloudManager, v1, 0);
}

uint64_t protocol witness for CKSyncEngineDelegate.shouldFetchChanges(zoneID:syncEngine:) in conformance CloudManager()
{
  v2 = v0[2];
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys23CustomStringConvertible_pSgGMd);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_21658CA50;
  *(v3 + 56) = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordZoneID);
  *(v3 + 64) = lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue(&lazy protocol witness table cache variable for type CKRecordZoneID and conformance NSObject, &lazy cache variable for type metadata for CKRecordZoneID);
  *(v3 + 32) = v2;
  v4 = v2;
  static CloudLog.LogBeginInfo(_:_:)(v3, "shouldFetchChanges(zoneID:syncEngine:)", 38, 2, v1, &protocol witness table for CloudManager);

  $defer #1 () in CloudManager.shouldFetchChanges(zoneID:syncEngine:)(v1);
  v5 = v0[1];

  return v5(1);
}

uint64_t CloudManager.shouldFetchChanges(zoneID:syncEngine:)(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](CloudManager.shouldFetchChanges(zoneID:syncEngine:), v1, 0);
}

uint64_t CloudManager.shouldFetchChanges(zoneID:syncEngine:)()
{
  v2 = v0[2];
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys23CustomStringConvertible_pSgGMd);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_21658CA50;
  *(v3 + 56) = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordZoneID);
  *(v3 + 64) = lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue(&lazy protocol witness table cache variable for type CKRecordZoneID and conformance NSObject, &lazy cache variable for type metadata for CKRecordZoneID);
  *(v3 + 32) = v2;
  v4 = v2;
  static CloudLog.LogBeginInfo(_:_:)(v3, "shouldFetchChanges(zoneID:syncEngine:)", 38, 2, v1, &protocol witness table for CloudManager);

  static CloudLog.LogEndInfo(_:)("shouldFetchChanges(zoneID:syncEngine:)", 38, 2, v1, &protocol witness table for CloudManager);
  v5 = v0[1];

  return v5(1);
}

uint64_t protocol witness for CKSyncEngineDelegate.relatedApplicationBundleIdentifiers(zoneIDs:recordIDs:syncEngine:) in conformance CloudManager(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for CloudSubDB.zoneNotFound(_:_:purged:) in conformance CloudSuggestionsDB;

  return specialized CloudManager.relatedApplicationBundleIdentifiers(zoneIDs:recordIDs:syncEngine:)(a1, a2);
}

uint64_t CloudManager.relatedApplicationBundleIdentifiers(zoneIDs:recordIDs:syncEngine:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of AssetViewModelRenderable.isReadyForDisplay();

  return specialized CloudManager.relatedApplicationBundleIdentifiers(zoneIDs:recordIDs:syncEngine:)(a1, a2);
}

uint64_t CloudManager._waitForInitialization(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 128) = a4;
  *(v5 + 136) = v4;
  *(v5 + 314) = a3;
  *(v5 + 112) = a1;
  *(v5 + 120) = a2;
  *(v5 + 144) = *v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMd);
  *(v5 + 152) = v6;
  *(v5 + 160) = *(v6 - 8);
  *(v5 + 168) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySb_GGMd);
  *(v5 + 176) = v7;
  *(v5 + 184) = *(v7 - 8);
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  *(v5 + 208) = v8;
  *(v5 + 216) = *(v8 - 8);
  *(v5 + 224) = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  *(v5 + 232) = v9;
  *(v5 + 240) = *(v9 - 8);
  *(v5 + 248) = swift_task_alloc();
  *(v5 + 256) = swift_task_alloc();

  return MEMORY[0x2822009F8](CloudManager._waitForInitialization(_:_:), 0, 0);
}

uint64_t CloudManager._waitForInitialization(_:_:)()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = *(v0 + 314);
  v6 = *(v0 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys23CustomStringConvertible_pSgGMd);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21658CA60;
  v8 = MEMORY[0x277D840F8];
  *(v7 + 56) = MEMORY[0x277D840E8];
  *(v7 + 64) = v8;
  *(v7 + 32) = v6;
  *(v7 + 40) = v4;
  v9 = MEMORY[0x277D83E88];
  *(v7 + 48) = v5;
  v10 = MEMORY[0x277D83EC8];
  *(v7 + 96) = v9;
  *(v7 + 104) = v10;
  *(v7 + 72) = v3;
  static CloudLog.LogBeginInfo(_:_:)(v7, "_waitForInitialization(_:_:)", 28, 2, v2, &protocol witness table for CloudManager);

  return MEMORY[0x2822009F8](CloudManager._waitForInitialization(_:_:), v1, 0);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(v0 + 315) = *(v0 + 312);

  return MEMORY[0x2822009F8](CloudManager._waitForInitialization(_:_:), 0, 0);
}

{
  v22 = v0;
  if (*(v0 + 315))
  {
    static CloudLog.LogEndInfo(_:)("_waitForInitialization(_:_:)", 28, 2, *(v0 + 144), &protocol witness table for CloudManager);

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 256);
    v4 = *(v0 + 232);
    v5 = *(v0 + 240);
    v6 = __swift_project_value_buffer(v4, static CloudManager.Log);
    *(v0 + 264) = v6;
    swift_beginAccess();
    v7 = *(v5 + 16);
    *(v0 + 272) = v7;
    *(v0 + 280) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v7(v3, v6, v4);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 256);
    v12 = *(v0 + 232);
    v13 = *(v0 + 240);
    if (v10)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21 = v15;
      *v14 = 136446466;
      swift_beginAccess();
      v16 = StaticString.description.getter();
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v21);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2082;
      *(v14 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x80000002165857B0, &v21);
      _os_log_impl(&dword_21607C000, v8, v9, "%{public}s.%{public}s Request before initialization complete! Waiting for initialization...", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v15, -1, -1);
      MEMORY[0x21CE94770](v14, -1, -1);
    }

    v19 = *(v13 + 8);
    v19(v11, v12);
    *(v0 + 288) = v19;
    v20 = swift_task_alloc();
    *(v0 + 296) = v20;
    *v20 = v0;
    v20[1] = CloudManager._waitForInitialization(_:_:);

    return CloudManager.initializeSyncEngine(wait:_:)(0, 0xD000000000000016, 0x80000002165857D0);
  }
}

{
  v1 = *(*v0 + 136);

  return MEMORY[0x2822009F8](CloudManager._waitForInitialization(_:_:), v1, 0);
}

{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.getter();
  swift_endAccess();

  return MEMORY[0x2822009F8](CloudManager._waitForInitialization(_:_:), 0, 0);
}

{
  v2 = v0[27];
  v1 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[22];
  v8 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<Bool>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySb_GMd);
  MEMORY[0x21CE912F0](v3, v8);
  (*(v2 + 8))(v1, v3);
  (*(v6 + 16))(v5, v4, v7);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AsyncPublisher<Published<Bool>.Publisher> and conformance AsyncPublisher<A>, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySb_GGMd);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v9 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AsyncPublisher<Published<Bool>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMd);
  v10 = swift_task_alloc();
  v0[38] = v10;
  *v10 = v0;
  v10[1] = CloudManager._waitForInitialization(_:_:);
  v11 = v0[19];

  return MEMORY[0x282200308](v0 + 313, v11, v9);
}

{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[20];
    v3 = v2[21];
    v5 = v2[19];

    (*(v4 + 8))(v3, v5);
    v6 = destructiveProjectEnumData for SuggestionRanking.VisibilityCategory;
  }

  else
  {
    v6 = CloudManager._waitForInitialization(_:_:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v27 = v0;
  v1 = *(v0 + 313);
  if (v1 == 2 || (v1 & 1) != 0)
  {
    v2 = *(v0 + 272);
    v3 = *(v0 + 264);
    v4 = *(v0 + 248);
    v5 = *(v0 + 232);
    v6 = *(v0 + 200);
    v7 = *(v0 + 176);
    v8 = *(v0 + 184);
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
    (*(v8 + 8))(v6, v7);
    v2(v4, v3, v5);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 288);
    v13 = *(v0 + 248);
    v14 = *(v0 + 232);
    if (v11)
    {
      v25 = *(v0 + 288);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v26 = v16;
      *v15 = 136446722;
      swift_beginAccess();
      v17 = StaticString.description.getter();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v26);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2082;
      *(v15 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x80000002165857B0, &v26);
      *(v15 + 22) = 2080;
      *(v15 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x80000002165857B0, &v26);
      _os_log_impl(&dword_21607C000, v9, v10, "%{public}s.%{public}s CloudManager.%s Initialization complete", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v16, -1, -1);
      MEMORY[0x21CE94770](v15, -1, -1);

      v25(v13, v14);
    }

    else
    {

      v12(v13, v14);
    }

    static CloudLog.LogEndInfo(_:)("_waitForInitialization(_:_:)", 28, 2, *(v0 + 144), &protocol witness table for CloudManager);

    v20 = *(v0 + 8);

    return v20();
  }

  else
  {
    v22 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AsyncPublisher<Published<Bool>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMd);
    v23 = swift_task_alloc();
    *(v0 + 304) = v23;
    *v23 = v0;
    v23[1] = CloudManager._waitForInitialization(_:_:);
    v24 = *(v0 + 152);

    return MEMORY[0x282200308](v0 + 313, v24, v22);
  }
}

uint64_t CloudManager.getAccountState()(uint64_t a1)
{
  v2[31] = a1;
  v2[32] = v1;
  v2[33] = *v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMd);
  v2[34] = v3;
  v2[35] = *(v3 - 8);
  v2[36] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySb_GGMd);
  v2[37] = v4;
  v2[38] = *(v4 - 8);
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v2[41] = v5;
  v2[42] = *(v5 - 8);
  v2[43] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v2[44] = v6;
  v2[45] = *(v6 - 8);
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();

  return MEMORY[0x2822009F8](CloudManager.getAccountState(), 0, 0);
}

uint64_t CloudManager.getAccountState()()
{
  v21 = v0;
  v20[1] = *MEMORY[0x277D85DE8];
  static CloudLog.LogBegin(_:_:)(0, "getAccountState()", 17, 2, v0[33], &protocol witness table for CloudManager);
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v1 = v0[52];
  v3 = v0[44];
  v2 = v0[45];
  v4 = __swift_project_value_buffer(v3, static CloudManager.Log);
  v0[53] = v4;
  swift_beginAccess();
  v5 = *(v2 + 16);
  v0[54] = v5;
  v0[55] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[52];
  v11 = v0[44];
  v10 = v0[45];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20[0] = v13;
    *v12 = 136446466;
    swift_beginAccess();
    v14 = StaticString.description.getter();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v20);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2082;
    *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x8000000216584E60, v20);
    _os_log_impl(&dword_21607C000, v6, v7, "%{public}s.%{public}s Waiting for initialization BEGIN", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v13, -1, -1);
    MEMORY[0x21CE94770](v12, -1, -1);
  }

  v17 = *(v10 + 8);
  v17(v9, v11);
  v0[56] = v17;
  v18 = swift_task_alloc();
  v0[57] = v18;
  *v18 = v0;
  v18[1] = CloudManager.getAccountState();

  return CloudManager._waitForInitialization(_:_:)("getAccountState()", 17, 2, 1875);
}

{

  return MEMORY[0x2822009F8](CloudManager.getAccountState(), 0, 0);
}

{
  v17 = v0;
  v16[1] = *MEMORY[0x277D85DE8];
  (*(v0 + 432))(*(v0 + 408), *(v0 + 424), *(v0 + 352));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v15 = *(v0 + 448);
    v3 = *(v0 + 408);
    v4 = *(v0 + 352);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16[0] = v6;
    *v5 = 136446466;
    swift_beginAccess();
    v7 = StaticString.description.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, v16);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2082;
    *(v5 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x8000000216584E60, v16);
    _os_log_impl(&dword_21607C000, v1, v2, "%{public}s.%{public}s Waiting for initialization END", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v6, -1, -1);
    MEMORY[0x21CE94770](v5, -1, -1);

    v15(v3, v4);
  }

  else
  {
    v10 = *(v0 + 448);
    v11 = *(v0 + 408);
    v12 = *(v0 + 352);

    v10(v11, v12);
  }

  v13 = *(v0 + 256);
  *(v0 + 480) = 0;

  return MEMORY[0x2822009F8](CloudManager.getAccountState(), v13, 0);
}

{
  *(v0 + 484) = *(*(v0 + 256) + 132);

  return MEMORY[0x2822009F8](CloudManager.getAccountState(), 0, 0);
}

{
  v32 = v0;
  v31[1] = *MEMORY[0x277D85DE8];
  notify_check(*(v0 + 484), (v0 + 480));
  v1 = *(v0 + 432);
  v2 = *(v0 + 424);
  v3 = *(v0 + 352);
  if (*(v0 + 480) < 1)
  {
    v1(*(v0 + 384), v2, v3);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 448);
    v19 = *(v0 + 384);
    v20 = *(v0 + 352);
    if (v17)
    {
      v30 = *(v0 + 448);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v31[0] = v22;
      *v21 = 136446466;
      swift_beginAccess();
      v23 = StaticString.description.getter();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v31);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2082;
      *(v21 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x8000000216584E60, v31);
      _os_log_impl(&dword_21607C000, v15, v16, "%{public}s.%{public}s Waiting for account update BEGIN", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v22, -1, -1);
      MEMORY[0x21CE94770](v21, -1, -1);

      v30(v19, v20);
    }

    else
    {

      v18(v19, v20);
    }

    v28 = *(v0 + 256);

    return MEMORY[0x2822009F8](CloudManager.getAccountState(), v28, 0);
  }

  else
  {
    v1(*(v0 + 400), v2, v3);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 448);
    v8 = *(v0 + 400);
    v9 = *(v0 + 352);
    if (v6)
    {
      v10 = swift_slowAlloc();
      v29 = v7;
      v31[0] = swift_slowAlloc();
      v11 = v31[0];
      *v10 = 136446466;
      swift_beginAccess();
      v12 = StaticString.description.getter();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v31);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2082;
      *(v10 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x8000000216584E60, v31);
      _os_log_impl(&dword_21607C000, v4, v5, "%{public}s.%{public}s Account changed, triggering initialization BEGIN", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v11, -1, -1);
      MEMORY[0x21CE94770](v10, -1, -1);

      v29(v8, v9);
    }

    else
    {

      v7(v8, v9);
    }

    v26 = swift_task_alloc();
    *(v0 + 464) = v26;
    *v26 = v0;
    v26[1] = CloudManager.getAccountState();

    return CloudManager.initializeSyncEngine(wait:_:)(0, 0xD00000000000001ELL, 0x8000000216584E80);
  }
}

{

  return MEMORY[0x2822009F8](CloudManager.getAccountState(), 0, 0);
}

{
  v29 = v0;
  v28[1] = *MEMORY[0x277D85DE8];
  (*(v0 + 432))(*(v0 + 392), *(v0 + 424), *(v0 + 352));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v25 = *(v0 + 392);
    v26 = *(v0 + 448);
    v24 = *(v0 + 352);
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v28[0] = v4;
    *v3 = 136446466;
    swift_beginAccess();
    v5 = StaticString.description.getter();
    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v6, v28);

    *(v3 + 4) = v7;
    *(v3 + 12) = 2082;
    *(v3 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x8000000216584E60, v28);
    _os_log_impl(&dword_21607C000, v1, v2, "%{public}s.%{public}s Account changed, triggering initialization END", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v4, -1, -1);
    MEMORY[0x21CE94770](v3, -1, -1);

    v26(v25, v24);
  }

  else
  {
    v8 = *(v0 + 448);
    v9 = *(v0 + 392);
    v10 = *(v0 + 352);

    v8(v9, v10);
  }

  (*(v0 + 432))(*(v0 + 384), *(v0 + 424), *(v0 + 352));
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 448);
  v15 = *(v0 + 384);
  v16 = *(v0 + 352);
  if (v13)
  {
    v27 = *(v0 + 384);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v28[0] = v18;
    *v17 = 136446466;
    swift_beginAccess();
    v19 = StaticString.description.getter();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v28);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2082;
    *(v17 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x8000000216584E60, v28);
    _os_log_impl(&dword_21607C000, v11, v12, "%{public}s.%{public}s Waiting for account update BEGIN", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v18, -1, -1);
    MEMORY[0x21CE94770](v17, -1, -1);

    v14(v27, v16);
  }

  else
  {

    v14(v15, v16);
  }

  v22 = *(v0 + 256);

  return MEMORY[0x2822009F8](CloudManager.getAccountState(), v22, 0);
}

{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.getter();
  swift_endAccess();

  return MEMORY[0x2822009F8](CloudManager.getAccountState(), 0, 0);
}

{
  v2 = v0[42];
  v1 = v0[43];
  v4 = v0[40];
  v3 = v0[41];
  v6 = v0[38];
  v5 = v0[39];
  v7 = v0[37];
  v8 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<Bool>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySb_GMd);
  MEMORY[0x21CE912F0](v3, v8);
  (*(v2 + 8))(v1, v3);
  (*(v6 + 16))(v5, v4, v7);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AsyncPublisher<Published<Bool>.Publisher> and conformance AsyncPublisher<A>, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySb_GGMd);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v9 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AsyncPublisher<Published<Bool>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMd);
  v10 = swift_task_alloc();
  v0[59] = v10;
  *v10 = v0;
  v10[1] = CloudManager.getAccountState();
  v11 = v0[34];

  return MEMORY[0x282200308](v0 + 61, v11, v9);
}

{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[35];
    v3 = v2[36];
    v5 = v2[34];

    (*(v4 + 8))(v3, v5);
    v6 = CloudManager.getAccountState();
  }

  else
  {
    v6 = CloudManager.getAccountState();
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v27 = v0;
  v26[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 488);
  if (v1 == 2 || (v1 & 1) == 0)
  {
    v5 = *(v0 + 432);
    v6 = *(v0 + 424);
    v7 = *(v0 + 376);
    v8 = *(v0 + 352);
    v9 = *(v0 + 320);
    v10 = *(v0 + 296);
    v11 = *(v0 + 304);
    (*(*(v0 + 280) + 8))(*(v0 + 288), *(v0 + 272));
    (*(v11 + 8))(v9, v10);
    v5(v7, v6, v8);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 448);
    v16 = *(v0 + 376);
    v17 = *(v0 + 352);
    if (v14)
    {
      v25 = *(v0 + 448);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26[0] = v19;
      *v18 = 136446466;
      swift_beginAccess();
      v20 = StaticString.description.getter();
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v26);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2082;
      *(v18 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x8000000216584E60, v26);
      _os_log_impl(&dword_21607C000, v12, v13, "%{public}s.%{public}s Waiting for account update END", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v19, -1, -1);
      MEMORY[0x21CE94770](v18, -1, -1);

      v25(v16, v17);
    }

    else
    {

      v15(v16, v17);
    }

    v23 = *(v0 + 256);

    return MEMORY[0x2822009F8](CloudManager.getAccountState(), v23, 0);
  }

  else
  {
    v2 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AsyncPublisher<Published<Bool>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMd);
    v3 = swift_task_alloc();
    *(v0 + 472) = v3;
    *v3 = v0;
    v3[1] = CloudManager.getAccountState();
    v4 = *(v0 + 272);

    return MEMORY[0x282200308](v0 + 488, v4, v2);
  }
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(v0 + 490) = *(v0 + 232);

  return MEMORY[0x2822009F8](CloudManager.getAccountState(), 0, 0);
}

{
  v22 = v0;
  v21[1] = *MEMORY[0x277D85DE8];
  (*(v0 + 432))(*(v0 + 368), *(v0 + 424), *(v0 + 352));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 490);
    v19 = *(v0 + 368);
    v20 = *(v0 + 448);
    v4 = *(v0 + 352);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21[0] = v6;
    *v5 = 136446722;
    swift_beginAccess();
    v7 = StaticString.description.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, v21);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2082;
    *(v5 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x8000000216584E60, v21);
    *(v5 + 22) = 2080;
    *(v0 + 489) = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI24CloudManagerAccountStateOSgMd);
    v10 = String.init<A>(describing:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v21);

    *(v5 + 24) = v12;
    _os_log_impl(&dword_21607C000, v1, v2, "%{public}s.%{public}s Returning accountState: %s", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v6, -1, -1);
    MEMORY[0x21CE94770](v5, -1, -1);

    v20(v19, v4);
  }

  else
  {
    v13 = *(v0 + 448);
    v14 = *(v0 + 368);
    v15 = *(v0 + 352);

    v13(v14, v15);
  }

  v16 = *(v0 + 264);
  **(v0 + 248) = *(v0 + 490);
  static CloudLog.LogEnd(_:)("getAccountState()", 17, 2, v16, &protocol witness table for CloudManager);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t CloudManager.getCurrentUser()()
{
  v1[7] = v0;
  v1[8] = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMd);
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySb_GGMd);
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v1[16] = v4;
  v1[17] = *(v4 - 8);
  v1[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](CloudManager.getCurrentUser(), 0, 0);
}

{
  static CloudLog.LogBegin(_:_:)(0, "getCurrentUser()", 16, 2, *(v0 + 64), &protocol witness table for CloudManager);
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  v1[1] = CloudManager.getCurrentUser();

  return CloudManager._waitForInitialization(_:_:)("getCurrentUser()", 16, 2, 1901);
}

{
  v1 = *v0;
  v2 = *(*v0 + 56);

  *(v1 + 184) = 0;

  return MEMORY[0x2822009F8](CloudManager.getCurrentUser(), v2, 0);
}

{
  *(v0 + 188) = *(*(v0 + 56) + 132);

  return MEMORY[0x2822009F8](CloudManager.getCurrentUser(), 0, 0);
}

{
  notify_check(*(v0 + 188), (v0 + 184));
  if (*(v0 + 184) < 1)
  {
    v3 = *(v0 + 56);

    return MEMORY[0x2822009F8](CloudManager.getCurrentUser(), v3, 0);
  }

  else
  {
    v1 = swift_task_alloc();
    *(v0 + 160) = v1;
    *v1 = v0;
    v1[1] = CloudManager.getCurrentUser();

    return CloudManager.initializeSyncEngine(wait:_:)(0, 0xD00000000000001DLL, 0x8000000216584EC0);
  }
}

{
  v1 = *v0;

  v2 = *(v1 + 56);

  return MEMORY[0x2822009F8](CloudManager.getCurrentUser(), v2, 0);
}

{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.getter();
  swift_endAccess();

  return MEMORY[0x2822009F8](CloudManager.getCurrentUser(), 0, 0);
}

{
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[12];
  v8 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<Bool>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySb_GMd);
  MEMORY[0x21CE912F0](v3, v8);
  (*(v2 + 8))(v1, v3);
  (*(v6 + 16))(v5, v4, v7);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AsyncPublisher<Published<Bool>.Publisher> and conformance AsyncPublisher<A>, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySb_GGMd);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v9 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AsyncPublisher<Published<Bool>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMd);
  v10 = swift_task_alloc();
  v0[21] = v10;
  *v10 = v0;
  v10[1] = CloudManager.getCurrentUser();
  v11 = v0[9];

  return MEMORY[0x282200308](v0 + 24, v11, v9);
}

{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[10];
    v3 = v2[11];
    v5 = v2[9];

    (*(v4 + 8))(v3, v5);
    v6 = CloudManager.getAccountState();
  }

  else
  {
    v6 = CloudManager.getCurrentUser();
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v1 = *(v0 + 192);
  if (v1 == 2 || (v1 & 1) == 0)
  {
    v5 = *(v0 + 120);
    v6 = *(v0 + 96);
    v7 = *(v0 + 104);
    v8 = *(v0 + 56);
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
    (*(v7 + 8))(v5, v6);

    return MEMORY[0x2822009F8](CloudManager.getCurrentUser(), v8, 0);
  }

  else
  {
    v2 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AsyncPublisher<Published<Bool>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMd);
    v3 = swift_task_alloc();
    *(v0 + 168) = v3;
    *v3 = v0;
    v3[1] = CloudManager.getCurrentUser();
    v4 = *(v0 + 72);

    return MEMORY[0x282200308](v0 + 192, v4, v2);
  }
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(v0 + 176) = *(v0 + 48);

  return MEMORY[0x2822009F8](CloudManager.getCurrentUser(), 0, 0);
}

{
  static CloudLog.LogEnd(_:)("getCurrentUser()", 16, 2, v0[8], &protocol witness table for CloudManager);

  v1 = v0[1];
  v2 = v0[22];

  return v1(v2);
}

uint64_t CloudManager._getDeviceDB()()
{
  *(v1 + 88) = v0;
  *(v1 + 96) = *v0;
  return MEMORY[0x2822009F8](CloudManager._getDeviceDB(), v0, 0);
}

{
  v1 = v0[11];
  static CloudLog.LogBegin(_:_:)(0, "_getDeviceDB()", 14, 2, v0[12], &protocol witness table for CloudManager);
  v2 = v1 + OBJC_IVAR____TtC9MomentsUI12CloudManager_cloudModel;
  swift_beginAccess();
  v3 = *(v2 + 8);
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 40);
  swift_unknownObjectRetain();
  v6 = v5(ObjectType, v3);
  result = swift_unknownObjectRelease();
  v8 = *(v6 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = v6 + 32;
    while (v9 < *(v6 + 16))
    {
      outlined init with copy of DBObject(v10, (v0 + 2));
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI10CloudSubDB_pMd);
      type metadata accessor for CloudDevicesDB();
      result = swift_dynamicCast();
      if (result)
      {

        v11 = v0[10];
        goto LABEL_8;
      }

      ++v9;
      v10 += 40;
      if (v8 == v9)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    v11 = 0;
LABEL_8:
    static CloudLog.LogEnd(_:)("_getDeviceDB()", 14, 2, v0[12], &protocol witness table for CloudManager);
    v12 = v0[1];

    return v12(v11);
  }

  return result;
}

uint64_t closure #3 in CloudManager.getFastDBManager()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = static Exif.filterVideo(inputURL:outputURL:);

  return CloudManager.initializeSyncEngine(wait:_:)(0, 0xD000000000000012, 0x8000000216584960);
}

uint64_t CloudManager.cancelSync()()
{
  *(v1 + 48) = v0;
  *(v1 + 56) = *v0;
  return MEMORY[0x2822009F8](CloudManager.cancelSync(), 0, 0);
}

{
  static CloudLog.LogBeginInfo(_:_:)(0, "cancelSync()", 12, 2, *(v0 + 56), &protocol witness table for CloudManager);
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = CloudManager.cancelSync();

  return CloudManager._waitForInitialization(_:_:)("cancelSync()", 12, 2, 1991);
}

{
  v1 = *(*v0 + 48);

  return MEMORY[0x2822009F8](CloudManager.cancelSync(), v1, 0);
}

{
  v1 = v0[6];
  static CloudLog.LogBegin(_:_:)(0, "_cancelSync()", 13, 2, v0[7], &protocol witness table for CloudManager);
  v2 = (v1 + OBJC_IVAR____TtC9MomentsUI12CloudManager_cloudModel);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  v0[9] = v4;
  ObjectType = swift_getObjectType();
  v0[10] = ObjectType;
  v0[5] = v3;
  v6 = *(v4 + 8);
  v7 = *(v6 + 96);
  swift_unknownObjectRetain();
  v10 = (v7 + *v7);
  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = CloudManager.cancelSync();

  return v10(ObjectType, v6);
}

{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 48);

  specialized CloudManager.cloudModel.setter(*(v1 + 40), v4, v2, v3);

  return MEMORY[0x2822009F8](CloudManager.cancelSync(), v4, 0);
}

{
  v1 = *(v0[6] + 136);
  v0[12] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[13] = v2;
    *v2 = v0;
    v2[1] = CloudManager.cancelSync();

    return MEMORY[0x28210DB58]();
  }

  else
  {
    static CloudLog.LogEnd(_:)("_cancelSync()", 13, 2, v0[7], &protocol witness table for CloudManager);

    return MEMORY[0x2822009F8](CloudManager.cancelSync(), 0, 0);
  }
}

{
  v1 = *(*v0 + 48);

  return MEMORY[0x2822009F8](CloudManager.cancelSync(), v1, 0);
}

{

  static CloudLog.LogEnd(_:)("_cancelSync()", 13, 2, *(v0 + 56), &protocol witness table for CloudManager);

  return MEMORY[0x2822009F8](CloudManager.cancelSync(), 0, 0);
}

{
  static CloudLog.LogEndInfo(_:)("cancelSync()", 12, 2, *(v0 + 56), &protocol witness table for CloudManager);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t CloudManager.refresh(force:wait:_:_:)(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = v5;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 73) = a2;
  *(v6 + 72) = a1;
  *(v6 + 48) = *v5;
  return MEMORY[0x2822009F8](CloudManager.refresh(force:wait:_:_:), 0, 0);
}

uint64_t CloudManager.refresh(force:wait:_:_:)()
{
  if (one-time initialization token for DEBUG_NO_NETWORK != -1)
  {
    swift_once();
  }

  if (static CloudManager.DEBUG_NO_NETWORK)
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = *(v0 + 48);
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    v6 = *(v0 + 16);
    v7 = *(v0 + 72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys23CustomStringConvertible_pSgGMd);
    v8 = swift_allocObject();
    v9 = MEMORY[0x277D839D8];
    *(v8 + 56) = MEMORY[0x277D839B0];
    *(v8 + 64) = v9;
    *(v8 + 32) = v7;
    v10 = MEMORY[0x277D837D0];
    v11 = MEMORY[0x277D83838];
    *(v8 + 16) = xmmword_21658E190;
    *(v8 + 96) = v10;
    *(v8 + 104) = v11;
    v12 = MEMORY[0x277D83B88];
    *(v8 + 72) = v6;
    *(v8 + 80) = v4;
    v13 = MEMORY[0x277D83BF8];
    *(v8 + 136) = v12;
    *(v8 + 144) = v13;
    *(v8 + 112) = v5;

    static CloudLog.LogBeginInfo(_:_:)(v8, "refresh(force:wait:_:_:)", 24, 2, v3, &protocol witness table for CloudManager);

    v14 = swift_task_alloc();
    *(v0 + 56) = v14;
    *v14 = v0;
    v14[1] = CloudManager.refresh(force:wait:_:_:);

    return CloudManager._waitForInitialization(_:_:)("refresh(force:wait:_:_:)", 24, 2, 2018);
  }
}

{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 64) = v3;
  *v3 = v2;
  v3[1] = CloudManager.refresh(force:wait:_:_:);
  v4 = *(v1 + 73);
  v5 = *(v1 + 72);

  return CloudManager._refresh(force:wait:)(v5, v4);
}

{

  return MEMORY[0x2822009F8](CloudManager.refresh(force:wait:_:_:), 0, 0);
}

{
  static CloudLog.LogEndInfo(_:)("refresh(force:wait:_:_:)", 24, 2, *(v0 + 48), &protocol witness table for CloudManager);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t CloudManager._refresh(force:wait:)(char a1, char a2)
{
  *(v3 + 392) = v2;
  *(v3 + 969) = a2;
  *(v3 + 968) = a1;
  *(v3 + 400) = *v2;
  v4 = type metadata accessor for CKSyncEngine.SendChangesOptions.Scope();
  *(v3 + 408) = v4;
  *(v3 + 416) = *(v4 - 8);
  *(v3 + 424) = swift_task_alloc();
  v5 = type metadata accessor for CKSyncEngine.SendChangesOptions();
  *(v3 + 432) = v5;
  v6 = *(v5 - 8);
  *(v3 + 440) = v6;
  *(v3 + 448) = *(v6 + 64);
  *(v3 + 456) = swift_task_alloc();
  *(v3 + 464) = swift_task_alloc();
  *(v3 + 472) = swift_task_alloc();
  Changes = type metadata accessor for CKSyncEngine.FetchChangesOptions.Scope();
  *(v3 + 480) = Changes;
  *(v3 + 488) = *(Changes - 8);
  *(v3 + 496) = swift_task_alloc();
  ChangesOptions = type metadata accessor for CKSyncEngine.FetchChangesOptions();
  *(v3 + 504) = ChangesOptions;
  *(v3 + 512) = *(ChangesOptions - 8);
  *(v3 + 520) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMd);
  *(v3 + 528) = v9;
  *(v3 + 536) = *(v9 - 8);
  *(v3 + 544) = swift_task_alloc();
  *(v3 + 552) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySb_GGMd);
  *(v3 + 560) = v10;
  *(v3 + 568) = *(v10 - 8);
  *(v3 + 576) = swift_task_alloc();
  *(v3 + 584) = swift_task_alloc();
  *(v3 + 592) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  *(v3 + 600) = v11;
  *(v3 + 608) = *(v11 - 8);
  *(v3 + 616) = swift_task_alloc();
  *(v3 + 624) = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  *(v3 + 632) = v12;
  *(v3 + 640) = *(v12 - 8);
  *(v3 + 648) = swift_task_alloc();
  *(v3 + 656) = swift_task_alloc();
  *(v3 + 664) = swift_task_alloc();
  *(v3 + 672) = swift_task_alloc();
  *(v3 + 680) = swift_task_alloc();
  *(v3 + 688) = swift_task_alloc();
  *(v3 + 696) = swift_task_alloc();
  *(v3 + 704) = swift_task_alloc();
  *(v3 + 712) = swift_task_alloc();
  *(v3 + 720) = swift_task_alloc();
  *(v3 + 728) = swift_task_alloc();
  *(v3 + 736) = swift_task_alloc();

  return MEMORY[0x2822009F8](CloudManager._refresh(force:wait:), v2, 0);
}

uint64_t CloudManager._refresh(force:wait:)()
{
  v73 = v0;
  if (one-time initialization token for DEBUG_NO_NETWORK != -1)
  {
    swift_once();
  }

  if (static CloudManager.DEBUG_NO_NETWORK)
  {
    goto LABEL_4;
  }

  v3 = *(v0 + 969);
  static CloudLog.LogBegin(_:_:)(0, "_refresh(force:wait:)", 21, 2, *(v0 + 400), &protocol witness table for CloudManager);
  if (v3 == 1)
  {
    *(v0 + 744) = OBJC_IVAR____TtC9MomentsUI12CloudManager___isRefreshing;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (*(v0 + 964) == 1)
    {
      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v4 = *(v0 + 736);
      v5 = *(v0 + 640);
      v6 = *(v0 + 632);
      v7 = __swift_project_value_buffer(v6, static CloudManager.Log);
      swift_beginAccess();
      (*(v5 + 16))(v4, v7, v6);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.debug.getter();
      v10 = os_log_type_enabled(v8, v9);
      v11 = *(v0 + 736);
      v12 = *(v0 + 632);
      v13 = (*(v0 + 640) + 8);
      if (v10)
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v72 = v15;
        *v14 = 136446210;
        *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x80000002165853A0, &v72);
        _os_log_impl(&dword_21607C000, v8, v9, "CloudManager.%{public}s: Already refreshing, waiting for completion", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v15);
        MEMORY[0x21CE94770](v15, -1, -1);
        MEMORY[0x21CE94770](v14, -1, -1);
      }

      (*v13)(v11, v12);
      v16 = *(v0 + 624);
      v17 = *(v0 + 608);
      v18 = *(v0 + 600);
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
      Published.projectedValue.getter();
      swift_endAccess();
      v19 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<Bool>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySb_GMd);
      MEMORY[0x21CE912F0](v18, v19);
      (*(v17 + 8))(v16, v18);
      v20 = CloudManager._refresh(force:wait:);
LABEL_33:

      return MEMORY[0x2822009F8](v20, 0, 0);
    }
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (*(v0 + 960) == 1)
    {
      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v21 = *(v0 + 728);
      v22 = *(v0 + 640);
      v23 = *(v0 + 632);
      v24 = __swift_project_value_buffer(v23, static CloudManager.Log);
      swift_beginAccess();
      (*(v22 + 16))(v21, v24, v23);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.debug.getter();
      v27 = os_log_type_enabled(v25, v26);
      v28 = *(v0 + 728);
      v29 = *(v0 + 640);
      v30 = *(v0 + 632);
      if (v27)
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v72 = v32;
        *v31 = 136446210;
        *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x80000002165853A0, &v72);
        _os_log_impl(&dword_21607C000, v25, v26, "CloudManager.%{public}s: Already refreshing, skipping", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v32);
        MEMORY[0x21CE94770](v32, -1, -1);
        MEMORY[0x21CE94770](v31, -1, -1);
      }

      (*(v29 + 8))(v28, v30);
      static CloudLog.LogEnd(_:)("_refresh(force:wait:)", 21, 2, *(v0 + 400), &protocol witness table for CloudManager);
LABEL_4:

      v1 = *(v0 + 8);

      return v1();
    }
  }

  v33 = *(v0 + 392);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 966) = 1;

  static Published.subscript.setter();
  v34 = *(v33 + 136);
  *(v0 + 760) = v34;
  if (!v34)
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v42 = *(v0 + 696);
    v43 = *(v0 + 640);
    v44 = *(v0 + 632);
    v45 = __swift_project_value_buffer(v44, static CloudManager.Log);
    swift_beginAccess();
    v46 = *(v43 + 16);
    v46(v42, v45, v44);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();
    v49 = os_log_type_enabled(v47, v48);
    v50 = *(v0 + 696);
    v51 = *(v0 + 640);
    v52 = *(v0 + 632);
    if (v49)
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v72 = v54;
      *v53 = 136446210;
      *(v53 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x80000002165853A0, &v72);
      _os_log_impl(&dword_21607C000, v47, v48, "CloudManager.%{public}s: Skipping CKSyncEngine fetch", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v54);
      MEMORY[0x21CE94770](v54, -1, -1);
      MEMORY[0x21CE94770](v53, -1, -1);
    }

    v55 = *(v51 + 8);
    v55(v50, v52);
    *(v0 + 840) = v46;
    *(v0 + 832) = v55;
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v56 = *(v0 + 688);
    v57 = *(v0 + 640);
    v58 = *(v0 + 632);
    v59 = __swift_project_value_buffer(v58, static CloudManager.Log);
    *(v0 + 848) = v59;
    swift_beginAccess();
    *(v0 + 856) = (v57 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v46(v56, v59, v58);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.debug.getter();
    v62 = os_log_type_enabled(v60, v61);
    v63 = *(v0 + 688);
    v64 = *(v0 + 632);
    if (v62)
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v72 = v66;
      *v65 = 136446210;
      *(v65 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x80000002165853A0, &v72);
      _os_log_impl(&dword_21607C000, v60, v61, "CloudManager.%{public}s: Waiting for CKSyncEngine refresh BEGIN", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v66);
      MEMORY[0x21CE94770](v66, -1, -1);
      MEMORY[0x21CE94770](v65, -1, -1);
    }

    v55(v63, v64);
    v67 = *(v0 + 616);
    v68 = *(v0 + 608);
    v69 = *(v0 + 600);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
    Published.projectedValue.getter();
    swift_endAccess();
    v70 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<Bool>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySb_GMd);
    MEMORY[0x21CE912F0](v69, v70);
    (*(v68 + 8))(v67, v69);
    v20 = CloudManager._refresh(force:wait:);
    goto LABEL_33;
  }

  v35 = (*(v0 + 392) + OBJC_IVAR____TtC9MomentsUI12CloudManager_cloudModel);
  swift_beginAccess();
  v36 = *v35;
  v37 = v35[1];
  ObjectType = swift_getObjectType();
  *(v0 + 352) = v36;
  v39 = *(v37 + 8);
  v40 = *(v39 + 24);

  v71 = (v40 + *v40);
  v41 = swift_task_alloc();
  *(v0 + 768) = v41;
  *v41 = v0;
  v41[1] = CloudManager._refresh(force:wait:);

  return v71(ObjectType, v39);
}

{
  (*(v0[71] + 16))(v0[73], v0[74], v0[70]);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AsyncPublisher<Published<Bool>.Publisher> and conformance AsyncPublisher<A>, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySb_GGMd);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v1 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AsyncPublisher<Published<Bool>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMd);
  v2 = swift_task_alloc();
  v0[94] = v2;
  *v2 = v0;
  v2[1] = CloudManager._refresh(force:wait:);
  v3 = v0[66];

  return MEMORY[0x282200308](v0 + 967, v3, v1);
}

{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[69];
    v4 = v2[67];
    v5 = v2[66];

    (*(v4 + 8))(v3, v5);
    v6 = destructiveProjectEnumData for SuggestionRanking.VisibilityCategory;
  }

  else
  {
    v6 = CloudManager._refresh(force:wait:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v1 = *(v0 + 967);
  if (v1 == 2 || (v1 & 1) == 0)
  {
    v5 = *(v0 + 592);
    v6 = *(v0 + 568);
    v7 = *(v0 + 560);
    v8 = *(v0 + 392);
    (*(*(v0 + 536) + 8))(*(v0 + 552), *(v0 + 528));
    (*(v6 + 8))(v5, v7);

    return MEMORY[0x2822009F8](CloudManager._refresh(force:wait:), v8, 0);
  }

  else
  {
    v2 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AsyncPublisher<Published<Bool>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMd);
    v3 = swift_task_alloc();
    *(v0 + 752) = v3;
    *v3 = v0;
    v3[1] = CloudManager._refresh(force:wait:);
    v4 = *(v0 + 528);

    return MEMORY[0x282200308](v0 + 967, v4, v2);
  }
}

{
  v61 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (*(v0 + 964) == 1)
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 736);
    v2 = *(v0 + 640);
    v3 = *(v0 + 632);
    v4 = __swift_project_value_buffer(v3, static CloudManager.Log);
    swift_beginAccess();
    (*(v2 + 16))(v1, v4, v3);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 736);
    v9 = *(v0 + 640);
    v10 = *(v0 + 632);
    if (v7)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v60 = v12;
      *v11 = 136446210;
      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x80000002165853A0, &v60);
      _os_log_impl(&dword_21607C000, v5, v6, "CloudManager.%{public}s: Already refreshing, waiting for completion", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x21CE94770](v12, -1, -1);
      MEMORY[0x21CE94770](v11, -1, -1);
    }

    (*(v9 + 8))(v8, v10);
    v13 = *(v0 + 624);
    v14 = *(v0 + 608);
    v15 = *(v0 + 600);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
    Published.projectedValue.getter();
    swift_endAccess();
    v16 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<Bool>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySb_GMd);
    MEMORY[0x21CE912F0](v15, v16);
    (*(v14 + 8))(v13, v15);
    v17 = CloudManager._refresh(force:wait:);
LABEL_21:

    return MEMORY[0x2822009F8](v17, 0, 0);
  }

  v18 = *(v0 + 392);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 966) = 1;

  static Published.subscript.setter();
  v19 = *(v18 + 136);
  *(v0 + 760) = v19;
  if (!v19)
  {
    v28 = &unk_2811A6000;
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v29 = *(v0 + 696);
    v30 = *(v0 + 640);
    v31 = *(v0 + 632);
    v32 = __swift_project_value_buffer(v31, static CloudManager.Log);
    swift_beginAccess();
    v33 = *(v30 + 16);
    v33(v29, v32, v31);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    v36 = os_log_type_enabled(v34, v35);
    v37 = *(v0 + 696);
    v38 = *(v0 + 640);
    v39 = *(v0 + 632);
    if (v36)
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v60 = v41;
      *v40 = 136446210;
      *(v40 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x80000002165853A0, &v60);
      _os_log_impl(&dword_21607C000, v34, v35, "CloudManager.%{public}s: Skipping CKSyncEngine fetch", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v41);
      v42 = v41;
      v28 = &unk_2811A6000;
      MEMORY[0x21CE94770](v42, -1, -1);
      MEMORY[0x21CE94770](v40, -1, -1);

      v43 = *(v38 + 8);
      v43(v37, v39);
    }

    else
    {

      v43 = *(v38 + 8);
      v43(v37, v39);
    }

    *(v0 + 840) = v33;
    *(v0 + 832) = v43;
    if (v28[300] != -1)
    {
      swift_once();
    }

    v44 = *(v0 + 688);
    v45 = *(v0 + 640);
    v46 = *(v0 + 632);
    v47 = __swift_project_value_buffer(v46, static CloudManager.Log);
    *(v0 + 848) = v47;
    swift_beginAccess();
    *(v0 + 856) = (v45 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v33(v44, v47, v46);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    v50 = os_log_type_enabled(v48, v49);
    v51 = *(v0 + 688);
    v52 = *(v0 + 632);
    if (v50)
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v60 = v54;
      *v53 = 136446210;
      *(v53 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x80000002165853A0, &v60);
      _os_log_impl(&dword_21607C000, v48, v49, "CloudManager.%{public}s: Waiting for CKSyncEngine refresh BEGIN", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v54);
      MEMORY[0x21CE94770](v54, -1, -1);
      MEMORY[0x21CE94770](v53, -1, -1);
    }

    v43(v51, v52);
    v55 = *(v0 + 616);
    v56 = *(v0 + 608);
    v57 = *(v0 + 600);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
    Published.projectedValue.getter();
    swift_endAccess();
    v58 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<Bool>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySb_GMd);
    MEMORY[0x21CE912F0](v57, v58);
    (*(v56 + 8))(v55, v57);
    v17 = CloudManager._refresh(force:wait:);
    goto LABEL_21;
  }

  v20 = (*(v0 + 392) + OBJC_IVAR____TtC9MomentsUI12CloudManager_cloudModel);
  swift_beginAccess();
  v21 = *v20;
  v22 = v20[1];
  ObjectType = swift_getObjectType();
  *(v0 + 352) = v21;
  v24 = *(v22 + 8);
  v25 = *(v24 + 24);

  v59 = (v25 + *v25);
  v26 = swift_task_alloc();
  *(v0 + 768) = v26;
  *v26 = v0;
  v26[1] = CloudManager._refresh(force:wait:);

  return v59(ObjectType, v24);
}

{
  v45 = v0;
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(v0[97]);

  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = v0[90];
  v3 = v0[80];
  v4 = v0[79];
  v5 = __swift_project_value_buffer(v4, static CloudManager.Log);
  v0[98] = v5;
  swift_beginAccess();
  v6 = *(v3 + 16);
  v0[99] = v6;
  v0[100] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[80];
  v41 = v0[79];
  v42 = v0[90];
  if (v9)
  {
    v40 = v1;
    v11 = swift_slowAlloc();
    v39 = v6;
    v12 = swift_slowAlloc();
    v44 = v12;
    *v11 = 136315394;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x80000002165853A0, &v44);
    *(v11 + 12) = 2080;
    v13 = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordZoneID);
    v14 = MEMORY[0x21CE922B0](v40, v13);
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v44);

    *(v11 + 14) = v16;
    _os_log_impl(&dword_21607C000, v7, v8, "CloudManager.%s CKSyncEngine fetching zones: %s", v11, 0x16u);
    swift_arrayDestroy();
    v17 = v12;
    v6 = v39;
    MEMORY[0x21CE94770](v17, -1, -1);
    v18 = v11;
    v1 = v40;
    MEMORY[0x21CE94770](v18, -1, -1);
  }

  v19 = *(v10 + 8);
  v19(v42, v41);
  v0[101] = v19;
  v20 = v0[89];
  v21 = v0[79];
  v22 = v0[61];
  v23 = v0[62];
  v24 = v0[60];
  *v23 = v1;
  (*(v22 + 104))(v23, *MEMORY[0x277CBBC30], v24);
  CKSyncEngine.FetchChangesOptions.init(scope:operationGroup:)();
  v6(v20, v5, v21);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();
  v27 = os_log_type_enabled(v25, v26);
  v28 = v0[89];
  v29 = v0[79];
  if (v27)
  {
    v43 = v0[89];
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v44 = v31;
    *v30 = 136446466;
    swift_beginAccess();
    v32 = StaticString.description.getter();
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v44);

    *(v30 + 4) = v34;
    *(v30 + 12) = 2082;
    *(v30 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x80000002165853A0, &v44);
    _os_log_impl(&dword_21607C000, v25, v26, "%{public}s.%{public}s CKSyncEngine.fetchChanges BEGIN", v30, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v31, -1, -1);
    MEMORY[0x21CE94770](v30, -1, -1);

    v35 = v43;
  }

  else
  {

    v35 = v28;
  }

  v19(v35, v29);
  v36 = swift_task_alloc();
  v0[102] = v36;
  *v36 = v0;
  v36[1] = CloudManager._refresh(force:wait:);
  v37 = v0[65];

  return MEMORY[0x28210DB30](v37);
}

{
  v2 = *v1;
  *(*v1 + 824) = v0;

  v3 = *(v2 + 392);
  if (v0)
  {
    v4 = CloudManager._refresh(force:wait:);
  }

  else
  {
    v4 = CloudManager._refresh(force:wait:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v32 = v0;
  (*(v0 + 792))(*(v0 + 704), *(v0 + 784), *(v0 + 632));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 808);
  v5 = *(v0 + 704);
  v6 = *(v0 + 632);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v30 = v4;
    v31 = swift_slowAlloc();
    v8 = v31;
    *v7 = 136446210;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x80000002165853A0, &v31);
    _os_log_impl(&dword_21607C000, v1, v2, "CloudManager.%{public}s: CKSyncEngine fetch END", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x21CE94770](v8, -1, -1);
    MEMORY[0x21CE94770](v7, -1, -1);

    v30(v5, v6);
  }

  else
  {

    v4(v5, v6);
  }

  v9 = *(v0 + 520);
  v10 = *(v0 + 504);
  v11 = *(v0 + 512);
  specialized $defer #3 () in CloudManager._refresh(force:wait:)("%{public}s.%{public}s CKSyncEngine.fetchChanges END");

  (*(v11 + 8))(v9, v10);
  v12 = *(v0 + 808);
  v13 = *(v0 + 792);
  *(v0 + 840) = v13;
  *(v0 + 832) = v12;
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v14 = *(v0 + 688);
  v15 = *(v0 + 640);
  v16 = *(v0 + 632);
  v17 = __swift_project_value_buffer(v16, static CloudManager.Log);
  *(v0 + 848) = v17;
  swift_beginAccess();
  *(v0 + 856) = (v15 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v14, v17, v16);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v0 + 688);
  v22 = *(v0 + 632);
  if (v20)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v31 = v24;
    *v23 = 136446210;
    *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x80000002165853A0, &v31);
    _os_log_impl(&dword_21607C000, v18, v19, "CloudManager.%{public}s: Waiting for CKSyncEngine refresh BEGIN", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x21CE94770](v24, -1, -1);
    MEMORY[0x21CE94770](v23, -1, -1);
  }

  v12(v21, v22);
  v25 = *(v0 + 616);
  v26 = *(v0 + 608);
  v27 = *(v0 + 600);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  v28 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<Bool>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySb_GMd);
  MEMORY[0x21CE912F0](v27, v28);
  (*(v26 + 8))(v25, v27);

  return MEMORY[0x2822009F8](CloudManager._refresh(force:wait:), 0, 0);
}

{
  (*(v0[71] + 16))(v0[73], v0[72], v0[70]);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AsyncPublisher<Published<Bool>.Publisher> and conformance AsyncPublisher<A>, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySb_GGMd);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v1 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AsyncPublisher<Published<Bool>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMd);
  v2 = swift_task_alloc();
  v0[108] = v2;
  *v2 = v0;
  v2[1] = CloudManager._refresh(force:wait:);
  v3 = v0[66];

  return MEMORY[0x282200308](v0 + 965, v3, v1);
}

{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[68];
    v4 = v2[67];
    v5 = v2[66];

    (*(v4 + 8))(v3, v5);
    v6 = destructiveProjectEnumData for SuggestionRanking.VisibilityCategory;
  }

  else
  {
    v6 = CloudManager._refresh(force:wait:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v1 = *(v0 + 965);
  if (v1 == 2 || (v1 & 1) == 0)
  {
    v5 = *(v0 + 576);
    v6 = *(v0 + 568);
    v7 = *(v0 + 560);
    v8 = *(v0 + 392);
    (*(*(v0 + 536) + 8))(*(v0 + 544), *(v0 + 528));
    (*(v6 + 8))(v5, v7);

    return MEMORY[0x2822009F8](CloudManager._refresh(force:wait:), v8, 0);
  }

  else
  {
    v2 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AsyncPublisher<Published<Bool>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMd);
    v3 = swift_task_alloc();
    *(v0 + 864) = v3;
    *v3 = v0;
    v3[1] = CloudManager._refresh(force:wait:);
    v4 = *(v0 + 528);

    return MEMORY[0x282200308](v0 + 965, v4, v2);
  }
}

{
  v34 = v0;
  (*(v0 + 840))(*(v0 + 680), *(v0 + 848), *(v0 + 632));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 832);
  v5 = *(v0 + 680);
  v6 = *(v0 + 632);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v33 = v8;
    *v7 = 136446210;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x80000002165853A0, &v33);
    _os_log_impl(&dword_21607C000, v1, v2, "CloudManager.%{public}s: Waiting for CKSyncEngine refresh END", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x21CE94770](v8, -1, -1);
    MEMORY[0x21CE94770](v7, -1, -1);
  }

  v4(v5, v6);
  (*(v0 + 840))(*(v0 + 672), *(v0 + 848), *(v0 + 632));
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 832);
  v13 = *(v0 + 672);
  v14 = *(v0 + 632);
  if (v11)
  {
    v32 = *(v0 + 832);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v33 = v16;
    *v15 = 136446466;
    swift_beginAccess();
    v17 = StaticString.description.getter();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v33);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    *(v15 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x80000002165853A0, &v33);
    _os_log_impl(&dword_21607C000, v9, v10, "%{public}s.%{public}s SubDB.refresh BEGIN", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v16, -1, -1);
    MEMORY[0x21CE94770](v15, -1, -1);

    v32(v13, v14);
  }

  else
  {

    v12(v13, v14);
  }

  v20 = *(v0 + 392);
  v21 = OBJC_IVAR____TtC9MomentsUI12CloudManager_cloudModel;
  *(v0 + 872) = OBJC_IVAR____TtC9MomentsUI12CloudManager_cloudModel;
  v22 = (v20 + v21);
  swift_beginAccess();
  v23 = *v22;
  v24 = v22[1];
  *(v0 + 880) = v24;
  ObjectType = swift_getObjectType();
  *(v0 + 888) = ObjectType;
  *(v0 + 360) = v23;
  v26 = *(v24 + 8);
  v27 = *(v26 + 104);
  swift_unknownObjectRetain();
  v31 = (v27 + *v27);
  v28 = swift_task_alloc();
  *(v0 + 896) = v28;
  *v28 = v0;
  v28[1] = CloudManager._refresh(force:wait:);
  v29 = *(v0 + 968);

  return v31(v29, ObjectType, v26);
}

{
  v1 = *v0;
  v2 = *(*v0 + 888);
  v3 = *(*v0 + 880);
  v4 = *(*v0 + 392);

  specialized CloudManager.cloudModel.setter(*(v1 + 360), v4, v2, v3);

  return MEMORY[0x2822009F8](CloudManager._refresh(force:wait:), v4, 0);
}

{
  v1 = *(v0 + 392);
  v2 = *(v1 + 136);
  *(v0 + 904) = v2;
  if (v2)
  {
    swift_beginAccess();
    v3 = *(*(v1 + 152) + 16);

    v4 = MEMORY[0x277D84F90];
    if (v3)
    {
      CKSyncEngine.state.getter();

      CKSyncEngine.State.add(pendingDatabaseChanges:)(v5);

      *(v1 + 152) = v4;
    }

    v6 = *(v0 + 392);
    swift_beginAccess();
    if (*(*(v6 + 144) + 16))
    {
      CKSyncEngine.state.getter();

      CKSyncEngine.State.add(pendingRecordZoneChanges:)(v7);

      *(v6 + 144) = v4;
    }

    v8 = (*(v0 + 392) + *(v0 + 872));
    v9 = *v8;
    v10 = v8[1];
    ObjectType = swift_getObjectType();
    *(v0 + 368) = v9;
    v12 = *(v10 + 8);
    v16 = (*(v12 + 32) + **(v12 + 32));
    v13 = swift_task_alloc();
    *(v0 + 912) = v13;
    *v13 = v0;
    v13[1] = CloudManager._refresh(force:wait:);

    return v16(ObjectType, v12);
  }

  else
  {
    specialized $defer #3 () in CloudManager._refresh(force:wait:)("%{public}s.%{public}s SubDB.refresh END");
    *(v1 + OBJC_IVAR____TtC9MomentsUI12CloudManager__cancelRefresh) = 0;
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 963) = 0;

    static Published.subscript.setter();
    static CloudLog.LogEnd(_:)("_refresh(force:wait:)", 21, 2, *(v0 + 400), &protocol witness table for CloudManager);

    v15 = *(v0 + 8);

    return v15();
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 456);
  v3 = *(*v0 + 440);
  v4 = *(*v0 + 432);
  v5 = *(*v0 + 392);

  v6 = *(v3 + 8);
  *(v1 + 952) = v6;
  v6(v2, v4);

  return MEMORY[0x2822009F8](CloudManager._refresh(force:wait:), v5, 0);
}

{
  v1 = *(v0 + 928);

  (*(v0 + 952))(*(v0 + 472), *(v0 + 432));
  static CloudLog.LogEnd(_:)("_sendChanges(zoneSet:reason:numRecords:expectedSize:syncEngine:_:_:)", 68, 2, *(v0 + 400), &protocol witness table for CloudManager);

  specialized $defer #3 () in CloudManager._refresh(force:wait:)("%{public}s.%{public}s _sendChanges END");

  v2 = *(v0 + 392);
  specialized $defer #3 () in CloudManager._refresh(force:wait:)("%{public}s.%{public}s SubDB.refresh END");
  *(v2 + OBJC_IVAR____TtC9MomentsUI12CloudManager__cancelRefresh) = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 963) = 0;

  static Published.subscript.setter();
  static CloudLog.LogEnd(_:)("_refresh(force:wait:)", 21, 2, *(v0 + 400), &protocol witness table for CloudManager);

  v3 = *(v0 + 8);

  return v3();
}

{
  v43 = v0;
  v1 = v0[103];
  v2 = v0[99];
  v3 = v0[98];
  v4 = v0[81];
  v5 = v0[79];
  v6 = v0[65];
  v7 = v0[63];
  v8 = v0[64];
  specialized $defer #3 () in CloudManager._refresh(force:wait:)("%{public}s.%{public}s CKSyncEngine.fetchChanges END");
  (*(v8 + 8))(v6, v7);
  v2(v4, v3, v5);
  v9 = v1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[103];
  v14 = v0[101];
  v15 = v0[81];
  v16 = v0[79];
  if (v12)
  {
    v41 = v0[101];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v40 = v15;
    v19 = swift_slowAlloc();
    v42 = v19;
    *v17 = 136446466;
    *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x80000002165853A0, &v42);
    *(v17 + 12) = 2112;
    v20 = v13;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v21;
    *v18 = v21;
    _os_log_impl(&dword_21607C000, v10, v11, "CloudManager.%{public}s CKSyncEngine fetch failed: %@", v17, 0x16u);
    outlined destroy of UTType?(v18, &_sSo8NSObjectCSgMd);
    MEMORY[0x21CE94770](v18, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x21CE94770](v19, -1, -1);
    MEMORY[0x21CE94770](v17, -1, -1);

    v41(v40, v16);
  }

  else
  {

    v14(v15, v16);
  }

  v22 = v0[99];
  v23 = v0[101];
  v0[105] = v22;
  v0[104] = v23;
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v24 = v0[86];
  v25 = v0[80];
  v26 = v0[79];
  v27 = __swift_project_value_buffer(v26, static CloudManager.Log);
  v0[106] = v27;
  swift_beginAccess();
  v0[107] = (v25 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v22(v24, v27, v26);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  v30 = os_log_type_enabled(v28, v29);
  v31 = v0[86];
  v32 = v0[79];
  if (v30)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v42 = v34;
    *v33 = 136446210;
    *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x80000002165853A0, &v42);
    _os_log_impl(&dword_21607C000, v28, v29, "CloudManager.%{public}s: Waiting for CKSyncEngine refresh BEGIN", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v34);
    MEMORY[0x21CE94770](v34, -1, -1);
    MEMORY[0x21CE94770](v33, -1, -1);
  }

  v23(v31, v32);
  v35 = v0[77];
  v36 = v0[76];
  v37 = v0[75];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  v38 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<Bool>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySb_GMd);
  MEMORY[0x21CE912F0](v37, v38);
  (*(v36 + 8))(v35, v37);

  return MEMORY[0x2822009F8](CloudManager._refresh(force:wait:), 0, 0);
}

uint64_t CloudManager._refresh(force:wait:)(uint64_t a1)
{
  v2 = *(*v1 + 392);
  *(*v1 + 776) = a1;

  return MEMORY[0x2822009F8](CloudManager._refresh(force:wait:), v2, 0);
}

{
  v2 = *(*v1 + 392);
  *(*v1 + 920) = a1;

  return MEMORY[0x2822009F8](CloudManager._refresh(force:wait:), v2, 0);
}

id CloudManager._refresh(force:wait:)()
{
  v69 = v0;
  (*(v0 + 840))(*(v0 + 664), *(v0 + 848), *(v0 + 632));

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v66 = *(v0 + 832);
    v63 = *(v0 + 632);
    v65 = *(v0 + 664);
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v67 = v4;
    *v3 = 136446466;
    *(v3 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x80000002165853A0, &v67);
    *(v3 + 12) = 2080;
    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordZoneID);
    lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue(&lazy protocol witness table cache variable for type CKRecordZoneID and conformance NSObject, &lazy cache variable for type metadata for CKRecordZoneID);
    v5 = Set.description.getter();
    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v6, &v67);

    *(v3 + 14) = v7;
    _os_log_impl(&dword_21607C000, v1, v2, "CloudManager.%{public}s CKSyncEngine sending zones: %s", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v4, -1, -1);
    MEMORY[0x21CE94770](v3, -1, -1);

    v66(v65, v63);
  }

  else
  {
    v8 = *(v0 + 832);
    v9 = *(v0 + 664);
    v10 = *(v0 + 632);

    v8(v9, v10);
  }

  (*(v0 + 840))(*(v0 + 656), *(v0 + 848), *(v0 + 632));
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 832);
  v15 = *(v0 + 656);
  v16 = *(v0 + 632);
  if (v13)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 136446466;
    v67 = v18;
    swift_beginAccess();
    v19 = StaticString.description.getter();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v67);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2082;
    *(v17 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x80000002165853A0, &v67);
    _os_log_impl(&dword_21607C000, v11, v12, "%{public}s.%{public}s _sendChanges BEGIN", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v18, -1, -1);
    MEMORY[0x21CE94770](v17, -1, -1);
  }

  v14(v15, v16);
  CKSyncEngine.state.getter();
  v22 = CKSyncEngine.State.pendingRecordZoneChanges.getter();

  v23 = *(v22 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys23CustomStringConvertible_pSgGMd);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_21658CA40;
  v25 = MEMORY[0x277D837D0];
  v26 = MEMORY[0x277D83838];
  *(v24 + 56) = MEMORY[0x277D837D0];
  *(v24 + 64) = v26;
  v27 = MEMORY[0x277D83B88];
  v28 = MEMORY[0x277D83BF8];
  *(v24 + 32) = 0xD00000000000003BLL;
  *(v24 + 40) = 0x80000002165853C0;
  *(v24 + 96) = v27;
  *(v24 + 104) = v28;
  *(v24 + 72) = v23;
  *(v0 + 376) = 1;
  type metadata accessor for CKOperationGroupTransferSize(0);
  v29 = String.init<A>(describing:)();
  *(v24 + 136) = v25;
  *(v24 + 144) = v26;
  *(v24 + 112) = v29;
  *(v24 + 120) = v30;
  *(v24 + 176) = v25;
  *(v24 + 184) = v26;
  *(v24 + 152) = 0xD000000000000015;
  *(v24 + 160) = 0x80000002165853A0;
  *(v24 + 216) = v27;
  *(v24 + 224) = v28;
  *(v24 + 192) = 2097;
  if (one-time initialization token for $inDelegate != -1)
  {
    swift_once();
  }

  v31 = *(v0 + 920);
  v32 = *(v0 + 400);
  TaskLocal.get()();
  v33 = *(v0 + 962);
  v34 = MEMORY[0x277D839D8];
  *(v24 + 256) = MEMORY[0x277D839B0];
  *(v24 + 264) = v34;
  *(v24 + 232) = v33;
  static CloudLog.LogBegin(_:_:)(v24, "_sendChanges(zoneSet:reason:numRecords:expectedSize:syncEngine:_:_:)", 68, 2, v32, &protocol witness table for CloudManager);

  v35 = *(v0 + 920);
  if ((v31 & 0xC000000000000001) != 0)
  {
    v36 = __CocoaSet.count.getter();
    v35 = *(v0 + 920);
    if (!v36)
    {
      goto LABEL_15;
    }
  }

  else if (!*(v35 + 16))
  {
LABEL_15:
    static CloudLog.LogEnd(_:)("_sendChanges(zoneSet:reason:numRecords:expectedSize:syncEngine:_:_:)", 68, 2, *(v0 + 400), &protocol witness table for CloudManager);

    specialized $defer #3 () in CloudManager._refresh(force:wait:)("%{public}s.%{public}s _sendChanges END");

    v54 = *(v0 + 392);
    specialized $defer #3 () in CloudManager._refresh(force:wait:)("%{public}s.%{public}s SubDB.refresh END");
    *(v54 + OBJC_IVAR____TtC9MomentsUI12CloudManager__cancelRefresh) = 0;
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 963) = 0;

    static Published.subscript.setter();
    static CloudLog.LogEnd(_:)("_refresh(force:wait:)", 21, 2, *(v0 + 400), &protocol witness table for CloudManager);

    v55 = *(v0 + 8);

    return v55();
  }

  v64 = specialized _copyCollectionToContiguousArray<A>(_:)(v35);
  v37 = [objc_allocWithZone(MEMORY[0x277CBC4F8]) init];
  *(v0 + 928) = v37;
  v38 = MEMORY[0x21CE91FC0](0xD00000000000003BLL, 0x80000002165853C0);
  [v37 setName_];

  [v37 setQuantity_];
  [v37 setExpectedSendSize_];
  result = [v37 defaultConfiguration];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v40 = result;
  v42 = *(v0 + 464);
  v41 = *(v0 + 472);
  v59 = *(v0 + 456);
  v60 = *(v0 + 448);
  v44 = *(v0 + 432);
  v43 = *(v0 + 440);
  v45 = *(v0 + 416);
  v46 = *(v0 + 424);
  v47 = *(v0 + 408);
  v61 = *(v0 + 400);
  v62 = *(v0 + 904);
  [result setAllowsCellularAccess_];

  *v46 = v64;
  (*(v45 + 104))(v46, *MEMORY[0x277CBBC18], v47);
  v48 = v37;
  CKSyncEngine.SendChangesOptions.init(scope:operationGroup:)();
  v49 = *(v43 + 16);
  v49(v42, v41, v44);
  v49(v59, v42, v44);
  v50 = (*(v43 + 80) + 48) & ~*(v43 + 80);
  v51 = swift_allocObject();
  *(v0 + 936) = v51;
  *(v51 + 2) = 0xD000000000000015;
  *(v51 + 3) = 0x80000002165853A0;
  *(v51 + 4) = 2097;
  *(v51 + 5) = v62;
  (*(v43 + 32))(&v51[v50], v42, v44);
  *&v51[(v60 + v50 + 7) & 0xFFFFFFFFFFFFFFF8] = v61;

  TaskLocal.get()();
  if (*(v0 + 961))
  {
    v52 = *(*(v0 + 440) + 8);
    v52(*(v0 + 456), *(v0 + 432));
    v67 = 0;
    v68 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);

    v67 = 0xD00000000000006ELL;
    v68 = 0x8000000216585400;
    *(v0 + 384) = 2097;
    v53 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x21CE92100](v53);

    specialized static BTask.detached(name:operation:)(v67, v68, &closure #1 in CloudManager._sendChanges(zoneSet:reason:numRecords:expectedSize:syncEngine:_:_:)partial apply, v51);

    v52(*(v0 + 472), *(v0 + 432));
    goto LABEL_15;
  }

  v56 = *(v0 + 904);
  v57 = swift_task_alloc();
  *(v0 + 944) = v57;
  *v57 = v0;
  v57[1] = CloudManager._refresh(force:wait:);
  v58 = *(v0 + 456);

  return specialized closure #1 in CloudManager._sendChanges(zoneSet:reason:numRecords:expectedSize:syncEngine:_:_:)(0xD000000000000015, 0x80000002165853A0, 2097, v56, v58);
}

uint64_t CloudManager.add(pendingRecordZoneChanges:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[14] = a4;
  v5[15] = v4;
  v5[12] = a2;
  v5[13] = a3;
  v5[11] = a1;
  v5[16] = *v4;
  v6 = type metadata accessor for Logger();
  v5[17] = v6;
  v5[18] = *(v6 - 8);
  v5[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](CloudManager.add(pendingRecordZoneChanges:_:_:), v4, 0);
}

uint64_t CloudManager.add(pendingRecordZoneChanges:_:_:)()
{
  v33 = v0;
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys23CustomStringConvertible_pSgGMd);
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D837D0];
  v8 = MEMORY[0x277D83838];
  *(v6 + 16) = xmmword_21658CA60;
  *(v6 + 56) = v7;
  *(v6 + 64) = v8;
  v9 = MEMORY[0x277D83B88];
  *(v6 + 32) = v5;
  *(v6 + 40) = v3;
  v10 = MEMORY[0x277D83BF8];
  *(v6 + 96) = v9;
  *(v6 + 104) = v10;
  *(v6 + 72) = v4;

  static CloudLog.LogBegin(_:_:)(v6, "add(pendingRecordZoneChanges:_:_:)", 34, 2, v1, &protocol witness table for CloudManager);

  if (*(v2 + 136))
  {
    v11 = v0[16];
    v12._rawValue = v0[11];

    CKSyncEngine.state.getter();
    CKSyncEngine.State.add(pendingRecordZoneChanges:)(v12);
  }

  else
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v14 = v0[18];
    v13 = v0[19];
    v15 = v0[17];
    v16 = __swift_project_value_buffer(v15, static CloudManager.Log);
    swift_beginAccess();
    (*(v14 + 16))(v13, v16, v15);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[18];
    v21 = v0[19];
    v22 = v0[17];
    if (v19)
    {
      v31 = v0[19];
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v32 = v24;
      *v23 = 136446466;
      swift_beginAccess();
      v25 = StaticString.description.getter();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v32);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2082;
      *(v23 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x8000000216584F00, &v32);
      _os_log_impl(&dword_21607C000, v17, v18, "%{public}s.%{public}s CKSyncEngine not available yet, buffering request", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v24, -1, -1);
      MEMORY[0x21CE94770](v23, -1, -1);

      (*(v20 + 8))(v31, v22);
    }

    else
    {

      (*(v20 + 8))(v21, v22);
    }

    v11 = v0[16];
    swift_beginAccess();

    specialized Array.append<A>(contentsOf:)(v28);
    swift_endAccess();
  }

  static CloudLog.LogEnd(_:)("add(pendingRecordZoneChanges:_:_:)", 34, 2, v11, &protocol witness table for CloudManager);

  v29 = v0[1];

  return v29();
}

uint64_t CloudManager.add(pendingDatabaseChanges:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[17] = a4;
  v5[18] = v4;
  v5[15] = a2;
  v5[16] = a3;
  v5[14] = a1;
  v5[19] = *v4;
  v6 = type metadata accessor for Logger();
  v5[20] = v6;
  v5[21] = *(v6 - 8);
  v5[22] = swift_task_alloc();
  v7 = type metadata accessor for CKSyncEngine.SendChangesOptions.Scope();
  v5[23] = v7;
  v5[24] = *(v7 - 8);
  v5[25] = swift_task_alloc();
  v8 = type metadata accessor for CKSyncEngine.SendChangesOptions();
  v5[26] = v8;
  v9 = *(v8 - 8);
  v5[27] = v9;
  v5[28] = *(v9 + 64);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](CloudManager.add(pendingDatabaseChanges:_:_:), v4, 0);
}

id CloudManager.add(pendingDatabaseChanges:_:_:)()
{
  v77 = v0;
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 128);
  v4 = *(v0 + 136);
  v5 = *(v0 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys23CustomStringConvertible_pSgGMd);
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D837D0];
  v8 = MEMORY[0x277D83838];
  *(v6 + 16) = xmmword_21658CA60;
  *(v6 + 56) = v7;
  *(v6 + 64) = v8;
  v9 = MEMORY[0x277D83B88];
  *(v6 + 32) = v5;
  *(v6 + 40) = v3;
  v10 = MEMORY[0x277D83BF8];
  *(v6 + 96) = v9;
  *(v6 + 104) = v10;
  *(v6 + 72) = v4;

  static CloudLog.LogBegin(_:_:)(v6, "add(pendingDatabaseChanges:_:_:)", 32, 2, v1, &protocol witness table for CloudManager);

  v11 = *(v2 + 136);
  *(v0 + 256) = v11;
  if (!v11)
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v47 = *(v0 + 168);
    v46 = *(v0 + 176);
    v48 = *(v0 + 160);
    v49 = __swift_project_value_buffer(v48, static CloudManager.Log);
    swift_beginAccess();
    (*(v47 + 16))(v46, v49, v48);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.info.getter();
    v52 = os_log_type_enabled(v50, v51);
    v54 = *(v0 + 168);
    v53 = *(v0 + 176);
    v55 = *(v0 + 160);
    if (v52)
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v75 = v57;
      *v56 = 136446466;
      swift_beginAccess();
      v58 = StaticString.description.getter();
      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v59, &v75);

      *(v56 + 4) = v60;
      *(v56 + 12) = 2082;
      *(v56 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x8000000216584F30, &v75);
      _os_log_impl(&dword_21607C000, v50, v51, "%{public}s.%{public}s CKSyncEngine not available yet, buffering request", v56, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v57, -1, -1);
      MEMORY[0x21CE94770](v56, -1, -1);
    }

    (*(v54 + 8))(v53, v55);
    swift_beginAccess();

    specialized Array.append<A>(contentsOf:)(v61);
    swift_endAccess();
    goto LABEL_17;
  }

  v12 = *(v0 + 136);
  v14 = *(v0 + 120);
  v13 = *(v0 + 128);
  v15 = *(v0 + 112);

  CKSyncEngine.state.getter();
  CKSyncEngine.State.add(pendingDatabaseChanges:)(v15);

  v16 = CloudManager._pendingDatabaseChanges2ZoneIDs(changes:)(v15);
  *(v0 + 264) = v16;
  v70 = v16;
  v73 = *(v15 + 16);
  v75 = v14;
  v76 = v13;

  MEMORY[0x21CE92100](58, 0xE100000000000000);
  *(v0 + 88) = v12;
  v17 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x21CE92100](v17);

  MEMORY[0x21CE92100](8236, 0xE200000000000000);
  MEMORY[0x21CE92100](0xD000000000000020, 0x8000000216584F30);
  v19 = v75;
  v18 = v76;
  *(v0 + 272) = v76;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_21658CA40;
  v21 = MEMORY[0x277D837D0];
  *(v20 + 56) = MEMORY[0x277D837D0];
  v22 = MEMORY[0x277D83838];
  *(v20 + 64) = MEMORY[0x277D83838];
  *(v20 + 32) = 0xD000000000000040;
  *(v20 + 40) = 0x8000000216584F60;
  v23 = MEMORY[0x277D83B88];
  *(v20 + 96) = MEMORY[0x277D83B88];
  *(v20 + 104) = v10;
  *(v20 + 72) = v73;
  *(v0 + 96) = 1;
  type metadata accessor for CKOperationGroupTransferSize(0);
  v24 = String.init<A>(describing:)();
  *(v20 + 136) = v21;
  *(v20 + 144) = v22;
  *(v20 + 112) = v24;
  *(v20 + 120) = v25;
  *(v20 + 176) = v21;
  *(v20 + 184) = v22;
  *(v20 + 152) = v19;
  *(v20 + 160) = v18;
  *(v20 + 216) = v23;
  *(v20 + 224) = v10;
  *(v20 + 192) = 2149;
  v26 = one-time initialization token for $inDelegate;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = *(v0 + 152);
  TaskLocal.get()();
  v28 = *(v0 + 312);
  v29 = MEMORY[0x277D839D8];
  *(v20 + 256) = MEMORY[0x277D839B0];
  *(v20 + 264) = v29;
  *(v20 + 232) = v28;
  static CloudLog.LogBegin(_:_:)(v20, "_sendChanges(zoneSet:reason:numRecords:expectedSize:syncEngine:_:_:)", 68, 2, v27, &protocol witness table for CloudManager);

  if ((v70 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_6;
    }

LABEL_15:

    goto LABEL_16;
  }

  if (!*(v70 + 16))
  {
    goto LABEL_15;
  }

LABEL_6:
  v66 = v19;
  v67 = v18;
  v68 = v11;
  v71 = specialized _copyCollectionToContiguousArray<A>(_:)(v70);
  v30 = [objc_allocWithZone(MEMORY[0x277CBC4F8]) init];
  *(v0 + 280) = v30;
  v31 = MEMORY[0x21CE91FC0](0xD000000000000040, 0x8000000216584F60);
  [v30 setName_];

  [v30 setQuantity_];
  [v30 setExpectedSendSize_];
  result = [v30 defaultConfiguration];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v33 = result;
  v34 = *(v0 + 240);
  v35 = *(v0 + 248);
  v65 = *(v0 + 232);
  v69 = *(v0 + 224);
  v37 = *(v0 + 208);
  v36 = *(v0 + 216);
  v38 = *(v0 + 192);
  v39 = *(v0 + 200);
  v40 = *(v0 + 184);
  v74 = *(v0 + 152);
  [result setAllowsCellularAccess_];

  *v39 = v71;
  (*(v38 + 104))(v39, *MEMORY[0x277CBBC18], v40);
  v72 = v30;
  CKSyncEngine.SendChangesOptions.init(scope:operationGroup:)();
  v41 = *(v36 + 16);
  v41(v34, v35, v37);
  v41(v65, v34, v37);
  v42 = (*(v36 + 80) + 48) & ~*(v36 + 80);
  v43 = swift_allocObject();
  *(v0 + 288) = v43;
  *(v43 + 2) = v66;
  *(v43 + 3) = v67;
  *(v43 + 4) = 2149;
  *(v43 + 5) = v68;
  (*(v36 + 32))(&v43[v42], v34, v37);
  *&v43[(v69 + v42 + 7) & 0xFFFFFFFFFFFFFFF8] = v74;

  TaskLocal.get()();
  if (*(v0 + 313))
  {
    v44 = *(*(v0 + 216) + 8);
    v44(*(v0 + 232), *(v0 + 208));
    _StringGuts.grow(_:)(27);

    v75 = 0xD000000000000058;
    v76 = 0x8000000216584FB0;
    MEMORY[0x21CE92100](v66, v67);

    MEMORY[0x21CE92100](58, 0xE100000000000000);
    *(v0 + 104) = 2149;
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x21CE92100](v45);

    specialized static BTask.detached(name:operation:)(v75, v76, &closure #1 in CloudManager._sendChanges(zoneSet:reason:numRecords:expectedSize:syncEngine:_:_:)partial apply, v43);

    v44(*(v0 + 248), *(v0 + 208));
LABEL_16:
    static CloudLog.LogEnd(_:)("_sendChanges(zoneSet:reason:numRecords:expectedSize:syncEngine:_:_:)", 68, 2, *(v0 + 152), &protocol witness table for CloudManager);

LABEL_17:
    static CloudLog.LogEnd(_:)("add(pendingDatabaseChanges:_:_:)", 32, 2, *(v0 + 152), &protocol witness table for CloudManager);

    v62 = *(v0 + 8);

    return v62();
  }

  v63 = swift_task_alloc();
  *(v0 + 296) = v63;
  *v63 = v0;
  v63[1] = CloudManager.add(pendingDatabaseChanges:_:_:);
  v64 = *(v0 + 232);

  return specialized closure #1 in CloudManager._sendChanges(zoneSet:reason:numRecords:expectedSize:syncEngine:_:_:)(v66, v67, 2149, v68, v64);
}

uint64_t CloudManager.add(pendingDatabaseChanges:_:_:)()
{
  v1 = *v0;
  v2 = *(*v0 + 232);
  v3 = *(*v0 + 216);
  v4 = *(*v0 + 208);
  v5 = *(*v0 + 144);

  v6 = *(v3 + 8);
  *(v1 + 304) = v6;
  v6(v2, v4);

  return MEMORY[0x2822009F8](CloudManager.add(pendingDatabaseChanges:_:_:), v5, 0);
}

{
  v1 = *(v0 + 280);

  (*(v0 + 304))(*(v0 + 248), *(v0 + 208));
  static CloudLog.LogEnd(_:)("_sendChanges(zoneSet:reason:numRecords:expectedSize:syncEngine:_:_:)", 68, 2, *(v0 + 152), &protocol witness table for CloudManager);

  static CloudLog.LogEnd(_:)("add(pendingDatabaseChanges:_:_:)", 32, 2, *(v0 + 152), &protocol witness table for CloudManager);

  v2 = *(v0 + 8);

  return v2();
}

void closure #1 in CloudManager.records(ids:desiredKeys:loadAssets:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySDySo10CKRecordIDCs6ResultOySo0A0Cs5Error_pGGsAG_pGMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - v4;
  v6 = objc_allocWithZone(MEMORY[0x277CBC3E0]);
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordID);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v8 = [v6 initWithRecordIDs_];

  [v8 setShouldFetchAssetContent_];

  CKFetchRecordsOperation.desiredKeys.setter();
  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo10CKRecordIDC_s6ResultOySo0C0Cs5Error_pGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySDySo10CKRecordIDCs6ResultOySo0C0Cs5Error_pGGSo16os_unfair_lock_sVGMd);
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  *(v10 + 16) = v9;

  CKFetchRecordsOperation.perRecordResultBlock.setter();
  (*(v3 + 16))(v5, a1, v2);
  v11 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  (*(v3 + 32))(v12 + v11, v5, v2);

  CKFetchRecordsOperation.fetchRecordsResultBlock.setter();
  if (one-time initialization token for container != -1)
  {
    swift_once();
  }

  v13 = [static CloudManager.container privateCloudDatabase];
  [v13 addOperation_];
}

void closure #1 in closure #1 in CloudManager.records(ids:desiredKeys:loadAssets:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock((a4 + 24));
  partial apply for closure #1 in closure #1 in closure #1 in CloudManager.records(ids:desiredKeys:loadAssets:)((a4 + 16));
  os_unfair_lock_unlock((a4 + 24));
}

void closure #1 in closure #1 in closure #1 in CloudManager.records(ids:desiredKeys:loadAssets:)(uint64_t *a1, void *a2, void *a3, char a4)
{
  v7 = a2;
  outlined copy of Result<CKRecord, Error>(a3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *a1;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a3, a4 & 1, v7, isUniquelyReferenced_nonNull_native);

  *a1 = v9;
}

uint64_t closure #2 in closure #1 in CloudManager.records(ids:desiredKeys:loadAssets:)(void *a1, char a2, os_unfair_lock_s *a3)
{
  os_unfair_lock_lock(a3 + 6);

  os_unfair_lock_unlock(a3 + 6);
  if (a2)
  {

    v6 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySDySo10CKRecordIDCs6ResultOySo0A0Cs5Error_pGGsAG_pGMd);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySDySo10CKRecordIDCs6ResultOySo0A0Cs5Error_pGGsAG_pGMd);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t protocol witness for static CloudManagerProtocol.DEBUG_NO_NETWORK.getter in conformance CloudManager()
{
  if (one-time initialization token for DEBUG_NO_NETWORK != -1)
  {
    swift_once();
  }

  return static CloudManager.DEBUG_NO_NETWORK;
}

id protocol witness for static CloudManagerProtocol.environment.getter in conformance CloudManager()
{
  if (one-time initialization token for container != -1)
  {
    swift_once();
  }

  v0 = [static CloudManager.container containerID];
  v1 = [v0 environment];

  return v1;
}

uint64_t protocol witness for CloudManagerProtocol.primaryID.getter in conformance CloudManager()
{
  return protocol witness for CloudManagerProtocol.primaryID.getter in conformance CloudManager();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t protocol witness for CloudManagerProtocol.onboarded.getter in conformance CloudManager()
{
  return protocol witness for CloudManagerProtocol.onboarded.getter in conformance CloudManager();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t protocol witness for CloudManagerProtocol.getAccountState() in conformance CloudManager(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = static Exif.filterVideo(inputURL:outputURL:);

  return CloudManager.getAccountState()(a1);
}

uint64_t protocol witness for CloudManagerProtocol.getCurrentUser() in conformance CloudManager()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = dispatch thunk of AssetViewModelRenderable.isReadyForDisplay();

  return CloudManager.getCurrentUser()();
}

uint64_t protocol witness for CloudManagerProtocol.getDeviceDB() in conformance CloudManager()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x2822009F8](protocol witness for CloudManagerProtocol.getDeviceDB() in conformance CloudManager, 0, 0);
}

{
  static CloudLog.LogBegin(_:_:)(0, "getDeviceDB()", 13, 2, *(v0 + 24), &protocol witness table for CloudManager);
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = protocol witness for CloudManagerProtocol.getDeviceDB() in conformance CloudManager;

  return CloudManager._waitForInitialization(_:_:)("getDeviceDB()", 13, 2, 1922);
}

{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 40) = v3;
  *v3 = v2;
  v3[1] = protocol witness for CloudManagerProtocol.getDeviceDB() in conformance CloudManager;

  return CloudManager._getDeviceDB()();
}

{
  $defer #1 () in CloudManager.getDeviceDB()(v0[3]);
  v1 = v0[1];
  v2 = v0[6];

  return v1(v2);
}

uint64_t protocol witness for CloudManagerProtocol.getDeviceDB() in conformance CloudManager(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](protocol witness for CloudManagerProtocol.getDeviceDB() in conformance CloudManager, 0, 0);
}

uint64_t protocol witness for CloudManagerProtocol.getDBManager() in conformance CloudManager()
{
  *(v1 + 24) = v0;
  *(v1 + 32) = *v0;
  return MEMORY[0x2822009F8](protocol witness for CloudManagerProtocol.getDBManager() in conformance CloudManager, 0, 0);
}

{
  static CloudLog.LogBegin(_:_:)(0, "getDBManager()", 14, 2, *(v0 + 32), &protocol witness table for CloudManager);
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = protocol witness for CloudManagerProtocol.getDBManager() in conformance CloudManager;

  return CloudManager._waitForInitialization(_:_:)("getDBManager()", 14, 2, 1944);
}

{
  v1 = *(*v0 + 24);

  return MEMORY[0x2822009F8](protocol witness for CloudManagerProtocol.getDBManager() in conformance CloudManager, v1, 0);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(v0 + 48) = *(v0 + 16);

  return MEMORY[0x2822009F8](protocol witness for CloudManagerProtocol.getDBManager() in conformance CloudManager, 0, 0);
}

{
  $defer #1 () in CloudManager.getDBManager()(v0[4]);
  v1 = v0[1];
  v2 = v0[6];

  return v1(v2);
}

uint64_t protocol witness for CloudManagerProtocol.gcActiveCount.getter in conformance CloudManager()
{
  return protocol witness for CloudManagerProtocol.gcActiveCount.getter in conformance CloudManager();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t protocol witness for CloudManagerProtocol.retainUIActive(_:_:_:) in conformance CloudManager(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = static Exif.filterVideo(inputURL:outputURL:);

  return CloudManager.retainUIActive(_:_:_:)(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for CloudManagerProtocol.releaseUIActive(_:_:_:) in conformance CloudManager(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = static Exif.filterVideo(inputURL:outputURL:);

  return CloudManager.releaseUIActive(_:_:_:)(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for CloudManagerProtocol.setSnapshotGeneration(_:) in conformance CloudManager()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t protocol witness for CloudManagerProtocol.latestLocalSnapshotSequence.getter in conformance CloudManager()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t protocol witness for CloudManagerProtocol.newlyOnboardedDevices.getter in conformance CloudManager()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t protocol witness for CloudManagerProtocol.clearNewlyOnboardedDevices() in conformance CloudManager()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](protocol witness for CloudManagerProtocol.clearNewlyOnboardedDevices() in conformance CloudManager, v0, 0);
}

{
  type metadata accessor for MainActor();
  *(v0 + 24) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](protocol witness for CloudManagerProtocol.clearNewlyOnboardedDevices() in conformance CloudManager, v2, v1);
}

{

  v1 = CloudManager.devicesDB.getter();
  v0[4] = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[5] = v2;
    *v2 = v0;
    v2[1] = protocol witness for CloudManagerProtocol.clearNewlyOnboardedDevices() in conformance CloudManager;

    return CloudDevicesDB.clearNewlyOnboardedDevices()();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](protocol witness for CloudManagerProtocol.clearNewlyOnboardedDevices() in conformance CloudManager, v1, 0);
}

uint64_t protocol witness for CloudManagerProtocol.freeSpace.getter in conformance CloudManager()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t protocol witness for CloudManagerProtocol.checkFreeSpace() in conformance CloudManager(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = static Exif.filterVideo(inputURL:outputURL:);

  return CloudManager.checkFreeSpace()(a1);
}

uint64_t protocol witness for CloudManagerProtocol.checkiCloudPhotoLibraryAvailable() in conformance CloudManager()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for CloudSubDB.zoneNotFound(_:_:purged:) in conformance CloudSuggestionsDB;

  return CloudManager.checkiCloudPhotoLibraryAvailable()();
}

uint64_t protocol witness for CloudManagerProtocol.checkHealthDataAvailable() in conformance CloudManager()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = dispatch thunk of AssetViewModelRenderable.isReadyForDisplay();

  return CloudManager.checkHealthDataAvailable()();
}

uint64_t protocol witness for CloudManagerProtocol.accountStatePublisher.getter in conformance CloudManager(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t protocol witness for CloudManagerProtocol.dbSnapshotEventPublisher.getter in conformance CloudManager()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgs5NeverOGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PassthroughSubject<DBSnapshotAnalytics.SnapshotEvent?, Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCy9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgs5NeverOGMd);
  return Publisher.eraseToAnyPublisher()();
}

uint64_t protocol witness for CloudManagerProtocol.refresh(force:wait:_:_:) in conformance CloudManager(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = static Exif.filterVideo(inputURL:outputURL:);

  return CloudManager.refresh(force:wait:_:_:)(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for CloudManagerProtocol.add(pendingRecordZoneChanges:_:_:) in conformance CloudManager(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = static Exif.filterVideo(inputURL:outputURL:);

  return CloudManager.add(pendingRecordZoneChanges:_:_:)(a1, a2, a3, a4);
}

uint64_t protocol witness for CloudManagerProtocol.add(pendingDatabaseChanges:_:_:) in conformance CloudManager(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = static Exif.filterVideo(inputURL:outputURL:);

  return CloudManager.add(pendingDatabaseChanges:_:_:)(a1, a2, a3, a4);
}

uint64_t protocol witness for CloudManagerProtocol.records(ids:desiredKeys:loadAssets:) in conformance CloudManager(uint64_t a1, uint64_t a2, char a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for CloudManagerProtocol.records(ids:desiredKeys:loadAssets:) in conformance CloudManager;

  return CloudManager.records(ids:desiredKeys:loadAssets:)(a1, a2, a3);
}

uint64_t protocol witness for CloudManagerProtocol.records(ids:desiredKeys:loadAssets:) in conformance CloudManager(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t CloudManager.deleteLocalData()()
{
  *(v1 + 64) = v0;
  *(v1 + 72) = *v0;
  return MEMORY[0x2822009F8](CloudManager.deleteLocalData(), v0, 0);
}

{
  v1 = v0[8];
  static CloudLog.LogBeginInfo(_:_:)(0, "deleteLocalData()", 17, 2, v0[9], &protocol witness table for CloudManager);
  swift_getKeyPath();
  swift_getKeyPath();
  v0[6] = 0;
  v0[5] = 0;

  static Published.subscript.setter();
  v2 = (v1 + OBJC_IVAR____TtC9MomentsUI12CloudManager_cloudModel);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  v0[10] = v4;
  ObjectType = swift_getObjectType();
  v0[11] = ObjectType;
  v0[7] = v3;
  v6 = *(v4 + 8);
  v7 = *(v6 + 120);
  swift_unknownObjectRetain();
  v10 = (v7 + *v7);
  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  v8[1] = CloudManager.deleteLocalData();

  return v10(ObjectType, v6);
}

{
  v2 = *v1;
  (*v1)[13] = v0;

  if (v0)
  {
    v3 = v2[8];
    v4 = CloudManager.deleteLocalData();
  }

  else
  {
    v5 = v2[8];
    specialized CloudManager.cloudModel.setter(v2[7], v5, v2[11], v2[10]);
    v4 = CloudManager.deleteLocalData();
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  static CloudLog.LogEndInfo(_:)("deleteLocalData()", 17, 2, *(v0 + 72), &protocol witness table for CloudManager);
  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[13];
  specialized CloudManager.cloudModel.setter(v0[7], v0[8], v0[11], v0[10]);

  static CloudLog.LogEndInfo(_:)("deleteLocalData()", 17, 2, v0[9], &protocol witness table for CloudManager);
  v2 = v0[1];

  return v2();
}

uint64_t key path getter for CloudManager.dbManager : CloudManager@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t key path setter for CloudManager.dbManager : CloudManager()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  return specialized Sequence.contains(where:)(a1, a2, a3) & 1;
}

{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x21CE93180](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = __CocoaSet.count.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t specialized CloudManager.cloudModel.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = (a2 + OBJC_IVAR____TtC9MomentsUI12CloudManager_cloudModel);
  swift_beginAccess();
  v11 = *v10;
  *v10 = a1;
  v10[1] = a4;
  if (v11 != a1)
  {
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
    v13 = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type CloudManager and conformance CloudManager, type metadata accessor for CloudManager);
    v14 = swift_allocObject();
    v14[2] = a2;
    v14[3] = v13;
    v14[4] = a2;
    swift_retain_n();
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in CloudManager.cloudModel.didset, v14);
  }

  return swift_unknownObjectRelease();
}

uint64_t specialized closure #1 in CloudManager.retainUIActive(_:_:_:)(uint64_t a1, uint64_t a2)
{
  v37 = type metadata accessor for Logger();
  v39 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v38 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v34 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v34 - v12;
  v14 = OBJC_IVAR____TtC9MomentsUI12CloudManager__uiActiveIDs;
  swift_beginAccess();
  v15 = *(a2 + v14);

  v16 = specialized Set.contains(_:)(a1, v15);

  if (v16)
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v17 = v37;
    v18 = __swift_project_value_buffer(v37, static CloudManager.Log);
    swift_beginAccess();
    v20 = v38;
    v19 = v39;
    (*(v39 + 16))(v38, v18, v17);
    v21 = v36;
    (*(v6 + 16))(v36, a1, v5);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v40 = v35;
      *v24 = 136446722;
      swift_beginAccess();
      v25 = StaticString.description.getter();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v40);

      *(v24 + 4) = v27;
      *(v24 + 12) = 2082;
      *(v24 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000216584840, &v40);
      *(v24 + 22) = 2080;
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      (*(v6 + 8))(v21, v5);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v40);

      *(v24 + 24) = v31;
      _os_log_impl(&dword_21607C000, v22, v23, "%{public}s.%{public}s Duplicate registration of ID %s", v24, 0x20u);
      v32 = v35;
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v32, -1, -1);
      MEMORY[0x21CE94770](v24, -1, -1);

      return (*(v39 + 8))(v38, v17);
    }

    else
    {

      (*(v6 + 8))(v21, v5);
      return (*(v19 + 8))(v20, v17);
    }
  }

  else
  {
    (*(v6 + 16))(v11, a1, v5);
    swift_beginAccess();
    specialized Set._Variant.insert(_:)(v13, v11);
    swift_endAccess();
    return (*(v6 + 8))(v13, v5);
  }
}

uint64_t specialized static CloudManager._checkTCC(retrying:)()
{
  v1[11] = v0;
  v2 = type metadata accessor for Logger();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized static CloudManager._checkTCC(retrying:), 0, 0);
}

{
  v1 = v0[11];
  v2 = swift_allocObject();
  v0[15] = v2;
  *(v2 + 16) = 2;
  v3 = swift_task_alloc();
  v0[16] = v3;
  v3[2] = 0xD000000000000014;
  v3[3] = 0x80000002165855E0;
  v3[4] = 0x6F666E494343546BLL;
  v3[5] = 0xEF65636976726553;
  v3[6] = v2;
  v3[7] = v1;
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = specialized static CloudManager._checkTCC(retrying:);
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v4, 0, 0, 0xD000000000000014, 0x8000000216585600, partial apply for closure #1 in static CloudManager._checkTCC(retrying:), v3, v5);
}

{

  return MEMORY[0x2822009F8](specialized static CloudManager._checkTCC(retrying:), 0, 0);
}

{
  v24 = v0;
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v4 = __swift_project_value_buffer(v2, static CloudManager.Log);
  swift_beginAccess();
  (*(v3 + 16))(v1, v4, v2);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 112);
    v8 = *(v0 + 120);
    v9 = *(v0 + 96);
    v10 = *(v0 + 104);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v11 = 136446466;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x8000000216585600, &v23);
    *(v11 + 12) = 2082;
    swift_beginAccess();
    *(v0 + 144) = *(v8 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd);
    v13 = String.init<A>(describing:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v23);

    *(v11 + 14) = v15;
    _os_log_impl(&dword_21607C000, v5, v6, "CloudManager.%{public}s TCC result: %{public}s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v12, -1, -1);
    MEMORY[0x21CE94770](v11, -1, -1);

    (*(v10 + 8))(v7, v9);
  }

  else
  {
    v17 = *(v0 + 104);
    v16 = *(v0 + 112);
    v18 = *(v0 + 96);

    (*(v17 + 8))(v16, v18);
  }

  v19 = *(v0 + 120);
  swift_beginAccess();
  v20 = *(v19 + 16);

  v21 = *(v0 + 8);

  return v21(v20);
}

uint64_t specialized closure #1 in CloudManager.releaseUIActive(_:_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v41 = *(v4 - 8);
  v42 = v4;
  MEMORY[0x28223BE20](v4);
  v40 = &v36[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v36[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36[-v11];
  v13 = OBJC_IVAR____TtC9MomentsUI12CloudManager__uiActiveIDs;
  swift_beginAccess();
  v14 = *(a2 + v13);

  v15 = specialized Set.contains(_:)(a1, v14);

  if (v15)
  {
    swift_beginAccess();
    specialized Set._Variant.remove(_:)(a1, v12);
    swift_endAccess();
    return outlined destroy of UTType?(v12, &_s10Foundation4UUIDVSgMd);
  }

  else
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v17 = v6;
    v18 = __swift_project_value_buffer(v6, static CloudManager.Log);
    swift_beginAccess();
    v19 = v7;
    (*(v7 + 16))(v9, v18, v17);
    v21 = v40;
    v20 = v41;
    v22 = v42;
    (*(v41 + 16))(v40, a1, v42);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v39 = v17;
      v26 = v25;
      v38 = swift_slowAlloc();
      v43 = v38;
      *v26 = 136446722;
      v37 = v24;
      swift_beginAccess();
      v27 = StaticString.description.getter();
      v29 = v20;
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v43);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2082;
      *(v26 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x80000002165848C0, &v43);
      *(v26 + 22) = 2080;
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      (*(v29 + 8))(v21, v22);
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v43);

      *(v26 + 24) = v34;
      _os_log_impl(&dword_21607C000, v23, v37, "%{public}s.%{public}s Over-release of ID %s", v26, 0x20u);
      v35 = v38;
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v35, -1, -1);
      MEMORY[0x21CE94770](v26, -1, -1);

      return (*(v19 + 8))(v9, v39);
    }

    else
    {

      (*(v20 + 8))(v21, v22);
      return (*(v19 + 8))(v9, v17);
    }
  }
}

uint64_t _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for CloudManager()
{
  result = type metadata singleton initialization cache for CloudManager;
  if (!type metadata singleton initialization cache for CloudManager)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t partial apply for closure #2 in CloudManager.releaseUIActive(_:_:_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #2 in CloudManager.releaseUIActive(_:_:_:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #3 in CloudManager.getFastDBManager()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #3 in CloudManager.getFastDBManager()();
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #5 in CloudManager.initializeSyncEngine(wait:_:)(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #5 in CloudManager.initializeSyncEngine(wait:_:)(a1, a2, v2);
}

uint64_t partial apply for closure #4 in CloudManager.initializeSyncEngine(wait:_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #4 in CloudManager.initializeSyncEngine(wait:_:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in CloudManager.init(automaticallySync:cloudSyncStateURL:cloudDeviceDBURL:cloudSuggestionsStateURL:suggestionsDBURL:cloudSyncDBURL:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in CloudManager.init(automaticallySync:cloudSyncStateURL:cloudDeviceDBURL:cloudSuggestionsStateURL:suggestionsDBURL:cloudSyncDBURL:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in CloudManager.handleEvent(_:syncEngine:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = static Exif.filterImage(imageSource:outputURL:);

  return closure #1 in CloudManager.handleEvent(_:syncEngine:)(a1, v4, v5, v6);
}

uint64_t specialized static CloudSubDB.zones.getter()
{
  return _s9MomentsUI10CloudSubDBPAAE5zonesShySo14CKRecordZoneIDCGvgZAA0c7DevicesE0C_Ttg5Tm(&one-time initialization token for cloudRecordTypes, &static CloudSuggestionsDB.cloudRecordTypes);
}

{
  return _s9MomentsUI10CloudSubDBPAAE5zonesShySo14CKRecordZoneIDCGvgZAA0c7DevicesE0C_Ttg5Tm(&one-time initialization token for cloudRecordTypes, &static CloudSyncDB.cloudRecordTypes);
}

{
  return _s9MomentsUI10CloudSubDBPAAE5zonesShySo14CKRecordZoneIDCGvgZAA0c7DevicesE0C_Ttg5Tm(&one-time initialization token for cloudRecordTypes, &static CloudDevicesDB.cloudRecordTypes);
}

uint64_t _s9MomentsUI10CloudSubDBPAAE5zonesShySo14CKRecordZoneIDCGvgZAA0c7DevicesE0C_Ttg5Tm(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = *a2;
  v4 = *(v3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v16 = MEMORY[0x277D84F90];

    specialized ContiguousArray.reserveCapacity(_:)();
    v6 = v3 + 40;
    do
    {
      v7 = (*(*v6 + 32))();
      v9 = v8;
      v10 = objc_allocWithZone(MEMORY[0x277CBC5E8]);
      v11 = MEMORY[0x21CE91FC0](v7, v9);

      v12 = [v10 initWithZoneName_];

      v13 = [v12 zoneID];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v6 += 16;
      --v4;
    }

    while (v4);

    v5 = v16;
  }

  v14 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo14CKRecordZoneIDC_SayAEGTt0g5Tf4g_n(v5);

  return v14;
}

uint64_t specialized closure #1 in CloudManager._sendChanges(zoneSet:reason:numRecords:expectedSize:syncEngine:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = type metadata accessor for Logger();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized closure #1 in CloudManager._sendChanges(zoneSet:reason:numRecords:expectedSize:syncEngine:_:_:), 0, 0);
}

uint64_t specialized closure #1 in CloudManager._sendChanges(zoneSet:reason:numRecords:expectedSize:syncEngine:_:_:)()
{
  v22 = v0;
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[11];
  v4 = __swift_project_value_buffer(v2, static CloudManager.Log);
  v0[15] = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v0[16] = v5;
  v0[17] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[14];
  v10 = v0[10];
  v11 = v0[11];
  if (v8)
  {
    v12 = v0[6];
    v20 = v0[7];
    v13 = v0[5];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 136446722;
    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000044, 0x8000000216584D00, &v21);
    *(v14 + 12) = 2082;
    *(v14 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v12, &v21);
    *(v14 + 22) = 2048;
    *(v14 + 24) = v20;
    _os_log_impl(&dword_21607C000, v6, v7, "CloudManager.%{public}s Forced send BEGIN From: %{public}s:%ld", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v15, -1, -1);
    MEMORY[0x21CE94770](v14, -1, -1);
  }

  v16 = *(v11 + 8);
  v16(v9, v10);
  v0[18] = v16;
  v17 = swift_task_alloc();
  v0[19] = v17;
  *v17 = v0;
  v17[1] = specialized closure #1 in CloudManager._sendChanges(zoneSet:reason:numRecords:expectedSize:syncEngine:_:_:);
  v18 = v0[9];

  return MEMORY[0x28210DB28](v18);
}

{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = specialized closure #1 in CloudManager._sendChanges(zoneSet:reason:numRecords:expectedSize:syncEngine:_:_:);
  }

  else
  {
    v2 = specialized closure #1 in CloudManager._sendChanges(zoneSet:reason:numRecords:expectedSize:syncEngine:_:_:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v16 = v0;
  (*(v0 + 128))(*(v0 + 104), *(v0 + 120), *(v0 + 80));

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 144);
  v5 = *(v0 + 104);
  v6 = *(v0 + 80);
  if (v3)
  {
    v7 = *(v0 + 48);
    v13 = *(v0 + 56);
    v8 = *(v0 + 40);
    v14 = *(v0 + 144);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136446722;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000044, 0x8000000216584D00, &v15);
    *(v9 + 12) = 2082;
    *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v15);
    *(v9 + 22) = 2048;
    *(v9 + 24) = v13;
    _os_log_impl(&dword_21607C000, v1, v2, "CloudManager.%{public}s Forced send END From: %{public}s:%ld", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v10, -1, -1);
    MEMORY[0x21CE94770](v9, -1, -1);

    v14(v5, v6);
  }

  else
  {

    v4(v5, v6);
  }

  v11 = *(v0 + 8);

  return v11();
}

{
  v24 = v0;
  v1 = *(v0 + 160);
  (*(v0 + 128))(*(v0 + 96), *(v0 + 120), *(v0 + 80));

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 160);
  v7 = *(v0 + 144);
  v8 = *(v0 + 96);
  v9 = *(v0 + 80);
  if (v5)
  {
    v21 = *(v0 + 96);
    v22 = *(v0 + 144);
    v11 = *(v0 + 48);
    v10 = *(v0 + 56);
    v12 = *(v0 + 40);
    v20 = *(v0 + 80);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v13 = 136446978;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000044, 0x8000000216584D00, &v23);
    *(v13 + 12) = 2082;
    *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, &v23);
    *(v13 + 22) = 2048;
    *(v13 + 24) = v10;
    *(v13 + 32) = 2112;
    v16 = v6;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 34) = v17;
    *v14 = v17;
    _os_log_impl(&dword_21607C000, v3, v4, "CloudManager.%{public}s Forced send From: %{public}s:%ld ERROR: %@", v13, 0x2Au);
    outlined destroy of UTType?(v14, &_sSo8NSObjectCSgMd);
    MEMORY[0x21CE94770](v14, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v15, -1, -1);
    MEMORY[0x21CE94770](v13, -1, -1);

    v22(v21, v20);
  }

  else
  {

    v7(v8, v9);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t specialized $defer #3 () in CloudManager._refresh(force:wait:)(const char *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, static CloudManager.Log);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136446466;
    swift_beginAccess();
    v11 = StaticString.description.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v16);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x80000002165853A0, &v16);
    _os_log_impl(&dword_21607C000, v7, v8, a1, v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v10, -1, -1);
    MEMORY[0x21CE94770](v9, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t specialized static CloudManager._safeTCCDescription(_:)(uint64_t a1)
{
  if (!a1)
  {
    return 7104878;
  }

  v65 = *(a1 + 16);
  if (v65)
  {
    v1 = 0;
    v64 = a1 + 32;
    v2 = MEMORY[0x277D84F90];
    while (1)
    {
      v3 = *(v64 + 8 * v1);
      v4 = *(v3 + 16);

      if (v4)
      {
        v5 = specialized __RawDictionaryStorage.find<A>(_:)(0x6F666E494343546BLL, 0xEF65636976726553);
        if (v6)
        {
          outlined init with copy of Any(*(v3 + 56) + 32 * v5, &v67);
          if (swift_dynamicCast())
          {
            break;
          }
        }
      }

      v9 = MEMORY[0x277D84F90];
      if (*(v3 + 16))
      {
        goto LABEL_12;
      }

LABEL_25:
      if (*(v3 + 16))
      {
        v22 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000010, 0x8000000216585620);
        if (v23)
        {
          outlined init with copy of Any(*(v3 + 56) + 32 * v22, &v67);
          if (swift_dynamicCast())
          {
            v67 = 0x4449656C646E7562;
            v68 = 0xEA0000000000203ALL;
            MEMORY[0x21CE92100](v66);

            v24 = v67;
            v25 = v68;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
            }

            v27 = *(v9 + 2);
            v26 = *(v9 + 3);
            if (v27 >= v26 >> 1)
            {
              v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v9);
            }

            *(v9 + 2) = v27 + 1;
            v28 = &v9[16 * v27];
            *(v28 + 4) = v24;
            *(v28 + 5) = v25;
          }
        }
      }

      if (*(v3 + 16))
      {
        v29 = specialized __RawDictionaryStorage.find<A>(_:)(0x6F666E494343546BLL, 0xEE00656372756F53);
        if (v30)
        {
          outlined init with copy of Any(*(v3 + 56) + 32 * v29, &v67);
          if (swift_dynamicCast())
          {
            v67 = 0x203A656372756F73;
            v68 = 0xE800000000000000;
            v31 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x21CE92100](v31);

            v32 = v67;
            v33 = v68;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
            }

            v35 = *(v9 + 2);
            v34 = *(v9 + 3);
            if (v35 >= v34 >> 1)
            {
              v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v9);
            }

            *(v9 + 2) = v35 + 1;
            v36 = &v9[16 * v35];
            *(v36 + 4) = v32;
            *(v36 + 5) = v33;
          }
        }
      }

      if (*(v3 + 16))
      {
        v37 = specialized __RawDictionaryStorage.find<A>(_:)(0x6F666E494343546BLL, 0xEE006E6F73616552);
        if (v38)
        {
          outlined init with copy of Any(*(v3 + 56) + 32 * v37, &v67);
          if (swift_dynamicCast())
          {
            v67 = 0x203A6E6F73616572;
            v68 = 0xE800000000000000;
            v39 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x21CE92100](v39);

            v40 = v67;
            v41 = v68;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
            }

            v43 = *(v9 + 2);
            v42 = *(v9 + 3);
            if (v43 >= v42 >> 1)
            {
              v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v9);
            }

            *(v9 + 2) = v43 + 1;
            v44 = &v9[16 * v43];
            *(v44 + 4) = v40;
            *(v44 + 5) = v41;
          }
        }
      }

      if (*(v9 + 2))
      {

        v67 = 91;
        v68 = 0xE100000000000000;
        v45 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x21CE92100](v45);

        MEMORY[0x21CE92100](8250, 0xE200000000000000);
        v66 = v9;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
        lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
        v46 = BidirectionalCollection<>.joined(separator:)();
        v48 = v47;

        MEMORY[0x21CE92100](v46, v48);

        v49 = 93;
        v50 = 0xE100000000000000;
      }

      else
      {

        v67 = 91;
        v68 = 0xE100000000000000;
        v51 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x21CE92100](v51);

        MEMORY[0x21CE92100](8250, 0xE200000000000000);
        v52 = *(v3 + 16);

        v66 = v52;
        v53 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x21CE92100](v53);

        v49 = 0x5D7379656B20;
        v50 = 0xE600000000000000;
      }

      MEMORY[0x21CE92100](v49, v50);
      v54 = v67;
      v55 = v68;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
      }

      v57 = *(v2 + 2);
      v56 = *(v2 + 3);
      if (v57 >= v56 >> 1)
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v57 + 1, 1, v2);
      }

      ++v1;
      *(v2 + 2) = v57 + 1;
      v58 = &v2[16 * v57];
      *(v58 + 4) = v54;
      *(v58 + 5) = v55;
      if (v65 == v1)
      {
        v67 = 0;
        v68 = 0xE000000000000000;
        _StringGuts.grow(_:)(16);

        v67 = 91;
        v68 = 0xE100000000000000;
        v59 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x21CE92100](v59);

        MEMORY[0x21CE92100](0x73656972746E6520, 0xEA0000000000203ALL);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
        lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
        v60 = BidirectionalCollection<>.joined(separator:)();
        v62 = v61;

        MEMORY[0x21CE92100](v60, v62);

        MEMORY[0x21CE92100](93, 0xE100000000000000);
        return v67;
      }
    }

    v67 = 0x3A65636976726573;
    v68 = 0xE900000000000020;
    MEMORY[0x21CE92100](v66);

    v7 = v67;
    v8 = v68;
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
    v11 = *(v9 + 2);
    v10 = *(v9 + 3);
    if (v11 >= v10 >> 1)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v9);
    }

    *(v9 + 2) = v11 + 1;
    v12 = &v9[16 * v11];
    *(v12 + 4) = v7;
    *(v12 + 5) = v8;
    if (!*(v3 + 16))
    {
      goto LABEL_25;
    }

LABEL_12:
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(0x6F666E494343546BLL, 0xEF6465746E617247);
    if (v14)
    {
      outlined init with copy of Any(*(v3 + 56) + 32 * v13, &v67);
      if (swift_dynamicCast())
      {
        v67 = 0x3A6465746E617267;
        v68 = 0xE900000000000020;
        if (v66)
        {
          v15 = 1702195828;
        }

        else
        {
          v15 = 0x65736C6166;
        }

        if (v66)
        {
          v16 = 0xE400000000000000;
        }

        else
        {
          v16 = 0xE500000000000000;
        }

        MEMORY[0x21CE92100](v15, v16);

        v18 = v67;
        v17 = v68;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
        }

        v20 = *(v9 + 2);
        v19 = *(v9 + 3);
        if (v20 >= v19 >> 1)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v9);
        }

        *(v9 + 2) = v20 + 1;
        v21 = &v9[16 * v20];
        *(v21 + 4) = v18;
        *(v21 + 5) = v17;
      }
    }

    goto LABEL_25;
  }

  return 0x7261207974706D65;
}

uint64_t specialized CloudManager.handleStateChange(_:syncEngine:)(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v2[8] = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CloudKit12CKSyncEngineC5StateC13SerializationVSgMd);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized CloudManager.handleStateChange(_:syncEngine:), v1, 0);
}

uint64_t specialized CloudManager.handleStateChange(_:syncEngine:)()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys23CustomStringConvertible_pSgGMd);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21658CA50;
  v5 = type metadata accessor for CKSyncEngine.Event.StateUpdate();
  *(v4 + 56) = v5;
  *(v4 + 64) = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type CKSyncEngine.Event.StateUpdate and conformance CKSyncEngine.Event.StateUpdate, MEMORY[0x277CBBC88]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v4 + 32));
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v3, v5);
  static CloudLog.LogBegin(_:_:)(v4, "handleStateChange(_:syncEngine:)", 32, 2, v1, &protocol witness table for CloudManager);

  v7 = OBJC_IVAR____TtC9MomentsUI12CloudManager_cloudModel;
  v0[10] = OBJC_IVAR____TtC9MomentsUI12CloudManager_cloudModel;
  v8 = (v2 + v7);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  v0[11] = v10;
  ObjectType = swift_getObjectType();
  v0[12] = ObjectType;
  v0[5] = v9;
  v12 = *(v10 + 8);
  v13 = *(v12 + 136);
  swift_unknownObjectRetain();
  v16 = (v13 + *v13);
  v14 = swift_task_alloc();
  v0[13] = v14;
  *v14 = v0;
  v14[1] = specialized CloudManager.handleStateChange(_:syncEngine:);

  return v16(ObjectType, v12);
}

{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[7];

    v4 = specialized CloudManager.handleStateChange(_:syncEngine:);
    v5 = v3;
  }

  else
  {
    v6 = v2[7];
    specialized CloudManager.cloudModel.setter(v2[5], v6, v2[12], v2[11]);
    v4 = specialized CloudManager.handleStateChange(_:syncEngine:);
    v5 = v6;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

{
  v1 = v0[9];
  v2 = v0[8];
  v3 = *(v0[7] + v0[10] + 8);
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  CKSyncEngine.Event.StateUpdate.stateSerialization.getter();
  v5 = type metadata accessor for CKSyncEngine.State.Serialization();
  (*(*(v5 - 8) + 56))(v1, 0, 1, v5);
  (*(v3 + 24))(v1, ObjectType, v3);
  swift_unknownObjectRelease();
  static CloudLog.LogEnd(_:)("handleStateChange(_:syncEngine:)", 32, 2, v2, &protocol witness table for CloudManager);

  v6 = v0[1];

  return v6();
}

{
  specialized CloudManager.cloudModel.setter(v0[5], v0[7], v0[12], v0[11]);
  v1 = v0[9];
  v2 = v0[8];
  v3 = *(v0[7] + v0[10] + 8);
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  CKSyncEngine.Event.StateUpdate.stateSerialization.getter();
  v5 = type metadata accessor for CKSyncEngine.State.Serialization();
  (*(*(v5 - 8) + 56))(v1, 0, 1, v5);
  (*(v3 + 24))(v1, ObjectType, v3);
  swift_unknownObjectRelease();
  static CloudLog.LogEnd(_:)("handleStateChange(_:syncEngine:)", 32, 2, v2, &protocol witness table for CloudManager);

  v6 = v0[1];

  return v6();
}

uint64_t specialized CloudManager.handleAccountChange(_:syncEngine:)(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v2[6] = *v1;
  v3 = type metadata accessor for CKSyncEngine.Event.AccountChange.ChangeType();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized CloudManager.handleAccountChange(_:syncEngine:), v1, 0);
}

uint64_t specialized CloudManager.handleAccountChange(_:syncEngine:)()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys23CustomStringConvertible_pSgGMd);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_21658CA50;
  v7 = type metadata accessor for CKSyncEngine.Event.AccountChange();
  *(v6 + 56) = v7;
  *(v6 + 64) = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type CKSyncEngine.Event.AccountChange and conformance CKSyncEngine.Event.AccountChange, MEMORY[0x277CBBCC0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v6 + 32));
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, v5, v7);
  static CloudLog.LogBegin(_:_:)(v6, "handleAccountChange(_:syncEngine:)", 34, 2, v3, &protocol witness table for CloudManager);

  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x21CE92100](0xD000000000000022, 0x8000000216585580);
  MEMORY[0x21CE92100](0x3A746E6576652028, 0xE900000000000020);
  CKSyncEngine.Event.AccountChange.changeType.getter();
  _print_unlocked<A, B>(_:_:)();
  (*(v2 + 8))(v1, v4);
  MEMORY[0x21CE92100](10528, 0xE200000000000000);
  v9 = v0[2];
  v10 = v0[3];
  v0[10] = v10;
  v11 = swift_task_alloc();
  v0[11] = v11;
  *v11 = v0;
  v11[1] = specialized CloudManager.handleAccountChange(_:syncEngine:);

  return CloudManager.initializeSyncEngine(wait:_:)(0, v9, v10);
}

{
  v1 = *(*v0 + 40);

  return MEMORY[0x2822009F8](specialized CloudManager.handleAccountChange(_:syncEngine:), v1, 0);
}

{
  static CloudLog.LogEnd(_:)("handleAccountChange(_:syncEngine:)", 34, 2, *(v0 + 48), &protocol witness table for CloudManager);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t specialized CloudManager.handleFetchedDatabaseChanges(_:syncEngine:)(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  v2[23] = *v1;
  v3 = type metadata accessor for CKDatabase.DatabaseChange.Modification();
  v2[24] = v3;
  v2[25] = *(v3 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[28] = v4;
  v2[29] = *(v4 - 8);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v5 = type metadata accessor for CKDatabase.DatabaseChange.Deletion.Reason();
  v2[33] = v5;
  v2[34] = *(v5 - 8);
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v6 = type metadata accessor for CKDatabase.DatabaseChange.Deletion();
  v2[37] = v6;
  v2[38] = *(v6 - 8);
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized CloudManager.handleFetchedDatabaseChanges(_:syncEngine:), v1, 0);
}

uint64_t specialized CloudManager.handleFetchedDatabaseChanges(_:syncEngine:)()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys23CustomStringConvertible_pSgGMd);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_21658CA50;
  v4 = type metadata accessor for CKSyncEngine.Event.FetchedDatabaseChanges();
  *(v3 + 56) = v4;
  *(v3 + 64) = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type CKSyncEngine.Event.FetchedDatabaseChanges and conformance CKSyncEngine.Event.FetchedDatabaseChanges, MEMORY[0x277CBBD48]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v3 + 32));
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v2, v4);
  static CloudLog.LogBegin(_:_:)(v3, "handleFetchedDatabaseChanges(_:syncEngine:)", 43, 2, v1, &protocol witness table for CloudManager);

  v7 = MEMORY[0x21CE91810](v6);
  *(v0 + 336) = v7;
  v8 = *(v7 + 16);
  *(v0 + 344) = v8;
  if (v8)
  {
    v9 = *(v0 + 304);
    *(v0 + 352) = OBJC_IVAR____TtC9MomentsUI12CloudManager_cloudModel;
    *(v0 + 544) = *(v9 + 80);
    swift_beginAccess();
    *(v0 + 360) = *(v9 + 72);
    v10 = *(v9 + 16);
    *(v0 + 548) = *MEMORY[0x277CBBE58];
    *(v0 + 368) = v10;
    *(v0 + 376) = 0;
    v12 = *(v0 + 328);
    v11 = *(v0 + 336);
    v13 = *(v0 + 296);
    v14 = (*(v0 + 176) + *(v0 + 352));
    v15 = (*(v0 + 544) + 32) & ~*(v0 + 544);
    *(v0 + 384) = (*(v0 + 304) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v16 = v10(v12, v11 + v15, v13);
    v17 = MEMORY[0x21CE927B0](v16);
    *(v0 + 392) = v17;
    v18 = *v14;
    *(v0 + 400) = *v14;
    v19 = v14[1];
    ObjectType = swift_getObjectType();
    *(v0 + 136) = v18;
    v21 = *(v19 + 8);
    v22 = *(v21 + 40);
    swift_unknownObjectRetain();
    v41 = (v22 + *v22);
    v23 = swift_task_alloc();
    *(v0 + 408) = v23;
    *v23 = v0;
    v24 = specialized CloudManager.handleFetchedDatabaseChanges(_:syncEngine:);
LABEL_5:
    v23[1] = v24;

    return v41(v17, ObjectType, v21);
  }

  v26 = MEMORY[0x21CE91800](v25);
  *(v0 + 440) = v26;
  v27 = *(v26 + 16);
  *(v0 + 448) = v27;
  if (v27)
  {
    v28 = *(v0 + 200);
    *(v0 + 456) = OBJC_IVAR____TtC9MomentsUI12CloudManager_cloudModel;
    *(v0 + 552) = *(v28 + 80);
    swift_beginAccess();
    *(v0 + 464) = *(v28 + 72);
    v29 = *(v28 + 16);
    *(v0 + 472) = v29;
    *(v0 + 480) = 0;
    v30 = *(v0 + 440);
    v31 = *(v0 + 216);
    v32 = *(v0 + 192);
    v33 = (*(v0 + 176) + *(v0 + 456));
    v34 = (*(v0 + 552) + 32) & ~*(v0 + 552);
    *(v0 + 488) = (*(v0 + 200) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v35 = v29(v31, v30 + v34, v32);
    v17 = MEMORY[0x21CE92760](v35);
    *(v0 + 496) = v17;
    v36 = *v33;
    *(v0 + 504) = *v33;
    v37 = v33[1];
    ObjectType = swift_getObjectType();
    *(v0 + 144) = v36;
    v21 = *(v37 + 8);
    v38 = *(v21 + 40);
    swift_unknownObjectRetain();
    v41 = (v38 + *v38);
    v23 = swift_task_alloc();
    *(v0 + 512) = v23;
    *v23 = v0;
    v24 = specialized CloudManager.handleFetchedDatabaseChanges(_:syncEngine:);
    goto LABEL_5;
  }

  static CloudLog.LogEnd(_:)("handleFetchedDatabaseChanges(_:syncEngine:)", 43, 2, *(v0 + 184), &protocol witness table for CloudManager);

  v40 = *(v0 + 8);

  return v40();
}

{
  if (*(v0 + 556))
  {
    v1 = *(v0 + 548);
    v3 = *(v0 + 280);
    v2 = *(v0 + 288);
    v4 = *(v0 + 264);
    v5 = *(v0 + 272);
    CKDatabase.DatabaseChange.Deletion.reason.getter();
    (*(v5 + 104))(v3, v1, v4);
    v6 = static CKDatabase.DatabaseChange.Deletion.Reason.== infix(_:_:)();
    v7 = *(v5 + 8);
    v7(v3, v4);
    v7(v2, v4);
    if (v6)
    {
      v93 = v6;
      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v8 = *(v0 + 368);
      v10 = *(v0 + 320);
      v9 = *(v0 + 328);
      v11 = *(v0 + 296);
      v12 = *(v0 + 256);
      v14 = *(v0 + 224);
      v13 = *(v0 + 232);
      v15 = __swift_project_value_buffer(v14, static CloudManager.Log);
      swift_beginAccess();
      (*(v13 + 16))(v12, v15, v14);
      v8(v10, v9, v11);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      v18 = os_log_type_enabled(v16, v17);
      v19 = *(v0 + 320);
      v20 = *(v0 + 296);
      v21 = *(v0 + 304);
      if (v18)
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *v22 = 138412290;
        v24 = MEMORY[0x21CE927B0]();
        (*(v21 + 8))(v19, v20);
        *(v22 + 4) = v24;
        *v23 = v24;
        _os_log_impl(&dword_21607C000, v16, v17, "Zone: %@ was PURGED!", v22, 0xCu);
        outlined destroy of UTType?(v23, &_sSo8NSObjectCSgMd);
        MEMORY[0x21CE94770](v23, -1, -1);
        MEMORY[0x21CE94770](v22, -1, -1);
      }

      else
      {

        (*(v21 + 8))(v19, v20);
      }

      v6 = v93;
      (*(*(v0 + 232) + 8))(*(v0 + 256), *(v0 + 224));
    }

    v78 = (*(v0 + 176) + *(v0 + 352));
    v80 = *v78;
    v79 = v78[1];
    *(v0 + 416) = v79;
    ObjectType = swift_getObjectType();
    *(v0 + 424) = ObjectType;
    *(v0 + 160) = v80;
    v82 = *(v79 + 8);
    v83 = *(v82 + 208);
    swift_unknownObjectRetain();
    v92 = (v83 + *v83);
    v84 = swift_task_alloc();
    *(v0 + 432) = v84;
    *v84 = v0;
    v84[1] = specialized CloudManager.handleFetchedDatabaseChanges(_:syncEngine:);
    v85 = *(v0 + 392);

    return (v92)(v85, v6 & 1, ObjectType, v82);
  }

  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v25 = *(v0 + 368);
  v26 = *(v0 + 328);
  v27 = *(v0 + 312);
  v28 = *(v0 + 296);
  v29 = *(v0 + 248);
  v30 = *(v0 + 224);
  v31 = *(v0 + 232);
  v32 = __swift_project_value_buffer(v30, static CloudManager.Log);
  swift_beginAccess();
  (*(v31 + 16))(v29, v32, v30);
  v25(v27, v26, v28);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();
  v35 = os_log_type_enabled(v33, v34);
  v36 = *(v0 + 328);
  v38 = *(v0 + 304);
  v37 = *(v0 + 312);
  v39 = *(v0 + 296);
  v40 = *(v0 + 248);
  v41 = *(v0 + 232);
  v94 = *(v0 + 224);
  if (v35)
  {
    v89 = *(v0 + 392);
    v90 = *(v0 + 328);
    v42 = swift_slowAlloc();
    v88 = v40;
    v43 = swift_slowAlloc();
    *v42 = 138412290;
    log = v33;
    v44 = MEMORY[0x21CE927B0]();
    v45 = *(v38 + 8);
    v45(v37, v39);
    *(v42 + 4) = v44;
    *v43 = v44;
    _os_log_impl(&dword_21607C000, log, v34, "Received deletion for unknown zone: %@", v42, 0xCu);
    outlined destroy of UTType?(v43, &_sSo8NSObjectCSgMd);
    MEMORY[0x21CE94770](v43, -1, -1);
    MEMORY[0x21CE94770](v42, -1, -1);

    (*(v41 + 8))(v88, v94);
    v45(v90, v39);
  }

  else
  {

    v46 = *(v38 + 8);
    v46(v37, v39);
    (*(v41 + 8))(v40, v94);
    v46(v36, v39);
  }

  v47 = *(v0 + 376) + 1;
  if (v47 != *(v0 + 344))
  {
    v67 = *(v0 + 368);
    v68 = *(v0 + 328);
    v69 = *(v0 + 296);
    v70 = (*(v0 + 176) + *(v0 + 352));
    v71 = *(v0 + 336) + ((*(v0 + 544) + 32) & ~*(v0 + 544)) + *(v0 + 360) * v47;
    v72 = (*(v0 + 304) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v0 + 376) = v47;
    *(v0 + 384) = v72;
    v73 = v67(v68, v71, v69);
    v59 = MEMORY[0x21CE927B0](v73);
    *(v0 + 392) = v59;
    v74 = *v70;
    *(v0 + 400) = *v70;
    v75 = v70[1];
    v62 = swift_getObjectType();
    *(v0 + 136) = v74;
    v63 = *(v75 + 8);
    v76 = *(v63 + 40);
    swift_unknownObjectRetain();
    v91 = (v76 + *v76);
    v65 = swift_task_alloc();
    *(v0 + 408) = v65;
    *v65 = v0;
    v66 = specialized CloudManager.handleFetchedDatabaseChanges(_:syncEngine:);
    goto LABEL_16;
  }

  v49 = MEMORY[0x21CE91800](v48);
  *(v0 + 440) = v49;
  v50 = *(v49 + 16);
  *(v0 + 448) = v50;
  if (v50)
  {
    v51 = *(v0 + 200);
    *(v0 + 456) = OBJC_IVAR____TtC9MomentsUI12CloudManager_cloudModel;
    *(v0 + 552) = *(v51 + 80);
    swift_beginAccess();
    *(v0 + 464) = *(v51 + 72);
    v52 = *(v51 + 16);
    *(v0 + 472) = v52;
    *(v0 + 480) = 0;
    v53 = *(v0 + 440);
    v54 = *(v0 + 216);
    v55 = *(v0 + 192);
    v56 = (*(v0 + 176) + *(v0 + 456));
    v57 = (*(v0 + 552) + 32) & ~*(v0 + 552);
    *(v0 + 488) = (*(v0 + 200) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v58 = v52(v54, v53 + v57, v55);
    v59 = MEMORY[0x21CE92760](v58);
    *(v0 + 496) = v59;
    v60 = *v56;
    *(v0 + 504) = *v56;
    v61 = v56[1];
    v62 = swift_getObjectType();
    *(v0 + 144) = v60;
    v63 = *(v61 + 8);
    v64 = *(v63 + 40);
    swift_unknownObjectRetain();
    v91 = (v64 + *v64);
    v65 = swift_task_alloc();
    *(v0 + 512) = v65;
    *v65 = v0;
    v66 = specialized CloudManager.handleFetchedDatabaseChanges(_:syncEngine:);
LABEL_16:
    v65[1] = v66;

    return v91(v59, v62, v63);
  }

  static CloudLog.LogEnd(_:)("handleFetchedDatabaseChanges(_:syncEngine:)", 43, 2, *(v0 + 184), &protocol witness table for CloudManager);

  v86 = *(v0 + 8);

  return v86();
}

{
  v1 = *v0;
  v2 = *(*v0 + 424);
  v3 = *(*v0 + 416);
  v4 = *(*v0 + 176);

  specialized CloudManager.cloudModel.setter(*(v1 + 160), v4, v2, v3);

  return MEMORY[0x2822009F8](specialized CloudManager.handleFetchedDatabaseChanges(_:syncEngine:), v4, 0);
}

{
  v1 = *(v0 + 328);
  v2 = *(v0 + 296);
  v3 = *(v0 + 304);

  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 376) + 1;
  if (v4 != *(v0 + 344))
  {
    v24 = *(v0 + 368);
    v25 = *(v0 + 328);
    v26 = *(v0 + 296);
    v27 = (*(v0 + 176) + *(v0 + 352));
    v28 = *(v0 + 336) + ((*(v0 + 544) + 32) & ~*(v0 + 544)) + *(v0 + 360) * v4;
    v29 = (*(v0 + 304) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v0 + 376) = v4;
    *(v0 + 384) = v29;
    v30 = v24(v25, v28, v26);
    v16 = MEMORY[0x21CE927B0](v30);
    *(v0 + 392) = v16;
    v31 = *v27;
    *(v0 + 400) = *v27;
    v32 = v27[1];
    ObjectType = swift_getObjectType();
    *(v0 + 136) = v31;
    v20 = *(v32 + 8);
    v33 = *(v20 + 40);
    swift_unknownObjectRetain();
    v36 = (v33 + *v33);
    v22 = swift_task_alloc();
    *(v0 + 408) = v22;
    *v22 = v0;
    v23 = specialized CloudManager.handleFetchedDatabaseChanges(_:syncEngine:);
    goto LABEL_5;
  }

  v6 = MEMORY[0x21CE91800](v5);
  *(v0 + 440) = v6;
  v7 = *(v6 + 16);
  *(v0 + 448) = v7;
  if (v7)
  {
    v8 = *(v0 + 200);
    *(v0 + 456) = OBJC_IVAR____TtC9MomentsUI12CloudManager_cloudModel;
    *(v0 + 552) = *(v8 + 80);
    swift_beginAccess();
    *(v0 + 464) = *(v8 + 72);
    v9 = *(v8 + 16);
    *(v0 + 472) = v9;
    *(v0 + 480) = 0;
    v10 = *(v0 + 440);
    v11 = *(v0 + 216);
    v12 = *(v0 + 192);
    v13 = (*(v0 + 176) + *(v0 + 456));
    v14 = (*(v0 + 552) + 32) & ~*(v0 + 552);
    *(v0 + 488) = (*(v0 + 200) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v15 = v9(v11, v10 + v14, v12);
    v16 = MEMORY[0x21CE92760](v15);
    *(v0 + 496) = v16;
    v17 = *v13;
    *(v0 + 504) = *v13;
    v18 = v13[1];
    ObjectType = swift_getObjectType();
    *(v0 + 144) = v17;
    v20 = *(v18 + 8);
    v21 = *(v20 + 40);
    swift_unknownObjectRetain();
    v36 = (v21 + *v21);
    v22 = swift_task_alloc();
    *(v0 + 512) = v22;
    *v22 = v0;
    v23 = specialized CloudManager.handleFetchedDatabaseChanges(_:syncEngine:);
LABEL_5:
    v22[1] = v23;

    return v36(v16, ObjectType, v20);
  }

  static CloudLog.LogEnd(_:)("handleFetchedDatabaseChanges(_:syncEngine:)", 43, 2, *(v0 + 184), &protocol witness table for CloudManager);

  v35 = *(v0 + 8);

  return v35();
}

{
  if (*(v0 + 557))
  {
    v1 = (*(v0 + 176) + *(v0 + 456));
    v2 = *v1;
    v3 = v1[1];
    *(v0 + 520) = v3;
    ObjectType = swift_getObjectType();
    *(v0 + 528) = ObjectType;
    *(v0 + 152) = v2;
    v5 = *(v3 + 8);
    v6 = *(v5 + 216);
    swift_unknownObjectRetain();
    v54 = (v6 + *v6);
    v7 = swift_task_alloc();
    *(v0 + 536) = v7;
    *v7 = v0;
    v7[1] = specialized CloudManager.handleFetchedDatabaseChanges(_:syncEngine:);
    v8 = *(v0 + 496);
    v9 = ObjectType;
    v10 = v5;
    v11 = v54;

    return v11(v8, v9, v10);
  }

  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v13 = *(v0 + 472);
  v15 = *(v0 + 232);
  v14 = *(v0 + 240);
  v17 = *(v0 + 216);
  v16 = *(v0 + 224);
  v18 = *(v0 + 208);
  v19 = *(v0 + 192);
  v20 = __swift_project_value_buffer(v16, static CloudManager.Log);
  swift_beginAccess();
  (*(v15 + 16))(v14, v20, v16);
  v13(v18, v17, v19);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  v23 = os_log_type_enabled(v21, v22);
  v24 = *(v0 + 232);
  v25 = *(v0 + 240);
  v26 = *(v0 + 216);
  v57 = *(v0 + 224);
  v27 = *(v0 + 200);
  v28 = *(v0 + 208);
  v29 = *(v0 + 192);
  if (v23)
  {
    v53 = *(v0 + 496);
    v55 = *(v0 + 216);
    v30 = swift_slowAlloc();
    v52 = v25;
    v31 = swift_slowAlloc();
    *v30 = 138412290;
    log = v21;
    v32 = MEMORY[0x21CE92760]();
    v33 = *(v27 + 8);
    v33(v28, v29);
    *(v30 + 4) = v32;
    *v31 = v32;
    _os_log_impl(&dword_21607C000, log, v22, "Received modification for unknown zone: %@", v30, 0xCu);
    outlined destroy of UTType?(v31, &_sSo8NSObjectCSgMd);
    MEMORY[0x21CE94770](v31, -1, -1);
    MEMORY[0x21CE94770](v30, -1, -1);

    (*(v24 + 8))(v52, v57);
    v33(v55, v29);
  }

  else
  {

    v34 = *(v27 + 8);
    v34(v28, v29);
    (*(v24 + 8))(v25, v57);
    v34(v26, v29);
  }

  v35 = *(v0 + 480) + 1;
  if (v35 != *(v0 + 448))
  {
    v37 = *(v0 + 472);
    v38 = *(v0 + 216);
    v39 = *(v0 + 192);
    v40 = (*(v0 + 176) + *(v0 + 456));
    v41 = *(v0 + 440) + ((*(v0 + 552) + 32) & ~*(v0 + 552)) + *(v0 + 464) * v35;
    v42 = (*(v0 + 200) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v0 + 480) = v35;
    *(v0 + 488) = v42;
    v43 = v37(v38, v41, v39);
    v44 = MEMORY[0x21CE92760](v43);
    *(v0 + 496) = v44;
    v45 = *v40;
    *(v0 + 504) = *v40;
    v46 = v40[1];
    v47 = swift_getObjectType();
    *(v0 + 144) = v45;
    v48 = *(v46 + 8);
    v49 = *(v48 + 40);
    swift_unknownObjectRetain();
    v56 = (v49 + *v49);
    v50 = swift_task_alloc();
    *(v0 + 512) = v50;
    *v50 = v0;
    v50[1] = specialized CloudManager.handleFetchedDatabaseChanges(_:syncEngine:);
    v8 = v44;
    v9 = v47;
    v10 = v48;
    v11 = v56;

    return v11(v8, v9, v10);
  }

  static CloudLog.LogEnd(_:)("handleFetchedDatabaseChanges(_:syncEngine:)", 43, 2, *(v0 + 184), &protocol witness table for CloudManager);

  v36 = *(v0 + 8);

  return v36();
}

{
  v1 = *v0;
  v2 = *(*v0 + 528);
  v3 = *(*v0 + 520);
  v4 = *(*v0 + 176);

  specialized CloudManager.cloudModel.setter(*(v1 + 152), v4, v2, v3);

  return MEMORY[0x2822009F8](specialized CloudManager.handleFetchedDatabaseChanges(_:syncEngine:), v4, 0);
}

{
  v1 = *(v0 + 216);
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);

  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 480) + 1;
  if (v4 == *(v0 + 448))
  {

    static CloudLog.LogEnd(_:)("handleFetchedDatabaseChanges(_:syncEngine:)", 43, 2, *(v0 + 184), &protocol witness table for CloudManager);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 472);
    v8 = *(v0 + 216);
    v9 = *(v0 + 192);
    v10 = (*(v0 + 176) + *(v0 + 456));
    v11 = *(v0 + 440) + ((*(v0 + 552) + 32) & ~*(v0 + 552)) + *(v0 + 464) * v4;
    v12 = (*(v0 + 200) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v0 + 480) = v4;
    *(v0 + 488) = v12;
    v13 = v7(v8, v11, v9);
    v14 = MEMORY[0x21CE92760](v13);
    *(v0 + 496) = v14;
    v15 = *v10;
    *(v0 + 504) = *v10;
    v16 = v10[1];
    ObjectType = swift_getObjectType();
    *(v0 + 144) = v15;
    v18 = *(v16 + 8);
    v19 = *(v18 + 40);
    swift_unknownObjectRetain();
    v21 = (v19 + *v19);
    v20 = swift_task_alloc();
    *(v0 + 512) = v20;
    *v20 = v0;
    v20[1] = specialized CloudManager.handleFetchedDatabaseChanges(_:syncEngine:);

    return v21(v14, ObjectType, v18);
  }
}

uint64_t specialized CloudManager.handleFetchedDatabaseChanges(_:syncEngine:)(char a1)
{
  v2 = *(*v1 + 176);
  *(*v1 + 556) = a1;

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](specialized CloudManager.handleFetchedDatabaseChanges(_:syncEngine:), v2, 0);
}

{
  v2 = *(*v1 + 176);
  *(*v1 + 557) = a1;

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](specialized CloudManager.handleFetchedDatabaseChanges(_:syncEngine:), v2, 0);
}

uint64_t specialized CloudManager.handleFetchedRecordZoneChanges(_:syncEngine:)(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v2[19] = *v1;
  v3 = type metadata accessor for CKDatabase.RecordZoneChange.Deletion();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[24] = v4;
  v2[25] = *(v4 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v5 = type metadata accessor for CKDatabase.RecordZoneChange.Modification();
  v2[28] = v5;
  v2[29] = *(v5 - 8);
  v2[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized CloudManager.handleFetchedRecordZoneChanges(_:syncEngine:), v1, 0);
}

uint64_t specialized CloudManager.handleFetchedRecordZoneChanges(_:syncEngine:)()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys23CustomStringConvertible_pSgGMd);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_21658CA50;
  v4 = type metadata accessor for CKSyncEngine.Event.FetchedRecordZoneChanges();
  *(v3 + 56) = v4;
  *(v3 + 64) = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type CKSyncEngine.Event.FetchedRecordZoneChanges and conformance CKSyncEngine.Event.FetchedRecordZoneChanges, MEMORY[0x277CBBD60]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v3 + 32));
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v2, v4);
  static CloudLog.LogBegin(_:_:)(v3, "handleFetchedRecordZoneChanges(_:syncEngine:)", 45, 2, v1, &protocol witness table for CloudManager);

  v7 = MEMORY[0x21CE91830](v6);
  *(v0 + 248) = v7;
  v8 = *(v7 + 16);
  *(v0 + 256) = v8;
  if (v8)
  {
    v9 = *(v0 + 232);
    *(v0 + 264) = OBJC_IVAR____TtC9MomentsUI12CloudManager_cloudModel;
    *(v0 + 456) = *(v9 + 80);
    swift_beginAccess();
    *(v0 + 272) = *(v9 + 72);
    v10 = *(v9 + 16);
    *(v0 + 280) = v10;
    *(v0 + 288) = 0;
    v11 = *(v0 + 240);
    v12 = *(v0 + 224);
    v13 = *(v0 + 232);
    v14 = (*(v0 + 144) + *(v0 + 264));
    v15 = v10(v11, *(v0 + 248) + ((*(v0 + 456) + 32) & ~*(v0 + 456)), v12);
    v16 = MEMORY[0x21CE927D0](v15);
    *(v0 + 296) = v16;
    (*(v13 + 8))(v11, v12);
    v17 = *v14;
    *(v0 + 304) = *v14;
    v18 = v14[1];
    ObjectType = swift_getObjectType();
    *(v0 + 112) = v17;
    v20 = *(v18 + 8);
    v21 = *(v20 + 224);
    swift_unknownObjectRetain();
    v59 = (v21 + *v21);
    v22 = swift_task_alloc();
    *(v0 + 312) = v22;
    *v22 = v0;
    v22[1] = specialized CloudManager.handleFetchedRecordZoneChanges(_:syncEngine:);

    return v59(v16, ObjectType, v20);
  }

  else
  {

    v25 = MEMORY[0x21CE91840](v24);
    *(v0 + 360) = v25;
    v26 = *(v25 + 16);
    *(v0 + 368) = v26;
    if (v26)
    {
      v27 = *(v0 + 168);
      *(v0 + 376) = OBJC_IVAR____TtC9MomentsUI12CloudManager_cloudModel;
      *(v0 + 460) = *(v27 + 80);
      swift_beginAccess();
      *(v0 + 384) = *(v27 + 72);
      v28 = *(v27 + 16);
      *(v0 + 392) = v28;
      *(v0 + 400) = 0;
      v28(*(v0 + 184), *(v0 + 360) + ((*(v0 + 460) + 32) & ~*(v0 + 460)), *(v0 + 160));
      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v29 = *(v0 + 392);
      v31 = *(v0 + 200);
      v30 = *(v0 + 208);
      v33 = *(v0 + 184);
      v32 = *(v0 + 192);
      v34 = *(v0 + 176);
      v35 = *(v0 + 160);
      v36 = __swift_project_value_buffer(v32, static CloudManager.Log);
      swift_beginAccess();
      (*(v31 + 16))(v30, v36, v32);
      v29(v34, v33, v35);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.debug.getter();
      v39 = os_log_type_enabled(v37, v38);
      v41 = *(v0 + 168);
      v40 = *(v0 + 176);
      v42 = *(v0 + 160);
      if (v39)
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *v43 = 138412290;
        v45 = MEMORY[0x21CE92800]();
        v46 = *(v41 + 8);
        v46(v40, v42);
        *(v43 + 4) = v45;
        *v44 = v45;
        _os_log_impl(&dword_21607C000, v37, v38, "Received record deletion: %@", v43, 0xCu);
        outlined destroy of UTType?(v44, &_sSo8NSObjectCSgMd);
        MEMORY[0x21CE94770](v44, -1, -1);
        MEMORY[0x21CE94770](v43, -1, -1);
      }

      else
      {

        v46 = *(v41 + 8);
        v46(v40, v42);
      }

      *(v0 + 408) = v46;
      v48 = (*(v0 + 144) + *(v0 + 376));
      (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
      v49 = CKDatabase.RecordZoneChange.Deletion.recordType.getter();
      v51 = v50;
      *(v0 + 416) = v50;
      v52 = MEMORY[0x21CE92800]();
      *(v0 + 424) = v52;
      v53 = *v48;
      v54 = v48[1];
      *(v0 + 432) = v54;
      v55 = swift_getObjectType();
      *(v0 + 440) = v55;
      *(v0 + 128) = v53;
      v56 = *(v54 + 8);
      v57 = *(v56 + 200);
      swift_unknownObjectRetain();
      v60 = (v57 + *v57);
      v58 = swift_task_alloc();
      *(v0 + 448) = v58;
      *v58 = v0;
      v58[1] = specialized CloudManager.handleFetchedRecordZoneChanges(_:syncEngine:);

      return v60(v49, v51, v52, v55, v56);
    }

    else
    {

      static CloudLog.LogEnd(_:)("handleFetchedRecordZoneChanges(_:syncEngine:)", 45, 2, *(v0 + 152), &protocol witness table for CloudManager);

      v47 = *(v0 + 8);

      return v47();
    }
  }
}

{
  v30 = v0;
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[25];
  v4 = __swift_project_value_buffer(v2, static CloudManager.Log);
  swift_beginAccess();
  (*(v3 + 16))(v1, v4, v2);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[41];
  if (v7)
  {
    v9 = v0[40];
    v10 = v0[27];
    v11 = v0[24];
    v12 = v0[25];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v29 = v14;
    *v13 = 136315138;
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v29);

    *(v13 + 4) = v15;
    _os_log_impl(&dword_21607C000, v5, v6, "Received record modification:\n%s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x21CE94770](v14, -1, -1);
    MEMORY[0x21CE94770](v13, -1, -1);

    (*(v12 + 8))(v10, v11);
  }

  else
  {
    v16 = v0[27];
    v17 = v0[24];
    v18 = v0[25];

    (*(v18 + 8))(v16, v17);
  }

  v19 = (v0[18] + v0[33]);
  v20 = *v19;
  v21 = v19[1];
  v0[42] = v21;
  ObjectType = swift_getObjectType();
  v0[43] = ObjectType;
  v0[15] = v20;
  v23 = *(v21 + 8);
  v24 = *(v23 + 176);
  swift_unknownObjectRetain();
  v28 = (v24 + *v24);
  v25 = swift_task_alloc();
  v0[44] = v25;
  *v25 = v0;
  v25[1] = specialized CloudManager.handleFetchedRecordZoneChanges(_:syncEngine:);
  v26 = v0[37];

  return (v28)(v26, 0, ObjectType, v23);
}

{
  v1 = *v0;
  v2 = *(*v0 + 344);
  v3 = *(*v0 + 336);
  v4 = *(*v0 + 144);

  specialized CloudManager.cloudModel.setter(*(v1 + 120), v4, v2, v3);

  return MEMORY[0x2822009F8](specialized CloudManager.handleFetchedRecordZoneChanges(_:syncEngine:), v4, 0);
}

{
  v1 = *(v0 + 288);
  v2 = *(v0 + 256);

  if (v1 + 1 == v2)
  {

    v4 = MEMORY[0x21CE91840](v3);
    *(v0 + 360) = v4;
    v5 = *(v4 + 16);
    *(v0 + 368) = v5;
    if (v5)
    {
      v6 = *(v0 + 168);
      *(v0 + 376) = OBJC_IVAR____TtC9MomentsUI12CloudManager_cloudModel;
      *(v0 + 460) = *(v6 + 80);
      swift_beginAccess();
      *(v0 + 384) = *(v6 + 72);
      v7 = *(v6 + 16);
      *(v0 + 392) = v7;
      *(v0 + 400) = 0;
      v7(*(v0 + 184), *(v0 + 360) + ((*(v0 + 460) + 32) & ~*(v0 + 460)), *(v0 + 160));
      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v8 = *(v0 + 392);
      v10 = *(v0 + 200);
      v9 = *(v0 + 208);
      v12 = *(v0 + 184);
      v11 = *(v0 + 192);
      v13 = *(v0 + 176);
      v14 = *(v0 + 160);
      v15 = __swift_project_value_buffer(v11, static CloudManager.Log);
      swift_beginAccess();
      (*(v10 + 16))(v9, v15, v11);
      v8(v13, v12, v14);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.debug.getter();
      v18 = os_log_type_enabled(v16, v17);
      v20 = *(v0 + 168);
      v19 = *(v0 + 176);
      v21 = *(v0 + 160);
      if (v18)
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *v22 = 138412290;
        v24 = MEMORY[0x21CE92800]();
        v25 = *(v20 + 8);
        v25(v19, v21);
        *(v22 + 4) = v24;
        *v23 = v24;
        _os_log_impl(&dword_21607C000, v16, v17, "Received record deletion: %@", v22, 0xCu);
        outlined destroy of UTType?(v23, &_sSo8NSObjectCSgMd);
        MEMORY[0x21CE94770](v23, -1, -1);
        MEMORY[0x21CE94770](v22, -1, -1);
      }

      else
      {

        v25 = *(v20 + 8);
        v25(v19, v21);
      }

      *(v0 + 408) = v25;
      v42 = (*(v0 + 144) + *(v0 + 376));
      (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
      v43 = CKDatabase.RecordZoneChange.Deletion.recordType.getter();
      v45 = v44;
      *(v0 + 416) = v44;
      v46 = MEMORY[0x21CE92800]();
      *(v0 + 424) = v46;
      v47 = *v42;
      v48 = v42[1];
      *(v0 + 432) = v48;
      ObjectType = swift_getObjectType();
      *(v0 + 440) = ObjectType;
      *(v0 + 128) = v47;
      v50 = *(v48 + 8);
      v51 = *(v50 + 200);
      swift_unknownObjectRetain();
      v54 = (v51 + *v51);
      v52 = swift_task_alloc();
      *(v0 + 448) = v52;
      *v52 = v0;
      v52[1] = specialized CloudManager.handleFetchedRecordZoneChanges(_:syncEngine:);

      return v54(v43, v45, v46, ObjectType, v50);
    }

    else
    {

      static CloudLog.LogEnd(_:)("handleFetchedRecordZoneChanges(_:syncEngine:)", 45, 2, *(v0 + 152), &protocol witness table for CloudManager);

      v41 = *(v0 + 8);

      return v41();
    }
  }

  else
  {
    v26 = *(v0 + 280);
    v27 = *(v0 + 288) + 1;
    *(v0 + 288) = v27;
    v28 = *(v0 + 240);
    v29 = *(v0 + 224);
    v30 = *(v0 + 232);
    v31 = (*(v0 + 144) + *(v0 + 264));
    v32 = v26(v28, *(v0 + 248) + ((*(v0 + 456) + 32) & ~*(v0 + 456)) + *(v0 + 272) * v27, v29);
    v33 = MEMORY[0x21CE927D0](v32);
    *(v0 + 296) = v33;
    (*(v30 + 8))(v28, v29);
    v34 = *v31;
    *(v0 + 304) = *v31;
    v35 = v31[1];
    v36 = swift_getObjectType();
    *(v0 + 112) = v34;
    v37 = *(v35 + 8);
    v38 = *(v37 + 224);
    swift_unknownObjectRetain();
    v53 = (v38 + *v38);
    v39 = swift_task_alloc();
    *(v0 + 312) = v39;
    *v39 = v0;
    v39[1] = specialized CloudManager.handleFetchedRecordZoneChanges(_:syncEngine:);

    return v53(v33, v36, v37);
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 440);
  v3 = *(*v0 + 432);
  v4 = *(*v0 + 424);
  v5 = *(*v0 + 144);

  specialized CloudManager.cloudModel.setter(*(v1 + 128), v5, v2, v3);

  return MEMORY[0x2822009F8](specialized CloudManager.handleFetchedRecordZoneChanges(_:syncEngine:), v5, 0);
}

{
  v1 = *(v0 + 368);
  v2 = *(v0 + 400) + 1;
  (*(v0 + 408))(*(v0 + 184), *(v0 + 160));
  if (v2 == v1)
  {

    static CloudLog.LogEnd(_:)("handleFetchedRecordZoneChanges(_:syncEngine:)", 45, 2, *(v0 + 152), &protocol witness table for CloudManager);

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 392);
    v6 = *(v0 + 400) + 1;
    *(v0 + 400) = v6;
    v5(*(v0 + 184), *(v0 + 360) + ((*(v0 + 460) + 32) & ~*(v0 + 460)) + *(v0 + 384) * v6, *(v0 + 160));
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 392);
    v9 = *(v0 + 200);
    v8 = *(v0 + 208);
    v11 = *(v0 + 184);
    v10 = *(v0 + 192);
    v12 = *(v0 + 176);
    v13 = *(v0 + 160);
    v14 = __swift_project_value_buffer(v10, static CloudManager.Log);
    swift_beginAccess();
    (*(v9 + 16))(v8, v14, v10);
    v7(v12, v11, v13);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    v17 = os_log_type_enabled(v15, v16);
    v19 = *(v0 + 168);
    v18 = *(v0 + 176);
    v20 = *(v0 + 160);
    if (v17)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      v23 = MEMORY[0x21CE92800]();
      v24 = *(v19 + 8);
      v24(v18, v20);
      *(v21 + 4) = v23;
      *v22 = v23;
      _os_log_impl(&dword_21607C000, v15, v16, "Received record deletion: %@", v21, 0xCu);
      outlined destroy of UTType?(v22, &_sSo8NSObjectCSgMd);
      MEMORY[0x21CE94770](v22, -1, -1);
      MEMORY[0x21CE94770](v21, -1, -1);
    }

    else
    {

      v24 = *(v19 + 8);
      v24(v18, v20);
    }

    *(v0 + 408) = v24;
    v25 = (*(v0 + 144) + *(v0 + 376));
    (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
    v26 = CKDatabase.RecordZoneChange.Deletion.recordType.getter();
    v28 = v27;
    *(v0 + 416) = v27;
    v29 = MEMORY[0x21CE92800]();
    *(v0 + 424) = v29;
    v30 = *v25;
    v31 = v25[1];
    *(v0 + 432) = v31;
    ObjectType = swift_getObjectType();
    *(v0 + 440) = ObjectType;
    *(v0 + 128) = v30;
    v33 = *(v31 + 8);
    v34 = *(v33 + 200);
    swift_unknownObjectRetain();
    v36 = (v34 + *v34);
    v35 = swift_task_alloc();
    *(v0 + 448) = v35;
    *v35 = v0;
    v35[1] = specialized CloudManager.handleFetchedRecordZoneChanges(_:syncEngine:);

    return v36(v26, v28, v29, ObjectType, v33);
  }
}

uint64_t specialized CloudManager.handleFetchedRecordZoneChanges(_:syncEngine:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 144);
  *(v3 + 320) = a1;
  *(v3 + 328) = a2;

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](specialized CloudManager.handleFetchedRecordZoneChanges(_:syncEngine:), v4, 0);
}

uint64_t partial apply for closure #1 in CloudManager._sendChanges(zoneSet:reason:numRecords:expectedSize:syncEngine:_:_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for CKSyncEngine.SendChangesOptions() - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = v2[2];
  v9 = v2[3];
  v10 = v2[4];
  v11 = v2[5];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in CloudManager._sendChanges(zoneSet:reason:numRecords:expectedSize:syncEngine:_:_:)(a1, a2, v8, v9, v10, v11, v2 + v7);
}

uint64_t partial apply for closure #1 in CloudManager.nextRecordZoneChangeBatch(_:syncEngine:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in CloudManager.nextRecordZoneChangeBatch(_:syncEngine:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t specialized CloudManager.relatedApplicationBundleIdentifiers(zoneIDs:recordIDs:syncEngine:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v3[3] = a2;
  v3[4] = v4;
  v3[2] = a1;
  return MEMORY[0x2822009F8](specialized CloudManager.relatedApplicationBundleIdentifiers(zoneIDs:recordIDs:syncEngine:), v2, 0);
}

uint64_t specialized CloudManager.relatedApplicationBundleIdentifiers(zoneIDs:recordIDs:syncEngine:)()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys23CustomStringConvertible_pSgGMd);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21658CA60;
  *(v4 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo14CKRecordZoneIDCGMd);
  *(v4 + 64) = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type [CKRecordZoneID] and conformance [A], &_sSaySo14CKRecordZoneIDCGMd);
  *(v4 + 32) = v3;
  *(v4 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo10CKRecordIDCGMd);
  *(v4 + 104) = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type [CKRecordID] and conformance [A], &_sSaySo10CKRecordIDCGMd);
  *(v4 + 72) = v1;

  static CloudLog.LogBeginInfo(_:_:)(v4, "relatedApplicationBundleIdentifiers(zoneIDs:recordIDs:syncEngine:)", 66, 2, v2, &protocol witness table for CloudManager);

  static CloudLog.LogEndInfo(_:)("relatedApplicationBundleIdentifiers(zoneIDs:recordIDs:syncEngine:)", 66, 2, v2, &protocol witness table for CloudManager);
  v5 = v0[1];

  return v5(0);
}

uint64_t instantiation function for generic protocol witness table for CloudManager(uint64_t a1)
{
  result = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type CloudManager and conformance CloudManager, type metadata accessor for CloudManager);
  *(a1 + 8) = result;
  return result;
}

uint64_t keypath_get_210Tm@<X0>(void *a1@<X3>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  swift_beginAccess();
  v6 = *a2;
  *a3 = *a1;
  a3[1] = v6;
}

uint64_t dispatch thunk of CloudManagerProtocol.getAccountState()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 56) + **(a3 + 56));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of CloudManagerProtocol.getCurrentUser()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 64) + **(a2 + 64));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of AssetViewModelRenderable.isReadyForDisplay();

  return v7(a1, a2);
}

uint64_t dispatch thunk of CloudManagerProtocol.getDeviceDB()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 72) + **(a2 + 72));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of AssetViewModelRenderable.isReadyForDisplay();

  return v7(a1, a2);
}

uint64_t dispatch thunk of CloudManagerProtocol.getDBManager()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 80) + **(a2 + 80));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of AssetViewModelRenderable.isReadyForDisplay();

  return v7(a1, a2);
}

uint64_t dispatch thunk of CloudManagerProtocol.retainUIActive(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 120) + **(a7 + 120));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of CloudManagerProtocol.releaseUIActive(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 128) + **(a7 + 128));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of CloudManagerProtocol.clearNewlyOnboardedDevices()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 176) + **(a2 + 176));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v7(a1, a2);
}

uint64_t dispatch thunk of CloudManagerProtocol.checkFreeSpace()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 192) + **(a3 + 192));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of CloudManagerProtocol.clearCloudQuotaExceeded()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 208) + **(a2 + 208));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v7(a1, a2);
}

uint64_t dispatch thunk of CloudManagerProtocol.checkiCloudPhotoLibraryAvailable()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 224) + **(a2 + 224));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for CloudSubDB.zoneNotFound(_:_:purged:) in conformance CloudSuggestionsDB;

  return v7(a1, a2);
}

uint64_t dispatch thunk of CloudManagerProtocol.checkHealthDataAvailable()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 240) + **(a2 + 240));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of AssetViewModelRenderable.isReadyForDisplay();

  return v7(a1, a2);
}

uint64_t dispatch thunk of CloudManagerProtocol.refresh(force:wait:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 392) + **(a7 + 392));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of CloudManagerProtocol.add(pendingRecordZoneChanges:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 400) + **(a6 + 400));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of CloudManagerProtocol.add(pendingDatabaseChanges:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 408) + **(a6 + 408));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of CloudManagerProtocol.records(ids:desiredKeys:loadAssets:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 424) + **(a5 + 424));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = dispatch thunk of static IncrementalProcessor.preferredDBManager();

  return v13(a1, a2, a3, a4, a5);
}

void type metadata completion function for CloudManager()
{
  type metadata accessor for Published<String?>(319, &lazy cache variable for type metadata for Published<String?>, &_sSSSgMd);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Published<String?>(319, &lazy cache variable for type metadata for Published<Bool?>, &_sSbSgMd);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Published<String?>(319, &lazy cache variable for type metadata for Published<(CloudManagerAccountState?, CKRecordID?)>, &_s9MomentsUI24CloudManagerAccountStateOSg_So10CKRecordIDCSgtMd);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Published<Bool>(319, &lazy cache variable for type metadata for Published<Bool>);
        if (v3 <= 0x3F)
        {
          type metadata accessor for Published<String?>(319, &lazy cache variable for type metadata for Published<CloudManager.FreeSpace?>, &_s9MomentsUI12CloudManagerC9FreeSpaceOSgMd);
          if (v4 <= 0x3F)
          {
            type metadata accessor for Published<Bool>(319, &lazy cache variable for type metadata for Published<Int>);
            if (v5 <= 0x3F)
            {
              type metadata accessor for Published<String?>(319, &lazy cache variable for type metadata for Published<DBManager?>, &_s9MomentsUI9DBManagerCSgMd);
              if (v6 <= 0x3F)
              {
                type metadata accessor for Published<String?>(319, &lazy cache variable for type metadata for Published<(sequence: UInt64, suggestions: UInt64?)?>, &_ss6UInt64V8sequence_ABSg11suggestionstSgMd);
                if (v7 <= 0x3F)
                {
                  type metadata accessor for Published<String?>(319, &lazy cache variable for type metadata for Published<[CloudDevice]>, &_sSay9MomentsUI11CloudDeviceVGMd);
                  if (v8 <= 0x3F)
                  {
                    type metadata accessor for Published<String?>(319, &lazy cache variable for type metadata for Published<CloudDB?>, &_s9MomentsUI7CloudDB_pSgMd);
                    if (v9 <= 0x3F)
                    {
                      type metadata accessor for Date();
                      if (v10 <= 0x3F)
                      {
                        swift_updateClassMetadata2();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t objectdestroy_183Tm()
{
  v1 = type metadata accessor for CKSyncEngine.SendChangesOptions();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t partial apply for closure #2 in closure #1 in CloudManager.nextRecordZoneChangeBatch(_:syncEngine:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for CloudSubDB.zoneNotFound(_:_:purged:) in conformance CloudSuggestionsDB;

  return closure #2 in closure #1 in CloudManager.nextRecordZoneChangeBatch(_:syncEngine:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in closure #1 in static CloudManager._checkTCC(retrying:)(char a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  return closure #1 in closure #1 in static CloudManager._checkTCC(retrying:)(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t partial apply for closure #1 in CloudManager.cloudModel.didset(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = static Exif.filterImage(imageSource:outputURL:);

  return closure #1 in CloudManager.cloudModel.didset(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in CloudManager.onboarded.didset(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in CloudManager.onboarded.didset(a1, a2, v2);
}

uint64_t partial apply for closure #1 in closure #3 in CloudManager.initializeSyncEngine(wait:_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in closure #3 in CloudManager.initializeSyncEngine(wait:_:)(a1, v4, v5, v6);
}

unint64_t lazy protocol witness table accessor for type [CloudDevice] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [CloudDevice] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [CloudDevice] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9MomentsUI11CloudDeviceVGMd);
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type CloudDevice and conformance CloudDevice, type metadata accessor for CloudDevice);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CloudDevice] and conformance <A> [A]);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #2 in CloudManager.initializeBasicSyncEngine()(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in closure #2 in CloudManager.initializeBasicSyncEngine()(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t partial apply for closure #1 in closure #5 in CloudManager.initializeBasicSyncEngine()(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSgMd) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in closure #5 in CloudManager.initializeBasicSyncEngine()(a1, v7, v8, v9, v1 + v6);
}

uint64_t outlined destroy of CloudDevice(uint64_t a1)
{
  v2 = type metadata accessor for CloudDevice();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of CloudDevice(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudDevice();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #6 in CloudManager.initializeBasicSyncEngine()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in closure #6 in CloudManager.initializeBasicSyncEngine()(a1, v4, v5, v6, v7);
}

uint64_t objectdestroy_164Tm(void (*a1)(void), uint64_t a2)
{
  swift_unknownObjectRelease();

  a1(*(v2 + 40));

  return MEMORY[0x2821FE8E8](v2, a2, 7);
}

uint64_t partial apply for closure #1 in closure #8 in CloudManager.initializeBasicSyncEngine()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in closure #8 in CloudManager.initializeBasicSyncEngine()(a1, v4, v5, v6, v7);
}

uint64_t objectdestroyTm_4(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  a1(*(v3 + 16));
  a2(*(v3 + 32));

  return MEMORY[0x2821FE8E8](v3, a3, 7);
}

uint64_t partial apply for closure #1 in closure #13 in CloudManager.initializeBasicSyncEngine()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in closure #13 in CloudManager.initializeBasicSyncEngine()(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in closure #3 in CloudManager.initializeBasicSyncEngine()(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in closure #3 in CloudManager.initializeBasicSyncEngine()(a1, a2, v2);
}

uint64_t partial apply for closure #1 in closure #1 in CloudManager.initializeBasicSyncEngine()(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in CloudManager.onboarded.didset(a1, a2, v2);
}

uint64_t partial apply for closure #2 in closure #1 in CloudManager.records(ids:desiredKeys:loadAssets:)(void *a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySDySo10CKRecordIDCs6ResultOySo0A0Cs5Error_pGGsAG_pGMd);
  v5 = *(v2 + 16);

  return closure #2 in closure #1 in CloudManager.records(ids:desiredKeys:loadAssets:)(a1, a2 & 1, v5);
}

uint64_t partial apply for closure #2 in closure #2 in CloudManager.releaseUIActive(_:_:_:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #2 in closure #2 in CloudManager.releaseUIActive(_:_:_:)();
}

id PrivacyViewController.init()()
{
  v1 = v0;
  swift_getObjectType();
  v2 = MEMORY[0x21CE91FC0](0xD000000000000018, 0x8000000216585820);
  v3 = [objc_opt_self() imageNamed_];

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = objc_opt_self();
  v6 = [v5 bundleForClass_];
  v30._countAndFlagsBits = 0xD000000000000019;
  v30._object = 0x8000000216585980;
  v7._countAndFlagsBits = 0xD000000000000137;
  v7._object = 0x8000000216585840;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v30);

  v9 = static String.localizedStringWithFormat(_:_:)();
  v11 = v10;

  v12 = [v5 bundleForClass_];
  v31._object = 0x80000002165859C0;
  v13._countAndFlagsBits = 0xD00000000000001CLL;
  v13._object = 0x80000002165859A0;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v31._countAndFlagsBits = 0xD00000000000001ALL;
  v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v12, v14, v31);

  v16 = MEMORY[0x21CE91FC0](v15._countAndFlagsBits, v15._object);

  v17 = MEMORY[0x21CE91FC0](v9, v11);

  v29.receiver = v1;
  v29.super_class = type metadata accessor for PrivacyViewController();
  v18 = objc_msgSendSuper2(&v29, sel_initWithTitle_detailText_icon_contentLayout_, v16, v17, v3, 2);

  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 boldButton];
  [v21 addTarget:v20 action:sel_doneTapped_ forControlEvents:64];
  v22 = [v5 bundleForClass_];
  v32._object = 0x80000002165859E0;
  v23._countAndFlagsBits = 1701736260;
  v23._object = 0xE400000000000000;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v32._countAndFlagsBits = 0xD00000000000001ALL;
  v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, v22, v24, v32);

  v26 = MEMORY[0x21CE91FC0](v25._countAndFlagsBits, v25._object);

  [v21 setTitle:v26 forState:0];

  v27 = [v20 buttonTray];
  [v27 addButton_];

  return v20;
}

id PrivacyViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v14 = MEMORY[0x21CE91FC0]();

  if (!a4)
  {
    v15 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = 0;
    goto LABEL_6;
  }

  v15 = MEMORY[0x21CE91FC0](a3, a4);

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v16 = MEMORY[0x21CE91FC0](a5, a6);

LABEL_6:
  v17 = [objc_allocWithZone(v8) initWithTitle:v14 detailText:v15 symbolName:v16 contentLayout:a7];

  return v17;
}

id PrivacyViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v12 = MEMORY[0x21CE91FC0]();

  if (a4)
  {
    v13 = MEMORY[0x21CE91FC0](a3, a4);
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_allocWithZone(v7) initWithTitle:v12 detailText:v13 icon:a5 contentLayout:a6];

  return v14;
}

id PrivacyViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PrivacyViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CloudRootDB.__allocating_init(emptyDB:config:)(int a1, uint64_t a2)
{
  v4 = swift_allocObject();
  CloudRootDB.init(emptyDB:config:)(a1, a2);
  return v4;
}

uint64_t static CloudRootDB.Class.setter(char *a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  static CloudRootDB.Class = a1;
  unk_27CA92A38 = a2;
  byte_27CA92A40 = a3;
  return result;
}

uint64_t CloudRootDB.defaultSyncStateURL.unsafeMutableAddressor(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = a2(0);
  }

  else
  {
    swift_once();
    v4 = a2(0);
  }

  return __swift_project_value_buffer(v4, a3);
}

uint64_t static CloudRootDB.Log.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static CloudRootDB.Log);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static CloudRootDB.Log.setter(uint64_t a1)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static CloudRootDB.Log);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static CloudRootDB.Log.modify())()
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static CloudRootDB.Log);
  swift_beginAccess();
  return MutableVideoViewModel.video.modify;
}

uint64_t protocol witness for static CloudLog.Log.getter in conformance CloudRootDB@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static CloudRootDB.Log);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t one-time initialization function for modelTypes()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MomentsUI10CloudSubDB_pXpGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21658E190;
  *(v0 + 32) = type metadata accessor for CloudDevicesDB();
  *(v0 + 40) = &protocol witness table for CloudDevicesDB;
  *(v0 + 48) = type metadata accessor for CloudSuggestionsDB();
  *(v0 + 56) = &protocol witness table for CloudSuggestionsDB;
  result = type metadata accessor for CloudSyncDB();
  *(v0 + 64) = result;
  *(v0 + 72) = &protocol witness table for CloudSyncDB;
  static CloudRootDB.modelTypes = v0;
  return result;
}

uint64_t *CloudRootDB.modelTypes.unsafeMutableAddressor()
{
  if (one-time initialization token for modelTypes != -1)
  {
    swift_once();
  }

  return &static CloudRootDB.modelTypes;
}

uint64_t static CloudRootDB.modelTypes.getter()
{
  if (one-time initialization token for modelTypes != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static CloudRootDB.modelTypes.setter(uint64_t a1)
{
  if (one-time initialization token for modelTypes != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static CloudRootDB.modelTypes = a1;
}

uint64_t (*static CloudRootDB.modelTypes.modify())()
{
  if (one-time initialization token for modelTypes != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return MutableVideoViewModel.videoDurationSeconds.modify;
}

uint64_t key path getter for static CloudRootDB.modelTypes : CloudRootDB.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for modelTypes != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = static CloudRootDB.modelTypes;
}

uint64_t key path setter for static CloudRootDB.modelTypes : CloudRootDB.Type(uint64_t *a1)
{
  v1 = *a1;
  v2 = one-time initialization token for modelTypes;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static CloudRootDB.modelTypes = v1;
}

uint64_t one-time initialization function for defaultSyncStateURL()
{
  v0 = type metadata accessor for URL.DirectoryHint();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v6, static CloudRootDB.defaultSyncStateURL);
  __swift_project_value_buffer(v4, static CloudRootDB.defaultSyncStateURL);
  v9 = [objc_opt_self() defaultManager];
  v10 = [v9 URLsForDirectory:13 inDomains:1];

  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v11 + 16))
  {

    if (*(v11 + 16))
    {
      (*(v5 + 16))(v8, v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4);

      v13[0] = 0xD000000000000016;
      v13[1] = 0x8000000216585B60;
      (*(v1 + 104))(v3, *MEMORY[0x277CC91D8], v0);
      lazy protocol witness table accessor for type String and conformance String();
      URL.appending<A>(component:directoryHint:)();
      (*(v1 + 8))(v3, v0);
      return (*(v5 + 8))(v8, v4);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static CloudRootDB.defaultSyncStateURL.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultSyncStateURL != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for URL();
  v3 = __swift_project_value_buffer(v2, static CloudRootDB.defaultSyncStateURL);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t CloudRootDB.stateDBURL.init@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t CloudRootDB.stateDBURL.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 656))();

  v3 = OBJC_IVAR____TtC9MomentsUI11CloudRootDB__stateDBURL;
  swift_beginAccess();
  v4 = type metadata accessor for URL();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t key path getter for CloudRootDB.stateDBURL : CloudRootDB@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 656))();

  v4 = OBJC_IVAR____TtC9MomentsUI11CloudRootDB__stateDBURL;
  swift_beginAccess();
  v5 = type metadata accessor for URL();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t key path setter for CloudRootDB.stateDBURL : CloudRootDB(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return CloudRootDB.stateDBURL.setter(v4);
}

uint64_t CloudRootDB.stateDBURL.setter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC9MomentsUI11CloudRootDB__stateDBURL;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  lazy protocol witness table accessor for type CloudRootDB and conformance CloudRootDB(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
  v15 = a1;
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v15, v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v12 = MEMORY[0x28223BE20](KeyPath);
    v13 = v15;
    *(&v15 - 2) = v2;
    *(&v15 - 1) = v13;
    (*(*v2 + 664))(v12, partial apply for closure #1 in CloudRootDB.stateDBURL.setter);
  }

  return (v10)(v15, v4);
}

uint64_t closure #1 in CloudRootDB.stateDBURL.setter(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC9MomentsUI11CloudRootDB__stateDBURL;
  swift_beginAccess();
  v5 = type metadata accessor for URL();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t CloudRootDB._cloudManager.init@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t key path getter for CloudRootDB._cloudManager : CloudRootDB@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 656))();

  *a2 = *(v3 + OBJC_IVAR____TtC9MomentsUI11CloudRootDB___cloudManager);

  return swift_unknownObjectRetain();
}

uint64_t key path setter for CloudRootDB._cloudManager : CloudRootDB(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  KeyPath = swift_getKeyPath();
  v7[2] = v4;
  v7[3] = v2;
  v7[4] = v3;
  (*(*v4 + 664))(KeyPath, closure #1 in CloudRootDB._cloudManager.setterpartial apply, v7, MEMORY[0x277D84F78] + 8);
}

uint64_t CloudRootDB._cloudManager.getter()
{
  swift_getKeyPath();
  (*(*v0 + 656))();

  return swift_unknownObjectRetain();
}

uint64_t CloudRootDB.cloudManager.setter(uint64_t a1, uint64_t a2)
{
  specialized CloudRootDB.cloudManager.setter(a1, a2);

  return swift_unknownObjectRelease();
}

uint64_t (*CloudRootDB.cloudManager.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 16) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 656))(KeyPath);

  *a1 = *(v1 + OBJC_IVAR____TtC9MomentsUI11CloudRootDB___cloudManager);
  swift_unknownObjectRetain();
  return CloudRootDB.cloudManager.modify;
}

uint64_t CloudRootDB.cloudManager.modify(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  if (a2)
  {
    v4 = swift_unknownObjectRetain();
    specialized CloudRootDB.cloudManager.setter(v4, v2);
    swift_unknownObjectRelease();
  }

  else
  {
    specialized CloudRootDB.cloudManager.setter(v3, v2);
  }

  return swift_unknownObjectRelease();
}

uint64_t CloudRootDB.accountStateSubscription.getter()
{
  swift_getKeyPath();
  (*(*v0 + 656))();
}

uint64_t key path getter for CloudRootDB.accountStateSubscription : CloudRootDB@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 656))();

  *a2 = *(v3 + OBJC_IVAR____TtC9MomentsUI11CloudRootDB__accountStateSubscription);
}

uint64_t CloudRootDB.accountStateSubscription.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI11CloudRootDB__accountStateSubscription;
  if (*(v1 + OBJC_IVAR____TtC9MomentsUI11CloudRootDB__accountStateSubscription))
  {
    if (a1)
    {
      type metadata accessor for AnyCancellable();
      lazy protocol witness table accessor for type CloudRootDB and conformance CloudRootDB(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8]);
      swift_retain_n();
      v4 = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v4)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v6 = MEMORY[0x28223BE20](KeyPath);
    (*(*v1 + 664))(v6, partial apply for closure #1 in CloudRootDB.accountStateSubscription.setter);
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;
}

void *key path getter for CloudRootDB._accountState : CloudRootDB@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 328))(&v4);
  *a2 = v4;
  return result;
}

uint64_t key path setter for CloudRootDB._accountState : CloudRootDB(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 336))(&v4);
}

uint64_t CloudRootDB._accountState.getter@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 656))();

  v3 = OBJC_IVAR____TtC9MomentsUI11CloudRootDB___accountState;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t CloudRootDB._accountState.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC9MomentsUI11CloudRootDB___accountState;
  swift_beginAccess();
  result = specialized CloudRootDB.shouldNotifyObservers<A>(_:_:)(*(v1 + v3), v2);
  if (result)
  {
    KeyPath = swift_getKeyPath();
    v6 = MEMORY[0x28223BE20](KeyPath);
    v7 = v1;
    v8 = v2;
    (*(*v1 + 664))(v6, partial apply for closure #1 in CloudRootDB._accountState.setter);
  }

  else
  {
    *(v1 + v3) = v2;
  }

  return result;
}

void (*CloudRootDB._accountState.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 656))(KeyPath);

  v4[5] = OBJC_IVAR____TtC9MomentsUI11CloudRootDB___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type CloudRootDB and conformance CloudRootDB(&lazy protocol witness table cache variable for type CloudRootDB and conformance CloudRootDB, type metadata accessor for CloudRootDB);
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = CloudRootDB.__accountState.modify();
  return CloudRootDB._accountState.modify;
}

void CloudRootDB._accountState.modify(void *a1)
{
  CloudRootDB._accountState.modify(a1);
}

{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

void *CloudRootDB.accountState.setter(unsigned __int8 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CloudKit12CKSyncEngineC5StateC13SerializationVSgMd);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = *a1;
  result = (*(*v1 + 328))(&v17, v4);
  if (v17 == 4)
  {
    if (v7 >= 2)
    {
      if (v7 - 2 >= 2)
      {
        return result;
      }

      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v7 == 4)
  {
LABEL_9:
    v16 = v7;
    return (*(*v1 + 336))(&v16);
  }

  if (v17 == 3)
  {
    if (v7 < 2)
    {
LABEL_8:
      v9 = type metadata accessor for CKSyncEngine.State.Serialization();
      (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
      (*(*v1 + 432))(v6);
      goto LABEL_9;
    }

    if (v7 == 2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (v7 == 3)
    {
      goto LABEL_9;
    }

    v10 = 0xE900000000000064;
    v11 = 0x754F64656E676973;
    if (v17)
    {
      if (v17 == 1)
      {
        v12 = 0x65696E6544636374;
        v13 = 0xE900000000000064;
      }

      else
      {
        v13 = 0xE800000000000000;
        v12 = 0x6E4964656E676973;
      }
    }

    else
    {
      v13 = 0xE900000000000074;
      v12 = 0x754F64656E676973;
    }

    if (v7)
    {
      if (v7 == 1)
      {
        v11 = 0x65696E6544636374;
      }

      else
      {
        v10 = 0xE800000000000000;
        v11 = 0x6E4964656E676973;
      }
    }

    else
    {
      v10 = 0xE900000000000074;
    }

    if (v12 == v11 && v13 == v10)
    {
    }

    else
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v14 & 1) == 0)
      {
        if (v7 - 2 < 3)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }
    }
  }

  return result;
}

void *(*CloudRootDB.accountState.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  (*(*v1 + 328))();
  return CloudRootDB.accountState.modify;
}

void *CloudRootDB.accountState.modify(uint64_t a1, char a2)
{
  if (a2)
  {
    v4 = *(a1 + 8);
    v2 = &v4;
  }

  else
  {
    v5 = *(a1 + 8);
    v2 = &v5;
  }

  return CloudRootDB.accountState.setter(v2);
}

uint64_t key path getter for CloudRootDB._stateSerialization : CloudRootDB@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 656))();

  v4 = OBJC_IVAR____TtC9MomentsUI11CloudRootDB___stateSerialization;
  swift_beginAccess();
  return outlined init with copy of CKSyncEngine.State.Serialization?(v3 + v4, a2);
}

uint64_t key path setter for CloudRootDB._stateSerialization : CloudRootDB(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CloudKit12CKSyncEngineC5StateC13SerializationVSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  outlined init with copy of CKSyncEngine.State.Serialization?(a1, &v10[-v5]);
  v7 = *a2;
  KeyPath = swift_getKeyPath();
  v11 = v7;
  v12 = v6;
  (*(*v7 + 664))(KeyPath, closure #1 in CloudRootDB._stateSerialization.setterpartial apply, v10, MEMORY[0x277D84F78] + 8);

  return outlined destroy of UTType?(v6, &_s8CloudKit12CKSyncEngineC5StateC13SerializationVSgMd);
}

uint64_t closure #1 in CloudRootDB._stateSerialization.setter(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC9MomentsUI11CloudRootDB___stateSerialization;
  swift_beginAccess();
  outlined assign with copy of CKSyncEngine.State.Serialization?(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t key path setter for CloudRootDB.stateSerialization : CloudRootDB(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CloudKit12CKSyncEngineC5StateC13SerializationVSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of CKSyncEngine.State.Serialization?(a1, &v8 - v5);
  return (*(**a2 + 432))(v6);
}

uint64_t CloudRootDB._stateSerialization.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 656))();

  v3 = OBJC_IVAR____TtC9MomentsUI11CloudRootDB___stateSerialization;
  swift_beginAccess();
  return outlined init with copy of CKSyncEngine.State.Serialization?(v1 + v3, a1);
}

uint64_t CloudRootDB.stateSerialization.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CloudKit12CKSyncEngineC5StateC13SerializationVSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9[-v4];
  outlined init with copy of CKSyncEngine.State.Serialization?(a1, &v9[-v4]);
  KeyPath = swift_getKeyPath();
  v10 = v1;
  v11 = v5;
  (*(*v1 + 664))(KeyPath, partial apply for closure #1 in CloudRootDB._stateSerialization.setter, v9, MEMORY[0x277D84F78] + 8);

  v7 = outlined destroy of UTType?(v5, &_s8CloudKit12CKSyncEngineC5StateC13SerializationVSgMd);
  (*(*v1 + 544))(v7);
  return outlined destroy of UTType?(a1, &_s8CloudKit12CKSyncEngineC5StateC13SerializationVSgMd);
}

void (*CloudRootDB.stateSerialization.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CloudKit12CKSyncEngineC5StateC13SerializationVSgMd) - 8) + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v5[5] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(v6);
    v5[5] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[6] = v7;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 656))(KeyPath);

  v10 = OBJC_IVAR____TtC9MomentsUI11CloudRootDB___stateSerialization;
  swift_beginAccess();
  outlined init with copy of CKSyncEngine.State.Serialization?(v1 + v10, v8);
  return CloudRootDB.stateSerialization.modify;
}

void CloudRootDB.stateSerialization.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  outlined init with copy of CKSyncEngine.State.Serialization?(*(*a1 + 48), *(*a1 + 40));
  v4 = v3[5];
  v5 = v3[6];
  v6 = v3[3];
  v7 = v3[4];
  if (a2)
  {
    outlined init with copy of CKSyncEngine.State.Serialization?(v3[5], v3[4]);
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x28223BE20](KeyPath);
    (*(*v6 + 664))(v9, closure #1 in CloudRootDB._stateSerialization.setterpartial apply);

    v10 = outlined destroy of UTType?(v7, &_s8CloudKit12CKSyncEngineC5StateC13SerializationVSgMd);
    (*(*v6 + 544))(v10);
    outlined destroy of UTType?(v4, &_s8CloudKit12CKSyncEngineC5StateC13SerializationVSgMd);
  }

  else
  {
    v11 = swift_getKeyPath();
    v12 = MEMORY[0x28223BE20](v11);
    (*(*v6 + 664))(v12, closure #1 in CloudRootDB._stateSerialization.setterpartial apply);

    v13 = outlined destroy of UTType?(v4, &_s8CloudKit12CKSyncEngineC5StateC13SerializationVSgMd);
    (*(*v6 + 544))(v13);
  }

  outlined destroy of UTType?(v5, &_s8CloudKit12CKSyncEngineC5StateC13SerializationVSgMd);
  free(v5);
  free(v4);
  free(v7);
  free(v3);
}

uint64_t key path getter for CloudRootDB.subDBs : CloudRootDB@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 472))();
  *a2 = result;
  return result;
}

uint64_t key path setter for CloudRootDB.subDBs : CloudRootDB(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 480);

  return v2(v3);
}

uint64_t CloudRootDB.subDBs.getter()
{
  swift_getKeyPath();
  (*(*v0 + 656))();

  swift_beginAccess();
}

uint64_t CloudRootDB.subDBs.setter(uint64_t a1)
{
  swift_getKeyPath();
  v4 = v1;
  v5 = a1;
  (*(*v1 + 664))();
}

uint64_t closure #1 in CloudRootDB.subDBs.setter(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC9MomentsUI11CloudRootDB__subDBs;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

void (*CloudRootDB.subDBs.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 656))(KeyPath);

  v4[5] = OBJC_IVAR____TtC9MomentsUI11CloudRootDB___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type CloudRootDB and conformance CloudRootDB(&lazy protocol witness table cache variable for type CloudRootDB and conformance CloudRootDB, type metadata accessor for CloudRootDB);
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = CloudRootDB._subDBs.modify();
  return CloudRootDB.subDBs.modify;
}

uint64_t *CloudRootDB.init(emptyDB:config:)(int a1, uint64_t a2)
{
  v97 = a2;
  LODWORD(v98) = a1;
  v3 = *v2;
  v95 = type metadata accessor for Logger();
  v94 = *(v95 - 8);
  v4 = MEMORY[0x28223BE20](v95);
  v90 = v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v85 = v83 - v7;
  MEMORY[0x28223BE20](v6);
  v87 = v83 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CloudKit12CKSyncEngineC5StateC13SerializationVSgMd);
  MEMORY[0x28223BE20](v9 - 8);
  v89 = v83 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v83 - v12;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v91 = v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v83 - v19;
  MEMORY[0x28223BE20](v18);
  v86 = v83 - v21;
  if (one-time initialization token for defaultSyncStateURL != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v14, static CloudRootDB.defaultSyncStateURL);
  v23 = OBJC_IVAR____TtC9MomentsUI11CloudRootDB__stateDBURL;
  v24 = *(v15 + 16);
  v92 = v22;
  v24(v2 + OBJC_IVAR____TtC9MomentsUI11CloudRootDB__stateDBURL);
  v25 = (v2 + OBJC_IVAR____TtC9MomentsUI11CloudRootDB___cloudManager);
  *v25 = 0;
  v25[1] = 0;
  *(v2 + OBJC_IVAR____TtC9MomentsUI11CloudRootDB__accountStateSubscription) = 0;
  *(v2 + OBJC_IVAR____TtC9MomentsUI11CloudRootDB___accountState) = 4;
  v26 = OBJC_IVAR____TtC9MomentsUI11CloudRootDB___stateSerialization;
  v27 = type metadata accessor for CKSyncEngine.State.Serialization();
  v28 = *(v27 - 8);
  v29 = *(v28 + 56);
  v88 = v27;
  v84 = v29;
  v83[1] = v28 + 56;
  v29(v2 + v26, 1, 1);
  *(v2 + OBJC_IVAR____TtC9MomentsUI11CloudRootDB__subDBs) = MEMORY[0x277D84F90];
  v96 = v2;
  ObservationRegistrar.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys23CustomStringConvertible_pSgGMd);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_21658CA50;
  v31 = MEMORY[0x277D839D8];
  *(v30 + 56) = MEMORY[0x277D839B0];
  *(v30 + 64) = v31;
  *(v30 + 32) = v98 & 1;
  v93 = v3;
  static CloudLog.LogBegin(_:_:)(v30, "init(emptyDB:config:)", 21, 2, v3, &protocol witness table for CloudRootDB);

  v32 = v97;
  if (*(v97 + 16) && (v33 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000011, 0x8000000216584BC0), (v34 & 1) != 0))
  {
    outlined init with copy of Any(*(v32 + 56) + 32 * v33, v100);
    v35 = swift_dynamicCast();
    (*(v15 + 56))(v13, v35 ^ 1u, 1, v14);
    if ((*(v15 + 48))(v13, 1, v14) != 1)
    {
      v36 = v86;
      (*(v15 + 32))(v86, v13, v14);
      (v24)(v20, v36, v14);
      v37 = v96;
      CloudRootDB.stateDBURL.setter(v20);
      (*(v15 + 8))(v36, v14);
      goto LABEL_9;
    }
  }

  else
  {
    (*(v15 + 56))(v13, 1, 1, v14);
  }

  outlined destroy of UTType?(v13, &_s10Foundation3URLVSgMd);
  (v24)(v20, v92, v14);
  v37 = v96;
  CloudRootDB.stateDBURL.setter(v20);
LABEL_9:
  swift_getKeyPath();
  (*(*v37 + 656))();

  swift_beginAccess();
  v38 = v91;
  (v24)(v91, v37 + v23, v14);
  v39 = Data.init(contentsOf:options:)();
  v41 = v40;
  (*(v15 + 8))(v38, v14);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  lazy protocol witness table accessor for type CloudRootDB and conformance CloudRootDB(&lazy protocol witness table cache variable for type CKSyncEngine.State.Serialization and conformance CKSyncEngine.State.Serialization, MEMORY[0x277CBBD98]);
  v42 = v89;
  v43 = v88;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v44 = v95;
  v92 = 0;

  v84(v42, 0, 1, v43);
  (*(*v37 + 432))(v42);
  v45 = v94;
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v46 = __swift_project_value_buffer(v44, static CloudRootDB.Log);
  swift_beginAccess();
  v47 = *(v45 + 16);
  v48 = v87;
  v91 = v46;
  v90 = (v45 + 16);
  v89 = v47;
  (v47)(v87, v46, v44);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v100[0] = v52;
    *v51 = 136446466;
    swift_beginAccess();
    v53 = StaticString.description.getter();
    v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, v100);

    *(v51 + 4) = v55;
    *(v51 + 12) = 2082;
    *(v51 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216578FE0, v100);
    _os_log_impl(&dword_21607C000, v49, v50, "%{public}s.%{public}s Loaded sync engine state", v51, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v52, -1, -1);
    MEMORY[0x21CE94770](v51, -1, -1);
    outlined consume of Data._Representation(v39, v41);

    v56 = *(v94 + 8);
    v56(v87, v44);
  }

  else
  {
    outlined consume of Data._Representation(v39, v41);

    v56 = *(v45 + 8);
    v56(v48, v44);
  }

  if (one-time initialization token for modelTypes != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v57 = static CloudRootDB.modelTypes;
  v58 = *(static CloudRootDB.modelTypes + 16);
  if (v58)
  {
    v88 = v56;
    v99 = MEMORY[0x277D84F90];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v58, 0);
    v59 = 32;
    v60 = v99;
    do
    {
      v98 = *(v57 + v59);
      v61 = *(&v98 + 1);
      v62 = *(*(&v98 + 1) + 80);
      v101 = v98;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v100);
      v64 = v97;

      v65 = v98;
      v66 = v62(0, v64, v98, v61);
      v99 = v60;
      v68 = *(v60 + 16);
      v67 = *(v60 + 24);
      if (v68 >= v67 >> 1)
      {
        v66 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), v68 + 1, 1);
      }

      MEMORY[0x28223BE20](v66);
      v70 = v83 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v71 + 16))(v70, boxed_opaque_existential_1, v65);
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v68, v70, &v99, v65, v61);
      __swift_destroy_boxed_opaque_existential_1(v100);
      v60 = v99;
      v59 += 16;
      --v58;
    }

    while (v58);

    v37 = v96;
    v44 = v95;
    v56 = v88;
  }

  else
  {

    v60 = MEMORY[0x277D84F90];
  }

  KeyPath = swift_getKeyPath();
  v73 = MEMORY[0x28223BE20](KeyPath);
  v83[-2] = v37;
  v83[-1] = v60;
  (*(*v37 + 664))(v73, closure #1 in CloudRootDB.subDBs.setterpartial apply);

  v74 = v85;
  (v89)(v85, v91, v44);
  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v99 = v78;
    *v77 = 136446466;
    swift_beginAccess();
    v79 = StaticString.description.getter();
    v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v80, &v99);

    *(v77 + 4) = v81;
    *(v77 + 12) = 2082;
    *(v77 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000216578FE0, &v99);
    _os_log_impl(&dword_21607C000, v75, v76, "%{public}s.%{public}s Loaded sub-DBs", v77, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v78, -1, -1);
    MEMORY[0x21CE94770](v77, -1, -1);
  }

  v56(v74, v44);
  static CloudLog.LogEnd(_:)("init(emptyDB:config:)", 21, 2, v93, &protocol witness table for CloudRootDB);
  return v37;
}