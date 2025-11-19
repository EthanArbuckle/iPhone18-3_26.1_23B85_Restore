uint64_t CloudRootDB.initialized()()
{
  v1[10] = v0;
  v1[11] = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy9MomentsUI24CloudManagerAccountStateOSg_So10CKRecordIDCSgt_GMd);
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](CloudRootDB.initialized(), 0, 0);
}

{
  v1 = v0[10];
  v2 = static CloudLog.LogBegin(_:_:)(0, "initialized()", 13, 2, v0[11], &protocol witness table for CloudRootDB);
  v3 = (*(*v1 + 232))(v2);
  v0[15] = v3;
  if (v3)
  {
    type metadata accessor for CloudManager();
    v4 = swift_dynamicCastClass();
    v0[16] = v4;
    if (v4)
    {

      return MEMORY[0x2822009F8](CloudRootDB.initialized(), v4, 0);
    }

    v3 = swift_unknownObjectRelease();
  }

  v5 = (*(*v0[10] + 472))(v3);
  v0[17] = v5;
  v6 = *(v5 + 16);
  v0[18] = v6;
  if (v6)
  {
    v0[19] = 0;
    outlined init with copy of DBObject(v5 + 32, (v0 + 2));
    v7 = v0[5];
    v8 = v0[6];
    __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v7);
    v12 = (*(v8 + 88) + **(v8 + 88));
    v9 = swift_task_alloc();
    v0[20] = v9;
    *v9 = v0;
    v9[1] = CloudRootDB.initialized();

    return v12(v7, v8);
  }

  else
  {

    static CloudLog.LogEnd(_:)("initialized()", 13, 2, v0[11], &protocol witness table for CloudRootDB);

    v10 = v0[1];

    return v10();
  }
}

{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9MomentsUI24CloudManagerAccountStateOSg_So10CKRecordIDCSgtGMd);
  Published.projectedValue.getter();
  swift_endAccess();

  return MEMORY[0x2822009F8](CloudRootDB.initialized(), 0, 0);
}

{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  lazy protocol witness table accessor for type Published<(CloudManagerAccountState?, CKRecordID?)>.Publisher and conformance Published<A>.Publisher();

  v4 = Publisher<>.sink(receiveValue:)();

  (*(v3 + 8))(v1, v2);
  CloudRootDB.accountStateSubscription.setter(v4);
  v5 = swift_unknownObjectRelease();
  v6 = (*(**(v0 + 80) + 472))(v5);
  *(v0 + 136) = v6;
  v7 = *(v6 + 16);
  *(v0 + 144) = v7;
  if (v7)
  {
    *(v0 + 152) = 0;
    outlined init with copy of DBObject(v6 + 32, v0 + 16);
    v8 = *(v0 + 40);
    v9 = *(v0 + 48);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v8);
    v13 = (*(v9 + 88) + **(v9 + 88));
    v10 = swift_task_alloc();
    *(v0 + 160) = v10;
    *v10 = v0;
    v10[1] = CloudRootDB.initialized();

    return v13(v8, v9);
  }

  else
  {

    static CloudLog.LogEnd(_:)("initialized()", 13, 2, *(v0 + 88), &protocol witness table for CloudRootDB);

    v12 = *(v0 + 8);

    return v12();
  }
}

{

  return MEMORY[0x2822009F8](CloudRootDB.initialized(), 0, 0);
}

{
  v1 = v0[18];
  v2 = v0[19] + 1;
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  if (v2 == v1)
  {

    static CloudLog.LogEnd(_:)("initialized()", 13, 2, v0[11], &protocol witness table for CloudRootDB);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[19];
    v0[19] = v5 + 1;
    outlined init with copy of DBObject(v0[17] + 40 * v5 + 72, (v0 + 2));
    v6 = v0[5];
    v7 = v0[6];
    __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v6);
    v9 = (*(v7 + 88) + **(v7 + 88));
    v8 = swift_task_alloc();
    v0[20] = v8;
    *v8 = v0;
    v8[1] = CloudRootDB.initialized();

    return v9(v6, v7);
  }
}

uint64_t CloudRootDB.cancelSync()()
{
  *(v1 + 56) = v0;
  return MEMORY[0x2822009F8](CloudRootDB.cancelSync(), 0, 0);
}

{
  v1 = (*(**(v0 + 56) + 472))();
  *(v0 + 64) = v1;
  v2 = *(v1 + 16);
  *(v0 + 72) = v2;
  if (v2)
  {
    *(v0 + 80) = 0;
    outlined init with copy of DBObject(v1 + 32, v0 + 16);
    v3 = *(v0 + 40);
    v4 = *(v0 + 48);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v3);
    v8 = (*(v4 + 96) + **(v4 + 96));
    v5 = swift_task_alloc();
    *(v0 + 88) = v5;
    *v5 = v0;
    v5[1] = CloudRootDB.cancelSync();

    return v8(v3, v4);
  }

  else
  {

    v7 = *(v0 + 8);

    return v7();
  }
}

{

  return MEMORY[0x2822009F8](CloudRootDB.cancelSync(), 0, 0);
}

{
  v1 = v0[9];
  v2 = v0[10] + 1;
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  if (v2 == v1)
  {

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[10];
    v0[10] = v5 + 1;
    outlined init with copy of DBObject(v0[8] + 40 * v5 + 72, (v0 + 2));
    v6 = v0[5];
    v7 = v0[6];
    __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v6);
    v9 = (*(v7 + 96) + **(v7 + 96));
    v8 = swift_task_alloc();
    v0[11] = v8;
    *v8 = v0;
    v8[1] = CloudRootDB.cancelSync();

    return v9(v6, v7);
  }
}

uint64_t CloudRootDB.refresh(force:)(char a1)
{
  *(v2 + 56) = v1;
  *(v2 + 96) = a1;
  return MEMORY[0x2822009F8](CloudRootDB.refresh(force:), 0, 0);
}

uint64_t CloudRootDB.refresh(force:)()
{
  v1 = (*(**(v0 + 56) + 472))();
  *(v0 + 64) = v1;
  v2 = *(v1 + 16);
  *(v0 + 72) = v2;
  if (v2)
  {
    *(v0 + 80) = 0;
    outlined init with copy of DBObject(v1 + 32, v0 + 16);
    v3 = *(v0 + 40);
    v4 = *(v0 + 48);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v3);
    v9 = (*(v4 + 104) + **(v4 + 104));
    v5 = swift_task_alloc();
    *(v0 + 88) = v5;
    *v5 = v0;
    v5[1] = CloudRootDB.refresh(force:);
    v6 = *(v0 + 96);

    return v9(v6, v3, v4);
  }

  else
  {

    v8 = *(v0 + 8);

    return v8();
  }
}

{

  return MEMORY[0x2822009F8](CloudRootDB.refresh(force:), 0, 0);
}

{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80) + 1;
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  if (v2 == v1)
  {

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 80);
    *(v0 + 80) = v5 + 1;
    outlined init with copy of DBObject(*(v0 + 64) + 40 * v5 + 72, v0 + 16);
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v6);
    v10 = (*(v7 + 104) + **(v7 + 104));
    v8 = swift_task_alloc();
    *(v0 + 88) = v8;
    *v8 = v0;
    v8[1] = CloudRootDB.refresh(force:);
    v9 = *(v0 + 96);

    return v10(v9, v6, v7);
  }
}

uint64_t CloudRootDB.persistLocalData()()
{
  v1[18] = v0;
  v2 = type metadata accessor for Logger();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](CloudRootDB.persistLocalData(), 0, 0);
}

{
  v33 = v0;
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 184);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  v4 = __swift_project_value_buffer(v2, static CloudRootDB.Log);
  *(v0 + 192) = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  *(v0 + 200) = v5;
  *(v0 + 208) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 184);
  v11 = *(v0 + 152);
  v10 = *(v0 + 160);
  if (v8)
  {
    v30 = *(v0 + 184);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v32 = v13;
    *v12 = 136446210;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x8000000216579010, &v32);
    _os_log_impl(&dword_21607C000, v6, v7, "CloudRootDB.%{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x21CE94770](v13, -1, -1);
    MEMORY[0x21CE94770](v12, -1, -1);

    v14 = *(v10 + 8);
    v14(v30, v11);
  }

  else
  {

    v14 = *(v10 + 8);
    v14(v9, v11);
  }

  *(v0 + 216) = v14;
  if (one-time initialization token for DEBUG_NO_NETWORK != -1)
  {
    swift_once();
  }

  if (static CloudManager.DEBUG_NO_NETWORK)
  {
    v5(*(v0 + 176), v4, *(v0 + 152));
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 176);
    v19 = *(v0 + 152);
    if (v17)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v32 = v21;
      *v20 = 136446210;
      *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x8000000216579010, &v32);
      _os_log_impl(&dword_21607C000, v15, v16, "CloudDevicesDB.%{public}s DEBUG_NO_NETWORK: Skipping DB write", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x21CE94770](v21, -1, -1);
      MEMORY[0x21CE94770](v20, -1, -1);
    }

    v14(v18, v19);
    goto LABEL_17;
  }

  v22 = (*(**(v0 + 144) + 472))();
  *(v0 + 224) = v22;
  v23 = *(v22 + 16);
  *(v0 + 232) = v23;
  if (!v23)
  {

    (*(**(v0 + 144) + 544))(v28);
LABEL_17:

    v29 = *(v0 + 8);

    return v29();
  }

  *(v0 + 240) = 0;
  outlined init with copy of DBObject(v22 + 32, v0 + 16);
  swift_beginAccess();
  v24 = *(v0 + 40);
  v25 = *(v0 + 48);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v24);
  v31 = (*(v25 + 112) + **(v25 + 112));
  v26 = swift_task_alloc();
  *(v0 + 248) = v26;
  *v26 = v0;
  v26[1] = CloudRootDB.persistLocalData();

  return v31(v24, v25);
}

{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = CloudRootDB.persistLocalData();
  }

  else
  {
    swift_endAccess();
    v2 = CloudRootDB.persistLocalData();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 240) + 1;
  if (v1 == *(v0 + 232))
  {

    (*(**(v0 + 144) + 544))(v2);

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    *(v0 + 240) = v1;
    outlined init with copy of DBObject(*(v0 + 224) + 40 * v1 + 32, v0 + 16);
    swift_beginAccess();
    v5 = *(v0 + 40);
    v6 = *(v0 + 48);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v5);
    v8 = (*(v6 + 112) + **(v6 + 112));
    v7 = swift_task_alloc();
    *(v0 + 248) = v7;
    *v7 = v0;
    v7[1] = CloudRootDB.persistLocalData();

    return v8(v5, v6);
  }
}

{
  v33 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 200);
  v3 = *(v0 + 192);
  v4 = *(v0 + 168);
  v5 = *(v0 + 152);
  swift_endAccess();
  v2(v4, v3, v5);
  v6 = v1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 256);
    v29 = *(v0 + 168);
    v30 = *(v0 + 216);
    v28 = *(v0 + 152);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v32 = v12;
    *v10 = 136446722;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x8000000216579010, &v32);
    *(v10 + 12) = 2082;
    outlined init with copy of DBObject(v0 + 16, v0 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI10CloudSubDB_pMd);
    v13 = String.init<A>(describing:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v32);

    *(v10 + 14) = v15;
    *(v10 + 22) = 2112;
    v16 = v9;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v17;
    *v11 = v17;
    _os_log_impl(&dword_21607C000, v7, v8, "CloudRootDB.%{public}s Error persisting sub-DB %{public}s, %@", v10, 0x20u);
    outlined destroy of UTType?(v11, &_sSo8NSObjectCSgMd);
    MEMORY[0x21CE94770](v11, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v12, -1, -1);
    MEMORY[0x21CE94770](v10, -1, -1);

    v30(v29, v28);
  }

  else
  {
    v18 = *(v0 + 216);
    v19 = *(v0 + 168);
    v20 = *(v0 + 152);

    v18(v19, v20);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v21 = *(v0 + 240) + 1;
  if (v21 == *(v0 + 232))
  {

    (*(**(v0 + 144) + 544))(v22);

    v23 = *(v0 + 8);

    return v23();
  }

  else
  {
    *(v0 + 240) = v21;
    outlined init with copy of DBObject(*(v0 + 224) + 40 * v21 + 32, v0 + 16);
    swift_beginAccess();
    v25 = *(v0 + 40);
    v26 = *(v0 + 48);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v25);
    v31 = (*(v26 + 112) + **(v26 + 112));
    v27 = swift_task_alloc();
    *(v0 + 248) = v27;
    *v27 = v0;
    v27[1] = CloudRootDB.persistLocalData();

    return v31(v25, v26);
  }
}

uint64_t CloudRootDB.deleteLocalData()()
{
  v1[10] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CloudKit12CKSyncEngineC5StateC13SerializationVSgMd);
  v1[11] = swift_task_alloc();
  v2 = type metadata accessor for Logger();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](CloudRootDB.deleteLocalData(), 0, 0);
}

{
  v26 = v0;
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = __swift_project_value_buffer(v3, static CloudRootDB.Log);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  v7 = os_log_type_enabled(v5, v6);
  v9 = *(v0 + 104);
  v8 = *(v0 + 112);
  v10 = *(v0 + 96);
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v11 = 136446210;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x8000000216579030, &v25);
    _os_log_impl(&dword_21607C000, v5, v6, "CloudRootDB.%{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x21CE94770](v12, -1, -1);
    MEMORY[0x21CE94770](v11, -1, -1);
  }

  v13 = (*(v9 + 8))(v8, v10);
  v14 = (*(**(v0 + 80) + 472))(v13);
  *(v0 + 120) = v14;
  v15 = *(v14 + 16);
  *(v0 + 128) = v15;
  if (v15)
  {
    *(v0 + 136) = 0;
    outlined init with copy of DBObject(v14 + 32, v0 + 16);
    v16 = *(v0 + 40);
    v17 = *(v0 + 48);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v16);
    v24 = (*(v17 + 120) + **(v17 + 120));
    v18 = swift_task_alloc();
    *(v0 + 144) = v18;
    *v18 = v0;
    v18[1] = CloudRootDB.deleteLocalData();

    return v24(v16, v17);
  }

  else
  {

    v20 = *(v0 + 80);
    v21 = *(v0 + 88);
    v22 = type metadata accessor for CKSyncEngine.State.Serialization();
    (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
    (*(*v20 + 432))(v21);

    v23 = *(v0 + 8);

    return v23();
  }
}

{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = CloudRootDB.deleteLocalData();
  }

  else
  {
    v2 = CloudRootDB.deleteLocalData();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[16];
  v2 = v0[17] + 1;
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  if (v2 == v1)
  {

    v3 = v0[10];
    v4 = v0[11];
    v5 = type metadata accessor for CKSyncEngine.State.Serialization();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    (*(*v3 + 432))(v4);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[17];
    v0[17] = v8 + 1;
    outlined init with copy of DBObject(v0[15] + 40 * v8 + 72, (v0 + 2));
    v9 = v0[5];
    v10 = v0[6];
    __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v9);
    v12 = (*(v10 + 120) + **(v10 + 120));
    v11 = swift_task_alloc();
    v0[18] = v11;
    *v11 = v0;
    v11[1] = CloudRootDB.deleteLocalData();

    return v12(v9, v10);
  }
}

{

  v1 = *(v0 + 128);
  v2 = *(v0 + 136) + 1;
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  if (v2 == v1)
  {

    v3 = *(v0 + 80);
    v4 = *(v0 + 88);
    v5 = type metadata accessor for CKSyncEngine.State.Serialization();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    (*(*v3 + 432))(v4);

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v8 = *(v0 + 136);
    *(v0 + 136) = v8 + 1;
    outlined init with copy of DBObject(*(v0 + 120) + 40 * v8 + 72, v0 + 16);
    v9 = *(v0 + 40);
    v10 = *(v0 + 48);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v9);
    v12 = (*(v10 + 120) + **(v10 + 120));
    v11 = swift_task_alloc();
    *(v0 + 144) = v11;
    *v11 = v0;
    v11[1] = CloudRootDB.deleteLocalData();

    return v12(v9, v10);
  }
}

Swift::Void __swiftcall CloudRootDB.flushLocalData()()
{
  v161[6] = *MEMORY[0x277D85DE8];
  v147 = type metadata accessor for CocoaError.Code();
  v0 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v146 = &v130 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = type metadata accessor for Logger();
  v2 = *(v159 - 8);
  v3 = MEMORY[0x28223BE20](v159);
  v5 = &v130 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v130 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v150 = &v130 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v130 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v130 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v130 - v17;
  v155 = type metadata accessor for URL();
  v19 = *(v155 - 8);
  v20 = MEMORY[0x28223BE20](v155);
  v144 = &v130 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v151 = &v130 - v23;
  MEMORY[0x28223BE20](v22);
  v135 = &v130 - v24;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CloudKit12CKSyncEngineC5StateC13SerializationVSgMd);
  v25 = MEMORY[0x28223BE20](v139);
  v145 = &v130 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v138 = &v130 - v28;
  MEMORY[0x28223BE20](v27);
  v148 = &v130 - v29;
  if (one-time initialization token for DEBUG_NO_NETWORK != -1)
  {
    swift_once();
  }

  if (static CloudManager.DEBUG_NO_NETWORK)
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v30 = v159;
    v31 = __swift_project_value_buffer(v159, static CloudRootDB.Log);
    swift_beginAccess();
    (*(v2 + 16))(v13, v31, v30);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v161[0] = v35;
      *v34 = 136446210;
      *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x8000000216585AE0, v161);
      _os_log_impl(&dword_21607C000, v32, v33, "CloudDevicesDB.%{public}s DEBUG_NO_NETWORK: Skipping DB write", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x21CE94770](v35, -1, -1);
      MEMORY[0x21CE94770](v34, -1, -1);
    }

    (*(v2 + 8))(v13, v159);
    return;
  }

  v132 = v16;
  v131 = v18;
  v133 = v8;
  v134 = v5;
  v36 = v140;
  v37 = *(*v140 + 424);
  v158 = *v140 + 424;
  v154 = OBJC_IVAR____TtC9MomentsUI11CloudRootDB__stateDBURL;
  v38 = swift_beginAccess();
  v39 = 0;
  v152 = (v19 + 16);
  v153 = (v19 + 8);
  v141 = (v0 + 8);
  v142 = (v2 + 16);
  v143 = (v2 + 8);
  v137 = "@48@0:8@16@24@32q40";
  *&v40 = 136446466;
  v136 = v40;
  v157 = v37;
  while (1)
  {
    v156 = v39;
    v41 = v148;
    (v37)(v38);
    v42 = type metadata accessor for CKSyncEngine.State.Serialization();
    v43 = *(*(v42 - 8) + 48);
    v44 = v43(v41, 1, v42);
    outlined destroy of UTType?(v41, &_s8CloudKit12CKSyncEngineC5StateC13SerializationVSgMd);
    if (v44 != 1)
    {
      type metadata accessor for JSONEncoder();
      swift_allocObject();
      JSONEncoder.init()();
      v55 = v138;
      v37();
      lazy protocol witness table accessor for type CKSyncEngine.State.Serialization? and conformance <A> A?();
      v85 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v149 = v43;
      v87 = v86;
      outlined destroy of UTType?(v55, &_s8CloudKit12CKSyncEngineC5StateC13SerializationVSgMd);

      KeyPath = swift_getKeyPath();
      (*(*v36 + 656))(KeyPath);

      v89 = v155;
      v90 = v135;
      (*v152)(v135, v36 + v154, v155);
      Data.write(to:options:)();
      (*v153)(v90, v89);
      if ((v156 & 1) == 0)
      {
        outlined consume of Data._Representation(v85, v87);
        return;
      }

      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v125 = v159;
      v126 = __swift_project_value_buffer(v159, static CloudRootDB.Log);
      swift_beginAccess();
      v119 = v131;
      (*v142)(v131, v126, v125);
      v120 = Logger.logObject.getter();
      v127 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v120, v127))
      {
        v128 = swift_slowAlloc();
        v129 = swift_slowAlloc();
        v160 = v129;
        *v128 = v136;
        *(v128 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, v137 | 0x8000000000000000, &v160);
        *(v128 + 12) = 2048;
        *(v128 + 14) = 1;
        _os_log_impl(&dword_21607C000, v120, v127, "CloudRootDB.%{public}s Successfully retried writing stateSerialization after %ld retries", v128, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v129);
        MEMORY[0x21CE94770](v129, -1, -1);
        MEMORY[0x21CE94770](v128, -1, -1);
      }

      outlined consume of Data._Representation(v85, v87);
LABEL_48:

      (*v143)(v119, v159);
      return;
    }

    v45 = [objc_opt_self() defaultManager];
    v46 = swift_getKeyPath();
    (*(*v36 + 656))(v46);

    v47 = v151;
    v48 = v155;
    (*v152)(v151, v36 + v154, v155);
    URL._bridgeToObjectiveC()(v49);
    v51 = v50;
    (*v153)(v47, v48);
    v161[0] = 0;
    LODWORD(v47) = [v45 removeItemAtURL:v51 error:v161];

    v52 = v161[0];
    if (v47)
    {
      break;
    }

    v149 = v161[0];
    v53 = v161[0];
    v54 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v56 = v54;
    v57 = v146;
    static CocoaError.fileNoSuchFile.getter();
    lazy protocol witness table accessor for type CloudRootDB and conformance CloudRootDB(&lazy protocol witness table cache variable for type CocoaError.Code and conformance CocoaError.Code, MEMORY[0x277CC8608]);
    v58 = v147;
    v59 = static _ErrorCodeProtocol.~= infix(_:_:)();

    (*v141)(v57, v58);
    if ((v59 & 1) == 0)
    {
      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v91 = v159;
      v92 = __swift_project_value_buffer(v159, static CloudRootDB.Log);
      swift_beginAccess();
      v93 = v134;
      (*v142)(v134, v92, v91);
      v94 = v54;
      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v99 = v143;
        v100 = v98;
        v101 = swift_slowAlloc();
        v160 = v101;
        *v97 = v136;
        *(v97 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, v137 | 0x8000000000000000, &v160);
        *(v97 + 12) = 2112;
        v102 = v54;
        v103 = _swift_stdlib_bridgeErrorToNSError();
        *(v97 + 14) = v103;
        *v100 = v103;
        _os_log_impl(&dword_21607C000, v95, v96, "CloudRootDB.%{public}s Failed to write sync state: (%@)", v97, 0x16u);
        outlined destroy of UTType?(v100, &_sSo8NSObjectCSgMd);
        MEMORY[0x21CE94770](v100, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v101);
        MEMORY[0x21CE94770](v101, -1, -1);
        MEMORY[0x21CE94770](v97, -1, -1);

        (*v99)(v93, v159);
      }

      else
      {

        (*v143)(v93, v159);
      }

      return;
    }

    v60 = v145;
    v157();
    v61 = v43(v60, 1, v42);
    outlined destroy of UTType?(v60, &_s8CloudKit12CKSyncEngineC5StateC13SerializationVSgMd);
    v62 = v150;
    if (v61 == 1)
    {
      return;
    }

    swift_getKeyPath();
    (*(*v36 + 656))();

    v63 = v155;
    v64 = v144;
    (*v152)(v144, v36 + v154, v155);
    v65 = v151;
    URL.deletingLastPathComponent()();
    v66 = *v153;
    (*v153)(v64, v63);
    v67 = URL.path.getter();
    v69 = v68;
    v66(v65, v63);
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v70 = v159;
    v71 = __swift_project_value_buffer(v159, static CloudRootDB.Log);
    swift_beginAccess();
    v72 = *v142;
    (*v142)(v62, v71, v70);

    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = v72;
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v161[0] = v77;
      *v76 = v136;
      *(v76 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, v137 | 0x8000000000000000, v161);
      *(v76 + 12) = 2080;
      *(v76 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v69, v161);
      _os_log_impl(&dword_21607C000, v73, v74, "CloudRootDB.%{public}s Folder for stateSerialization missing? Retrying after creating folder: %s", v76, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v77, -1, -1);
      v78 = v76;
      v72 = v75;
      v79 = v159;
      v80 = v143;
      v36 = v140;
      MEMORY[0x21CE94770](v78, -1, -1);

      v81 = *v80;
      (*v80)(v150, v79);
    }

    else
    {

      v81 = *v143;
      (*v143)(v62, v159);
    }

    v82 = [objc_opt_self() defaultManager];
    v83 = MEMORY[0x21CE91FC0](v67, v69);

    v161[0] = 0;
    v84 = [v82 createDirectoryIfNeededAtPath:v83 error:v161];

    if (!v84)
    {
      v104 = v161[0];
      v105 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v106 = v133;
      v72(v133, v71, v159);
      v107 = v105;
      v108 = Logger.logObject.getter();
      v109 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v108, v109))
      {
        v110 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        v112 = swift_slowAlloc();
        v161[0] = v112;
        *v110 = v136;
        *(v110 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, v137 | 0x8000000000000000, v161);
        *(v110 + 12) = 2112;
        v113 = v105;
        v114 = _swift_stdlib_bridgeErrorToNSError();
        *(v110 + 14) = v114;
        *v111 = v114;
        _os_log_impl(&dword_21607C000, v108, v109, "CloudRootDB.%{public}s Failed to create folder for sync state: (%@)", v110, 0x16u);
        outlined destroy of UTType?(v111, &_sSo8NSObjectCSgMd);
        MEMORY[0x21CE94770](v111, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v112);
        MEMORY[0x21CE94770](v112, -1, -1);
        MEMORY[0x21CE94770](v110, -1, -1);
      }

      else
      {
      }

      v81(v106, v159);
      return;
    }

    v38 = v161[0];
    v39 = 1;
    v37 = v157;
    if (v156)
    {
      return;
    }
  }

  if (v156)
  {
    v115 = one-time initialization token for Log;
    v116 = v161[0];
    if (v115 != -1)
    {
      swift_once();
    }

    v117 = v159;
    v118 = __swift_project_value_buffer(v159, static CloudRootDB.Log);
    swift_beginAccess();
    v119 = v132;
    (*v142)(v132, v118, v117);
    v120 = Logger.logObject.getter();
    v121 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v120, v121))
    {
      v122 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v160 = v123;
      *v122 = v136;
      *(v122 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, v137 | 0x8000000000000000, &v160);
      *(v122 + 12) = 2048;
      *(v122 + 14) = 1;
      _os_log_impl(&dword_21607C000, v120, v121, "CloudRootDB.%{public}s Successfully retried removing stateSerialization after %ld retries", v122, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v123);
      MEMORY[0x21CE94770](v123, -1, -1);
      MEMORY[0x21CE94770](v122, -1, -1);
    }

    goto LABEL_48;
  }

  v124 = v52;
}

uint64_t CloudRootDB.willFetchChanges()()
{
  *(v1 + 56) = v0;
  return MEMORY[0x2822009F8](CloudRootDB.willFetchChanges(), 0, 0);
}

{
  result = (*(**(v0 + 56) + 472))();
  *(v0 + 64) = result;
  v2 = *(result + 16);
  *(v0 + 72) = v2;
  if (v2)
  {
    *(v0 + 80) = 0;
    if (*(result + 16))
    {
      outlined init with copy of DBObject(result + 32, v0 + 16);
      v3 = *(v0 + 40);
      v4 = *(v0 + 48);
      __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v3);
      v7 = (*(v4 + 128) + **(v4 + 128));
      v5 = swift_task_alloc();
      *(v0 + 88) = v5;
      *v5 = v0;
      v5[1] = CloudRootDB.willFetchChanges();

      return v7(v3, v4);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v6 = *(v0 + 8);

    return v6();
  }

  return result;
}

{
  *(*v1 + 96) = v0;

  if (v0)
  {

    v2 = CloudRootDB.willFetchChanges();
  }

  else
  {
    v2 = CloudRootDB.willFetchChanges();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[9];
  v2 = v0[10] + 1;
  result = __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  if (v2 == v1)
  {

    v4 = v0[1];

    return v4();
  }

  else
  {
    v5 = v0[10] + 1;
    v0[10] = v5;
    v6 = v0[8];
    if (v5 >= *(v6 + 16))
    {
      __break(1u);
    }

    else
    {
      outlined init with copy of DBObject(v6 + 40 * v5 + 32, (v0 + 2));
      v7 = v0[5];
      v8 = v0[6];
      __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v7);
      v10 = (*(v8 + 128) + **(v8 + 128));
      v9 = swift_task_alloc();
      v0[11] = v9;
      *v9 = v0;
      v9[1] = CloudRootDB.willFetchChanges();

      return v10(v7, v8);
    }
  }

  return result;
}

{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t CloudRootDB.willCheckpointChanges()()
{
  *(v1 + 56) = v0;
  return MEMORY[0x2822009F8](CloudRootDB.willCheckpointChanges(), 0, 0);
}

{
  result = (*(**(v0 + 56) + 472))();
  *(v0 + 64) = result;
  v2 = *(result + 16);
  *(v0 + 72) = v2;
  if (v2)
  {
    *(v0 + 80) = 0;
    if (*(result + 16))
    {
      outlined init with copy of DBObject(result + 32, v0 + 16);
      v3 = *(v0 + 40);
      v4 = *(v0 + 48);
      __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v3);
      v7 = (*(v4 + 136) + **(v4 + 136));
      v5 = swift_task_alloc();
      *(v0 + 88) = v5;
      *v5 = v0;
      v5[1] = CloudRootDB.willCheckpointChanges();

      return v7(v3, v4);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v6 = *(v0 + 8);

    return v6();
  }

  return result;
}

{
  *(*v1 + 96) = v0;

  if (v0)
  {

    v2 = CloudRootDB.willCheckpointChanges();
  }

  else
  {
    v2 = CloudRootDB.willCheckpointChanges();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[9];
  v2 = v0[10] + 1;
  result = __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  if (v2 == v1)
  {

    v4 = v0[1];

    return v4();
  }

  else
  {
    v5 = v0[10] + 1;
    v0[10] = v5;
    v6 = v0[8];
    if (v5 >= *(v6 + 16))
    {
      __break(1u);
    }

    else
    {
      outlined init with copy of DBObject(v6 + 40 * v5 + 32, (v0 + 2));
      v7 = v0[5];
      v8 = v0[6];
      __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v7);
      v10 = (*(v8 + 136) + **(v8 + 136));
      v9 = swift_task_alloc();
      v0[11] = v9;
      *v9 = v0;
      v9[1] = CloudRootDB.willCheckpointChanges();

      return v10(v7, v8);
    }
  }

  return result;
}

uint64_t CloudRootDB.didFetchChanges()()
{
  *(v1 + 56) = v0;
  return MEMORY[0x2822009F8](CloudRootDB.didFetchChanges(), 0, 0);
}

{
  v1 = (*(**(v0 + 56) + 472))();
  *(v0 + 64) = v1;
  v2 = *(v1 + 16);
  *(v0 + 72) = v2;
  if (v2)
  {
    *(v0 + 80) = 0;
    outlined init with copy of DBObject(v1 + 32, v0 + 16);
    v3 = *(v0 + 40);
    v4 = *(v0 + 48);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v3);
    v9 = (*(v4 + 144) + **(v4 + 144));
    v5 = swift_task_alloc();
    *(v0 + 88) = v5;
    *v5 = v0;
    v5[1] = CloudRootDB.didFetchChanges();

    return v9(v3, v4);
  }

  else
  {

    v7 = *(**(v0 + 56) + 528);
    v10 = (v7 + *v7);
    v8 = swift_task_alloc();
    *(v0 + 104) = v8;
    *v8 = v0;
    v8[1] = CloudRootDB.didFetchChanges();

    return v10();
  }
}

