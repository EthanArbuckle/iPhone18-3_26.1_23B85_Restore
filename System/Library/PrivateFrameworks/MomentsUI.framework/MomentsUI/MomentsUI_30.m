uint64_t closure #1 in closure #2 in CloudDevicesDB.initialized()(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - v10;
  v12 = *a1;
  v13 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_onboarded;
  swift_beginAccess();
  v14 = *(a2 + v13);
  if (v12 == 2)
  {
    if (v14 != 2)
    {
      *(a2 + v13) = 2;
    }
  }

  else if (v14 == 2 || ((v12 ^ v14) & 1) != 0)
  {
    *(a2 + v13) = v12;
    (*(v9 + 16))(v11, a4, v8);
    v15 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = a2;
    *(v16 + 24) = a3;
    (*(v9 + 32))(v16 + v15, v11, v8);

    return specialized BTask.init(name:operation:)(0xD000000000000032, 0x8000000216584740, &async function pointer to partial apply for closure #1 in closure #1 in closure #2 in CloudDevicesDB.initialized(), v16);
  }

  result = swift_beginAccess();
  if ((*(a3 + 16) & 1) == 0)
  {
    swift_beginAccess();
    *(a3 + 16) = 1;
    return CheckedContinuation.resume(returning:)();
  }

  return result;
}

uint64_t closure #1 in closure #1 in closure #2 in CloudDevicesDB.initialized()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = swift_task_alloc();
  v5[10] = v6;
  *v6 = v5;
  v6[1] = closure #1 in closure #1 in closure #2 in CloudDevicesDB.initialized();

  return CloudDevicesDB.checkDB(forceUpdate:)(0);
}

uint64_t closure #1 in closure #1 in closure #2 in CloudDevicesDB.initialized()()
{

  return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #2 in CloudDevicesDB.initialized(), 0, 0);
}

{
  v1 = *(v0 + 64);
  swift_beginAccess();
  if ((*(v1 + 16) & 1) == 0)
  {
    v2 = *(v0 + 64);
    swift_beginAccess();
    *(v2 + 16) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
    CheckedContinuation.resume(returning:)();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t closure #3 in CloudDevicesDB.initialized()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a3;
  v18 = a1;
  v20 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - v5;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVySSSg_GGMd);
  v7 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v9 = &v17 - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySSSg_GMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<String?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySSSg_GMd);
  lazy protocol witness table accessor for type String? and conformance <A> A?();
  Publisher<>.removeDuplicates()();
  (*(v4 + 16))(v6, v18, v3);
  v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v12 = swift_allocObject();
  v13 = v20;
  *(v12 + 16) = v20;
  *(v12 + 24) = v10;
  (*(v4 + 32))(v12 + v11, v6, v3);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<Published<String?>.Publisher> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVySSSg_GGMd);

  v14 = v19;
  v15 = Publisher<>.sink(receiveValue:)();

  (*(v7 + 8))(v9, v14);
  *(v13 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__snapshotGenerationSubscription) = v15;
}

uint64_t closure #1 in closure #3 in CloudDevicesDB.initialized()(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = a1[1];
  if (!v11 || (v12 = *a1, v13 = (a2 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__snapshotGeneration), (v14 = *(a2 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__snapshotGeneration + 8)) != 0) && (v12 == *v13 ? (v15 = v11 == v14) : (v15 = 0), v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    result = swift_beginAccess();
    if ((*(a3 + 16) & 1) == 0)
    {
      swift_beginAccess();
      *(a3 + 16) = 1;
      return CheckedContinuation.resume(returning:)();
    }
  }

  else
  {
    *v13 = v12;
    v13[1] = v11;

    (*(v8 + 16))(v10, v20, v7);
    v17 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = a2;
    *(v18 + 24) = a3;
    (*(v8 + 32))(v18 + v17, v10, v7);

    return specialized BTask.init(name:operation:)(0xD00000000000003CLL, 0x8000000216584700, &async function pointer to partial apply for closure #1 in closure #1 in closure #3 in CloudDevicesDB.initialized(), v18);
  }

  return result;
}

uint64_t closure #1 in closure #1 in closure #3 in CloudDevicesDB.initialized()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = swift_task_alloc();
  v5[10] = v6;
  *v6 = v5;
  v6[1] = closure #1 in closure #2 in closure #1 in CloudDevicesDB.initialized();

  return CloudDevicesDB.checkDB(forceUpdate:)(0);
}

uint64_t closure #4 in CloudDevicesDB.initialized()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a4;
  v20[1] = a3;
  v21 = a1;
  v22 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v20 - v7;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVy9MomentsUI12CloudManagerC9FreeSpaceOSg_GGMd);
  v9 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v11 = v20 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy9MomentsUI12CloudManagerC9FreeSpaceOSg_GMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<CloudManager.FreeSpace?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy9MomentsUI12CloudManagerC9FreeSpaceOSg_GMd);
  lazy protocol witness table accessor for type CloudManager.FreeSpace? and conformance <A> A?();
  Publisher<>.removeDuplicates()();
  (*(v5 + 16))(v8, v21, v4);
  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = (v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  v16 = v22;
  *(v15 + 16) = v22;
  *(v15 + 24) = v12;
  (*(v5 + 32))(v15 + v13, v8, v4);
  *(v15 + v14) = v24;
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<Published<CloudManager.FreeSpace?>.Publisher> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVy9MomentsUI12CloudManagerC9FreeSpaceOSg_GGMd);

  v17 = v23;
  v18 = Publisher<>.sink(receiveValue:)();

  (*(v9 + 8))(v11, v17);
  *(v16 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__freeSpaceSubscription) = v18;
}

uint64_t closure #1 in closure #4 in CloudDevicesDB.initialized()(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v71 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
  v70 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v65 - v7;
  v9 = type metadata accessor for Logger();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v65 - v14;
  MEMORY[0x28223BE20](v13);
  v19 = &v65 - v18;
  v20 = *a1;
  if (v20 == 3 || (v21 = *(v16 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__freeSpace), v20 == v21))
  {
    result = swift_beginAccess();
    if ((*(a3 + 16) & 1) == 0)
    {
      swift_beginAccess();
      *(a3 + 16) = 1;
      return CheckedContinuation.resume(returning:)();
    }
  }

  else
  {
    *(v16 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__freeSpace) = v20;
    v68 = v16;
    v69 = v17;
    if (v20)
    {
      if (v20 == 1)
      {
        if (one-time initialization token for Log != -1)
        {
          swift_once();
        }

        v23 = __swift_project_value_buffer(v9, static CloudDevicesDB.Log);
        swift_beginAccess();
        v24 = v69;
        (*(v69 + 16))(v15, v23, v9);
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v25, v26))
        {
          v66 = v26;
          v67 = v25;
          v27 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          v72 = v65;
          *v27 = 136446722;
          swift_beginAccess();
          v28 = StaticString.description.getter();
          v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v72);

          *(v27 + 4) = v30;
          *(v27 + 12) = 2082;
          *(v27 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x696C616974696E69, 0xED0000292864657ALL, &v72);
          *(v27 + 22) = 2082;
          v31 = StaticString.description.getter();
          v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v72);

          *(v27 + 24) = v33;
          v34 = v67;
          _os_log_impl(&dword_21607C000, v67, v66, "%{public}s.%{public}s FreeSpace: %{public}s to .low", v27, 0x20u);
          v35 = v65;
          swift_arrayDestroy();
          MEMORY[0x21CE94770](v35, -1, -1);
          MEMORY[0x21CE94770](v27, -1, -1);

          (*(v69 + 8))(v15, v9);
        }

        else
        {

          (*(v24 + 8))(v15, v9);
        }
      }

      else
      {
        if (one-time initialization token for Log != -1)
        {
          swift_once();
        }

        v49 = __swift_project_value_buffer(v9, static CloudDevicesDB.Log);
        swift_beginAccess();
        v50 = v69;
        (*(v69 + 16))(v12, v49, v9);
        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v51, v52))
        {
          v66 = v52;
          v67 = v51;
          v53 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          v72 = v65;
          *v53 = 136446722;
          swift_beginAccess();
          v54 = StaticString.description.getter();
          v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, &v72);

          *(v53 + 4) = v56;
          *(v53 + 12) = 2082;
          *(v53 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x696C616974696E69, 0xED0000292864657ALL, &v72);
          *(v53 + 22) = 2082;
          v57 = StaticString.description.getter();
          v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v58, &v72);

          *(v53 + 24) = v59;
          v60 = v67;
          _os_log_impl(&dword_21607C000, v67, v66, "%{public}s.%{public}s FreeSpace: %{public}s to .critical", v53, 0x20u);
          v61 = v65;
          swift_arrayDestroy();
          MEMORY[0x21CE94770](v61, -1, -1);
          MEMORY[0x21CE94770](v53, -1, -1);

          (*(v69 + 8))(v12, v9);
        }

        else
        {

          (*(v50 + 8))(v12, v9);
        }
      }
    }

    else
    {
      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v36 = __swift_project_value_buffer(v9, static CloudDevicesDB.Log);
      swift_beginAccess();
      v37 = v69;
      (*(v69 + 16))(v19, v36, v9);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v66 = v39;
        v67 = v38;
        v40 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v72 = v65;
        *v40 = 136446722;
        swift_beginAccess();
        v41 = StaticString.description.getter();
        v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, &v72);

        *(v40 + 4) = v43;
        *(v40 + 12) = 2082;
        *(v40 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x696C616974696E69, 0xED0000292864657ALL, &v72);
        *(v40 + 22) = 2080;
        v44 = StaticString.description.getter();
        v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, &v72);

        *(v40 + 24) = v46;
        v47 = v67;
        _os_log_impl(&dword_21607C000, v67, v66, "%{public}s.%{public}s FreeSpace: %s to .ok", v40, 0x20u);
        v48 = v65;
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v48, -1, -1);
        MEMORY[0x21CE94770](v40, -1, -1);

        (*(v69 + 8))(v19, v9);
      }

      else
      {

        (*(v37 + 8))(v19, v9);
      }
    }

    v62 = v70;
    (*(v70 + 16))(v8, v71, v6);
    v63 = (*(v62 + 80) + 32) & ~*(v62 + 80);
    v64 = swift_allocObject();
    *(v64 + 16) = v68;
    *(v64 + 24) = a3;
    (*(v62 + 32))(v64 + v63, v8, v6);

    return specialized BTask.init(name:operation:)(0xD000000000000033, 0x80000002165846B0, &async function pointer to partial apply for closure #1 in closure #1 in closure #4 in CloudDevicesDB.initialized(), v64);
  }

  return result;
}

uint64_t closure #2 in CloudDevicesDB.initialized()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v25 = a5;
  v26 = a6;
  v23 = a4;
  v24 = a2;
  v20[1] = a3;
  v21 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v20 - v8;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVySbSg_GGMd);
  v10 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v12 = v20 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySbSg_GMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<Bool?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySbSg_GMd);
  lazy protocol witness table accessor for type Bool? and conformance <A> A?();
  Publisher<>.removeDuplicates()();
  (*(v7 + 16))(v9, v21, v6);
  v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v15 = swift_allocObject();
  v16 = v24;
  *(v15 + 16) = v24;
  *(v15 + 24) = v13;
  (*(v7 + 32))(v15 + v14, v9, v6);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<Published<Bool?>.Publisher> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVySbSg_GGMd);

  v17 = v22;
  v18 = Publisher<>.sink(receiveValue:)();

  (*(v10 + 8))(v12, v17);
  *(v16 + *v26) = v18;
}

uint64_t closure #1 in closure #5 in CloudDevicesDB.initialized()(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18[-v10];
  v12 = *a1;
  v13 = a2 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state;
  v14 = *(a2 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state + 1);
  if (v12 == 2)
  {
    if (v14 != 2)
    {
      *(v13 + 1) = 2;
    }
  }

  else if (v14 == 2 || ((v12 ^ v14) & 1) != 0)
  {
    *(v13 + 1) = v12;
    (*(v9 + 16))(v11, a4, v8);
    v15 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = a2;
    *(v16 + 24) = a3;
    (*(v9 + 32))(v16 + v15, v11, v8);

    return specialized BTask.init(name:operation:)(0xD00000000000003CLL, 0x8000000216584670, &async function pointer to partial apply for closure #1 in closure #1 in closure #5 in CloudDevicesDB.initialized(), v16);
  }

  result = swift_beginAccess();
  if ((*(a3 + 16) & 1) == 0)
  {
    swift_beginAccess();
    *(a3 + 16) = 1;
    return CheckedContinuation.resume(returning:)();
  }

  return result;
}

uint64_t closure #1 in closure #6 in CloudDevicesDB.initialized()(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19[-v10];
  v12 = *a1;
  v13 = *(a2 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__iCloudPhotoLibraryAvailable);
  if (v12 == 2)
  {
    if (v13 != 2)
    {
      *(a2 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__iCloudPhotoLibraryAvailable) = 2;
    }
  }

  else if (v13 == 2 || ((v12 ^ v13) & 1) != 0)
  {
    *(a2 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__iCloudPhotoLibraryAvailable) = v12;
    v20 = 0;
    v21 = 0xE000000000000000;
    _StringGuts.grow(_:)(58);
    MEMORY[0x21CE92100](0x76654464756F6C43, 0xEF2E424473656369);
    MEMORY[0x21CE92100](0x696C616974696E69, 0xED0000292864657ALL);
    MEMORY[0x21CE92100](0xD000000000000029, 0x8000000216584640);
    v14 = v20;
    v15 = v21;
    (*(v9 + 16))(v11, a4, v8);
    v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = a2;
    *(v17 + 24) = a3;
    (*(v9 + 32))(v17 + v16, v11, v8);

    return specialized BTask.init(name:operation:)(v14, v15, &async function pointer to partial apply for closure #1 in closure #1 in closure #6 in CloudDevicesDB.initialized(), v17);
  }

  result = swift_beginAccess();
  if ((*(a3 + 16) & 1) == 0)
  {
    swift_beginAccess();
    *(a3 + 16) = 1;
    return CheckedContinuation.resume(returning:)();
  }

  return result;
}

uint64_t closure #1 in closure #7 in CloudDevicesDB.initialized()(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17[-v10];
  v12 = *a1;
  v13 = *(a2 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__healthDataAvailable);
  if (v12 == 2)
  {
    if (v13 != 2)
    {
      *(a2 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__healthDataAvailable) = 2;
    }
  }

  else if (v13 == 2 || ((v12 ^ v13) & 1) != 0)
  {
    *(a2 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__healthDataAvailable) = v12;
    (*(v9 + 16))(v11, a4, v8);
    v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = a2;
    *(v15 + 24) = a3;
    (*(v9 + 32))(v15 + v14, v11, v8);

    return specialized BTask.init(name:operation:)(0xD00000000000003DLL, 0x8000000216584600, &async function pointer to partial apply for closure #1 in closure #1 in closure #7 in CloudDevicesDB.initialized(), v15);
  }

  result = swift_beginAccess();
  if ((*(a3 + 16) & 1) == 0)
  {
    swift_beginAccess();
    *(a3 + 16) = 1;
    return CheckedContinuation.resume(returning:)();
  }

  return result;
}

uint64_t closure #8 in CloudDevicesDB.initialized()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  outlined init with copy of DateInterval?(a1, v9, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd);
  v14 = lazy protocol witness table accessor for type CloudDevice and conformance CloudDevice(&lazy protocol witness table cache variable for type CloudDevicesDB and conformance CloudDevicesDB, type metadata accessor for CloudDevicesDB);
  v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v16 = (v7 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = v14;
  outlined init with take of URL?(v9, v17 + v15, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd);
  *(v17 + v16) = a2;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = v20;
  swift_retain_n();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v12, &async function pointer to partial apply for closure #1 in closure #8 in CloudDevicesDB.initialized(), v17);
}

uint64_t closure #1 in closure #8 in CloudDevicesDB.initialized()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd);
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #8 in CloudDevicesDB.initialized(), a5, 0);
}

uint64_t closure #1 in closure #8 in CloudDevicesDB.initialized()()
{
  v30 = v0;
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[5];
  v6 = __swift_project_value_buffer(v3, static CloudDevicesDB.Log);
  swift_beginAccess();
  (*(v2 + 16))(v1, v6, v3);
  outlined init with copy of DateInterval?(v5, v4, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[7];
    v10 = v0[8];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29 = v12;
    *v11 = 136446466;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x696C616974696E69, 0xED0000292864657ALL, &v29);
    *(v11 + 12) = 2080;
    outlined init with copy of DateInterval?(v10, v9, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd);
    v13 = type metadata accessor for DBSnapshotAnalytics.SnapshotEvent();
    v14 = (*(*(v13 - 8) + 48))(v9, 1, v13);
    v15 = v0[7];
    if (v14 == 1)
    {
      outlined destroy of UTType?(v0[7], &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd);
      v16 = 0xE300000000000000;
      v17 = 7104878;
    }

    else
    {
      v17 = DBSnapshotAnalytics.SnapshotEvent.description.getter();
      v16 = v22;
      outlined destroy of CloudDevice(v15, type metadata accessor for DBSnapshotAnalytics.SnapshotEvent);
    }

    v24 = v0[10];
    v23 = v0[11];
    v25 = v0[9];
    outlined destroy of UTType?(v0[8], &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v16, &v29);

    *(v11 + 14) = v26;
    _os_log_impl(&dword_21607C000, v7, v8, "CloudDevicesDB.%{public}s Received new dbSnapshot event. trigger _processDBSnapshotEvent: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v12, -1, -1);
    MEMORY[0x21CE94770](v11, -1, -1);

    (*(v24 + 8))(v23, v25);
  }

  else
  {
    v19 = v0[10];
    v18 = v0[11];
    v21 = v0[8];
    v20 = v0[9];

    outlined destroy of UTType?(v21, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd);
    (*(v19 + 8))(v18, v20);
  }

  CloudDevicesDB._processDBSnapshotEvent(_:)(v0[5]);
  v27 = swift_task_alloc();
  v0[12] = v27;
  *v27 = v0;
  v27[1] = closure #1 in closure #8 in CloudDevicesDB.initialized();

  return CloudDevicesDB.checkDB(forceUpdate:)(0);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t CloudDevicesDB._processDBSnapshotEvent(_:)(uint64_t a1)
{
  *&v671 = a1;
  v663 = type metadata accessor for Date();
  v665 = *(v663 - 8);
  v2 = MEMORY[0x28223BE20](v663);
  v624 = &v609 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v631 = &v609 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v619 = &v609 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v620 = &v609 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v618 = &v609 - v11;
  MEMORY[0x28223BE20](v10);
  v633 = &v609 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v644 = &v609 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v652 = &v609 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v668 = (&v609 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  v669 = &v609 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v667 = &v609 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v670 = &v609 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v642 = &v609 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v656 = &v609 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v641 = &v609 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v651 = &v609 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v640 = &v609 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v639 = &v609 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v653 = &v609 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v638 = &v609 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v637 = &v609 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v645 = &v609 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v636 = &v609 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v646 = &v609 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v52 = &v609 - v51;
  v53 = MEMORY[0x28223BE20](v50);
  v658 = (&v609 - v54);
  v55 = MEMORY[0x28223BE20](v53);
  v657 = &v609 - v56;
  MEMORY[0x28223BE20](v55);
  v58 = &v609 - v57;
  v647 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v59 = MEMORY[0x28223BE20](v647);
  v616 = &v609 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = MEMORY[0x28223BE20](v59);
  v615 = &v609 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v621 = &v609 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v627 = &v609 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v630 = &v609 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v629 = &v609 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v634 = &v609 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v614 = &v609 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v613 = &v609 - v76;
  v77 = MEMORY[0x28223BE20](v75);
  v623 = &v609 - v78;
  v79 = MEMORY[0x28223BE20](v77);
  v628 = &v609 - v80;
  v81 = MEMORY[0x28223BE20](v79);
  v632 = &v609 - v82;
  v83 = MEMORY[0x28223BE20](v81);
  v626 = &v609 - v84;
  v85 = MEMORY[0x28223BE20](v83);
  v612 = &v609 - v86;
  v87 = MEMORY[0x28223BE20](v85);
  v617 = &v609 - v88;
  v89 = MEMORY[0x28223BE20](v87);
  v622 = &v609 - v90;
  v91 = MEMORY[0x28223BE20](v89);
  v635 = &v609 - v92;
  v93 = MEMORY[0x28223BE20](v91);
  v611 = &v609 - v94;
  v95 = MEMORY[0x28223BE20](v93);
  v610 = &v609 - v96;
  v97 = MEMORY[0x28223BE20](v95);
  v648 = &v609 - v98;
  v99 = MEMORY[0x28223BE20](v97);
  v649 = &v609 - v100;
  v101 = MEMORY[0x28223BE20](v99);
  *&v655 = &v609 - v102;
  v103 = MEMORY[0x28223BE20](v101);
  v105 = &v609 - v104;
  v106 = MEMORY[0x28223BE20](v103);
  v108 = &v609 - v107;
  v109 = MEMORY[0x28223BE20](v106);
  v650 = &v609 - v110;
  v111 = MEMORY[0x28223BE20](v109);
  v662 = &v609 - v112;
  MEMORY[0x28223BE20](v111);
  v659 = &v609 - v113;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSgMd);
  v115 = MEMORY[0x28223BE20](v114 - 8);
  v625 = &v609 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = MEMORY[0x28223BE20](v115);
  v643 = &v609 - v118;
  v119 = MEMORY[0x28223BE20](v117);
  v121 = &v609 - v120;
  v122 = MEMORY[0x28223BE20](v119);
  v124 = &v609 - v123;
  MEMORY[0x28223BE20](v122);
  v126 = &v609 - v125;
  v666 = v1;
  CloudDevicesDB.currentDevice.getter(&v609 - v125);
  v127 = type metadata accessor for CloudDevice();
  v128 = *(v127 - 8);
  v129 = *(v128 + 48);
  v654 = v127;
  v660 = v128 + 48;
  v661 = v129;
  if ((v129)(v126, 1) == 1)
  {
    outlined destroy of UTType?(v126, &_s9MomentsUI11CloudDeviceVSgMd);
    memset(v692 + 8, 0, 72);
    *&v692[0] = 1;
  }

  else
  {
    CloudDevice.snapshotEventAggregation.getter(v691);
    outlined destroy of CloudDevice(v126, type metadata accessor for CloudDevice);
    v692[2] = v691[2];
    v692[3] = v691[3];
    v692[4] = v691[4];
    v692[0] = v691[0];
    v692[1] = v691[1];
  }

  CloudDevicesDB.currentDevice.getter(v124);
  v130 = v654;
  v131 = v661(v124, 1, v654);
  v132 = v663;
  if (v131 == 1)
  {
    outlined destroy of UTType?(v124, &_s9MomentsUI11CloudDeviceVSgMd);
    v133 = v665;
    (*(v665 + 56))(v659, 1, 1, v132);
  }

  else
  {
    outlined init with copy of DateInterval?(&v124[*(v130 + 92)], v659, &_s10Foundation4DateVSgMd);
    outlined destroy of CloudDevice(v124, type metadata accessor for CloudDevice);
    v133 = v665;
  }

  CloudDevicesDB.currentDevice.getter(v121);
  if (v661(v121, 1, v130) == 1)
  {
    outlined destroy of UTType?(v121, &_s9MomentsUI11CloudDeviceVSgMd);
    (*(v133 + 56))(v662, 1, 1, v132);
  }

  else
  {
    outlined init with copy of DateInterval?(&v121[*(v130 + 96)], v662, &_s10Foundation4DateVSgMd);
    outlined destroy of CloudDevice(v121, type metadata accessor for CloudDevice);
  }

  outlined init with copy of DateInterval?(v671, v58, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd);
  v134 = type metadata accessor for DBSnapshotAnalytics.SnapshotEvent();
  isa = v134[-1].isa;
  v136 = *(isa + 6);
  v137 = (isa + 48);
  if (v136(v58, 1, v134) == 1)
  {
    outlined destroy of UTType?(v58, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd);
    LODWORD(v648) = 0;
LABEL_34:
    LODWORD(v649) = 0;
    v139 = v670;
    goto LABEL_35;
  }

  v138 = v58[SLODWORD(v134[7].isa)];
  outlined destroy of CloudDevice(v58, type metadata accessor for DBSnapshotAnalytics.SnapshotEvent);
  if (v138 <= 3)
  {
    v139 = v670;
    if (v138)
    {
      LODWORD(v648) = 0;
      LODWORD(v649) = 0;
      if (v138 != 1)
      {
        goto LABEL_35;
      }

      v140 = v658;
      outlined init with copy of DateInterval?(v671, v658, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd);
      if (v136(v140, 1, v134) == 1)
      {
        outlined destroy of UTType?(v140, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd);
        v141 = 1;
        v142 = v663;
        v143 = v665;
      }

      else
      {
        v143 = v665;
        v142 = v663;
        (*(v665 + 16))(v105, v140 + SHIDWORD(v134[2].isa), v663);
        outlined destroy of CloudDevice(v140, type metadata accessor for DBSnapshotAnalytics.SnapshotEvent);
        v141 = 0;
      }

      v161 = *(v143 + 56);
      LODWORD(v648) = 1;
      v161(v105, v141, 1, v142);
      v162 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_lastSnapshotCreationDate;
      v163 = v666;
      swift_beginAccess();
      v164 = v163 + v162;
      v165 = v105;
    }

    else
    {
      v150 = v657;
      outlined init with copy of DateInterval?(v671, v657, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd);
      if (v136(v150, 1, v134) == 1)
      {
        outlined destroy of UTType?(v150, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd);
        v151 = 1;
        v152 = v663;
        v153 = v665;
      }

      else
      {
        v153 = v665;
        v152 = v663;
        (*(v665 + 16))(v108, &v150[SHIDWORD(v134[2].isa)], v663);
        outlined destroy of CloudDevice(v150, type metadata accessor for DBSnapshotAnalytics.SnapshotEvent);
        v151 = 0;
      }

      v166 = *(v153 + 56);
      LODWORD(v648) = 1;
      v166(v108, v151, 1, v152);
      v167 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_lastSnapshotCreationDate;
      v168 = v666;
      swift_beginAccess();
      v164 = v168 + v167;
      v165 = v108;
    }

    outlined assign with take of Date?(v165, v164);
    swift_endAccess();
    goto LABEL_34;
  }

  v139 = v670;
  if (v138 == 5)
  {
    v154 = v650;
    static Date.now.getter();
    (*(v665 + 56))(v154, 0, 1, v663);
    v155 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_lastUILaunchDate;
    v156 = v666;
    swift_beginAccess();
    outlined assign with take of Date?(v154, v156 + v155);
    swift_endAccess();
    if (*&v692[0] == 1 || (v157 = *(&v692[2] + 1)) == 0)
    {

      v157 = MEMORY[0x277D84F90];
    }

    else
    {
    }

    v158 = v655;
    outlined init with copy of DateInterval?(v156 + v155, v655, &_s10Foundation4DateVSgMd);
    v159 = *(v665 + 48);
    v160 = v663;
    if (v159(v158, 1, v663) == 1)
    {
      outlined destroy of UTType?(v692, &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMd);
      outlined destroy of UTType?(v158, &_s10Foundation4DateVSgMd);
LABEL_342:

      if (one-time initialization token for analytics != -1)
      {
        swift_once();
      }

      v573 = type metadata accessor for Logger();
      __swift_project_value_buffer(v573, static CommonLogger.analytics);

      v574 = Logger.logObject.getter();
      v575 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v574, v575))
      {
        v576 = swift_slowAlloc();
        v577 = swift_slowAlloc();
        *&v691[0] = v577;
        *v576 = 136446722;
        *(v576 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000002165845E0, v691);
        *(v576 + 12) = 2080;
        v578 = v650;
        outlined init with copy of DateInterval?(v156 + v155, v650, &_s10Foundation4DateVSgMd);
        v579 = String.init<A>(describing:)();
        v581 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v579, v580, v691);

        *(v576 + 14) = v581;
        v156 = v666;
        *(v576 + 22) = 2080;
        v582 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_lastSnapshotCreationDate;
        swift_beginAccess();
        outlined init with copy of DateInterval?(v156 + v582, v578, &_s10Foundation4DateVSgMd);
        v583 = String.init<A>(describing:)();
        v585 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v583, v584, v691);

        *(v576 + 24) = v585;
        _os_log_impl(&dword_21607C000, v574, v575, "[CloudDevicesDB.%{public}s] UI launched but did not update snapshotEventAggregation. lastUILaunchDate=%s, lastSnapshotCreationDate=%s", v576, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v577, -1, -1);
        MEMORY[0x21CE94770](v576, -1, -1);
      }

      goto LABEL_309;
    }

    outlined destroy of UTType?(v158, &_s10Foundation4DateVSgMd);
    if (v159(v662, 1, v160) == 1)
    {
      goto LABEL_341;
    }

    v548 = v649;
    outlined init with copy of DateInterval?(v156 + v155, v649, &_s10Foundation4DateVSgMd);
    result = (v159)(v548, 1, v160);
    if (result == 1)
    {
LABEL_382:
      __break(1u);
      goto LABEL_383;
    }

    *&v671 = v157;
    v549 = v648;
    outlined init with copy of DateInterval?(v662, v648, &_s10Foundation4DateVSgMd);
    result = (v159)(v549, 1, v160);
    if (result == 1)
    {
LABEL_383:
      __break(1u);
      goto LABEL_384;
    }

    v550 = v649;
    v551 = static Date.> infix(_:_:)();
    v552 = v549;
    v553 = v551;
    v554 = *(v665 + 8);
    v554(v552, v160);
    v554(v550, v160);
    if ((v553 & 1) == 0)
    {
LABEL_341:
      outlined destroy of UTType?(v692, &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMd);
      goto LABEL_342;
    }

    v555 = v610;
    outlined init with copy of DateInterval?(v156 + v155, v610, &_s10Foundation4DateVSgMd);
    result = (v159)(v555, 1, v160);
    if (result == 1)
    {
LABEL_384:
      __break(1u);
      goto LABEL_385;
    }

    v556 = v611;
    outlined init with copy of DateInterval?(v662, v611, &_s10Foundation4DateVSgMd);
    result = (v159)(v556, 1, v160);
    if (result == 1)
    {
LABEL_385:
      __break(1u);
      return result;
    }

    Date.timeIntervalSince(_:)();
    v558 = v557;
    v554(v556, v160);
    v554(v555, v160);
    v559 = v671;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v559 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v559 + 2) + 1, 1, v559);
    }

    v561 = *(v559 + 2);
    v560 = *(v559 + 3);
    if (v561 >= v560 >> 1)
    {
      v559 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v560 > 1), v561 + 1, 1, v559);
    }

    *(v559 + 2) = v561 + 1;
    *&v559[8 * v561 + 32] = v558;
    if (one-time initialization token for analytics != -1)
    {
      swift_once();
    }

    v562 = type metadata accessor for Logger();
    __swift_project_value_buffer(v562, static CommonLogger.analytics);
    v563 = Logger.logObject.getter();
    v564 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v563, v564))
    {
      v565 = swift_slowAlloc();
      v566 = swift_slowAlloc();
      *&v691[0] = v566;
      *v565 = 136446466;
      *(v565 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000002165845E0, v691);
      *(v565 + 12) = 2048;
      *(v565 + 14) = v558;
      _os_log_impl(&dword_21607C000, v563, v564, "[CloudDevicesDB.%{public}s] Appended timeBetweenSnapshotCreationAndMomentsUILaunch to SnapshotEventAggregation:%f", v565, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v566);
      MEMORY[0x21CE94770](v566, -1, -1);
      MEMORY[0x21CE94770](v565, -1, -1);
    }

    if (*&v692[0] >= 2uLL)
    {
      v586 = *(&v692[1] + 1);

      v572 = v567;
    }

    else
    {

      v567 = *&v692[0];
      if (*&v692[0] == 1)
      {
        v568 = MEMORY[0x277D84F98];
        v569 = MEMORY[0x277D84F90];
        v570 = MEMORY[0x277D84F90];
        v571 = MEMORY[0x277D84F90];
        v572 = MEMORY[0x277D84F90];
        goto LABEL_368;
      }

      v572 = MEMORY[0x277D84F90];
      v586 = *(&v692[1] + 1);
    }

    if (v586)
    {
      v568 = v586;
    }

    else
    {
      v568 = MEMORY[0x277D84F98];
    }

    *(v691 + 8) = *(v692 + 8);
    *&v691[0] = v567;
    *(&v691[1] + 1) = v586;
    v691[2] = v692[2];
    v691[3] = v692[3];
    v691[4] = v692[4];
    v571 = *&v692[2];

    outlined init with copy of DateInterval?(v692, &v684, &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMd);

    outlined destroy of CloudDevicesDB.SnapshotEventAggregation(v691);
    if (v571)
    {
      v587 = *(v692 + 8);
      v588 = *(&v692[1] + 8);
      v589 = *(&v692[2] + 8);
      v590 = *(&v692[3] + 8);
      v591 = *(&v692[4] + 1);
    }

    else
    {
      if (*&v692[0] == 1)
      {
        v569 = MEMORY[0x277D84F90];
        v570 = MEMORY[0x277D84F90];
        v571 = MEMORY[0x277D84F90];
        goto LABEL_368;
      }

      v591 = *(&v692[4] + 1);
      v590 = *(&v692[3] + 8);
      v589 = *(&v692[2] + 8);
      v588 = *(&v692[1] + 8);
      v571 = MEMORY[0x277D84F90];
      v587 = *(v692 + 8);
    }

    v671 = v589;
    v685 = v587;
    v686 = v588;
    v687 = v589;
    v688 = v590;
    v684 = *&v692[0];
    v689 = v591;
    outlined init with copy of DateInterval?(v692, &v678, &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMd);
    v570 = *(&v671 + 1);

    outlined destroy of CloudDevicesDB.SnapshotEventAggregation(&v684);
    if (v570)
    {
      v592 = *(v692 + 8);
      v593 = *(&v692[1] + 8);
      v594 = *(&v692[2] + 8);
      v595 = *(&v692[3] + 8);
      v596 = *(&v692[4] + 1);
    }

    else
    {
      if (*&v692[0] == 1)
      {
        v569 = MEMORY[0x277D84F90];
        v570 = MEMORY[0x277D84F90];
        goto LABEL_368;
      }

      v596 = *(&v692[4] + 1);
      v595 = *(&v692[3] + 8);
      v594 = *(&v692[2] + 8);
      v593 = *(&v692[1] + 8);
      v570 = MEMORY[0x277D84F90];
      v592 = *(v692 + 8);
    }

    v671 = v595;
    v678 = *&v692[0];
    v679 = v592;
    v680 = v593;
    v681 = v594;
    v682 = v595;
    v683 = v596;
    outlined init with copy of DateInterval?(v692, &v672, &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMd);
    v569 = v671;

    outlined destroy of CloudDevicesDB.SnapshotEventAggregation(&v678);
    if (v569)
    {
      v597 = *(v692 + 8);
      v598 = *(&v692[1] + 8);
      v599 = *(&v692[2] + 8);
      v600 = *(&v692[3] + 8);
      v601 = *(&v692[4] + 1);
    }

    else
    {
      if (*&v692[0] == 1)
      {
        v569 = MEMORY[0x277D84F90];
        goto LABEL_368;
      }

      v601 = *(&v692[4] + 1);
      v600 = *(&v692[3] + 8);
      v599 = *(&v692[2] + 8);
      v598 = *(&v692[1] + 8);
      v569 = MEMORY[0x277D84F90];
      v597 = *(v692 + 8);
    }

    v672 = *&v692[0];
    v673 = v597;
    v674 = v598;
    v675 = v599;
    v676 = v600;
    v677 = v601;
    v602 = *(&v600 + 1);

    outlined destroy of CloudDevicesDB.SnapshotEventAggregation(&v672);
    if (v602)
    {
LABEL_369:
      v603 = v666;
      v604 = v666 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_snapshotEventAggregation;
      swift_beginAccess();
      v605 = *(v604 + 48);
      v691[2] = *(v604 + 32);
      v691[3] = v605;
      v691[4] = *(v604 + 64);
      v606 = *(v604 + 16);
      v691[0] = *v604;
      v691[1] = v606;
      *v604 = v572;
      *(v604 + 8) = 0;
      *(v604 + 16) = 0;
      *(v604 + 24) = v568;
      v156 = v603;
      *(v604 + 32) = v571;
      *(v604 + 40) = v559;
      *(v604 + 48) = v570;
      *(v604 + 56) = v569;
      *(v604 + 64) = v602;
      *(v604 + 72) = 0;
      outlined destroy of UTType?(v691, &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMd);
      goto LABEL_309;
    }