{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = CloudRootDB.didFetchChanges();
  }

  else
  {
    v2 = CloudRootDB.didFetchChanges();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80) + 1;
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  if (v2 == v1)
  {

    v3 = *(**(v0 + 56) + 528);
    v10 = (v3 + *v3);
    v4 = swift_task_alloc();
    *(v0 + 104) = v4;
    *v4 = v0;
    v4[1] = CloudRootDB.didFetchChanges();

    return v10();
  }

  else
  {
    v6 = *(v0 + 80);
    *(v0 + 80) = v6 + 1;
    outlined init with copy of DBObject(*(v0 + 64) + 40 * v6 + 72, v0 + 16);
    v7 = *(v0 + 40);
    v8 = *(v0 + 48);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v7);
    v11 = (*(v8 + 144) + **(v8 + 144));
    v9 = swift_task_alloc();
    *(v0 + 88) = v9;
    *v9 = v0;
    v9[1] = CloudRootDB.didFetchChanges();

    return v11(v7, v8);
  }
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

{

  v1 = *(v0 + 72);
  v2 = *(v0 + 80) + 1;
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  if (v2 == v1)
  {

    v3 = *(**(v0 + 56) + 528);
    v10 = (v3 + *v3);
    v4 = swift_task_alloc();
    *(v0 + 104) = v4;
    *v4 = v0;
    v4[1] = CloudRootDB.didFetchChanges();

    return v10();
  }

  else
  {
    v6 = *(v0 + 80);
    *(v0 + 80) = v6 + 1;
    outlined init with copy of DBObject(*(v0 + 64) + 40 * v6 + 72, v0 + 16);
    v7 = *(v0 + 40);
    v8 = *(v0 + 48);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v7);
    v11 = (*(v8 + 144) + **(v8 + 144));
    v9 = swift_task_alloc();
    *(v0 + 88) = v9;
    *v9 = v0;
    v9[1] = CloudRootDB.didFetchChanges();

    return v11(v7, v8);
  }
}

uint64_t CloudRootDB.hasCKRecord(_:)(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x2822009F8](CloudRootDB.hasCKRecord(_:), 0, 0);
}

uint64_t CloudRootDB.hasCKRecord(_:)()
{
  v1 = (**(v0 + 64) + 472);
  v2 = *v1;
  *(v0 + 72) = *v1;
  *(v0 + 80) = v1 & 0xFFFFFFFFFFFFLL | 0xC394000000000000;
  v3 = *(v2() + 16);
  *(v0 + 88) = v3;

  if (v3)
  {
    *(v0 + 96) = 0;
    result = (*(v0 + 72))(v4);
    if (*(result + 16))
    {
      v6 = *(v0 + 56);
      outlined init with copy of DBObject(result + 32, v0 + 16);

      v7 = *(v0 + 40);
      v8 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v7);
      v9 = [v6 zoneID];
      *(v0 + 104) = v9;
      v12 = (*(v8 + 40) + **(v8 + 40));
      v10 = swift_task_alloc();
      *(v0 + 112) = v10;
      *v10 = v0;
      v10[1] = CloudRootDB.hasCKRecord(_:);

      return v12(v9, v7, v8);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v11 = *(v0 + 8);

    return v11(0);
  }

  return result;
}

{
  if (*(v0 + 128))
  {
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
    v19 = (*(v2 + 152) + **(v2 + 152));
    v3 = swift_task_alloc();
    *(v0 + 120) = v3;
    *v3 = v0;
    v3[1] = CloudRootDB.hasCKRecord(_:);
    v4 = *(v0 + 56);
    v5 = v1;
    v6 = v2;
    v7 = v19;

    return v7(v4, v5, v6);
  }

  v9 = *(v0 + 88);
  v10 = *(v0 + 96) + 1;
  v11 = __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  if (v10 == v9)
  {
    v12 = *(v0 + 8);

    return v12(0);
  }

  else
  {
    v13 = *(v0 + 96) + 1;
    *(v0 + 96) = v13;
    result = (*(v0 + 72))(v11);
    if (v13 < *(result + 16))
    {
      v14 = *(v0 + 56);
      outlined init with copy of DBObject(result + 40 * v13 + 32, v0 + 16);

      v15 = *(v0 + 40);
      v16 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v15);
      v17 = [v14 zoneID];
      *(v0 + 104) = v17;
      v20 = (*(v16 + 40) + **(v16 + 40));
      v18 = swift_task_alloc();
      *(v0 + 112) = v18;
      *v18 = v0;
      v18[1] = CloudRootDB.hasCKRecord(_:);
      v4 = v17;
      v5 = v15;
      v6 = v16;
      v7 = v20;

      return v7(v4, v5, v6);
    }

    __break(1u);
  }

  return result;
}

{
  v1 = *(v0 + 129);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
LABEL_4:
    v5 = *(v0 + 8);

    return v5(v1);
  }

  v2 = *(v0 + 88);
  v3 = *(v0 + 96) + 1;
  v4 = __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  if (v3 == v2)
  {
    goto LABEL_4;
  }

  v7 = *(v0 + 96) + 1;
  *(v0 + 96) = v7;
  result = (*(v0 + 72))(v4);
  if (v7 >= *(result + 16))
  {
    __break(1u);
  }

  else
  {
    v8 = *(v0 + 56);
    outlined init with copy of DBObject(result + 40 * v7 + 32, v0 + 16);

    v9 = *(v0 + 40);
    v10 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v9);
    v11 = [v8 zoneID];
    *(v0 + 104) = v11;
    v13 = (*(v10 + 40) + **(v10 + 40));
    v12 = swift_task_alloc();
    *(v0 + 112) = v12;
    *v12 = v0;
    v12[1] = CloudRootDB.hasCKRecord(_:);

    return v13(v11, v9, v10);
  }

  return result;
}

uint64_t CloudRootDB.hasCKRecord(_:)(char a1)
{
  v2 = *(*v1 + 104);
  *(*v1 + 128) = a1;

  return MEMORY[0x2822009F8](CloudRootDB.hasCKRecord(_:), 0, 0);
}

{
  *(*v1 + 129) = a1;

  return MEMORY[0x2822009F8](CloudRootDB.hasCKRecord(_:), 0, 0);
}

uint64_t CloudRootDB.dumpCKRecordIDsByZone()()
{
  *(v1 + 56) = v0;
  return MEMORY[0x2822009F8](CloudRootDB.dumpCKRecordIDsByZone(), 0, 0);
}

{
  v1 = v0[7];
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySo10CKRecordIDCGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v3 = (*v1 + 472);
  v4 = *v3;
  v0[8] = *v3;
  v0[9] = v3 & 0xFFFFFFFFFFFFLL | 0xC394000000000000;
  v5 = *(v4() + 16);
  v0[10] = v5;

  if (v5)
  {
    v0[12] = v2;
    v0[13] = 0;
    v0[11] = 0;
    result = (v0[8])(v6);
    if (*(result + 16))
    {
      outlined init with copy of DBObject(result + 32, (v0 + 2));

      v8 = v0[5];
      v9 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v8);
      v12 = (*(v9 + 160) + **(v9 + 160));
      v10 = swift_task_alloc();
      v0[14] = v10;
      *v10 = v0;
      v10[1] = CloudRootDB.dumpCKRecordIDsByZone();

      return v12(v8, v9);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v11 = v0[1];

    return v11(v2);
  }

  return result;
}

{
  v17 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 104) + 1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = v2;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v1, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v16);

  v7 = v16;
  v8 = __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  if (v5 == v4)
  {
    v9 = *(v0 + 8);

    return v9(v7);
  }

  else
  {
    v11 = *(v0 + 104) + 1;
    *(v0 + 96) = v7;
    *(v0 + 104) = v11;
    *(v0 + 88) = v3;
    result = (*(v0 + 64))(v8);
    if (v11 >= *(result + 16))
    {
      __break(1u);
    }

    else
    {
      outlined init with copy of DBObject(result + 40 * v11 + 32, v0 + 16);

      v12 = *(v0 + 40);
      v13 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v12);
      v15 = (*(v13 + 160) + **(v13 + 160));
      v14 = swift_task_alloc();
      *(v0 + 112) = v14;
      *v14 = v0;
      v14[1] = CloudRootDB.dumpCKRecordIDsByZone();

      return v15(v12, v13);
    }
  }

  return result;
}

uint64_t CloudRootDB.dumpCKRecordIDsByZone()(uint64_t a1)
{
  *(*v1 + 120) = a1;

  return MEMORY[0x2822009F8](CloudRootDB.dumpCKRecordIDsByZone(), 0, 0);
}

uint64_t CloudRootDB.lookupCKRecord(_:)(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x2822009F8](CloudRootDB.lookupCKRecord(_:), 0, 0);
}

{
  *(*v1 + 128) = a1;

  return MEMORY[0x2822009F8](CloudRootDB.lookupCKRecord(_:), 0, 0);
}

uint64_t CloudRootDB.lookupCKRecord(_:)()
{
  v1 = (**(v0 + 64) + 472);
  v2 = *v1;
  *(v0 + 72) = *v1;
  *(v0 + 80) = v1 & 0xFFFFFFFFFFFFLL | 0xC394000000000000;
  v3 = *(v2() + 16);
  *(v0 + 88) = v3;

  if (v3)
  {
    *(v0 + 96) = 0;
    result = (*(v0 + 72))(v4);
    if (*(result + 16))
    {
      v6 = *(v0 + 56);
      outlined init with copy of DBObject(result + 32, v0 + 16);

      v7 = *(v0 + 40);
      v8 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v7);
      v9 = [v6 zoneID];
      *(v0 + 104) = v9;
      v12 = (*(v8 + 40) + **(v8 + 40));
      v10 = swift_task_alloc();
      *(v0 + 112) = v10;
      *v10 = v0;
      v10[1] = CloudRootDB.lookupCKRecord(_:);

      return v12(v9, v7, v8);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v11 = *(v0 + 8);

    return v11(0);
  }

  return result;
}

{
  if (*(v0 + 136))
  {
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
    v19 = (*(v2 + 168) + **(v2 + 168));
    v3 = swift_task_alloc();
    *(v0 + 120) = v3;
    *v3 = v0;
    v3[1] = CloudRootDB.lookupCKRecord(_:);
    v4 = *(v0 + 56);
    v5 = v1;
    v6 = v2;
    v7 = v19;

    return v7(v4, v5, v6);
  }

  v9 = *(v0 + 88);
  v10 = *(v0 + 96) + 1;
  v11 = __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  if (v10 == v9)
  {
    v12 = *(v0 + 8);

    return v12(0);
  }

  else
  {
    v13 = *(v0 + 96) + 1;
    *(v0 + 96) = v13;
    result = (*(v0 + 72))(v11);
    if (v13 < *(result + 16))
    {
      v14 = *(v0 + 56);
      outlined init with copy of DBObject(result + 40 * v13 + 32, v0 + 16);

      v15 = *(v0 + 40);
      v16 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v15);
      v17 = [v14 zoneID];
      *(v0 + 104) = v17;
      v20 = (*(v16 + 40) + **(v16 + 40));
      v18 = swift_task_alloc();
      *(v0 + 112) = v18;
      *v18 = v0;
      v18[1] = CloudRootDB.lookupCKRecord(_:);
      v4 = v17;
      v5 = v15;
      v6 = v16;
      v7 = v20;

      return v7(v4, v5, v6);
    }

    __break(1u);
  }

  return result;
}

{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 128);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t CloudRootDB.lookupCKRecord(_:)(char a1)
{
  v2 = *(*v1 + 104);
  *(*v1 + 136) = a1;

  return MEMORY[0x2822009F8](CloudRootDB.lookupCKRecord(_:), 0, 0);
}

uint64_t CloudRootDB.modifyOrCreateCKRecord(_:force:)(uint64_t a1, char a2)
{
  *(v3 + 128) = a2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v2;
  return MEMORY[0x2822009F8](CloudRootDB.modifyOrCreateCKRecord(_:force:), 0, 0);
}

uint64_t CloudRootDB.modifyOrCreateCKRecord(_:force:)()
{
  v1 = (**(v0 + 64) + 472);
  v2 = *v1;
  *(v0 + 72) = *v1;
  *(v0 + 80) = v1 & 0xFFFFFFFFFFFFLL | 0xC394000000000000;
  v3 = *(v2() + 16);
  *(v0 + 88) = v3;

  if (v3)
  {
    *(v0 + 96) = 0;
    result = (*(v0 + 72))(v4);
    if (*(result + 16))
    {
      outlined init with copy of DBObject(result + 32, v0 + 16);

      v6 = *(v0 + 40);
      v7 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v6);
      v8 = CKRecord.recordType.getter();
      v10 = v9;
      *(v0 + 104) = v9;
      v11 = swift_task_alloc();
      *(v0 + 112) = v11;
      *v11 = v0;
      v11[1] = CloudRootDB.modifyOrCreateCKRecord(_:force:);

      return (specialized CloudSubDB.hasRecordType(_:))(v8, v10, v6, v7);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v12 = *(v0 + 8);

    return v12();
  }

  return result;
}

{
  if (*(v0 + 129))
  {
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v1);
    v21 = (*(v2 + 176) + **(v2 + 176));
    v3 = swift_task_alloc();
    *(v0 + 120) = v3;
    *v3 = v0;
    v3[1] = CloudRootDB.modifyOrCreateCKRecord(_:force:);
    v4 = *(v0 + 128);
    v5 = *(v0 + 56);
    v6 = v1;
    v7 = v2;
    v8 = v21;

    return (v8)(v5, v4, v6, v7);
  }

  v10 = *(v0 + 88);
  v11 = *(v0 + 96) + 1;
  v12 = __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  if (v11 == v10)
  {
    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    v14 = *(v0 + 96) + 1;
    *(v0 + 96) = v14;
    result = (*(v0 + 72))(v12);
    if (v14 < *(result + 16))
    {
      outlined init with copy of DBObject(result + 40 * v14 + 32, v0 + 16);

      v15 = *(v0 + 40);
      v16 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v15);
      v17 = CKRecord.recordType.getter();
      v19 = v18;
      *(v0 + 104) = v18;
      v20 = swift_task_alloc();
      *(v0 + 112) = v20;
      *v20 = v0;
      v20[1] = CloudRootDB.modifyOrCreateCKRecord(_:force:);
      v5 = v17;
      v4 = v19;
      v6 = v15;
      v7 = v16;
      v8 = specialized CloudSubDB.hasRecordType(_:);

      return (v8)(v5, v4, v6, v7);
    }

    __break(1u);
  }

  return result;
}

{

  return MEMORY[0x2822009F8](CloudRootDB.modifyOrCreateCKRecord(_:force:), 0, 0);
}

{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t CloudRootDB.modifyOrCreateCKRecord(_:force:)(char a1)
{
  *(*v1 + 129) = a1;

  return MEMORY[0x2822009F8](CloudRootDB.modifyOrCreateCKRecord(_:force:), 0, 0);
}

uint64_t CloudRootDB.zoneNotFound(_:_:purged:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 64) = a2;
  *(v4 + 72) = v3;
  *(v4 + 144) = a3;
  *(v4 + 56) = a1;
  *(v4 + 80) = *v3;
  return MEMORY[0x2822009F8](CloudRootDB.zoneNotFound(_:_:purged:), 0, 0);
}

uint64_t CloudRootDB.zoneNotFound(_:_:purged:)()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 144);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys23CustomStringConvertible_pSgGMd);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_21658E190;
  v7 = [v5 zoneID];
  *(v6 + 56) = type metadata accessor for CKRecordZoneID();
  *(v6 + 64) = lazy protocol witness table accessor for type CloudRootDB and conformance CloudRootDB(&lazy protocol witness table cache variable for type CKRecordZoneID and conformance NSObject, type metadata accessor for CKRecordZoneID);
  *(v6 + 32) = v7;
  v8 = [v4 recordID];
  v9 = [v8 recordName];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = MEMORY[0x277D83838];
  *(v6 + 96) = MEMORY[0x277D837D0];
  *(v6 + 104) = v13;
  v14 = MEMORY[0x277D839B0];
  *(v6 + 72) = v10;
  *(v6 + 80) = v12;
  v15 = MEMORY[0x277D839D8];
  *(v6 + 136) = v14;
  *(v6 + 144) = v15;
  *(v6 + 112) = v3;
  static CloudLog.LogBegin(_:_:)(v6, "zoneNotFound(_:_:purged:)", 25, 2, v2, &protocol witness table for CloudRootDB);

  v17 = *v1;
  v18 = *(*v1 + 472);
  *(v0 + 88) = v18;
  *(v0 + 96) = (v17 + 472) & 0xFFFFFFFFFFFFLL | 0xC394000000000000;
  v19 = *(v18(v16) + 16);
  *(v0 + 104) = v19;

  if (v19)
  {
    *(v0 + 112) = 0;
    result = (*(v0 + 88))(v20);
    if (*(result + 16))
    {
      outlined init with copy of DBObject(result + 32, v0 + 16);

      v22 = *(v0 + 40);
      v23 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v22);
      v24 = CKRecord.recordType.getter();
      v26 = v25;
      *(v0 + 120) = v25;
      v27 = swift_task_alloc();
      *(v0 + 128) = v27;
      *v27 = v0;
      v27[1] = CloudRootDB.zoneNotFound(_:_:purged:);

      return specialized CloudSubDB.hasRecordType(_:)(v24, v26, v22, v23);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    static CloudLog.LogEnd(_:)("zoneNotFound(_:_:purged:)", 25, 2, *(v0 + 80), &protocol witness table for CloudRootDB);
    v28 = *(v0 + 8);

    return v28(0);
  }

  return result;
}

{
  if (*(v0 + 145))
  {
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v1);
    v19 = (*(v2 + 184) + **(v2 + 184));
    v3 = swift_task_alloc();
    *(v0 + 136) = v3;
    *v3 = v0;
    v3[1] = CloudRootDB.zoneNotFound(_:_:purged:);
    v4 = *(v0 + 144);
    v6 = *(v0 + 56);
    v5 = *(v0 + 64);

    return v19(v6, v5, v4, v1, v2);
  }

  else
  {
    v8 = *(v0 + 104);
    v9 = *(v0 + 112) + 1;
    v10 = __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    if (v9 == v8)
    {
      static CloudLog.LogEnd(_:)("zoneNotFound(_:_:purged:)", 25, 2, *(v0 + 80), &protocol witness table for CloudRootDB);
      v11 = *(v0 + 8);

      return v11(0);
    }

    else
    {
      v12 = *(v0 + 112) + 1;
      *(v0 + 112) = v12;
      result = (*(v0 + 88))(v10);
      if (v12 >= *(result + 16))
      {
        __break(1u);
      }

      else
      {
        outlined init with copy of DBObject(result + 40 * v12 + 32, v0 + 16);

        v13 = *(v0 + 40);
        v14 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), v13);
        v15 = CKRecord.recordType.getter();
        v17 = v16;
        *(v0 + 120) = v16;
        v18 = swift_task_alloc();
        *(v0 + 128) = v18;
        *v18 = v0;
        v18[1] = CloudRootDB.zoneNotFound(_:_:purged:);

        return specialized CloudSubDB.hasRecordType(_:)(v15, v17, v13, v14);
      }
    }
  }

  return result;
}

{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 146);
  static CloudLog.LogEnd(_:)("zoneNotFound(_:_:purged:)", 25, 2, *(v0 + 80), &protocol witness table for CloudRootDB);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t CloudRootDB.zoneNotFound(_:_:purged:)(char a1)
{
  *(*v1 + 145) = a1;

  return MEMORY[0x2822009F8](CloudRootDB.zoneNotFound(_:_:purged:), 0, 0);
}

{
  *(*v1 + 146) = a1;

  return MEMORY[0x2822009F8](CloudRootDB.zoneNotFound(_:_:purged:), 0, 0);
}

uint64_t CloudRootDB.clearCKRecord(_:)(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x2822009F8](CloudRootDB.clearCKRecord(_:), 0, 0);
}

uint64_t CloudRootDB.clearCKRecord(_:)()
{
  v1 = (**(v0 + 64) + 472);
  v2 = *v1;
  *(v0 + 72) = *v1;
  *(v0 + 80) = v1 & 0xFFFFFFFFFFFFLL | 0xC394000000000000;
  v3 = *(v2() + 16);
  *(v0 + 88) = v3;

  if (v3)
  {
    *(v0 + 96) = 0;
    result = (*(v0 + 72))(v4);
    if (*(result + 16))
    {
      v6 = *(v0 + 56);
      outlined init with copy of DBObject(result + 32, v0 + 16);

      v7 = *(v0 + 40);
      v8 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v7);
      v9 = [v6 zoneID];
      *(v0 + 104) = v9;
      v12 = (*(v8 + 40) + **(v8 + 40));
      v10 = swift_task_alloc();
      *(v0 + 112) = v10;
      *v10 = v0;
      v10[1] = CloudRootDB.clearCKRecord(_:);

      return v12(v9, v7, v8);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v11 = *(v0 + 8);

    return v11();
  }

  return result;
}

{
  if (*(v0 + 128))
  {
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v1);
    v19 = (*(v2 + 192) + **(v2 + 192));
    v3 = swift_task_alloc();
    *(v0 + 120) = v3;
    *v3 = v0;
    v3[1] = CloudRootDB.clearCKRecord(_:);
    v4 = *(v0 + 56);
    v5 = v1;
    v6 = v2;
    v7 = v19;

    return v7(v4, v5, v6);
  }

  v9 = *(v0 + 88);
  v10 = *(v0 + 96) + 1;
  v11 = __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  if (v10 == v9)
  {
    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v13 = *(v0 + 96) + 1;
    *(v0 + 96) = v13;
    result = (*(v0 + 72))(v11);
    if (v13 < *(result + 16))
    {
      v14 = *(v0 + 56);
      outlined init with copy of DBObject(result + 40 * v13 + 32, v0 + 16);

      v15 = *(v0 + 40);
      v16 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v15);
      v17 = [v14 zoneID];
      *(v0 + 104) = v17;
      v20 = (*(v16 + 40) + **(v16 + 40));
      v18 = swift_task_alloc();
      *(v0 + 112) = v18;
      *v18 = v0;
      v18[1] = CloudRootDB.clearCKRecord(_:);
      v4 = v17;
      v5 = v15;
      v6 = v16;
      v7 = v20;

      return v7(v4, v5, v6);
    }

    __break(1u);
  }

  return result;
}

{

  return MEMORY[0x2822009F8](CloudRootDB.clearCKRecord(_:), 0, 0);
}

{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96) + 1;
  v3 = __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  if (v2 == v1)
  {
    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 96) + 1;
    *(v0 + 96) = v6;
    result = (*(v0 + 72))(v3);
    if (v6 >= *(result + 16))
    {
      __break(1u);
    }

    else
    {
      v7 = *(v0 + 56);
      outlined init with copy of DBObject(result + 40 * v6 + 32, v0 + 16);

      v8 = *(v0 + 40);
      v9 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v8);
      v10 = [v7 zoneID];
      *(v0 + 104) = v10;
      v12 = (*(v9 + 40) + **(v9 + 40));
      v11 = swift_task_alloc();
      *(v0 + 112) = v11;
      *v11 = v0;
      v11[1] = CloudRootDB.clearCKRecord(_:);

      return v12(v10, v8, v9);
    }
  }

  return result;
}

uint64_t CloudRootDB.clearCKRecord(_:)(char a1)
{
  v2 = *(*v1 + 104);
  *(*v1 + 128) = a1;

  return MEMORY[0x2822009F8](CloudRootDB.clearCKRecord(_:), 0, 0);
}

uint64_t CloudRootDB.deleteCKRecord(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return MEMORY[0x2822009F8](CloudRootDB.deleteCKRecord(_:_:), 0, 0);
}

uint64_t CloudRootDB.deleteCKRecord(_:_:)()
{
  v1 = (**(v0 + 80) + 472);
  v2 = *v1;
  *(v0 + 88) = *v1;
  *(v0 + 96) = v1 & 0xFFFFFFFFFFFFLL | 0xC394000000000000;
  v3 = *(v2() + 16);
  *(v0 + 104) = v3;

  if (v3)
  {
    *(v0 + 112) = 0;
    result = (*(v0 + 88))(v4);
    if (*(result + 16))
    {
      outlined init with copy of DBObject(result + 32, v0 + 16);

      v7 = *(v0 + 40);
      v6 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v7);
      v8 = swift_task_alloc();
      *(v0 + 120) = v8;
      *v8 = v0;
      v8[1] = CloudRootDB.deleteCKRecord(_:_:);
      v10 = *(v0 + 56);
      v9 = *(v0 + 64);

      return specialized CloudSubDB.hasRecordType(_:)(v10, v9, v7, v6);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v11 = *(v0 + 8);

    return v11();
  }

  return result;
}

{
  if (*(v0 + 136))
  {
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v1);
    v18 = (*(v2 + 200) + **(v2 + 200));
    v3 = swift_task_alloc();
    *(v0 + 128) = v3;
    *v3 = v0;
    v3[1] = CloudRootDB.deleteCKRecord(_:_:);
    v4 = *(v0 + 64);
    v5 = *(v0 + 72);
    v6 = *(v0 + 56);

    return v18(v6, v4, v5, v1, v2);
  }

  else
  {
    v8 = *(v0 + 104);
    v9 = *(v0 + 112) + 1;
    v10 = __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    if (v9 == v8)
    {
      v11 = *(v0 + 8);

      return v11();
    }

    else
    {
      v12 = *(v0 + 112) + 1;
      *(v0 + 112) = v12;
      result = (*(v0 + 88))(v10);
      if (v12 >= *(result + 16))
      {
        __break(1u);
      }

      else
      {
        outlined init with copy of DBObject(result + 40 * v12 + 32, v0 + 16);

        v14 = *(v0 + 40);
        v13 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), v14);
        v15 = swift_task_alloc();
        *(v0 + 120) = v15;
        *v15 = v0;
        v15[1] = CloudRootDB.deleteCKRecord(_:_:);
        v17 = *(v0 + 56);
        v16 = *(v0 + 64);

        return specialized CloudSubDB.hasRecordType(_:)(v17, v16, v14, v13);
      }
    }
  }

  return result;
}

{

  return MEMORY[0x2822009F8](CloudRootDB.deleteCKRecord(_:_:), 0, 0);
}

{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112) + 1;
  v3 = __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  if (v2 == v1)
  {
    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 112) + 1;
    *(v0 + 112) = v6;
    result = (*(v0 + 88))(v3);
    if (v6 >= *(result + 16))
    {
      __break(1u);
    }

    else
    {
      outlined init with copy of DBObject(result + 40 * v6 + 32, v0 + 16);

      v8 = *(v0 + 40);
      v7 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v8);
      v9 = swift_task_alloc();
      *(v0 + 120) = v9;
      *v9 = v0;
      v9[1] = CloudRootDB.deleteCKRecord(_:_:);
      v11 = *(v0 + 56);
      v10 = *(v0 + 64);

      return specialized CloudSubDB.hasRecordType(_:)(v11, v10, v8, v7);
    }
  }

  return result;
}

uint64_t CloudRootDB.deleteCKRecord(_:_:)(char a1)
{
  *(*v1 + 136) = a1;

  return MEMORY[0x2822009F8](CloudRootDB.deleteCKRecord(_:_:), 0, 0);
}

uint64_t CloudRootDB.deleteCKRecordZone(_:purged:)(uint64_t a1, char a2)
{
  *(v3 + 120) = a2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v2;
  return MEMORY[0x2822009F8](CloudRootDB.deleteCKRecordZone(_:purged:), 0, 0);
}

uint64_t CloudRootDB.deleteCKRecordZone(_:purged:)()
{
  v1 = (**(v0 + 64) + 472);
  v2 = *v1;
  *(v0 + 72) = *v1;
  *(v0 + 80) = v1 & 0xFFFFFFFFFFFFLL | 0xC394000000000000;
  v3 = *(v2() + 16);
  *(v0 + 88) = v3;

  if (v3)
  {
    *(v0 + 96) = 0;
    result = (*(v0 + 72))(v4);
    if (*(result + 16))
    {
      outlined init with copy of DBObject(result + 32, v0 + 16);

      v6 = *(v0 + 40);
      v7 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v6);
      v11 = (*(v7 + 40) + **(v7 + 40));
      v8 = swift_task_alloc();
      *(v0 + 104) = v8;
      *v8 = v0;
      v8[1] = CloudRootDB.deleteCKRecordZone(_:purged:);
      v9 = *(v0 + 56);

      return v11(v9, v6, v7);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v10 = *(v0 + 8);

    return v10();
  }

  return result;
}

{
  if (*(v0 + 121))
  {
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v1);
    v16 = (*(v2 + 208) + **(v2 + 208));
    v3 = swift_task_alloc();
    *(v0 + 112) = v3;
    *v3 = v0;
    v3[1] = CloudRootDB.deleteCKRecordZone(_:purged:);
    v4 = *(v0 + 120);
    v5 = *(v0 + 56);

    return v16(v5, v4, v1, v2);
  }

  else
  {
    v7 = *(v0 + 88);
    v8 = *(v0 + 96) + 1;
    v9 = __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    if (v8 == v7)
    {
      v10 = *(v0 + 8);

      return v10();
    }

    else
    {
      v11 = *(v0 + 96) + 1;
      *(v0 + 96) = v11;
      result = (*(v0 + 72))(v9);
      if (v11 >= *(result + 16))
      {
        __break(1u);
      }

      else
      {
        outlined init with copy of DBObject(result + 40 * v11 + 32, v0 + 16);

        v12 = *(v0 + 40);
        v13 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), v12);
        v17 = (*(v13 + 40) + **(v13 + 40));
        v14 = swift_task_alloc();
        *(v0 + 104) = v14;
        *v14 = v0;
        v14[1] = CloudRootDB.deleteCKRecordZone(_:purged:);
        v15 = *(v0 + 56);

        return v17(v15, v12, v13);
      }
    }
  }

  return result;
}

{

  return MEMORY[0x2822009F8](CloudRootDB.deleteCKRecordZone(_:purged:), 0, 0);
}

{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96) + 1;
  v3 = __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  if (v2 == v1)
  {
    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 96) + 1;
    *(v0 + 96) = v6;
    result = (*(v0 + 72))(v3);
    if (v6 >= *(result + 16))
    {
      __break(1u);
    }

    else
    {
      outlined init with copy of DBObject(result + 40 * v6 + 32, v0 + 16);

      v7 = *(v0 + 40);
      v8 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v7);
      v11 = (*(v8 + 40) + **(v8 + 40));
      v9 = swift_task_alloc();
      *(v0 + 104) = v9;
      *v9 = v0;
      v9[1] = CloudRootDB.deleteCKRecordZone(_:purged:);
      v10 = *(v0 + 56);

      return v11(v10, v7, v8);
    }
  }

  return result;
}

uint64_t CloudRootDB.deleteCKRecordZone(_:purged:)(char a1)
{
  *(*v1 + 121) = a1;

  return MEMORY[0x2822009F8](CloudRootDB.deleteCKRecordZone(_:purged:), 0, 0);
}

uint64_t CloudRootDB.modifyCKRecordZone(_:)(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x2822009F8](CloudRootDB.modifyCKRecordZone(_:), 0, 0);
}

uint64_t CloudRootDB.modifyCKRecordZone(_:)()
{
  v1 = (**(v0 + 64) + 472);
  v2 = *v1;
  *(v0 + 72) = *v1;
  *(v0 + 80) = v1 & 0xFFFFFFFFFFFFLL | 0xC394000000000000;
  v3 = *(v2() + 16);
  *(v0 + 88) = v3;

  if (v3)
  {
    *(v0 + 96) = 0;
    result = (*(v0 + 72))(v4);
    if (*(result + 16))
    {
      outlined init with copy of DBObject(result + 32, v0 + 16);

      v6 = *(v0 + 40);
      v7 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v6);
      v11 = (*(v7 + 40) + **(v7 + 40));
      v8 = swift_task_alloc();
      *(v0 + 104) = v8;
      *v8 = v0;
      v8[1] = CloudRootDB.modifyCKRecordZone(_:);
      v9 = *(v0 + 56);

      return v11(v9, v6, v7);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v10 = *(v0 + 8);

    return v10();
  }

  return result;
}

{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v1);
    v17 = (*(v2 + 216) + **(v2 + 216));
    v3 = swift_task_alloc();
    *(v0 + 112) = v3;
    *v3 = v0;
    v3[1] = CloudRootDB.modifyCKRecordZone(_:);
    v4 = *(v0 + 56);
    v5 = v1;
    v6 = v2;
    v7 = v17;

    return v7(v4, v5, v6);
  }

  v9 = *(v0 + 88);
  v10 = *(v0 + 96) + 1;
  v11 = __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  if (v10 == v9)
  {
    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v13 = *(v0 + 96) + 1;
    *(v0 + 96) = v13;
    result = (*(v0 + 72))(v11);
    if (v13 < *(result + 16))
    {
      outlined init with copy of DBObject(result + 40 * v13 + 32, v0 + 16);

      v14 = *(v0 + 40);
      v15 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v14);
      v18 = (*(v15 + 40) + **(v15 + 40));
      v16 = swift_task_alloc();
      *(v0 + 104) = v16;
      *v16 = v0;
      v16[1] = CloudRootDB.modifyCKRecordZone(_:);
      v4 = *(v0 + 56);
      v5 = v14;
      v6 = v15;
      v7 = v18;

      return v7(v4, v5, v6);
    }

    __break(1u);
  }

  return result;
}

{

  return MEMORY[0x2822009F8](CloudRootDB.modifyCKRecordZone(_:), 0, 0);
}

{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96) + 1;
  v3 = __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  if (v2 == v1)
  {
    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 96) + 1;
    *(v0 + 96) = v6;
    result = (*(v0 + 72))(v3);
    if (v6 >= *(result + 16))
    {
      __break(1u);
    }

    else
    {
      outlined init with copy of DBObject(result + 40 * v6 + 32, v0 + 16);

      v7 = *(v0 + 40);
      v8 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v7);
      v11 = (*(v8 + 40) + **(v8 + 40));
      v9 = swift_task_alloc();
      *(v0 + 104) = v9;
      *v9 = v0;
      v9[1] = CloudRootDB.modifyCKRecordZone(_:);
      v10 = *(v0 + 56);

      return v11(v10, v7, v8);
    }
  }

  return result;
}

uint64_t CloudRootDB.modifyCKRecordZone(_:)(char a1)
{
  *(*v1 + 120) = a1;

  return MEMORY[0x2822009F8](CloudRootDB.modifyCKRecordZone(_:), 0, 0);
}

uint64_t CloudRootDB.dumpRecord(_:)(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x2822009F8](CloudRootDB.dumpRecord(_:), 0, 0);
}

uint64_t CloudRootDB.dumpRecord(_:)()
{
  v1 = (**(v0 + 64) + 472);
  v2 = *v1;
  *(v0 + 72) = *v1;
  *(v0 + 80) = v1 & 0xFFFFFFFFFFFFLL | 0xC394000000000000;
  v3 = *(v2() + 16);
  *(v0 + 88) = v3;

  if (v3)
  {
    *(v0 + 96) = 0;
    result = (*(v0 + 72))(v4);
    if (*(result + 16))
    {
      outlined init with copy of DBObject(result + 32, v0 + 16);

      v6 = *(v0 + 40);
      v7 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v6);
      v8 = CKRecord.recordType.getter();
      v10 = v9;
      *(v0 + 104) = v9;
      v11 = swift_task_alloc();
      *(v0 + 112) = v11;
      *v11 = v0;
      v11[1] = CloudRootDB.dumpRecord(_:);

      return specialized CloudSubDB.hasRecordType(_:)(v8, v10, v6, v7);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v12 = [*(v0 + 56) debugDescription];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = *(v0 + 8);

    return v16(v13, v15);
  }

  return result;
}

{
  if (*(v0 + 144))
  {
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
    v21 = (*(v2 + 224) + **(v2 + 224));
    v3 = swift_task_alloc();
    *(v0 + 120) = v3;
    *v3 = v0;
    v3[1] = CloudRootDB.dumpRecord(_:);
    v4 = *(v0 + 56);

    return v21(v4, v1, v2);
  }

  else
  {
    v6 = *(v0 + 88);
    v7 = *(v0 + 96) + 1;
    v8 = __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    if (v7 == v6)
    {
      v9 = [*(v0 + 56) debugDescription];
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v13 = *(v0 + 8);

      return v13(v10, v12);
    }

    else
    {
      v14 = *(v0 + 96) + 1;
      *(v0 + 96) = v14;
      result = (*(v0 + 72))(v8);
      if (v14 >= *(result + 16))
      {
        __break(1u);
      }

      else
      {
        outlined init with copy of DBObject(result + 40 * v14 + 32, v0 + 16);

        v15 = *(v0 + 40);
        v16 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), v15);
        v17 = CKRecord.recordType.getter();
        v19 = v18;
        *(v0 + 104) = v18;
        v20 = swift_task_alloc();
        *(v0 + 112) = v20;
        *v20 = v0;
        v20[1] = CloudRootDB.dumpRecord(_:);

        return specialized CloudSubDB.hasRecordType(_:)(v17, v19, v15, v16);
      }
    }
  }

  return result;
}

{
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t CloudRootDB.dumpRecord(_:)(char a1)
{
  *(*v1 + 144) = a1;

  return MEMORY[0x2822009F8](CloudRootDB.dumpRecord(_:), 0, 0);
}

uint64_t CloudRootDB.dumpRecord(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = a2;

  return MEMORY[0x2822009F8](CloudRootDB.dumpRecord(_:), 0, 0);
}

uint64_t CloudRootDB.deinit()
{
  v1 = OBJC_IVAR____TtC9MomentsUI11CloudRootDB__stateDBURL;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  outlined destroy of UTType?(v0 + OBJC_IVAR____TtC9MomentsUI11CloudRootDB___stateSerialization, &_s8CloudKit12CKSyncEngineC5StateC13SerializationVSgMd);

  v3 = OBJC_IVAR____TtC9MomentsUI11CloudRootDB___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t CloudRootDB.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9MomentsUI11CloudRootDB__stateDBURL;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  outlined destroy of UTType?(v0 + OBJC_IVAR____TtC9MomentsUI11CloudRootDB___stateSerialization, &_s8CloudKit12CKSyncEngineC5StateC13SerializationVSgMd);

  v3 = OBJC_IVAR____TtC9MomentsUI11CloudRootDB___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t (*protocol witness for CloudDB.stateSerialization.modify in conformance CloudRootDB(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 440))();
  return protocol witness for CloudDB.stateSerialization.modify in conformance CloudRootDB;
}

uint64_t (*protocol witness for CloudSubDB.cloudManager.modify in conformance CloudRootDB(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 248))();
  return protocol witness for CloudSubDB.cloudManager.modify in conformance CloudRootDB;
}

uint64_t protocol witness for CloudSubDB.init(emptyDB:config:) in conformance CloudRootDB@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 496))();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CloudSubDB.initialized() in conformance CloudRootDB()
{
  v4 = (*(**v0 + 504) + **(**v0 + 504));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v4();
}

uint64_t protocol witness for CloudSubDB.cancelSync() in conformance CloudRootDB()
{
  v4 = (*(**v0 + 512) + **(**v0 + 512));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = static Exif.filterImage(imageSource:outputURL:);

  return v4();
}

uint64_t protocol witness for CloudSubDB.refresh(force:) in conformance CloudRootDB(uint64_t a1)
{
  v6 = (*(**v1 + 520) + **(**v1 + 520));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v6(a1);
}

uint64_t protocol witness for CloudSubDB.persistLocalData() in conformance CloudRootDB()
{
  v4 = (*(**v0 + 528) + **(**v0 + 528));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v4();
}

uint64_t protocol witness for CloudSubDB.deleteLocalData() in conformance CloudRootDB()
{
  v4 = (*(**v0 + 536) + **(**v0 + 536));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = static Exif.filterImage(imageSource:outputURL:);

  return v4();
}

uint64_t protocol witness for CloudSubDB.willFetchChanges() in conformance CloudRootDB()
{
  v4 = (*(**v0 + 552) + **(**v0 + 552));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v4();
}

uint64_t protocol witness for CloudSubDB.willCheckpointChanges() in conformance CloudRootDB()
{
  v4 = (*(**v0 + 560) + **(**v0 + 560));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v4();
}

uint64_t protocol witness for CloudSubDB.didFetchChanges() in conformance CloudRootDB()
{
  v4 = (*(**v0 + 568) + **(**v0 + 568));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v4();
}

uint64_t protocol witness for CloudSubDB.hasCKRecord(_:) in conformance CloudRootDB(uint64_t a1)
{
  v6 = (*(**v1 + 576) + **(**v1 + 576));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for CloudSubDB.zoneNotFound(_:_:purged:) in conformance CloudSuggestionsDB;

  return v6(a1);
}

uint64_t protocol witness for CloudSubDB.dumpCKRecordIDsByZone() in conformance CloudRootDB()
{
  v4 = (*(**v0 + 584) + **(**v0 + 584));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = dispatch thunk of AssetViewModelRenderable.isReadyForDisplay();

  return v4();
}

uint64_t protocol witness for CloudSubDB.lookupCKRecord(_:) in conformance CloudRootDB(uint64_t a1)
{
  v6 = (*(**v1 + 592) + **(**v1 + 592));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for CloudSubDB.zoneNotFound(_:_:purged:) in conformance CloudSuggestionsDB;

  return v6(a1);
}

uint64_t protocol witness for CloudSubDB.modifyOrCreateCKRecord(_:force:) in conformance CloudRootDB(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 600) + **(**v2 + 600));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v8(a1, a2);
}

uint64_t protocol witness for CloudSubDB.zoneNotFound(_:_:purged:) in conformance CloudRootDB(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(**v3 + 608) + **(**v3 + 608));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = dispatch thunk of AssetViewModelRenderable.isReadyForDisplay();

  return v10(a1, a2, a3);
}

uint64_t protocol witness for CloudSubDB.clearCKRecord(_:) in conformance CloudRootDB(uint64_t a1)
{
  v6 = (*(**v1 + 616) + **(**v1 + 616));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v6(a1);
}

uint64_t protocol witness for CloudSubDB.deleteCKRecord(_:_:) in conformance CloudRootDB(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(**v3 + 624) + **(**v3 + 624));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v10(a1, a2, a3);
}

uint64_t protocol witness for CloudSubDB.deleteCKRecordZone(_:purged:) in conformance CloudRootDB(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 632) + **(**v2 + 632));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v8(a1, a2);
}

uint64_t protocol witness for CloudSubDB.modifyCKRecordZone(_:) in conformance CloudRootDB(uint64_t a1)
{
  v6 = (*(**v1 + 640) + **(**v1 + 640));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v6(a1);
}

uint64_t protocol witness for CloudSubDB.dumpRecord(_:) in conformance CloudRootDB(uint64_t a1)
{
  v6 = (*(**v1 + 648) + **(**v1 + 648));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of CloudSubDB.dumpRecord(_:);

  return v6(a1);
}

uint64_t specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return outlined init with take of MusicPlaybackCoordinatorDelegate(&v12, v10 + 40 * a1 + 32);
}

uint64_t specialized CloudRootDB.cloudManager.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  (*(*v2 + 664))();

  v5 = (*(*v2 + 472))(v4);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5 + 32;
    do
    {
      outlined init with copy of DBObject(v7, v13);
      v8 = v14;
      v9 = v15;
      __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
      v10 = *(v9 + 64);
      v11 = swift_unknownObjectRetain();
      v10(v11, a2, v8, v9);
      __swift_destroy_boxed_opaque_existential_1(v13);
      v7 += 40;
      --v6;
    }

    while (v6);
  }
}

uint64_t specialized static CloudRootDB.cloudRecordTypes.getter()
{
  if (one-time initialization token for modelTypes != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static CloudRootDB.modelTypes;
  v1 = *(static CloudRootDB.modelTypes + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v10;
    v3 = v0 + 40;
    do
    {
      v4 = (*(*v3 + 8))();
      v11 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        v7 = v4;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
        v4 = v7;
        v2 = v11;
      }

      *(v2 + 16) = v6 + 1;
      *(v2 + 8 * v6 + 32) = v4;
      v3 += 16;
      --v1;
    }

    while (v1);
  }

  v8 = specialized _copySequenceToContiguousArray<A>(_:)(v2);

  return v8;
}

BOOL specialized CloudRootDB.shouldNotifyObservers<A>(_:_:)(char a1, unsigned __int8 a2)
{
  v2 = a2 == 4 && a1 == 4;
  if (a1 != 4 && a2 != 4)
  {
    v2 = a2 == 3 && a1 == 3;
    if (a1 != 3 && a2 != 3)
    {
      v3 = 0xE900000000000064;
      if (a1)
      {
        if (a1 == 1)
        {
          v4 = 0x65696E6544636374;
          v5 = 0xE900000000000064;
          v6 = a2;
          if (!a2)
          {
LABEL_20:
            v3 = 0xE900000000000074;
            if (v4 != 0x754F64656E676973)
            {
              goto LABEL_25;
            }

            goto LABEL_23;
          }
        }

        else
        {
          v5 = 0xE800000000000000;
          v4 = 0x6E4964656E676973;
          v6 = a2;
          if (!a2)
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
        v5 = 0xE900000000000074;
        v4 = 0x754F64656E676973;
        v6 = a2;
        if (!a2)
        {
          goto LABEL_20;
        }
      }

      if (v6 == 1)
      {
        if (v4 != 0x65696E6544636374)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v3 = 0xE800000000000000;
        if (v4 != 0x6E4964656E676973)
        {
          goto LABEL_25;
        }
      }

LABEL_23:
      if (v5 == v3)
      {
        v2 = 1;
LABEL_26:

        return (v2 & 1) == 0;
      }

LABEL_25:
      v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_26;
    }
  }

  return (v2 & 1) == 0;
}

uint64_t partial apply for closure #1 in CloudRootDB._accountState.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC9MomentsUI11CloudRootDB___accountState;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t type metadata accessor for CloudRootDB()
{
  result = type metadata singleton initialization cache for CloudRootDB;
  if (!type metadata singleton initialization cache for CloudRootDB)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with take of CKSyncEngine.State.Serialization?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CloudKit12CKSyncEngineC5StateC13SerializationVSgMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of CKSyncEngine.State.Serialization?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CloudKit12CKSyncEngineC5StateC13SerializationVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Published<(CloudManagerAccountState?, CKRecordID?)>.Publisher and conformance Published<A>.Publisher()
{
  result = lazy protocol witness table cache variable for type Published<(CloudManagerAccountState?, CKRecordID?)>.Publisher and conformance Published<A>.Publisher;
  if (!lazy protocol witness table cache variable for type Published<(CloudManagerAccountState?, CKRecordID?)>.Publisher and conformance Published<A>.Publisher)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine9PublishedV9PublisherVy9MomentsUI24CloudManagerAccountStateOSg_So10CKRecordIDCSgt_GMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Published<(CloudManagerAccountState?, CKRecordID?)>.Publisher and conformance Published<A>.Publisher);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CKSyncEngine.State.Serialization? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type CKSyncEngine.State.Serialization? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type CKSyncEngine.State.Serialization? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s8CloudKit12CKSyncEngineC5StateC13SerializationVSgMd);
    lazy protocol witness table accessor for type CloudRootDB and conformance CloudRootDB(&lazy protocol witness table cache variable for type CKSyncEngine.State.Serialization and conformance CKSyncEngine.State.Serialization, MEMORY[0x277CBBD98]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CKSyncEngine.State.Serialization? and conformance <A> A?);
  }

  return result;
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, int a4, void *a5)
{
  v7 = a1 + 64;
  v8 = -1 << *(a1 + 32);
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v11 = (63 - v8) >> 6;

  v12 = 0;
  v38 = a5;
  v39 = v7;
  v37 = v11;
  while (v10)
  {
    v46 = a4;
    v13 = v12;
LABEL_14:
    v15 = __clz(__rbit64(v10)) | (v13 << 6);
    v16 = (*(a1 + 48) + 16 * v15);
    v17 = v16[1];
    v18 = *(*(a1 + 56) + 8 * v15);
    v45[0] = *v16;
    v45[1] = v17;
    v45[2] = v18;

    a2(&v42, v45);

    v19 = v42;
    v20 = v43;
    v21 = v44;
    v22 = *a5;
    v24 = specialized __RawDictionaryStorage.find<A>(_:)(v42, v43);
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (v22[3] >= v27)
    {
      if ((v46 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v27, v46 & 1);
      v29 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v20);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_27;
      }

      v24 = v29;
    }

    v10 &= v10 - 1;
    v31 = *a5;
    if (v28)
    {
      v45[0] = *(v31[7] + 8 * v24);

      specialized Array.append<A>(contentsOf:)(v21);

      *(v31[7] + 8 * v24) = v45[0];
    }

    else
    {
      v31[(v24 >> 6) + 8] |= 1 << v24;
      v32 = (v31[6] + 16 * v24);
      *v32 = v19;
      v32[1] = v20;
      *(v31[7] + 8 * v24) = v21;
      v33 = v31[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_26;
      }

      v31[2] = v35;
    }

    a4 = 1;
    v12 = v13;
    a5 = v38;
    v7 = v39;
    v11 = v37;
  }

  v14 = v12;
  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v11)
    {
      outlined consume of [String : DBAssetData].Iterator._Variant();
    }

    v10 = *(v7 + 8 * v13);
    ++v14;
    if (v10)
    {
      v46 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void type metadata completion function for CloudRootDB()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CKSyncEngine.State.Serialization?();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ObservationRegistrar();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of CloudRootDB.initialized()()
{
  v4 = (*(*v0 + 504) + **(*v0 + 504));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v4();
}

uint64_t dispatch thunk of CloudRootDB.cancelSync()()
{
  v4 = (*(*v0 + 512) + **(*v0 + 512));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = static Exif.filterImage(imageSource:outputURL:);

  return v4();
}

uint64_t dispatch thunk of CloudRootDB.refresh(force:)(uint64_t a1)
{
  v6 = (*(*v1 + 520) + **(*v1 + 520));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v6(a1);
}

uint64_t dispatch thunk of CloudRootDB.persistLocalData()()
{
  v4 = (*(*v0 + 528) + **(*v0 + 528));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v4();
}

uint64_t dispatch thunk of CloudRootDB.deleteLocalData()()
{
  v4 = (*(*v0 + 536) + **(*v0 + 536));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = static Exif.filterImage(imageSource:outputURL:);

  return v4();
}

uint64_t dispatch thunk of CloudRootDB.willFetchChanges()()
{
  v4 = (*(*v0 + 552) + **(*v0 + 552));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v4();
}

uint64_t dispatch thunk of CloudRootDB.willCheckpointChanges()()
{
  v4 = (*(*v0 + 560) + **(*v0 + 560));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v4();
}

uint64_t dispatch thunk of CloudRootDB.didFetchChanges()()
{
  v4 = (*(*v0 + 568) + **(*v0 + 568));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v4();
}

uint64_t dispatch thunk of CloudRootDB.hasCKRecord(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 576) + **(*v1 + 576));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for CloudSubDB.zoneNotFound(_:_:purged:) in conformance CloudSuggestionsDB;

  return v6(a1);
}

uint64_t dispatch thunk of CloudRootDB.dumpCKRecordIDsByZone()()
{
  v4 = (*(*v0 + 584) + **(*v0 + 584));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = dispatch thunk of AssetViewModelRenderable.isReadyForDisplay();

  return v4();
}

uint64_t dispatch thunk of CloudRootDB.lookupCKRecord(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 592) + **(*v1 + 592));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for CloudSubDB.zoneNotFound(_:_:purged:) in conformance CloudSuggestionsDB;

  return v6(a1);
}

uint64_t dispatch thunk of CloudRootDB.modifyOrCreateCKRecord(_:force:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 600) + **(*v2 + 600));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v8(a1, a2);
}

uint64_t dispatch thunk of CloudRootDB.zoneNotFound(_:_:purged:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 608) + **(*v3 + 608));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = dispatch thunk of AssetViewModelRenderable.isReadyForDisplay();

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of CloudRootDB.clearCKRecord(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 616) + **(*v1 + 616));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v6(a1);
}

uint64_t dispatch thunk of CloudRootDB.deleteCKRecord(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 624) + **(*v3 + 624));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of CloudRootDB.deleteCKRecordZone(_:purged:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 632) + **(*v2 + 632));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v8(a1, a2);
}

uint64_t dispatch thunk of CloudRootDB.modifyCKRecordZone(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 640) + **(*v1 + 640));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v6(a1);
}

uint64_t dispatch thunk of CloudRootDB.dumpRecord(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 648) + **(*v1 + 648));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of CloudSubDB.dumpRecord(_:);

  return v6(a1);
}

void type metadata accessor for CKSyncEngine.State.Serialization?()
{
  if (!lazy cache variable for type metadata for CKSyncEngine.State.Serialization?)
  {
    type metadata accessor for CKSyncEngine.State.Serialization();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CKSyncEngine.State.Serialization?);
    }
  }
}

uint64_t partial apply for closure #1 in CloudRootDB.accountStateSubscription.setter()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC9MomentsUI11CloudRootDB__accountStateSubscription) = *(v0 + 24);
}

uint64_t lazy protocol witness table accessor for type CloudRootDB and conformance CloudRootDB(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined assign with copy of CKSyncEngine.State.Serialization?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CloudKit12CKSyncEngineC5StateC13SerializationVSgMd);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in CloudRootDB._cloudManager.setter()
{
  return partial apply for closure #1 in CloudRootDB._cloudManager.setter();
}

{
  *(*(v0 + 16) + OBJC_IVAR____TtC9MomentsUI11CloudRootDB___cloudManager) = *(v0 + 24);
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t static CloudSyncSuggestion.Class.setter(char *a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  static CloudSyncSuggestion.Class = a1;
  unk_27CA92A58 = a2;
  byte_27CA92A60 = a3;
  return result;
}

uint64_t CloudSyncSuggestion.Log.unsafeMutableAddressor()
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static CloudSyncSuggestion.Log);
}

uint64_t static CloudSyncSuggestion.Log.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static CloudSyncSuggestion.Log);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static CloudSyncSuggestion.Log.setter(uint64_t a1)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static CloudSyncSuggestion.Log);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static CloudSyncSuggestion.Log.modify())()
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static CloudSyncSuggestion.Log);
  swift_beginAccess();
  return MutableVideoViewModel.video.modify;
}

uint64_t protocol witness for static CloudLog.Log.getter in conformance CloudSyncSuggestion@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static CloudSyncSuggestion.Log);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static CloudSyncSuggestion.productionSchema.getter()
{
  if (one-time initialization token for productionSchema != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static CloudSyncSuggestion.productionSchema.setter(uint64_t a1)
{
  if (one-time initialization token for productionSchema != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static CloudSyncSuggestion.productionSchema = a1;
}

uint64_t (*static CloudSyncSuggestion.productionSchema.modify())()
{
  if (one-time initialization token for productionSchema != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return MutableVideoViewModel.videoDurationSeconds.modify;
}

void static CloudSyncSuggestion.zoneName.getter()
{
  _StringGuts.grow(_:)(24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI19CloudSyncSuggestionCmMd);
  String.init<A>(describing:)();

  MEMORY[0x21CE92100](0xD000000000000016, 0x8000000216578720);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

CKRecordZoneID CloudSyncSuggestion.zoneID.getter()
{
  v1 = [v0 zoneName];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0xE000000000000000;
  }

  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordZoneID);
  v6._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6._object = v7;
  v8._countAndFlagsBits = v3;
  v8._object = v5;
  return CKRecordZoneID.init(zoneName:ownerName:)(v8, v6);
}

uint64_t static CloudSyncSuggestion.create(id:expiry:suggestionID:type:title:subtitle:prompt:startDate:endDate:rankingScore:baseScore:goodnessScore:visibilityCategoryInt:ordinalRankInRecommendedTab:assetsData:assetDataIDs:subTypeInt:isSensitive:zoneName:context:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(_BYTE *, uint64_t, uint64_t), uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, void (*a12)(_BYTE *, uint64_t), uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, unint64_t a25, uint64_t a26, uint64_t a27, unsigned __int8 a28, uint64_t a29, uint64_t a30, void *a31)
{
  v36 = a23 & 1;
  v35 = a20 & 1;
  v33 = a16 & 1;
  v34 = a18 & 1;

  return specialized static CloudSyncSuggestion.create(id:expiry:suggestionID:type:title:subtitle:prompt:startDate:endDate:rankingScore:baseScore:goodnessScore:visibilityCategoryInt:ordinalRankInRecommendedTab:assetsData:assetDataIDs:subTypeInt:isSensitive:zoneName:context:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, v33, a17, v34, a19, v35, a21, a22, v36, a24, a25, a26, a27, a28, a29, a30, a31);
}

void closure #1 in closure #1 in static CloudSyncSuggestion.create(id:expiry:suggestionID:type:title:subtitle:prompt:startDate:endDate:rankingScore:baseScore:goodnessScore:visibilityCategoryInt:ordinalRankInRecommendedTab:assetsData:assetDataIDs:subTypeInt:isSensitive:zoneName:context:)(uint64_t *a1, uint64_t a2, void **a3)
{
  v5 = *a1;
  v6 = MEMORY[0x21CE93DB0]();
  v25 = v5;
  v7 = specialized static DBAssetModelType.subscript.getter(&v25);

  v25 = v5;
  lazy protocol witness table accessor for type DBAssetModelType and conformance DBAssetModelType();
  v8 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v3)
  {

    v10 = -1;
  }

  else
  {
    v19 = v9 >> 62;
    if ((v9 >> 62) > 1)
    {
      if (v19 != 2)
      {
        outlined consume of Data._Representation(v8, v9);
        v10 = 0;
        goto LABEL_3;
      }

      v22 = *(v8 + 16);
      v21 = *(v8 + 24);
      v8 = outlined consume of Data._Representation(v8, v9);
      v10 = v21 - v22;
      if (!__OFSUB__(v21, v22))
      {
        goto LABEL_3;
      }

      __break(1u);
    }

    else if (!v19)
    {
      v20 = BYTE6(v9);
      outlined consume of Data._Representation(v8, v9);
      v10 = v20;
      goto LABEL_3;
    }

    v23 = HIDWORD(v8);
    v24 = v8;
    outlined consume of Data._Representation(v8, v9);
    if (__OFSUB__(v23, v24))
    {
      __break(1u);
      return;
    }

    v10 = v23 - v24;
  }

LABEL_3:
  v11 = DBAssetModelEnum.rawValue.getter(v7);
  v13 = v12;
  v14 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14[2] + 1, 1, v14);
    *a3 = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v14);
    *a3 = v14;
  }

  v14[2] = v17 + 1;
  v18 = &v14[3 * v17];
  v18[4] = v11;
  v18[5] = v13;
  v18[6] = v10;
  objc_autoreleasePoolPop(v6);
}

id static CloudSyncSuggestion.create(_:context:)(void *a1, uint64_t a2)
{
  type metadata accessor for CloudSyncSuggestion();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  CloudSyncSuggestion._populateObject(_:)(a1);
  if (v2)
  {
  }

  else
  {
    v6 = a1;
    CloudSyncSuggestion.lastKnownCKRecord.setter(a1);
  }

  return v5;
}