LABEL_368:

    v602 = MEMORY[0x277D84F90];
    goto LABEL_369;
  }

  LODWORD(v648) = 0;
  LODWORD(v649) = 0;
  v144 = v138 == 4;
  v145 = v650;
  if (v144)
  {
    static Date.now.getter();
    v146 = *(v665 + 56);
    LODWORD(v649) = 1;
    v146(v145, 0, 1, v663);
    v147 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_lastSnapshotDownloadCompleteDate;
    v148 = v666;
    swift_beginAccess();
    v149 = v148 + v147;
    v139 = v670;
    outlined assign with take of Date?(v650, v149);
    swift_endAccess();
    LODWORD(v648) = 0;
  }

LABEL_35:
  v658 = v136;
  if (*&v692[0] >= 2uLL)
  {

    v172 = *(&v692[1] + 1);
    v657 = v171;
    v169 = v171;
  }

  else
  {

    v169 = *&v692[0];
    if (*&v692[0] == 1)
    {
      v170 = MEMORY[0x277D84F98];
      v678 = MEMORY[0x277D84F98];
      v657 = MEMORY[0x277D84F90];
LABEL_44:

      *&v655 = MEMORY[0x277D84F90];
      goto LABEL_45;
    }

    v172 = *(&v692[1] + 1);
    v657 = MEMORY[0x277D84F90];
  }

  if (v172)
  {
    v170 = v172;
  }

  else
  {
    v170 = MEMORY[0x277D84F98];
  }

  v678 = v170;
  *(v691 + 8) = *(v692 + 8);
  *&v691[0] = v169;
  *(&v691[1] + 1) = v172;
  v655 = v692[2];
  v691[2] = v692[2];
  v691[3] = v692[3];
  v691[4] = v692[4];
  outlined init with copy of DateInterval?(v692, &v684, &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMd);
  v173 = v655;

  outlined destroy of CloudDevicesDB.SnapshotEventAggregation(v691);
  *&v655 = v173;
  v139 = v670;
  if (!v173)
  {
    goto LABEL_44;
  }

LABEL_45:
  outlined init with copy of DateInterval?(v671, v52, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd);
  v174 = v658;
  if ((v658)(v52, 1, v134) == 1)
  {
    outlined destroy of UTType?(v52, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd);
    v175 = v671;
    v176 = v646;
  }

  else
  {
    v177 = *&v52[SHIDWORD(v134[3].isa)];
    outlined destroy of CloudDevice(v52, type metadata accessor for DBSnapshotAnalytics.SnapshotEvent);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v178 = v657;
    }

    else
    {
      v178 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v657 + 2) + 1, 1, v657);
    }

    v175 = v671;
    v180 = *(v178 + 2);
    v179 = *(v178 + 3);
    v176 = v646;
    if (v180 >= v179 >> 1)
    {
      v607 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v179 > 1), v180 + 1, 1, v178);
      v176 = v646;
      v178 = v607;
    }

    *(v178 + 2) = v180 + 1;
    v657 = v178;
    *&v178[8 * v180 + 32] = v177;
    v139 = v670;
    v174 = v658;
  }

  v181 = v176;
  outlined init with copy of DateInterval?(v175, v176, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd);
  v182 = (v174)(v181, 1, v134);
  v183 = v669;
  if (v182 == 1)
  {
    outlined destroy of UTType?(v181, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd);
LABEL_56:
    v186 = v645;
    goto LABEL_62;
  }

  v184 = *(v181 + SLODWORD(v134[16].isa));
  outlined destroy of CloudDevice(v181, type metadata accessor for DBSnapshotAnalytics.SnapshotEvent);
  v185 = v636;
  outlined init with copy of DateInterval?(v175, v636, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd);
  if ((v174)(v185, 1, v134) == 1)
  {
    outlined destroy of UTType?(v185, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd);
    v139 = v670;
    goto LABEL_56;
  }

  v187 = *(v185 + SLODWORD(v134[5].isa));
  outlined destroy of CloudDevice(v185, type metadata accessor for DBSnapshotAnalytics.SnapshotEvent);
  v188 = __OFADD__(v184, v187);
  v189 = v184 + v187;
  if (v188)
  {
    __break(1u);
    goto LABEL_372;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_372:
    *&v655 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v655 + 16) + 1, 1, v655);
  }

  v191 = *(v655 + 16);
  v190 = *(v655 + 24);
  v186 = v645;
  if (v191 >= v190 >> 1)
  {
    v608 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v190 > 1), v191 + 1, 1, v655);
    v186 = v645;
    *&v655 = v608;
  }

  v192 = v655;
  *(v655 + 16) = v191 + 1;
  *(v192 + 8 * v191 + 32) = v189;
  v183 = v669;
  v139 = v670;
LABEL_62:
  outlined init with copy of DateInterval?(v175, v186, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd);
  v193 = v658;
  v194 = (v658)(v186, 1, v134);
  v664 = v137;
  if (v194 == 1)
  {
    v195 = v193;
    outlined destroy of UTType?(v186, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd);
  }

  else
  {
    v196 = *(v186 + SHIDWORD(v134[7].isa));
    outlined destroy of CloudDevice(v186, type metadata accessor for DBSnapshotAnalytics.SnapshotEvent);
    v197 = specialized Dictionary.subscript.getter(0x6C61746F74, 0xE500000000000000, v170);
    if (v197)
    {
      v198 = v197;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v198 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v198 + 16) + 1, 1, v198);
      }

      v200 = *(v198 + 16);
      v199 = *(v198 + 24);
      if (v200 >= v199 >> 1)
      {
        v198 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v199 > 1), v200 + 1, 1, v198);
      }

      v195 = v658;
      *(v198 + 16) = v200 + 1;
      *(v198 + 8 * v200 + 32) = v196;
    }

    else
    {
      v195 = v658;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
      v198 = swift_allocObject();
      *(v198 + 16) = xmmword_21658CA50;
      *(v198 + 32) = v196;
    }

    v201 = v678;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v691[0] = v201;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v198, 0x6C61746F74, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
    v170 = *&v691[0];
    v678 = *&v691[0];
    v183 = v669;
    v139 = v670;
  }

  v203 = v667;
  v204 = v653;
  v205 = v175;
  v206 = v175;
  v207 = v637;
  outlined init with copy of DateInterval?(v206, v637, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd);
  if ((v195)(v207, 1, v134) == 1)
  {
    outlined destroy of UTType?(v207, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd);
LABEL_81:
    v211 = v205;
    v214 = v195;
    goto LABEL_82;
  }

  v208 = *(v207 + SLODWORD(v134[8].isa));
  outlined destroy of CloudDevice(v207, type metadata accessor for DBSnapshotAnalytics.SnapshotEvent);
  v209 = specialized Dictionary.subscript.getter(0x746361746E6F63, 0xE700000000000000, v170);
  if (!v209)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
    v215 = swift_allocObject();
    *(v215 + 16) = xmmword_21658CA50;
    *(v215 + 32) = v208;
    v216 = v678;
    v217 = swift_isUniquelyReferenced_nonNull_native();
    *&v691[0] = v216;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v215, 0x746361746E6F63, 0xE700000000000000, v217);
    v678 = *&v691[0];
    v183 = v669;
    v139 = v670;
    v203 = v667;
    goto LABEL_81;
  }

  v210 = v209;
  v211 = v205;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v210 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v210 + 2) + 1, 1, v210);
  }

  v213 = *(v210 + 2);
  v212 = *(v210 + 3);
  v214 = v195;
  if (v213 >= v212 >> 1)
  {
    v210 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v212 > 1), v213 + 1, 1, v210);
  }

  *(v210 + 2) = v213 + 1;
  *&v210[8 * v213 + 32] = v208;
  specialized Dictionary.subscript.setter(v210, 0x746361746E6F63, 0xE700000000000000);
  v183 = v669;
  v139 = v670;
  v203 = v667;
  v204 = v653;
LABEL_82:
  v218 = v638;
  outlined init with copy of DateInterval?(v211, v638, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd);
  if (v214(v218, 1, v134) == 1)
  {
    outlined destroy of UTType?(v218, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd);
    v219 = v668;
  }

  else
  {
    v220 = *(v218 + SHIDWORD(v134[8].isa));
    outlined destroy of CloudDevice(v218, type metadata accessor for DBSnapshotAnalytics.SnapshotEvent);
    v221 = v678;
    v222 = specialized Dictionary.subscript.getter(0x746F68506576696CLL, 0xE90000000000006FLL, v678);
    if (v222)
    {
      v223 = v222;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v223 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v223 + 2) + 1, 1, v223);
      }

      v225 = *(v223 + 2);
      v224 = *(v223 + 3);
      if (v225 >= v224 >> 1)
      {
        v223 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v224 > 1), v225 + 1, 1, v223);
      }

      *(v223 + 2) = v225 + 1;
      *&v223[8 * v225 + 32] = v220;
      specialized Dictionary.subscript.setter(v223, 0x746F68506576696CLL, 0xE90000000000006FLL);
      v219 = v668;
      v183 = v669;
      v203 = v667;
      v139 = v670;
      v204 = v653;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
      v226 = swift_allocObject();
      *(v226 + 16) = xmmword_21658CA50;
      *(v226 + 32) = v220;
      v227 = swift_isUniquelyReferenced_nonNull_native();
      *&v691[0] = v221;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v226, 0x746F68506576696CLL, 0xE90000000000006FLL, v227);
      v678 = *&v691[0];
      v219 = v668;
      v183 = v669;
      v203 = v667;
      v139 = v670;
    }
  }

  outlined init with copy of DateInterval?(v211, v204, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd);
  if (v214(v204, 1, v134) == 1)
  {
    v228 = v656;
    outlined destroy of UTType?(v204, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd);
  }

  else
  {
    v229 = v204;
    v230 = *(v204 + SLODWORD(v134[9].isa));
    outlined destroy of CloudDevice(v229, type metadata accessor for DBSnapshotAnalytics.SnapshotEvent);
    v231 = specialized Dictionary.subscript.getter(7364973, 0xE300000000000000, v678);
    if (v231)
    {
      v232 = v231;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v232 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v232 + 2) + 1, 1, v232);
      }

      v234 = *(v232 + 2);
      v233 = *(v232 + 3);
      if (v234 >= v233 >> 1)
      {
        v232 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v233 > 1), v234 + 1, 1, v232);
      }

      v228 = v656;
      *(v232 + 2) = v234 + 1;
      *&v232[8 * v234 + 32] = v230;
      specialized Dictionary.subscript.setter(v232, 7364973, 0xE300000000000000);
      v219 = v668;
      v183 = v669;
      v203 = v667;
    }

    else
    {
      v228 = v656;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
      v235 = swift_allocObject();
      *(v235 + 16) = xmmword_21658CA50;
      *(v235 + 32) = v230;
      specialized Dictionary.subscript.setter(v235, 7364973, 0xE300000000000000);
      v219 = v668;
      v183 = v669;
    }

    v139 = v670;
  }

  v236 = v639;
  outlined init with copy of DateInterval?(v671, v639, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd);
  if (v214(v236, 1, v134) == 1)
  {
    v237 = v214;
    outlined destroy of UTType?(v236, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd);
  }

  else
  {
    v238 = *(v236 + SHIDWORD(v134[9].isa));
    outlined destroy of CloudDevice(v236, type metadata accessor for DBSnapshotAnalytics.SnapshotEvent);
    v239 = specialized Dictionary.subscript.getter(0x69746C754D70616DLL, 0xE800000000000000, v678);
    if (v239)
    {
      v240 = v239;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v240 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v240 + 2) + 1, 1, v240);
      }

      v242 = *(v240 + 2);
      v241 = *(v240 + 3);
      if (v242 >= v241 >> 1)
      {
        v240 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v241 > 1), v242 + 1, 1, v240);
      }

      v237 = v214;
      *(v240 + 2) = v242 + 1;
      *&v240[8 * v242 + 32] = v238;
      specialized Dictionary.subscript.setter(v240, 0x69746C754D70616DLL, 0xE800000000000000);
      v219 = v668;
      v183 = v669;
      v203 = v667;
      v139 = v670;
      v228 = v656;
    }

    else
    {
      v237 = v214;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
      v243 = swift_allocObject();
      *(v243 + 16) = xmmword_21658CA50;
      *(v243 + 32) = v238;
      specialized Dictionary.subscript.setter(v243, 0x69746C754D70616DLL, 0xE800000000000000);
      v219 = v668;
      v183 = v669;
      v203 = v667;
      v139 = v670;
    }
  }

  v244 = v651;
  v245 = v640;
  outlined init with copy of DateInterval?(v671, v640, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd);
  if (v237(v245, 1, v134) == 1)
  {
    outlined destroy of UTType?(v245, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd);
    v246 = v237;
  }

  else
  {
    v658 = v134;
    v247 = *(v245 + SLODWORD(v134[10].isa));
    outlined destroy of CloudDevice(v245, type metadata accessor for DBSnapshotAnalytics.SnapshotEvent);
    v248 = specialized Dictionary.subscript.getter(0x726946616964656DLL, 0xEF79747261507473, v678);
    if (v248)
    {
      v249 = v248;
      v246 = v237;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v249 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v249 + 2) + 1, 1, v249);
      }

      v251 = *(v249 + 2);
      v250 = *(v249 + 3);
      if (v251 >= v250 >> 1)
      {
        v249 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v250 > 1), v251 + 1, 1, v249);
      }

      v134 = v658;
      *(v249 + 2) = v251 + 1;
      *&v249[8 * v251 + 32] = v247;
      specialized Dictionary.subscript.setter(v249, 0x726946616964656DLL, 0xEF79747261507473);
      v219 = v668;
      v183 = v669;
      v203 = v667;
      v139 = v670;
      v228 = v656;
      v244 = v651;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
      v252 = swift_allocObject();
      *(v252 + 16) = xmmword_21658CA50;
      *(v252 + 32) = v247;
      specialized Dictionary.subscript.setter(v252, 0x726946616964656DLL, 0xEF79747261507473);
      v219 = v668;
      v183 = v669;
      v203 = v667;
      v139 = v670;
      v228 = v656;
      v244 = v651;
      v246 = v237;
      v134 = v658;
    }
  }

  outlined init with copy of DateInterval?(v671, v244, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd);
  if (v246(v244, 1, v134) == 1)
  {
    outlined destroy of UTType?(v244, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd);
  }

  else
  {
    v253 = v244;
    v254 = *(v244 + SHIDWORD(v134[10].isa));
    outlined destroy of CloudDevice(v253, type metadata accessor for DBSnapshotAnalytics.SnapshotEvent);
    v255 = specialized Dictionary.subscript.getter(0x696854616964656DLL, 0xEF79747261506472, v678);
    if (v255)
    {
      v256 = v255;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v256 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v256 + 2) + 1, 1, v256);
      }

      v258 = *(v256 + 2);
      v257 = *(v256 + 3);
      if (v258 >= v257 >> 1)
      {
        v256 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v257 > 1), v258 + 1, 1, v256);
      }

      *(v256 + 2) = v258 + 1;
      *&v256[8 * v258 + 32] = v254;
      v259 = v256;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
      v259 = swift_allocObject();
      *(v259 + 16) = xmmword_21658CA50;
      *(v259 + 32) = v254;
    }

    specialized Dictionary.subscript.setter(v259, 0x696854616964656DLL, 0xEF79747261506472);
    v219 = v668;
    v183 = v669;
    v203 = v667;
    v139 = v670;
    v228 = v656;
  }

  v260 = v641;
  outlined init with copy of DateInterval?(v671, v641, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd);
  if (v246(v260, 1, v134) == 1)
  {
    outlined destroy of UTType?(v260, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd);
LABEL_138:
    v264 = v228;
    v267 = v671;
    goto LABEL_139;
  }

  v261 = *(v260 + SLODWORD(v134[11].isa));
  outlined destroy of CloudDevice(v260, type metadata accessor for DBSnapshotAnalytics.SnapshotEvent);
  v262 = specialized Dictionary.subscript.getter(0x63416E6F69746F6DLL, 0xEE00797469766974, v678);
  if (!v262)
  {
    v270 = DBAssetModelEnum.rawValue.getter(6);
    v272 = v271;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
    v273 = swift_allocObject();
    *(v273 + 16) = xmmword_21658CA50;
    *(v273 + 32) = v261;
    v183 = v669;
    specialized Dictionary.subscript.setter(v273, v270, v272);
    v203 = v667;
    v219 = v668;
    v139 = v670;
    goto LABEL_138;
  }

  v263 = v262;
  v264 = v228;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v263 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v263 + 2) + 1, 1, v263);
  }

  v266 = *(v263 + 2);
  v265 = *(v263 + 3);
  v267 = v671;
  if (v266 >= v265 >> 1)
  {
    v263 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v265 > 1), v266 + 1, 1, v263);
  }

  *(v263 + 2) = v266 + 1;
  *&v263[8 * v266 + 32] = v261;
  v268 = DBAssetModelEnum.rawValue.getter(6);
  specialized Dictionary.subscript.setter(v263, v268, v269);
  v219 = v668;
  v183 = v669;
  v203 = v667;
  v139 = v670;
LABEL_139:
  outlined init with copy of DateInterval?(v267, v264, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd);
  if (v246(v264, 1, v134) == 1)
  {
    outlined destroy of UTType?(v264, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd);
  }

  else
  {
    v274 = *(v264 + SHIDWORD(v134[11].isa));
    outlined destroy of CloudDevice(v264, type metadata accessor for DBSnapshotAnalytics.SnapshotEvent);
    v275 = DBAssetModelEnum.rawValue.getter(7);
    v277 = specialized Dictionary.subscript.getter(v275, v276, v678);

    if (v277)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v277 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v277 + 16) + 1, 1, v277);
      }

      v279 = *(v277 + 16);
      v278 = *(v277 + 24);
      if (v279 >= v278 >> 1)
      {
        v277 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v278 > 1), v279 + 1, 1, v277);
      }

      *(v277 + 16) = v279 + 1;
      *(v277 + 8 * v279 + 32) = v274;
      v280 = DBAssetModelEnum.rawValue.getter(7);
      specialized Dictionary.subscript.setter(v277, v280, v281);
      v219 = v668;
      v183 = v669;
    }

    else
    {
      v282 = DBAssetModelEnum.rawValue.getter(7);
      v284 = v283;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
      v285 = swift_allocObject();
      *(v285 + 16) = xmmword_21658CA50;
      *(v285 + 32) = v274;
      v183 = v669;
      specialized Dictionary.subscript.setter(v285, v282, v284);
      v219 = v668;
    }

    v203 = v667;
    v139 = v670;
  }

  v286 = v642;
  outlined init with copy of DateInterval?(v267, v642, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd);
  if (v246(v286, 1, v134) == 1)
  {
    outlined destroy of UTType?(v286, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd);
LABEL_158:
    v292 = v652;
    goto LABEL_159;
  }

  v287 = *(v286 + SLODWORD(v134[12].isa));
  outlined destroy of CloudDevice(v286, type metadata accessor for DBSnapshotAnalytics.SnapshotEvent);
  v288 = DBAssetModelEnum.rawValue.getter(8);
  v290 = specialized Dictionary.subscript.getter(v288, v289, v678);

  if (!v290)
  {
    v297 = DBAssetModelEnum.rawValue.getter(8);
    v299 = v298;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
    v300 = swift_allocObject();
    *(v300 + 16) = xmmword_21658CA50;
    *(v300 + 32) = v287;
    v183 = v669;
    specialized Dictionary.subscript.setter(v300, v297, v299);
    v203 = v667;
    v219 = v668;
    v139 = v670;
    goto LABEL_158;
  }

  v291 = swift_isUniquelyReferenced_nonNull_native();
  v292 = v652;
  if ((v291 & 1) == 0)
  {
    v290 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v290 + 16) + 1, 1, v290);
  }

  v294 = *(v290 + 16);
  v293 = *(v290 + 24);
  if (v294 >= v293 >> 1)
  {
    v290 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v293 > 1), v294 + 1, 1, v290);
  }

  *(v290 + 16) = v294 + 1;
  *(v290 + 8 * v294 + 32) = v287;
  v295 = DBAssetModelEnum.rawValue.getter(8);
  specialized Dictionary.subscript.setter(v290, v295, v296);
  v219 = v668;
  v183 = v669;
  v203 = v667;
  v139 = v670;
LABEL_159:
  outlined init with copy of DateInterval?(v267, v139, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd);
  if (v246(v139, 1, v134) == 1)
  {
    outlined destroy of UTType?(v139, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd);
  }

  else
  {
    v301 = *&v139[SHIDWORD(v134[12].isa)];
    outlined destroy of CloudDevice(v139, type metadata accessor for DBSnapshotAnalytics.SnapshotEvent);
    v302 = DBAssetModelEnum.rawValue.getter(9);
    v304 = specialized Dictionary.subscript.getter(v302, v303, v678);

    if (v304)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v304 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v304 + 16) + 1, 1, v304);
      }

      v306 = *(v304 + 16);
      v305 = *(v304 + 24);
      if (v306 >= v305 >> 1)
      {
        v304 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v305 > 1), v306 + 1, 1, v304);
      }

      *(v304 + 16) = v306 + 1;
      *(v304 + 8 * v306 + 32) = v301;
      v307 = DBAssetModelEnum.rawValue.getter(9);
      specialized Dictionary.subscript.setter(v304, v307, v308);
      v219 = v668;
      v183 = v669;
      v203 = v667;
    }

    else
    {
      v309 = DBAssetModelEnum.rawValue.getter(9);
      v311 = v310;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
      v312 = swift_allocObject();
      *(v312 + 16) = xmmword_21658CA50;
      *(v312 + 32) = v301;
      v183 = v669;
      specialized Dictionary.subscript.setter(v312, v309, v311);
      v203 = v667;
      v219 = v668;
    }
  }

  outlined init with copy of DateInterval?(v267, v203, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd);
  if (v246(v203, 1, v134) == 1)
  {
    outlined destroy of UTType?(v203, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd);
  }

  else
  {
    v313 = *(v203 + SHIDWORD(v134[13].isa));
    outlined destroy of CloudDevice(v203, type metadata accessor for DBSnapshotAnalytics.SnapshotEvent);
    v314 = DBAssetModelEnum.rawValue.getter(10);
    v316 = specialized Dictionary.subscript.getter(v314, v315, v678);

    if (v316)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v316 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v316 + 16) + 1, 1, v316);
      }

      v318 = *(v316 + 16);
      v317 = *(v316 + 24);
      if (v318 >= v317 >> 1)
      {
        v316 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v317 > 1), v318 + 1, 1, v316);
      }

      *(v316 + 16) = v318 + 1;
      *(v316 + 8 * v318 + 32) = v313;
      v319 = DBAssetModelEnum.rawValue.getter(10);
      specialized Dictionary.subscript.setter(v316, v319, v320);
      v219 = v668;
      v183 = v669;
    }

    else
    {
      v321 = DBAssetModelEnum.rawValue.getter(10);
      v323 = v322;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
      v324 = swift_allocObject();
      *(v324 + 16) = xmmword_21658CA50;
      *(v324 + 32) = v313;
      v183 = v669;
      specialized Dictionary.subscript.setter(v324, v321, v323);
      v219 = v668;
    }
  }

  outlined init with copy of DateInterval?(v267, v183, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd);
  if (v246(v183, 1, v134) == 1)
  {
    outlined destroy of UTType?(v183, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd);
  }

  else
  {
    v325 = *&v183[SLODWORD(v134[14].isa)];
    outlined destroy of CloudDevice(v183, type metadata accessor for DBSnapshotAnalytics.SnapshotEvent);
    v326 = DBAssetModelEnum.rawValue.getter(11);
    v328 = specialized Dictionary.subscript.getter(v326, v327, v678);

    if (v328)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v328 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v328 + 16) + 1, 1, v328);
      }

      v330 = *(v328 + 16);
      v329 = *(v328 + 24);
      if (v330 >= v329 >> 1)
      {
        v328 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v329 > 1), v330 + 1, 1, v328);
      }

      *(v328 + 16) = v330 + 1;
      *(v328 + 8 * v330 + 32) = v325;
      v331 = DBAssetModelEnum.rawValue.getter(11);
      v333 = v332;
      v334 = v328;
      v335 = v331;
      v336 = v333;
    }

    else
    {
      v337 = DBAssetModelEnum.rawValue.getter(11);
      v339 = v338;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
      v334 = swift_allocObject();
      *(v334 + 16) = xmmword_21658CA50;
      *(v334 + 32) = v325;
      v335 = v337;
      v336 = v339;
    }

    specialized Dictionary.subscript.setter(v334, v335, v336);
    v219 = v668;
    v292 = v652;
  }

  outlined init with copy of DateInterval?(v267, v219, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd);
  if (v246(v219, 1, v134) == 1)
  {
    outlined destroy of UTType?(v219, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd);
  }

  else
  {
    v340 = *(v219 + SHIDWORD(v134[14].isa));
    outlined destroy of CloudDevice(v219, type metadata accessor for DBSnapshotAnalytics.SnapshotEvent);
    v341 = DBAssetModelEnum.rawValue.getter(12);
    v343 = specialized Dictionary.subscript.getter(v341, v342, v678);

    if (v343)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v343 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v343 + 16) + 1, 1, v343);
      }

      v345 = *(v343 + 16);
      v344 = *(v343 + 24);
      if (v345 >= v344 >> 1)
      {
        v343 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v344 > 1), v345 + 1, 1, v343);
      }

      *(v343 + 16) = v345 + 1;
      *(v343 + 8 * v345 + 32) = v340;
      v346 = DBAssetModelEnum.rawValue.getter(12);
      v348 = v347;
      v349 = v343;
      v350 = v346;
      v351 = v348;
    }

    else
    {
      v352 = DBAssetModelEnum.rawValue.getter(12);
      v354 = v353;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
      v349 = swift_allocObject();
      *(v349 + 16) = xmmword_21658CA50;
      *(v349 + 32) = v340;
      v350 = v352;
      v351 = v354;
    }

    specialized Dictionary.subscript.setter(v349, v350, v351);
  }

  outlined init with copy of DateInterval?(v267, v292, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd);
  if (v246(v292, 1, v134) == 1)
  {
    outlined destroy of UTType?(v292, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd);
LABEL_206:
    v360 = v649;
    goto LABEL_207;
  }

  v355 = *(v292 + SLODWORD(v134[15].isa));
  outlined destroy of CloudDevice(v292, type metadata accessor for DBSnapshotAnalytics.SnapshotEvent);
  v356 = DBAssetModelEnum.rawValue.getter(13);
  v358 = specialized Dictionary.subscript.getter(v356, v357, v678);

  if (!v358)
  {
    v365 = DBAssetModelEnum.rawValue.getter(13);
    v367 = v366;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
    v368 = swift_allocObject();
    *(v368 + 16) = xmmword_21658CA50;
    *(v368 + 32) = v355;
    specialized Dictionary.subscript.setter(v368, v365, v367);
    goto LABEL_206;
  }

  v359 = swift_isUniquelyReferenced_nonNull_native();
  v360 = v649;
  if ((v359 & 1) == 0)
  {
    v358 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v358 + 16) + 1, 1, v358);
  }

  v362 = *(v358 + 16);
  v361 = *(v358 + 24);
  if (v362 >= v361 >> 1)
  {
    v358 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v361 > 1), v362 + 1, 1, v358);
  }

  *(v358 + 16) = v362 + 1;
  *(v358 + 8 * v362 + 32) = v355;
  v363 = DBAssetModelEnum.rawValue.getter(13);
  specialized Dictionary.subscript.setter(v358, v363, v364);
LABEL_207:
  v369 = v644;
  outlined init with copy of DateInterval?(v267, v644, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd);
  if (v246(v369, 1, v134) == 1)
  {
    outlined destroy of UTType?(v369, &_s9MomentsUI19DBSnapshotAnalyticsC13SnapshotEventVSgMd);
    v370 = v665;
    v156 = v666;
    v371 = v643;
  }

  else
  {
    v372 = *(v369 + SHIDWORD(v134[15].isa));
    outlined destroy of CloudDevice(v369, type metadata accessor for DBSnapshotAnalytics.SnapshotEvent);
    v373 = DBAssetModelEnum.rawValue.getter(14);
    v375 = specialized Dictionary.subscript.getter(v373, v374, v678);

    v370 = v665;
    v371 = v643;
    if (v375)
    {
      v376 = swift_isUniquelyReferenced_nonNull_native();
      v156 = v666;
      if ((v376 & 1) == 0)
      {
        v375 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v375 + 16) + 1, 1, v375);
      }

      v378 = *(v375 + 16);
      v377 = *(v375 + 24);
      if (v378 >= v377 >> 1)
      {
        v375 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v377 > 1), v378 + 1, 1, v375);
      }

      *(v375 + 16) = v378 + 1;
      *(v375 + 8 * v378 + 32) = v372;
      v379 = DBAssetModelEnum.rawValue.getter(14);
      specialized Dictionary.subscript.setter(v375, v379, v380);
    }

    else
    {
      v381 = DBAssetModelEnum.rawValue.getter(14);
      v383 = v382;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
      v384 = swift_allocObject();
      *(v384 + 16) = xmmword_21658CA50;
      *(v384 + 32) = v372;
      specialized Dictionary.subscript.setter(v384, v381, v383);
      v156 = v666;
    }
  }

  v385 = v663;
  if (*&v692[0] != 1)
  {
    v386 = *&v692[3];
    if (*&v692[3])
    {
      v387 = *(&v692[3] + 1);

      if (!v387)
      {
        goto LABEL_224;
      }

LABEL_222:
      v388 = *&v692[4];

      if (v388)
      {
        goto LABEL_226;
      }

      goto LABEL_229;
    }
  }

  v386 = MEMORY[0x277D84F90];
  if (*&v692[0] != 1)
  {
    v387 = *(&v692[3] + 1);
    if (*(&v692[3] + 1))
    {
      goto LABEL_222;
    }
  }

LABEL_224:

  v387 = MEMORY[0x277D84F90];
  if (*&v692[0] != 1)
  {
    v388 = *&v692[4];
    if (*&v692[4])
    {
LABEL_226:

      *&v671 = v388;
      if (!v360)
      {
        goto LABEL_227;
      }

LABEL_230:
      v669 = v387;
      v670 = v386;
      CloudDevicesDB.primaryDevice.getter(v371);
      v389 = v654;
      if (v661(v371, 1, v654) == 1)
      {
        outlined destroy of UTType?(v371, &_s9MomentsUI11CloudDeviceVSgMd);
        v390 = v635;
        (*(v370 + 56))(v635, 1, 1, v385);
LABEL_233:
        outlined destroy of UTType?(v390, &_s10Foundation4DateVSgMd);
LABEL_234:
        if (one-time initialization token for analytics != -1)
        {
          swift_once();
        }

        v393 = type metadata accessor for Logger();
        __swift_project_value_buffer(v393, static CommonLogger.analytics);
        swift_retain_n();
        v394 = Logger.logObject.getter();
        v395 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v394, v395))
        {
          v396 = swift_slowAlloc();
          v397 = swift_slowAlloc();
          *&v691[0] = v397;
          *v396 = 136446722;
          *(v396 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000002165845E0, v691);
          *(v396 + 12) = 2080;
          v398 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_lastSnapshotCreationDate;
          swift_beginAccess();
          outlined init with copy of DateInterval?(v156 + v398, v650, &_s10Foundation4DateVSgMd);
          v399 = String.init<A>(describing:)();
          v401 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v399, v400, v691);

          *(v396 + 14) = v401;
          *(v396 + 22) = 2080;
          v402 = v625;
          CloudDevicesDB.primaryDevice.getter(v625);
          v403 = v654;
          if (v661(v402, 1, v654) == 1)
          {
            outlined destroy of UTType?(v402, &_s9MomentsUI11CloudDeviceVSgMd);
            (*(v665 + 56))(v626, 1, 1, v663);
          }

          else
          {
            outlined init with copy of DateInterval?(v402 + *(v403 + 96), v626, &_s10Foundation4DateVSgMd);
            outlined destroy of CloudDevice(v402, type metadata accessor for CloudDevice);
          }

          v432 = String.init<A>(describing:)();
          v434 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v432, v433, v691);

          *(v396 + 24) = v434;
          _os_log_impl(&dword_21607C000, v394, v395, "[CloudDevicesDB.%{public}s] Skip updating last snapshot creation date after download complete. lastsnapshotCreationDate in current device= %s, in primary =%s", v396, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x21CE94770](v397, -1, -1);
          MEMORY[0x21CE94770](v396, -1, -1);

          v385 = v663;
        }

        else
        {
        }

        v370 = v665;
        goto LABEL_248;
      }

      v391 = v371 + *(v389 + 96);
      v390 = v635;
      outlined init with copy of DateInterval?(v391, v635, &_s10Foundation4DateVSgMd);
      outlined destroy of CloudDevice(v371, type metadata accessor for CloudDevice);
      v392 = *(v370 + 48);
      if (v392(v390, 1, v385) == 1)
      {
        goto LABEL_233;
      }

      v404 = v156;
      v405 = (v665 + 32);
      v668 = *(v665 + 32);
      v668(v633, v390, v385);
      v406 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_lastSnapshotCreationDate;
      swift_beginAccess();
      v407 = v404 + v406;
      v408 = v622;
      outlined init with copy of DateInterval?(v407, v622, &_s10Foundation4DateVSgMd);
      v409 = v392(v408, 1, v385);
      outlined destroy of UTType?(v408, &_s10Foundation4DateVSgMd);
      if (v409 == 1)
      {
LABEL_241:
        v667 = v406;
        if (one-time initialization token for analytics != -1)
        {
          swift_once();
        }

        v410 = type metadata accessor for Logger();
        __swift_project_value_buffer(v410, static CommonLogger.analytics);
        v370 = v665;
        v411 = *(v665 + 16);
        v412 = v618;
        v411(v618, v633, v385);
        v413 = v620;
        v411(v620, v412, v385);
        v414 = v619;
        v668(v619, v412, v385);
        v415 = v666;

        v416 = Logger.logObject.getter();
        v417 = static os_log_type_t.info.getter();

        v664 = *(v370 + 8);
        v664(v414, v385);
        if (os_log_type_enabled(v416, v417))
        {
          v418 = swift_slowAlloc();
          v661 = swift_slowAlloc();
          *&v691[0] = v661;
          *v418 = 136446722;
          *(v418 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000002165845E0, v691);
          *(v418 + 12) = 2080;
          LODWORD(v660) = v417;
          v419 = v667;
          v420 = v650;
          outlined init with copy of DateInterval?(&v667[v415], v650, &_s10Foundation4DateVSgMd);
          v421 = String.init<A>(describing:)();
          v658 = v416;
          v423 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v421, v422, v691);

          *(v418 + 14) = v423;
          *(v418 + 22) = 2080;
          lazy protocol witness table accessor for type CloudDevice and conformance CloudDevice(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
          v424 = dispatch thunk of CustomStringConvertible.description.getter();
          v426 = v425;
          v664(v413, v663);
          v427 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v424, v426, v691);

          *(v418 + 24) = v427;
          v428 = v420;
          v385 = v663;
          v429 = v658;
          _os_log_impl(&dword_21607C000, v658, v660, "[CloudDevicesDB.%{public}s] Last snapshot creation date in primary device is later than that in the curernt device. Updating snapshot creation date from %s to %s", v418, 0x20u);
          v430 = v661;
          swift_arrayDestroy();
          MEMORY[0x21CE94770](v430, -1, -1);
          v431 = v418;
          v370 = v665;
          MEMORY[0x21CE94770](v431, -1, -1);
        }

        else
        {

          v664(v413, v385);
          v428 = v650;
          v419 = v667;
        }

        v668(v428, v633, v385);
        (*(v370 + 56))(v428, 0, 1, v385);
        swift_beginAccess();
        outlined assign with take of Date?(v428, &v419[v415]);
        swift_endAccess();