void CloudSyncSuggestion._populateObject(_:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v95 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v95 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v95 - v10;
  v12 = type metadata accessor for Date();
  v96 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 recordID];
  v16 = [v15 recordName];

  if (!v16)
  {
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = MEMORY[0x21CE91FC0](v17);
  }

  [v2 setId_];

  v18 = [a1 recordID];
  v19 = [v18 zoneID];

  v20 = [v19 zoneName];
  if (!v20)
  {
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = MEMORY[0x21CE91FC0](v21);
  }

  [v2 setZoneName_];

  v22 = [a1 expirationDate];
  if (v22)
  {
    v23 = v22;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v24.super.isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v96 + 8))(v14, v12);
  }

  else
  {
    v24.super.isa = 0;
  }

  [v2 setExpiry_];

  v25 = [a1 encryptedValues];
  v26 = MEMORY[0x21CE91FC0](0x6974736567677573, 0xEC00000044496E6FLL);
  v27 = [v25 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (!v27)
  {
    goto LABEL_12;
  }

  v99 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v29 = v97;
  v28 = v98;
  UUID.init(uuidString:)();
  v30 = type metadata accessor for UUID();
  if ((*(*(v30 - 8) + 48))(v11, 1, v30) == 1)
  {

    outlined destroy of UTType?(v11, &_s10Foundation4UUIDVSgMd);
LABEL_12:
    type metadata accessor for related decl 'e' for CKErrorCode(0);
    v99 = 12;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    lazy protocol witness table accessor for type CloudSyncSuggestion and conformance CloudSyncSuggestion(&lazy protocol witness table cache variable for type related decl 'e' for CKErrorCode and conformance related decl 'e' for CKErrorCode, type metadata accessor for related decl 'e' for CKErrorCode);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    return;
  }

  outlined destroy of UTType?(v11, &_s10Foundation4UUIDVSgMd);
  v31 = MEMORY[0x21CE91FC0](v29, v28);

  [v2 setSuggestionID_];

  v32 = [a1 encryptedValues];
  v33 = MEMORY[0x21CE91FC0](1701869940, 0xE400000000000000);
  v34 = [v32 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v34)
  {
    v97 = v34;
    swift_dynamicCast();
  }

  isa = Int64._bridgeToObjectiveC()().super.super.isa;
  [v2 setType_];

  v36 = [a1 encryptedValues];
  v37 = MEMORY[0x21CE91FC0](0x656C746974, 0xE500000000000000);
  v38 = [v36 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v38)
  {
    v99 = v38;
    if (swift_dynamicCast())
    {
      v38 = MEMORY[0x21CE91FC0](v97, v98);
    }

    else
    {
      v38 = 0;
    }
  }

  [v2 setTitle_];

  v39 = [a1 encryptedValues];
  v40 = MEMORY[0x21CE91FC0](0x656C746974627573, 0xE800000000000000);
  v41 = [v39 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v41)
  {
    v99 = v41;
    if (swift_dynamicCast())
    {
      v41 = MEMORY[0x21CE91FC0](v97, v98);
    }

    else
    {
      v41 = 0;
    }
  }

  [v2 setSubtitle_];

  v42 = [a1 encryptedValues];
  v43 = MEMORY[0x21CE91FC0](0x74706D6F7270, 0xE600000000000000);
  v44 = [v42 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v44)
  {
    v99 = v44;
    if (swift_dynamicCast())
    {
      v44 = MEMORY[0x21CE91FC0](v97, v98);
    }

    else
    {
      v44 = 0;
    }
  }

  [v2 setPrompt_];

  v45 = [a1 encryptedValues];
  v46 = MEMORY[0x21CE91FC0](0x7461447472617473, 0xE900000000000065);
  v47 = [v45 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v47)
  {
    v97 = v47;
    v48 = swift_dynamicCast();
    v49 = v96;
    v50 = *(v96 + 56);
    v50(v8, v48 ^ 1u, 1, v12);
    if ((*(v49 + 48))(v8, 1, v12) == 1)
    {
      v47 = 0;
    }

    else
    {
      v47 = Date._bridgeToObjectiveC()().super.isa;
      (*(v49 + 8))(v8, v12);
    }
  }

  else
  {
    v50 = *(v96 + 56);
    v50(v8, 1, 1, v12);
  }

  [v2 setStartDate_];

  v51 = [a1 encryptedValues];
  v52 = MEMORY[0x21CE91FC0](0x65746144646E65, 0xE700000000000000);
  v53 = [v51 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v53)
  {
    v97 = v53;
    v54 = v95;
    v55 = swift_dynamicCast();
    v56 = v96;
    v50(v54, v55 ^ 1u, 1, v12);
    if ((*(v56 + 48))(v54, 1, v12) == 1)
    {
      v53 = 0;
    }

    else
    {
      v53 = Date._bridgeToObjectiveC()().super.isa;
      (*(v56 + 8))(v54, v12);
    }
  }

  else
  {
    v50(v95, 1, 1, v12);
  }

  [v2 setEndDate_];

  v57 = [a1 encryptedValues];
  v58 = MEMORY[0x21CE91FC0](0x53676E696B6E6172, 0xEC00000065726F63);
  v59 = [v57 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v59)
  {
    v97 = v59;
    swift_dynamicCast();
  }

  v60 = CGFloat._bridgeToObjectiveC()().super.super.isa;
  [v2 setRankingScore_];

  v61 = [a1 encryptedValues];
  v62 = MEMORY[0x21CE91FC0](0x726F635365736162, 0xE900000000000065);
  v63 = [v61 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v63)
  {
    v97 = v63;
    swift_dynamicCast();
  }

  v64 = CGFloat._bridgeToObjectiveC()().super.super.isa;
  [v2 setBaseScore_];

  v65 = [a1 encryptedValues];
  v66 = MEMORY[0x21CE91FC0](0x7373656E646F6F67, 0xED000065726F6353);
  v67 = [v65 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v67)
  {
    v97 = v67;
    swift_dynamicCast();
  }

  v68 = CGFloat._bridgeToObjectiveC()().super.super.isa;
  [v2 setGoodnessScore_];

  v69 = [a1 encryptedValues];
  v70 = MEMORY[0x21CE91FC0](0xD000000000000015, 0x800000021657BB10);
  v71 = [v69 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v71)
  {
    v97 = v71;
    swift_dynamicCast();
  }

  v72 = Int64._bridgeToObjectiveC()().super.super.isa;
  [v2 setVisibilityCategoryInt_];

  v73 = [a1 encryptedValues];
  v74 = MEMORY[0x21CE91FC0](0xD00000000000001BLL, 0x80000002165752F0);
  v75 = [v73 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v75)
  {
    v97 = v75;
    swift_dynamicCast();
  }

  v76 = Int64._bridgeToObjectiveC()().super.super.isa;
  [v2 setOrdinalRankInRecommendedTab_];

  v77 = [a1 encryptedValues];
  v78 = MEMORY[0x21CE91FC0](0x6144737465737361, 0xEA00000000006174);
  v79 = [v77 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v79)
  {
    v99 = v79;
    if (swift_dynamicCast())
    {
      v80 = v97;
      v81 = v98;
      v79 = Data._bridgeToObjectiveC()().super.isa;
      outlined consume of Data._Representation(v80, v81);
    }

    else
    {
      v79 = 0;
    }
  }

  [v2 setAssetsData_];

  v82 = [a1 encryptedValues];
  v83 = MEMORY[0x21CE91FC0](0x7344497465737361, 0xEC00000061746144);
  v84 = [v82 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v84)
  {
    v99 = v84;
    if (swift_dynamicCast())
    {
      v85 = v97;
      v86 = v98;
      v84 = Data._bridgeToObjectiveC()().super.isa;
      outlined consume of Data._Representation(v85, v86);
    }

    else
    {
      v84 = 0;
    }
  }

  [v2 setAssetIDsData_];

  v87 = [a1 encryptedValues];
  v88 = MEMORY[0x21CE91FC0](0x4965707954627573, 0xEA0000000000746ELL);
  v89 = [v87 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v89)
  {
    v97 = v89;
    swift_dynamicCast();
  }

  v90 = Int64._bridgeToObjectiveC()().super.super.isa;
  [v2 setSubTypeInt_];

  v91 = [a1 encryptedValues];
  v92 = MEMORY[0x21CE91FC0](0x7469736E65537369, 0xEB00000000657669);
  v93 = [v91 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v93)
  {
    v97 = v93;
    swift_dynamicCast();
  }

  v94 = Bool._bridgeToObjectiveC()().super.super.isa;
  [v2 setIsSensitive_];
}

uint64_t CloudSyncSuggestion.lastKnownCKRecord.setter(void *a1)
{
  v2 = v1;
  v41 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSg_AA4DateVSgtMd);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v39 = &v38 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSg_AA4DateVSgtSgMd);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = (&v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v17 = (&v38 - v16);
  v18 = [v1 lastKnownCKRecordData];
  if (v18)
  {
    v19 = v18;
    v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0xF000000000000000;
  }

  v23 = [v2 lastKnownCKRecordSync];
  v40 = v2;
  if (v23)
  {
    v24 = v23;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = type metadata accessor for Date();
    (*(*(v25 - 8) + 56))(v11, 0, 1, v25);
  }

  else
  {
    v26 = type metadata accessor for Date();
    (*(*(v26 - 8) + 56))(v11, 1, 1, v26);
  }

  type metadata accessor for CloudSyncDB();
  v27 = v41;
  static CloudSyncDB.setCKRecord(oldData:oldDate:newValue:)(v20, v22, v41, v17);
  outlined consume of Data?(v20, v22);
  outlined destroy of UTType?(v11, &_s10Foundation4DateVSgMd);
  outlined init with copy of DateInterval?(v17, v15, &_s10Foundation4DataVSg_AA4DateVSgtSgMd);
  if ((*(v4 + 48))(v15, 1, v3) == 1)
  {
    outlined destroy of UTType?(v17, &_s10Foundation4DataVSg_AA4DateVSgtSgMd);

    v17 = v15;
  }

  else
  {
    v28 = v39;
    outlined init with take of URL?(v15, v39, &_s10Foundation4DataVSg_AA4DateVSgtMd);
    outlined init with copy of DateInterval?(v28, v7, &_s10Foundation4DataVSg_AA4DateVSgtMd);
    v29 = v7[1];
    if (v29 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      v31 = *v7;
      isa = Data._bridgeToObjectiveC()().super.isa;
      outlined consume of Data?(v31, v29);
    }

    v32 = v41;
    v33 = *(v3 + 48);
    [v40 setLastKnownCKRecordData_];

    v34 = type metadata accessor for Date();
    v35 = *(v34 - 8);
    v36 = 0;
    if ((*(v35 + 48))(v7 + v33, 1, v34) != 1)
    {
      v36 = Date._bridgeToObjectiveC()().super.isa;
      (*(v35 + 8))(v7 + v33, v34);
    }

    [v40 setLastKnownCKRecordSync_];

    outlined destroy of UTType?(v28, &_s10Foundation4DataVSg_AA4DateVSgtMd);
  }

  return outlined destroy of UTType?(v17, &_s10Foundation4DataVSg_AA4DateVSgtSgMd);
}

uint64_t closure #1 in CloudSyncSuggestion.mergeFromServerRecord(_:force:primary:primaryID:blobFolderURL:cloudManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](closure #1 in CloudSyncSuggestion.mergeFromServerRecord(_:force:primary:primaryID:blobFolderURL:cloudManager:), 0, 0);
}

uint64_t closure #1 in CloudSyncSuggestion.mergeFromServerRecord(_:force:primary:primaryID:blobFolderURL:cloudManager:)()
{
  v1 = v0[4];
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8CloudKit12CKSyncEngineC23PendingRecordZoneChangeOGMd);
  v3 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  v0[5] = v6;
  *(v6 + 16) = xmmword_21658CA50;
  (*(v4 + 16))(v6 + v5, v1, v3);
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = closure #1 in CloudSyncAssetData.mergeFromServerRecord(_:force:primary:primaryID:blobFolderURL:cloudManager:);
  v8 = v0[3];

  return CloudManagerProtocol.add(pendingRecordZoneChanges:_:_:)(v6, 0xD00000000000004CLL, 0x8000000216578810, 534, ObjectType, v8);
}

Swift::Void __swiftcall CloudSyncSuggestion.populateRecord(_:)(CKRecord a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v179 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v173 = &v169 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v169 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v177 = &v169 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v169 - v13;
  MEMORY[0x28223BE20](v12);
  v175 = &v169 - v15;
  v16 = type metadata accessor for Logger();
  v180 = *(v16 - 8);
  v181 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v178 = &v169 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v169 - v19;
  v21 = [v2 zoneName];
  v176 = v9;
  v174 = v14;
  if (v21)
  {
    v22 = v21;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0;
  }

  v26 = [(objc_class *)a1.super.isa recordID];
  v27 = [v26 zoneID];

  v28 = [v27 zoneName];
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  if (!v25)
  {

    v32 = v180;
LABEL_10:
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v34 = v181;
    v35 = __swift_project_value_buffer(v181, static CloudSyncSuggestion.Log);
    swift_beginAccess();
    (*(v32 + 16))(v20, v35, v34);
    v36 = a1.super.isa;
    v37 = v2;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v171 = v39;
      v172 = v4;
      v40 = swift_slowAlloc();
      v170 = swift_slowAlloc();
      *&v183 = v170;
      *v40 = 136446978;
      *(v40 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x80000002165787D0, &v183);
      *(v40 + 12) = 2080;
      v41 = [(objc_class *)v36 recordID];
      v42 = [v41 recordName];

      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;

      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, &v183);

      *(v40 + 14) = v46;
      *(v40 + 22) = 2080;
      v47 = [(objc_class *)v36 recordID];
      v48 = [v47 zoneID];

      v49 = [v48 zoneName];
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;

      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, &v183);

      *(v40 + 24) = v53;
      *(v40 + 32) = 2080;
      v54 = [v37 zoneName];
      if (v54)
      {
        v55 = v54;
        v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v58 = v57;
      }

      else
      {
        v58 = 0xE500000000000000;
        v56 = 0x3E6C696E3CLL;
      }

      v4 = v172;
      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, &v183);

      *(v40 + 34) = v60;
      _os_log_impl(&dword_21607C000, v38, v171, "CloudSyncSuggestion.%{public}s Populating record %s for wrong zone %s, expected %s", v40, 0x2Au);
      v61 = v170;
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v61, -1, -1);
      MEMORY[0x21CE94770](v40, -1, -1);

      v59 = v180;
    }

    else
    {

      v59 = v32;
    }

    (*(v59 + 8))(v20, v181);
    goto LABEL_19;
  }

  v32 = v180;
  if (v23 == v29 && v25 == v31)
  {

    goto LABEL_19;
  }

  v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v33 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_19:
  v62 = [v2 suggestionID];
  if (v62)
  {
    v63 = v62;
    v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v66 = v65;

    v67 = MEMORY[0x277CBBE08];
    v68 = MEMORY[0x277D837D0];
  }

  else
  {
    v64 = 0;
    v66 = 0;
    v68 = 0;
    v67 = 0;
    *&v184 = 0;
  }

  v70 = v174;
  v69 = v175;
  *&v183 = v64;
  *(&v183 + 1) = v66;
  *(&v184 + 1) = v68;
  v185 = v67;
  _s9MomentsUI11CloudRecordPAAE18_setEncryptedValueyySo8CKRecordC_SS0C3Kit0hG8Protocol_pSgtFAA0C14SyncSuggestionC_Tt2g5(a1.super.isa, 0x6974736567677573, 0xEC00000044496E6FLL, &v183);
  outlined destroy of UTType?(&v183, &_s8CloudKit21CKRecordValueProtocol_pSgMd);
  v71 = [v2 type];
  v72 = v71;
  if (v71)
  {
    v71 = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSNumber);
    v73 = MEMORY[0x277CBBED8];
  }

  else
  {
    v73 = 0;
    *(&v183 + 1) = 0;
    *&v184 = 0;
  }

  *&v183 = v72;
  *(&v184 + 1) = v71;
  v185 = v73;
  _s9MomentsUI11CloudRecordPAAE18_setEncryptedValueyySo8CKRecordC_SS0C3Kit0hG8Protocol_pSgtFAA0C14SyncSuggestionC_Tt2g5(a1.super.isa, 1701869940, 0xE400000000000000, &v183);
  outlined destroy of UTType?(&v183, &_s8CloudKit21CKRecordValueProtocol_pSgMd);
  v74 = [v2 title];
  if (v74)
  {
    v75 = v74;
    v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v78 = v77;

    v79 = MEMORY[0x277CBBE08];
    v80 = MEMORY[0x277D837D0];
  }

  else
  {
    v76 = 0;
    v78 = 0;
    v80 = 0;
    v79 = 0;
    *&v184 = 0;
  }

  *&v183 = v76;
  *(&v183 + 1) = v78;
  *(&v184 + 1) = v80;
  v185 = v79;
  _s9MomentsUI11CloudRecordPAAE18_setEncryptedValueyySo8CKRecordC_SS0C3Kit0hG8Protocol_pSgtFAA0C14SyncSuggestionC_Tt2g5(a1.super.isa, 0x656C746974, 0xE500000000000000, &v183);
  outlined destroy of UTType?(&v183, &_s8CloudKit21CKRecordValueProtocol_pSgMd);
  v81 = [v2 subtitle];
  if (v81)
  {
    v82 = v81;
    v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v85 = v84;

    v86 = MEMORY[0x277CBBE08];
    v87 = MEMORY[0x277D837D0];
  }

  else
  {
    v83 = 0;
    v85 = 0;
    v87 = 0;
    v86 = 0;
    *&v184 = 0;
  }

  *&v183 = v83;
  *(&v183 + 1) = v85;
  *(&v184 + 1) = v87;
  v185 = v86;
  _s9MomentsUI11CloudRecordPAAE18_setEncryptedValueyySo8CKRecordC_SS0C3Kit0hG8Protocol_pSgtFAA0C14SyncSuggestionC_Tt2g5(a1.super.isa, 0x656C746974627573, 0xE800000000000000, &v183);
  outlined destroy of UTType?(&v183, &_s8CloudKit21CKRecordValueProtocol_pSgMd);
  v88 = [v2 prompt];
  if (v88)
  {
    v89 = v88;
    v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v92 = v91;

    v93 = MEMORY[0x277CBBE08];
    v94 = MEMORY[0x277D837D0];
  }

  else
  {
    v90 = 0;
    v92 = 0;
    v94 = 0;
    v93 = 0;
    *&v184 = 0;
  }

  *&v183 = v90;
  *(&v183 + 1) = v92;
  *(&v184 + 1) = v94;
  v185 = v93;
  _s9MomentsUI11CloudRecordPAAE18_setEncryptedValueyySo8CKRecordC_SS0C3Kit0hG8Protocol_pSgtFAA0C14SyncSuggestionC_Tt2g5(a1.super.isa, 0x74706D6F7270, 0xE600000000000000, &v183);
  outlined destroy of UTType?(&v183, &_s8CloudKit21CKRecordValueProtocol_pSgMd);
  v95 = [v2 startDate];
  if (v95)
  {
    v96 = v95;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v97 = 0;
  }

  else
  {
    v97 = 1;
  }

  v98 = v179;
  v99 = *(v179 + 56);
  v99(v70, v97, 1, v4);
  outlined init with take of URL?(v70, v69, &_s10Foundation4DateVSgMd);
  v100 = *(v98 + 48);
  v101 = v100(v69, 1, v4);
  v102 = MEMORY[0x277CBBBE8];
  if (v101 == 1)
  {
    outlined destroy of UTType?(v69, &_s10Foundation4DateVSgMd);
    v183 = 0u;
    v184 = 0u;
    v185 = 0;
  }

  else
  {
    *(&v184 + 1) = v4;
    v185 = MEMORY[0x277CBBBE8];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v183);
    (*(v98 + 32))(boxed_opaque_existential_1, v69, v4);
  }

  _s9MomentsUI11CloudRecordPAAE18_setEncryptedValueyySo8CKRecordC_SS0C3Kit0hG8Protocol_pSgtFAA0C14SyncSuggestionC_Tt2g5(a1.super.isa, 0x7461447472617473, 0xE900000000000065, &v183);
  outlined destroy of UTType?(&v183, &_s8CloudKit21CKRecordValueProtocol_pSgMd);
  v104 = [v2 endDate];
  if (v104)
  {
    v105 = v176;
    v106 = v104;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v98 = v179;
    v107 = 0;
  }

  else
  {
    v107 = 1;
    v105 = v176;
  }

  v99(v105, v107, 1, v4);
  v108 = v177;
  outlined init with take of URL?(v105, v177, &_s10Foundation4DateVSgMd);
  if (v100(v108, 1, v4) == 1)
  {
    outlined destroy of UTType?(v108, &_s10Foundation4DateVSgMd);
    v183 = 0u;
    v184 = 0u;
    v185 = 0;
  }

  else
  {
    *(&v184 + 1) = v4;
    v185 = v102;
    v109 = __swift_allocate_boxed_opaque_existential_1(&v183);
    (*(v98 + 32))(v109, v108, v4);
  }

  v110 = v180;
  _s9MomentsUI11CloudRecordPAAE18_setEncryptedValueyySo8CKRecordC_SS0C3Kit0hG8Protocol_pSgtFAA0C14SyncSuggestionC_Tt2g5(a1.super.isa, 0x65746144646E65, 0xE700000000000000, &v183);
  outlined destroy of UTType?(&v183, &_s8CloudKit21CKRecordValueProtocol_pSgMd);
  v111 = [v2 rankingScore];
  v112 = v111;
  if (v111)
  {
    v111 = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSNumber);
    v113 = MEMORY[0x277CBBED8];
  }

  else
  {
    v113 = 0;
    *(&v183 + 1) = 0;
    *&v184 = 0;
  }

  *&v183 = v112;
  *(&v184 + 1) = v111;
  v185 = v113;
  _s9MomentsUI11CloudRecordPAAE18_setEncryptedValueyySo8CKRecordC_SS0C3Kit0hG8Protocol_pSgtFAA0C14SyncSuggestionC_Tt2g5(a1.super.isa, 0x53676E696B6E6172, 0xEC00000065726F63, &v183);
  outlined destroy of UTType?(&v183, &_s8CloudKit21CKRecordValueProtocol_pSgMd);
  v114 = [v2 baseScore];
  v115 = v114;
  if (v114)
  {
    v114 = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSNumber);
    v116 = MEMORY[0x277CBBED8];
  }

  else
  {
    v116 = 0;
    *(&v183 + 1) = 0;
    *&v184 = 0;
  }

  *&v183 = v115;
  *(&v184 + 1) = v114;
  v185 = v116;
  _s9MomentsUI11CloudRecordPAAE18_setEncryptedValueyySo8CKRecordC_SS0C3Kit0hG8Protocol_pSgtFAA0C14SyncSuggestionC_Tt2g5(a1.super.isa, 0x726F635365736162, 0xE900000000000065, &v183);
  outlined destroy of UTType?(&v183, &_s8CloudKit21CKRecordValueProtocol_pSgMd);
  v117 = [v2 goodnessScore];
  v118 = v117;
  if (v117)
  {
    v117 = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSNumber);
    v119 = MEMORY[0x277CBBED8];
  }

  else
  {
    v119 = 0;
    *(&v183 + 1) = 0;
    *&v184 = 0;
  }

  *&v183 = v118;
  *(&v184 + 1) = v117;
  v185 = v119;
  _s9MomentsUI11CloudRecordPAAE18_setEncryptedValueyySo8CKRecordC_SS0C3Kit0hG8Protocol_pSgtFAA0C14SyncSuggestionC_Tt2g5(a1.super.isa, 0x7373656E646F6F67, 0xED000065726F6353, &v183);
  outlined destroy of UTType?(&v183, &_s8CloudKit21CKRecordValueProtocol_pSgMd);
  v120 = [v2 visibilityCategoryInt];
  v121 = v120;
  if (v120)
  {
    v120 = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSNumber);
    v122 = MEMORY[0x277CBBED8];
  }

  else
  {
    v122 = 0;
    *(&v183 + 1) = 0;
    *&v184 = 0;
  }

  *&v183 = v121;
  *(&v184 + 1) = v120;
  v185 = v122;
  _s9MomentsUI11CloudRecordPAAE18_setEncryptedValueyySo8CKRecordC_SS0C3Kit0hG8Protocol_pSgtFAA0C14SyncSuggestionC_Tt2g5(a1.super.isa, 0xD000000000000015, 0x800000021657BB10, &v183);
  outlined destroy of UTType?(&v183, &_s8CloudKit21CKRecordValueProtocol_pSgMd);
  v123 = [v2 ordinalRankInRecommendedTab];
  v124 = v123;
  if (v123)
  {
    v123 = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSNumber);
    v125 = MEMORY[0x277CBBED8];
  }

  else
  {
    v125 = 0;
    *(&v183 + 1) = 0;
    *&v184 = 0;
  }

  *&v183 = v124;
  *(&v184 + 1) = v123;
  v185 = v125;
  _s9MomentsUI11CloudRecordPAAE18_setEncryptedValueyySo8CKRecordC_SS0C3Kit0hG8Protocol_pSgtFAA0C14SyncSuggestionC_Tt2g5(a1.super.isa, 0xD00000000000001BLL, 0x80000002165752F0, &v183);
  outlined destroy of UTType?(&v183, &_s8CloudKit21CKRecordValueProtocol_pSgMd);
  v126 = [v2 assetsData];
  if (v126)
  {
    v127 = v126;
    v128 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v130 = v129;

    v131 = MEMORY[0x277CBBBE0];
    v132 = MEMORY[0x277CC9318];
  }

  else
  {
    v128 = 0;
    v130 = 0;
    v132 = 0;
    v131 = 0;
    *&v184 = 0;
  }

  *&v183 = v128;
  *(&v183 + 1) = v130;
  *(&v184 + 1) = v132;
  v185 = v131;
  _s9MomentsUI11CloudRecordPAAE18_setEncryptedValueyySo8CKRecordC_SS0C3Kit0hG8Protocol_pSgtFAA0C14SyncSuggestionC_Tt2g5(a1.super.isa, 0x6144737465737361, 0xEA00000000006174, &v183);
  outlined destroy of UTType?(&v183, &_s8CloudKit21CKRecordValueProtocol_pSgMd);
  v133 = [v2 assetIDsData];
  if (v133)
  {
    v134 = v133;
    v135 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v137 = v136;

    v138 = MEMORY[0x277CBBBE0];
    v139 = MEMORY[0x277CC9318];
  }

  else
  {
    v135 = 0;
    v137 = 0;
    v139 = 0;
    v138 = 0;
    *&v184 = 0;
  }

  *&v183 = v135;
  *(&v183 + 1) = v137;
  *(&v184 + 1) = v139;
  v185 = v138;
  _s9MomentsUI11CloudRecordPAAE18_setEncryptedValueyySo8CKRecordC_SS0C3Kit0hG8Protocol_pSgtFAA0C14SyncSuggestionC_Tt2g5(a1.super.isa, 0x7344497465737361, 0xEC00000061746144, &v183);
  outlined destroy of UTType?(&v183, &_s8CloudKit21CKRecordValueProtocol_pSgMd);
  v140 = [v2 subTypeInt];
  v141 = v140;
  if (v140)
  {
    v140 = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSNumber);
    v142 = MEMORY[0x277CBBED8];
  }

  else
  {
    v142 = 0;
    *(&v183 + 1) = 0;
    *&v184 = 0;
  }

  v143 = v178;
  *&v183 = v141;
  *(&v184 + 1) = v140;
  v185 = v142;
  _s9MomentsUI11CloudRecordPAAE18_setEncryptedValueyySo8CKRecordC_SS0C3Kit0hG8Protocol_pSgtFAA0C14SyncSuggestionC_Tt2g5(a1.super.isa, 0x4965707954627573, 0xEA0000000000746ELL, &v183);
  outlined destroy of UTType?(&v183, &_s8CloudKit21CKRecordValueProtocol_pSgMd);
  v144 = [v2 isSensitive];
  v145 = v144;
  if (v144)
  {
    v144 = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSNumber);
    v146 = MEMORY[0x277CBBED8];
  }

  else
  {
    v146 = 0;
    *(&v183 + 1) = 0;
    *&v184 = 0;
  }

  *&v183 = v145;
  *(&v184 + 1) = v144;
  v185 = v146;
  _s9MomentsUI11CloudRecordPAAE18_setEncryptedValueyySo8CKRecordC_SS0C3Kit0hG8Protocol_pSgtFAA0C14SyncSuggestionC_Tt2g5(a1.super.isa, 0x7469736E65537369, 0xEB00000000657669, &v183);
  outlined destroy of UTType?(&v183, &_s8CloudKit21CKRecordValueProtocol_pSgMd);
  v147 = [v2 expiry];
  if (v147)
  {
    v148 = v173;
    v149 = v147;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    Date.timeIntervalSinceNow.getter();
    v151 = v150;
    (*(v179 + 8))(v148, v4);
  }

  else
  {
    v152 = COERCE_DOUBLE(specialized static DefaultsManager.MomentsUIDomain.doubleValueFor(_:)());
    if (v153)
    {
      v151 = 2419200.0;
    }

    else
    {
      v151 = v152;
    }
  }

  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v154 = v181;
  v155 = __swift_project_value_buffer(v181, static CloudSyncSuggestion.Log);
  swift_beginAccess();
  (*(v110 + 16))(v143, v155, v154);
  v156 = a1.super.isa;
  v157 = Logger.logObject.getter();
  v158 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v157, v158))
  {
    v159 = v143;
    v160 = swift_slowAlloc();
    v161 = swift_slowAlloc();
    v182 = v161;
    *v160 = 136446722;
    *(v160 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x80000002165787D0, &v182);
    *(v160 + 12) = 2080;
    v162 = [(objc_class *)v156 recordID];
    v163 = [v162 recordName];

    v164 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v166 = v165;

    v167 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v164, v166, &v182);

    *(v160 + 14) = v167;
    *(v160 + 22) = 2048;
    *(v160 + 24) = v151;
    _os_log_impl(&dword_21607C000, v157, v158, "CloudSyncSuggestion.%{public}s Setting TTL for record %s to %f seconds", v160, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v161, -1, -1);
    MEMORY[0x21CE94770](v160, -1, -1);

    (*(v110 + 8))(v159, v181);
  }

  else
  {

    (*(v110 + 8))(v143, v181);
  }

  isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
  [(objc_class *)v156 setExpirationAfterTimeInterval:isa];
}

uint64_t static CloudSyncSuggestion.dumpRecord(_:)()
{
  v0 = [swift_getObjCClassFromMetadata() description];
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v1;
}

id CloudSyncSuggestion.lastKnownCKRecord.getter()
{
  v1 = [v0 lastKnownCKRecordData];
  if (v1)
  {
    v2 = v1;
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0xF000000000000000;
  }

  v6 = specialized static CloudSyncDB.getCKRecord(_:)(v3, v5);
  outlined consume of Data?(v3, v5);
  return v6;
}