LABEL_248:
        v435 = *(v370 + 48);
        if (v435(v659, 1, v385) != 1)
        {
          v436 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_lastSnapshotDownloadCompleteDate;
          v437 = v666;
          swift_beginAccess();
          v438 = v632;
          outlined init with copy of DateInterval?(v437 + v436, v632, &_s10Foundation4DateVSgMd);
          v439 = v435(v438, 1, v385);
          outlined destroy of UTType?(v438, &_s10Foundation4DateVSgMd);
          if (v439 != 1)
          {
            v440 = v628;
            outlined init with copy of DateInterval?(v437 + v436, v628, &_s10Foundation4DateVSgMd);
            result = v435(v440, 1, v385);
            if (result == 1)
            {
              __break(1u);
LABEL_374:
              __break(1u);
              goto LABEL_375;
            }

            v442 = v623;
            outlined init with copy of DateInterval?(v659, v623, &_s10Foundation4DateVSgMd);
            result = v435(v442, 1, v385);
            if (result == 1)
            {
LABEL_375:
              __break(1u);
              goto LABEL_376;
            }

            v443 = v628;
            v444 = static Date.> infix(_:_:)();
            v445 = *(v665 + 8);
            v445(v442, v385);
            v445(v443, v385);
            if (v444)
            {
              v446 = v613;
              outlined init with copy of DateInterval?(v666 + v436, v613, &_s10Foundation4DateVSgMd);
              result = v435(v446, 1, v385);
              if (result == 1)
              {
LABEL_377:
                __break(1u);
LABEL_378:
                __break(1u);
                goto LABEL_379;
              }

              v447 = v614;
              outlined init with copy of DateInterval?(v659, v614, &_s10Foundation4DateVSgMd);
              result = v435(v447, 1, v385);
              if (result == 1)
              {
LABEL_379:
                __break(1u);
                goto LABEL_380;
              }

              Date.timeIntervalSince(_:)();
              v449 = v448;
              v445(v447, v385);
              v445(v446, v385);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v669 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v669 + 2) + 1, 1, v669);
              }

              v451 = *(v669 + 2);
              v450 = *(v669 + 3);
              if (v451 >= v450 >> 1)
              {
                v669 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v450 > 1), v451 + 1, 1, v669);
              }

              v452 = v669;
              *(v669 + 2) = v451 + 1;
              *&v452[8 * v451 + 32] = v449;
              if (one-time initialization token for analytics != -1)
              {
                swift_once();
              }

              v453 = type metadata accessor for Logger();
              __swift_project_value_buffer(v453, static CommonLogger.analytics);
              v454 = Logger.logObject.getter();
              v455 = static os_log_type_t.info.getter();
              if (os_log_type_enabled(v454, v455))
              {
                v456 = swift_slowAlloc();
                v457 = swift_slowAlloc();
                *&v691[0] = v457;
                *v456 = 136446466;
                *(v456 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000002165845E0, v691);
                *(v456 + 12) = 2048;
                *(v456 + 14) = v449;
                _os_log_impl(&dword_21607C000, v454, v455, "[CloudDevicesDB.%{public}s] Appended timeBetweenSnapshotDownloads to SnapshotEventAggregation:%f", v456, 0x16u);
                __swift_destroy_boxed_opaque_existential_1(v457);
                MEMORY[0x21CE94770](v457, -1, -1);
                MEMORY[0x21CE94770](v456, -1, -1);
              }
            }
          }

          v370 = v665;
        }

        v458 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_lastSnapshotCreationDate;
        v459 = v666;
        swift_beginAccess();
        v460 = v459 + v458;
        v461 = v634;
        outlined init with copy of DateInterval?(v460, v634, &_s10Foundation4DateVSgMd);
        v462 = v663;
        if (v435(v461, 1, v663) == 1)
        {
          outlined destroy of UTType?(v461, &_s10Foundation4DateVSgMd);
          v156 = v459;
          v385 = v462;
          goto LABEL_283;
        }

        v463 = *(v370 + 32);
        v464 = v631;
        v463(v631, v461, v462);
        v465 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_lastSnapshotDownloadCompleteDate;
        swift_beginAccess();
        v466 = v459 + v465;
        v467 = v629;
        outlined init with copy of DateInterval?(v466, v629, &_s10Foundation4DateVSgMd);
        v385 = v462;
        if (v435(v467, 1, v462) == 1)
        {
          (*(v370 + 8))(v464, v462);
          outlined destroy of UTType?(v467, &_s10Foundation4DateVSgMd);
        }

        else
        {
          v468 = v624;
          v463(v624, v467, v462);
          if (static Date.> infix(_:_:)())
          {
            Date.timeIntervalSince(_:)();
            v470 = v469;
            v471 = swift_isUniquelyReferenced_nonNull_native();
            v156 = v666;
            if ((v471 & 1) == 0)
            {
              v670 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v670 + 2) + 1, 1, v670);
            }

            v473 = *(v670 + 2);
            v472 = *(v670 + 3);
            if (v473 >= v472 >> 1)
            {
              v670 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v472 > 1), v473 + 1, 1, v670);
            }

            v474 = v670;
            *(v670 + 2) = v473 + 1;
            *&v474[8 * v473 + 32] = v470;
            if (one-time initialization token for analytics != -1)
            {
              swift_once();
            }

            v475 = type metadata accessor for Logger();
            __swift_project_value_buffer(v475, static CommonLogger.analytics);
            v476 = Logger.logObject.getter();
            v477 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v476, v477))
            {
              v478 = swift_slowAlloc();
              v479 = swift_slowAlloc();
              *&v691[0] = v479;
              *v478 = 136446466;
              *(v478 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000002165845E0, v691);
              *(v478 + 12) = 2048;
              *(v478 + 14) = v470;
              _os_log_impl(&dword_21607C000, v476, v477, "[CloudDevicesDB.%{public}s] Appended  timeBetweenSnapshotCreationAndDownloadComplete to SnapshotEventAggregation:%f", v478, 0x16u);
              __swift_destroy_boxed_opaque_existential_1(v479);
              v480 = v479;
              v370 = v665;
              MEMORY[0x21CE94770](v480, -1, -1);
              MEMORY[0x21CE94770](v478, -1, -1);
            }

            v481 = *(v370 + 8);
            v481(v468, v385);
            v481(v464, v385);
LABEL_283:
            v387 = v669;
            v386 = v670;
            if (!v648)
            {
              goto LABEL_304;
            }

            goto LABEL_284;
          }

          v487 = *(v370 + 8);
          v487(v468, v462);
          v487(v464, v462);
        }

        v156 = v666;
        goto LABEL_283;
      }

      v664 = v405;
      v482 = v666;
      v483 = v666 + v406;
      v484 = v406;
      v485 = v617;
      outlined init with copy of DateInterval?(v483, v617, &_s10Foundation4DateVSgMd);
      v486 = v392(v485, 1, v385);
      outlined destroy of UTType?(v485, &_s10Foundation4DateVSgMd);
      if (v486 == 1)
      {
        (*(v665 + 8))(v633, v385);
      }

      else
      {
        v544 = v482 + v484;
        v545 = v612;
        outlined init with copy of DateInterval?(v544, v612, &_s10Foundation4DateVSgMd);
        result = (v392)(v545, 1, v385);
        if (result == 1)
        {
LABEL_381:
          __break(1u);
          goto LABEL_382;
        }

        v406 = v484;
        v546 = static Date.< infix(_:_:)();
        v547 = *(v665 + 8);
        v547(v545, v385);
        if (v546)
        {
          goto LABEL_241;
        }

        v547(v633, v385);
      }

      v156 = v666;
      goto LABEL_234;
    }
  }

LABEL_229:

  *&v671 = MEMORY[0x277D84F90];
  if (v360)
  {
    goto LABEL_230;
  }

LABEL_227:
  if (!v648)
  {
    goto LABEL_304;
  }

LABEL_284:
  v488 = *(v370 + 48);
  if (v488(v662, 1, v385) == 1)
  {
    v156 = v666;
    goto LABEL_304;
  }

  v669 = v387;
  v670 = v386;
  v489 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_lastSnapshotCreationDate;
  v490 = v666;
  swift_beginAccess();
  v491 = v630;
  outlined init with copy of DateInterval?(v490 + v489, v630, &_s10Foundation4DateVSgMd);
  v492 = v488(v491, 1, v385);
  outlined destroy of UTType?(v491, &_s10Foundation4DateVSgMd);
  if (v492 == 1)
  {
    v156 = v490;
LABEL_303:
    v387 = v669;
    v386 = v670;
    goto LABEL_304;
  }

  v493 = v627;
  outlined init with copy of DateInterval?(v490 + v489, v627, &_s10Foundation4DateVSgMd);
  result = (v488)(v493, 1, v385);
  if (result == 1)
  {
    goto LABEL_374;
  }

  v494 = v621;
  outlined init with copy of DateInterval?(v662, v621, &_s10Foundation4DateVSgMd);
  result = (v488)(v494, 1, v385);
  if (result == 1)
  {
LABEL_376:
    __break(1u);
    goto LABEL_377;
  }

  v495 = v627;
  v496 = static Date.> infix(_:_:)();
  v497 = *(v665 + 8);
  v497(v494, v385);
  v497(v495, v385);
  if ((v496 & 1) == 0)
  {
    v156 = v666;
    goto LABEL_303;
  }

  v498 = v615;
  outlined init with copy of DateInterval?(v666 + v489, v615, &_s10Foundation4DateVSgMd);
  result = (v488)(v498, 1, v385);
  if (result == 1)
  {
    goto LABEL_378;
  }

  v499 = v616;
  outlined init with copy of DateInterval?(v662, v616, &_s10Foundation4DateVSgMd);
  result = (v488)(v499, 1, v385);
  if (result == 1)
  {
LABEL_380:
    __break(1u);
    goto LABEL_381;
  }

  Date.timeIntervalSince(_:)();
  v501 = v500;
  v497(v499, v385);
  v497(v498, v385);
  v502 = v671;
  v503 = swift_isUniquelyReferenced_nonNull_native();
  v156 = v666;
  v387 = v669;
  v386 = v670;
  if ((v503 & 1) == 0)
  {
    v502 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v502 + 2) + 1, 1, v502);
  }

  v505 = *(v502 + 2);
  v504 = *(v502 + 3);
  *&v671 = v502;
  if (v505 >= v504 >> 1)
  {
    *&v671 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v504 > 1), v505 + 1, 1, v671);
  }

  v506 = v671;
  *(v671 + 16) = v505 + 1;
  *(v506 + 8 * v505 + 32) = v501;
  if (one-time initialization token for analytics != -1)
  {
    swift_once();
  }

  v507 = type metadata accessor for Logger();
  __swift_project_value_buffer(v507, static CommonLogger.analytics);
  v508 = Logger.logObject.getter();
  v509 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v508, v509))
  {
    v510 = swift_slowAlloc();
    v511 = swift_slowAlloc();
    *&v691[0] = v511;
    *v510 = 136446466;
    *(v510 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000002165845E0, v691);
    *(v510 + 12) = 2048;
    *(v510 + 14) = v501;
    _os_log_impl(&dword_21607C000, v508, v509, "[CloudDevicesDB.%{public}s] Appended  timeBetweenSnapshotUploads to SnapshotEventAggregation:%f", v510, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v511);
    MEMORY[0x21CE94770](v511, -1, -1);
    MEMORY[0x21CE94770](v510, -1, -1);
  }

LABEL_304:
  v512 = v678;
  if (*&v692[0] == 1)
  {

LABEL_307:

    v513 = MEMORY[0x277D84F90];
    goto LABEL_308;
  }

  v513 = *(&v692[2] + 1);

  outlined destroy of UTType?(v692, &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMd);
  if (!v513)
  {
    goto LABEL_307;
  }

LABEL_308:
  v514 = v156 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_snapshotEventAggregation;
  swift_beginAccess();
  v515 = *(v514 + 48);
  v691[2] = *(v514 + 32);
  v691[3] = v515;
  v691[4] = *(v514 + 64);
  v516 = *(v514 + 16);
  v691[0] = *v514;
  v691[1] = v516;
  *v514 = v657;
  *(v514 + 8) = 0;
  *(v514 + 16) = 0;
  *(v514 + 24) = v512;
  *(v514 + 32) = v655;
  *(v514 + 40) = v513;
  *(v514 + 48) = v386;
  *(v514 + 56) = v387;
  *(v514 + 64) = v671;
  *(v514 + 72) = 0;
  outlined destroy of UTType?(v691, &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMd);

LABEL_309:
  if (one-time initialization token for analytics != -1)
  {
    swift_once();
  }

  v517 = type metadata accessor for Logger();
  __swift_project_value_buffer(v517, static CommonLogger.analytics);

  v518 = Logger.logObject.getter();
  v519 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v518, v519))
  {
    LODWORD(v671) = v519;
    v520 = swift_slowAlloc();
    v670 = swift_slowAlloc();
    v690 = v670;
    *v520 = 136447234;
    *(v520 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000002165845E0, &v690);
    *(v520 + 12) = 2080;
    v521 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_lastSnapshotDownloadCompleteDate;
    swift_beginAccess();
    v522 = v650;
    outlined init with copy of DateInterval?(v156 + v521, v650, &_s10Foundation4DateVSgMd);
    v523 = String.init<A>(describing:)();
    v525 = v156;
    v526 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v523, v524, &v690);

    *(v520 + 14) = v526;
    *(v520 + 22) = 2080;
    v527 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_lastSnapshotCreationDate;
    swift_beginAccess();
    outlined init with copy of DateInterval?(v525 + v527, v522, &_s10Foundation4DateVSgMd);
    v528 = String.init<A>(describing:)();
    v530 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v528, v529, &v690);

    *(v520 + 24) = v530;
    *(v520 + 32) = 2080;
    v531 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_lastUILaunchDate;
    swift_beginAccess();
    outlined init with copy of DateInterval?(v525 + v531, v522, &_s10Foundation4DateVSgMd);
    v532 = String.init<A>(describing:)();
    v534 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v532, v533, &v690);

    *(v520 + 34) = v534;
    *(v520 + 42) = 2080;
    v535 = (v525 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_snapshotEventAggregation);
    swift_beginAccess();
    v536 = *v535;
    if (*v535 == 1)
    {
      v537 = 0xE300000000000000;
      v538 = 7104878;
    }

    else
    {
      *(&v691[1] + 8) = *(v535 + 3);
      *(&v691[2] + 8) = *(v535 + 5);
      *(&v691[3] + 8) = *(v535 + 7);
      v539 = v535[9];
      *(v691 + 8) = *(v535 + 1);
      *(&v691[4] + 1) = v539;
      *&v691[0] = v536;
      v538 = CloudDevicesDB.SnapshotEventAggregation.description.getter();
      v537 = v540;
    }

    v541 = v671;
    v542 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v538, v537, &v690);

    *(v520 + 44) = v542;
    _os_log_impl(&dword_21607C000, v518, v541, "[CloudDevicesDB.%{public}s] Updated CloudDevicesDB\nlastSnapshotDownloadCompleteDate=%s\nlastSnapshotCreationDate=%s\nlastUILaunchDate=%s\nsnapshotAggregation:%s", v520, 0x34u);
    v543 = v670;
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v543, -1, -1);
    MEMORY[0x21CE94770](v520, -1, -1);
  }

  outlined destroy of UTType?(v662, &_s10Foundation4DateVSgMd);
  return outlined destroy of UTType?(v659, &_s10Foundation4DateVSgMd);
}

uint64_t closure #1 in closure #9 in CloudDevicesDB.initialized()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = static Exif.filterImage(imageSource:outputURL:);

  return CloudDevicesDB.checkDB(forceUpdate:)(0);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ()(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

uint64_t CloudDevicesDB.refresh(force:)(char a1)
{
  *(v2 + 208) = v1;
  *(v2 + 381) = a1;
  *(v2 + 216) = *v1;
  v3 = type metadata accessor for Logger();
  *(v2 + 224) = v3;
  *(v2 + 232) = *(v3 - 8);
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  *(v2 + 256) = swift_task_alloc();
  *(v2 + 264) = swift_task_alloc();
  v4 = type metadata accessor for Date();
  *(v2 + 272) = v4;
  *(v2 + 280) = *(v4 - 8);
  *(v2 + 288) = swift_task_alloc();
  *(v2 + 296) = swift_task_alloc();

  return MEMORY[0x2822009F8](CloudDevicesDB.refresh(force:), v1, 0);
}

uint64_t CloudDevicesDB.refresh(force:)()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 381);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys23CustomStringConvertible_pSgGMd);
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D839B0];
  *(v4 + 16) = xmmword_21658CA50;
  v6 = MEMORY[0x277D839D8];
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  *(v4 + 32) = v3;
  static CloudLog.LogBegin(_:_:)(v4, "refresh(force:)", 15, 2, v1, &protocol witness table for CloudDevicesDB);

  v7 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_cloudManager;
  swift_beginAccess();
  v8 = *(v2 + v7);
  *(v0 + 304) = v8;
  if (v8 && (type metadata accessor for CloudManager(), v9 = swift_dynamicCastClass(), (*(v0 + 312) = v9) != 0))
  {
    v10 = v9;
    swift_unknownObjectRetain();

    return MEMORY[0x2822009F8](CloudDevicesDB.refresh(force:), v10, 0);
  }

  else
  {
    static CloudLog.LogEnd(_:)("refresh(force:)", 15, 2, *(v0 + 216), &protocol witness table for CloudDevicesDB);

    v11 = *(v0 + 8);

    return v11();
  }
}

{
  if (*(*(v0 + 312) + 136))
  {
    v1 = CloudDevicesDB.refresh(force:);
  }

  else
  {
    v1 = CloudDevicesDB.refresh(force:);
  }

  return MEMORY[0x2822009F8](v1, *(v0 + 208), 0);
}

{
  swift_unknownObjectRelease();
  static CloudLog.LogEnd(_:)("refresh(force:)", 15, 2, *(v0 + 216), &protocol witness table for CloudDevicesDB);

  v1 = *(v0 + 8);

  return v1();
}

{
  v21 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (*(v0 + 376))
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 232);
    v1 = *(v0 + 240);
    v3 = *(v0 + 224);
    v4 = __swift_project_value_buffer(v3, static CloudDevicesDB.Log);
    swift_beginAccess();
    (*(v2 + 16))(v1, v4, v3);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 232);
    v9 = *(v0 + 240);
    v10 = *(v0 + 224);
    if (v7)
    {
      v19 = *(v0 + 240);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20 = v12;
      *v11 = 136446466;
      swift_beginAccess();
      v13 = StaticString.description.getter();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v20);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2082;
      *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x2868736572666572, 0xEF293A6563726F66, &v20);
      _os_log_impl(&dword_21607C000, v5, v6, "%{public}s.%{public}s Already refreshing, skipping", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v12, -1, -1);
      MEMORY[0x21CE94770](v11, -1, -1);

      swift_unknownObjectRelease();
      (*(v8 + 8))(v19, v10);
    }

    else
    {

      swift_unknownObjectRelease();
      (*(v8 + 8))(v9, v10);
    }

    static CloudLog.LogEnd(_:)("refresh(force:)", 15, 2, *(v0 + 216), &protocol witness table for CloudDevicesDB);

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 377) = 1;

    static Published.subscript.setter();
    v16 = swift_task_alloc();
    *(v0 + 320) = v16;
    *v16 = v0;
    v16[1] = CloudDevicesDB.refresh(force:);

    return CloudManager.checkFreeSpace()(v0 + 378);
  }
}

{
  v1 = *(*v0 + 208);

  return MEMORY[0x2822009F8](CloudDevicesDB.refresh(force:), v1, 0);
}

{
  v1 = swift_task_alloc();
  *(v0 + 328) = v1;
  *v1 = v0;
  v1[1] = CloudDevicesDB.refresh(force:);

  return CloudManager.checkiCloudPhotoLibraryAvailable()();
}

{
  v1 = *(*v0 + 208);

  return MEMORY[0x2822009F8](CloudDevicesDB.refresh(force:), v1, 0);
}

{
  v43 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);
  v3 = *(v0 + 264);
  v4 = *(v0 + 208);
  Date.init()();
  v5 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__lastFullRefresh;
  swift_beginAccess();
  outlined init with copy of DateInterval?(v4 + v5, v3, &_s10Foundation4DateVSgMd);
  v6 = *(v2 + 48);
  if (v6(v3, 1, v1) == 1)
  {
    v7 = *(v0 + 264);
    v8 = *(v0 + 272);
    static Date.distantPast.getter();
    if (v6(v7, 1, v8) != 1)
    {
      outlined destroy of UTType?(*(v0 + 264), &_s10Foundation4DateVSgMd);
    }
  }

  else
  {
    (*(*(v0 + 280) + 32))(*(v0 + 288), *(v0 + 264), *(v0 + 272));
  }

  v9 = *(v0 + 288);
  v10 = *(v0 + 296);
  v11 = *(v0 + 272);
  v12 = *(v0 + 280);
  Date.timeIntervalSince(_:)();
  v14 = v13;
  v15 = *(v12 + 8);
  v15(v9, v11);
  v15(v10, v11);
  if (v14 <= 3600.0)
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v28 = *(v0 + 248);
    v29 = *(v0 + 224);
    v30 = *(v0 + 232);
    v31 = __swift_project_value_buffer(v29, static CloudDevicesDB.Log);
    swift_beginAccess();
    (*(v30 + 16))(v28, v31, v29);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v0 + 248);
    v36 = *(v0 + 224);
    v37 = *(v0 + 232);
    if (v34)
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v42 = v39;
      *v38 = 136446210;
      *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x2868736572666572, 0xEF293A6563726F66, &v42);
      _os_log_impl(&dword_21607C000, v32, v33, "CloudDevicesDB.%{public}s: Only running full refreshing once an hour", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x21CE94770](v39, -1, -1);
      MEMORY[0x21CE94770](v38, -1, -1);
    }

    (*(v37 + 8))(v35, v36);
    *(*(v0 + 208) + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__cancelRefresh) = 0;
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 379) = 0;

    static Published.subscript.setter();
    swift_unknownObjectRelease();
    static CloudLog.LogEnd(_:)("refresh(force:)", 15, 2, *(v0 + 216), &protocol witness table for CloudDevicesDB);

    v40 = *(v0 + 8);

    return v40();
  }

  else
  {
    v16 = *(v0 + 312);
    v17 = *(v0 + 272);
    v18 = *(v0 + 280);
    v19 = *(v0 + 256);
    v20 = *(v0 + 208);
    v21 = *(v0 + 216);
    static Date.now.getter();
    (*(v18 + 56))(v19, 0, 1, v17);
    swift_beginAccess();
    outlined assign with take of Date?(v19, v4 + v5);
    swift_endAccess();
    v22 = swift_allocObject();
    *(v0 + 336) = v22;
    *(v22 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8CKRecordCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v23 = swift_allocObject();
    *(v0 + 344) = v23;
    *(v23 + 16) = 0;
    v24 = lazy protocol witness table accessor for type CloudDevice and conformance CloudDevice(&lazy protocol witness table cache variable for type CloudDevicesDB and conformance CloudDevicesDB, type metadata accessor for CloudDevicesDB);
    v25 = swift_task_alloc();
    *(v0 + 352) = v25;
    v25[2] = v22;
    v25[3] = v23;
    v25[4] = v16;
    v25[5] = v21;
    v26 = swift_task_alloc();
    *(v0 + 360) = v26;
    *v26 = v0;
    v26[1] = CloudDevicesDB.refresh(force:);
    v27 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822007B8](v26, v20, v24, 0x2868736572666572, 0xEF293A6563726F66, partial apply for closure #1 in CloudDevicesDB.refresh(force:), v25, v27);
  }
}

{
  v1 = *(*v0 + 208);

  return MEMORY[0x2822009F8](CloudDevicesDB.refresh(force:), v1, 0);
}

{
  v1 = *(*v0 + 208);

  return MEMORY[0x2822009F8](CloudDevicesDB.refresh(force:), v1, 0);
}

{
  v1 = *(v0 + 208);

  *(v1 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__cancelRefresh) = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 380) = 0;

  static Published.subscript.setter();
  swift_unknownObjectRelease();
  static CloudLog.LogEnd(_:)("refresh(force:)", 15, 2, *(v0 + 216), &protocol witness table for CloudDevicesDB);

  v2 = *(v0 + 8);

  return v2();
}

void CloudDevicesDB.refresh(force:)()
{
  v1 = v0[42];
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = -1;
  v4 = -1 << *(v2 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v2 + 64);
  v6 = (63 - v4) >> 6;
  swift_bridgeObjectRetain_n();
  v7 = 0;
  if (v5)
  {
    while (1)
    {
      v8 = v7;
LABEL_9:
      v9 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v10 = *(*(v2 + 56) + ((v8 << 9) | (8 * v9)));
      specialized CloudDevicesDB.modifyOrCreateCKRecord(_:force:)(v10);

      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v6)
    {
      break;
    }

    v5 = *(v2 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  v11 = v0[43];

  swift_beginAccess();
  if ((*(v11 + 16) & 1) == 0)
  {
    v12 = v0[42];
    v13 = v0[26];

    specialized Sequence.forEach(_:)(v14, v12 + 16, v13);
  }

  v15 = swift_task_alloc();
  v0[46] = v15;
  *v15 = v0;
  v15[1] = CloudDevicesDB.refresh(force:);

  CloudDevicesDB.checkDB(forceUpdate:)(0);
}

void closure #1 in CloudDevicesDB.refresh(force:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = a5;
  v45 = a4;
  v46 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v7 - 8);
  v44 = &v37 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v37 - v12;
  v14 = [objc_opt_self() predicateWithValue_];
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKQuery);
  v15 = v14;
  v16._countAndFlagsBits = 0x656369766544;
  v16._object = 0xE600000000000000;
  v43 = v15;
  isa = CKQuery.init(recordType:predicate:)(v16, v15).super.isa;
  v18 = objc_allocWithZone(MEMORY[0x277CBC590]);
  v41 = isa;
  v19 = [v18 initWithQuery_];
  v20 = [v19 configuration];
  if (v20)
  {
    v21 = v20;
    [v20 setAllowsCellularAccess_];

    [v19 setFetchAllResults_];
    v22 = swift_allocObject();
    v22[2] = a2;
    v22[3] = a3;
    v23 = v42;
    v22[4] = v42;

    v37 = v19;
    CKQueryOperation.recordMatchedBlock.setter();
    v39 = *(v10 + 16);
    v39(v13, v46, v9);
    v24 = *(v10 + 80);
    v25 = (v24 + 24) & ~v24;
    v40 = v11;
    v26 = v9;
    v27 = a3;
    v28 = (v11 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    *(v29 + 16) = v27;
    v38 = *(v10 + 32);
    v30 = v29 + v25;
    v31 = v26;
    v38(v30, v13, v26);
    *(v29 + v28) = v23;

    v32 = v37;
    CKQueryOperation.queryResultBlock.setter();
    v33 = type metadata accessor for TaskPriority();
    v34 = v44;
    (*(*(v33 - 8) + 56))(v44, 1, 1, v33);
    v39(v13, v46, v31);
    v35 = swift_allocObject();
    v35[2] = 0;
    v35[3] = 0;
    v35[4] = v45;
    v35[5] = v32;
    v35[6] = v27;
    v38(v35 + ((v24 + 56) & ~v24), v13, v31);

    v36 = v32;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v34, &async function pointer to partial apply for closure #3 in closure #1 in CloudDevicesDB.refresh(force:), v35);
  }

  else
  {
    __break(1u);
  }
}

uint64_t closure #1 in closure #1 in CloudDevicesDB.refresh(force:)(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v9, static CloudDevicesDB.Log);
    swift_beginAccess();
    (*(v10 + 16))(v12, v13, v9);
    v14 = a2;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    outlined consume of Result<CKRecord, Error>(a2);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v37 = a5;
      v19 = v18;
      v36 = swift_slowAlloc();
      v38[0] = v36;
      *v17 = 136446722;
      swift_beginAccess();
      v20 = StaticString.description.getter();
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v38);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2082;
      *(v17 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x2868736572666572, 0xEF293A6563726F66, v38);
      *(v17 + 22) = 2112;
      v23 = a2;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 24) = v24;
      *v19 = v24;
      _os_log_impl(&dword_21607C000, v15, v16, "%{public}s.%{public}s %@", v17, 0x20u);
      outlined destroy of UTType?(v19, &_sSo8NSObjectCSgMd);
      v25 = v19;
      a5 = v37;
      MEMORY[0x21CE94770](v25, -1, -1);
      v26 = v36;
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v26, -1, -1);
      MEMORY[0x21CE94770](v17, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
    result = swift_beginAccess();
    *(a5 + 16) = 1;
  }

  else
  {
    v28 = [a2 recordID];
    v29 = [v28 recordName];

    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    swift_beginAccess();
    v33 = a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38[0] = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v33, v30, v32, isUniquelyReferenced_nonNull_native);

    *(a4 + 16) = v38[0];
    return swift_endAccess();
  }

  return result;
}

uint64_t closure #2 in closure #1 in CloudDevicesDB.refresh(force:)(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v49 - v13;
  if (a2)
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v8, static CloudDevicesDB.Log);
    swift_beginAccess();
    (*(v9 + 16))(v12, v15, v8);
    v16 = a1;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    outlined consume of Result<CKRecord, Error>(a1);
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v51 = v8;
      v21 = v20;
      v22 = swift_slowAlloc();
      v52 = a4;
      v50 = v22;
      v55[0] = v22;
      *v19 = 136446722;
      swift_beginAccess();
      v23 = StaticString.description.getter();
      v25 = a3;
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v55);

      *(v19 + 4) = v26;
      a3 = v25;
      *(v19 + 12) = 2082;
      *(v19 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x2868736572666572, 0xEF293A6563726F66, v55);
      *(v19 + 22) = 2112;
      v27 = a1;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 24) = v28;
      *v21 = v28;
      _os_log_impl(&dword_21607C000, v17, v18, "%{public}s.%{public}s %@", v19, 0x20u);
      outlined destroy of UTType?(v21, &_sSo8NSObjectCSgMd);
      MEMORY[0x21CE94770](v21, -1, -1);
      v29 = v50;
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v29, -1, -1);
      MEMORY[0x21CE94770](v19, -1, -1);

      (*(v9 + 8))(v12, v51);
    }

    else
    {

      (*(v9 + 8))(v12, v8);
    }

    swift_beginAccess();
    *(a3 + 16) = 1;
  }

  else
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v30 = __swift_project_value_buffer(v8, static CloudDevicesDB.Log);
    swift_beginAccess();
    (*(v9 + 16))(v14, v30, v8);
    v31 = a1;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    outlined consume of Result<CKRecord, Error>(a1);
    if (os_log_type_enabled(v32, v33))
    {
      v50 = v31;
      v51 = v8;
      v52 = a4;
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v54[0] = v35;
      *v34 = 136446978;
      swift_beginAccess();
      v36 = StaticString.description.getter();
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, v54);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2082;
      *(v34 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x2868736572666572, 0xEF293A6563726F66, v54);
      *(v34 + 22) = 2080;
      v53 = type metadata accessor for CloudSyncSnapshot();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI17CloudSyncSnapshotCmMd);
      v39 = String.init<A>(describing:)();
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, v54);

      *(v34 + 24) = v41;
      *(v34 + 32) = 2080;
      if (a1)
      {
        v42 = [v50 description];
        v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = v44;
      }

      else
      {
        v45 = 0xE900000000000072;
        v43 = 0x6F73727563206F6ELL;
      }

      v46 = v51;
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, v54);

      *(v34 + 34) = v47;
      _os_log_impl(&dword_21607C000, v32, v33, "%{public}s.%{public}s Done fetching missing %ss with %s", v34, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v35, -1, -1);
      MEMORY[0x21CE94770](v34, -1, -1);

      (*(v9 + 8))(v14, v46);
    }

    else
    {

      (*(v9 + 8))(v14, v8);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
  return CheckedContinuation.resume(returning:)();
}

uint64_t closure #3 in closure #1 in CloudDevicesDB.refresh(force:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  return MEMORY[0x2822009F8](closure #3 in closure #1 in CloudDevicesDB.refresh(force:), a4, 0);
}

uint64_t closure #3 in closure #1 in CloudDevicesDB.refresh(force:)()
{
  *(v0 + 72) = CloudManager.add(databaseOperation:)(*(v0 + 48));

  return MEMORY[0x2822009F8](closure #3 in closure #1 in CloudDevicesDB.refresh(force:), 0, 0);
}

{
  if ((*(v0 + 72) & 1) == 0)
  {
    v1 = *(v0 + 56);
    swift_beginAccess();
    *(v1 + 16) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
    CheckedContinuation.resume(returning:)();
  }

  v2 = *(v0 + 8);

  return v2();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CloudDevicesDB.persistLocalData()()
{
  v2 = v1;
  v3 = v0;
  v182[6] = *MEMORY[0x277D85DE8];
  v4 = *v0;
  v170 = type metadata accessor for CocoaError.Code();
  v5 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v169 = &v149 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSgMd);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v150 = (&v149 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v8);
  v154 = &v149 - v11;
  MEMORY[0x28223BE20](v10);
  v155 = &v149 - v12;
  v171 = type metadata accessor for URL();
  v13 = *(v171 - 8);
  v14 = MEMORY[0x28223BE20](v171);
  v168 = &v149 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v167 = &v149 - v17;
  MEMORY[0x28223BE20](v16);
  v159 = &v149 - v18;
  v19 = type metadata accessor for Logger();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v152 = &v149 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v151 = &v149 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v176 = &v149 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v149 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v153 = &v149 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v149 = &v149 - v33;
  MEMORY[0x28223BE20](v32);
  v35 = &v149 - v34;
  v160 = v4;
  static CloudLog.LogBegin(_:_:)(0, "persistLocalData()", 18, 2, v4, &protocol witness table for CloudDevicesDB);
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

    v36 = __swift_project_value_buffer(v19, static CloudDevicesDB.Log);
    swift_beginAccess();
    (*(v20 + 16))(v29, v36, v19);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v178 = v1;
      v41 = v40;
      v181 = v40;
      *v39 = 136446466;
      swift_beginAccess();
      v42 = StaticString.description.getter();
      v44 = v19;
      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v181);

      *(v39 + 4) = v45;
      *(v39 + 12) = 2082;
      *(v39 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x8000000216579010, &v181);
      _os_log_impl(&dword_21607C000, v37, v38, "%{public}s.%{public}s DEBUG_NO_NETWORK: Skipping DB write", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v41, -1, -1);
      MEMORY[0x21CE94770](v39, -1, -1);

      (*(v20 + 8))(v29, v44);
    }

    else
    {

      (*(v20 + 8))(v29, v19);
    }

LABEL_28:
    static CloudLog.LogEnd(_:)("persistLocalData()", 18, 2, v160, &protocol witness table for CloudDevicesDB);
    return;
  }

  v166 = v3 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state;
  if (*(v3 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state) - 1 >= 2)
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v85 = __swift_project_value_buffer(v19, static CloudDevicesDB.Log);
    swift_beginAccess();
    (*(v20 + 16))(v35, v85, v19);
    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v181 = v89;
      *v88 = 136446466;
      v178 = v1;
      swift_beginAccess();
      v90 = StaticString.description.getter();
      v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v91, &v181);

      *(v88 + 4) = v92;
      *(v88 + 12) = 2082;
      *(v88 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x8000000216579010, &v181);
      _os_log_impl(&dword_21607C000, v86, v87, "%{public}s.%{public}s Shouldn't try to persist local data without a logged in user", v88, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v89, -1, -1);
      MEMORY[0x21CE94770](v88, -1, -1);
    }

    (*(v20 + 8))(v35, v19);
    goto LABEL_28;
  }

  v174 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_deviceDBURL;
  swift_beginAccess();
  v163 = type metadata accessor for JSONEncoder();
  v46 = 0;
  v173 = (v13 + 16);
  v172 = (v13 + 8);
  v162 = (v5 + 8);
  v165 = (v20 + 16);
  v164 = (v20 + 8);
  v158 = "fig:)";
  *&v47 = 136446722;
  v157 = v47;
  v156 = v19;
  v175 = v3;
  while (1)
  {
    v48 = v46;
    swift_allocObject();
    JSONEncoder.init()();
    v49 = *(v166 + 1);
    v50 = *(v166 + 2);
    LOWORD(v182[0]) = *v166;
    v182[1] = v49;
    v182[2] = v50;
    lazy protocol witness table accessor for type CloudDevicesDB.State and conformance CloudDevicesDB.State();

    v51 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v53 = v2;
    v177 = v48;
    if (!v2)
    {
      v55 = v51;
      v56 = v52;

      v57 = v175;

      v58 = v159;
      v59 = v171;
      (*v173)(v159, v57 + v174, v171);
      Data.write(to:options:)();
      (*v172)(v58, v59);
      if (v48)
      {
        if (one-time initialization token for Log != -1)
        {
          swift_once();
        }

        v123 = __swift_project_value_buffer(v19, static CloudDevicesDB.Log);
        swift_beginAccess();
        v124 = v149;
        (*v165)(v149, v123, v19);
        v125 = Logger.logObject.getter();
        v126 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v125, v126))
        {
          v127 = swift_slowAlloc();
          v128 = swift_slowAlloc();
          v182[0] = v128;
          *v127 = v157;
          swift_beginAccess();
          v129 = StaticString.description.getter();
          v131 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v129, v130, v182);
          v19 = v156;

          *(v127 + 4) = v131;
          *(v127 + 12) = 2082;
          *(v127 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, v158 | 0x8000000000000000, v182);
          *(v127 + 22) = 2050;
          *(v127 + 24) = 1;
          _os_log_impl(&dword_21607C000, v125, v126, "%{public}s.%{public}s Successfully retried writing device DB cache after %{public}ld retries", v127, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x21CE94770](v128, -1, -1);
          MEMORY[0x21CE94770](v127, -1, -1);
          outlined consume of Data._Representation(v55, v56);

          (*v164)(v149, v19);
        }

        else
        {
          outlined consume of Data._Representation(v55, v56);

          (*v164)(v124, v19);
        }
      }

      else
      {
        outlined consume of Data._Representation(v55, v56);
      }

      goto LABEL_46;
    }

    v54 = v171;
    v60 = v2;
    v61 = v169;
    static CocoaError.fileNoSuchFile.getter();
    lazy protocol witness table accessor for type CloudDevice and conformance CloudDevice(&lazy protocol witness table cache variable for type CocoaError.Code and conformance CocoaError.Code, MEMORY[0x277CC8608]);
    v62 = v170;
    v63 = static _ErrorCodeProtocol.~= infix(_:_:)();

    (*v162)(v61, v62);
    if ((v63 & 1) == 0)
    {
      break;
    }

    v64 = v168;
    (*v173)(v168, v3 + v174, v54);
    v65 = v167;
    URL.deletingLastPathComponent()();
    v66 = *v172;
    (*v172)(v64, v54);
    v67 = URL.path.getter();
    v69 = v68;
    v66(v65, v54);
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v178 = 0;
    v70 = __swift_project_value_buffer(v19, static CloudDevicesDB.Log);
    swift_beginAccess();
    v71 = v176;
    v161 = *v165;
    v161(v176, v70, v19);

    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v182[0] = v75;
      *v74 = v157;
      swift_beginAccess();
      v76 = StaticString.description.getter();
      v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v77, v182);

      *(v74 + 4) = v78;
      *(v74 + 12) = 2082;
      *(v74 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, v158 | 0x8000000000000000, v182);
      *(v74 + 22) = 2080;
      *(v74 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v69, v182);
      _os_log_impl(&dword_21607C000, v72, v73, "%{public}s.%{public}s Folder for device DB cache missing? Retrying after creating folder: %s", v74, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v75, -1, -1);
      v79 = v74;
      v19 = v156;
      MEMORY[0x21CE94770](v79, -1, -1);

      v80 = *v164;
      (*v164)(v176, v19);
    }

    else
    {

      v80 = *v164;
      (*v164)(v71, v19);
    }

    v81 = [objc_opt_self() defaultManager];
    v82 = MEMORY[0x21CE91FC0](v67, v69);

    v182[0] = 0;
    v83 = [v81 createDirectoryIfNeededAtPath:v82 error:v182];

    v3 = v175;
    if (!v83)
    {
      v106 = v182[0];
      v107 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v108 = v151;
      v161(v151, v70, v19);
      v109 = v107;
      v110 = Logger.logObject.getter();
      v111 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        v113 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        v178 = 0;
        v115 = v114;
        v182[0] = v114;
        *v112 = v157;
        swift_beginAccess();
        v116 = StaticString.description.getter();
        v118 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v116, v117, v182);
        v19 = v156;

        *(v112 + 4) = v118;
        *(v112 + 12) = 2082;
        *(v112 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, v158 | 0x8000000000000000, v182);
        *(v112 + 22) = 2112;
        v119 = v107;
        v120 = _swift_stdlib_bridgeErrorToNSError();
        *(v112 + 24) = v120;
        *v113 = v120;
        _os_log_impl(&dword_21607C000, v110, v111, "%{public}s.%{public}s Failed to create folder for device DB cache: (%@)", v112, 0x20u);
        outlined destroy of UTType?(v113, &_sSo8NSObjectCSgMd);
        MEMORY[0x21CE94770](v113, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v115, -1, -1);
        MEMORY[0x21CE94770](v112, -1, -1);

        v121 = v151;
      }

      else
      {

        v121 = v108;
      }

      v80(v121, v19);
LABEL_46:
      v132 = v155;
      CloudDevicesDB.primaryDevice.getter(v155);
      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v133 = __swift_project_value_buffer(v19, static CloudDevicesDB.Log);
      swift_beginAccess();
      v134 = v153;
      (*v165)(v153, v133, v19);
      v135 = v154;
      outlined init with copy of DateInterval?(v132, v154, &_s9MomentsUI11CloudDeviceVSgMd);
      v136 = Logger.logObject.getter();
      v137 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v136, v137))
      {
        v138 = swift_slowAlloc();
        v139 = swift_slowAlloc();
        v180 = v139;
        *v138 = v157;
        swift_beginAccess();
        v140 = StaticString.description.getter();
        v142 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v140, v141, &v180);

        *(v138 + 4) = v142;
        *(v138 + 12) = 2082;
        *(v138 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, v158 | 0x8000000000000000, &v180);
        *(v138 + 22) = 2080;
        v143 = v135;
        v144 = v150;
        outlined init with copy of DateInterval?(v143, v150, &_s9MomentsUI11CloudDeviceVSgMd);
        v145 = type metadata accessor for CloudDevice();
        if ((*(*(v145 - 8) + 48))(v144, 1, v145) == 1)
        {
          outlined destroy of UTType?(v144, &_s9MomentsUI11CloudDeviceVSgMd);
          v146 = 0xE500000000000000;
          v147 = 0x3E6C696E3CLL;
        }

        else
        {
          v147 = *v144;
          v146 = v144[1];

          outlined destroy of CloudDevice(v144, type metadata accessor for CloudDevice);
        }

        outlined destroy of UTType?(v154, &_s9MomentsUI11CloudDeviceVSgMd);
        v148 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v147, v146, &v180);

        *(v138 + 24) = v148;
        _os_log_impl(&dword_21607C000, v136, v137, "%{public}s.%{public}s newPrimary = %s", v138, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v139, -1, -1);
        MEMORY[0x21CE94770](v138, -1, -1);

        (*v164)(v153, v19);
        v132 = v155;
      }

      else
      {

        outlined destroy of UTType?(v135, &_s9MomentsUI11CloudDeviceVSgMd);
        (*v164)(v134, v19);
      }

      PassthroughSubject.send(_:)();

      outlined destroy of UTType?(v132, &_s9MomentsUI11CloudDeviceVSgMd);
      goto LABEL_28;
    }

    v84 = v182[0];
    v46 = 1;
    v2 = v178;
    if (v177)
    {
      goto LABEL_46;
    }
  }

  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v93 = __swift_project_value_buffer(v19, static CloudDevicesDB.Log);
  swift_beginAccess();
  v94 = v152;
  (*v165)(v152, v93, v19);
  v95 = v53;
  v96 = Logger.logObject.getter();
  v97 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v179 = v100;
    *v98 = v157;
    swift_beginAccess();
    v101 = StaticString.description.getter();
    v103 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v102, &v179);

    *(v98 + 4) = v103;
    *(v98 + 12) = 2082;
    *(v98 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, v158 | 0x8000000000000000, &v179);
    *(v98 + 22) = 2112;
    v104 = v53;
    v105 = _swift_stdlib_bridgeErrorToNSError();
    *(v98 + 24) = v105;
    *v99 = v105;
    _os_log_impl(&dword_21607C000, v96, v97, "%{public}s.%{public}s Failed to write device DB cache: %@", v98, 0x20u);
    outlined destroy of UTType?(v99, &_sSo8NSObjectCSgMd);
    MEMORY[0x21CE94770](v99, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v100, -1, -1);
    MEMORY[0x21CE94770](v98, -1, -1);

    (*v164)(v152, v19);
  }

  else
  {

    (*v164)(v94, v19);
  }

  v122 = v160;
  swift_willThrow();
  static CloudLog.LogEnd(_:)("persistLocalData()", 18, 2, v122, &protocol witness table for CloudDevicesDB);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CloudDevicesDB.deleteLocalData()()
{
  v1 = v0;
  v74[6] = *MEMORY[0x277D85DE8];
  v2 = *v0;
  v65 = type metadata accessor for Logger();
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v66 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CloudDevice();
  v68 = *(v4 - 8);
  v69 = v4;
  MEMORY[0x28223BE20](v4);
  v62 = (&v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSg_ADtMd);
  MEMORY[0x28223BE20](v67);
  v7 = &v60 - v6;
  v8 = type metadata accessor for URL();
  v61 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSgMd);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v63 = (&v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v60 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v60 - v17;
  v70 = v2;
  static CloudLog.LogBegin(_:_:)(0, "deleteLocalData()", 17, 2, v2, &protocol witness table for CloudDevicesDB);
  swift_beginAccess();
  v20 = static CloudManager.currentID;
  v19 = qword_2811A6918;

  CloudDevicesDB.primaryDevice.getter(v18);
  v71 = v1;
  v21 = v1 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state;
  if (*v21 - 2 >= 2)
  {
    if (*v21)
    {

      v37 = specialized Dictionary.compactMapValues<A>(_:)(v36, v20, v19);

      swift_bridgeObjectRelease_n();
      *(v21 + 1) = v37;

      *(v21 + 2) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9MomentsUI15CloudMetaDeviceVTt0g5Tf4g_n(MEMORY[0x277D84F90]);

      CloudDevicesDB.persistLocalData()();
      v22 = v38;
      if (v38)
      {

        v22 = 0;
      }

      v23 = v16;
      v25 = v68;
      v24 = v69;
      CloudDevicesDB.primaryDevice.getter(v16);
    }

    else
    {

      v26 = MEMORY[0x277D84F90];
      *(v21 + 1) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9MomentsUI11CloudDeviceVTt0g5Tf4g_n(MEMORY[0x277D84F90]);

      *(v21 + 2) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9MomentsUI15CloudMetaDeviceVTt0g5Tf4g_n(v26);

      v27 = [objc_opt_self() defaultManager];
      v28 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_deviceDBURL;
      v29 = v71;
      swift_beginAccess();
      v30 = v61;
      (*(v61 + 16))(v10, v29 + v28, v8);
      URL._bridgeToObjectiveC()(v31);
      v33 = v32;
      (*(v30 + 8))(v10, v8);
      v74[0] = 0;
      v34 = [v27 removeItemAtURL:v33 error:v74];

      if (v34)
      {
        v35 = v74[0];
        v22 = v72;
      }

      else
      {
        v39 = v74[0];
        v40 = _convertNSErrorToError(_:)();

        swift_willThrow();
        v22 = 0;
      }

      v23 = v16;
      v25 = v68;
      v24 = v69;
      (*(v68 + 56))(v16, 1, 1, v69);
    }
  }

  else
  {

    outlined init with copy of DateInterval?(v18, v16, &_s9MomentsUI11CloudDeviceVSgMd);
    v22 = v72;
    v23 = v16;
    v25 = v68;
    v24 = v69;
  }

  v41 = *(v67 + 48);
  outlined init with copy of DateInterval?(v18, v7, &_s9MomentsUI11CloudDeviceVSgMd);
  outlined init with copy of DateInterval?(v23, &v7[v41], &_s9MomentsUI11CloudDeviceVSgMd);
  v42 = *(v25 + 48);
  if (v42(v7, 1, v24) == 1)
  {
    if (v42(&v7[v41], 1, v24) == 1)
    {
      outlined destroy of UTType?(v7, &_s9MomentsUI11CloudDeviceVSgMd);
      goto LABEL_23;
    }
  }

  else
  {
    v43 = v63;
    outlined init with copy of DateInterval?(v7, v63, &_s9MomentsUI11CloudDeviceVSgMd);
    if (v42(&v7[v41], 1, v24) != 1)
    {
      v57 = &v7[v41];
      v58 = v62;
      outlined init with take of CloudDevice(v57, v62, type metadata accessor for CloudDevice);
      v59 = specialized static CloudDevice.== infix(_:_:)(v43, v58);
      outlined destroy of CloudDevice(v58, type metadata accessor for CloudDevice);
      outlined destroy of CloudDevice(v43, type metadata accessor for CloudDevice);
      outlined destroy of UTType?(v7, &_s9MomentsUI11CloudDeviceVSgMd);
      if (v59)
      {
        goto LABEL_23;
      }

      goto LABEL_17;
    }

    outlined destroy of CloudDevice(v43, type metadata accessor for CloudDevice);
  }

  outlined destroy of UTType?(v7, &_s9MomentsUI11CloudDeviceVSg_ADtMd);
LABEL_17:
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v44 = v65;
  v45 = __swift_project_value_buffer(v65, static CloudDevicesDB.Log);
  swift_beginAccess();
  v46 = v64;
  v47 = v66;
  (*(v64 + 16))(v66, v45, v44);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v72 = v22;
    v52 = v51;
    v73 = v51;
    *v50 = 136446466;
    v69 = v23;
    swift_beginAccess();
    v53 = StaticString.description.getter();
    v55 = v18;
    v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, &v73);
    v23 = v69;

    *(v50 + 4) = v56;
    v18 = v55;
    *(v50 + 12) = 2082;
    *(v50 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x8000000216579030, &v73);
    _os_log_impl(&dword_21607C000, v48, v49, "%{public}s.%{public}s newPrimary = <nil>", v50, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v52, -1, -1);
    MEMORY[0x21CE94770](v50, -1, -1);

    (*(v46 + 8))(v66, v44);
  }

  else
  {

    (*(v46 + 8))(v47, v44);
  }

  PassthroughSubject.send(_:)();

LABEL_23:
  outlined destroy of UTType?(v23, &_s9MomentsUI11CloudDeviceVSgMd);
  outlined destroy of UTType?(v18, &_s9MomentsUI11CloudDeviceVSgMd);
  static CloudLog.LogEnd(_:)("deleteLocalData()", 17, 2, v70, &protocol witness table for CloudDevicesDB);
}

uint64_t CloudDevicesDB.willFetchChanges()()
{
  v1[8] = v0;
  v1[9] = *v0;
  v2 = type metadata accessor for Logger();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](CloudDevicesDB.willFetchChanges(), v0, 0);
}

{
  v20 = v0;
  v1 = v0[8];
  static CloudLog.LogBeginInfo(_:_:)(0, "willFetchChanges()", 18, 2, v0[9], &protocol witness table for CloudDevicesDB);
  if (*(v1 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state) - 1 >= 2)
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v2 = v0[11];
    v3 = v0[12];
    v4 = v0[10];
    v5 = __swift_project_value_buffer(v4, static CloudDevicesDB.Log);
    swift_beginAccess();
    (*(v2 + 16))(v3, v5, v4);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[11];
    v10 = v0[12];
    v11 = v0[10];
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
      *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x8000000216583BC0, &v19);
      _os_log_impl(&dword_21607C000, v6, v7, "%{public}s.%{public}s Shouldn't be called without a logged in user", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v13, -1, -1);
      MEMORY[0x21CE94770](v12, -1, -1);
    }

    (*(v9 + 8))(v10, v11);
  }

  static CloudLog.LogEndInfo(_:)("willFetchChanges()", 18, 2, v0[9], &protocol witness table for CloudDevicesDB);

  v17 = v0[1];

  return v17();
}

uint64_t CloudDevicesDB.willCheckpointChanges()()
{
  v1[8] = v0;
  v1[9] = *v0;
  v2 = type metadata accessor for Logger();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](CloudDevicesDB.willCheckpointChanges(), v0, 0);
}

{
  v21 = v0;
  v1 = v0[8];
  static CloudLog.LogBeginInfo(_:_:)(0, "willCheckpointChanges()", 23, 2, v0[9], &protocol witness table for CloudDevicesDB);
  if (*(v1 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state) - 1 >= 2)
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v3 = v0[11];
    v4 = v0[12];
    v5 = v0[10];
    v6 = __swift_project_value_buffer(v5, static CloudDevicesDB.Log);
    swift_beginAccess();
    (*(v3 + 16))(v4, v6, v5);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[11];
    v11 = v0[12];
    v12 = v0[10];
    if (v9)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20[0] = v14;
      *v13 = 136446466;
      swift_beginAccess();
      v15 = StaticString.description.getter();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v20);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2082;
      *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x8000000216583BE0, v20);
      _os_log_impl(&dword_21607C000, v7, v8, "%{public}s.%{public}s Shouldn't be called without a logged in user", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v14, -1, -1);
      MEMORY[0x21CE94770](v13, -1, -1);
    }

    (*(v10 + 8))(v11, v12);
  }

  else
  {
    CloudDevicesDB.persistLocalData()();
    if (v2)
    {
    }
  }

  static CloudLog.LogEndInfo(_:)("willCheckpointChanges()", 23, 2, v0[9], &protocol witness table for CloudDevicesDB);

  v18 = v0[1];

  return v18();
}

uint64_t CloudDevicesDB.didFetchChanges()()
{
  v1[8] = v0;
  v1[9] = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v1[10] = swift_task_alloc();
  v2 = type metadata accessor for Logger();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](CloudDevicesDB.didFetchChanges(), v0, 0);
}

{
  v21 = v0;
  v1 = v0[8];
  static CloudLog.LogBeginInfo(_:_:)(0, "didFetchChanges()", 17, 2, v0[9], &protocol witness table for CloudDevicesDB);
  if (*(v1 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state) - 1 >= 2)
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v4 = v0[12];
    v5 = v0[13];
    v6 = v0[11];
    v7 = __swift_project_value_buffer(v6, static CloudDevicesDB.Log);
    swift_beginAccess();
    (*(v4 + 16))(v5, v7, v6);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[12];
    v12 = v0[13];
    v13 = v0[11];
    if (v10)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20 = v15;
      *v14 = 136446466;
      swift_beginAccess();
      v16 = StaticString.description.getter();
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v20);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2082;
      *(v14 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x8000000216583C00, &v20);
      _os_log_impl(&dword_21607C000, v8, v9, "%{public}s.%{public}s Shouldn't be called without a logged in user", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v15, -1, -1);
      MEMORY[0x21CE94770](v14, -1, -1);
    }

    (*(v11 + 8))(v12, v13);
    static CloudLog.LogEndInfo(_:)("didFetchChanges()", 17, 2, v0[9], &protocol witness table for CloudDevicesDB);

    v19 = v0[1];

    return v19();
  }

  else
  {
    v2 = swift_task_alloc();
    v0[14] = v2;
    *v2 = v0;
    v2[1] = CloudDevicesDB.didFetchChanges();

    return CloudDevicesDB.checkDB(forceUpdate:)(0);
  }
}

{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 120) = v3;
  *v3 = v2;
  v3[1] = CloudDevicesDB.didFetchChanges();

  return CloudDevicesDB.autoPrimary()();
}

{
  v1 = *(*v0 + 64);

  return MEMORY[0x2822009F8](CloudDevicesDB.didFetchChanges(), v1, 0);
}

{
  CloudDevicesDB.persistLocalData()();
  if (v1)
  {
    static CloudLog.LogEndInfo(_:)("didFetchChanges()", 17, 2, v0[9], &protocol witness table for CloudDevicesDB);
  }

  else
  {
    v4 = v0[9];
    v3 = v0[10];
    v5 = v0[8];
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = lazy protocol witness table accessor for type CloudDevice and conformance CloudDevice(&lazy protocol witness table cache variable for type CloudDevicesDB and conformance CloudDevicesDB, type metadata accessor for CloudDevicesDB);
    v8 = swift_allocObject();
    v8[2] = v5;
    v8[3] = v7;
    v8[4] = v5;
    swift_retain_n();
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #1 in CloudDevicesDB.didFetchChanges(), v8);

    static CloudLog.LogEndInfo(_:)("didFetchChanges()", 17, 2, v4, &protocol witness table for CloudDevicesDB);
  }

  v2 = v0[1];

  return v2();
}

uint64_t CloudDevicesDB.autoPrimary()()
{
  v1[8] = v0;
  v1[9] = *v0;
  v2 = type metadata accessor for Logger();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSgMd);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v3 = type metadata accessor for CloudDevice();
  v1[15] = v3;
  v1[16] = *(v3 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](CloudDevicesDB.autoPrimary(), v0, 0);
}

{
  v36 = v0;
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  static CloudLog.LogBeginInfo(_:_:)(0, "autoPrimary()", 13, 2, v0[9], &protocol witness table for CloudDevicesDB);
  CloudDevicesDB.currentDevice.getter(v3);
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    v5 = v0[14];
LABEL_8:
    outlined destroy of UTType?(v5, &_s9MomentsUI11CloudDeviceVSgMd);
LABEL_9:
    static CloudLog.LogEndInfo(_:)("autoPrimary()", 13, 2, v0[9], &protocol witness table for CloudDevicesDB);

    v15 = v0[1];

    return v15();
  }

  v6 = v0[8];
  outlined init with take of CloudDevice(v0[14], v0[18], type metadata accessor for CloudDevice);
  if ((*(v6 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state) & 0xFE) != 2)
  {
    v12 = v0[15];
    v13 = v0[16];
    v14 = v0[13];
    outlined destroy of CloudDevice(v0[18], type metadata accessor for CloudDevice);
    (*(v13 + 56))(v14, 1, 1, v12);
    goto LABEL_7;
  }

  v7 = v0[15];
  v8 = v0[13];

  static CloudDevice.nominatedPhone(in:)(v9, v8);

  v10 = v4(v8, 1, v7);
  v11 = v0[18];
  if (v10 == 1)
  {
    outlined destroy of CloudDevice(v0[18], type metadata accessor for CloudDevice);
LABEL_7:
    v5 = v0[13];
    goto LABEL_8;
  }

  v17 = v0[17];
  outlined init with take of CloudDevice(v0[13], v17, type metadata accessor for CloudDevice);
  if ((specialized static CloudDevice.== infix(_:_:)(v11, v17) & 1) == 0)
  {
    v34 = v0[18];
    outlined destroy of CloudDevice(v0[17], type metadata accessor for CloudDevice);
    outlined destroy of CloudDevice(v34, type metadata accessor for CloudDevice);
    goto LABEL_9;
  }

  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v19 = v0[11];
  v18 = v0[12];
  v20 = v0[10];
  v21 = __swift_project_value_buffer(v20, static CloudDevicesDB.Log);
  swift_beginAccess();
  (*(v19 + 16))(v18, v21, v20);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  v24 = os_log_type_enabled(v22, v23);
  v26 = v0[11];
  v25 = v0[12];
  v27 = v0[10];
  if (v24)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v35 = v29;
    *v28 = 136446466;
    swift_beginAccess();
    v30 = StaticString.description.getter();
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v35);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2082;
    *(v28 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6D6972506F747561, 0xED00002928797261, &v35);
    _os_log_impl(&dword_21607C000, v22, v23, "%{public}s.%{public}s Accepting nomination", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v29, -1, -1);
    MEMORY[0x21CE94770](v28, -1, -1);
  }

  (*(v26 + 8))(v25, v27);
  v33 = swift_task_alloc();
  v0[19] = v33;
  *v33 = v0;
  v33[1] = CloudDevicesDB.autoPrimary();

  return CloudDevicesDB.becomePrimary()();
}

{
  v1 = *(*v0 + 64);

  return MEMORY[0x2822009F8](CloudDevicesDB.autoPrimary(), v1, 0);
}

{
  v1 = v0[18];
  v2 = v0[9];
  outlined destroy of CloudDevice(v0[17], type metadata accessor for CloudDevice);
  outlined destroy of CloudDevice(v1, type metadata accessor for CloudDevice);
  static CloudLog.LogEndInfo(_:)("autoPrimary()", 13, 2, v2, &protocol witness table for CloudDevicesDB);

  v3 = v0[1];

  return v3();
}

uint64_t closure #1 in CloudDevicesDB.didFetchChanges()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[25] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v6 = type metadata accessor for CloudDevice();
  v4[29] = v6;
  v4[30] = *(v6 - 8);
  v4[31] = swift_task_alloc();
  v4[32] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSg_ADtMd);
  v4[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSgMd);
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in CloudDevicesDB.didFetchChanges(), a4, 0);
}

uint64_t closure #1 in CloudDevicesDB.didFetchChanges()()
{
  v83 = v0;
  if (one-time initialization token for analytics != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[41] = __swift_project_value_buffer(v1, static CommonLogger.analytics);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v82 = v5;
    *v4 = 136446210;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x8000000216583C00, &v82);
    _os_log_impl(&dword_21607C000, v2, v3, "CloudDevicesDB %{public}s Attempting to submit weekly snapshot analytics.", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x21CE94770](v5, -1, -1);
    MEMORY[0x21CE94770](v4, -1, -1);
  }

  v6 = v0[25];
  v7 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_dbSnapshotWeeklyAnalytics;

  v8 = DBSnapshotWeeklyAnalytics.readyToSubmit.getter();

  if ((v8 & 1) == 0 || (v9 = v0[40], v10 = v0[29], v11 = v0[30], CloudDevicesDB.currentDevice.getter(v9), v12 = *(v11 + 48), v13 = v12(v9, 1, v10), outlined destroy of UTType?(v9, &_s9MomentsUI11CloudDeviceVSgMd), v13 == 1))
  {
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v82 = v17;
      *v16 = 136446210;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x8000000216583C00, &v82);
      _os_log_impl(&dword_21607C000, v14, v15, "CloudDevicesDB %{public}s Not ready to submit analytics or current Device is nil. Skipping weekly analytics submission", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x21CE94770](v17, -1, -1);
      MEMORY[0x21CE94770](v16, -1, -1);
    }

LABEL_10:

    v18 = v0[1];

    return v18();
  }

  v20 = v0[39];
  v21 = v0[29];
  CloudDevicesDB.currentDevice.getter(v20);
  v22 = v12(v20, 1, v21);
  outlined destroy of UTType?(v20, &_s9MomentsUI11CloudDeviceVSgMd);
  v81 = v0;
  if (v22 != 1)
  {
    v23 = v0[38];
    v24 = v0[29];
    CloudDevicesDB.primaryDevice.getter(v23);
    v25 = v12(v23, 1, v24);
    outlined destroy of UTType?(v23, &_s9MomentsUI11CloudDeviceVSgMd);
    if (v25 != 1)
    {
      v78 = v6;
      v58 = v0[36];
      v57 = v0[37];
      v60 = v0[32];
      v59 = v0[33];
      v76 = v0[29];
      CloudDevicesDB.currentDevice.getter(v57);
      CloudDevicesDB.primaryDevice.getter(v58);
      v61 = *(v60 + 48);
      outlined init with copy of DateInterval?(v57, v59, &_s9MomentsUI11CloudDeviceVSgMd);
      v80 = v61;
      outlined init with copy of DateInterval?(v58, v59 + v61, &_s9MomentsUI11CloudDeviceVSgMd);
      if (v12(v59, 1, v76) == 1)
      {
        v62 = v0[37];
        v63 = v0[29];
        outlined destroy of UTType?(v0[36], &_s9MomentsUI11CloudDeviceVSgMd);
        outlined destroy of UTType?(v62, &_s9MomentsUI11CloudDeviceVSgMd);
        v6 = v78;
        if (v12(v59 + v80, 1, v63) == 1)
        {
          outlined destroy of UTType?(v0[33], &_s9MomentsUI11CloudDeviceVSgMd);
          v26 = 1;
          goto LABEL_16;
        }
      }

      else
      {
        v64 = v0[29];
        outlined init with copy of DateInterval?(v0[33], v0[35], &_s9MomentsUI11CloudDeviceVSgMd);
        v65 = v12(v59 + v80, 1, v64);
        v67 = v0[36];
        v66 = v0[37];
        v68 = v0[35];
        if (v65 != 1)
        {
          v69 = v0[33];
          v70 = v81[31];
          outlined init with take of CloudDevice(v59 + v80, v70, type metadata accessor for CloudDevice);
          v26 = specialized static CloudDevice.== infix(_:_:)(v68, v70);
          outlined destroy of CloudDevice(v70, type metadata accessor for CloudDevice);
          outlined destroy of UTType?(v67, &_s9MomentsUI11CloudDeviceVSgMd);
          outlined destroy of UTType?(v66, &_s9MomentsUI11CloudDeviceVSgMd);
          outlined destroy of CloudDevice(v68, type metadata accessor for CloudDevice);
          v71 = v69;
          v0 = v81;
          outlined destroy of UTType?(v71, &_s9MomentsUI11CloudDeviceVSgMd);
          v6 = v78;
          goto LABEL_16;
        }

        outlined destroy of UTType?(v0[36], &_s9MomentsUI11CloudDeviceVSgMd);
        outlined destroy of UTType?(v66, &_s9MomentsUI11CloudDeviceVSgMd);
        outlined destroy of CloudDevice(v68, type metadata accessor for CloudDevice);
        v6 = v78;
      }

      outlined destroy of UTType?(v0[33], &_s9MomentsUI11CloudDeviceVSg_ADtMd);
      v26 = 0;
      goto LABEL_16;
    }
  }

  v26 = 0;