void (*CloudSyncSuggestion.lastKnownCKRecord.modify(void *a1))(void **a1, char a2)
{
  a1[1] = v1;
  v3 = [v1 lastKnownCKRecordData];
  if (v3)
  {
    v4 = v3;
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  v8 = specialized static CloudSyncDB.getCKRecord(_:)(v5, v7);
  outlined consume of Data?(v5, v7);
  *a1 = v8;
  return CloudSyncSuggestion.lastKnownCKRecord.modify;
}

void CloudSyncSuggestion.lastKnownCKRecord.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    CloudSyncSuggestion.lastKnownCKRecord.setter(v2);
  }

  else
  {
    CloudSyncSuggestion.lastKnownCKRecord.setter(*a1);
  }
}

uint64_t protocol witness for static CloudRecord.productionSchema.getter in conformance CloudSyncSuggestion()
{
  if (one-time initialization token for productionSchema != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

void (*protocol witness for CloudRecord.lastKnownCKRecord.modify in conformance CloudSyncSuggestion(void *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = CloudSyncSuggestion.lastKnownCKRecord.modify(v2);
  return protocol witness for CloudRecord.lastKnownCKRecord.modify in conformance CloudSyncAssetData;
}

BOOL specialized static CloudSyncSuggestion.< infix(_:_:)(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v18 - v5;
  v7 = [a1 id];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v18[2] = v8;
  v18[3] = v10;
  v11 = [a2 id];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v18[0] = v12;
  v18[1] = v14;
  v15 = type metadata accessor for Locale();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  lazy protocol witness table accessor for type String and conformance String();
  v16 = StringProtocol.compare<A>(_:options:range:locale:)();
  outlined destroy of UTType?(v6, &_s10Foundation6LocaleVSgMd);

  return v16 == -1;
}

uint64_t specialized Sequence.forEach(_:)(uint64_t result, uint64_t a2, void **a3)
{
  v4 = *(result + 16);
  if (v4)
  {
    v7 = (result + 32);
    v8 = v4 - 1;
    do
    {
      v9 = v8;
      v10 = *v7++;
      v11 = v10;

      closure #1 in closure #1 in static CloudSyncSuggestion.create(id:expiry:suggestionID:type:title:subtitle:prompt:startDate:endDate:rankingScore:baseScore:goodnessScore:visibilityCategoryInt:ordinalRankInRecommendedTab:assetsData:assetDataIDs:subTypeInt:isSensitive:zoneName:context:)(&v11, a2, a3);

      if (v3)
      {
        break;
      }

      v8 = v9 - 1;
    }

    while (v9);
  }

  return result;
}

unint64_t specialized Sequence.forEach(_:)(unint64_t result, uint64_t a2, void **a3)
{
  v3 = result;
  if (result >> 62)
  {
    goto LABEL_20;
  }

  v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v16 = v3 & 0xFFFFFFFFFFFFFF8;
      v17 = v3 & 0xC000000000000001;
      v15 = v3;
      while (v17)
      {
        v6 = MEMORY[0x21CE93180](v5, v3);
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_18;
        }

LABEL_7:
        v20 = MEMORY[0x277D84F90];
        if (*(v6 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations))
        {
          v8 = *(v6 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations);
        }

        else
        {
          v8 = MEMORY[0x277D84F90];
        }

        specialized Sequence.forEach(_:)(v8, a2, &v20);

        v9 = v20;
        v10 = *a3;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a3 = v10;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10[2] + 1, 1, v10);
          *a3 = v10;
        }

        v13 = v10[2];
        v12 = v10[3];
        if (v13 >= v12 >> 1)
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v10);
          *a3 = v10;
        }

        v10[2] = v13 + 1;
        v14 = &v10[2 * v13];
        v14[4] = v6;
        v14[5] = v9;

        ++v5;
        v3 = v15;
        if (v7 == v4)
        {
          return result;
        }
      }

      if (v5 >= *(v16 + 16))
      {
        goto LABEL_19;
      }

      v6 = *(v3 + 8 * v5 + 32);

      v7 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      result = __CocoaSet.count.getter();
      v4 = result;
    }

    while (result);
  }

  return result;
}

uint64_t specialized static CloudSyncSuggestion.create(id:expiry:suggestionID:type:title:subtitle:prompt:startDate:endDate:rankingScore:baseScore:goodnessScore:visibilityCategoryInt:ordinalRankInRecommendedTab:assetsData:assetDataIDs:subTypeInt:isSensitive:zoneName:context:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(_BYTE *, uint64_t, uint64_t), uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, void (*a12)(_BYTE *, uint64_t), uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 a16, uint64_t a17, unsigned __int8 a18, uint64_t a19, unsigned __int8 a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, unint64_t a25, uint64_t a26, uint64_t a27, unsigned __int8 a28, uint64_t a29, uint64_t a30, void *a31)
{
  v365 = a8;
  v339 = a7;
  v362 = a6;
  v363 = a5;
  v364 = a4;
  v346 = a3;
  v361 = a31;
  v348 = a30;
  v347 = a29;
  v349 = a28;
  v350 = a27;
  v351 = a26;
  v352 = a21;
  v353 = a20;
  v334 = a19;
  v354 = a18;
  v335 = a17;
  LODWORD(v355) = a16;
  v336 = a15;
  v356 = a14;
  v357 = a13;
  v360 = a12;
  v358 = a11;
  v359 = a10;
  v338 = a9;
  v33 = type metadata accessor for UUID();
  MEMORY[0x28223BE20](v33 - 8);
  v325 = &v308[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v329 = type metadata accessor for JSONEncoder.OutputFormatting();
  v327 = *(v329 - 8);
  MEMORY[0x28223BE20](v329);
  v328 = &v308[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v337 = type metadata accessor for Logger();
  v340 = *(v337 - 8);
  v36 = MEMORY[0x28223BE20](v337);
  v331 = &v308[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = MEMORY[0x28223BE20](v36);
  v332 = &v308[-v39];
  v40 = MEMORY[0x28223BE20](v38);
  v333 = &v308[-v41];
  v42 = MEMORY[0x28223BE20](v40);
  v330 = &v308[-v43];
  MEMORY[0x28223BE20](v42);
  v319 = &v308[-v44];
  v45 = type metadata accessor for Date();
  v366 = *(v45 - 8);
  v367 = v45;
  v46 = MEMORY[0x28223BE20](v45);
  v343 = &v308[-((v47 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v48 = MEMORY[0x28223BE20](v46);
  v320 = &v308[-v49];
  MEMORY[0x28223BE20](v48);
  v322 = &v308[-v50];
  v324 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd);
  v51 = MEMORY[0x28223BE20](v324);
  v321 = &v308[-((v52 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v51);
  v323 = &v308[-v53];
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v55 = MEMORY[0x28223BE20](v54 - 8);
  v344 = &v308[-((v56 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v57 = MEMORY[0x28223BE20](v55);
  v345 = &v308[-v58];
  v59 = MEMORY[0x28223BE20](v57);
  v61 = &v308[-v60];
  v62 = MEMORY[0x28223BE20](v59);
  v64 = &v308[-v63];
  v65 = MEMORY[0x28223BE20](v62);
  v67 = &v308[-v66];
  MEMORY[0x28223BE20](v65);
  v69 = &v308[-v68];
  v70 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v71 = MEMORY[0x21CE91FC0](0xD000000000000013, 0x800000021657BA20);
  v72 = [v70 initWithEntityName_];

  [v72 setIncludesPendingChanges_];
  [v72 setFetchLimit_];
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSPredicate);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_21658CA50;
  *(v73 + 56) = MEMORY[0x277D837D0];
  *(v73 + 64) = lazy protocol witness table accessor for type String and conformance String();
  v74 = a1;
  *(v73 + 32) = a1;
  *(v73 + 40) = a2;
  v75 = a2;

  v76 = NSPredicate.init(format:_:)();
  [v72 setPredicate_];

  v77 = v361;
  v78 = type metadata accessor for CloudSyncSuggestion();
  v341 = v72;
  v79 = NSManagedObjectContext.fetch<A>(_:)();
  v368 = v75;
  v80 = v79;
  v316 = v67;
  v317 = v64;
  v315 = v61;
  v81 = v358;
  v326 = 0;
  if (v79 >> 62)
  {
    v269 = v79;
    v82 = __CocoaSet.count.getter();
    v80 = v269;
  }

  else
  {
    v82 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v83 = v365;
  v342 = v80;
  if (!v82)
  {
    v89 = v81;
    v78 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
    goto LABEL_48;
  }

  if ((v80 & 0xC000000000000001) != 0)
  {
    v272 = v80;

    v78 = MEMORY[0x21CE93180](0, v272);
  }

  else
  {
    if (!*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_183;
    }

    v78 = *(v80 + 32);
  }

  v84 = [v78 id];
  v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v87 = v86;

  v88 = v85 == v74;
  v75 = v368;
  if (v88 && v87 == v368)
  {
  }

  else
  {
    v90 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v90 & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  v91 = [v78 suggestionID];
  if (v91)
  {
    v92 = v91;
    v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v95 = v94;

    if (v93 == v364 && v95 == v363)
    {
    }

    else
    {
      v96 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v75 = v368;
      if ((v96 & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    v97 = [v78 type];
    v98.super.super.isa = Int64._bridgeToObjectiveC()().super.super.isa;
    isa = v98.super.super.isa;
    if (!v97)
    {

      goto LABEL_43;
    }

    v314 = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSNumber);
    v100 = static NSObject.== infix(_:_:)();

    v75 = v368;
    if ((v100 & 1) == 0)
    {
      goto LABEL_44;
    }

    v101 = [v78 title];
    if (v101)
    {
      v102 = v101;
      v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v105 = v104;

      if (!v83)
      {
        goto LABEL_42;
      }

      v75 = v368;
      if (v103 == v339 && v105 == v83)
      {
      }

      else
      {
        v106 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v106 & 1) == 0)
        {
          goto LABEL_44;
        }
      }
    }

    else if (v83)
    {
      goto LABEL_44;
    }

    v107 = [v78 prompt];
    if (v107)
    {
      v108 = v107;
      v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v111 = v110;

      if (!v360)
      {
        goto LABEL_42;
      }

      v75 = v368;
      if (v109 == v81 && v111 == v360)
      {
      }

      else
      {
        v112 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v112 & 1) == 0)
        {
          goto LABEL_44;
        }
      }
    }

    else if (v360)
    {
      goto LABEL_44;
    }

    v113 = [v78 subtitle];
    if (!v113)
    {
      if (v359)
      {
        goto LABEL_44;
      }

LABEL_153:
      v229 = [v78 startDate];
      if (v229)
      {
        v230 = v229;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v231 = v366;
        v232 = *(v366 + 56);
        v233 = v69;
        v234 = 0;
      }

      else
      {
        v231 = v366;
        v232 = *(v366 + 56);
        v233 = v69;
        v234 = 1;
      }

      v235 = v367;
      v312 = v232;
      v232(v233, v234, 1, v367);
      v236 = *(v324 + 48);
      v237 = v323;
      outlined init with copy of DateInterval?(v69, v323, &_s10Foundation4DateVSgMd);
      v238 = v237;
      outlined init with copy of DateInterval?(v357, &v237[v236], &_s10Foundation4DateVSgMd);
      v240 = v231 + 48;
      v239 = *(v231 + 48);
      if (v239(v238, 1, v235) == 1)
      {
        outlined destroy of UTType?(v69, &_s10Foundation4DateVSgMd);
        v241 = v239(v238 + v236, 1, v235);
        v81 = v358;
        if (v241 == 1)
        {
          v311 = v240;
          outlined destroy of UTType?(v238, &_s10Foundation4DateVSgMd);
          v75 = v368;
          goto LABEL_163;
        }
      }

      else
      {
        v242 = v316;
        outlined init with copy of DateInterval?(v238, v316, &_s10Foundation4DateVSgMd);
        v313 = v239;
        v243 = v239(v238 + v236, 1, v235);
        v244 = v322;
        if (v243 != 1)
        {
          v311 = v240;
          v310 = v69;
          v245 = v238;
          v246 = v366;
          (*(v366 + 32))(v322, v245 + v236, v235);
          lazy protocol witness table accessor for type CloudSyncSuggestion and conformance CloudSyncSuggestion(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
          v309 = dispatch thunk of static Equatable.== infix(_:_:)();
          v247 = *(v246 + 8);
          v247(v244, v235);
          outlined destroy of UTType?(v310, &_s10Foundation4DateVSgMd);
          v247(v242, v235);
          outlined destroy of UTType?(v245, &_s10Foundation4DateVSgMd);
          v75 = v368;
          v81 = v358;
          v239 = v313;
          if ((v309 & 1) == 0)
          {
            goto LABEL_44;
          }

LABEL_163:
          v248 = [v78 endDate];
          v313 = v239;
          if (v248)
          {
            v249 = v317;
            v250 = v248;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v251 = 0;
          }

          else
          {
            v251 = 1;
            v249 = v317;
          }

          v252 = v324;
          v253 = v367;
          v312(v249, v251, 1, v367);
          v254 = *(v252 + 48);
          v255 = v321;
          outlined init with copy of DateInterval?(v249, v321, &_s10Foundation4DateVSgMd);
          v324 = v254;
          v256 = &v255[v254];
          v257 = v255;
          outlined init with copy of DateInterval?(v356, v256, &_s10Foundation4DateVSgMd);
          v258 = v313;
          if (v313(v255, 1, v253) == 1)
          {
            outlined destroy of UTType?(v249, &_s10Foundation4DateVSgMd);
            if (v258(&v255[v324], 1, v367) == 1)
            {
              outlined destroy of UTType?(v255, &_s10Foundation4DateVSgMd);
              goto LABEL_173;
            }
          }

          else
          {
            v259 = v258;
            v260 = v315;
            outlined init with copy of DateInterval?(v255, v315, &_s10Foundation4DateVSgMd);
            v261 = v324;
            if (v259(&v255[v324], 1, v367) != 1)
            {
              v263 = v366;
              v262 = v367;
              v264 = &v255[v261];
              v265 = v322;
              (*(v366 + 32))(v322, v264, v367);
              lazy protocol witness table accessor for type CloudSyncSuggestion and conformance CloudSyncSuggestion(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
              LODWORD(v324) = dispatch thunk of static Equatable.== infix(_:_:)();
              v266 = *(v263 + 8);
              v266(v265, v262);
              outlined destroy of UTType?(v317, &_s10Foundation4DateVSgMd);
              v266(v315, v262);
              v75 = v368;
              outlined destroy of UTType?(v257, &_s10Foundation4DateVSgMd);
              if ((v324 & 1) == 0)
              {
                goto LABEL_44;
              }

LABEL_173:
              v267 = [v78 rankingScore];
              v268 = v267;
              if (v355)
              {
                if (!v267)
                {
                  goto LABEL_186;
                }
              }

              else
              {
                v270.super.super.isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
                v140 = v270.super.super.isa;
                if (!v268)
                {
                  goto LABEL_185;
                }

                if (v270.super.super.isa)
                {
                  v271 = static NSObject.== infix(_:_:)();

                  if (v271)
                  {
                    goto LABEL_186;
                  }

                  goto LABEL_44;
                }
              }

LABEL_217:

              goto LABEL_44;
            }

            outlined destroy of UTType?(v317, &_s10Foundation4DateVSgMd);
            (*(v366 + 8))(v260, v367);
          }

          outlined destroy of UTType?(v255, &_s10Foundation4DateVSg_ADtMd);
          goto LABEL_44;
        }

        outlined destroy of UTType?(v69, &_s10Foundation4DateVSgMd);
        (*(v366 + 8))(v242, v235);
        v81 = v358;
      }

      outlined destroy of UTType?(v238, &_s10Foundation4DateVSg_ADtMd);
LABEL_43:
      v75 = v368;
      goto LABEL_44;
    }

    v114 = v113;
    v115 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v117 = v116;

    if (v359)
    {
      v75 = v368;
      if (v115 == v338 && v117 == v359)
      {
      }

      else
      {
        v228 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v228 & 1) == 0)
        {
          goto LABEL_44;
        }
      }

      goto LABEL_153;
    }

LABEL_42:

    goto LABEL_43;
  }

  while (1)
  {
    while (1)
    {
      while (1)
      {
LABEL_44:
        if (one-time initialization token for Log != -1)
        {
LABEL_183:
          swift_once();
        }

        v89 = v81;
        v118 = v337;
        v119 = __swift_project_value_buffer(v337, static CloudSyncSuggestion.Log);
        swift_beginAccess();
        v120 = v340;
        v121 = v330;
        (*(v340 + 16))(v330, v119, v118);

        v122 = Logger.logObject.getter();
        v123 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v122, v123))
        {
          v124 = swift_slowAlloc();
          v125 = swift_slowAlloc();
          v372 = v125;
          *v124 = 136315138;
          *(v124 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v368, &v372);
          _os_log_impl(&dword_21607C000, v122, v123, "Modifying existing suggestion %s", v124, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v125);
          v126 = v125;
          v75 = v368;
          MEMORY[0x21CE94770](v126, -1, -1);
          MEMORY[0x21CE94770](v124, -1, -1);
        }

        (*(v120 + 8))(v121, v118);
        v83 = v365;
LABEL_48:
        v81 = v366;
        v127 = v343;
        v128 = [v78 expiry];
        if (v128)
        {
          v129 = v128;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          if (static Date.> infix(_:_:)())
          {
            v130 = Date._bridgeToObjectiveC()().super.isa;
            [v78 setExpiry_];
          }

          (*(v81 + 8))(v127, v367);
        }

        else
        {
          v131 = Date._bridgeToObjectiveC()().super.isa;
          [v78 setExpiry_];
        }

        v132 = MEMORY[0x21CE91FC0](v74, v75);
        [v78 setId_];

        v133 = MEMORY[0x21CE91FC0](v364, v363);
        [v78 setSuggestionID_];

        v134 = Int64._bridgeToObjectiveC()().super.super.isa;
        [v78 setType_];

        if (v83)
        {
          v135 = MEMORY[0x21CE91FC0](v339, v83);
        }

        else
        {
          v135 = 0;
        }

        v136 = v367;
        [v78 setTitle_];

        if (v360)
        {
          v137 = MEMORY[0x21CE91FC0](v89);
        }

        else
        {
          v137 = 0;
        }

        v138 = v345;
        [v78 setPrompt_];

        if (v359)
        {
          v139 = MEMORY[0x21CE91FC0](v338);
        }

        else
        {
          v139 = 0;
        }

        [v78 setSubtitle_];

        outlined init with copy of DateInterval?(v357, v138, &_s10Foundation4DateVSgMd);
        v140 = (v81 + 48);
        v141 = *(v81 + 48);
        if (v141(v138, 1, v136) == 1)
        {
          v142 = 0;
        }

        else
        {
          v142 = Date._bridgeToObjectiveC()().super.isa;
          v143 = *(v81 + 8);
          v81 += 8;
          v143(v138, v136);
        }

        [v78 setStartDate_];

        v144 = v344;
        outlined init with copy of DateInterval?(v356, v344, &_s10Foundation4DateVSgMd);
        if (v141(v144, 1, v136) == 1)
        {
          v145 = 0;
        }

        else
        {
          v145 = Date._bridgeToObjectiveC()().super.isa;
          (*(v366 + 8))(v144, v136);
        }

        v75 = v368;
        v146 = v349;
        [v78 setEndDate_];

        if (v355)
        {
          v147 = 0;
        }

        else
        {
          v147 = CGFloat._bridgeToObjectiveC()().super.super.isa;
        }

        [v78 setRankingScore_];

        if (v354)
        {
          v148 = 0;
        }

        else
        {
          v148 = CGFloat._bridgeToObjectiveC()().super.super.isa;
        }

        [v78 setBaseScore_];

        if (v353)
        {
          v149 = 0;
        }

        else
        {
          v149 = CGFloat._bridgeToObjectiveC()().super.super.isa;
        }

        [v78 setGoodnessScore_];

        v150 = Int64._bridgeToObjectiveC()().super.super.isa;
        [v78 setVisibilityCategoryInt_];

        if (a23)
        {
          v151 = 0;
        }

        else
        {
          v151 = Int64._bridgeToObjectiveC()().super.super.isa;
        }

        v152 = a25;
        [v78 setOrdinalRankInRecommendedTab_];

        CloudSyncSuggestion.assetIDs.setter();
        v153 = Int64._bridgeToObjectiveC()().super.super.isa;
        [v78 setSubTypeInt_];

        if (v146 == 2)
        {
          v154 = 0;
        }

        else
        {
          v154 = Bool._bridgeToObjectiveC()().super.super.isa;
        }

        [v78 setIsSensitive_];

        v155 = MEMORY[0x21CE91FC0](v347, v348);
        [v78 setZoneName_];

        v156 = specialized static DefaultsManager.MomentsUIDomain.intValueFor(_:)();
        if (v157)
        {
          v158 = 512000;
        }

        else
        {
          v158 = v156;
        }

        if (a25 >> 60 == 15)
        {

          v159 = 0;
LABEL_107:
          [v78 setAssetsData_];
          goto LABEL_108;
        }

        v160 = a25 >> 62;
        if ((a25 >> 62) > 1)
        {
          break;
        }

        if (!v160)
        {
          if (v158 >= BYTE6(a25))
          {
            goto LABEL_106;
          }

          goto LABEL_99;
        }

LABEL_96:
        if (!__OFSUB__(HIDWORD(a24), a24))
        {
          v163 = HIDWORD(a24) - a24;
LABEL_98:
          outlined copy of Data._Representation(a24, a25);
          if (v158 >= v163)
          {
            goto LABEL_106;
          }

          goto LABEL_99;
        }

        __break(1u);
LABEL_185:
        if (v140)
        {
LABEL_203:
        }

        else
        {
LABEL_186:
          v273 = [v78 baseScore];
          v268 = v273;
          if (v354)
          {
            if (v273)
            {
              goto LABEL_217;
            }

            goto LABEL_194;
          }

          v274.super.super.isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
          v140 = v274.super.super.isa;
          if (v268)
          {
            v75 = v368;
            v81 = v358;
            if (!v274.super.super.isa)
            {
              goto LABEL_217;
            }

            v275 = static NSObject.== infix(_:_:)();

            if (v275)
            {
              goto LABEL_194;
            }
          }

          else
          {
            v75 = v368;
            v81 = v358;
            if (v274.super.super.isa)
            {
              goto LABEL_203;
            }

LABEL_194:
            v318 = v74;
            v276 = [v78 goodnessScore];
            v268 = v276;
            if (v353)
            {
              v75 = v368;
              v74 = v318;
              v81 = v358;
              if (v276)
              {
                goto LABEL_217;
              }

              goto LABEL_204;
            }

            v277.super.super.isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
            v140 = v277.super.super.isa;
            if (!v268)
            {
              goto LABEL_202;
            }

            v75 = v368;
            v74 = v318;
            v81 = v358;
            if (!v277.super.super.isa)
            {
              goto LABEL_217;
            }

            v278 = static NSObject.== infix(_:_:)();

            if (v278)
            {
              goto LABEL_204;
            }
          }
        }
      }

      if (v160 == 2)
      {
        v162 = *(a24 + 16);
        v161 = *(a24 + 24);
        v163 = v161 - v162;
        if (!__OFSUB__(v161, v162))
        {
          goto LABEL_98;
        }

        __break(1u);
        goto LABEL_96;
      }

      if ((v158 & 0x8000000000000000) == 0)
      {
LABEL_106:
        outlined consume of Data?(a24, a25);

        v159 = Data._bridgeToObjectiveC()().super.isa;
        goto LABEL_107;
      }

LABEL_99:
      v356 = a25 >> 62;
      v318 = v74;
      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v164 = v337;
      v165 = __swift_project_value_buffer(v337, static CloudSyncSuggestion.Log);
      swift_beginAccess();
      v166 = v340;
      v167 = *(v340 + 16);
      v168 = v333;
      v363 = v340 + 16;
      v364 = v165;
      v362 = v167;
      v167(v333, v165, v164);

      outlined copy of Data?(a24, a25);
      v169 = Logger.logObject.getter();
      v170 = static os_log_type_t.error.getter();

      v171 = os_log_type_enabled(v169, v170);
      v367 = a24;
      if (!v171)
      {
        outlined consume of Data?(a24, a25);

        v360 = *(v166 + 8);
        v360(v168, v164);
        goto LABEL_120;
      }

      v140 = a25;
      v172 = swift_slowAlloc();
      v173 = swift_slowAlloc();
      v369[0] = v173;
      *v172 = 136315906;
      *(v172 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD0000000000000E3, 0x8000000216585BB0, v369);
      *(v172 + 12) = 2080;
      *(v172 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v318, v75, v369);
      *(v172 + 22) = 2048;
      if (v356 > 1)
      {
        v174 = v333;
        if (v356 != 2)
        {
          v175 = 0;
          goto LABEL_119;
        }

        v178 = *(v367 + 16);
        v177 = *(v367 + 24);
        v179 = __OFSUB__(v177, v178);
        v175 = v177 - v178;
        if (!v179)
        {
          goto LABEL_119;
        }

        __break(1u);
        goto LABEL_117;
      }

      v174 = v333;
      if (!v356)
      {
        break;
      }

LABEL_117:
      LODWORD(v175) = HIDWORD(v367) - v367;
      if (!__OFSUB__(HIDWORD(v367), v367))
      {
        v175 = v175;
        goto LABEL_119;
      }

      __break(1u);
LABEL_202:
      v75 = v368;
      v74 = v318;
      v81 = v358;
      if (v140)
      {
        goto LABEL_203;
      }

LABEL_204:
      v279 = [v78 visibilityCategoryInt];
      v280.super.super.isa = Int64._bridgeToObjectiveC()().super.super.isa;
      if (!v279)
      {
        goto LABEL_212;
      }

      v281 = static NSObject.== infix(_:_:)();

      v75 = v368;
      v74 = v318;
      v81 = v358;
      if (v281)
      {
        v282 = CloudSyncSuggestion.assetIDs.getter();
        v283 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v282, v351);

        if (v283)
        {
          v284 = [v78 subTypeInt];
          v280.super.super.isa = Int64._bridgeToObjectiveC()().super.super.isa;
          if (v284)
          {
            v285 = static NSObject.== infix(_:_:)();

            v75 = v368;
            v74 = v318;
            v81 = v358;
            if (v285)
            {
              v286 = [v78 isSensitive];
              v268 = v286;
              if (v349 == 2)
              {
                v75 = v368;
                v74 = v318;
                v81 = v358;
                if (v286)
                {
                  goto LABEL_217;
                }

                goto LABEL_225;
              }

              v287.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
              v140 = v287.super.super.isa;
              if (v268)
              {
                v75 = v368;
                v74 = v318;
                v81 = v358;
                if (!v287.super.super.isa)
                {
                  goto LABEL_217;
                }

                v288 = static NSObject.== infix(_:_:)();

                if (v288)
                {
                  goto LABEL_225;
                }
              }

              else
              {
LABEL_224:
                v75 = v368;
                v74 = v318;
                v81 = v358;
                if (v140)
                {
                  goto LABEL_203;
                }

LABEL_225:
                v289 = [v78 zoneName];
                if (v289)
                {
                  v290 = v289;
                  v291 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v293 = v292;

                  if (v291 == v347 && v293 == v348)
                  {

LABEL_234:

                    if (one-time initialization token for Log != -1)
                    {
                      swift_once();
                    }

                    v297 = v337;
                    v298 = __swift_project_value_buffer(v337, static CloudSyncSuggestion.Log);
                    swift_beginAccess();
                    (*(v340 + 16))(v319, v298, v297);

                    v299 = Logger.logObject.getter();
                    v300 = static os_log_type_t.debug.getter();

                    if (os_log_type_enabled(v299, v300))
                    {
                      v301 = swift_slowAlloc();
                      v302 = swift_slowAlloc();
                      v369[0] = v302;
                      *v301 = 136315138;
                      *(v301 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v318, v368, v369);
                      _os_log_impl(&dword_21607C000, v299, v300, "Existing suggestion found %s", v301, 0xCu);
                      __swift_destroy_boxed_opaque_existential_1(v302);
                      MEMORY[0x21CE94770](v302, -1, -1);
                      MEMORY[0x21CE94770](v301, -1, -1);
                    }

                    (*(v340 + 8))(v319, v337);
                    v303 = [v78 expiry];
                    if (v303)
                    {
                      v304 = v303;
                      static Date._unconditionallyBridgeFromObjectiveC(_:)();

                      if (static Date.> infix(_:_:)())
                      {
                        v305 = Date._bridgeToObjectiveC()().super.isa;
                        [v78 setExpiry_];

                        (*(v366 + 8))(v320, v367);
                        return v78;
                      }

                      (*(v366 + 8))(v320, v367);
                      goto LABEL_109;
                    }

                    v159 = Date._bridgeToObjectiveC()().super.isa;
                    [v78 setExpiry_];
LABEL_108:

LABEL_109:
                    return v78;
                  }

                  goto LABEL_233;
                }
              }
            }
          }

          else
          {
LABEL_212:

            v75 = v368;
            v74 = v318;
            v81 = v358;
          }
        }
      }
    }

    v175 = BYTE6(a25);
LABEL_119:
    *(v172 + 24) = v175;
    outlined consume of Data?(v367, a25);
    *(v172 + 32) = 2048;
    *(v172 + 34) = v158;
    _os_log_impl(&dword_21607C000, v169, v170, "CloudSyncSuggestion.%s ERROR: Assets too large in suggestion %s for iCloud CKRecord: %ld bytes (max: %ld). Please file a radar against Journaling Suggestions | CloudSync", v172, 0x2Au);
    swift_arrayDestroy();
    v180 = v173;
    v152 = a25;
    MEMORY[0x21CE94770](v180, -1, -1);
    MEMORY[0x21CE94770](v172, -1, -1);

    v164 = v337;
    v360 = *(v340 + 8);
    v360(v174, v337);
LABEL_120:
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    v181 = JSONDecoder.init()();
    v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI7DBAssetCGMd);
    lazy protocol witness table accessor for type [DBAsset] and conformance <A> [A](&lazy protocol witness table cache variable for type [DBAsset] and conformance <A> [A], &lazy protocol witness table cache variable for type DBAsset and conformance DBAsset);
    v355 = v182;
    v358 = v181;
    v183 = v326;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    if (v183)
    {

      v184 = 0;
      v366 = 0;
    }

    else
    {
      v366 = 0;
      v184 = v369[0];
    }

    type metadata accessor for JSONEncoder();
    swift_allocObject();
    v185 = JSONEncoder.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation11JSONEncoderC16OutputFormattingVGMd);
    v186 = swift_allocObject();
    *(v186 + 16) = xmmword_21658CA60;
    static JSONEncoder.OutputFormatting.sortedKeys.getter();
    static JSONEncoder.OutputFormatting.withoutEscapingSlashes.getter();
    v369[0] = v186;
    lazy protocol witness table accessor for type CloudSyncSuggestion and conformance CloudSyncSuggestion(&lazy protocol witness table cache variable for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting, MEMORY[0x277CC8718]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation11JSONEncoderC16OutputFormattingVGMd);
    lazy protocol witness table accessor for type [JSONEncoder.OutputFormatting] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    dispatch thunk of JSONEncoder.outputFormatting.setter();
    v371 = MEMORY[0x277D84F90];
    v359 = v152;
    v357 = v184;
    if (v184)
    {

      v188 = v366;
      specialized Sequence.forEach(_:)(v187, v185, &v371);
      v366 = v188;
    }

    v189 = v368;
    v190 = v332;
    v362(v332, v364, v164);

    v191 = Logger.logObject.getter();
    v192 = v164;
    v193 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v191, v193))
    {
      v194 = swift_slowAlloc();
      v195 = swift_slowAlloc();
      v370[0] = v195;
      *v194 = 136446722;
      *(v194 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD0000000000000E3, 0x8000000216585BB0, v370);
      *(v194 + 12) = 2080;
      *(v194 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v318, v368, v370);
      *(v194 + 22) = 2080;
      swift_beginAccess();
      v196 = v371;

      v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI7DBAssetC_SaySS_SitGtMd);
      v198 = MEMORY[0x21CE922B0](v196, v197);
      v199 = v185;
      v201 = v200;

      v202 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v198, v201, v370);
      v185 = v199;

      *(v194 + 24) = v202;
      v189 = v368;
      _os_log_impl(&dword_21607C000, v191, v193, "CloudSyncSuggestion.%{public}s Suggestion %s stats:\n%s", v194, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v195, -1, -1);
      MEMORY[0x21CE94770](v194, -1, -1);

      v203 = v332;
    }

    else
    {

      v203 = v190;
    }

    v360(v203, v192);
    v140 = v192;
    v204 = v365;
    v205 = v331;
    v206 = specialized static DefaultsManager.MomentsUIDomain.intValueFor(_:)();
    v208 = 4;
    if ((v207 & 1) == 0)
    {
      v208 = v206;
    }

    if (!v208)
    {

      outlined consume of Data?(v367, v359);

      goto LABEL_149;
    }

    if (v208 == 3)
    {

      type metadata accessor for DBAsset();
      v219 = v325;
      UUID.init()();
      v220 = DBAsset.__allocating_init(universalUUID:representations:priorityScore:)(v219, MEMORY[0x277D84F90], 0, 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v221 = swift_allocObject();
      *(v221 + 16) = xmmword_21658E210;
      *(v221 + 32) = v220;
      v370[0] = v221;
      lazy protocol witness table accessor for type [DBAsset] and conformance <A> [A](&lazy protocol witness table cache variable for type [DBAsset] and conformance <A> [A], &lazy protocol witness table cache variable for type DBAsset and conformance DBAsset);

      v222 = v366;
      v223 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      if (v222)
      {

        v225 = 0;
      }

      else
      {
        v226 = v223;
        v227 = v224;

        v225 = Data._bridgeToObjectiveC()().super.isa;
        outlined consume of Data._Representation(v226, v227);
      }

      [v78 setAssetsData_];

      outlined consume of Data?(v367, v359);

LABEL_149:

      return v78;
    }

    if ((v208 - 1) >= 2)
    {

      v362(v205, v364, v192);

      v209 = Logger.logObject.getter();
      v210 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v209, v210))
      {
        v211 = swift_slowAlloc();
        v368 = v185;
        v212 = v211;
        v213 = swift_slowAlloc();
        v370[0] = v213;
        *v212 = 136446722;
        *(v212 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD0000000000000E3, 0x8000000216585BB0, v370);
        *(v212 + 12) = 2080;
        *(v212 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v318, v189, v370);
        *(v212 + 22) = 2080;
        if (v204)
        {
          v214 = v339;
        }

        else
        {
          v214 = 0x296C696E28;
        }

        if (v204)
        {
          v215 = v204;
        }

        else
        {
          v215 = 0xE500000000000000;
        }

        v216 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v214, v215, v370);

        *(v212 + 24) = v216;
        _os_log_impl(&dword_21607C000, v209, v210, "CloudSyncSuggestion.%{public}s Dropping suggestion %s title: %s", v212, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v213, -1, -1);
        MEMORY[0x21CE94770](v212, -1, -1);

        v217 = v331;
        v218 = v337;
      }

      else
      {

        v217 = v205;
        v218 = v192;
      }

      v360(v217, v218);
      [v361 deleteObject_];

      outlined consume of Data?(v367, v359);

      return 0;
    }

    v370[0] = 0;
    v370[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(70);
    MEMORY[0x21CE92100](0xD00000000000001CLL, 0x8000000216585CA0);
    MEMORY[0x21CE92100](v318, v189);
    MEMORY[0x21CE92100](0xD000000000000020, 0x8000000216585CC0);
    if (v356 <= 1)
    {
      break;
    }

    if (v356 != 2)
    {
      v306 = 0;
      goto LABEL_244;
    }

    v295 = *(v367 + 16);
    v294 = *(v367 + 24);
    v179 = __OFSUB__(v294, v295);
    v306 = v294 - v295;
    if (!v179)
    {
      goto LABEL_244;
    }

    __break(1u);
LABEL_233:
    v296 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v75 = v368;
    v74 = v318;
    v81 = v358;
    if (v296)
    {
      goto LABEL_234;
    }
  }

  if (v356 == 1)
  {
    LODWORD(v306) = HIDWORD(v367) - v367;
    if (!__OFSUB__(HIDWORD(v367), v367))
    {
      v306 = v306;
      goto LABEL_244;
    }

    __break(1u);
    goto LABEL_224;
  }

  v306 = BYTE6(v359);