LABEL_16:
  v27 = v0[34];
  v28 = v6;
  v29 = *(**(v6 + v7) + 104);

  v29(v30);

  CloudDevicesDB.currentDevice.getter(v27);
  v31 = DBSnapshotWeeklyAnalytics.Event.sendAssetStatistics(_:_:)(v27, v26 & 1);
  DBSnapshotWeeklyAnalytics.Event.sendOtherStatistics(_:_:)(v27, v26 & 1);
  v33 = v32;
  outlined destroy of UTType?(v27, &_s9MomentsUI11CloudDeviceVSgMd);
  if ((v31 & 1) == 0 || (v33 & 1) == 0)
  {
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v82 = v56;
      *v55 = 136446210;
      *(v55 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x8000000216583C00, &v82);
      _os_log_impl(&dword_21607C000, v53, v54, "CloudDevicesDB %{public}s Weekly analytics was not sent.", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v56);
      MEMORY[0x21CE94770](v56, -1, -1);
      MEMORY[0x21CE94770](v55, -1, -1);
    }

    v0 = v81;
    goto LABEL_10;
  }

  v34 = v81[27];
  v35 = v81[28];
  v36 = v81[25];
  static Date.now.getter();
  v37 = type metadata accessor for Date();
  v38 = *(v37 - 8);
  v74 = v38[7];
  v74(v35, 0, 1, v37);
  v39 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_lastSnapshotAnalyticsCreationDate;
  swift_beginAccess();
  outlined assign with take of Date?(v35, v36 + v39);
  swift_endAccess();
  v40 = *(v28 + v7);
  v77 = v39;
  v79 = v36;
  outlined init with copy of DateInterval?(v36 + v39, v34, &_s10Foundation4DateVSgMd);
  v75 = v38[6];
  result = v75(v34, 1, v37);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_34;
  }

  v42 = v81[27];
  v41 = v81[28];
  v43 = v81[25];
  v72 = v38[2];
  v73 = v81[26];
  v72(v41, v42, v37);
  v74(v41, 0, 1, v37);
  v44 = OBJC_IVAR____TtC9MomentsUI25DBSnapshotWeeklyAnalytics_lastSubmissionDate;
  swift_beginAccess();

  outlined assign with take of Date?(v41, v40 + v44);
  swift_endAccess();

  v45 = v38[1];
  v45(v42, v37);
  v46 = (v43 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_snapshotEventAggregation);
  swift_beginAccess();
  *(v81 + 1) = *v46;
  v47 = v46[1];
  v48 = v46[2];
  v49 = v46[4];
  *(v81 + 4) = v46[3];
  *(v81 + 5) = v49;
  *(v81 + 2) = v47;
  *(v81 + 3) = v48;
  v46[2] = 0u;
  v46[3] = 0u;
  v46[4] = 0u;
  *v46 = 0u;
  v46[1] = 0u;
  outlined destroy of UTType?((v81 + 2), &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMd);
  outlined init with copy of DateInterval?(v79 + v77, v73, &_s10Foundation4DateVSgMd);
  result = v75(v73, 1, v37);
  if (result == 1)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v50 = v81[26];
  v81[15] = v37;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v81 + 12);
  v72(boxed_opaque_existential_1, v50, v37);
  specialized static DefaultsManager.MomentsUIDomain.setObject(_:forKey:)((v81 + 12), 0xD00000000000002BLL, 0x80000002165764E0);
  outlined destroy of UTType?((v81 + 12), &_sypSgMd);
  v45(v50, v37);
  v52 = swift_task_alloc();
  v81[42] = v52;
  *v52 = v81;
  v52[1] = closure #1 in CloudDevicesDB.didFetchChanges();

  return CloudDevicesDB.checkDB(forceUpdate:)(0);
}

{
  v1 = *(*v0 + 200);

  return MEMORY[0x2822009F8](closure #1 in CloudDevicesDB.didFetchChanges(), v1, 0);
}

{
  v8 = v0;
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7 = v4;
    *v3 = 136446210;
    *(v3 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x8000000216583C00, &v7);
    _os_log_impl(&dword_21607C000, v1, v2, "CloudDevicesDB %{public}s Weekly analytics submission completed. updated LastDBSnapshotWeeklyAnalyticsSubmissionDate and snapshotEventAggregation.", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v4);
    MEMORY[0x21CE94770](v4, -1, -1);
    MEMORY[0x21CE94770](v3, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t CloudDevicesDB.currentDevice.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state + 8);
  if (*(v3 + 16))
  {
    v4 = static CloudManager.currentID;
    v5 = qword_2811A6918;

    v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v5);
    v8 = v7;

    if (v8)
    {
      v9 = *(v3 + 56);
      v10 = type metadata accessor for CloudDevice();
      v11 = *(v10 - 8);
      outlined init with copy of CloudDevice(v9 + *(v11 + 72) * v6, a1, type metadata accessor for CloudDevice);

      return (*(v11 + 56))(a1, 0, 1, v10);
    }
  }

  v13 = type metadata accessor for CloudDevice();
  return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
}

double CloudDevicesDB.SnapshotEventAggregation.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t CloudDevicesDB.deinit()
{
  v1 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_deviceDBURL;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  v3 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB___isRefreshing;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  outlined destroy of UTType?(v0 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__lastFullRefresh, &_s10Foundation4DateVSgMd);

  outlined consume of CloudDevicesDB.SnapshotEventAggregation?(*(v0 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_snapshotEventAggregation));
  outlined destroy of UTType?(v0 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_lastSnapshotAnalyticsCreationDate, &_s10Foundation4DateVSgMd);
  outlined destroy of UTType?(v0 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_lastSnapshotDownloadCompleteDate, &_s10Foundation4DateVSgMd);
  outlined destroy of UTType?(v0 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_lastSnapshotCreationDate, &_s10Foundation4DateVSgMd);
  outlined destroy of UTType?(v0 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_lastUILaunchDate, &_s10Foundation4DateVSgMd);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t CloudDevicesDB.__deallocating_deinit()
{
  CloudDevicesDB.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t protocol witness for static CloudSubDB.cloudRecordTypes.getter in conformance CloudDevicesDB()
{
  if (one-time initialization token for cloudRecordTypes != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t protocol witness for CloudSubDB.cloudManager.setter in conformance CloudDevicesDB(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_cloudManager);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return swift_unknownObjectRelease();
}

uint64_t *protocol witness for CloudSubDB.init(emptyDB:config:) in conformance CloudDevicesDB@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for CloudDevicesDB();
  v6 = swift_allocObject();
  result = CloudDevicesDB.init(emptyDB:config:)(a1, a2);
  *a3 = v6;
  return result;
}

uint64_t protocol witness for CloudSubDB.initialized() in conformance CloudDevicesDB()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = static Exif.filterVideo(inputURL:outputURL:);

  return CloudDevicesDB.initialized()();
}

uint64_t protocol witness for CloudSubDB.refresh(force:) in conformance CloudDevicesDB(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = static Exif.filterVideo(inputURL:outputURL:);

  return CloudDevicesDB.refresh(force:)(a1);
}

uint64_t protocol witness for CloudSubDB.persistLocalData() in conformance CloudDevicesDB()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return MEMORY[0x2822009F8](protocol witness for CloudSubDB.persistLocalData() in conformance CloudDevicesDB, v2, 0);
}

{
  CloudDevicesDB.persistLocalData()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t protocol witness for CloudSubDB.deleteLocalData() in conformance CloudDevicesDB()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return MEMORY[0x2822009F8](protocol witness for CloudSubDB.deleteLocalData() in conformance CloudDevicesDB, v2, 0);
}

{
  CloudDevicesDB.deleteLocalData()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t protocol witness for CloudSubDB.willFetchChanges() in conformance CloudDevicesDB()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = static Exif.filterVideo(inputURL:outputURL:);

  return CloudDevicesDB.willFetchChanges()();
}

uint64_t protocol witness for CloudSubDB.willCheckpointChanges() in conformance CloudDevicesDB()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = static Exif.filterVideo(inputURL:outputURL:);

  return CloudDevicesDB.willCheckpointChanges()();
}

uint64_t protocol witness for CloudSubDB.didFetchChanges() in conformance CloudDevicesDB()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = static Exif.filterImage(imageSource:outputURL:);

  return CloudDevicesDB.didFetchChanges()();
}

uint64_t protocol witness for CloudSubDB.hasCKRecord(_:) in conformance CloudDevicesDB(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](protocol witness for CloudSubDB.hasCKRecord(_:) in conformance CloudDevicesDB, v3, 0);
}

uint64_t protocol witness for CloudSubDB.hasCKRecord(_:) in conformance CloudDevicesDB()
{
  v1 = CloudDevicesDB.hasCKRecord(_:)(v0[2]);
  isa = v0[1].super.isa;
  v3 = v1;

  return isa(v3);
}

Swift::Bool __swiftcall CloudDevicesDB.hasCKRecord(_:)(CKRecordID a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI15CloudMetaDeviceVSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v49 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v49 - v7;
  v9 = [(objc_class *)a1.super.isa zoneID];
  v10 = [v9 zoneName];

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  if (v11 == 0x73656369766544 && v13 == 0xE700000000000000)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v16 = [(objc_class *)a1.super.isa recordName];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20 = *(v1 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state + 8);
  if (*(v20 + 16))
  {
    v21 = v1;

    v22 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v19);
    v24 = v23;

    if (v24)
    {
      v25 = *(v20 + 56);
      v26 = type metadata accessor for CloudDevice();
      v27 = *(v26 - 8);
      outlined init with copy of CloudDevice(v25 + *(v27 + 72) * v22, v8, type metadata accessor for CloudDevice);

      v28 = 1;
      (*(v27 + 56))(v8, 0, 1, v26);
      outlined destroy of UTType?(v8, &_s9MomentsUI11CloudDeviceVSgMd);
      return v28;
    }

    v1 = v21;
  }

  else
  {
  }

  v29 = type metadata accessor for CloudDevice();
  (*(*(v29 - 8) + 56))(v8, 1, 1, v29);
  outlined destroy of UTType?(v8, &_s9MomentsUI11CloudDeviceVSgMd);
LABEL_14:
  v30 = [(objc_class *)a1.super.isa zoneID];
  v31 = [v30 zoneName];

  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  if (v32 == 0x617461646174656DLL && v34 == 0xED0000656E6F7A5FLL)
  {
  }

  else
  {
    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v28 = 0;
    if ((v35 & 1) == 0)
    {
      return v28;
    }
  }

  v36 = [(objc_class *)a1.super.isa recordName];
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  v40 = *(v1 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state + 16);
  if (*(v40 + 16) && (, v41 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v39), v43 = v42, , (v43 & 1) != 0))
  {
    v44 = *(v40 + 56);
    v45 = type metadata accessor for CloudMetaDevice();
    v46 = *(v45 - 8);
    outlined init with copy of CloudDevice(v44 + *(v46 + 72) * v41, v5, type metadata accessor for CloudMetaDevice);

    v28 = 1;
    (*(v46 + 56))(v5, 0, 1, v45);
    outlined destroy of UTType?(v5, &_s9MomentsUI15CloudMetaDeviceVSgMd);
  }

  else
  {

    v47 = type metadata accessor for CloudMetaDevice();
    (*(*(v47 - 8) + 56))(v5, 1, 1, v47);
    outlined destroy of UTType?(v5, &_s9MomentsUI15CloudMetaDeviceVSgMd);
    return 0;
  }

  return v28;
}

uint64_t protocol witness for CloudSubDB.dumpCKRecordIDsByZone() in conformance CloudDevicesDB()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return MEMORY[0x2822009F8](protocol witness for CloudSubDB.dumpCKRecordIDsByZone() in conformance CloudDevicesDB, v2, 0);
}

{
  v1 = CloudDevicesDB.dumpCKRecordIDsByZone()();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t CloudDevicesDB.dumpCKRecordIDsByZone()()
{
  v0 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySo10CKRecordIDCGTt0g5Tf4g_n(MEMORY[0x277D84F90]);

  v2 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVySS9MomentsUI11CloudDeviceV_G_So10CKRecordIDCs5NeverOTg503_s9e4UI14g16DevicesDBC21dumpi35IDsByZoneSDySSSaySo0G2IDCGGyFAfA0C6H6VXEfU_Tf1cn_n(v1);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v2, 0x73656369766544, 0xE700000000000000, isUniquelyReferenced_nonNull_native);

  v5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVySS9MomentsUI15CloudMetaDeviceV_G_So10CKRecordIDCs5NeverOTg503_s9e4UI14g16DevicesDBC21dumpj36IDsByZoneSDySSSaySo0G2IDCGGyFAfA0C10hI7VXEfU0_Tf1cn_n(v4);

  v6 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v5, 0x617461646174656DLL, 0xED0000656E6F7A5FLL, v6);
  return v0;
}

uint64_t protocol witness for CloudSubDB.lookupCKRecord(_:) in conformance CloudDevicesDB(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](protocol witness for CloudSubDB.lookupCKRecord(_:) in conformance CloudDevicesDB, v3, 0);
}

uint64_t protocol witness for CloudSubDB.lookupCKRecord(_:) in conformance CloudDevicesDB()
{
  v1 = CloudDevicesDB.lookupCKRecord(_:)(v0[2]);
  isa = v0[1].super.isa;

  return isa(v1);
}

CKRecord_optional __swiftcall CloudDevicesDB.lookupCKRecord(_:)(CKRecordID a1)
{
  v2 = type metadata accessor for CloudMetaDevice();
  v58 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v59 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v60 = &v57 - v5;
  v6 = type metadata accessor for CloudDevice();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v57 - v11;
  v62 = MEMORY[0x277D84F90];
  v13 = [(objc_class *)a1.super.isa zoneID];
  v14 = [v13 zoneName];

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (v15 == 0x73656369766544 && v17 == 0xE700000000000000)
  {

LABEL_8:
    v20 = [(objc_class *)a1.super.isa recordName];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = *(v61 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state + 8);
    if (*(v24 + 16))
    {

      v25 = specialized __RawDictionaryStorage.find<A>(_:)(v21, v23);
      v27 = v26;

      if (v27)
      {
        outlined init with copy of CloudDevice(*(v24 + 56) + *(v7 + 72) * v25, v10, type metadata accessor for CloudDevice);

        outlined init with take of CloudDevice(v10, v12, type metadata accessor for CloudDevice);
        isa = specialized static CloudSyncDB.getCKRecord(_:)(*(v12 + *(v6 + 112)), *(v12 + *(v6 + 112) + 8));
        if (!isa)
        {
          type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecord);
          v29 = a1.super.isa;
          v30._countAndFlagsBits = 0x656369766544;
          v30._object = 0xE600000000000000;
          isa = CKRecord.init(recordType:recordID:)(v30, v29).super.isa;
        }

        v31 = isa;
        CloudDevice.populateRecord(_:)(isa);
        v32 = v31;
        MEMORY[0x21CE92260]();
        if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_41;
        }

        goto LABEL_13;
      }
    }

    goto LABEL_15;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v19)
  {
    goto LABEL_8;
  }

LABEL_15:
  v32 = MEMORY[0x277D84F90];
  while (1)
  {
    v12 = 0x617461646174656DLL;
    v33 = [(objc_class *)a1.super.isa zoneID];
    v34 = [v33 zoneName];

    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    if (v35 == 0x617461646174656DLL && v37 == 0xED0000656E6F7A5FLL)
    {
    }

    else
    {
      v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v38 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    v39 = [(objc_class *)a1.super.isa recordName];
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    v43 = *(v61 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state + 16);
    if (!*(v43 + 16))
    {

LABEL_29:
      if (v32 >> 62)
      {
        goto LABEL_36;
      }

      goto LABEL_30;
    }

    v44 = specialized __RawDictionaryStorage.find<A>(_:)(v40, v42);
    v46 = v45;

    if (v46)
    {
      break;
    }

    if (v32 >> 62)
    {
      goto LABEL_36;
    }

LABEL_30:
    if (!*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_37;
    }

LABEL_31:
    if ((v32 & 0xC000000000000001) != 0)
    {
      v53 = MEMORY[0x21CE93180](0, v32);
      goto LABEL_34;
    }

    if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v53 = *(v32 + 32);
LABEL_34:
      v54 = v53;

      goto LABEL_38;
    }

    __break(1u);
LABEL_41:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_13:
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v32 = v62;
    outlined destroy of CloudDevice(v12, type metadata accessor for CloudDevice);
  }

  v47 = v59;
  outlined init with copy of CloudDevice(*(v43 + 56) + *(v58 + 72) * v44, v59, type metadata accessor for CloudMetaDevice);

  v48 = v47;
  v49 = v60;
  outlined init with take of CloudDevice(v48, v60, type metadata accessor for CloudMetaDevice);
  v50 = CloudMetaDevice.lastKnownCKRecord.getter();
  if (!v50)
  {
    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecord);
    v51 = a1.super.isa;
    v52._countAndFlagsBits = 0x656369766544;
    v52._object = 0xE600000000000000;
    v50 = CKRecord.init(recordType:recordID:)(v52, v51).super.isa;
  }

  a1.super.isa = v50;
  MEMORY[0x21CE92260]();
  if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  outlined destroy of CloudDevice(v49, type metadata accessor for CloudMetaDevice);
  v32 = v62;
  if (!(v62 >> 62))
  {
    goto LABEL_30;
  }

LABEL_36:
  if (__CocoaSet.count.getter())
  {
    goto LABEL_31;
  }

LABEL_37:

  v54 = 0;
LABEL_38:
  v56 = v54;
  result.value.super.isa = v56;
  result.is_nil = v55;
  return result;
}

uint64_t protocol witness for CloudSubDB.modifyOrCreateCKRecord(_:force:) in conformance CloudDevicesDB(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  *(v2 + 24) = *v1;
  return MEMORY[0x2822009F8](protocol witness for CloudSubDB.modifyOrCreateCKRecord(_:force:) in conformance CloudDevicesDB, v3, 0);
}

uint64_t protocol witness for CloudSubDB.modifyOrCreateCKRecord(_:force:) in conformance CloudDevicesDB()
{
  specialized CloudDevicesDB.modifyOrCreateCKRecord(_:force:)(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t protocol witness for CloudSubDB.zoneNotFound(_:_:purged:) in conformance CloudDevicesDB(uint64_t a1, uint64_t a2, char a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for CloudSubDB.zoneNotFound(_:_:purged:) in conformance CloudSuggestionsDB;

  return CloudDevicesDB.zoneNotFound(_:_:purged:)(a1, a2, a3);
}

uint64_t CloudDevicesDB.zoneNotFound(_:_:purged:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 96) = a2;
  *(v4 + 104) = v3;
  *(v4 + 176) = a3;
  *(v4 + 88) = a1;
  *(v4 + 112) = *v3;
  v5 = type metadata accessor for Logger();
  *(v4 + 120) = v5;
  *(v4 + 128) = *(v5 - 8);
  *(v4 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](CloudDevicesDB.zoneNotFound(_:_:purged:), v3, 0);
}

uint64_t CloudDevicesDB.zoneNotFound(_:_:purged:)()
{
  v52 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 176);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys23CustomStringConvertible_pSgGMd);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_21658E190;
  v6 = [v4 zoneID];
  *(v5 + 56) = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordZoneID);
  *(v5 + 64) = lazy protocol witness table accessor for type CKRecordZoneID and conformance NSObject();
  *(v5 + 32) = v6;
  v7 = [v3 recordID];
  v8 = [v7 recordName];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = MEMORY[0x277D83838];
  *(v5 + 96) = MEMORY[0x277D837D0];
  *(v5 + 104) = v12;
  v13 = MEMORY[0x277D839B0];
  *(v5 + 72) = v9;
  *(v5 + 80) = v11;
  v14 = MEMORY[0x277D839D8];
  *(v5 + 136) = v13;
  *(v5 + 144) = v14;
  *(v5 + 112) = v2;
  static CloudLog.LogBeginInfo(_:_:)(v5, "zoneNotFound(_:_:purged:)", 25, 2, v1, &protocol witness table for CloudDevicesDB);

  v15 = specialized static DefaultsManager.MomentsUIDomain.BOOLeanValueFor(_:)();
  if (v15 == 2)
  {
    if (!*(v0 + 176))
    {
      goto LABEL_3;
    }
  }

  else if ((v15 & *(v0 + 176) & 1) == 0)
  {
LABEL_3:
    v16 = (*(v0 + 104) + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_cloudManager);
    swift_beginAccess();
    v17 = *v16;
    *(v0 + 152) = *v16;
    if (v17)
    {
      v18 = *(v0 + 88);
      v19 = v16[1];
      ObjectType = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8CloudKit12CKSyncEngineC21PendingDatabaseChangeOGMd);
      v21 = type metadata accessor for CKSyncEngine.PendingDatabaseChange();
      v22 = *(v21 - 8);
      v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_21658CA50;
      *(v24 + v23) = v18;
      *(v0 + 160) = v24;
      (*(v22 + 104))(v24 + v23, *MEMORY[0x277CBBC50], v21);
      v25 = v18;
      swift_unknownObjectRetain();
      v26 = swift_task_alloc();
      *(v0 + 168) = v26;
      *v26 = v0;
      v26[1] = CloudDevicesDB.zoneNotFound(_:_:purged:);

      return CloudManagerProtocol.add(pendingDatabaseChanges:_:_:)(v24, 0xD000000000000019, 0x8000000216579050, 1306, ObjectType, v19);
    }

    else
    {
      static CloudLog.LogEndInfo(_:)("zoneNotFound(_:_:purged:)", 25, 2, *(v0 + 112), &protocol witness table for CloudDevicesDB);

      v48 = *(v0 + 8);
      v49 = *(v0 + 152) != 0;

      return v48(v49);
    }
  }

  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v28 = *(v0 + 128);
  v29 = *(v0 + 136);
  v30 = *(v0 + 120);
  v31 = *(v0 + 88);
  v32 = __swift_project_value_buffer(v30, static CloudDevicesDB.Log);
  swift_beginAccess();
  (*(v28 + 16))(v29, v32, v30);
  v33 = v31;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();

  v36 = os_log_type_enabled(v34, v35);
  v38 = *(v0 + 128);
  v37 = *(v0 + 136);
  v39 = *(v0 + 120);
  if (v36)
  {
    v50 = *(v0 + 88);
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v40 = 136446722;
    v51 = v42;
    swift_beginAccess();
    v43 = StaticString.description.getter();
    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &v51);

    *(v40 + 4) = v45;
    *(v40 + 12) = 2082;
    *(v40 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x8000000216579050, &v51);
    *(v40 + 22) = 2112;
    v46 = [v50 zoneID];
    *(v40 + 24) = v46;
    *v41 = v46;
    _os_log_impl(&dword_21607C000, v34, v35, "%{public}s.%{public}s Zone %@ was PURGED!", v40, 0x20u);
    outlined destroy of UTType?(v41, &_sSo8NSObjectCSgMd);
    MEMORY[0x21CE94770](v41, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v42, -1, -1);
    MEMORY[0x21CE94770](v40, -1, -1);

    (*(v38 + 8))(v37, v39);
  }

  else
  {

    (*(v38 + 8))(v37, v39);
  }

  v47 = swift_task_alloc();
  *(v0 + 144) = v47;
  *v47 = v0;
  v47[1] = CloudDevicesDB.zoneNotFound(_:_:purged:);

  return CloudDevicesDB.abdicatePrimary()();
}

{
  v1 = *(*v0 + 104);

  return MEMORY[0x2822009F8](CloudDevicesDB.zoneNotFound(_:_:purged:), v1, 0);
}

{
  v1 = (v0[13] + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_cloudManager);
  swift_beginAccess();
  v2 = *v1;
  v0[19] = *v1;
  if (v2)
  {
    v3 = v0[11];
    v4 = v1[1];
    ObjectType = swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8CloudKit12CKSyncEngineC21PendingDatabaseChangeOGMd);
    v6 = type metadata accessor for CKSyncEngine.PendingDatabaseChange();
    v7 = *(v6 - 8);
    v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_21658CA50;
    *(v9 + v8) = v3;
    v0[20] = v9;
    (*(v7 + 104))(v9 + v8, *MEMORY[0x277CBBC50], v6);
    v10 = v3;
    swift_unknownObjectRetain();
    v11 = swift_task_alloc();
    v0[21] = v11;
    *v11 = v0;
    v11[1] = CloudDevicesDB.zoneNotFound(_:_:purged:);

    return CloudManagerProtocol.add(pendingDatabaseChanges:_:_:)(v9, 0xD000000000000019, 0x8000000216579050, 1306, ObjectType, v4);
  }

  else
  {
    static CloudLog.LogEndInfo(_:)("zoneNotFound(_:_:purged:)", 25, 2, v0[14], &protocol witness table for CloudDevicesDB);

    v13 = v0[1];
    v14 = v0[19] != 0;

    return v13(v14);
  }
}

{
  v1 = *(*v0 + 104);

  return MEMORY[0x2822009F8](CloudDevicesDB.zoneNotFound(_:_:purged:), v1, 0);
}

{
  swift_unknownObjectRelease();
  static CloudLog.LogEndInfo(_:)("zoneNotFound(_:_:purged:)", 25, 2, v0[14], &protocol witness table for CloudDevicesDB);

  v1 = v0[1];
  v2 = v0[19] != 0;

  return v1(v2);
}

uint64_t protocol witness for CloudSubDB.clearCKRecord(_:) in conformance CloudDevicesDB(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  *(v2 + 24) = *v1;
  return MEMORY[0x2822009F8](protocol witness for CloudSubDB.clearCKRecord(_:) in conformance CloudDevicesDB, v3, 0);
}

uint64_t protocol witness for CloudSubDB.clearCKRecord(_:) in conformance CloudDevicesDB()
{
  CloudDevicesDB.clearCKRecord(_:)(v0[2]);
  isa = v0[1].super.isa;

  return isa();
}

Swift::Void __swiftcall CloudDevicesDB.clearCKRecord(_:)(CKRecordID a1)
{
  v2 = type metadata accessor for CloudMetaDevice();
  v101 = *(v2 - 8);
  v102 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v103 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v104 = &v92 - v5;
  v100 = type metadata accessor for Logger();
  v106 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v105 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSg_AA4DateVSgtMd);
  v98 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v96 = (&v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v95 = &v92 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSg_AA4DateVSgtSgMd);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v92 - v15;
  v17 = type metadata accessor for CloudDevice();
  v97 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v99 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v92 - v21;
  MEMORY[0x28223BE20](v20);
  v107 = &v92 - v23;
  isa = a1.super.isa;
  v24 = [(objc_class *)a1.super.isa zoneID];
  v25 = [v24 zoneName];

  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  v29 = &selRef_setDeliversTouchesForGesturesToSuperview_;
  if (v26 == 0x73656369766544 && v28 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v30 = [(objc_class *)isa recordName];
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    v34 = *(v108 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state + 8);
    if (*(v34 + 16))
    {
      v93 = v108 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state;
      v94 = v26;

      v35 = specialized __RawDictionaryStorage.find<A>(_:)(v31, v33);
      v37 = v36;

      if (v37)
      {
        outlined init with copy of CloudDevice(*(v34 + 56) + *(v97 + 72) * v35, v22, type metadata accessor for CloudDevice);

        v38 = v22;
        v39 = v107;
        outlined init with take of CloudDevice(v38, v107, type metadata accessor for CloudDevice);
        v40 = *(v17 + 116);
        v41 = *(v7 + 48);
        *v16 = xmmword_21658E040;
        v42 = type metadata accessor for Date();
        (*(*(v42 - 8) + 56))(&v16[v41], 1, 1, v42);
        v43 = v98;
        (*(v98 + 56))(v16, 0, 1, v7);
        outlined init with take of URL?(v16, v14, &_s10Foundation4DataVSg_AA4DateVSgtSgMd);
        if ((*(v43 + 48))(v14, 1, v7) == 1)
        {
          outlined destroy of UTType?(v14, &_s10Foundation4DataVSg_AA4DateVSgtSgMd);
        }

        else
        {
          v44 = v39 + *(v17 + 112);
          v45 = v95;
          outlined init with take of URL?(v14, v95, &_s10Foundation4DataVSg_AA4DateVSgtMd);
          v46 = v96;
          outlined init with take of URL?(v45, v96, &_s10Foundation4DataVSg_AA4DateVSgtMd);
          v47 = *v46;
          v48 = v46[1];
          v49 = *(v7 + 48);
          outlined consume of Data?(*v44, *(v44 + 8));
          *v44 = v47;
          *(v44 + 8) = v48;
          outlined assign with take of Date?(v46 + v49, v39 + v40);
        }

        v50 = v100;
        v52 = v105;
        v51 = v106;
        v53 = CloudDevice.description()();
        if (one-time initialization token for Log != -1)
        {
          swift_once();
        }

        v54 = __swift_project_value_buffer(v50, static CloudDevicesDB.Log);
        swift_beginAccess();
        (*(v51 + 16))(v52, v54, v50);

        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v110[0] = v58;
          *v57 = 136446722;
          swift_beginAccess();
          v59 = StaticString.description.getter();
          v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, v110);

          *(v57 + 4) = v61;
          *(v57 + 12) = 2082;
          *(v57 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x8000000216583C20, v110);
          *(v57 + 22) = 2080;
          v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53._countAndFlagsBits, v53._object, v110);

          *(v57 + 24) = v62;
          _os_log_impl(&dword_21607C000, v55, v56, "%{public}s.%{public}s Updating DevicesDB with:\n%s", v57, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x21CE94770](v58, -1, -1);
          MEMORY[0x21CE94770](v57, -1, -1);

          (*(v106 + 8))(v105, v50);
        }

        else
        {

          (*(v51 + 8))(v52, v50);
        }

        v29 = &selRef_setDeliversTouchesForGesturesToSuperview_;
        v63 = [(objc_class *)isa recordName];
        v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v66 = v65;

        v67 = v107;
        v68 = v99;
        outlined init with copy of CloudDevice(v107, v99, type metadata accessor for CloudDevice);
        v69 = v93;
        v70 = *(v93 + 8);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v110[0] = v70;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v68, v64, v66, isUniquelyReferenced_nonNull_native);

        *(v69 + 8) = v110[0];

        outlined destroy of CloudDevice(v67, type metadata accessor for CloudDevice);
      }

      else
      {

        v29 = &selRef_setDeliversTouchesForGesturesToSuperview_;
      }

      v26 = v94;
    }

    else
    {

      v29 = &selRef_setDeliversTouchesForGesturesToSuperview_;
    }
  }

  if (v26 == 0x617461646174656DLL && v28 == 0xED0000656E6F7A5FLL)
  {
  }

  else
  {
    v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v72 & 1) == 0)
    {
      return;
    }
  }

  v73 = v29;
  v74 = [isa v29[86]];
  v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v77 = v76;

  v78 = v108 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state;
  v79 = *(v108 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state + 16);
  if (*(v79 + 16))
  {

    v80 = specialized __RawDictionaryStorage.find<A>(_:)(v75, v77);
    v82 = v81;

    if (v82)
    {
      v83 = v104;
      outlined init with copy of CloudDevice(*(v79 + 56) + *(v101 + 72) * v80, v104, type metadata accessor for CloudMetaDevice);

      v84 = v83 + *(v102 + 48);
      outlined consume of Data?(*v84, *(v84 + 8));
      *v84 = xmmword_21658E040;
      v85 = [isa v73 + 4075];
      v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v88 = v87;

      v89 = v103;
      outlined init with copy of CloudDevice(v83, v103, type metadata accessor for CloudMetaDevice);
      v90 = *(v78 + 16);

      v91 = swift_isUniquelyReferenced_nonNull_native();
      v110[0] = v90;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v89, v86, v88, v91);

      outlined destroy of CloudDevice(v83, type metadata accessor for CloudMetaDevice);
      *(v78 + 16) = v110[0];
    }
  }
}

uint64_t protocol witness for CloudSubDB.deleteCKRecord(_:_:) in conformance CloudDevicesDB(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  v5 = *v3;
  v4[5] = *v3;
  return MEMORY[0x2822009F8](protocol witness for CloudSubDB.deleteCKRecord(_:_:) in conformance CloudDevicesDB, v5, 0);
}

uint64_t protocol witness for CloudSubDB.deleteCKRecord(_:_:) in conformance CloudDevicesDB()
{
  CloudDevicesDB.deleteCKRecord(_:_:)(*(v0 + 16), *(v0 + 32));
  v1 = *(v0 + 8);

  return v1();
}

Swift::Void __swiftcall CloudDevicesDB.deleteCKRecord(_:_:)(Swift::String a1, CKRecordID a2)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI15CloudMetaDeviceVSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSgMd);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v22 - v10;
  if (countAndFlagsBits == 0x656369766544 && object == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v12 = [(objc_class *)a2.super.isa recordName];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = v2 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state;
    v23 = *(v2 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state + 8);

    specialized Dictionary._Variant.removeValue(forKey:)(v13, v15, v11);

    outlined destroy of UTType?(v11, &_s9MomentsUI11CloudDeviceVSgMd);
    *(v16 + 8) = v23;
LABEL_5:

    return;
  }

  if (countAndFlagsBits == 0xD000000000000014 && 0x8000000216583C40 == object || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v17 = [(objc_class *)a2.super.isa recordName];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = v2 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state;
    v23 = *(v2 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state + 16);

    specialized Dictionary._Variant.removeValue(forKey:)(v18, v20, v8);

    outlined destroy of UTType?(v8, &_s9MomentsUI15CloudMetaDeviceVSgMd);
    *(v21 + 16) = v23;
    goto LABEL_5;
  }
}

uint64_t protocol witness for CloudSubDB.deleteCKRecordZone(_:purged:) in conformance CloudDevicesDB(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = static Exif.filterVideo(inputURL:outputURL:);

  return CloudDevicesDB.deleteCKRecordZone(_:purged:)(a1, a2);
}

uint64_t CloudDevicesDB.deleteCKRecordZone(_:purged:)(uint64_t a1, char a2)
{
  *(v3 + 176) = a2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v2;
  *(v3 + 104) = *v2;
  v4 = type metadata accessor for Logger();
  *(v3 + 112) = v4;
  *(v3 + 120) = *(v4 - 8);
  *(v3 + 128) = swift_task_alloc();

  return MEMORY[0x2822009F8](CloudDevicesDB.deleteCKRecordZone(_:purged:), v2, 0);
}

uint64_t CloudDevicesDB.deleteCKRecordZone(_:purged:)()
{
  v59 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 176);
  v3 = *(v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys23CustomStringConvertible_pSgGMd);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21658CA60;
  *(v4 + 56) = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordZoneID);
  *(v4 + 64) = lazy protocol witness table accessor for type CKRecordZoneID and conformance NSObject();
  v5 = MEMORY[0x277D839B0];
  *(v4 + 32) = v3;
  v6 = MEMORY[0x277D839D8];
  *(v4 + 96) = v5;
  *(v4 + 104) = v6;
  *(v4 + 72) = v2;
  v7 = v3;
  static CloudLog.LogBegin(_:_:)(v4, "deleteCKRecordZone(_:purged:)", 29, 2, v1, &protocol witness table for CloudDevicesDB);

  v8 = specialized static DefaultsManager.MomentsUIDomain.BOOLeanValueFor(_:)();
  if (v8 == 2)
  {
    if (!*(v0 + 176))
    {
LABEL_3:
      v9 = [*(v0 + 88) zoneName];
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      if (v10 == 0x73656369766544 && v12 == 0xE700000000000000)
      {
      }

      else
      {
        v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v32 & 1) == 0)
        {
LABEL_16:
          v39 = [*(v0 + 88) zoneName];
          v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v42 = v41;

          if (v40 == 0x617461646174656DLL && v42 == 0xED0000656E6F7A5FLL)
          {
          }

          else
          {
            v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v43 & 1) == 0)
            {
              goto LABEL_21;
            }
          }

          v44 = *(v0 + 96);
          *(v44 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9MomentsUI15CloudMetaDeviceVTt0g5Tf4g_n(MEMORY[0x277D84F90]);

LABEL_21:
          v45 = *(v0 + 96);
          v46 = [objc_allocWithZone(MEMORY[0x277CBC5E8]) initWithZoneID_];
          *(v0 + 144) = v46;
          v47 = (v45 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_cloudManager);
          swift_beginAccess();
          v48 = *v47;
          *(v0 + 152) = *v47;
          if (v48)
          {
            v49 = v47[1];
            ObjectType = swift_getObjectType();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8CloudKit12CKSyncEngineC21PendingDatabaseChangeOGMd);
            v51 = type metadata accessor for CKSyncEngine.PendingDatabaseChange();
            v52 = *(v51 - 8);
            v53 = (*(v52 + 80) + 32) & ~*(v52 + 80);
            v54 = swift_allocObject();
            *(v54 + 16) = xmmword_21658CA50;
            *(v54 + v53) = v46;
            *(v0 + 160) = v54;
            (*(v52 + 104))(v54 + v53, *MEMORY[0x277CBBC50], v51);
            swift_unknownObjectRetain();
            v55 = v46;
            v56 = swift_task_alloc();
            *(v0 + 168) = v56;
            *v56 = v0;
            v56[1] = CloudDevicesDB.deleteCKRecordZone(_:purged:);

            return CloudManagerProtocol.add(pendingDatabaseChanges:_:_:)(v54, 0xD00000000000001DLL, 0x8000000216579310, 1371, ObjectType, v49);
          }

          else
          {

            static CloudLog.LogEnd(_:)("deleteCKRecordZone(_:purged:)", 29, 2, *(v0 + 104), &protocol witness table for CloudDevicesDB);

            v57 = *(v0 + 8);

            return v57();
          }
        }
      }

      v33 = *(v0 + 96);
      swift_beginAccess();
      v35 = static CloudManager.currentID;
      v34 = qword_2811A6918;
      v36 = v33 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state;

      v38 = specialized Dictionary.compactMapValues<A>(_:)(v37, v35, v34);

      *(v36 + 8) = v38;

      goto LABEL_16;
    }
  }

  else if ((v8 & *(v0 + 176) & 1) == 0)
  {
    goto LABEL_3;
  }

  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v14 = *(v0 + 120);
  v13 = *(v0 + 128);
  v15 = *(v0 + 112);
  v16 = *(v0 + 88);
  v17 = __swift_project_value_buffer(v15, static CloudDevicesDB.Log);
  swift_beginAccess();
  (*(v14 + 16))(v13, v17, v15);
  v18 = v16;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  v21 = os_log_type_enabled(v19, v20);
  v23 = *(v0 + 120);
  v22 = *(v0 + 128);
  v24 = *(v0 + 112);
  if (v21)
  {
    v25 = *(v0 + 88);
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v58 = v28;
    *v26 = 136446466;
    *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000216579310, &v58);
    *(v26 + 12) = 2112;
    *(v26 + 14) = v25;
    *v27 = v25;
    v29 = v25;
    _os_log_impl(&dword_21607C000, v19, v20, "CloudDevicesDB.%{public}s Zone %@ was PURGED!", v26, 0x16u);
    outlined destroy of UTType?(v27, &_sSo8NSObjectCSgMd);
    MEMORY[0x21CE94770](v27, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x21CE94770](v28, -1, -1);
    MEMORY[0x21CE94770](v26, -1, -1);
  }

  (*(v23 + 8))(v22, v24);
  v30 = swift_task_alloc();
  *(v0 + 136) = v30;
  *v30 = v0;
  v30[1] = CloudDevicesDB.deleteCKRecordZone(_:purged:);

  return CloudDevicesDB.abdicatePrimary()();
}

{
  v1 = *(*v0 + 96);

  return MEMORY[0x2822009F8](CloudDevicesDB.deleteCKRecordZone(_:purged:), v1, 0);
}

{
  v1 = [*(v0 + 88) zoneName];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  if (v2 == 0x73656369766544 && v4 == 0xE700000000000000)
  {

    goto LABEL_8;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v6)
  {
LABEL_8:
    v7 = *(v0 + 96);
    swift_beginAccess();
    v8 = static CloudManager.currentID;
    v9 = qword_2811A6918;
    v10 = v7 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state;

    v12 = specialized Dictionary.compactMapValues<A>(_:)(v11, v8, v9);

    *(v10 + 8) = v12;
  }

  v13 = [*(v0 + 88) zoneName];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  if (v14 == 0x617461646174656DLL && v16 == 0xED0000656E6F7A5FLL)
  {

    goto LABEL_16;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v18)
  {
LABEL_16:
    v19 = *(v0 + 96);
    *(v19 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9MomentsUI15CloudMetaDeviceVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  v20 = *(v0 + 96);
  v21 = [objc_allocWithZone(MEMORY[0x277CBC5E8]) initWithZoneID_];
  *(v0 + 144) = v21;
  v22 = (v20 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_cloudManager);
  swift_beginAccess();
  v23 = *v22;
  *(v0 + 152) = *v22;
  if (v23)
  {
    v24 = v22[1];
    ObjectType = swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8CloudKit12CKSyncEngineC21PendingDatabaseChangeOGMd);
    v26 = type metadata accessor for CKSyncEngine.PendingDatabaseChange();
    v27 = *(v26 - 8);
    v28 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_21658CA50;
    *(v29 + v28) = v21;
    *(v0 + 160) = v29;
    (*(v27 + 104))(v29 + v28, *MEMORY[0x277CBBC50], v26);
    swift_unknownObjectRetain();
    v30 = v21;
    v31 = swift_task_alloc();
    *(v0 + 168) = v31;
    *v31 = v0;
    v31[1] = CloudDevicesDB.deleteCKRecordZone(_:purged:);

    return CloudManagerProtocol.add(pendingDatabaseChanges:_:_:)(v29, 0xD00000000000001DLL, 0x8000000216579310, 1371, ObjectType, v24);
  }

  else
  {

    static CloudLog.LogEnd(_:)("deleteCKRecordZone(_:purged:)", 29, 2, *(v0 + 104), &protocol witness table for CloudDevicesDB);

    v33 = *(v0 + 8);

    return v33();
  }
}

{
  v1 = *(*v0 + 96);

  return MEMORY[0x2822009F8](CloudDevicesDB.deleteCKRecordZone(_:purged:), v1, 0);
}

{

  swift_unknownObjectRelease();
  static CloudLog.LogEnd(_:)("deleteCKRecordZone(_:purged:)", 29, 2, *(v0 + 104), &protocol witness table for CloudDevicesDB);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t protocol witness for CloudSubDB.modifyCKRecordZone(_:) in conformance CloudDevicesDB(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = static Exif.filterVideo(inputURL:outputURL:);

  return CloudDevicesDB.modifyCKRecordZone(_:)(a1);
}

uint64_t CloudDevicesDB.modifyCKRecordZone(_:)(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v2[19] = *v1;
  v3 = type metadata accessor for Logger();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](CloudDevicesDB.modifyCKRecordZone(_:), v1, 0);
}

{
  v5 = *v2;
  v4 = *v2;

  v6 = *(v4 + 144);
  if (v1)
  {

    v7 = CloudDevicesDB.modifyCKRecordZone(_:);
  }

  else
  {

    *(v5 + 280) = a1;
    v7 = CloudDevicesDB.modifyCKRecordZone(_:);
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t CloudDevicesDB.modifyCKRecordZone(_:)()
{
  v50 = v0;
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys23CustomStringConvertible_pSgGMd);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21658CA50;
  *(v4 + 56) = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordZoneID);
  *(v4 + 64) = lazy protocol witness table accessor for type CKRecordZoneID and conformance NSObject();
  *(v4 + 32) = v3;
  v5 = v3;
  static CloudLog.LogBegin(_:_:)(v4, "modifyCKRecordZone(_:)", 22, 2, v1, &protocol witness table for CloudDevicesDB);

  v6 = (v2 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_cloudManager);
  swift_beginAccess();
  v7 = *v6;
  *(v0 + 192) = *v6;
  if (v7)
  {
    v47 = v6[1];
    *(v0 + 200) = v47;
    swift_beginAccess();
    v8 = static CloudManager.currentID;
    v9 = qword_2811A6918;
    *(v0 + 208) = qword_2811A6918;
    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordID);
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
    swift_bridgeObjectRetain_n();
    swift_unknownObjectRetain();
    v13._countAndFlagsBits = 0x73656369766544;
    v13._object = 0xE700000000000000;
    v14._countAndFlagsBits = v10;
    v14._object = v12;
    isa = CKRecordZoneID.init(zoneName:ownerName:)(v13, v14).super.isa;
    v16._countAndFlagsBits = v8;
    v16._object = v9;
    v17.super.isa = CKRecordID.init(recordName:zoneID:)(v16, isa).super.isa;
    *(v0 + 216) = v17;
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v18 = *(v0 + 184);
    v20 = *(v0 + 160);
    v19 = *(v0 + 168);
    v21 = __swift_project_value_buffer(v20, static CloudDevicesDB.Log);
    *(v0 + 224) = v21;
    swift_beginAccess();
    v22 = *(v19 + 16);
    *(v0 + 232) = v22;
    *(v0 + 240) = (v19 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v22(v18, v21, v20);
    v23 = v17.super.isa;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();

    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 184);
    v29 = *(v0 + 160);
    v28 = *(v0 + 168);
    if (v26)
    {
      v30 = swift_slowAlloc();
      v48 = v29;
      v31 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v49 = v45;
      *v30 = 136446722;
      swift_beginAccess();
      v32 = StaticString.description.getter();
      v44 = v27;
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v49);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2082;
      *(v30 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000216583C60, &v49);
      *(v30 + 22) = 2112;
      *(v30 + 24) = v23;
      *v31 = v23;
      v35 = v23;
      _os_log_impl(&dword_21607C000, v24, v25, "%{public}s.%{public}s Checking for device record: %@", v30, 0x20u);
      outlined destroy of UTType?(v31, &_sSo8NSObjectCSgMd);
      MEMORY[0x21CE94770](v31, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v45, -1, -1);
      MEMORY[0x21CE94770](v30, -1, -1);

      v36 = *(v28 + 8);
      v36(v44, v48);
    }

    else
    {

      v36 = *(v28 + 8);
      v36(v27, v29);
    }

    *(v0 + 248) = v36;
    ObjectType = swift_getObjectType();
    *(v0 + 256) = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v40 = swift_allocObject();
    *(v0 + 264) = v40;
    *(v40 + 16) = xmmword_21658E210;
    *(v40 + 32) = v23;
    v41 = *(v47 + 424);
    v42 = v23;
    v46 = (v41 + *v41);
    v43 = swift_task_alloc();
    *(v0 + 272) = v43;
    *v43 = v0;
    v43[1] = CloudDevicesDB.modifyCKRecordZone(_:);

    return v46(v40, &outlined read-only object #0 of CloudDevicesDB.modifyCKRecordZone(_:), 1, ObjectType, v47);
  }

  else
  {
    static CloudLog.LogEnd(_:)("modifyCKRecordZone(_:)", 22, 2, *(v0 + 152), &protocol witness table for CloudDevicesDB);

    v37 = *(v0 + 8);

    return v37();
  }
}

{
  v33 = v0;
  v1 = *(v0 + 280);

  v2 = *(v1 + 16);

  if (v2)
  {

    swift_unknownObjectRelease();
    static CloudLog.LogEnd(_:)("modifyCKRecordZone(_:)", 22, 2, *(v0 + 152), &protocol witness table for CloudDevicesDB);

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 216);
    (*(v0 + 232))(*(v0 + 176), *(v0 + 224), *(v0 + 160));
    v6 = v5;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 248);
    if (v9)
    {
      v11 = *(v0 + 216);
      v30 = *(v0 + 160);
      v31 = *(v0 + 176);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v32 = v14;
      *v12 = 136446722;
      swift_beginAccess();
      v15 = StaticString.description.getter();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v32);

      *(v12 + 4) = v17;
      *(v12 + 12) = 2082;
      *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000216583C60, &v32);
      *(v12 + 22) = 2112;
      *(v12 + 24) = v11;
      *v13 = v11;
      v18 = v11;
      _os_log_impl(&dword_21607C000, v7, v8, "%{public}s.%{public}s Re-creating device record: %@", v12, 0x20u);
      outlined destroy of UTType?(v13, &_sSo8NSObjectCSgMd);
      MEMORY[0x21CE94770](v13, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v14, -1, -1);
      MEMORY[0x21CE94770](v12, -1, -1);

      v10(v31, v30);
    }

    else
    {
      v19 = *(v0 + 176);
      v20 = *(v0 + 160);

      v10(v19, v20);
    }

    v21 = *(v0 + 216);
    v22 = *(v0 + 200);
    CloudDevicesDB.clearCKRecord(_:)(v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8CloudKit12CKSyncEngineC23PendingRecordZoneChangeOGMd);
    v23 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
    v24 = *(v23 - 8);
    v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_21658CA50;
    *(v26 + v25) = v21;
    *(v0 + 288) = v26;
    (*(v24 + 104))(v26 + v25, *MEMORY[0x277CBBC68], v23);
    v27 = v21;
    v28 = swift_task_alloc();
    *(v0 + 296) = v28;
    *v28 = v0;
    v28[1] = CloudDevicesDB.modifyCKRecordZone(_:);
    v29 = *(v0 + 256);

    return CloudManagerProtocol.add(pendingRecordZoneChanges:_:_:)(v26, 0xD000000000000016, 0x8000000216583C60, 1392, v29, v22);
  }
}

{
  v1 = *(*v0 + 144);

  return MEMORY[0x2822009F8](CloudDevicesDB.modifyCKRecordZone(_:), v1, 0);
}

{

  swift_unknownObjectRelease();
  static CloudLog.LogEnd(_:)("modifyCKRecordZone(_:)", 22, 2, *(v0 + 152), &protocol witness table for CloudDevicesDB);

  v1 = *(v0 + 8);

  return v1();
}

{
  v30 = v0;

  v1 = *(v0 + 216);
  (*(v0 + 232))(*(v0 + 176), *(v0 + 224), *(v0 + 160));
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 216);
    v27 = *(v0 + 176);
    v28 = *(v0 + 248);
    v26 = *(v0 + 160);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v29 = v8;
    *v6 = 136446722;
    swift_beginAccess();
    v9 = StaticString.description.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v29);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2082;
    *(v6 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000216583C60, &v29);
    *(v6 + 22) = 2112;
    *(v6 + 24) = v5;
    *v7 = v5;
    v12 = v5;
    _os_log_impl(&dword_21607C000, v3, v4, "%{public}s.%{public}s Re-creating device record: %@", v6, 0x20u);
    outlined destroy of UTType?(v7, &_sSo8NSObjectCSgMd);
    MEMORY[0x21CE94770](v7, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v8, -1, -1);
    MEMORY[0x21CE94770](v6, -1, -1);

    v28(v27, v26);
  }

  else
  {
    v13 = *(v0 + 248);
    v14 = *(v0 + 176);
    v15 = *(v0 + 160);

    v13(v14, v15);
  }

  v16 = *(v0 + 216);
  v17 = *(v0 + 200);
  CloudDevicesDB.clearCKRecord(_:)(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8CloudKit12CKSyncEngineC23PendingRecordZoneChangeOGMd);
  v18 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
  v19 = *(v18 - 8);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_21658CA50;
  *(v21 + v20) = v16;
  *(v0 + 288) = v21;
  (*(v19 + 104))(v21 + v20, *MEMORY[0x277CBBC68], v18);
  v22 = v16;
  v23 = swift_task_alloc();
  *(v0 + 296) = v23;
  *v23 = v0;
  v23[1] = CloudDevicesDB.modifyCKRecordZone(_:);
  v24 = *(v0 + 256);

  return CloudManagerProtocol.add(pendingRecordZoneChanges:_:_:)(v21, 0xD000000000000016, 0x8000000216583C60, 1392, v24, v17);
}

uint64_t protocol witness for CloudSubDB.dumpRecord(_:) in conformance CloudDevicesDB()
{
  v1 = specialized CloudDevicesDB.dumpRecord(_:)(*(v0 + 16));
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CloudDevicesDB@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CloudDevicesDB();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t closure #1 in CloudDevicesDB.primaryDevice.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a2;
  v5 = type metadata accessor for CloudDevice();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v23 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSg_ADtMd);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSgMd);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v24 = (&v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - v15;
  v26 = a3;
  outlined init with copy of CloudDevice(a1, a3, type metadata accessor for CloudDevice);
  outlined init with copy of CloudDevice(a1, v16, type metadata accessor for CloudDevice);
  (*(v6 + 56))(v16, 0, 1, v5);
  v17 = *(v9 + 56);
  outlined init with copy of DateInterval?(v16, v11, &_s9MomentsUI11CloudDeviceVSgMd);
  outlined init with copy of DateInterval?(v25, &v11[v17], &_s9MomentsUI11CloudDeviceVSgMd);
  v18 = *(v6 + 48);
  if (v18(v11, 1, v5) != 1)
  {
    v21 = v24;
    outlined init with copy of DateInterval?(v11, v24, &_s9MomentsUI11CloudDeviceVSgMd);
    if (v18(&v11[v17], 1, v5) != 1)
    {
      v22 = v23;
      outlined init with take of CloudDevice(&v11[v17], v23, type metadata accessor for CloudDevice);
      v20 = specialized static CloudDevice.== infix(_:_:)(v21, v22);
      outlined destroy of CloudDevice(v22, type metadata accessor for CloudDevice);
      outlined destroy of UTType?(v16, &_s9MomentsUI11CloudDeviceVSgMd);
      outlined destroy of CloudDevice(v21, type metadata accessor for CloudDevice);
      result = outlined destroy of UTType?(v11, &_s9MomentsUI11CloudDeviceVSgMd);
      goto LABEL_8;
    }

    outlined destroy of UTType?(v16, &_s9MomentsUI11CloudDeviceVSgMd);
    outlined destroy of CloudDevice(v21, type metadata accessor for CloudDevice);
    goto LABEL_6;
  }

  outlined destroy of UTType?(v16, &_s9MomentsUI11CloudDeviceVSgMd);
  if (v18(&v11[v17], 1, v5) != 1)
  {
LABEL_6:
    result = outlined destroy of UTType?(v11, &_s9MomentsUI11CloudDeviceVSg_ADtMd);
    v20 = 0;
    goto LABEL_8;
  }

  result = outlined destroy of UTType?(v11, &_s9MomentsUI11CloudDeviceVSgMd);
  v20 = 1;
LABEL_8:
  *(v26 + *(v5 + 60)) = v20 & 1;
  return result;
}

uint64_t CloudDevicesDB.previousPrimaryDevice.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CloudDevice();
  v21 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - v7;
  if (*(v1 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state) - 2 >= 2)
  {
    if (*(v1 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state))
    {
      v12 = *(v1 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state + 8);
      v13 = 1 << *(v12 + 32);
      v14 = -1;
      if (v13 < 64)
      {
        v14 = ~(-1 << v13);
      }

      v15 = v14 & *(v12 + 64);
      v16 = (v13 + 63) >> 6;

      v17 = 0;
      while (v15)
      {
LABEL_18:
        outlined init with copy of CloudDevice(*(v12 + 56) + *(v21 + 72) * (__clz(__rbit64(v15)) | (v17 << 6)), v8, type metadata accessor for CloudDevice);
        outlined init with take of CloudDevice(v8, v6, type metadata accessor for CloudDevice);
        v19 = v6[*(v3 + 60)];
        if (v19 != 2 && (v19 & 1) != 0)
        {

          outlined init with take of CloudDevice(v6, a1, type metadata accessor for CloudDevice);
          return (*(v21 + 56))(a1, 0, 1, v3);
        }

        v15 &= v15 - 1;
        result = outlined destroy of CloudDevice(v6, type metadata accessor for CloudDevice);
      }

      while (1)
      {
        v18 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v18 >= v16)
        {

          return (*(v21 + 56))(a1, 1, 1, v3);
        }

        v15 = *(v12 + 64 + 8 * v18);
        ++v17;
        if (v15)
        {
          v17 = v18;
          goto LABEL_18;
        }
      }

      __break(1u);
    }

    else
    {
      v11 = *(v21 + 56);

      return v11(a1, 1, 1, v3);
    }
  }

  else
  {

    static CloudDevice.previousPrimaryPhone(in:)(v9, a1);
  }

  return result;
}

uint64_t CloudDevicesDB.nominatedDevice.getter@<X0>(uint64_t a1@<X8>)
{
  if ((*(v1 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state) & 0xFE) == 2)
  {

    static CloudDevice.nominatedPhone(in:)(v3, a1);
  }

  else
  {
    v5 = type metadata accessor for CloudDevice();
    v6 = *(*(v5 - 8) + 56);

    return v6(a1, 1, 1, v5);
  }
}

uint64_t CloudDevicesDB.bestNomineeDevice.getter(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMd);
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySb_GGMd);
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v2[20] = v5;
  v2[21] = *(v5 - 8);
  v2[22] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v2[23] = v6;
  v2[24] = *(v6 - 8);
  v2[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](CloudDevicesDB.bestNomineeDevice.getter, v1, 0);
}

uint64_t CloudDevicesDB.bestNomineeDevice.getter()
{
  v27 = v0;
  if ((*(*(v0 + 96) + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state) & 0xFE) == 2)
  {
    *(v0 + 208) = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB___isRefreshing;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (*(v0 + 232) == 1)
    {
      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v2 = *(v0 + 192);
      v1 = *(v0 + 200);
      v3 = *(v0 + 184);
      v4 = __swift_project_value_buffer(v3, static CloudDevicesDB.Log);
      swift_beginAccess();
      (*(v2 + 16))(v1, v4, v3);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.info.getter();
      v7 = os_log_type_enabled(v5, v6);
      v8 = *(v0 + 200);
      v9 = *(v0 + 184);
      v10 = (*(v0 + 192) + 8);
      if (v7)
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v26 = v12;
        *v11 = 136446466;
        swift_beginAccess();
        v13 = StaticString.description.getter();
        v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v26);

        *(v11 + 4) = v15;
        *(v11 + 12) = 2082;
        *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x8000000216583C80, &v26);
        _os_log_impl(&dword_21607C000, v5, v6, "%{public}s.%{public}s Waiting for refresh to complete...", v11, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v12, -1, -1);
        MEMORY[0x21CE94770](v11, -1, -1);
      }

      (*v10)(v8, v9);
      v17 = *(v0 + 168);
      v16 = *(v0 + 176);
      v18 = *(v0 + 160);
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
      Published.projectedValue.getter();
      swift_endAccess();
      v19 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<Bool>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySb_GMd);
      MEMORY[0x21CE912F0](v18, v19);
      (*(v17 + 8))(v16, v18);

      return MEMORY[0x2822009F8](CloudDevicesDB.bestNomineeDevice.getter, 0, 0);
    }

    else
    {
      v23 = swift_task_alloc();
      *(v0 + 224) = v23;
      *v23 = v0;
      v23[1] = CloudDevicesDB.bestNomineeDevice.getter;
      v24 = *(v0 + 88);

      return CloudDevicesDB._bestNominee(favorRecent:)(v24, 0);
    }
  }

  else
  {
    v20 = *(v0 + 88);
    v21 = type metadata accessor for CloudDevice();
    (*(*(v21 - 8) + 56))(v20, 1, 1, v21);

    v22 = *(v0 + 8);

    return v22();
  }
}

{
  (*(v0[17] + 16))(v0[18], v0[19], v0[16]);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AsyncPublisher<Published<Bool>.Publisher> and conformance AsyncPublisher<A>, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySb_GGMd);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v1 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AsyncPublisher<Published<Bool>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMd);
  v2 = swift_task_alloc();
  v0[27] = v2;
  *v2 = v0;
  v2[1] = CloudDevicesDB.bestNomineeDevice.getter;
  v3 = v0[13];

  return MEMORY[0x282200308](v0 + 233, v3, v1);
}

{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[14];
    v3 = v2[15];
    v5 = v2[13];

    (*(v4 + 8))(v3, v5);
    v6 = destructiveProjectEnumData for SuggestionRanking.VisibilityCategory;
  }

  else
  {
    v6 = CloudDevicesDB.bestNomineeDevice.getter;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v1 = *(v0 + 233);
  if (v1 == 2 || (v1 & 1) == 0)
  {
    v5 = *(v0 + 152);
    v6 = *(v0 + 128);
    v7 = *(v0 + 136);
    v8 = *(v0 + 96);
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
    (*(v7 + 8))(v5, v6);

    return MEMORY[0x2822009F8](CloudDevicesDB.bestNomineeDevice.getter, v8, 0);
  }

  else
  {
    v2 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AsyncPublisher<Published<Bool>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMd);
    v3 = swift_task_alloc();
    *(v0 + 216) = v3;
    *v3 = v0;
    v3[1] = CloudDevicesDB.bestNomineeDevice.getter;
    v4 = *(v0 + 104);

    return MEMORY[0x282200308](v0 + 233, v4, v2);
  }
}

{
  v24 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (*(v0 + 232) == 1)
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 192);
    v1 = *(v0 + 200);
    v3 = *(v0 + 184);
    v4 = __swift_project_value_buffer(v3, static CloudDevicesDB.Log);
    swift_beginAccess();
    (*(v2 + 16))(v1, v4, v3);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    v7 = os_log_type_enabled(v5, v6);
    v9 = *(v0 + 192);
    v8 = *(v0 + 200);
    v10 = *(v0 + 184);
    if (v7)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v23 = v12;
      *v11 = 136446466;
      swift_beginAccess();
      v13 = StaticString.description.getter();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v23);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2082;
      *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x8000000216583C80, &v23);
      _os_log_impl(&dword_21607C000, v5, v6, "%{public}s.%{public}s Waiting for refresh to complete...", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v12, -1, -1);
      MEMORY[0x21CE94770](v11, -1, -1);
    }

    (*(v9 + 8))(v8, v10);
    v17 = *(v0 + 168);
    v16 = *(v0 + 176);
    v18 = *(v0 + 160);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
    Published.projectedValue.getter();
    swift_endAccess();
    v19 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<Bool>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySb_GMd);
    MEMORY[0x21CE912F0](v18, v19);
    (*(v17 + 8))(v16, v18);

    return MEMORY[0x2822009F8](CloudDevicesDB.bestNomineeDevice.getter, 0, 0);
  }

  else
  {
    v20 = swift_task_alloc();
    *(v0 + 224) = v20;
    *v20 = v0;
    v20[1] = CloudDevicesDB.bestNomineeDevice.getter;
    v21 = *(v0 + 88);

    return CloudDevicesDB._bestNominee(favorRecent:)(v21, 0);
  }
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t CloudDevicesDB._bestNominee(favorRecent:)(uint64_t a1, char a2)
{
  *(v3 + 320) = a2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v2;
  v4 = type metadata accessor for Logger();
  *(v3 + 176) = v4;
  *(v3 + 184) = *(v4 - 8);
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();
  v5 = type metadata accessor for Date();
  *(v3 + 224) = v5;
  *(v3 + 232) = *(v5 - 8);
  *(v3 + 240) = swift_task_alloc();
  *(v3 + 248) = swift_task_alloc();
  *(v3 + 256) = swift_task_alloc();
  *(v3 + 264) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSgMd);
  *(v3 + 272) = swift_task_alloc();
  *(v3 + 280) = swift_task_alloc();

  return MEMORY[0x2822009F8](CloudDevicesDB._bestNominee(favorRecent:), v2, 0);
}

uint64_t CloudDevicesDB._bestNominee(favorRecent:)()
{
  v83 = v0;
  v1 = v0[35];
  v0[36] = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state;

  static CloudDevice.bestNominee(in:favorRecent:)(v2, 1, v1);

  v3 = type metadata accessor for CloudDevice();
  v4 = *(*(v3 - 8) + 48);
  if (v4(v1, 1, v3) != 1)
  {
    v5 = v0[34];
    outlined init with copy of DateInterval?(v0[35], v5, &_s9MomentsUI11CloudDeviceVSgMd);
    v6 = v4(v5, 1, v3);
    v7 = v0[34];
    if (v6 == 1)
    {
      outlined destroy of UTType?(v7, &_s9MomentsUI11CloudDeviceVSgMd);
    }

    else
    {
      v8 = v0[28];
      v9 = v0[29];
      v10 = v0[27];
      outlined init with copy of DateInterval?(v7 + *(v3 + 80), v10, &_s10Foundation4DateVSgMd);
      v11 = (*(v9 + 48))(v10, 1, v8);
      v12 = v0[34];
      if (v11 == 1)
      {
        outlined destroy of UTType?(v0[27], &_s10Foundation4DateVSgMd);
        outlined destroy of CloudDevice(v12, type metadata accessor for CloudDevice);
      }

      else
      {
        v14 = v0[32];
        v13 = v0[33];
        v15 = v0[28];
        v16 = v0[29];
        (*(v16 + 32))(v13, v0[27], v15);
        static Date.distantPast.getter();
        v17 = static Date.> infix(_:_:)();
        v18 = *(v16 + 8);
        v18(v14, v15);
        v18(v13, v15);
        outlined destroy of CloudDevice(v12, type metadata accessor for CloudDevice);
        if (v17)
        {
          goto LABEL_22;
        }
      }
    }
  }

  v19 = v0[28];
  v20 = v0[29];
  v21 = v0[26];
  v22 = v0[21];
  Date.init()();
  v23 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__lastFullRefresh;
  swift_beginAccess();
  outlined init with copy of DateInterval?(v22 + v23, v21, &_s10Foundation4DateVSgMd);
  v24 = *(v20 + 48);
  if (v24(v21, 1, v19) == 1)
  {
    v25 = v0[28];
    v26 = v0[26];
    static Date.distantPast.getter();
    if (v24(v26, 1, v25) != 1)
    {
      outlined destroy of UTType?(v0[26], &_s10Foundation4DateVSgMd);
    }
  }

  else
  {
    (*(v0[29] + 32))(v0[30], v0[26], v0[28]);
  }

  v27 = v0[30];
  v28 = v0[31];
  v29 = v0[28];
  v30 = v0[29];
  Date.timeIntervalSince(_:)();
  v32 = v31;
  v33 = *(v30 + 8);
  v33(v27, v29);
  v33(v28, v29);
  if (v32 > 60.0)
  {
    v34 = (v0[21] + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_cloudManager);
    swift_beginAccess();
    v35 = *v34;
    v0[37] = *v34;
    if (v35)
    {
      v36 = v34[1];
      v37 = one-time initialization token for Log;
      swift_unknownObjectRetain();
      if (v37 != -1)
      {
        swift_once();
      }

      v38 = v0[25];
      v39 = v0[22];
      v40 = v0[23];
      v41 = __swift_project_value_buffer(v39, static CloudDevicesDB.Log);
      swift_beginAccess();
      v76 = *(v40 + 16);
      v76(v38, v41, v39);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.info.getter();
      v44 = os_log_type_enabled(v42, v43);
      v45 = v0[23];
      v80 = v0[22];
      v81 = v0[25];
      if (v44)
      {
        v75 = v41;
        v46 = swift_slowAlloc();
        v78 = v36;
        v47 = swift_slowAlloc();
        v82 = v47;
        *v46 = 136446466;
        swift_beginAccess();
        v48 = StaticString.description.getter();
        v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, &v82);

        *(v46 + 4) = v50;
        *(v46 + 12) = 2082;
        *(v46 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x8000000216584590, &v82);
        _os_log_impl(&dword_21607C000, v42, v43, "%{public}s.%{public}s Potentially stale nominee, refreshing...", v46, 0x16u);
        swift_arrayDestroy();
        v51 = v47;
        v36 = v78;
        MEMORY[0x21CE94770](v51, -1, -1);
        v52 = v46;
        v41 = v75;
        MEMORY[0x21CE94770](v52, -1, -1);
      }

      v53 = *(v45 + 8);
      v53(v81, v80);
      swift_beginAccess();
      if (static CloudManager.systemIdiom == 1 && ((v54 = specialized static DefaultsManager.MomentsUIDomain.BOOLeanValueFor(_:)(), v54 == 2) || (v54 & 1) != 0))
      {
        v76(v0[24], v41, v0[22]);
        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.info.getter();
        v57 = os_log_type_enabled(v55, v56);
        v58 = v0[24];
        v59 = v0[22];
        if (v57)
        {
          v60 = swift_slowAlloc();
          v79 = v36;
          v61 = swift_slowAlloc();
          v82 = v61;
          *v60 = 136446466;
          swift_beginAccess();
          v62 = StaticString.description.getter();
          v77 = v59;
          v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, &v82);

          *(v60 + 4) = v64;
          *(v60 + 12) = 2082;
          *(v60 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x8000000216584590, &v82);
          _os_log_impl(&dword_21607C000, v55, v56, "%{public}s.%{public}s Skipping blocking refresh on iPad (feature flag enabled)", v60, 0x16u);
          swift_arrayDestroy();
          v65 = v61;
          v36 = v79;
          MEMORY[0x21CE94770](v65, -1, -1);
          MEMORY[0x21CE94770](v60, -1, -1);

          v53(v58, v77);
        }

        else
        {

          v53(v58, v59);
        }

        ObjectType = swift_getObjectType();
        v74 = swift_task_alloc();
        v0[38] = v74;
        *v74 = v0;
        v74[1] = CloudDevicesDB._bestNominee(favorRecent:);
        v70 = 0;
        v72 = 843;
        v71 = ObjectType;
      }

      else
      {
        v68 = swift_getObjectType();
        v69 = swift_task_alloc();
        v0[39] = v69;
        *v69 = v0;
        v69[1] = CloudDevicesDB._bestNominee(favorRecent:);
        v70 = 1;
        v71 = v68;
        v72 = 848;
      }

      return CloudManagerProtocol.refresh(force:wait:_:_:)(1, v70, 0xD00000000000001ALL, 0x8000000216584590, v72, v71, v36);
    }
  }

LABEL_22:
  outlined init with take of URL?(v0[35], v0[20], &_s9MomentsUI11CloudDeviceVSgMd);

  v66 = v0[1];

  return v66();
}

{
  v1 = *(*v0 + 168);

  return MEMORY[0x2822009F8](CloudDevicesDB._bestNominee(favorRecent:), v1, 0);
}

{
  v1 = v0[35];
  v2 = v0[20];
  swift_unknownObjectRelease();
  outlined init with copy of DateInterval?(v1, v2, &_s9MomentsUI11CloudDeviceVSgMd);
  outlined destroy of UTType?(v1, &_s9MomentsUI11CloudDeviceVSgMd);

  v3 = v0[1];

  return v3();
}

{
  v1 = *(*v0 + 168);

  return MEMORY[0x2822009F8](CloudDevicesDB._bestNominee(favorRecent:), v1, 0);
}

{
  v1 = *(v0 + 280);
  v2 = *(v0 + 320);
  v3 = *(v0 + 160);

  static CloudDevice.bestNominee(in:favorRecent:)(v4, v2, v3);
  swift_unknownObjectRelease();

  outlined destroy of UTType?(v1, &_s9MomentsUI11CloudDeviceVSgMd);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t CloudDevicesDB.bestNomineeDevicePreferPrimary.getter(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMd);
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySb_GGMd);
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v2[20] = v5;
  v2[21] = *(v5 - 8);
  v2[22] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v2[23] = v6;
  v2[24] = *(v6 - 8);
  v2[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](CloudDevicesDB.bestNomineeDevicePreferPrimary.getter, v1, 0);
}