LABEL_244:
  v369[3] = v306;
  v307 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x21CE92100](v307);

  MEMORY[0x21CE92100](0x736574796220, 0xE600000000000000);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized static CloudSyncSuggestion.create(id:expiry:suggestionID:type:title:subtitle:prompt:startDate:endDate:rankingScore:baseScore:goodnessScore:visibilityCategory:ordinalRankInRecommendedTab:assets:assetDataIDs:subType:isSensitive:zoneName:context:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(_BYTE *, uint64_t, uint64_t), uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, void (*a11)(_BYTE *, uint64_t), uint64_t a12, uint64_t a13, uint64_t a14, unsigned __int8 a15, uint64_t a16, unsigned __int8 a17, uint64_t a18, unsigned __int8 a19, unsigned __int8 *a20, uint64_t a21, unsigned __int8 a22, char *a23, uint64_t a24, char *a25, unsigned __int8 a26, uint64_t a27, uint64_t a28, void *a29)
{
  v90 = a8;
  v91 = a5;
  v92 = a6;
  v93 = a7;
  v86 = a4;
  v87 = a1;
  v88 = a2;
  v89 = a3;
  v97 = a23;
  v29 = type metadata accessor for UUID();
  v96 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v31 = &v62 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for JSONEncoder.OutputFormatting();
  MEMORY[0x28223BE20](v32);
  v85 = *a20;
  v84 = *a25;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  v33 = JSONEncoder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation11JSONEncoderC16OutputFormattingVGMd);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_21658CA60;
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  static JSONEncoder.OutputFormatting.withoutEscapingSlashes.getter();
  v99 = v34;
  lazy protocol witness table accessor for type CloudSyncSuggestion and conformance CloudSyncSuggestion(&lazy protocol witness table cache variable for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting, MEMORY[0x277CC8718]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation11JSONEncoderC16OutputFormattingVGMd);
  lazy protocol witness table accessor for type [JSONEncoder.OutputFormatting] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  v99 = v97;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI7DBAssetCGMd);
  lazy protocol witness table accessor for type [DBAsset] and conformance <A> [A](&lazy protocol witness table cache variable for type [DBAsset] and conformance <A> [A], &lazy protocol witness table cache variable for type DBAsset and conformance DBAsset);
  v36 = v98;
  v37 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v36)
  {
  }

  else
  {
    v97 = v31;
    v98 = v29;
    v39 = v96;
    v74 = a29;
    v73 = a28;
    v72 = a27;
    v71 = a26;
    v70 = a22;
    v75 = a21;
    v69 = a19;
    v83 = a18;
    v68 = a17;
    v82 = a16;
    v67 = a15;
    v80 = a13;
    v81 = a14;
    v78 = a11;
    v79 = a12;
    v77 = a10;
    v76 = a9;
    v40 = *(a24 + 16);
    v41 = MEMORY[0x277D84F90];
    if (v40)
    {
      v63 = v38;
      v64 = v37;
      v65 = 0;
      v66 = v33;
      v99 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v40, 0);
      v41 = v99;
      v43 = v39[2];
      v42 = (v39 + 2);
      v44 = a24 + ((v42[64] + 32) & ~v42[64]);
      v95 = *(v42 + 7);
      v96 = v43;
      v94 = (v42 - 8);
      v46 = v97;
      v45 = v98;
      do
      {
        v47 = v42;
        (v96)(v46, v44, v45);
        v48 = UUID.uuidString.getter();
        v45 = v98;
        v49 = v48;
        v51 = v50;
        (*v94)(v46, v98);
        v99 = v41;
        v53 = *(v41 + 16);
        v52 = *(v41 + 24);
        if (v53 >= v52 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1);
          v45 = v98;
          v41 = v99;
        }

        *(v41 + 16) = v53 + 1;
        v54 = v41 + 16 * v53;
        *(v54 + 32) = v49;
        *(v54 + 40) = v51;
        v44 += v95;
        --v40;
        v42 = v47;
        v46 = v97;
      }

      while (v40);
      v55 = v64;
      v56 = v63;
    }

    else
    {
      v56 = v38;
      v55 = v37;
    }

    v57 = qword_2165A3E80[v84];
    v58 = UUID.uuidString.getter();
    v60 = v59;
    outlined copy of Data._Representation(v55, v56);
    v35 = specialized static CloudSyncSuggestion.create(id:expiry:suggestionID:type:title:subtitle:prompt:startDate:endDate:rankingScore:baseScore:goodnessScore:visibilityCategoryInt:ordinalRankInRecommendedTab:assetsData:assetDataIDs:subTypeInt:isSensitive:zoneName:context:)(v87, v88, v89, v58, v60, v91, v92, v93, v90, v76, v77, v78, v79, v80, v81, v67 & 1, v82, v68 & 1, v83, v69 & 1, v85, v75, v70 & 1, v55, v56, v41, v57, v71, v72, v73, v74);
    outlined consume of Data._Representation(v55, v56);

    outlined consume of Data._Representation(v55, v56);
  }

  return v35;
}

uint64_t specialized CloudSyncSuggestion.mergeFromServerRecord(_:force:primary:primaryID:blobFolderURL:cloudManager:)(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v350 = a5;
  v364 = a4;
  LODWORD(isa) = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v349 = &v317 - v7;
  v8 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
  v352 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v348 = &v317 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v347 = v10;
  MEMORY[0x28223BE20](v9);
  v351 = (&v317 - v11);
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v336 = &v317 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v342 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd);
  v15 = MEMORY[0x28223BE20](v342);
  v338 = &v317 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v340 = &v317 - v17;
  v18 = type metadata accessor for Logger();
  v366 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v346 = &v317 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = (&v317 - v21);
  v355 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v23 = MEMORY[0x28223BE20](v355);
  v335 = &v317 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v339 = &v317 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v337 = &v317 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v341 = &v317 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v356 = &v317 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v358 = &v317 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v354 = (&v317 - v36);
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v317 - v38;
  v40 = MEMORY[0x28223BE20](v37);
  v42 = &v317 - v41;
  MEMORY[0x28223BE20](v40);
  v44 = &v317 - v43;
  v45 = [a1 expirationDate];
  v363 = v12;
  v360 = v13;
  if (v45)
  {
    v46 = v18;
    v47 = v45;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = v46;
    v48 = *(v13 + 56);
    v49 = v42;
    v50 = 0;
    v51 = v363;
  }

  else
  {
    v48 = *(v13 + 56);
    v49 = v42;
    v50 = 1;
    v51 = v12;
  }

  v359 = v48;
  v48(v49, v50, 1, v51);
  v353 = v8;
  outlined init with take of URL?(v42, v44, &_s10Foundation4DateVSgMd);
  v52 = v22;
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v53 = __swift_project_value_buffer(v18, static CloudSyncSuggestion.Log);
  swift_beginAccess();
  v54 = v366;
  v55 = *(v366 + 16);
  v345 = v53;
  v344 = v366 + 16;
  v343 = v55;
  v55(v52, v53, v18);
  v362 = v44;
  outlined init with copy of DateInterval?(v44, v39, &_s10Foundation4DateVSgMd);
  v56 = a1;
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.debug.getter();

  v59 = os_log_type_enabled(v57, v58);
  v367 = v56;
  if (v59)
  {
    v60 = swift_slowAlloc();
    v357 = v18;
    v61 = v60;
    v62 = swift_slowAlloc();
    v369 = v62;
    *v61 = 136446722;
    *(v61 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004CLL, 0x8000000216578810, &v369);
    *(v61 + 12) = 2080;
    v63 = [v56 recordID];
    v64 = [v63 recordName];

    v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v334 = v52;
    v67 = v66;

    v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v67, &v369);

    *(v61 + 14) = v68;
    *(v61 + 22) = 2080;
    outlined init with copy of DateInterval?(v39, v354, &_s10Foundation4DateVSgMd);
    v69 = String.init<A>(describing:)();
    v71 = v70;
    outlined destroy of UTType?(v39, &_s10Foundation4DateVSgMd);
    v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v71, &v369);

    *(v61 + 24) = v72;
    v73 = v364;
    _os_log_impl(&dword_21607C000, v57, v58, "CloudSyncSuggestion.%{public}s: %s TTL: %s", v61, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v62, -1, -1);
    v74 = v61;
    v18 = v357;
    MEMORY[0x21CE94770](v74, -1, -1);

    v75 = *(v366 + 8);
    v75(v334, v18);
  }

  else
  {

    outlined destroy of UTType?(v39, &_s10Foundation4DateVSgMd);
    v75 = *(v54 + 8);
    v75(v52, v18);
    v73 = v364;
  }

  if (isa)
  {
    v76 = v367;
    if (v73)
    {
      v323 = v75;
      v357 = v18;
      swift_unknownObjectRetain();
      v77 = [v76 encryptedValues];
      v78 = MEMORY[0x21CE91FC0](0x6974736567677573, 0xEC00000044496E6FLL);
      v79 = [v77 objectForKeyedSubscript_];
      swift_unknownObjectRelease();

      if (v79)
      {
        v368 = v79;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
        v80 = swift_dynamicCast();
        v81 = v369;
        if (!v80)
        {
          v81 = 0;
        }

        v322 = v81;
        if (v80)
        {
          v82 = v370;
        }

        else
        {
          v82 = 0;
        }
      }

      else
      {
        v322 = 0;
        v82 = 0;
      }

      v83 = [v76 encryptedValues];
      v84 = MEMORY[0x21CE91FC0](1701869940, 0xE400000000000000);
      v85 = [v83 objectForKeyedSubscript_];
      swift_unknownObjectRelease();

      if (v85)
      {
        v369 = v85;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
        swift_dynamicCast();
      }

      isa = Int64._bridgeToObjectiveC()().super.super.isa;
      v86 = [v76 encryptedValues];
      v87 = MEMORY[0x21CE91FC0](0x656C746974, 0xE500000000000000);
      v88 = [v86 objectForKeyedSubscript_];
      swift_unknownObjectRelease();

      if (v88)
      {
        v368 = v88;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
        v89 = swift_dynamicCast();
        v90 = v369;
        if (!v89)
        {
          v90 = 0;
        }

        v321 = v90;
        if (v89)
        {
          v91 = v370;
        }

        else
        {
          v91 = 0;
        }
      }

      else
      {
        v321 = 0;
        v91 = 0;
      }

      v92 = [v76 encryptedValues];
      v93 = MEMORY[0x21CE91FC0](0x656C746974627573, 0xE800000000000000);
      v94 = [v92 objectForKeyedSubscript_];
      swift_unknownObjectRelease();

      if (v94)
      {
        v368 = v94;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
        v95 = swift_dynamicCast();
        v96 = v369;
        if (!v95)
        {
          v96 = 0;
        }

        v320 = v96;
        if (v95)
        {
          v97 = v370;
        }

        else
        {
          v97 = 0;
        }

        v325 = v97;
      }

      else
      {
        v320 = 0;
        v325 = 0;
      }

      v98 = [v76 encryptedValues];
      v99 = MEMORY[0x21CE91FC0](0x74706D6F7270, 0xE600000000000000);
      v100 = [v98 objectForKeyedSubscript_];
      swift_unknownObjectRelease();

      if (v100)
      {
        v368 = v100;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
        v101 = swift_dynamicCast();
        v102 = v369;
        if (!v101)
        {
          v102 = 0;
        }

        v319 = v102;
        if (v101)
        {
          v103 = v370;
        }

        else
        {
          v103 = 0;
        }

        v324 = v103;
      }

      else
      {
        v319 = 0;
        v324 = 0;
      }

      v104 = [v76 encryptedValues];
      v105 = MEMORY[0x21CE91FC0](0x7461447472617473, 0xE900000000000065);
      v106 = [v104 objectForKeyedSubscript_];
      swift_unknownObjectRelease();

      if (v106)
      {
        v369 = v106;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
        v107 = v358;
        v108 = v363;
        v109 = swift_dynamicCast() ^ 1;
        v110 = v107;
        v111 = v108;
      }

      else
      {
        v110 = v358;
        v109 = 1;
        v111 = v363;
      }

      v359(v110, v109, 1, v111);
      v112 = [v76 encryptedValues];
      v113 = MEMORY[0x21CE91FC0](0x65746144646E65, 0xE700000000000000);
      v114 = [v112 objectForKeyedSubscript_];
      swift_unknownObjectRelease();

      if (v114)
      {
        v369 = v114;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
        v115 = v356;
        v116 = v363;
        v117 = swift_dynamicCast() ^ 1;
        v118 = v115;
        v119 = v116;
      }

      else
      {
        v118 = v356;
        v117 = 1;
        v119 = v363;
      }

      v359(v118, v117, 1, v119);
      v120 = [v76 encryptedValues];
      v121 = MEMORY[0x21CE91FC0](0x53676E696B6E6172, 0xEC00000065726F63);
      v122 = [v120 objectForKeyedSubscript_];
      swift_unknownObjectRelease();

      if (v122)
      {
        v369 = v122;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
        swift_dynamicCast();
      }

      v355 = CGFloat._bridgeToObjectiveC()().super.super.isa;
      v123 = [v76 encryptedValues];
      v124 = MEMORY[0x21CE91FC0](0x726F635365736162, 0xE900000000000065);
      v125 = [v123 objectForKeyedSubscript_];
      swift_unknownObjectRelease();

      if (v125)
      {
        v369 = v125;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
        swift_dynamicCast();
      }

      v354 = CGFloat._bridgeToObjectiveC()().super.super.isa;
      v126 = [v76 encryptedValues];
      v127 = MEMORY[0x21CE91FC0](0x7373656E646F6F67, 0xED000065726F6353);
      v128 = [v126 objectForKeyedSubscript_];
      swift_unknownObjectRelease();

      if (v128)
      {
        v369 = v128;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
        swift_dynamicCast();
      }

      v334 = CGFloat._bridgeToObjectiveC()().super.super.isa;
      v129 = [v76 encryptedValues];
      v318 = "dSync";
      v130 = MEMORY[0x21CE91FC0](0xD000000000000015, 0x800000021657BB10);
      v131 = [v129 objectForKeyedSubscript_];
      swift_unknownObjectRelease();

      if (v131)
      {
        v369 = v131;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
        swift_dynamicCast();
      }

      v333 = Int64._bridgeToObjectiveC()().super.super.isa;
      v132 = [v76 encryptedValues];
      v133 = MEMORY[0x21CE91FC0](0xD00000000000001BLL, 0x80000002165752F0);
      v134 = [v132 objectForKeyedSubscript_];
      swift_unknownObjectRelease();

      if (v134)
      {
        v369 = v134;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
        swift_dynamicCast();
      }

      v332 = Int64._bridgeToObjectiveC()().super.super.isa;
      v135 = [v367 encryptedValues];
      v136 = MEMORY[0x21CE91FC0](0x6144737465737361, 0xEA00000000006174);
      v137 = [v135 objectForKeyedSubscript_];
      swift_unknownObjectRelease();

      v138 = 0xF000000000000000;
      if (v137)
      {
        v368 = v137;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
        v139 = swift_dynamicCast();
        v140 = v369;
        if (!v139)
        {
          v140 = 0;
        }

        v330 = v140;
        if (v139)
        {
          v138 = v370;
        }

        v331 = v138;
      }

      else
      {
        v331 = 0xF000000000000000;
        v330 = 0;
      }

      v141 = [v367 encryptedValues];
      v142 = MEMORY[0x21CE91FC0](0x7344497465737361, 0xEC00000061746144);
      v143 = [v141 objectForKeyedSubscript_];
      swift_unknownObjectRelease();

      v144 = 0xF000000000000000;
      if (v143)
      {
        v368 = v143;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
        v145 = swift_dynamicCast();
        v146 = v369;
        if (!v145)
        {
          v146 = 0;
        }

        v328 = v146;
        if (v145)
        {
          v144 = v370;
        }

        v329 = v144;
      }

      else
      {
        v329 = 0xF000000000000000;
        v328 = 0;
      }

      v147 = [v367 encryptedValues];
      v148 = MEMORY[0x21CE91FC0](0x4965707954627573, 0xEA0000000000746ELL);
      v149 = [v147 objectForKeyedSubscript_];
      swift_unknownObjectRelease();

      if (v149)
      {
        v369 = v149;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
        swift_dynamicCast();
      }

      v327 = Int64._bridgeToObjectiveC()().super.super.isa;
      v150 = [v367 encryptedValues];
      v151 = MEMORY[0x21CE91FC0](0x7469736E65537369, 0xEB00000000657669);
      v152 = [v150 objectForKeyedSubscript_];
      swift_unknownObjectRelease();

      if (v152)
      {
        v369 = v152;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
        swift_dynamicCast();
      }

      v153 = v365;
      v154 = v357;
      v326 = Bool._bridgeToObjectiveC()().super.super.isa;
      if (one-time initialization token for productionSchema != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v155 = specialized Dictionary.subscript.getter(0x6974736567677573, 0xEC00000044496E6FLL, static CloudSyncSuggestion.productionSchema);
      swift_endAccess();
      if (v155)
      {
        v156 = [v153 suggestionID];
        if (v156)
        {
          v157 = v156;
          v158 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v160 = v159;

          if (!v82)
          {

            goto LABEL_152;
          }

          if (v158 == v322 && v82 == v160)
          {
          }

          else
          {
            v178 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v178 & 1) == 0)
            {
              goto LABEL_116;
            }
          }
        }

        else if (v82)
        {

          goto LABEL_117;
        }
      }

      else
      {
      }

      swift_beginAccess();
      v161 = specialized Dictionary.subscript.getter(1701869940, 0xE400000000000000, static CloudSyncSuggestion.productionSchema);
      swift_endAccess();
      if (!v161 || (v162 = [v153 type]) != 0 && (v163 = v162, type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSNumber), v164 = isa, v165 = static NSObject.== infix(_:_:)(), v164, v163, (v165 & 1) != 0))
      {
        swift_beginAccess();
        v166 = specialized Dictionary.subscript.getter(0x656C746974, 0xE500000000000000, static CloudSyncSuggestion.productionSchema);
        swift_endAccess();
        if (!v166)
        {
LABEL_96:

LABEL_97:
          swift_beginAccess();
          v172 = specialized Dictionary.subscript.getter(0x656C746974627573, 0xE800000000000000, static CloudSyncSuggestion.productionSchema);
          swift_endAccess();
          if (!v172)
          {
LABEL_108:

            goto LABEL_109;
          }

          v173 = [v153 subtitle];
          if (v173)
          {
            v174 = v173;
            v175 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v177 = v176;

            if (v325)
            {
              if (v175 != v320 || v325 != v177)
              {
                v192 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v192 & 1) == 0)
                {
                  goto LABEL_117;
                }

                goto LABEL_109;
              }

              goto LABEL_108;
            }
          }

          else if (!v325)
          {
LABEL_109:
            swift_beginAccess();
            v179 = specialized Dictionary.subscript.getter(0x74706D6F7270, 0xE600000000000000, static CloudSyncSuggestion.productionSchema);
            swift_endAccess();
            if (!v179)
            {
LABEL_118:

              goto LABEL_119;
            }

            v180 = [v153 prompt];
            v181 = v324;
            if (v180)
            {
              v182 = v180;
              v183 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v185 = v184;

              if (v181)
              {
                if (v183 == v319 && v181 == v185)
                {

                  goto LABEL_118;
                }

                v199 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v199 & 1) == 0)
                {
                  goto LABEL_152;
                }

LABEL_119:
                swift_beginAccess();
                v186 = specialized Dictionary.subscript.getter(0x7461447472617473, 0xE900000000000065, static CloudSyncSuggestion.productionSchema);
                swift_endAccess();
                if (v186)
                {
                  v187 = [v153 startDate];
                  if (v187)
                  {
                    v188 = v341;
                    v189 = v187;
                    static Date._unconditionallyBridgeFromObjectiveC(_:)();

                    v190 = 0;
                  }

                  else
                  {
                    v190 = 1;
                    v188 = v341;
                  }

                  v193 = v360;
                  v194 = v363;
                  v359(v188, v190, 1, v363);
                  v195 = *(v342 + 48);
                  v196 = v340;
                  outlined init with copy of DateInterval?(v188, v340, &_s10Foundation4DateVSgMd);
                  outlined init with copy of DateInterval?(v358, v196 + v195, &_s10Foundation4DateVSgMd);
                  v197 = *(v193 + 48);
                  if (v197(v196, 1, v194) == 1)
                  {
                    outlined destroy of UTType?(v188, &_s10Foundation4DateVSgMd);
                    if (v197(v196 + v195, 1, v194) != 1)
                    {
                      goto LABEL_151;
                    }

                    outlined destroy of UTType?(v196, &_s10Foundation4DateVSgMd);
                  }

                  else
                  {
                    v198 = v337;
                    outlined init with copy of DateInterval?(v196, v337, &_s10Foundation4DateVSgMd);
                    if (v197(v196 + v195, 1, v194) == 1)
                    {
                      outlined destroy of UTType?(v341, &_s10Foundation4DateVSgMd);
                      (*(v360 + 8))(v198, v194);
                      goto LABEL_151;
                    }

                    v200 = v196;
                    v201 = v360;
                    v202 = v200 + v195;
                    v203 = v336;
                    (*(v360 + 32))(v336, v202, v194);
                    lazy protocol witness table accessor for type CloudSyncSuggestion and conformance CloudSyncSuggestion(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
                    v204 = dispatch thunk of static Equatable.== infix(_:_:)();
                    v205 = *(v201 + 8);
                    v205(v203, v194);
                    outlined destroy of UTType?(v341, &_s10Foundation4DateVSgMd);
                    v205(v198, v194);
                    v154 = v357;
                    outlined destroy of UTType?(v200, &_s10Foundation4DateVSgMd);
                    if ((v204 & 1) == 0)
                    {
                      goto LABEL_152;
                    }
                  }
                }

                swift_beginAccess();
                v206 = specialized Dictionary.subscript.getter(0x65746144646E65, 0xE700000000000000, static CloudSyncSuggestion.productionSchema);
                swift_endAccess();
                if (!v206)
                {
                  goto LABEL_162;
                }

                v207 = [v153 endDate];
                if (v207)
                {
                  v208 = v339;
                  v209 = v207;
                  static Date._unconditionallyBridgeFromObjectiveC(_:)();

                  v210 = 0;
                  v211 = v360;
                }

                else
                {
                  v210 = 1;
                  v211 = v360;
                  v208 = v339;
                }

                v212 = v363;
                v359(v208, v210, 1, v363);
                v213 = *(v342 + 48);
                v196 = v338;
                outlined init with copy of DateInterval?(v208, v338, &_s10Foundation4DateVSgMd);
                outlined init with copy of DateInterval?(v356, v196 + v213, &_s10Foundation4DateVSgMd);
                v214 = *(v211 + 48);
                if (v214(v196, 1, v212) == 1)
                {
                  outlined destroy of UTType?(v208, &_s10Foundation4DateVSgMd);
                  v215 = v214(v196 + v213, 1, v212);
                  v154 = v357;
                  if (v215 == 1)
                  {
                    outlined destroy of UTType?(v196, &_s10Foundation4DateVSgMd);
LABEL_162:
                    swift_beginAccess();
                    v261 = specialized Dictionary.subscript.getter(0x53676E696B6E6172, 0xEC00000065726F63, static CloudSyncSuggestion.productionSchema);
                    swift_endAccess();
                    if (!v261 || (v262 = [v153 rankingScore]) != 0 && (v263 = v262, type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSNumber), v264 = v355, v265 = static NSObject.== infix(_:_:)(), v264, v263, (v265 & 1) != 0))
                    {
                      swift_beginAccess();
                      v266 = specialized Dictionary.subscript.getter(0x726F635365736162, 0xE900000000000065, static CloudSyncSuggestion.productionSchema);
                      swift_endAccess();
                      if (!v266 || (v267 = [v153 baseScore]) != 0 && (v268 = v267, type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSNumber), v269 = v354, v270 = static NSObject.== infix(_:_:)(), v269, v268, (v270 & 1) != 0))
                      {
                        swift_beginAccess();
                        v271 = specialized Dictionary.subscript.getter(0x7373656E646F6F67, 0xED000065726F6353, static CloudSyncSuggestion.productionSchema);
                        swift_endAccess();
                        if (!v271 || (v272 = [v153 goodnessScore]) != 0 && (v273 = v272, type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSNumber), v274 = v334, v275 = static NSObject.== infix(_:_:)(), v274, v273, (v275 & 1) != 0))
                        {
                          swift_beginAccess();
                          v276 = specialized Dictionary.subscript.getter(0xD000000000000015, v318 | 0x8000000000000000, static CloudSyncSuggestion.productionSchema);
                          swift_endAccess();
                          if (!v276 || (v277 = [v153 visibilityCategoryInt]) != 0 && (v278 = v277, type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSNumber), v279 = v333, v280 = static NSObject.== infix(_:_:)(), v279, v278, (v280 & 1) != 0))
                          {
                            swift_beginAccess();
                            v281 = specialized Dictionary.subscript.getter(0xD00000000000001BLL, 0x80000002165752F0, static CloudSyncSuggestion.productionSchema);
                            swift_endAccess();
                            if (!v281 || (v282 = [v153 ordinalRankInRecommendedTab]) != 0 && (v283 = v282, type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSNumber), v284 = v332, v285 = static NSObject.== infix(_:_:)(), v284, v283, (v285 & 1) != 0))
                            {
                              swift_beginAccess();
                              v286 = specialized Dictionary.subscript.getter(0x6144737465737361, 0xEA00000000006174, static CloudSyncSuggestion.productionSchema);
                              swift_endAccess();
                              v76 = v367;
                              if (!v286)
                              {
                                goto LABEL_186;
                              }

                              v287 = [v153 assetsData];
                              if (v287)
                              {
                                v288 = v287;
                                v289 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                                v291 = v290;

                                if (v291 >> 60 != 15)
                                {
                                  v292 = v331;
                                  if (v331 >> 60 != 15)
                                  {
                                    v293 = v330;
                                    outlined copy of Data?(v330, v331);
                                    outlined copy of Data?(v289, v291);
                                    v294 = specialized static Data.== infix(_:_:)(v289, v291, v293, v292);
                                    v295 = v292;
                                    v296 = v294;
                                    outlined consume of Data?(v293, v295);
                                    outlined consume of Data?(v289, v291);
                                    outlined consume of Data?(v289, v291);
                                    if ((v296 & 1) == 0)
                                    {
                                      goto LABEL_205;
                                    }

LABEL_186:
                                    swift_beginAccess();
                                    v297 = specialized Dictionary.subscript.getter(0x7344497465737361, 0xEC00000061746144, static CloudSyncSuggestion.productionSchema);
                                    swift_endAccess();
                                    if (!v297)
                                    {
                                      goto LABEL_196;
                                    }

                                    v298 = [v153 assetIDsData];
                                    if (v298)
                                    {
                                      v299 = v298;
                                      v289 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                                      v291 = v300;

                                      if (v291 >> 60 != 15)
                                      {
                                        v292 = v329;
                                        if (v329 >> 60 != 15)
                                        {
                                          v301 = v328;
                                          outlined copy of Data?(v328, v329);
                                          outlined copy of Data?(v289, v291);
                                          v302 = specialized static Data.== infix(_:_:)(v289, v291, v301, v292);
                                          v303 = v292;
                                          v304 = v302;
                                          outlined consume of Data?(v301, v303);
                                          outlined consume of Data?(v289, v291);
                                          outlined consume of Data?(v289, v291);
                                          if ((v304 & 1) == 0)
                                          {
                                            goto LABEL_205;
                                          }

LABEL_196:
                                          swift_beginAccess();
                                          v306 = specialized Dictionary.subscript.getter(0x4965707954627573, 0xEA0000000000746ELL, static CloudSyncSuggestion.productionSchema);
                                          swift_endAccess();
                                          if (v306)
                                          {
                                            v307 = [v153 subTypeInt];
                                            if (!v307)
                                            {
                                              goto LABEL_205;
                                            }

                                            v308 = v307;
                                            type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSNumber);
                                            v309 = v327;
                                            v310 = static NSObject.== infix(_:_:)();

                                            if ((v310 & 1) == 0)
                                            {
                                              goto LABEL_205;
                                            }
                                          }

                                          swift_beginAccess();
                                          v311 = specialized Dictionary.subscript.getter(0x7469736E65537369, 0xEB00000000657669, static CloudSyncSuggestion.productionSchema);
                                          swift_endAccess();
                                          if (v311)
                                          {
                                            v312 = [v153 isSensitive];
                                            if (!v312)
                                            {
                                              goto LABEL_205;
                                            }

                                            v313 = v312;
                                            type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSNumber);
                                            v314 = v326;
                                            v315 = static NSObject.== infix(_:_:)();

                                            if ((v315 & 1) == 0)
                                            {
                                              goto LABEL_205;
                                            }

                                            outlined consume of Data?(v330, v331);
                                            outlined consume of Data?(v328, v329);
                                            swift_unknownObjectRelease();
                                          }

                                          else
                                          {

                                            outlined consume of Data?(v328, v329);
                                            outlined consume of Data?(v330, v331);
                                            swift_unknownObjectRelease();
                                          }

LABEL_159:
                                          outlined destroy of UTType?(v356, &_s10Foundation4DateVSgMd);
                                          outlined destroy of UTType?(v358, &_s10Foundation4DateVSgMd);
                                          goto LABEL_160;
                                        }

                                        goto LABEL_203;
                                      }
                                    }

                                    else
                                    {
                                      v289 = 0;
                                      v291 = 0xF000000000000000;
                                    }

                                    v292 = v329;
                                    if (v329 >> 60 == 15)
                                    {
                                      outlined copy of Data?(v328, v329);
                                      outlined consume of Data?(v289, v291);
                                      goto LABEL_196;
                                    }

LABEL_203:
                                    v305 = &v360;
                                    goto LABEL_204;
                                  }

                                  goto LABEL_192;
                                }
                              }

                              else
                              {
                                v289 = 0;
                                v291 = 0xF000000000000000;
                              }

                              v292 = v331;
                              if (v331 >> 60 == 15)
                              {
                                outlined copy of Data?(v330, v331);
                                outlined consume of Data?(v289, v291);
                                goto LABEL_186;
                              }

LABEL_192:
                              v305 = &v362;
LABEL_204:
                              v316 = *(v305 - 32);
                              outlined copy of Data?(v316, v292);
                              outlined consume of Data?(v289, v291);
                              outlined consume of Data?(v316, v292);
LABEL_205:
                              type metadata accessor for related decl 'e' for CKErrorCode(0);
                              v368 = 12;
                              _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
                              lazy protocol witness table accessor for type CloudSyncSuggestion and conformance CloudSyncSuggestion(&lazy protocol witness table cache variable for type related decl 'e' for CKErrorCode and conformance related decl 'e' for CKErrorCode, type metadata accessor for related decl 'e' for CKErrorCode);
                              _BridgedStoredNSError.init(_:userInfo:)();
                              v217 = v369;
                              swift_willThrow();
                              goto LABEL_153;
                            }
                          }
                        }
                      }
                    }

LABEL_152:
                    type metadata accessor for related decl 'e' for CKErrorCode(0);
                    v368 = 12;
                    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
                    lazy protocol witness table accessor for type CloudSyncSuggestion and conformance CloudSyncSuggestion(&lazy protocol witness table cache variable for type related decl 'e' for CKErrorCode and conformance related decl 'e' for CKErrorCode, type metadata accessor for related decl 'e' for CKErrorCode);
                    _BridgedStoredNSError.init(_:userInfo:)();
                    v217 = v369;
                    swift_willThrow();
                    v76 = v367;
LABEL_153:
                    v218 = v346;
                    v343(v346, v345, v154);
                    v219 = v154;
                    v220 = v76;
                    v221 = Logger.logObject.getter();
                    v222 = static os_log_type_t.error.getter();

                    if (os_log_type_enabled(v221, v222))
                    {
                      v223 = swift_slowAlloc();
                      v224 = swift_slowAlloc();
                      v369 = v224;
                      *v223 = 136446466;
                      *(v223 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004CLL, 0x8000000216578810, &v369);
                      *(v223 + 12) = 2080;
                      v225 = [v220 recordID];
                      v226 = [v225 recordName];

                      v227 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                      v229 = v228;

                      v230 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v227, v229, &v369);

                      *(v223 + 14) = v230;
                      _os_log_impl(&dword_21607C000, v221, v222, "CloudSyncSuggestion.%{public}s: iCloud tried to clobber our suggestion record %s. Re-uploading...", v223, 0x16u);
                      swift_arrayDestroy();
                      MEMORY[0x21CE94770](v224, -1, -1);
                      MEMORY[0x21CE94770](v223, -1, -1);
                    }

                    v323(v218, v219);
                    v231 = v353;
                    v232 = v365;
                    v233 = [v365 id];
                    v234 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v236 = v235;

                    v237 = [v232 zoneName];
                    if (v237)
                    {
                      v238 = v237;
                      v239 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                      v241 = v240;
                    }

                    else
                    {
                      v239 = 0;
                      v241 = 0xE000000000000000;
                    }

                    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordID);
                    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordZoneID);
                    v242._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v242._object = v243;
                    v244._countAndFlagsBits = v239;
                    v244._object = v241;
                    v245 = CKRecordZoneID.init(zoneName:ownerName:)(v244, v242).super.isa;
                    v246._countAndFlagsBits = v234;
                    v246._object = v236;
                    v247.super.isa = CKRecordID.init(recordName:zoneID:)(v246, v245).super.isa;
                    v248 = v351;
                    v351->super.isa = v247.super.isa;
                    v249 = v352;
                    (*(v352 + 104))(v248, *MEMORY[0x277CBBC68], v231);
                    v250 = type metadata accessor for TaskPriority();
                    v251 = v349;
                    (*(*(v250 - 8) + 56))(v349, 1, 1, v250);
                    v252 = v348;
                    (*(v249 + 16))(v348, v248, v231);
                    v253 = (*(v249 + 80) + 48) & ~*(v249 + 80);
                    v254 = swift_allocObject();
                    *(v254 + 2) = 0;
                    *(v254 + 3) = 0;
                    v255 = v350;
                    *(v254 + 4) = v364;
                    *(v254 + 5) = v255;
                    (*(v249 + 32))(&v254[v253], v252, v231);
                    swift_unknownObjectRetain();
                    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v251, &async function pointer to partial apply for closure #1 in CloudSyncSuggestion.mergeFromServerRecord(_:force:primary:primaryID:blobFolderURL:cloudManager:), v254);

                    outlined consume of Data?(v330, v331);
                    outlined consume of Data?(v328, v329);

                    swift_unknownObjectRelease();
                    (*(v249 + 8))(v248, v231);
                    v76 = v367;
                    goto LABEL_159;
                  }
                }

                else
                {
                  v216 = v335;
                  outlined init with copy of DateInterval?(v196, v335, &_s10Foundation4DateVSgMd);
                  if (v214(v196 + v213, 1, v212) != 1)
                  {
                    v258 = v196 + v213;
                    v259 = v336;
                    (*(v211 + 32))(v336, v258, v212);
                    lazy protocol witness table accessor for type CloudSyncSuggestion and conformance CloudSyncSuggestion(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
                    LODWORD(v359) = dispatch thunk of static Equatable.== infix(_:_:)();
                    v260 = *(v211 + 8);
                    v260(v259, v212);
                    outlined destroy of UTType?(v339, &_s10Foundation4DateVSgMd);
                    v260(v216, v212);
                    outlined destroy of UTType?(v196, &_s10Foundation4DateVSgMd);
                    v154 = v357;
                    if ((v359 & 1) == 0)
                    {
                      goto LABEL_152;
                    }

                    goto LABEL_162;
                  }

                  outlined destroy of UTType?(v339, &_s10Foundation4DateVSgMd);
                  (*(v211 + 8))(v216, v212);
                  v154 = v357;
                }

LABEL_151:
                outlined destroy of UTType?(v196, &_s10Foundation4DateVSg_ADtMd);
                goto LABEL_152;
              }
            }

            else if (!v324)
            {
              goto LABEL_119;
            }

LABEL_117:

            goto LABEL_152;
          }

LABEL_123:

          goto LABEL_117;
        }

        v167 = [v153 title];
        if (v167)
        {
          v168 = v167;
          v169 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v171 = v170;

          if (!v91)
          {

            goto LABEL_123;
          }

          if (v169 != v321 || v91 != v171)
          {
            v191 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v191 & 1) == 0)
            {
              goto LABEL_123;
            }

            goto LABEL_97;
          }

          goto LABEL_96;
        }

        if (!v91)
        {
          goto LABEL_97;
        }
      }

LABEL_116:

      goto LABEL_117;
    }
  }

  else
  {
    v76 = v367;
    CloudSyncSuggestion._populateObject(_:)(v367);
  }

LABEL_160:
  v256 = v76;
  CloudSyncSuggestion.lastKnownCKRecord.setter(v76);
  return outlined destroy of UTType?(v362, &_s10Foundation4DateVSgMd);
}