uint64_t CloudDevicesDB.bestNomineeDevicePreferPrimary.getter()
{
  v27 = v0;
  if ((*(*(v0 + 96) + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state) & 0xFE) == 2)
  {
    *(v0 + 208) = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB___isRefreshing;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (*(v0 + 232) == 1)
    {
      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v2 = *(v0 + 192);
      v1 = *(v0 + 200);
      v3 = *(v0 + 184);
      v4 = __swift_project_value_buffer(v3, static CloudDevicesDB.Log);
      swift_beginAccess();
      (*(v2 + 16))(v1, v4, v3);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.info.getter();
      v7 = os_log_type_enabled(v5, v6);
      v8 = *(v0 + 200);
      v9 = *(v0 + 184);
      v10 = (*(v0 + 192) + 8);
      if (v7)
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v26 = v12;
        *v11 = 136446466;
        swift_beginAccess();
        v13 = StaticString.description.getter();
        v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v26);

        *(v11 + 4) = v15;
        *(v11 + 12) = 2082;
        *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ELL, 0x8000000216583CA0, &v26);
        _os_log_impl(&dword_21607C000, v5, v6, "%{public}s.%{public}s Waiting for refresh to complete...", v11, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v12, -1, -1);
        MEMORY[0x21CE94770](v11, -1, -1);
      }

      (*v10)(v8, v9);
      v17 = *(v0 + 168);
      v16 = *(v0 + 176);
      v18 = *(v0 + 160);
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
      Published.projectedValue.getter();
      swift_endAccess();
      v19 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<Bool>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySb_GMd);
      MEMORY[0x21CE912F0](v18, v19);
      (*(v17 + 8))(v16, v18);

      return MEMORY[0x2822009F8](CloudDevicesDB.bestNomineeDevicePreferPrimary.getter, 0, 0);
    }

    else
    {
      v23 = swift_task_alloc();
      *(v0 + 224) = v23;
      *v23 = v0;
      v23[1] = CloudDevicesDB.bestNomineeDevicePreferPrimary.getter;
      v24 = *(v0 + 88);

      return CloudDevicesDB._bestNominee(favorRecent:)(v24, 1);
    }
  }

  else
  {
    v20 = *(v0 + 88);
    v21 = type metadata accessor for CloudDevice();
    (*(*(v21 - 8) + 56))(v20, 1, 1, v21);

    v22 = *(v0 + 8);

    return v22();
  }
}

{
  (*(v0[17] + 16))(v0[18], v0[19], v0[16]);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AsyncPublisher<Published<Bool>.Publisher> and conformance AsyncPublisher<A>, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySb_GGMd);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v1 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AsyncPublisher<Published<Bool>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMd);
  v2 = swift_task_alloc();
  v0[27] = v2;
  *v2 = v0;
  v2[1] = CloudDevicesDB.bestNomineeDevicePreferPrimary.getter;
  v3 = v0[13];

  return MEMORY[0x282200308](v0 + 233, v3, v1);
}

{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[14];
    v3 = v2[15];
    v5 = v2[13];

    (*(v4 + 8))(v3, v5);
    v6 = CloudDevicesDB.bestNomineeDevicePreferPrimary.getter;
  }

  else
  {
    v6 = CloudDevicesDB.bestNomineeDevicePreferPrimary.getter;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v1 = *(v0 + 233);
  if (v1 == 2 || (v1 & 1) == 0)
  {
    v5 = *(v0 + 152);
    v6 = *(v0 + 128);
    v7 = *(v0 + 136);
    v8 = *(v0 + 96);
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
    (*(v7 + 8))(v5, v6);

    return MEMORY[0x2822009F8](CloudDevicesDB.bestNomineeDevicePreferPrimary.getter, v8, 0);
  }

  else
  {
    v2 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AsyncPublisher<Published<Bool>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMd);
    v3 = swift_task_alloc();
    *(v0 + 216) = v3;
    *v3 = v0;
    v3[1] = CloudDevicesDB.bestNomineeDevicePreferPrimary.getter;
    v4 = *(v0 + 104);

    return MEMORY[0x282200308](v0 + 233, v4, v2);
  }
}

{
  v24 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (*(v0 + 232) == 1)
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 192);
    v1 = *(v0 + 200);
    v3 = *(v0 + 184);
    v4 = __swift_project_value_buffer(v3, static CloudDevicesDB.Log);
    swift_beginAccess();
    (*(v2 + 16))(v1, v4, v3);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    v7 = os_log_type_enabled(v5, v6);
    v9 = *(v0 + 192);
    v8 = *(v0 + 200);
    v10 = *(v0 + 184);
    if (v7)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v23 = v12;
      *v11 = 136446466;
      swift_beginAccess();
      v13 = StaticString.description.getter();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v23);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2082;
      *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ELL, 0x8000000216583CA0, &v23);
      _os_log_impl(&dword_21607C000, v5, v6, "%{public}s.%{public}s Waiting for refresh to complete...", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v12, -1, -1);
      MEMORY[0x21CE94770](v11, -1, -1);
    }

    (*(v9 + 8))(v8, v10);
    v17 = *(v0 + 168);
    v16 = *(v0 + 176);
    v18 = *(v0 + 160);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
    Published.projectedValue.getter();
    swift_endAccess();
    v19 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<Bool>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySb_GMd);
    MEMORY[0x21CE912F0](v18, v19);
    (*(v17 + 8))(v16, v18);

    return MEMORY[0x2822009F8](CloudDevicesDB.bestNomineeDevicePreferPrimary.getter, 0, 0);
  }

  else
  {
    v20 = swift_task_alloc();
    *(v0 + 224) = v20;
    *v20 = v0;
    v20[1] = CloudDevicesDB.bestNomineeDevicePreferPrimary.getter;
    v21 = *(v0 + 88);

    return CloudDevicesDB._bestNominee(favorRecent:)(v21, 1);
  }
}

uint64_t CloudDevicesDB.nominationDateForPhone(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if ((*(v2 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state) & 0xFE) == 2)
  {
    v4 = *(v2 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state + 8);

    static CloudDevice.nominationDateForPhone(_:in:)(a1, v4, a2);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);

    return v8(a2, 1, 1, v7);
  }
}

uint64_t CloudDevicesDB.autoNominateDevice()()
{
  v1[11] = v0;
  v1[12] = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSgMd);
  v1[13] = swift_task_alloc();
  v2 = type metadata accessor for CloudDevice();
  v1[14] = v2;
  v1[15] = *(v2 - 8);
  v1[16] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[17] = v3;
  v1[18] = *(v3 - 8);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](CloudDevicesDB.autoNominateDevice(), v0, 0);
}

{
  v24 = v0;
  v1 = v0[11];
  static CloudLog.LogBeginInfo(_:_:)(0, "autoNominateDevice()", 20, 2, v0[12], &protocol witness table for CloudDevicesDB);
  if ((*(v1 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state) & 0xFE) == 2)
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v2 = v0[20];
    v4 = v0[17];
    v3 = v0[18];
    v5 = __swift_project_value_buffer(v4, static CloudDevicesDB.Log);
    v0[21] = v5;
    swift_beginAccess();
    v6 = *(v3 + 16);
    v0[22] = v6;
    v0[23] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v6(v2, v5, v4);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[20];
    v12 = v0[17];
    v11 = v0[18];
    if (v9)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v14;
      *v13 = 136446466;
      swift_beginAccess();
      v15 = StaticString.description.getter();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v23);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2082;
      *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x8000000216583CC0, &v23);
      _os_log_impl(&dword_21607C000, v7, v8, "%{public}s.%{public}s Looking for best nominee", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v14, -1, -1);
      MEMORY[0x21CE94770](v13, -1, -1);
    }

    v18 = *(v11 + 8);
    v18(v10, v12);
    v0[24] = v18;
    v19 = swift_task_alloc();
    v0[25] = v19;
    *v19 = v0;
    v19[1] = CloudDevicesDB.autoNominateDevice();
    v20 = v0[13];

    return CloudDevicesDB.bestNomineeDevice.getter(v20);
  }

  else
  {
    static CloudLog.LogEndInfo(_:)("autoNominateDevice()", 20, 2, v0[12], &protocol witness table for CloudDevicesDB);

    v22 = v0[1];

    return v22();
  }
}

{
  v1 = *(*v0 + 88);

  return MEMORY[0x2822009F8](CloudDevicesDB.autoNominateDevice(), v1, 0);
}

{
  v23 = v0;
  v1 = v0[13];
  if ((*(v0[15] + 48))(v1, 1, v0[14]) == 1)
  {
    v2 = v0[22];
    v3 = v0[21];
    v4 = v0[19];
    v5 = v0[17];
    outlined destroy of UTType?(v1, &_s9MomentsUI11CloudDeviceVSgMd);
    v2(v4, v3, v5);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[24];
    v10 = v0[19];
    v11 = v0[17];
    if (v8)
    {
      v21 = v0[24];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v22 = v13;
      *v12 = 136446466;
      swift_beginAccess();
      v14 = StaticString.description.getter();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v22);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2082;
      *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x8000000216583CC0, &v22);
      _os_log_impl(&dword_21607C000, v6, v7, "%{public}s.%{public}s No nominee found", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v13, -1, -1);
      MEMORY[0x21CE94770](v12, -1, -1);

      v21(v10, v11);
    }

    else
    {

      v9(v10, v11);
    }

    static CloudLog.LogEndInfo(_:)("autoNominateDevice()", 20, 2, v0[12], &protocol witness table for CloudDevicesDB);

    v20 = v0[1];

    return v20();
  }

  else
  {
    outlined init with take of CloudDevice(v1, v0[16], type metadata accessor for CloudDevice);
    v17 = swift_task_alloc();
    v0[26] = v17;
    *v17 = v0;
    v17[1] = CloudDevicesDB.autoNominateDevice();
    v18 = v0[16];

    return CloudDevicesDB.nominateDevice(_:)(v18);
  }
}

{
  v1 = *(*v0 + 88);

  return MEMORY[0x2822009F8](CloudDevicesDB.autoNominateDevice(), v1, 0);
}

{
  v1 = v0[12];
  outlined destroy of CloudDevice(v0[16], type metadata accessor for CloudDevice);
  static CloudLog.LogEndInfo(_:)("autoNominateDevice()", 20, 2, v1, &protocol witness table for CloudDevicesDB);

  v2 = v0[1];

  return v2();
}

uint64_t CloudDevicesDB.nominateDevice(_:)(uint64_t a1)
{
  v2[26] = a1;
  v2[27] = v1;
  v2[28] = *v1;
  v3 = type metadata accessor for Date();
  v2[29] = v3;
  v2[30] = *(v3 - 8);
  v2[31] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[32] = v4;
  v2[33] = *(v4 - 8);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v5 = type metadata accessor for CloudDevice();
  v2[39] = v5;
  v2[40] = *(v5 - 8);
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v2[43] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSg_ADtMd);
  v2[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSgMd);
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();

  return MEMORY[0x2822009F8](CloudDevicesDB.nominateDevice(_:), v1, 0);
}

uint64_t CloudDevicesDB.nominateDevice(_:)()
{
  v165 = v0;
  v1 = (v0[26] + *(v0[39] + 32));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v3 = 0xE700000000000000;
    v2 = 0x6E776F6E6B6E55;
  }

  v4 = v0[27];
  v5 = v0[28];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys23CustomStringConvertible_pSgGMd);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_21658CA50;
  v7 = MEMORY[0x277D83838];
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = v7;
  *(v6 + 32) = v2;
  *(v6 + 40) = v3;

  static CloudLog.LogBeginInfo(_:_:)(v6, "nominateDevice(_:)", 18, 2, v5, &protocol witness table for CloudDevicesDB);

  v8 = v4 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state;
  v162 = v2;
  if (*(v4 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state) > 1u)
  {
    if (*(v4 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state) != 2)
    {
LABEL_21:
      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v35 = v0[35];
      v36 = v0[32];
      v37 = v0[33];
      v38 = __swift_project_value_buffer(v36, static CloudDevicesDB.Log);
      swift_beginAccess();
      (*(v37 + 16))(v35, v38, v36);

      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();

      v41 = os_log_type_enabled(v39, v40);
      v42 = v0[35];
      v44 = v0[32];
      v43 = v0[33];
      if (v41)
      {
        v45 = v3;
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v164[0] = v47;
        *v46 = 136446722;
        v160 = v42;
        swift_beginAccess();
        v48 = StaticString.description.getter();
        v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, v164);

        *(v46 + 4) = v50;
        *(v46 + 12) = 2082;
        *(v46 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x8000000216583CE0, v164);
        *(v46 + 22) = 2080;
        v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v162, v45, v164);

        *(v46 + 24) = v51;
        _os_log_impl(&dword_21607C000, v39, v40, "%{public}s.%{public}s Cannot nominate: %s", v46, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v47, -1, -1);
        MEMORY[0x21CE94770](v46, -1, -1);

        (*(v43 + 8))(v160, v44);
      }

      else
      {

        (*(v43 + 8))(v42, v44);
      }

      goto LABEL_26;
    }

    swift_bridgeObjectRelease_n();
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v10 = *(v8 + 8);
  if (!*(v10 + 16))
  {
    goto LABEL_19;
  }

  v11 = v0[26];
  v12 = *v11;
  v13 = v11[1];

  v14 = specialized __RawDictionaryStorage.find<A>(_:)(v12, v13);
  if ((v15 & 1) == 0)
  {

LABEL_19:
    v27 = v0 + 49;
    (*(v0[40] + 56))(v0[49], 1, 1, v0[39]);
    goto LABEL_20;
  }

  v153 = v13;
  v156 = v12;
  v16 = v0[49];
  v17 = v0[40];
  v149 = v0;
  v159 = v3;
  v18 = v0[39];
  v19 = v0[26];
  outlined init with copy of CloudDevice(*(v10 + 56) + *(v17 + 72) * v14, v16, type metadata accessor for CloudDevice);

  v20 = *(v17 + 56);
  v20(v16, 0, 1, v18);
  outlined destroy of UTType?(v16, &_s9MomentsUI11CloudDeviceVSgMd);
  v21 = *(v18 + 40);
  v3 = v159;
  v22 = v19 + v21;
  if (*(v22 + 8))
  {
    v23 = -1;
  }

  else
  {
    v23 = *v22;
  }

  CloudDevice.Idiom.init(rawValue:)(v23);
  if (LOBYTE(v164[0]) != 1)
  {
    goto LABEL_21;
  }

  v148 = v8;
  v24 = v0;
  v26 = v0[47];
  v25 = v0[48];
  v27 = v0 + 44;
  v28 = v0[43];
  v151 = v0[44];
  v29 = v0[40];
  v30 = v24[39];
  outlined init with copy of CloudDevice(v24[26], v25, type metadata accessor for CloudDevice);
  v20(v25, 0, 1, v30);
  CloudDevicesDB.primaryDevice.getter(v26);
  v31 = *(v28 + 48);
  outlined init with copy of DateInterval?(v25, v151, &_s9MomentsUI11CloudDeviceVSgMd);
  outlined init with copy of DateInterval?(v26, v151 + v31, &_s9MomentsUI11CloudDeviceVSgMd);
  v32 = *(v29 + 48);
  if (v32(v151, 1, v30) == 1)
  {
    v33 = v24[48];
    v34 = v24[39];
    outlined destroy of UTType?(v24[47], &_s9MomentsUI11CloudDeviceVSgMd);
    outlined destroy of UTType?(v33, &_s9MomentsUI11CloudDeviceVSgMd);
    if (v32(v151 + v31, 1, v34) == 1)
    {
      v0 = v149;
      v3 = v159;
LABEL_20:
      outlined destroy of UTType?(*v27, &_s9MomentsUI11CloudDeviceVSgMd);
      goto LABEL_21;
    }

    goto LABEL_31;
  }

  v54 = v24[39];
  outlined init with copy of DateInterval?(v24[44], v24[46], &_s9MomentsUI11CloudDeviceVSgMd);
  v55 = v32(v151 + v31, 1, v54);
  v56 = v24[47];
  v146 = v24[48];
  v57 = v24[46];
  if (v55 == 1)
  {
    outlined destroy of UTType?(v56, &_s9MomentsUI11CloudDeviceVSgMd);
    outlined destroy of UTType?(v146, &_s9MomentsUI11CloudDeviceVSgMd);
    outlined destroy of CloudDevice(v57, type metadata accessor for CloudDevice);
LABEL_31:
    outlined destroy of UTType?(*v27, &_s9MomentsUI11CloudDeviceVSg_ADtMd);
    v0 = v149;
    v3 = v159;
    goto LABEL_32;
  }

  v100 = v24[44];
  v101 = v24[42];
  outlined init with take of CloudDevice(v151 + v31, v101, type metadata accessor for CloudDevice);
  v102 = specialized static CloudDevice.== infix(_:_:)(v57, v101);
  outlined destroy of CloudDevice(v101, type metadata accessor for CloudDevice);
  outlined destroy of UTType?(v56, &_s9MomentsUI11CloudDeviceVSgMd);
  outlined destroy of UTType?(v146, &_s9MomentsUI11CloudDeviceVSgMd);
  outlined destroy of CloudDevice(v57, type metadata accessor for CloudDevice);
  outlined destroy of UTType?(v100, &_s9MomentsUI11CloudDeviceVSgMd);
  v0 = v24;
  v3 = v159;
  if (v102)
  {
    goto LABEL_21;
  }

LABEL_32:
  v58 = v0[45];
  v59 = v0[39];
  CloudDevicesDB.currentDevice.getter(v58);
  if (v32(v58, 1, v59) == 1)
  {
    v27 = v0 + 45;
    goto LABEL_20;
  }

  outlined init with take of CloudDevice(v0[45], v0[41], type metadata accessor for CloudDevice);
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v60 = v0[38];
  v61 = v0[32];
  v62 = v0[33];
  v63 = __swift_project_value_buffer(v61, static CloudDevicesDB.Log);
  swift_beginAccess();
  v150 = v63;
  v147 = *(v62 + 16);
  v147(v60, v63, v61);

  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.info.getter();

  v66 = os_log_type_enabled(v64, v65);
  v67 = v0[38];
  v68 = v0[32];
  v69 = v0[33];
  if (v66)
  {
    v70 = v3;
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v164[0] = v72;
    *v71 = 136446722;
    swift_beginAccess();
    v73 = StaticString.description.getter();
    v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v74, v164);

    *(v71 + 4) = v75;
    *(v71 + 12) = 2082;
    *(v71 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x8000000216583CE0, v164);
    *(v71 + 22) = 2080;
    *(v71 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v162, v70, v164);
    _os_log_impl(&dword_21607C000, v64, v65, "%{public}s.%{public}s Nominating: %s", v71, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v72, -1, -1);
    v0 = v149;
    MEMORY[0x21CE94770](v71, -1, -1);
  }

  v152 = *(v69 + 8);
  v152(v67, v68);
  v76 = v0[41];
  v77 = v0[39];
  v78 = v0[31];
  v144 = v0[37];
  v145 = v0[32];
  v80 = v0[29];
  v79 = v0[30];
  static Date.now.getter();
  v81 = v77[7];
  outlined destroy of UTType?(v76 + v81, &_s10Foundation4DateVSgMd);
  v143 = *(v79 + 16);
  v143(v76 + v81, v78, v80);
  v82 = *(v79 + 56);
  v82(v76 + v81, 0, 1, v80);
  v83 = (v76 + v77[17]);

  *v83 = v156;
  v83[1] = v153;
  v84 = v77[18];
  outlined destroy of UTType?(v76 + v84, &_s10Foundation4DateVSgMd);
  v143(v76 + v84, v78, v80);
  v85 = v76 + v84;
  v0 = v149;
  v82(v85, 0, 1, v80);
  v86 = CloudDevice.description()();
  v147(v144, v150, v145);
  v87 = Logger.logObject.getter();
  v88 = static os_log_type_t.debug.getter();
  v89 = os_log_type_enabled(v87, v88);
  v90 = v149[37];
  v91 = v149[32];
  if (v89)
  {
    v92 = swift_slowAlloc();
    v157 = v91;
    v93 = swift_slowAlloc();
    v164[0] = v93;
    *v92 = 136446722;
    v154 = v90;
    swift_beginAccess();
    v94 = StaticString.description.getter();
    v96 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v94, v95, v164);

    *(v92 + 4) = v96;
    *(v92 + 12) = 2082;
    *(v92 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x8000000216583CE0, v164);
    *(v92 + 22) = 2080;
    v97 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86._countAndFlagsBits, v86._object, v164);

    *(v92 + 24) = v97;
    _os_log_impl(&dword_21607C000, v87, v88, "%{public}s.%{public}s Updating DevicesDB with:\n%s", v92, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v93, -1, -1);
    MEMORY[0x21CE94770](v92, -1, -1);

    v98 = v154;
    v99 = v157;
  }

  else
  {

    v98 = v90;
    v99 = v91;
  }

  v152(v98, v99);
  v103 = v149[41];
  v104 = v149[42];
  v105 = *v103;
  v106 = v103[1];
  outlined init with copy of CloudDevice(v103, v104, type metadata accessor for CloudDevice);
  v107 = *(v148 + 8);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v164[0] = v107;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v104, v105, v106, isUniquelyReferenced_nonNull_native);
  *(v148 + 8) = v164[0];

  CloudDevicesDB.persistLocalData()();
  v110 = v149[32];
  if (v109)
  {
    v111 = v149[34];

    v147(v111, v150, v110);
    v112 = v109;
    v113 = Logger.logObject.getter();
    v114 = static os_log_type_t.debug.getter();

    v115 = os_log_type_enabled(v113, v114);
    v116 = v149[34];
    v117 = v149[31];
    v118 = v149[32];
    v119 = v149[29];
    v120 = v149[30];
    if (v115)
    {
      v163 = v149[32];
      v121 = swift_slowAlloc();
      v161 = v116;
      v122 = swift_slowAlloc();
      v158 = v117;
      v123 = swift_slowAlloc();
      v164[0] = v123;
      *v121 = 136446722;
      swift_beginAccess();
      v124 = StaticString.description.getter();
      v155 = v119;
      v126 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v124, v125, v164);

      *(v121 + 4) = v126;
      *(v121 + 12) = 2082;
      *(v121 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x8000000216583CE0, v164);
      *(v121 + 22) = 2112;
      v127 = v109;
      v128 = _swift_stdlib_bridgeErrorToNSError();
      *(v121 + 24) = v128;
      *v122 = v128;
      _os_log_impl(&dword_21607C000, v113, v114, "%{public}s.%{public}s Failed to persist local data: %@", v121, 0x20u);
      outlined destroy of UTType?(v122, &_sSo8NSObjectCSgMd);
      MEMORY[0x21CE94770](v122, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v123, -1, -1);
      v0 = v149;
      MEMORY[0x21CE94770](v121, -1, -1);

      v152(v161, v163);
      (*(v120 + 8))(v158, v155);
    }

    else
    {

      v152(v116, v118);
      (*(v120 + 8))(v117, v119);
    }

    outlined destroy of CloudDevice(v0[41], type metadata accessor for CloudDevice);
LABEL_26:
    static CloudLog.LogEndInfo(_:)("nominateDevice(_:)", 18, 2, v0[28], &protocol witness table for CloudDevicesDB);

    v52 = v0[1];

    return v52();
  }

  v147(v149[36], v150, v110);

  v129 = Logger.logObject.getter();
  v130 = static os_log_type_t.info.getter();

  v131 = os_log_type_enabled(v129, v130);
  v132 = v149[36];
  v133 = v149[32];
  if (v131)
  {
    v134 = swift_slowAlloc();
    v135 = swift_slowAlloc();
    v164[0] = v135;
    *v134 = 136446722;
    v136 = v132;
    swift_beginAccess();
    v137 = StaticString.description.getter();
    v139 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v137, v138, v164);

    *(v134 + 4) = v139;
    *(v134 + 12) = 2082;
    *(v134 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x8000000216583CE0, v164);
    *(v134 + 22) = 2080;
    v140 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v162, v159, v164);

    *(v134 + 24) = v140;
    _os_log_impl(&dword_21607C000, v129, v130, "%{public}s.%{public}s Nominated: %s", v134, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v135, -1, -1);
    v0 = v149;
    MEMORY[0x21CE94770](v134, -1, -1);

    v141 = v136;
  }

  else
  {

    v141 = v132;
  }

  v152(v141, v133);
  v142 = swift_task_alloc();
  v0[50] = v142;
  *v142 = v0;
  v142[1] = CloudDevicesDB.nominateDevice(_:);

  return CloudDevicesDB.checkDB(forceUpdate:)(1);
}

{
  v1 = *(*v0 + 216);

  return MEMORY[0x2822009F8](CloudDevicesDB.nominateDevice(_:), v1, 0);
}

{
  v1 = v0[27];
  v2 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_cloudManager;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[51] = v3;
  if (v3 && (type metadata accessor for CloudManager(), swift_dynamicCastClass()))
  {
    swift_unknownObjectRetain();
    v4 = swift_task_alloc();
    v0[52] = v4;
    *v4 = v0;
    v4[1] = CloudDevicesDB.nominateDevice(_:);

    return specialized CloudManagerProtocol.refresh(force:wait:_:_:)(0, 0, 0xD000000000000012, 0x8000000216583CE0, 929);
  }

  else
  {
    v6 = v0[41];
    (*(v0[30] + 8))(v0[31], v0[29]);
    outlined destroy of CloudDevice(v6, type metadata accessor for CloudDevice);
    static CloudLog.LogEndInfo(_:)("nominateDevice(_:)", 18, 2, v0[28], &protocol witness table for CloudDevicesDB);

    v7 = v0[1];

    return v7();
  }
}

{
  v1 = *(*v0 + 216);

  return MEMORY[0x2822009F8](CloudDevicesDB.nominateDevice(_:), v1, 0);
}

{
  swift_unknownObjectRelease();
  v1 = v0[41];
  (*(v0[30] + 8))(v0[31], v0[29]);
  outlined destroy of CloudDevice(v1, type metadata accessor for CloudDevice);
  static CloudLog.LogEndInfo(_:)("nominateDevice(_:)", 18, 2, v0[28], &protocol witness table for CloudDevicesDB);

  v2 = v0[1];

  return v2();
}

uint64_t CloudDevicesDB.declineNomination()()
{
  v1[29] = v0;
  v1[30] = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v1[31] = swift_task_alloc();
  v2 = type metadata accessor for Date();
  v1[32] = v2;
  v1[33] = *(v2 - 8);
  v1[34] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[35] = v3;
  v1[36] = *(v3 - 8);
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSg_ADtMd);
  v1[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSgMd);
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v4 = type metadata accessor for CloudDevice();
  v1[48] = v4;
  v1[49] = *(v4 - 8);
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](CloudDevicesDB.declineNomination(), v0, 0);
}

{
  v153 = v0;
  v1 = v0[29];
  static CloudLog.LogBeginInfo(_:_:)(0, "declineNomination()", 19, 2, v0[30], &protocol witness table for CloudDevicesDB);
  v2 = (v1 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state);
  if (*v2 > 1u)
  {
    if (*v2 != 2)
    {
LABEL_17:
      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v19 = v0[38];
      v21 = v0[35];
      v20 = v0[36];
      v22 = __swift_project_value_buffer(v21, static CloudDevicesDB.Log);
      swift_beginAccess();
      (*(v20 + 16))(v19, v22, v21);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();
      v25 = os_log_type_enabled(v23, v24);
      v26 = v0[38];
      v28 = v0[35];
      v27 = v0[36];
      if (v25)
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v152[0] = v30;
        *v29 = 136446466;
        swift_beginAccess();
        v31 = StaticString.description.getter();
        v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, v152);

        *(v29 + 4) = v33;
        *(v29 + 12) = 2082;
        *(v29 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000013, 0x8000000216583D00, v152);
        _os_log_impl(&dword_21607C000, v23, v24, "%{public}s.%{public}s Cannot decline nomination", v29, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v30, -1, -1);
        MEMORY[0x21CE94770](v29, -1, -1);
      }

      (*(v27 + 8))(v26, v28);
      goto LABEL_22;
    }

    swift_bridgeObjectRelease_n();
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v3 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v4 = v0[48];
  v5 = v0[49];
  v6 = v0[47];
  CloudDevicesDB.currentDevice.getter(v6);
  v7 = *(v5 + 48);
  if (v7(v6, 1, v4) == 1)
  {
    outlined destroy of UTType?(v0[47], &_s9MomentsUI11CloudDeviceVSgMd);
    goto LABEL_17;
  }

  v8 = v0[51];
  v9 = v0[48];
  outlined init with take of CloudDevice(v0[47], v8, type metadata accessor for CloudDevice);
  v10 = v8 + *(v9 + 40);
  if (*(v10 + 8))
  {
    v11 = -1;
  }

  else
  {
    v11 = *v10;
  }

  CloudDevice.Idiom.init(rawValue:)(v11);
  if (LOBYTE(v152[0]) == 7)
  {
    goto LABEL_12;
  }

  v12 = v0[51];
  if (LOBYTE(v152[0]) != 1)
  {
    goto LABEL_16;
  }

  v13 = v0[48];
  v14 = v0[49];
  v15 = v0[46];
  outlined init with copy of CloudDevice(v12, v15, type metadata accessor for CloudDevice);
  v16 = *(v14 + 56);
  v16(v15, 0, 1, v13);
  if ((*v2 & 0xFE) == 2)
  {
    v17 = v0[45];

    static CloudDevice.nominatedPhone(in:)(v18, v17);
  }

  else
  {
    v16(v0[45], 1, 1, v0[48]);
  }

  v36 = v0[48];
  v37 = v0[45];
  v38 = v0[43];
  v39 = *(v0[42] + 48);
  outlined init with copy of DateInterval?(v0[46], v38, &_s9MomentsUI11CloudDeviceVSgMd);
  outlined init with copy of DateInterval?(v37, v38 + v39, &_s9MomentsUI11CloudDeviceVSgMd);
  v40 = v7(v38, 1, v36);
  v41 = v0[48];
  if (v40 == 1)
  {
    v42 = v0[46];
    outlined destroy of UTType?(v0[45], &_s9MomentsUI11CloudDeviceVSgMd);
    outlined destroy of UTType?(v42, &_s9MomentsUI11CloudDeviceVSgMd);
    if (v7(v38 + v39, 1, v41) == 1)
    {
      outlined destroy of UTType?(v0[43], &_s9MomentsUI11CloudDeviceVSgMd);
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  outlined init with copy of DateInterval?(v0[43], v0[44], &_s9MomentsUI11CloudDeviceVSgMd);
  if (v7(v38 + v39, 1, v41) == 1)
  {
    v43 = v0[46];
    v44 = v0[44];
    outlined destroy of UTType?(v0[45], &_s9MomentsUI11CloudDeviceVSgMd);
    outlined destroy of UTType?(v43, &_s9MomentsUI11CloudDeviceVSgMd);
    outlined destroy of CloudDevice(v44, type metadata accessor for CloudDevice);
LABEL_31:
    outlined destroy of UTType?(v0[43], &_s9MomentsUI11CloudDeviceVSg_ADtMd);
LABEL_12:
    v12 = v0[51];
LABEL_16:
    outlined destroy of CloudDevice(v12, type metadata accessor for CloudDevice);
    goto LABEL_17;
  }

  v45 = v0[50];
  v47 = v0[45];
  v46 = v0[46];
  v49 = v0[43];
  v48 = v0[44];
  outlined init with take of CloudDevice(v38 + v39, v45, type metadata accessor for CloudDevice);
  v50 = specialized static CloudDevice.== infix(_:_:)(v48, v45);
  outlined destroy of CloudDevice(v45, type metadata accessor for CloudDevice);
  outlined destroy of UTType?(v47, &_s9MomentsUI11CloudDeviceVSgMd);
  outlined destroy of UTType?(v46, &_s9MomentsUI11CloudDeviceVSgMd);
  outlined destroy of CloudDevice(v48, type metadata accessor for CloudDevice);
  outlined destroy of UTType?(v49, &_s9MomentsUI11CloudDeviceVSgMd);
  if ((v50 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_33:
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v51 = v0[41];
  v52 = v0[35];
  v53 = v0[36];
  v54 = __swift_project_value_buffer(v52, static CloudDevicesDB.Log);
  swift_beginAccess();
  v148 = v54;
  v146 = *(v53 + 16);
  v146(v51, v54, v52);
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.info.getter();
  v57 = os_log_type_enabled(v55, v56);
  v58 = v0[41];
  v60 = v0[35];
  v59 = v0[36];
  if (v57)
  {
    v150 = v0[41];
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v152[0] = v62;
    *v61 = 136446466;
    swift_beginAccess();
    v63 = StaticString.description.getter();
    v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v64, v152);

    *(v61 + 4) = v65;
    *(v61 + 12) = 2082;
    *(v61 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000013, 0x8000000216583D00, v152);
    _os_log_impl(&dword_21607C000, v55, v56, "%{public}s.%{public}s Declining Nomination", v61, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v62, -1, -1);
    MEMORY[0x21CE94770](v61, -1, -1);

    v66 = *(v59 + 8);
    v67 = v150;
  }

  else
  {

    v66 = *(v59 + 8);
    v67 = v58;
  }

  v151 = v66;
  v66(v67, v60);
  v68 = v0[51];
  v69 = v0[48];
  v70 = v0[34];
  v142 = v0[40];
  v144 = v0[35];
  v71 = v0[32];
  v72 = v0[33];
  v139 = v0[31];
  static Date.now.getter();
  v73 = v69[7];
  outlined destroy of UTType?(v68 + v73, &_s10Foundation4DateVSgMd);
  v74 = *(v72 + 16);
  v74(v68 + v73, v70, v71);
  v75 = *(v72 + 56);
  v75(v68 + v73, 0, 1, v71);
  v76 = v69[16];
  outlined destroy of UTType?(v68 + v76, &_s10Foundation4DateVSgMd);
  v74(v68 + v76, v70, v71);
  v75(v68 + v76, 0, 1, v71);
  v77 = (v68 + v69[17]);

  *v77 = xmmword_21658F9D0;
  static Date.distantPast.getter();
  v75(v139, 0, 1, v71);
  outlined assign with take of Date?(v139, v68 + v69[18]);
  v78 = CloudDevice.description()();
  v146(v142, v148, v144);
  v79 = Logger.logObject.getter();
  v80 = static os_log_type_t.debug.getter();
  v81 = os_log_type_enabled(v79, v80);
  v82 = v0[40];
  v83 = v0[35];
  if (v81)
  {
    v84 = swift_slowAlloc();
    v145 = v83;
    v85 = swift_slowAlloc();
    v152[0] = v85;
    *v84 = 136446722;
    swift_beginAccess();
    v86 = StaticString.description.getter();
    v140 = v82;
    v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v87, v152);

    *(v84 + 4) = v88;
    *(v84 + 12) = 2082;
    *(v84 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000013, 0x8000000216583D00, v152);
    *(v84 + 22) = 2080;
    v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78._countAndFlagsBits, v78._object, v152);

    *(v84 + 24) = v89;
    _os_log_impl(&dword_21607C000, v79, v80, "%{public}s.%{public}s Updating DevicesDB with:\n%s", v84, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v85, -1, -1);
    MEMORY[0x21CE94770](v84, -1, -1);

    v90 = v140;
    v91 = v145;
  }

  else
  {

    v90 = v82;
    v91 = v83;
  }

  v151(v90, v91);
  v93 = v0[50];
  v92 = v0[51];
  v94 = *v92;
  v95 = v92[1];
  outlined init with copy of CloudDevice(v92, v93, type metadata accessor for CloudDevice);
  v96 = *(v2 + 1);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v152[0] = v96;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v93, v94, v95, isUniquelyReferenced_nonNull_native);

  *(v2 + 1) = v152[0];

  CloudDevicesDB.persistLocalData()();
  v99 = v0[35];
  if (v98)
  {
    v146(v0[37], v148, v99);
    v100 = v98;
    v101 = Logger.logObject.getter();
    v102 = static os_log_type_t.error.getter();

    v103 = os_log_type_enabled(v101, v102);
    v104 = v0[51];
    v105 = v0[37];
    v106 = v0[34];
    v107 = v0[35];
    v108 = v0[32];
    v109 = v0[33];
    if (v103)
    {
      v149 = v0[35];
      v110 = swift_slowAlloc();
      v147 = v108;
      v111 = swift_slowAlloc();
      v143 = v106;
      v112 = swift_slowAlloc();
      v152[0] = v112;
      *v110 = 136446722;
      swift_beginAccess();
      v113 = StaticString.description.getter();
      v141 = v105;
      v115 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v113, v114, v152);

      *(v110 + 4) = v115;
      *(v110 + 12) = 2082;
      *(v110 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000013, 0x8000000216583D00, v152);
      *(v110 + 22) = 2112;
      v116 = v98;
      v117 = _swift_stdlib_bridgeErrorToNSError();
      *(v110 + 24) = v117;
      *v111 = v117;
      _os_log_impl(&dword_21607C000, v101, v102, "%{public}s.%{public}s Failed to persist local data: %@", v110, 0x20u);
      outlined destroy of UTType?(v111, &_sSo8NSObjectCSgMd);
      MEMORY[0x21CE94770](v111, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v112, -1, -1);
      MEMORY[0x21CE94770](v110, -1, -1);

      v151(v141, v149);
      (*(v109 + 8))(v143, v147);
    }

    else
    {

      v151(v105, v107);
      (*(v109 + 8))(v106, v108);
    }

    outlined destroy of CloudDevice(v104, type metadata accessor for CloudDevice);