unint64_t lazy protocol witness table accessor for type CloudSyncSuggestion.LargeSuggestionDropPolicy and conformance CloudSyncSuggestion.LargeSuggestionDropPolicy()
{
  result = lazy protocol witness table cache variable for type CloudSyncSuggestion.LargeSuggestionDropPolicy and conformance CloudSyncSuggestion.LargeSuggestionDropPolicy;
  if (!lazy protocol witness table cache variable for type CloudSyncSuggestion.LargeSuggestionDropPolicy and conformance CloudSyncSuggestion.LargeSuggestionDropPolicy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CloudSyncSuggestion.LargeSuggestionDropPolicy and conformance CloudSyncSuggestion.LargeSuggestionDropPolicy);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CloudSyncSuggestion(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CloudSyncSuggestion and conformance CloudSyncSuggestion(&lazy protocol witness table cache variable for type CloudSyncSuggestion and conformance CloudSyncSuggestion, type metadata accessor for CloudSyncSuggestion);
  a1[2] = lazy protocol witness table accessor for type CloudSyncSuggestion and conformance CloudSyncSuggestion(&lazy protocol witness table cache variable for type CloudSyncSuggestion and conformance NSObject, type metadata accessor for CloudSyncSuggestion);
  result = lazy protocol witness table accessor for type CloudSyncSuggestion and conformance CloudSyncSuggestion(&lazy protocol witness table cache variable for type CloudSyncSuggestion and conformance CloudSyncSuggestion, type metadata accessor for CloudSyncSuggestion);
  a1[3] = result;
  return result;
}

uint64_t partial apply for closure #1 in CloudSyncSuggestion.mergeFromServerRecord(_:force:primary:primaryID:blobFolderURL:cloudManager:)(uint64_t a1)
{
  v4 = *(type metadata accessor for CKSyncEngine.PendingRecordZoneChange() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = static Exif.filterImage(imageSource:outputURL:);

  return closure #1 in CloudSyncSuggestion.mergeFromServerRecord(_:force:primary:primaryID:blobFolderURL:cloudManager:)(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t lazy protocol witness table accessor for type [DBAsset] and conformance <A> [A](unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9MomentsUI7DBAssetCGMd);
    lazy protocol witness table accessor for type CloudSyncSuggestion and conformance CloudSyncSuggestion(a2, type metadata accessor for DBAsset);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CloudSyncSuggestion and conformance CloudSyncSuggestion(unint64_t *a1, void (*a2)(uint64_t))
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

void *specialized Sequence.compactMap<A>(_:)(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v45 = a2;
  v46 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v37 - v7;
  v47 = type metadata accessor for Date();
  v9 = *(v47 - 8);
  v10 = MEMORY[0x28223BE20](v47);
  v40 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v39 = &v37 - v12;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_9MomentsUI11CloudDeviceV5valuetMd);
  MEMORY[0x28223BE20](v44);
  v43 = &v37 - v13;
  v14 = a3 + 64;
  v15 = 1 << *(a3 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a3 + 64);
  v18 = (v15 + 63) >> 6;
  v42 = (v9 + 48);
  v37 = v9;
  v38 = (v9 + 32);
  v48 = a3;

  v20 = 0;
  v41 = MEMORY[0x277D84F90];
  while (1)
  {
    v21 = v20;
    if (!v17)
    {
      break;
    }

    v22 = v8;
    v49 = v4;
LABEL_10:
    v23 = __clz(__rbit64(v17)) | (v20 << 6);
    v24 = *(v48 + 56);
    v25 = (*(v48 + 48) + 16 * v23);
    v26 = *v25;
    v27 = v25[1];
    v28 = v24 + *(*(type metadata accessor for CloudDevice() - 8) + 72) * v23;
    v29 = v43;
    outlined init with copy of CloudDevice(v28, &v43[*(v44 + 48)]);
    *v29 = v26;
    v29[1] = v27;

    v8 = v22;
    v30 = v49;
    v46(v29);
    v4 = v30;
    if (v30)
    {
      outlined destroy of UTType?(v29, &_sSS3key_9MomentsUI11CloudDeviceV5valuetMd);

LABEL_19:

      return v41;
    }

    v17 &= v17 - 1;
    outlined destroy of UTType?(v29, &_sSS3key_9MomentsUI11CloudDeviceV5valuetMd);
    if ((*v42)(v22, 1, v47) == 1)
    {
      result = outlined destroy of UTType?(v22, &_s10Foundation4DateVSgMd);
    }

    else
    {
      v31 = *v38;
      v32 = v47;
      (*v38)(v39, v8, v47);
      v31(v40, v39, v32);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v41[2] + 1, 1, v41);
      }

      v34 = v41[2];
      v33 = v41[3];
      if (v34 >= v33 >> 1)
      {
        v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v33 > 1, v34 + 1, 1, v41);
      }

      v35 = v40;
      v36 = v41;
      v41[2] = v34 + 1;
      result = (v31)(v36 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v34, v35, v47);
    }
  }

  while (1)
  {
    v20 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v20 >= v18)
    {
      goto LABEL_19;
    }

    v17 = *(v14 + 8 * v20);
    ++v21;
    if (v17)
    {
      v22 = v8;
      v49 = v4;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

{
  v4 = v3;
  v43 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v42 = &v35 - v7;
  v40 = type metadata accessor for CloudDevice();
  v8 = *(v40 - 8);
  v9 = MEMORY[0x28223BE20](v40);
  v36 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v35 = &v35 - v11;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_9MomentsUI11CloudDeviceV5valuetMd);
  MEMORY[0x28223BE20](v41);
  v13 = (&v35 - v12);
  v14 = a3 + 64;
  v15 = 1 << *(a3 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a3 + 64);
  v18 = (v15 + 63) >> 6;
  v44 = v8;
  v39 = (v8 + 48);
  v45 = a3;

  v20 = 0;
  v37 = MEMORY[0x277D84F90];
  while (1)
  {
    v21 = v20;
    if (!v17)
    {
      break;
    }

    v22 = v4;
LABEL_10:
    v23 = __clz(__rbit64(v17)) | (v20 << 6);
    v24 = *(v45 + 56);
    v25 = (*(v45 + 48) + 16 * v23);
    v26 = *v25;
    v27 = v25[1];
    v38 = *(v44 + 72);
    outlined init with copy of CloudDevice(v24 + v38 * v23, v13 + *(v41 + 48));
    *v13 = v26;
    v13[1] = v27;

    v28 = v42;
    v43(v13);
    v4 = v22;
    if (v22)
    {
      outlined destroy of UTType?(v13, &_sSS3key_9MomentsUI11CloudDeviceV5valuetMd);

LABEL_19:

      return v37;
    }

    v17 &= v17 - 1;
    outlined destroy of UTType?(v13, &_sSS3key_9MomentsUI11CloudDeviceV5valuetMd);
    if ((*v39)(v28, 1, v40) == 1)
    {
      result = outlined destroy of UTType?(v28, &_s9MomentsUI11CloudDeviceVSgMd);
    }

    else
    {
      v29 = v28;
      v30 = v35;
      outlined init with take of CloudDevice(v29, v35);
      outlined init with take of CloudDevice(v30, v36);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37[2] + 1, 1, v37);
      }

      v32 = v37[2];
      v31 = v37[3];
      if (v32 >= v31 >> 1)
      {
        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v31 > 1, v32 + 1, 1, v37);
      }

      v33 = v36;
      v34 = v37;
      v37[2] = v32 + 1;
      result = outlined init with take of CloudDevice(v33, v34 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + v32 * v38);
    }
  }

  while (1)
  {
    v20 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v20 >= v18)
    {
      goto LABEL_19;
    }

    v17 = *(v14 + 8 * v20);
    ++v21;
    if (v17)
    {
      v22 = v4;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized Dictionary.compactMapValues<A>(_:)(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v69 = a1;
  v70 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v58 - v7;
  v66 = type metadata accessor for CloudDevice();
  v9 = *(v66 - 8);
  v10 = MEMORY[0x28223BE20](v66);
  v60 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v59 = &v58 - v12;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_9MomentsUI11CloudDeviceV5valuetMd);
  v13 = MEMORY[0x28223BE20](v71);
  v61 = (&v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x28223BE20](v13);
  v73 = &v58 - v16;
  MEMORY[0x28223BE20](v15);
  v67 = &v58 - v17;
  v19 = a3 + 64;
  v18 = *(a3 + 64);
  v62 = MEMORY[0x277D84F98];
  v74 = MEMORY[0x277D84F98];
  v20 = 1 << *(a3 + 32);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & v18;
  v23 = (v20 + 63) >> 6;
  v68 = v9;
  v65 = (v9 + 48);
  v72 = a3;

  v25 = 0;
  for (i = v23; ; v23 = i)
  {
    v26 = v25;
    if (!v22)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v27 = v4;
      v28 = v8;
      v25 = v26;
LABEL_11:
      v29 = __clz(__rbit64(v22)) | (v25 << 6);
      v30 = v71;
      v31 = *(v72 + 56);
      v32 = (*(v72 + 48) + 16 * v29);
      v34 = *v32;
      v33 = v32[1];
      v35 = v67;
      v63 = *(v68 + 72);
      outlined init with copy of CloudDevice(v31 + v63 * v29, &v67[*(v71 + 48)]);
      *v35 = v34;
      v35[1] = v33;
      v36 = v73;
      outlined init with take of URL?(v35, v73, &_sSS3key_9MomentsUI11CloudDeviceV5valuetMd);
      v37 = *(v30 + 48);

      v38 = v36 + v37;
      v8 = v28;
      v69(v38);
      v4 = v27;
      if (v27)
      {
        outlined destroy of UTType?(v73, &_sSS3key_9MomentsUI11CloudDeviceV5valuetMd);
        v57 = v62;

        return v57;
      }

      v22 &= v22 - 1;
      if ((*v65)(v8, 1, v66) != 1)
      {
        break;
      }

      outlined destroy of UTType?(v73, &_sSS3key_9MomentsUI11CloudDeviceV5valuetMd);
      result = outlined destroy of UTType?(v8, &_s9MomentsUI11CloudDeviceVSgMd);
      v26 = v25;
      v23 = i;
      if (!v22)
      {
LABEL_7:
        while (1)
        {
          v25 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            break;
          }

          if (v25 >= v23)
          {

            return v62;
          }

          v22 = *(v19 + 8 * v25);
          ++v26;
          if (v22)
          {
            v27 = v4;
            v28 = v8;
            goto LABEL_11;
          }
        }

        __break(1u);
        goto LABEL_31;
      }
    }

    v39 = v59;
    outlined init with take of CloudDevice(v8, v59);
    outlined init with take of URL?(v73, v61, &_sSS3key_9MomentsUI11CloudDeviceV5valuetMd);
    outlined init with take of CloudDevice(v39, v60);
    v40 = v62;
    v41 = v62[2];
    if (v62[3] <= v41)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v41 + 1, 1);
      v40 = v74;
    }

    v42 = *v61;
    v43 = v61[1];
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v44 = v40 + 8;
    v62 = v40;
    v45 = -1 << *(v40 + 32);
    v46 = result & ~v45;
    v47 = v46 >> 6;
    if (((-1 << v46) & ~v40[(v46 >> 6) + 8]) == 0)
    {
      break;
    }

    v48 = __clz(__rbit64((-1 << v46) & ~v40[(v46 >> 6) + 8])) | v46 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    v53 = *(v71 + 48);
    *(v44 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
    v55 = v62;
    v54 = v63;
    v56 = (v62[6] + 16 * v48);
    *v56 = v42;
    v56[1] = v43;
    outlined init with take of CloudDevice(v60, v55[7] + v48 * v54);
    ++v55[2];
    result = outlined destroy of CloudDevice(v61 + v53);
  }

  v49 = 0;
  v50 = (63 - v45) >> 6;
  while (++v47 != v50 || (v49 & 1) == 0)
  {
    v51 = v47 == v50;
    if (v47 == v50)
    {
      v47 = 0;
    }

    v49 |= v51;
    v52 = v44[v47];
    if (v52 != -1)
    {
      v48 = __clz(__rbit64(~v52)) + (v47 << 6);
      goto LABEL_27;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

MomentsUI::CloudDevice::Capability_optional __swiftcall CloudDevice.Capability.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CloudDevice.Capability.init(rawValue:), v3);

  v7 = 8;
  if (v5 < 8)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t CloudDevice.Capability.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x626E4F726576656ELL;
  v3 = 0x756F527465737361;
  if (v1 != 6)
  {
    v3 = 0x6174536775626564;
  }

  v4 = 1280328553;
  if (v1 != 4)
  {
    v4 = 0x68746C616548;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x64756F6C43776F6CLL;
  if (v1 != 2)
  {
    v5 = 0x6469766F72506F6ELL;
  }

  if (*v0)
  {
    v2 = 0x6C61636F4C776F6CLL;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t static CloudDevice.primaryPhone(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v114 = a2;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd);
  MEMORY[0x28223BE20](v98);
  v106 = v93 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v95 = v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v107 = v93 - v7;
  v8 = type metadata accessor for CloudDevice();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v97 = v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v99 = v93 - v12;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_9MomentsUI11CloudDeviceV5valuetMd);
  v105 = *(v115 - 8);
  v13 = MEMORY[0x28223BE20](v115);
  v15 = (v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x28223BE20](v13);
  v103 = (v93 - v17);
  v18 = MEMORY[0x28223BE20](v16);
  v102 = v93 - v19;
  MEMORY[0x28223BE20](v18);
  v116 = v93 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_9MomentsUI11CloudDeviceV5valuetSgMd);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v104 = v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v108 = v93 - v24;
  v25 = type metadata accessor for Date();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = v93 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = v93 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = v93 - v33;
  static Date.distantPast.getter();
  static Date.now.getter();
  v35 = COERCE_DOUBLE(specialized static DefaultsManager.MomentsUIDomain.doubleValueFor(_:)());
  v110 = v32;
  v118 = v32;
  if (v36)
  {
    v35 = 2419200.0;
  }

  v119 = v35;
  v120 = v34;
  v37 = specialized Dictionary.compactMapValues<A>(_:)(partial apply for closure #1 in static CloudDevice.primaryPhone(in:), v117, a1);
  static Date.distantPast.getter();
  v38 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  v113 = v34;
  v93[2] = v38;
  v39 = dispatch thunk of static Equatable.== infix(_:_:)();
  v100 = v26;
  v40 = *(v26 + 8);
  v94 = v29;
  v111 = v25;
  v109 = v40;
  v40(v29, v25);
  if (v39)
  {
    (*(v9 + 56))(v114, 1, 1, v8);

    v41 = v111;
    v42 = v109;
    v109(v110, v111);
    return v42(v113, v41);
  }

  v93[1] = v26 + 8;
  v101 = v9;
  v96 = v8;
  v43 = 1 << *(v37 + 32);
  v44 = -1;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  v45 = v44 & *(v37 + 64);
  if (!v45)
  {
    v50 = 0;
    v49 = (v43 + 63) >> 6;
    v51 = v107;
    while (v49 - 1 != v45)
    {
      v46 = v45 + 1;
      v52 = *(v37 + 72 + 8 * v45);
      v50 -= 64;
      ++v45;
      if (v52)
      {
        v48 = (v52 - 1) & v52;
        v47 = __clz(__rbit64(v52)) - v50;
        goto LABEL_13;
      }
    }

    v66 = 1;
    v67 = v114;
    v65 = v108;
LABEL_24:
    v68 = v105;
    v69 = v115;
    (*(v105 + 56))(v65, v66, 1, v115);

    v70 = v104;
    outlined init with copy of DateInterval?(v65, v104, &_sSS3key_9MomentsUI11CloudDeviceV5valuetSgMd);
    v71 = (*(v68 + 48))(v70, 1, v69);
    v72 = v96;
    v73 = v101;
    v74 = v106;
    if (v71 == 1)
    {
      outlined destroy of UTType?(v65, &_sSS3key_9MomentsUI11CloudDeviceV5valuetSgMd);
      outlined destroy of UTType?(v70, &_sSS3key_9MomentsUI11CloudDeviceV5valuetSgMd);
      v75 = v110;
      v41 = v111;
      v42 = v109;
LABEL_33:
      (*(v73 + 56))(v67, 1, 1, v72);
LABEL_34:
      v42(v75, v41);
      return v42(v113, v41);
    }

    v76 = v70 + *(v69 + 48);
    v77 = v97;
    outlined init with take of CloudDevice(v76, v97);
    v78 = v77;
    v79 = v72;
    v80 = v99;
    outlined init with take of CloudDevice(v78, v99);
    v81 = *(v79 + 56);
    v82 = v100;
    v41 = v111;
    (*(v100 + 16))(v51, v113, v111);
    (*(v82 + 56))(v51, 0, 1, v41);
    v83 = *(v98 + 48);
    outlined init with copy of DateInterval?(v80 + v81, v74, &_s10Foundation4DateVSgMd);
    outlined init with copy of DateInterval?(v51, v74 + v83, &_s10Foundation4DateVSgMd);
    v84 = *(v82 + 48);
    if (v84(v74, 1, v41) == 1)
    {
      outlined destroy of UTType?(v51, &_s10Foundation4DateVSgMd);
      outlined destroy of UTType?(v108, &_sSS3key_9MomentsUI11CloudDeviceV5valuetSgMd);
      v85 = v84(v74 + v83, 1, v41);
      v42 = v109;
      if (v85 == 1)
      {
        outlined destroy of UTType?(v74, &_s10Foundation4DateVSgMd);
LABEL_38:
        v92 = v114;
        outlined init with take of CloudDevice(v80, v114);
        (*(v73 + 56))(v92, 0, 1, v96);
        v75 = v110;
        goto LABEL_34;
      }
    }

    else
    {
      v86 = v95;
      outlined init with copy of DateInterval?(v74, v95, &_s10Foundation4DateVSgMd);
      if (v84(v74 + v83, 1, v41) != 1)
      {
        v88 = v94;
        (*(v100 + 32))(v94, v74 + v83, v41);
        v89 = dispatch thunk of static Equatable.== infix(_:_:)();
        v90 = v88;
        v91 = v109;
        v109(v90, v41);
        v42 = v91;
        outlined destroy of UTType?(v51, &_s10Foundation4DateVSgMd);
        outlined destroy of UTType?(v108, &_sSS3key_9MomentsUI11CloudDeviceV5valuetSgMd);
        v91(v86, v41);
        outlined destroy of UTType?(v74, &_s10Foundation4DateVSgMd);
        if (v89)
        {
          goto LABEL_38;
        }

LABEL_32:
        outlined destroy of CloudDevice(v80);
        v75 = v110;
        v67 = v114;
        v72 = v96;
        goto LABEL_33;
      }

      outlined destroy of UTType?(v51, &_s10Foundation4DateVSgMd);
      outlined destroy of UTType?(v108, &_sSS3key_9MomentsUI11CloudDeviceV5valuetSgMd);
      v42 = v109;
      v109(v86, v41);
    }

    outlined destroy of UTType?(v74, &_s10Foundation4DateVSg_ADtMd);
    goto LABEL_32;
  }

  v46 = 0;
  v47 = __clz(__rbit64(v45));
  v48 = (v45 - 1) & v45;
  v49 = (v43 + 63) >> 6;
LABEL_13:
  v53 = *(v37 + 56);
  v54 = (*(v37 + 48) + 16 * v47);
  v56 = *v54;
  v55 = v54[1];
  v112 = *(v101 + 72);
  v57 = v102;
  outlined init with copy of CloudDevice(v53 + v112 * v47, &v102[*(v115 + 48)]);
  *v57 = v56;
  v57[1] = v55;
  outlined init with take of URL?(v57, v116, &_sSS3key_9MomentsUI11CloudDeviceV5valuetMd);

  v58 = v103;
  if (v48)
  {
    goto LABEL_16;
  }

LABEL_17:
  while (1)
  {
    v59 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      break;
    }

    if (v59 >= v49)
    {

      v65 = v108;
      outlined init with take of URL?(v116, v108, &_sSS3key_9MomentsUI11CloudDeviceV5valuetMd);
      v66 = 0;
      v67 = v114;
      v51 = v107;
      goto LABEL_24;
    }

    v48 = *(v37 + 64 + 8 * v59);
    ++v46;
    if (v48)
    {
      while (1)
      {
        v60 = __clz(__rbit64(v48)) | (v59 << 6);
        v61 = (*(v37 + 48) + 16 * v60);
        v63 = *v61;
        v62 = v61[1];
        outlined init with copy of CloudDevice(*(v37 + 56) + v60 * v112, v15 + *(v115 + 48));
        *v15 = v63;
        v15[1] = v62;
        outlined init with take of URL?(v15, v58, &_sSS3key_9MomentsUI11CloudDeviceV5valuetMd);

        v48 &= v48 - 1;
        if (closure #2 in static CloudDevice.primaryPhone(in:)(v116, v58))
        {
          v64 = v116;
          outlined destroy of UTType?(v116, &_sSS3key_9MomentsUI11CloudDeviceV5valuetMd);
          outlined init with take of URL?(v58, v64, &_sSS3key_9MomentsUI11CloudDeviceV5valuetMd);
          v46 = v59;
          if (!v48)
          {
            goto LABEL_17;
          }
        }

        else
        {
          outlined destroy of UTType?(v58, &_sSS3key_9MomentsUI11CloudDeviceV5valuetMd);
          v46 = v59;
          if (!v48)
          {
            goto LABEL_17;
          }
        }

LABEL_16:
        v59 = v46;
      }
    }
  }

  __break(1u);

  outlined destroy of UTType?(v58, &_sSS3key_9MomentsUI11CloudDeviceV5valuetMd);
  result = outlined destroy of UTType?(v116, &_sSS3key_9MomentsUI11CloudDeviceV5valuetMd);
  __break(1u);
  return result;
}

uint64_t type metadata accessor for CloudDevice()
{
  result = type metadata singleton initialization cache for CloudDevice;
  if (!type metadata singleton initialization cache for CloudDevice)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static CloudDevice.previousPrimaryPhone(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v83 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v80 = &v79 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v86 = &v79 - v9;
  MEMORY[0x28223BE20](v8);
  v102 = &v79 - v10;
  v11 = type metadata accessor for CloudDevice();
  v12 = *(v11 - 1);
  v13 = MEMORY[0x28223BE20](v11);
  v90 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v79 - v16;
  MEMORY[0x28223BE20](v15);
  v106 = &v79 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSgMd);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v85 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v79 - v22;
  v107 = type metadata accessor for Date();
  v24 = *(v107 - 8);
  v25 = MEMORY[0x28223BE20](v107);
  v79 = &v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v88 = &v79 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v92 = &v79 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v96 = &v79 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v95 = &v79 - v34;
  MEMORY[0x28223BE20](v33);
  v98 = &v79 - v35;
  static Date.now.getter();
  v36 = COERCE_DOUBLE(specialized static DefaultsManager.MomentsUIDomain.doubleValueFor(_:)());
  if (v37)
  {
    v38 = 2419200.0;
  }

  else
  {
    v38 = v36;
  }

  v39 = *(v12 + 56);
  v97 = v23;
  v82 = v12 + 56;
  v81 = v39;
  v39(v23, 1, 1, v11);
  v40 = a1 + 64;
  v41 = 1 << *(a1 + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v43 = v42 & *(a1 + 64);
  v44 = (v41 + 63) >> 6;
  v99 = (v24 + 32);
  v104 = (v24 + 8);
  v105 = (v24 + 48);
  v84 = (v12 + 48);

  v46 = 0;
  v103 = a1;
  v100 = v12;
  v101 = v11;
  v94 = v17;
  while (v43)
  {
LABEL_13:
    v48 = __clz(__rbit64(v43));
    v43 &= v43 - 1;
    v49 = v106;
    outlined init with copy of CloudDevice(*(a1 + 56) + *(v12 + 72) * (v48 | (v46 << 6)), v106);
    outlined init with take of CloudDevice(v49, v17);
    v50 = &v17[v11[10]];
    if ((v50[8] & 1) != 0 || *v50)
    {
      goto LABEL_7;
    }

    v51 = v102;
    outlined init with copy of DateInterval?(&v17[v11[20]], v102, &_s10Foundation4DateVSgMd);
    v52 = *v105;
    v53 = v107;
    if ((*v105)(v51, 1, v107) == 1)
    {
      outlined destroy of UTType?(v51, &_s10Foundation4DateVSgMd);
      goto LABEL_22;
    }

    v93 = v52;
    v54 = v95;
    v89 = *v99;
    v89(v95, v51, v53);
    v55 = v96;
    static Date.distantPast.getter();
    v56 = static Date.> infix(_:_:)();
    v57 = *v104;
    (*v104)(v55, v53);
    v58 = v54;
    v17 = v94;
    v87 = v57;
    v57(v58, v53);
    if (v56)
    {
      v11 = v101;
      v59 = v86;
      outlined init with copy of DateInterval?(&v17[v101[7]], v86, &_s10Foundation4DateVSgMd);
      v60 = v107;
      if (v93(v59, 1, v107) == 1)
      {

        outlined destroy of CloudDevice(v17);
        outlined destroy of UTType?(v97, &_s9MomentsUI11CloudDeviceVSgMd);
        v87(v98, v60);
        outlined destroy of UTType?(v59, &_s10Foundation4DateVSgMd);
        return v81(v91, 1, 1, v11);
      }

      v89(v92, v59, v60);
      Date.timeIntervalSince(_:)();
      v61 = v97;
      if (v62 >= v38)
      {

        v78 = v87;
        v87(v92, v60);
        outlined destroy of CloudDevice(v17);
        outlined destroy of UTType?(v61, &_s9MomentsUI11CloudDeviceVSgMd);
        v78(v98, v60);
        return v81(v91, 1, 1, v11);
      }

      v63 = v85;
      outlined init with copy of DateInterval?(v97, v85, &_s9MomentsUI11CloudDeviceVSgMd);
      if ((*v84)(v63, 1, v11) == 1)
      {
        v87(v92, v107);
        outlined destroy of UTType?(v61, &_s9MomentsUI11CloudDeviceVSgMd);
        outlined destroy of UTType?(v63, &_s9MomentsUI11CloudDeviceVSgMd);
        outlined init with take of CloudDevice(v17, v61);
        result = v81(v61, 0, 1, v11);
        a1 = v103;
        v12 = v100;
      }

      else
      {
        outlined init with take of CloudDevice(v63, v90);
        v64 = v80;
        outlined init with copy of DateInterval?(&v17[v11[14]], v80, &_s10Foundation4DateVSgMd);
        v65 = v107;
        v66 = v93;
        if (v93(v64, 1, v107) == 1)
        {
          static Date.distantPast.getter();
          v67 = v66(v64, 1, v65);
          v68 = v79;
          if (v67 != 1)
          {
            outlined destroy of UTType?(v64, &_s10Foundation4DateVSgMd);
          }
        }

        else
        {
          v89(v88, v64, v65);
          v68 = v79;
        }

        v69 = v83;
        outlined init with copy of DateInterval?(v90 + v11[20], v83, &_s10Foundation4DateVSgMd);
        v70 = v65;
        v71 = v93;
        if (v93(v69, 1, v70) == 1)
        {
          static Date.distantPast.getter();
          v72 = v71(v69, 1, v107);
          a1 = v103;
          v73 = v68;
          v12 = v100;
          v74 = v107;
          if (v72 != 1)
          {
            outlined destroy of UTType?(v83, &_s10Foundation4DateVSgMd);
          }
        }

        else
        {
          v74 = v107;
          v89(v68, v69, v107);
          a1 = v103;
          v73 = v68;
          v12 = v100;
        }

        LODWORD(v93) = static Date.> infix(_:_:)();
        v75 = v74;
        v76 = v87;
        v87(v73, v75);
        v76(v88, v107);
        outlined destroy of CloudDevice(v90);
        v76(v92, v107);
        if (v93)
        {
          v77 = v90;
          outlined init with take of CloudDevice(v17, v90);
          result = outlined destroy of CloudDevice(v77);
        }

        else
        {
LABEL_7:
          result = outlined destroy of CloudDevice(v17);
        }
      }
    }

    else
    {
LABEL_22:
      result = outlined destroy of CloudDevice(v17);
      a1 = v103;
      v12 = v100;
      v11 = v101;
    }
  }

  while (1)
  {
    v47 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      break;
    }

    if (v47 >= v44)
    {
      (*v104)(v98, v107);

      return outlined init with take of URL?(v97, v91, &_s9MomentsUI11CloudDeviceVSgMd);
    }

    v43 = *(v40 + 8 * v47);
    ++v46;
    if (v43)
    {
      v46 = v47;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t static CloudDevice.nominatedPhone(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v249 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation4DateV5valuetSgMd);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v259 = &v230 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v265 = (&v230 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v230 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v241 = &v230 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v252 = &v230 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v248 = &v230 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v230 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v251 = &v230 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v257 = &v230 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v230 - v24;
  v279 = type metadata accessor for CloudDevice();
  v269 = *(v279 - 1);
  v26 = MEMORY[0x28223BE20](v279);
  v244 = &v230 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v242 = &v230 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v243 = (&v230 - v31);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v230 - v33;
  MEMORY[0x28223BE20](v32);
  v268 = &v230 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_9MomentsUI11CloudDeviceV5valuetSgMd);
  v37 = MEMORY[0x28223BE20](v36 - 8);
  v282 = (&v230 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v37);
  v40 = &v230 - v39;
  v280 = type metadata accessor for Date();
  v41 = *(v280 - 8);
  v42 = MEMORY[0x28223BE20](v280);
  v267 = &v230 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  v233 = &v230 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v235 = &v230 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v234 = &v230 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v238 = &v230 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v240 = &v230 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v253 = &v230 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v246 = &v230 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v245 = &v230 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v255 = &v230 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v256 = &v230 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v263 = &v230 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v262 = &v230 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v70 = &v230 - v69;
  MEMORY[0x28223BE20](v68);
  v72 = &v230 - v71;
  v250 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DateVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v260 = v72;
  static Date.distantPast.getter();
  v254 = v70;
  static Date.now.getter();
  v73 = COERCE_DOUBLE(specialized static DefaultsManager.MomentsUIDomain.doubleValueFor(_:)());
  if (v74)
  {
    v75 = 2419200.0;
  }

  else
  {
    v75 = v73;
  }

  v76 = a1 + 64;
  v77 = 1 << *(a1 + 32);
  v78 = -1;
  if (v77 < 64)
  {
    v78 = ~(-1 << v77);
  }

  v79 = v78 & *(a1 + 64);
  v277 = (v41 + 48);
  v275 = (v41 + 32);
  v273 = (v77 + 63) >> 6;
  v274 = (v41 + 8);
  v237 = (v41 + 16);
  v236 = v41;
  v80 = v41 + 40;
  v81 = a1;
  v232 = v80;

  v82 = a1 + 64;
  v83 = 0;
  v272 = v40;
  v278 = v81;
  v239 = v10;
  v247 = v19;
  v258 = v25;
  v281 = v34;
  v271 = v76;
LABEL_7:
  v84 = v273;
  while (1)
  {
    if (v79)
    {
      v85 = v25;
      v86 = v83;
      goto LABEL_21;
    }

    v87 = v84 <= v83 + 1 ? v83 + 1 : v84;
    v88 = v87 - 1;
    do
    {
      v86 = v83 + 1;
      if (__OFADD__(v83, 1))
      {
        __break(1u);
LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
        goto LABEL_130;
      }

      if (v86 >= v84)
      {
        v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_9MomentsUI11CloudDeviceV5valuetMd);
        (*(*(v110 - 8) + 56))(v282, 1, 1, v110);
        v79 = 0;
        v83 = v88;
        v99 = v272;
        goto LABEL_22;
      }

      v79 = *(v82 + 8 * v86);
      ++v83;
    }

    while (!v79);
    v85 = v25;
    v83 = v86;
LABEL_21:
    v89 = __clz(__rbit64(v79));
    v79 &= v79 - 1;
    v90 = v89 | (v86 << 6);
    v91 = (*(v81 + 48) + 16 * v90);
    v93 = *v91;
    v92 = v91[1];
    v94 = v268;
    outlined init with copy of CloudDevice(*(v81 + 56) + *(v269 + 72) * v90, v268);
    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_9MomentsUI11CloudDeviceV5valuetMd);
    v96 = *(v95 + 48);
    v97 = v282;
    *v282 = v93;
    v97[1] = v92;
    v98 = v97;
    outlined init with take of CloudDevice(v94, v97 + v96);
    (*(*(v95 - 8) + 56))(v98, 0, 1, v95);

    v99 = v272;
    v25 = v85;
    v34 = v281;
LABEL_22:
    outlined init with take of URL?(v282, v99, &_sSS3key_9MomentsUI11CloudDeviceV5valuetSgMd);
    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_9MomentsUI11CloudDeviceV5valuetMd);
    if ((*(*(v100 - 8) + 48))(v99, 1, v100) == 1)
    {
      break;
    }

    v101 = *v99;
    v19 = v99[1];
    outlined init with take of CloudDevice(v99 + *(v100 + 48), v34);
    v102 = v279[20];
    outlined init with copy of DateInterval?(&v34[v102], v25, &_s10Foundation4DateVSgMd);
    v103 = v280;
    v276 = *v277;
    if (v276(v25, 1, v280) == 1)
    {

      outlined destroy of UTType?(v25, &_s10Foundation4DateVSgMd);
      v34 = v281;
LABEL_9:
      outlined destroy of CloudDevice(v34);
      v81 = v278;
      goto LABEL_10;
    }

    v261 = v101;
    v270 = v19;
    v104 = v262;
    v266 = *v275;
    v266(v262, v25, v103);
    v105 = v25;
    v106 = v263;
    static Date.distantPast.getter();
    v107 = static Date.> infix(_:_:)();
    v19 = *v274;
    (*v274)(v106, v103);
    v264 = v19;
    (v19)(v104, v103);
    if ((v107 & 1) == 0)
    {

      v34 = v281;
      v25 = v105;
      goto LABEL_9;
    }

    v19 = v281;
    v108 = v257;
    outlined init with copy of DateInterval?(&v281[v279[7]], v257, &_s10Foundation4DateVSgMd);
    v109 = v276;
    if (v276(v108, 1, v103) == 1)
    {
      outlined destroy of CloudDevice(v19);

      outlined destroy of UTType?(v108, &_s10Foundation4DateVSgMd);
      v81 = v278;
      v25 = v258;
      v34 = v19;
      goto LABEL_10;
    }

    v19 = v256;
    v266(v256, v108, v103);
    Date.timeIntervalSince(_:)();
    if (v111 >= v75)
    {
      v264(v19, v103);

      v34 = v281;
      outlined destroy of CloudDevice(v281);
      v81 = v278;
      v25 = v258;
LABEL_10:
      v84 = v273;
      v82 = v271;
    }

    else
    {
      v112 = v251;
      outlined init with copy of DateInterval?(&v281[v102], v251, &_s10Foundation4DateVSgMd);
      v113 = v109(v112, 1, v103);
      v25 = v258;
      if (v113 == 1)
      {
        static Date.distantFuture.getter();
        v114 = v109(v112, 1, v103);
        v115 = v253;
        if (v114 != 1)
        {
          outlined destroy of UTType?(v251, &_s10Foundation4DateVSgMd);
        }
      }

      else
      {
        v266(v255, v112, v103);
        v115 = v253;
      }

      v34 = v281;
      v116 = &v281[v279[10]];
      v117 = v252;
      v118 = v264;
      if ((v116[8] & 1) == 0 && !*v116)
      {
        v119 = v247;
        outlined init with copy of DateInterval?(&v281[v279[14]], v247, &_s10Foundation4DateVSgMd);
        v120 = v280;
        if (v276(v119, 1, v280) == 1)
        {
          outlined destroy of UTType?(v119, &_s10Foundation4DateVSgMd);
          v121 = v120;
          goto LABEL_45;
        }

        v122 = v245;
        v266(v245, v119, v120);
        lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
        if (dispatch thunk of static Comparable.< infix(_:_:)())
        {
          v121 = v120;
          v123 = v122;
          goto LABEL_44;
        }

        v124 = v260;
        if (static Date.> infix(_:_:)())
        {
          v121 = v280;
          v118(v124, v280);
          v266(v124, v122, v121);
        }

        else
        {
          v123 = v122;
          v121 = v280;
LABEL_44:
          v118(v123, v121);
        }

LABEL_45:
        v125 = &v34[v279[16]];
        v126 = v248;
        outlined init with copy of DateInterval?(v125, v248, &_s10Foundation4DateVSgMd);
        if (v276(v126, 1, v121) == 1)
        {
          outlined destroy of UTType?(v126, &_s10Foundation4DateVSgMd);
          goto LABEL_49;
        }

        v127 = v246;
        v266(v246, v126, v121);
        lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
        if (dispatch thunk of static Comparable.< infix(_:_:)())
        {
          v118(v127, v121);
LABEL_49:
          v117 = v252;
          v34 = v281;
          v115 = v253;
        }

        else
        {
          v128 = v260;
          v129 = static Date.> infix(_:_:)();
          v34 = v281;
          v115 = v253;
          if (v129)
          {
            v130 = v128;
            v131 = v127;
            v132 = v128;
            v133 = v280;
            v118(v130, v280);
            v266(v132, v131, v133);
          }

          else
          {
            v118(v127, v280);
          }

          v117 = v252;
        }
      }

      v134 = &v34[v279[17]];
      v135 = v134[1];
      if (!v135)
      {
        goto LABEL_61;
      }

      v136 = *v134;
      v137 = HIBYTE(v135) & 0xF;
      if ((v135 & 0x2000000000000000) == 0)
      {
        v137 = v136 & 0xFFFFFFFFFFFFLL;
      }

      if (!v137)
      {
LABEL_61:

        v140 = v255;
        v138 = v280;
        v141 = v280;
        v19 = v274;
LABEL_73:
        v118(v140, v141);
        v118(v256, v138);
        goto LABEL_74;
      }

      v230 = v136;
      v231 = v135;
      outlined init with copy of DateInterval?(&v34[v279[18]], v117, &_s10Foundation4DateVSgMd);
      v138 = v280;
      v139 = v276;
      if (v276(v117, 1, v280) == 1)
      {
        static Date.distantPast.getter();
        if (v139(v117, 1, v138) != 1)
        {
          outlined destroy of UTType?(v117, &_s10Foundation4DateVSgMd);
        }
      }

      else
      {
        v266(v115, v117, v138);
      }

      v142 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
      v143 = v255;
      if (dispatch thunk of static Comparable.< infix(_:_:)())
      {

        v19 = v274;
        v118(v115, v138);
        v140 = v143;
        goto LABEL_72;
      }

      if ((static Date.> infix(_:_:)() & 1) == 0)
      {

        v138 = v280;
        v19 = v274;
        v118(v115, v280);
        v140 = v255;
LABEL_72:
        v141 = v138;
        goto LABEL_73;
      }

      v81 = v278;
      if (!*(v278 + 16) || (v144 = specialized __RawDictionaryStorage.find<A>(_:)(v230, v231), (v145 & 1) == 0))
      {

        v153 = v115;
        v154 = v280;
        v19 = v274;
        v155 = v264;
        v264(v153, v280);
        v155(v255, v154);
        v155(v256, v154);
        goto LABEL_76;
      }

      v146 = v242;
      outlined init with copy of CloudDevice(*(v81 + 56) + *(v269 + 72) * v144, v242);
      v147 = v146;
      v148 = v243;
      outlined init with take of CloudDevice(v147, v243);
      v149 = v148 + v279[10];
      if ((v149[8] & 1) != 0 || *v149)
      {

        v150 = v115;
        v151 = v280;
        v19 = v274;
        v152 = v264;
        v264(v150, v280);
        v152(v255, v151);
        v152(v256, v151);
        outlined destroy of CloudDevice(v243);
        goto LABEL_76;
      }

      v156 = v241;
      outlined init with copy of DateInterval?(v243 + v279[20], v241, &_s10Foundation4DateVSgMd);
      v157 = v280;
      if (v276(v156, 1, v280) == 1)
      {

        outlined destroy of UTType?(v156, &_s10Foundation4DateVSgMd);
        v158 = v255;
        v159 = v264;
        goto LABEL_84;
      }

      v231 = v142;
      v160 = v240;
      v266(v240, v156, v157);
      v161 = v263;
      static Date.distantPast.getter();
      v162 = static Date.> infix(_:_:)();
      v159 = v264;
      v264(v161, v157);
      v159(v160, v157);
      if ((v162 & 1) == 0)
      {

        v115 = v253;
        v158 = v255;
LABEL_84:
        v169 = v280;
        v19 = v274;
        v159(v115, v280);
        v159(v158, v169);
        v159(v256, v169);
        outlined destroy of CloudDevice(v243);
        v34 = v281;
        goto LABEL_85;
      }

      v163 = v239;
      outlined init with copy of DateInterval?(v243 + v279[16], v239, &_s10Foundation4DateVSgMd);
      v164 = v276;
      v165 = v276(v163, 1, v157);
      v166 = v253;
      if (v165 == 1)
      {
        v167 = v238;
        static Date.distantPast.getter();
        v168 = v164(v163, 1, v157);
        v34 = v281;
        if (v168 != 1)
        {
          outlined destroy of UTType?(v163, &_s10Foundation4DateVSgMd);
        }
      }

      else
      {
        v167 = v238;
        v266(v238, v163, v157);
        v34 = v281;
      }

      v19 = static Date.> infix(_:_:)();
      v159(v167, v157);
      if (v19)
      {
        v170 = v250;
        if (!v250[2])
        {

          v19 = v280;
LABEL_94:
          v178 = *v243;
          v177 = v243[1];
          (*v237)(v233, v253, v19);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v283 = v170;
          v19 = specialized __RawDictionaryStorage.find<A>(_:)(v178, v177);
          v181 = v170[2];
          v182 = (v180 & 1) == 0;
          v183 = v181 + v182;
          if (__OFADD__(v181, v182))
          {
            goto LABEL_131;
          }

          v184 = v180;
          if (v170[3] < v183)
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v183, isUniquelyReferenced_nonNull_native);
            v185 = specialized __RawDictionaryStorage.find<A>(_:)(v178, v177);
            if ((v184 & 1) == (v186 & 1))
            {
              v19 = v185;
              goto LABEL_100;
            }

LABEL_133:
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);

            __break(1u);
            return result;
          }

          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized _NativeDictionary.copy()();
          }

LABEL_100:
          v187 = v283;
          v250 = v283;
          if (v184)
          {
            v188 = v280;
            (*(v236 + 40))(v283[7] + *(v236 + 72) * v19, v233, v280);
            v19 = v274;
            v189 = v264;
            v264(v253, v188);
            v189(v255, v188);
            v189(v256, v188);
            goto LABEL_104;
          }

          v283[(v19 >> 6) + 8] |= 1 << v19;
          v190 = (v187[6] + 16 * v19);
          *v190 = v178;
          v190[1] = v177;
          v191 = v280;
          v266((v187[7] + *(v236 + 72) * v19), v233, v280);

          v19 = v274;
          v192 = v264;
          v264(v253, v191);
          v192(v255, v191);
          v192(v256, v191);
          v193 = v187[2];
          v194 = __OFADD__(v193, 1);
          v195 = v193 + 1;
          if (v194)
          {
            goto LABEL_132;
          }

          v250[2] = v195;
LABEL_104:
          outlined destroy of CloudDevice(v243);
          v34 = v281;
          outlined destroy of CloudDevice(v281);
          v81 = v278;
          v25 = v258;
          v82 = v271;
          goto LABEL_7;
        }

        v171 = specialized __RawDictionaryStorage.find<A>(_:)(v261, v270);
        v173 = v172;

        v19 = v280;
        if ((v173 & 1) == 0)
        {
          goto LABEL_94;
        }

        v174 = v170[7] + *(v236 + 72) * v171;
        v175 = v235;
        (*(v236 + 16))(v235, v174, v280);
        v176 = v234;
        v266(v234, v175, v19);
        LOBYTE(v175) = dispatch thunk of static Comparable.< infix(_:_:)();
        v159(v176, v19);
        if (v175)
        {
          goto LABEL_94;
        }

        v159(v253, v19);
        v159(v255, v19);
        v159(v256, v19);
        outlined destroy of CloudDevice(v243);
        v34 = v281;
LABEL_74:
        outlined destroy of CloudDevice(v34);
        v84 = v273;
        v81 = v278;
        v82 = v271;
      }

      else
      {

        v159(v166, v157);
        v159(v255, v157);
        v159(v256, v157);
        outlined destroy of CloudDevice(v243);
LABEL_85:
        v81 = v278;
LABEL_76:
        outlined destroy of CloudDevice(v34);
        v84 = v273;
        v82 = v271;
      }
    }
  }

  v196 = v278;

  v197 = v250;
  v198 = v250[2];
  if (v198)
  {
    v199 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS3key_10Foundation4DateV5valuet_Tt1g5(v250[2], 0);
    v200 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation4DateV5valuetMd) - 8);
    v19 = specialized Sequence._copySequenceContents(initializing:)(&v283, v199 + ((*(v200 + 80) + 32) & ~*(v200 + 80)), v198, v197);

    outlined consume of [String : DBAssetData].Iterator._Variant();
    if (v19 == v198)
    {
      v196 = v278;
      goto LABEL_109;
    }

LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  v199 = MEMORY[0x277D84F90];
LABEL_109:
  v283 = v199;
  specialized MutableCollection<>.sort(by:)(&v283, v196);

  v201 = v259;
  v202 = v265;
  v203 = v274;
  v204 = 0;
  v205 = v283;
  v206 = v283[2];
  v19 = &_sSS3key_10Foundation4DateV5valuetMd;
  while (2)
  {
    if (v204 == v206)
    {
      v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation4DateV5valuetMd);
      (*(*(v207 - 8) + 56))(v201, 1, 1, v207);
      v204 = v206;
    }

    else
    {
      if ((v204 & 0x8000000000000000) != 0)
      {
        goto LABEL_128;
      }

      if (v204 >= v205[2])
      {
        goto LABEL_129;
      }

      v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation4DateV5valuetMd);
      v209 = *(v208 - 8);
      outlined init with copy of DateInterval?(v205 + ((*(v209 + 80) + 32) & ~*(v209 + 80)) + *(v209 + 72) * v204++, v201, &_sSS3key_10Foundation4DateV5valuetMd);
      (*(v209 + 56))(v201, 0, 1, v208);
      v202 = v265;
    }

    outlined init with take of URL?(v201, v202, &_sSS3key_10Foundation4DateV5valuetSgMd);
    v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation4DateV5valuetMd);
    if ((*(*(v210 - 8) + 48))(v202, 1, v210) == 1)
    {

      v219 = *v203;
      v220 = v280;
      (*v203)(v254, v280);
      v219(v260, v220);
LABEL_124:
      v222 = 1;
      v223 = v249;
      goto LABEL_126;
    }

    v211 = v202;
    v213 = *v202;
    v212 = v202[1];
    v214 = v211 + *(v210 + 48);
    v215 = v280;
    (*v275)(v267, v214, v280);
    if ((static Date.> infix(_:_:)() & 1) == 0)
    {

      v221 = *v274;
      (*v274)(v267, v215);
      v221(v254, v215);
      v221(v260, v215);
      goto LABEL_124;
    }

    v203 = v274;
    if (!*(v278 + 16))
    {
      (*v274)(v267, v215);

LABEL_111:
      v201 = v259;
      v202 = v265;
      continue;
    }

    break;
  }

  v216 = specialized __RawDictionaryStorage.find<A>(_:)(v213, v212);
  v218 = v217;

  if ((v218 & 1) == 0)
  {
    (*v203)(v267, v280);
    goto LABEL_111;
  }

  v224 = *(v278 + 56) + *(v269 + 72) * v216;
  v225 = v244;
  outlined init with copy of CloudDevice(v224, v244);
  v226 = *v203;
  v227 = v280;
  (*v203)(v267, v280);
  v226(v254, v227);
  v226(v260, v227);
  v228 = v249;
  outlined init with take of CloudDevice(v225, v249);
  v223 = v228;
  v222 = 0;
LABEL_126:
  (*(v269 + 56))(v223, v222, 1, v279);
}