LABEL_22:
    static CloudLog.LogEndInfo(_:)("declineNomination()", 19, 2, v0[30], &protocol witness table for CloudDevicesDB);

    v34 = v0[1];

    return v34();
  }

  v146(v0[39], v148, v99);
  v118 = Logger.logObject.getter();
  v119 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v118, v119))
  {
    v120 = v0[51];
    v121 = v0[48];
    v122 = swift_slowAlloc();
    v123 = swift_slowAlloc();
    v152[0] = v123;
    *v122 = 136446722;
    swift_beginAccess();
    v124 = StaticString.description.getter();
    v126 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v124, v125, v152);

    *(v122 + 4) = v126;
    *(v122 + 12) = 2082;
    *(v122 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000013, 0x8000000216583D00, v152);
    *(v122 + 22) = 2080;
    swift_beginAccess();
    v127 = (v120 + *(v121 + 32));
    if (v127[1])
    {
      v128 = *v127;
      v129 = v127[1];
    }

    else
    {
      v129 = 0xE700000000000000;
      v128 = 0x6E776F6E6B6E55;
    }

    v130 = v0;
    v135 = v0[39];
    v136 = v0[35];

    v137 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v128, v129, v152);

    *(v122 + 24) = v137;
    _os_log_impl(&dword_21607C000, v118, v119, "%{public}s.%{public}s Declined: %s", v122, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v123, -1, -1);
    MEMORY[0x21CE94770](v122, -1, -1);

    v133 = v135;
    v134 = v136;
  }

  else
  {
    v130 = v0;
    v131 = v0[39];
    v132 = v0[35];

    v133 = v131;
    v134 = v132;
  }

  v151(v133, v134);
  v138 = swift_task_alloc();
  v130[52] = v138;
  *v138 = v130;
  v138[1] = CloudDevicesDB.declineNomination();

  return CloudDevicesDB.checkDB(forceUpdate:)(1);
}

{
  v1 = *(*v0 + 232);

  return MEMORY[0x2822009F8](CloudDevicesDB.declineNomination(), v1, 0);
}

{
  v1 = v0[29];
  v2 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_cloudManager;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[53] = v3;
  if (v3 && (type metadata accessor for CloudManager(), swift_dynamicCastClass()))
  {
    swift_unknownObjectRetain();
    v4 = swift_task_alloc();
    v0[54] = v4;
    *v4 = v0;
    v4[1] = CloudDevicesDB.declineNomination();

    return specialized CloudManagerProtocol.refresh(force:wait:_:_:)(0, 0, 0xD000000000000013, 0x8000000216583D00, 1019);
  }

  else
  {
    v6 = v0[51];
    (*(v0[33] + 8))(v0[34], v0[32]);
    outlined destroy of CloudDevice(v6, type metadata accessor for CloudDevice);
    static CloudLog.LogEndInfo(_:)("declineNomination()", 19, 2, v0[30], &protocol witness table for CloudDevicesDB);

    v7 = v0[1];

    return v7();
  }
}

{
  v1 = *(*v0 + 232);

  return MEMORY[0x2822009F8](CloudDevicesDB.declineNomination(), v1, 0);
}

{
  swift_unknownObjectRelease();
  v1 = v0[51];
  (*(v0[33] + 8))(v0[34], v0[32]);
  outlined destroy of CloudDevice(v1, type metadata accessor for CloudDevice);
  static CloudLog.LogEndInfo(_:)("declineNomination()", 19, 2, v0[30], &protocol witness table for CloudDevicesDB);

  v2 = v0[1];

  return v2();
}

uint64_t CloudDevicesDB.abdicatePrimary()()
{
  v1[29] = v0;
  v1[30] = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v1[31] = swift_task_alloc();
  v2 = type metadata accessor for Date();
  v1[32] = v2;
  v1[33] = *(v2 - 8);
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[36] = v3;
  v1[37] = *(v3 - 8);
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSg_ADtMd);
  v1[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSgMd);
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v4 = type metadata accessor for CloudDevice();
  v1[49] = v4;
  v1[50] = *(v4 - 8);
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();

  return MEMORY[0x2822009F8](CloudDevicesDB.abdicatePrimary(), v0, 0);
}

{
  v154 = v0;
  v1 = v0[29];
  static CloudLog.LogBeginInfo(_:_:)(0, "abdicatePrimary()", 17, 2, v0[30], &protocol witness table for CloudDevicesDB);
  v2 = v1 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state;
  if (*(v1 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state) > 1u)
  {
    if (*(v1 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state) != 2)
    {
LABEL_18:
      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v23 = v0[39];
      v25 = v0[36];
      v24 = v0[37];
      v26 = __swift_project_value_buffer(v25, static CloudDevicesDB.Log);
      swift_beginAccess();
      (*(v24 + 16))(v23, v26, v25);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      v29 = os_log_type_enabled(v27, v28);
      v30 = v0[39];
      v32 = v0[36];
      v31 = v0[37];
      if (v29)
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v153[0] = v34;
        *v33 = 136446466;
        swift_beginAccess();
        v35 = StaticString.description.getter();
        v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, v153);

        *(v33 + 4) = v37;
        *(v33 + 12) = 2082;
        *(v33 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x8000000216583D20, v153);
        _os_log_impl(&dword_21607C000, v27, v28, "%{public}s.%{public}s Cannot abdicate primary", v33, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v34, -1, -1);
        MEMORY[0x21CE94770](v33, -1, -1);
      }

      (*(v31 + 8))(v30, v32);
      goto LABEL_23;
    }

    swift_bridgeObjectRelease_n();
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v3 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v4 = v0[49];
  v5 = v0[50];
  v6 = v0[48];
  CloudDevicesDB.currentDevice.getter(v6);
  v7 = *(v5 + 48);
  if (v7(v6, 1, v4) == 1)
  {
    outlined destroy of UTType?(v0[48], &_s9MomentsUI11CloudDeviceVSgMd);
    goto LABEL_18;
  }

  v8 = v0[52];
  v9 = v0[49];
  outlined init with take of CloudDevice(v0[48], v8, type metadata accessor for CloudDevice);
  v10 = v8 + *(v9 + 40);
  if (*(v10 + 8))
  {
    v11 = -1;
  }

  else
  {
    v11 = *v10;
  }

  CloudDevice.Idiom.init(rawValue:)(v11);
  if (LOBYTE(v153[0]) == 7)
  {
    goto LABEL_12;
  }

  v12 = v0[52];
  if (LOBYTE(v153[0]) != 1)
  {
    goto LABEL_17;
  }

  v151 = v2;
  v14 = v0[49];
  v13 = v0[50];
  v16 = v0[46];
  v15 = v0[47];
  v18 = v0[43];
  v17 = v0[44];
  outlined init with copy of CloudDevice(v12, v15, type metadata accessor for CloudDevice);
  (*(v13 + 56))(v15, 0, 1, v14);
  CloudDevicesDB.primaryDevice.getter(v16);
  v19 = *(v18 + 48);
  outlined init with copy of DateInterval?(v15, v17, &_s9MomentsUI11CloudDeviceVSgMd);
  outlined init with copy of DateInterval?(v16, v17 + v19, &_s9MomentsUI11CloudDeviceVSgMd);
  v20 = v7(v17, 1, v14);
  v21 = v0[49];
  if (v20 == 1)
  {
    v22 = v0[47];
    outlined destroy of UTType?(v0[46], &_s9MomentsUI11CloudDeviceVSgMd);
    outlined destroy of UTType?(v22, &_s9MomentsUI11CloudDeviceVSgMd);
    if (v7(v17 + v19, 1, v21) == 1)
    {
      outlined destroy of UTType?(v0[44], &_s9MomentsUI11CloudDeviceVSgMd);
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  outlined init with copy of DateInterval?(v0[44], v0[45], &_s9MomentsUI11CloudDeviceVSgMd);
  if (v7(v17 + v19, 1, v21) == 1)
  {
    v40 = v0[47];
    v41 = v0[45];
    outlined destroy of UTType?(v0[46], &_s9MomentsUI11CloudDeviceVSgMd);
    outlined destroy of UTType?(v40, &_s9MomentsUI11CloudDeviceVSgMd);
    outlined destroy of CloudDevice(v41, type metadata accessor for CloudDevice);
LABEL_28:
    outlined destroy of UTType?(v0[44], &_s9MomentsUI11CloudDeviceVSg_ADtMd);
LABEL_12:
    v12 = v0[52];
LABEL_17:
    outlined destroy of CloudDevice(v12, type metadata accessor for CloudDevice);
    goto LABEL_18;
  }

  v42 = v0[51];
  v44 = v0[46];
  v43 = v0[47];
  v46 = v0[44];
  v45 = v0[45];
  outlined init with take of CloudDevice(v17 + v19, v42, type metadata accessor for CloudDevice);
  v47 = specialized static CloudDevice.== infix(_:_:)(v45, v42);
  outlined destroy of CloudDevice(v42, type metadata accessor for CloudDevice);
  outlined destroy of UTType?(v44, &_s9MomentsUI11CloudDeviceVSgMd);
  outlined destroy of UTType?(v43, &_s9MomentsUI11CloudDeviceVSgMd);
  outlined destroy of CloudDevice(v45, type metadata accessor for CloudDevice);
  outlined destroy of UTType?(v46, &_s9MomentsUI11CloudDeviceVSgMd);
  if ((v47 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_30:
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v48 = v0[42];
  v50 = v0[36];
  v49 = v0[37];
  v51 = __swift_project_value_buffer(v50, static CloudDevicesDB.Log);
  swift_beginAccess();
  v148 = v51;
  v146 = *(v49 + 16);
  v146(v48, v51, v50);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.info.getter();
  v54 = os_log_type_enabled(v52, v53);
  v55 = v0[42];
  v57 = v0[36];
  v56 = v0[37];
  if (v54)
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v153[0] = v59;
    *v58 = 136446466;
    swift_beginAccess();
    v60 = StaticString.description.getter();
    v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v61, v153);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    *(v58 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x8000000216583D20, v153);
    _os_log_impl(&dword_21607C000, v52, v53, "%{public}s.%{public}s Abdicating Primary", v58, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v59, -1, -1);
    MEMORY[0x21CE94770](v58, -1, -1);
  }

  v150 = *(v56 + 8);
  v150(v55, v57);
  v63 = v0[52];
  v64 = v0[49];
  v65 = v0[35];
  v145 = v0;
  v66 = v0[32];
  v67 = v0[33];
  v68 = v0[31];
  static Date.now.getter();
  v69 = v64[7];
  outlined destroy of UTType?(v63 + v69, &_s10Foundation4DateVSgMd);
  v70 = *(v67 + 16);
  v70(v63 + v69, v65, v66);
  v71 = *(v67 + 56);
  v71(v63 + v69, 0, 1, v66);
  static Date.distantPast.getter();
  v71(v68, 0, 1, v66);
  outlined assign with take of Date?(v68, v63 + v64[14]);
  v72 = v64[16];
  outlined destroy of UTType?(v63 + v72, &_s10Foundation4DateVSgMd);
  v70(v63 + v72, v65, v66);
  v71(v63 + v72, 0, 1, v66);
  static Date.distantPast.getter();
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v73 = static DefaultsManager.momentsUI;
  v0 = v145;
  if (static DefaultsManager.momentsUI)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    v75 = MEMORY[0x21CE91FC0](0xD000000000000011, 0x8000000216581190);
    [v73 setValue:isa forKey:v75];
  }

  v76 = v145[41];
  v77 = v145[36];
  v79 = v145[33];
  v78 = v145[34];
  v80 = v145[32];
  v81 = *(v79 + 8);
  v145[53] = v81;
  v145[54] = (v79 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v144 = v81;
  v81(v78, v80);
  v82 = CloudDevice.description()();
  v146(v76, v148, v77);
  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.debug.getter();
  v85 = os_log_type_enabled(v83, v84);
  v86 = v145[41];
  v87 = v145[36];
  if (v85)
  {
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v153[0] = v89;
    *v88 = 136446722;
    swift_beginAccess();
    v90 = StaticString.description.getter();
    v142 = v87;
    v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v91, v153);

    *(v88 + 4) = v92;
    *(v88 + 12) = 2082;
    *(v88 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x8000000216583D20, v153);
    *(v88 + 22) = 2080;
    v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82._countAndFlagsBits, v82._object, v153);

    *(v88 + 24) = v93;
    _os_log_impl(&dword_21607C000, v83, v84, "%{public}s.%{public}s Updating DevicesDB with:\n%s", v88, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v89, -1, -1);
    MEMORY[0x21CE94770](v88, -1, -1);

    v95 = v142;
    v94 = v86;
  }

  else
  {

    v94 = v86;
    v95 = v87;
  }

  v150(v94, v95);
  v97 = v145[51];
  v96 = v145[52];
  v98 = *v96;
  v99 = v96[1];
  outlined init with copy of CloudDevice(v96, v97, type metadata accessor for CloudDevice);
  v100 = *(v151 + 8);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v153[0] = v100;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v97, v98, v99, isUniquelyReferenced_nonNull_native);

  *(v151 + 8) = v153[0];

  CloudDevicesDB.persistLocalData()();
  v103 = v145[36];
  if (v102)
  {
    v146(v145[38], v148, v103);
    v104 = v102;
    v105 = Logger.logObject.getter();
    v106 = static os_log_type_t.error.getter();

    v107 = os_log_type_enabled(v105, v106);
    v108 = v145[52];
    v109 = v145[38];
    v110 = v145[35];
    v111 = v145[36];
    v112 = v145[32];
    if (v107)
    {
      v152 = v145[36];
      v113 = swift_slowAlloc();
      v149 = v112;
      v114 = swift_slowAlloc();
      v147 = v110;
      v115 = swift_slowAlloc();
      v153[0] = v115;
      *v113 = 136446722;
      swift_beginAccess();
      v116 = StaticString.description.getter();
      v143 = v109;
      v118 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v116, v117, v153);

      *(v113 + 4) = v118;
      *(v113 + 12) = 2082;
      *(v113 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x8000000216583D20, v153);
      *(v113 + 22) = 2112;
      v119 = v102;
      v120 = _swift_stdlib_bridgeErrorToNSError();
      *(v113 + 24) = v120;
      *v114 = v120;
      _os_log_impl(&dword_21607C000, v105, v106, "%{public}s.%{public}s Failed to persist local data: %@", v113, 0x20u);
      outlined destroy of UTType?(v114, &_sSo8NSObjectCSgMd);
      MEMORY[0x21CE94770](v114, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v115, -1, -1);
      MEMORY[0x21CE94770](v113, -1, -1);

      v150(v143, v152);
      v144(v147, v149);
    }

    else
    {

      v150(v109, v111);
      v144(v110, v112);
    }

    outlined destroy of CloudDevice(v108, type metadata accessor for CloudDevice);
LABEL_23:
    static CloudLog.LogEndInfo(_:)("abdicatePrimary()", 17, 2, v0[30], &protocol witness table for CloudDevicesDB);

    v38 = v0[1];

    return v38();
  }

  v146(v145[40], v148, v103);
  v121 = Logger.logObject.getter();
  v122 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v121, v122))
  {
    v123 = v145[52];
    v124 = v145[49];
    v125 = swift_slowAlloc();
    v126 = swift_slowAlloc();
    v153[0] = v126;
    *v125 = 136446722;
    swift_beginAccess();
    v127 = StaticString.description.getter();
    v129 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v127, v128, v153);

    *(v125 + 4) = v129;
    *(v125 + 12) = 2082;
    *(v125 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x8000000216583D20, v153);
    *(v125 + 22) = 2080;
    swift_beginAccess();
    v130 = (v123 + *(v124 + 32));
    if (v130[1])
    {
      v131 = *v130;
      v132 = v130[1];
    }

    else
    {
      v132 = 0xE700000000000000;
      v131 = 0x6E776F6E6B6E55;
    }

    v133 = v145;
    v138 = v145[40];
    v139 = v145[36];

    v140 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v131, v132, v153);

    *(v125 + 24) = v140;
    _os_log_impl(&dword_21607C000, v121, v122, "%{public}s.%{public}s Abdicated: %s", v125, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v126, -1, -1);
    MEMORY[0x21CE94770](v125, -1, -1);

    v136 = v138;
    v137 = v139;
  }

  else
  {
    v133 = v145;
    v134 = v145[40];
    v135 = v145[36];

    v136 = v134;
    v137 = v135;
  }

  v150(v136, v137);
  v141 = swift_task_alloc();
  v133[55] = v141;
  *v141 = v133;
  v141[1] = CloudDevicesDB.abdicatePrimary();

  return CloudDevicesDB.checkDB(forceUpdate:)(1);
}

{
  v1 = *(*v0 + 232);

  return MEMORY[0x2822009F8](CloudDevicesDB.abdicatePrimary(), v1, 0);
}

{
  v1 = *(v0 + 232);
  v2 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_cloudManager;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v0 + 448) = v3;
  if (v3 && (type metadata accessor for CloudManager(), swift_dynamicCastClass()))
  {
    swift_unknownObjectRetain();
    v4 = swift_task_alloc();
    *(v0 + 456) = v4;
    *v4 = v0;
    v4[1] = CloudDevicesDB.abdicatePrimary();

    return specialized CloudManagerProtocol.refresh(force:wait:_:_:)(1, 0, 0xD000000000000011, 0x8000000216583D20, 1061);
  }

  else
  {
    v6 = *(v0 + 416);
    (*(v0 + 424))(*(v0 + 280), *(v0 + 256));
    outlined destroy of CloudDevice(v6, type metadata accessor for CloudDevice);
    static CloudLog.LogEndInfo(_:)("abdicatePrimary()", 17, 2, *(v0 + 240), &protocol witness table for CloudDevicesDB);

    v7 = *(v0 + 8);

    return v7();
  }
}

{
  v1 = *(*v0 + 232);

  return MEMORY[0x2822009F8](CloudDevicesDB.abdicatePrimary(), v1, 0);
}

{
  swift_unknownObjectRelease();
  v1 = *(v0 + 416);
  (*(v0 + 424))(*(v0 + 280), *(v0 + 256));
  outlined destroy of CloudDevice(v1, type metadata accessor for CloudDevice);
  static CloudLog.LogEndInfo(_:)("abdicatePrimary()", 17, 2, *(v0 + 240), &protocol witness table for CloudDevicesDB);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t CloudDevicesDB.clearNewlyOnboardedDevices()()
{
  v1[29] = v0;
  v1[30] = *v0;
  v2 = type metadata accessor for Date();
  v1[31] = v2;
  v1[32] = *(v2 - 8);
  v1[33] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[34] = v3;
  v1[35] = *(v3 - 8);
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSg_ADtMd);
  v1[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSgMd);
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v4 = type metadata accessor for CloudDevice();
  v1[47] = v4;
  v1[48] = *(v4 - 8);
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();

  return MEMORY[0x2822009F8](CloudDevicesDB.clearNewlyOnboardedDevices(), v0, 0);
}

{
  v148 = v0;
  v1 = v0[29];
  static CloudLog.LogBeginInfo(_:_:)(0, "clearNewlyOnboardedDevices()", 28, 2, v0[30], &protocol witness table for CloudDevicesDB);
  v2 = v1 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state;
  if (*(v1 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state) > 1u)
  {
    if (*(v1 + OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB__state) != 2)
    {
LABEL_18:
      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v23 = v0[37];
      v25 = v0[34];
      v24 = v0[35];
      v26 = __swift_project_value_buffer(v25, static CloudDevicesDB.Log);
      swift_beginAccess();
      (*(v24 + 16))(v23, v26, v25);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      v29 = os_log_type_enabled(v27, v28);
      v30 = v0[37];
      v32 = v0[34];
      v31 = v0[35];
      if (v29)
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v147[0] = v34;
        *v33 = 136446466;
        swift_beginAccess();
        v35 = StaticString.description.getter();
        v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, v147);

        *(v33 + 4) = v37;
        *(v33 + 12) = 2082;
        *(v33 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000216583D40, v147);
        _os_log_impl(&dword_21607C000, v27, v28, "%{public}s.%{public}s Cannot clear newly onboarded devices", v33, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v34, -1, -1);
        MEMORY[0x21CE94770](v33, -1, -1);
      }

      (*(v31 + 8))(v30, v32);
      goto LABEL_23;
    }

    swift_bridgeObjectRelease_n();
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v3 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v4 = v0[47];
  v5 = v0[48];
  v6 = v0[46];
  CloudDevicesDB.currentDevice.getter(v6);
  v7 = *(v5 + 48);
  if (v7(v6, 1, v4) == 1)
  {
    outlined destroy of UTType?(v0[46], &_s9MomentsUI11CloudDeviceVSgMd);
    goto LABEL_18;
  }

  v8 = v0[50];
  v9 = v0[47];
  outlined init with take of CloudDevice(v0[46], v8, type metadata accessor for CloudDevice);
  v10 = v8 + *(v9 + 40);
  if (*(v10 + 8))
  {
    v11 = -1;
  }

  else
  {
    v11 = *v10;
  }

  CloudDevice.Idiom.init(rawValue:)(v11);
  if (LOBYTE(v147[0]) == 7)
  {
    goto LABEL_12;
  }

  v12 = v0[50];
  if (LOBYTE(v147[0]) != 1)
  {
    goto LABEL_17;
  }

  v146 = v2;
  v14 = v0[47];
  v13 = v0[48];
  v16 = v0[44];
  v15 = v0[45];
  v18 = v0[41];
  v17 = v0[42];
  outlined init with copy of CloudDevice(v12, v15, type metadata accessor for CloudDevice);
  (*(v13 + 56))(v15, 0, 1, v14);
  CloudDevicesDB.primaryDevice.getter(v16);
  v19 = *(v18 + 48);
  outlined init with copy of DateInterval?(v15, v17, &_s9MomentsUI11CloudDeviceVSgMd);
  outlined init with copy of DateInterval?(v16, v17 + v19, &_s9MomentsUI11CloudDeviceVSgMd);
  v20 = v7(v17, 1, v14);
  v21 = v0[47];
  if (v20 == 1)
  {
    v22 = v0[45];
    outlined destroy of UTType?(v0[44], &_s9MomentsUI11CloudDeviceVSgMd);
    outlined destroy of UTType?(v22, &_s9MomentsUI11CloudDeviceVSgMd);
    if (v7(v17 + v19, 1, v21) == 1)
    {
      outlined destroy of UTType?(v0[42], &_s9MomentsUI11CloudDeviceVSgMd);
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  outlined init with copy of DateInterval?(v0[42], v0[43], &_s9MomentsUI11CloudDeviceVSgMd);
  if (v7(v17 + v19, 1, v21) == 1)
  {
    v40 = v0[45];
    v41 = v0[43];
    outlined destroy of UTType?(v0[44], &_s9MomentsUI11CloudDeviceVSgMd);
    outlined destroy of UTType?(v40, &_s9MomentsUI11CloudDeviceVSgMd);
    outlined destroy of CloudDevice(v41, type metadata accessor for CloudDevice);
LABEL_28:
    outlined destroy of UTType?(v0[42], &_s9MomentsUI11CloudDeviceVSg_ADtMd);
LABEL_12:
    v12 = v0[50];
LABEL_17:
    outlined destroy of CloudDevice(v12, type metadata accessor for CloudDevice);
    goto LABEL_18;
  }

  v42 = v0[49];
  v44 = v0[44];
  v43 = v0[45];
  v46 = v0[42];
  v45 = v0[43];
  outlined init with take of CloudDevice(v17 + v19, v42, type metadata accessor for CloudDevice);
  v47 = specialized static CloudDevice.== infix(_:_:)(v45, v42);
  outlined destroy of CloudDevice(v42, type metadata accessor for CloudDevice);
  outlined destroy of UTType?(v44, &_s9MomentsUI11CloudDeviceVSgMd);
  outlined destroy of UTType?(v43, &_s9MomentsUI11CloudDeviceVSgMd);
  outlined destroy of CloudDevice(v45, type metadata accessor for CloudDevice);
  outlined destroy of UTType?(v46, &_s9MomentsUI11CloudDeviceVSgMd);
  if ((v47 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_30:
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v48 = v0[40];
  v50 = v0[34];
  v49 = v0[35];
  v51 = __swift_project_value_buffer(v50, static CloudDevicesDB.Log);
  swift_beginAccess();
  v142 = v51;
  v141 = *(v49 + 16);
  v141(v48, v51, v50);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.info.getter();
  v54 = os_log_type_enabled(v52, v53);
  v55 = v0[40];
  v57 = v0[34];
  v56 = v0[35];
  if (v54)
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v147[0] = v59;
    *v58 = 136446466;
    swift_beginAccess();
    v60 = StaticString.description.getter();
    v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v61, v147);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    *(v58 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000216583D40, v147);
    _os_log_impl(&dword_21607C000, v52, v53, "%{public}s.%{public}s Clearing list of newly onboarded devices", v58, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v59, -1, -1);
    MEMORY[0x21CE94770](v58, -1, -1);
  }

  v145 = *(v56 + 8);
  v145(v55, v57);
  v63 = v0[50];
  v64 = v0[47];
  v66 = v0[32];
  v65 = v0[33];
  v67 = v0[31];
  static Date.now.getter();
  v68 = *(v64 + 28);
  outlined destroy of UTType?(v63 + v68, &_s10Foundation4DateVSgMd);
  v69 = *(v66 + 16);
  v69(v63 + v68, v65, v67);
  v70 = *(v66 + 56);
  v70(v63 + v68, 0, 1, v67);
  v71 = *(v64 + 84);
  outlined destroy of UTType?(v63 + v71, &_s10Foundation4DateVSgMd);
  v69(v63 + v71, v65, v67);
  v70(v63 + v71, 0, 1, v67);
  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v72 = static DefaultsManager.momentsUI;
  if (static DefaultsManager.momentsUI)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    v74 = MEMORY[0x21CE91FC0](0xD000000000000023, 0x8000000216581160);
    [v72 setValue:isa forKey:v74];
  }

  v75 = v0[39];
  v76 = v0[34];
  v77 = CloudDevice.description()();
  v141(v75, v142, v76);
  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.debug.getter();
  v80 = os_log_type_enabled(v78, v79);
  v81 = v0[39];
  v82 = v0[34];
  if (v80)
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v147[0] = v84;
    *v83 = 136446722;
    swift_beginAccess();
    v85 = StaticString.description.getter();
    v138 = v82;
    v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v86, v147);

    *(v83 + 4) = v87;
    *(v83 + 12) = 2082;
    *(v83 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000216583D40, v147);
    *(v83 + 22) = 2080;
    v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77._countAndFlagsBits, v77._object, v147);

    *(v83 + 24) = v88;
    _os_log_impl(&dword_21607C000, v78, v79, "%{public}s.%{public}s Updating DevicesDB with:\n%s", v83, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v84, -1, -1);
    MEMORY[0x21CE94770](v83, -1, -1);

    v90 = v138;
    v89 = v81;
  }

  else
  {

    v89 = v81;
    v90 = v82;
  }

  v145(v89, v90);
  v92 = v0[49];
  v91 = v0[50];
  v93 = *v91;
  v94 = v91[1];
  outlined init with copy of CloudDevice(v91, v92, type metadata accessor for CloudDevice);
  v95 = *(v146 + 8);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v147[0] = v95;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v92, v93, v94, isUniquelyReferenced_nonNull_native);

  *(v146 + 8) = v147[0];

  CloudDevicesDB.persistLocalData()();
  v98 = v0[34];
  if (v97)
  {
    v141(v0[36], v142, v98);
    v99 = v97;
    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.error.getter();

    v102 = os_log_type_enabled(v100, v101);
    v103 = v0[50];
    v104 = v0[36];
    v105 = v0[33];
    v106 = v0[34];
    v107 = v0[31];
    v108 = v0[32];
    if (v102)
    {
      v144 = v0[34];
      v109 = swift_slowAlloc();
      v143 = v107;
      v110 = swift_slowAlloc();
      v140 = v105;
      v111 = swift_slowAlloc();
      v147[0] = v111;
      *v109 = 136446722;
      swift_beginAccess();
      v112 = StaticString.description.getter();
      v139 = v104;
      v114 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v112, v113, v147);

      *(v109 + 4) = v114;
      *(v109 + 12) = 2082;
      *(v109 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000216583D40, v147);
      *(v109 + 22) = 2112;
      v115 = v97;
      v116 = _swift_stdlib_bridgeErrorToNSError();
      *(v109 + 24) = v116;
      *v110 = v116;
      _os_log_impl(&dword_21607C000, v100, v101, "%{public}s.%{public}s Failed to persist local data: %@", v109, 0x20u);
      outlined destroy of UTType?(v110, &_sSo8NSObjectCSgMd);
      MEMORY[0x21CE94770](v110, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v111, -1, -1);
      MEMORY[0x21CE94770](v109, -1, -1);

      v145(v139, v144);
      (*(v108 + 8))(v140, v143);
    }

    else
    {

      v145(v104, v106);
      (*(v108 + 8))(v105, v107);
    }

    outlined destroy of CloudDevice(v103, type metadata accessor for CloudDevice);
LABEL_23:
    static CloudLog.LogEndInfo(_:)("clearNewlyOnboardedDevices()", 28, 2, v0[30], &protocol witness table for CloudDevicesDB);

    v38 = v0[1];

    return v38();
  }

  v141(v0[38], v142, v98);
  v117 = Logger.logObject.getter();
  v118 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v117, v118))
  {
    v119 = v0[50];
    v120 = v0[47];
    v121 = swift_slowAlloc();
    v122 = swift_slowAlloc();
    v147[0] = v122;
    *v121 = 136446722;
    swift_beginAccess();
    v123 = StaticString.description.getter();
    v125 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v123, v124, v147);

    *(v121 + 4) = v125;
    *(v121 + 12) = 2082;
    *(v121 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000216583D40, v147);
    *(v121 + 22) = 2080;
    swift_beginAccess();
    v126 = (v119 + *(v120 + 32));
    if (v126[1])
    {
      v127 = *v126;
      v128 = v126[1];
    }

    else
    {
      v128 = 0xE700000000000000;
      v127 = 0x6E776F6E6B6E55;
    }

    v129 = v0;
    v134 = v0[38];
    v135 = v0[34];

    v136 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v127, v128, v147);

    *(v121 + 24) = v136;
    _os_log_impl(&dword_21607C000, v117, v118, "%{public}s.%{public}s clearNewlyOnboardedDevices: %s", v121, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v122, -1, -1);
    MEMORY[0x21CE94770](v121, -1, -1);

    v132 = v134;
    v133 = v135;
  }

  else
  {
    v129 = v0;
    v130 = v0[38];
    v131 = v0[34];

    v132 = v130;
    v133 = v131;
  }

  v145(v132, v133);
  v137 = swift_task_alloc();
  v129[51] = v137;
  *v137 = v129;
  v137[1] = CloudDevicesDB.clearNewlyOnboardedDevices();

  return CloudDevicesDB.checkDB(forceUpdate:)(1);
}

{
  v1 = *(*v0 + 232);

  return MEMORY[0x2822009F8](CloudDevicesDB.clearNewlyOnboardedDevices(), v1, 0);
}

{
  v1 = v0[29];
  v2 = OBJC_IVAR____TtC9MomentsUI14CloudDevicesDB_cloudManager;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[52] = v3;
  if (v3 && (type metadata accessor for CloudManager(), swift_dynamicCastClass()))
  {
    swift_unknownObjectRetain();
    v4 = swift_task_alloc();
    v0[53] = v4;
    *v4 = v0;
    v4[1] = CloudDevicesDB.clearNewlyOnboardedDevices();

    return specialized CloudManagerProtocol.refresh(force:wait:_:_:)(1, 0, 0xD00000000000001CLL, 0x8000000216583D40, 1102);
  }

  else
  {
    v6 = v0[50];
    (*(v0[32] + 8))(v0[33], v0[31]);
    outlined destroy of CloudDevice(v6, type metadata accessor for CloudDevice);
    static CloudLog.LogEndInfo(_:)("clearNewlyOnboardedDevices()", 28, 2, v0[30], &protocol witness table for CloudDevicesDB);

    v7 = v0[1];

    return v7();
  }
}

{
  v1 = *(*v0 + 232);

  return MEMORY[0x2822009F8](CloudDevicesDB.clearNewlyOnboardedDevices(), v1, 0);
}

{
  swift_unknownObjectRelease();
  v1 = v0[50];
  (*(v0[32] + 8))(v0[33], v0[31]);
  outlined destroy of CloudDevice(v1, type metadata accessor for CloudDevice);
  static CloudLog.LogEndInfo(_:)("clearNewlyOnboardedDevices()", 28, 2, v0[30], &protocol witness table for CloudDevicesDB);

  v2 = v0[1];

  return v2();
}