id specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v10 = v7[2];
  v11 = (v8 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_17;
  }

  v13 = v8;
  v14 = v7[3];
  if (v14 < v12 || (a3 & 1) == 0)
  {
    if (v14 >= v12 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v12, a3 & 1);
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v13 & 1) == (v24 & 1))
    {
      v9 = v23;
      v15 = *v4;
      if (v13)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordZoneID);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v15 = *v4;
  if (v13)
  {
LABEL_8:
    v16 = v15[7];
    Changes = type metadata accessor for CKSyncEngine.FetchChangesOptions.ZoneConfiguration();
    v18 = *(Changes - 8);
    v19 = *(v18 + 40);
    v20 = Changes;
    v21 = v16 + *(v18 + 72) * v9;

    return v19(v21, a1, v20);
  }

LABEL_13:
  specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v15);

  return a2;
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, char a2, void *a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_16;
  }

  v16 = v11;
  v17 = v9[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      v18 = v10;
      specialized _NativeDictionary.copy()();
      v10 = v18;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, a4 & 1);
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
    if ((v16 & 1) != (v19 & 1))
    {
LABEL_16:
      type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordID);
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v20 = *v5;
  if (v16)
  {
    v21 = v20[7] + 16 * v10;
    v22 = *v21;
    *v21 = a1;
    *(v21 + 8) = a2 & 1;

    outlined consume of Result<CKRecord, Error>(v22);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v10, a3, a1, a2 & 1, v20);

    v23 = a3;
  }
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v15 = *(v12 + 16);
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = *(v12 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, a3 & 1);
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      specialized _NativeDictionary._insert(at:key:value:)(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = *(v20 + 56);
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v5 = v4;
  v26 = a1;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  result = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= result && (a4 & 1) != 0)
  {
    goto LABEL_9;
  }

  if (v20 >= result && (a4 & 1) == 0)
  {
    result = specialized _NativeDictionary.copy()();
    goto LABEL_9;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(result, a4 & 1);
  result = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  if ((v19 & 1) != (v21 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v15 = result;
LABEL_9:
  v22 = v26;
  v23 = *v5;
  if (v19)
  {
    v24 = v23[7] + 16 * v15;
    *v24 = v26;
    *(v24 + 8) = a2;
  }

  else
  {
    (*(v10 + 16))(v12, a3, v9);
    return specialized _NativeDictionary._insert(at:key:value:)(v15, v12, v22, a2, v23);
  }

  return result;
}

uint64_t outlined assign with take of CloudMetaDevice(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for closure #1 in closure #1 in MusicPlaybackCoordinatorService.handlePlayPauseButtonChange(viewModel:)(uint64_t a1)
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

  return closure #1 in closure #1 in MusicPlaybackCoordinatorService.handlePlayPauseButtonChange(viewModel:)(a1, v4, v5, v6, v7, v9, v8);
}

void DBAssetDataComparable.hash(into:)()
{
  v0 = DBAssetData.data.getter();
  if (v1 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v2 = v0;
    v3 = v1;
    Hasher._combine(_:)(1u);
    Data.hash(into:)();

    outlined consume of Data?(v2, v3);
  }
}

uint64_t DBAssetDataComparable.__allocating_init(id:size:sha256:assetClass:inlineData:filePath:blobFolderPath:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unsigned __int8 *a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v43 = a8;
  v39 = a6;
  v40 = a7;
  v47 = a3;
  v48 = a4;
  v36 = a2;
  v41 = a1;
  v45 = a11;
  v44 = a10;
  v42 = a9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v33 - v14;
  v16 = type metadata accessor for UUID();
  v46 = v16;
  v49 = *(v16 - 8);
  v17 = v49;
  MEMORY[0x28223BE20](v16);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v19;
  v20 = swift_allocObject();
  v37 = *a5;
  v34 = *(v17 + 16);
  v34(v19, a1, v16);
  v21 = type metadata accessor for DBAssetData();
  *(v20 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy9MomentsUI07DBAssetB0C_AGQo_Md);
  v35 = type metadata accessor for DBAssetData;
  v22 = lazy protocol witness table accessor for type DBAssetData and conformance DBAssetData(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
  v67 = v21;
  v68 = v21;
  v69 = v22;
  v70 = v22;
  *(v20 + 80) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v20 + 48));
  static PersistentModel.createBackingData<A>()();
  *(v20 + 16) = 16843009;
  *(v20 + 20) = 257;
  *(v20 + 22) = 1;
  *(v20 + 32) = 0;
  *(v20 + 24) = 0;
  v38 = (v20 + 24);
  __swift_project_boxed_opaque_existential_1((v20 + 48), *(v20 + 72));
  swift_getKeyPath();
  v67 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI12DBSuggestionCGSgMd);
  type metadata accessor for DBSuggestion();
  lazy protocol witness table accessor for type [DBSuggestion]? and conformance <A> A?();
  dispatch thunk of BackingData.setValue<A, B>(forKey:to:)();

  *(v20 + 40) = 0;
  ObservationRegistrar.init()();
  v23 = v46;
  v34(v15, v50, v46);
  (*(v49 + 56))(v15, 0, 1, v23);
  v67 = v20;
  swift_getKeyPath();
  v65 = v20;
  v66 = v15;
  lazy protocol witness table accessor for type DBAssetData and conformance DBAssetData(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, v35);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  outlined destroy of UUID?(v15);
  v67 = v20;
  swift_getKeyPath();
  v62 = v20;
  v63 = v36;
  v64 = 0;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v67 = v20;
  swift_getKeyPath();
  v25 = v47;
  v24 = v48;
  v59 = v20;
  v60 = v47;
  v61 = v48;
  outlined copy of Data._Representation(v47, v48);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  outlined consume of Data._Representation(v25, v24);

  v67 = v20;
  swift_getKeyPath();
  v57 = v20;
  v58 = v37;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v67 = v20;
  swift_getKeyPath();
  v26 = v39;
  v27 = v40;
  v54 = v20;
  v55 = v39;
  v56 = v40;
  outlined copy of Data?(v39, v40);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  outlined consume of Data?(v26, v27);

  v67 = v20;
  swift_getKeyPath();
  v51 = v20;
  v52 = v43;
  v53 = v42;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v28 = v38;
  swift_beginAccess();
  v29 = v45;
  *v28 = v44;
  *(v20 + 32) = v29;

  DBAssetData.refreshAssetLoaded()();
  outlined consume of Data?(v26, v27);
  outlined consume of Data._Representation(v47, v48);
  v30 = *(v49 + 8);
  v31 = v46;
  v30(v41, v46);
  v30(v50, v31);
  return v20;
}

uint64_t DBAssetDataComparable.init(id:size:sha256:assetClass:inlineData:filePath:blobFolderPath:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unsigned __int8 *a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v40 = a1;
  v41 = a8;
  v37 = a6;
  v38 = a7;
  v45 = a3;
  v46 = a4;
  v34 = a2;
  v43 = a11;
  v42 = a10;
  v39 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v31 - v15;
  v44 = type metadata accessor for UUID();
  v47 = *(v44 - 8);
  v17 = v47;
  MEMORY[0x28223BE20](v44);
  v48 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *a5;
  v32 = *(v17 + 16);
  v32();
  v19 = type metadata accessor for DBAssetData();
  *(v12 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy9MomentsUI07DBAssetB0C_AGQo_Md);
  v33 = type metadata accessor for DBAssetData;
  v20 = lazy protocol witness table accessor for type DBAssetData and conformance DBAssetData(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
  v65 = v19;
  v66 = v19;
  v67 = v20;
  v68 = v20;
  *(v12 + 80) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v12 + 48));
  static PersistentModel.createBackingData<A>()();
  *(v12 + 16) = 16843009;
  *(v12 + 20) = 257;
  *(v12 + 22) = 1;
  *(v12 + 32) = 0;
  *(v12 + 24) = 0;
  v36 = (v12 + 24);
  __swift_project_boxed_opaque_existential_1((v12 + 48), *(v12 + 72));
  swift_getKeyPath();
  v65 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI12DBSuggestionCGSgMd);
  type metadata accessor for DBSuggestion();
  lazy protocol witness table accessor for type [DBSuggestion]? and conformance <A> A?();
  dispatch thunk of BackingData.setValue<A, B>(forKey:to:)();

  *(v12 + 40) = 0;
  ObservationRegistrar.init()();
  v21 = v44;
  (v32)(v16, v48, v44);
  (*(v47 + 56))(v16, 0, 1, v21);
  v65 = v12;
  swift_getKeyPath();
  v63 = v12;
  v64 = v16;
  lazy protocol witness table accessor for type DBAssetData and conformance DBAssetData(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, v33);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  outlined destroy of UUID?(v16);
  v65 = v12;
  swift_getKeyPath();
  v60 = v12;
  v61 = v34;
  v62 = 0;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v65 = v12;
  swift_getKeyPath();
  v23 = v45;
  v22 = v46;
  v57 = v12;
  v58 = v45;
  v59 = v46;
  outlined copy of Data._Representation(v45, v46);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  outlined consume of Data._Representation(v23, v22);

  v65 = v12;
  swift_getKeyPath();
  v55 = v12;
  v56 = v35;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v65 = v12;
  swift_getKeyPath();
  v24 = v37;
  v25 = v38;
  v52 = v12;
  v53 = v37;
  v54 = v38;
  outlined copy of Data?(v37, v38);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  outlined consume of Data?(v24, v25);

  v65 = v12;
  swift_getKeyPath();
  v49 = v12;
  v50 = v41;
  v51 = v39;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v26 = v36;
  swift_beginAccess();
  v27 = v43;
  *v26 = v42;
  *(v12 + 32) = v27;

  DBAssetData.refreshAssetLoaded()();
  outlined consume of Data?(v24, v25);
  outlined consume of Data._Representation(v45, v46);
  v28 = *(v47 + 8);
  v29 = v44;
  v28(v40, v44);
  v28(v48, v29);
  return v12;
}

uint64_t DBAssetDataComparable.__allocating_init(backingData:)(uint64_t a1)
{
  swift_allocObject();
  outlined init with copy of DBObject(a1, v4);
  v2 = DBAssetData.init(backingData:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t DBAssetDataComparable.init(backingData:)(uint64_t a1)
{
  outlined init with copy of DBObject(a1, v4);
  v2 = DBAssetData.init(backingData:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t DBAssetDataComparable.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 48);
  v1 = OBJC_IVAR____TtC9MomentsUI11DBAssetData___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t DBAssetDataComparable.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 48);
  v1 = OBJC_IVAR____TtC9MomentsUI11DBAssetData___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t DBAssetData.comparable.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v47 - v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v47 - v10;
  v12 = (*(*v0 + 288))(v9);
  if (v13)
  {
    return 0;
  }

  v14 = v12;
  v15 = (*(*v0 + 240))();
  if (v16 >> 60 == 15)
  {
    return 0;
  }

  v61 = v15;
  v62 = v16;
  v18 = UUID.init()();
  v19 = (*(*v0 + 360))(&v68, v18);
  v52 = v68;
  v20 = (*(*v0 + 456))(v19);
  v54 = v21;
  v55 = v20;
  v22 = (*(*v0 + 504))();
  v56 = v23;
  v57 = v22;
  v24 = (*(*v0 + 528))();
  v58 = v25;
  v59 = v24;
  type metadata accessor for DBAssetDataComparable();
  v26 = swift_allocObject();
  v63 = v5;
  v47 = *(v5 + 16);
  v60 = v4;
  v47(v8, v11, v4);
  v27 = type metadata accessor for DBAssetData();
  *(v26 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy9MomentsUI07DBAssetB0C_AGQo_Md);
  v48 = type metadata accessor for DBAssetData;
  v28 = lazy protocol witness table accessor for type DBAssetData and conformance DBAssetData(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
  v49 = v14;
  v50 = v8;
  v64 = v27;
  v65 = v27;
  v66 = v28;
  v67 = v28;
  *(v26 + 80) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v26 + 48));
  static PersistentModel.createBackingData<A>()();
  *(v26 + 16) = 16843009;
  *(v26 + 20) = 257;
  *(v26 + 22) = 1;
  *(v26 + 32) = 0;
  *(v26 + 24) = 0;
  v51 = (v26 + 24);
  __swift_project_boxed_opaque_existential_1((v26 + 48), *(v26 + 72));
  swift_getKeyPath();
  v64 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI12DBSuggestionCGSgMd);
  type metadata accessor for DBSuggestion();
  v53 = v11;
  lazy protocol witness table accessor for type [DBSuggestion]? and conformance <A> A?();
  dispatch thunk of BackingData.setValue<A, B>(forKey:to:)();

  *(v26 + 40) = 0;
  ObservationRegistrar.init()();
  v29 = v60;
  v47(v3, v8, v60);
  (*(v63 + 56))(v3, 0, 1, v29);
  v64 = v26;
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  *(&v47 - 2) = v26;
  *(&v47 - 1) = v3;
  lazy protocol witness table accessor for type DBAssetData and conformance DBAssetData(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, v48);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  outlined destroy of UUID?(v3);
  v64 = v26;
  v31 = swift_getKeyPath();
  MEMORY[0x28223BE20](v31);
  v32 = v49;
  *(&v47 - 4) = v26;
  *(&v47 - 3) = v32;
  *(&v47 - 16) = 0;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v64 = v26;
  v33 = swift_getKeyPath();
  MEMORY[0x28223BE20](v33);
  v35 = v61;
  v34 = v62;
  *(&v47 - 4) = v26;
  *(&v47 - 3) = v35;
  *(&v47 - 2) = v34;
  outlined copy of Data._Representation(v35, v34);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  outlined consume of Data?(v35, v34);

  v64 = v26;
  v36 = swift_getKeyPath();
  MEMORY[0x28223BE20](v36);
  *(&v47 - 2) = v26;
  *(&v47 - 8) = v52;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v64 = v26;
  v37 = swift_getKeyPath();
  MEMORY[0x28223BE20](v37);
  v38 = v54;
  v39 = v55;
  *(&v47 - 4) = v26;
  *(&v47 - 3) = v39;
  *(&v47 - 2) = v38;
  outlined copy of Data?(v39, v38);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  outlined consume of Data?(v39, v38);

  v64 = v26;
  v40 = swift_getKeyPath();
  MEMORY[0x28223BE20](v40);
  v42 = v56;
  v41 = v57;
  *(&v47 - 4) = v26;
  *(&v47 - 3) = v41;
  *(&v47 - 2) = v42;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v43 = v51;
  swift_beginAccess();
  v44 = v58;
  *v43 = v59;
  *(v26 + 32) = v44;

  DBAssetData.refreshAssetLoaded()();
  outlined consume of Data?(v39, v38);
  outlined consume of Data?(v61, v62);
  v45 = *(v63 + 8);
  v46 = v60;
  v45(v50, v60);
  v45(v53, v46);
  return v26;
}

uint64_t key path setter for DBAssetData.id : DBAssetData(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of UUID?(a1, &v8 - v5);
  return (*(**a2 + 200))(v6);
}

uint64_t key path getter for DBAssetData.sha256 : DBAssetData@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 240))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for DBAssetData.sha256 : DBAssetData(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 248);
  outlined copy of Data?(*a1, v3);
  return v4(v2, v3);
}

uint64_t key path getter for DBAssetData.size : DBAssetData@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 288))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void *key path getter for DBAssetData._assetClass : DBAssetData@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 336))(&v4);
  *a2 = v4;
  return result;
}

uint64_t key path setter for DBAssetData._assetClass : DBAssetData(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 344))(&v4);
}

uint64_t key path getter for DBAssetData.inlineData : DBAssetData@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 456))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for DBAssetData.inlineData : DBAssetData(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 464);
  outlined copy of Data?(*a1, v3);
  return v4(v2, v3);
}

uint64_t key path getter for DBAssetData.filePath : DBAssetData@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 504))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for DBAssetData.filePath : DBAssetData(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 512);

  return v4(v2, v3);
}

uint64_t key path getter for DBAssetData._assets : DBAssetData@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 576))();
  *a2 = result;
  return result;
}

uint64_t key path setter for DBAssetData._assets : DBAssetData(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 584);

  return v2(v3);
}

uint64_t specialized static DBAssetDataComparable.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type DBAssetData and conformance DBAssetData(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type DBAssetData and conformance DBAssetData(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
  lazy protocol witness table accessor for type Data? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  PersistentModel.getValue<A>(forKey:)();

  if (v14 >> 60 == 15)
  {
    outlined consume of Data?(a1, v14);
  }

  else
  {
    outlined copy of Data?(a1, v14);
    outlined copy of Data?(a2, v14);
    v3 = specialized static Data.== infix(_:_:)(a1, v14, a2, v14);
    outlined consume of Data?(a2, v14);
    outlined consume of Data?(a2, v14);
    outlined consume of Data?(a1, v14);
    outlined consume of Data?(a1, v14);
    if ((v3 & 1) == 0)
    {
LABEL_9:
      v10 = 0;
      return v10 & 1;
    }
  }

  v4 = DBAssetData.data.getter();
  v6 = v5;
  v8 = DBAssetData.data.getter();
  v9 = v7;
  if (v6 >> 60 != 15)
  {
    if (v7 >> 60 != 15)
    {
      v12 = v6;
      outlined copy of Data?(v4, v6);
      outlined copy of Data?(v8, v9);
      v10 = specialized static Data.== infix(_:_:)(v4, v6, v8, v9);
      outlined consume of Data?(v8, v9);
      outlined consume of Data?(v8, v9);
      outlined consume of Data?(v4, v12);
      outlined consume of Data?(v4, v12);
      return v10 & 1;
    }

    goto LABEL_8;
  }

  if (v7 >> 60 != 15)
  {
LABEL_8:
    outlined consume of Data?(v4, v6);
    outlined consume of Data?(v8, v9);
    goto LABEL_9;
  }

  outlined consume of Data?(v4, v6);
  v10 = 1;
  return v10 & 1;
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

unint64_t lazy protocol witness table accessor for type [DBSuggestion]? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type [DBSuggestion]? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type [DBSuggestion]? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9MomentsUI12DBSuggestionCGSgMd);
    lazy protocol witness table accessor for type [DBSuggestion] and conformance [A]();
    lazy protocol witness table accessor for type DBAssetData and conformance DBAssetData(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DBSuggestion]? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [DBSuggestion] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DBSuggestion] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DBSuggestion] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9MomentsUI12DBSuggestionCGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DBSuggestion] and conformance [A]);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type DBAssetData and conformance DBAssetData(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of UUID?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t outlined copy of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t type metadata accessor for DBAssetDataComparable()
{
  result = type metadata singleton initialization cache for DBAssetDataComparable;
  if (!type metadata singleton initialization cache for DBAssetDataComparable)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Data? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type Data? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type Data? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4DataVSgMd);
    lazy protocol witness table accessor for type Data and conformance Data();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data? and conformance <A> A?);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type Data? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4DataVSgMd);
    lazy protocol witness table accessor for type Data and conformance Data();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

uint64_t closure #1 in DBAssetData.sha256.setterpartial apply()
{
  return partial apply for closure #1 in DBAssetData.sha256.setter();
}

{
  return _s9MomentsUI11DBAssetDataC6sha25610Foundation0D0VSgvsyyXEfU_TA_0();
}

uint64_t closure #1 in DBAssetData.inlineData.setterpartial apply()
{
  return partial apply for closure #1 in DBAssetData.inlineData.setter();
}

{
  return _s9MomentsUI11DBAssetDataC06inlineD010Foundation0D0VSgvsyyXEfU_TA_0();
}

uint64_t ClientMediaFirstPartyViewModel.albumArt.getter()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = (*(*result + 336))(result);

    return v1;
  }

  return result;
}

uint64_t ClientMediaFirstPartyViewModel.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI30ClientMediaFirstPartyViewModel_subtitle);

  return v1;
}

uint64_t ClientMediaFirstPartyViewModel.trackIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI30ClientMediaFirstPartyViewModel_trackIdentifier);

  return v1;
}

uint64_t ClientMediaFirstPartyViewModel.listener.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI30ClientMediaFirstPartyViewModel_listener;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t ClientMediaFirstPartyViewModel.__allocating_init(dbObject:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = specialized ClientMediaFirstPartyViewModel.__allocating_init(dbObject:)(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t ClientMediaFirstPartyViewModel.init(dbObject:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = specialized ClientMediaFirstPartyViewModel.init(dbObject:)(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t closure #1 in ClientMediaFirstPartyViewModel.init(dbObject:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = static MusicPlaybackCoordinatorService.shared;
  v0[8] = static MusicPlaybackCoordinatorService.shared;
  v0[5] = type metadata accessor for MediaPlaybackListener();
  v0[6] = &protocol witness table for MediaPlaybackListener;
  v0[2] = v1;
  v3 = (*v2 + 216) & 0xFFFFFFFFFFFFLL | 0x6074000000000000;
  v0[9] = *(*v2 + 216);
  v0[10] = v3;
  type metadata accessor for MainActor();

  v0[11] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in ClientMediaFirstPartyViewModel.init(dbObject:), v5, v4);
}

{
  v1 = *(v0 + 72);

  v1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v2 = *(v0 + 8);

  return v2();
}

void ClientMediaFirstPartyViewModel.__allocating_init(from:)()
{
  v1 = objc_allocWithZone(v0);
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void ClientMediaFirstPartyViewModel.init(from:)()
{
  *(v0 + OBJC_IVAR____TtC9MomentsUI30ClientMediaFirstPartyViewModel_listener) = 0;
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void ClientMediaFirstPartyViewModel.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void ClientMediaFirstPartyViewModel.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC9MomentsUI30ClientMediaFirstPartyViewModel_listener) = 0;
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *ClientMediaFirstPartyViewModel.view(style:)(char *a1)
{
  v3 = *a1;
  objc_allocWithZone(type metadata accessor for MediaFirstPartyView());
  return MediaFirstPartyView.init(viewModel:style:)(v1, &v3);
}

uint64_t ClientMediaFirstPartyViewModel.__ivar_destroyer()
{

  return swift_weakDestroy();
}

id ClientMediaFirstPartyViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClientMediaFirstPartyViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for MediaFirstPartyViewModel.subtitle.getter in conformance ClientMediaFirstPartyViewModel()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI30ClientMediaFirstPartyViewModel_subtitle);

  return v1;
}

uint64_t protocol witness for MediaFirstPartyViewModel.trackIdentifier.getter in conformance ClientMediaFirstPartyViewModel()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI30ClientMediaFirstPartyViewModel_trackIdentifier);

  return v1;
}

uint64_t specialized ClientMediaFirstPartyViewModel.init(dbObject:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v33[-v9];
  v36[3] = a3;
  v36[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v36);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  *&a2[OBJC_IVAR____TtC9MomentsUI30ClientMediaFirstPartyViewModel_listener] = 0;
  swift_weakInit();
  outlined init with copy of DBObject(v36, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI8DBObject_pMd);
  type metadata accessor for DBMediaFirstPartyModel();
  if (swift_dynamicCast())
  {
    v12 = v34;
    v13 = *(v34 + OBJC_IVAR____TtC9MomentsUI22DBMediaFirstPartyModel_subtitle + 8);
    v14 = &a2[OBJC_IVAR____TtC9MomentsUI30ClientMediaFirstPartyViewModel_subtitle];
    *v14 = *(v34 + OBJC_IVAR____TtC9MomentsUI22DBMediaFirstPartyModel_subtitle);
    v14[1] = v13;
    v15 = *(v12 + OBJC_IVAR____TtC9MomentsUI22DBMediaFirstPartyModel_trackIdentifier + 8);
    v16 = &a2[OBJC_IVAR____TtC9MomentsUI30ClientMediaFirstPartyViewModel_trackIdentifier];
    *v16 = *(v12 + OBJC_IVAR____TtC9MomentsUI22DBMediaFirstPartyModel_trackIdentifier);
    v16[1] = v15;
    if (*(v12 + OBJC_IVAR____TtC9MomentsUI22DBMediaFirstPartyModel_mediaCategoryRawValue + 8))
    {
      LOBYTE(v17) = 4;
    }

    else
    {
      v17 = *(v12 + OBJC_IVAR____TtC9MomentsUI22DBMediaFirstPartyModel_mediaCategoryRawValue);
      if (v17 >= 4)
      {
        LOBYTE(v17) = 4;
      }
    }

    a2[OBJC_IVAR____TtC9MomentsUI30ClientMediaFirstPartyViewModel_mediaCategory] = v17;
    swift_weakAssign();

    v18 = specialized AssetViewModel.init(clientDBObject:)(v12, a2);
    v20 = *&v18[OBJC_IVAR____TtC9MomentsUI30ClientMediaFirstPartyViewModel_trackIdentifier];
    v19 = *&v18[OBJC_IVAR____TtC9MomentsUI30ClientMediaFirstPartyViewModel_trackIdentifier + 8];
    v21 = type metadata accessor for MediaPlaybackListener();
    v22 = swift_allocObject();
    *(v22 + 48) = 0;
    *(v22 + 52) = 0;
    *(v22 + 24) = 0;
    *(v22 + 16) = 0;
    *(v22 + 56) = MEMORY[0x277D84F90];
    swift_beginAccess();
    *(v22 + 16) = v20;
    *(v22 + 24) = v19;
    *(v22 + 32) = v18;
    *(v22 + 40) = &protocol witness table for ClientMediaFirstPartyViewModel;
    v23 = OBJC_IVAR____TtC9MomentsUI30ClientMediaFirstPartyViewModel_listener;
    swift_beginAccess();
    *&v18[v23] = v22;
    v24 = v18;

    v25 = type metadata accessor for TaskPriority();
    (*(*(v25 - 8) + 56))(v10, 1, 1, v25);
    v26 = swift_allocObject();
    v26[2] = 0;
    v26[3] = 0;
    v26[4] = v22;
    swift_retain_n();
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for closure #1 in ClientMediaFirstPartyViewModel.init(dbObject:), v26);

    swift_beginAccess();
    v27 = *&v18[v23];
    if (v27)
    {
      swift_endAccess();
      v28 = one-time initialization token for shared;

      if (v28 != -1)
      {
        swift_once();
      }

      v35[3] = v21;
      v35[4] = &protocol witness table for MediaPlaybackListener;
      v35[0] = v22;
      v29 = *(*static MusicPlaybackCoordinatorService.shared + 352);

      LOBYTE(v29) = v29(v35);
      __swift_destroy_boxed_opaque_existential_1(v35);
      v30 = (*(*v27 + 176))(v35);
      *(v31 + 4) = v29 & 1;
      v30(v35, 0);

      __swift_destroy_boxed_opaque_existential_1(v36);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v36);
      swift_endAccess();
    }

    return v24;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized ClientMediaFirstPartyViewModel.__allocating_init(dbObject:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(type metadata accessor for ClientMediaFirstPartyViewModel());
  (*(v7 + 16))(v9, a1, a3);
  return specialized ClientMediaFirstPartyViewModel.init(dbObject:)(v9, v10, a3, a4);
}

uint64_t type metadata accessor for ClientMediaFirstPartyViewModel()
{
  result = type metadata singleton initialization cache for ClientMediaFirstPartyViewModel;
  if (!type metadata singleton initialization cache for ClientMediaFirstPartyViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t partial apply for closure #1 in ClientMediaFirstPartyViewModel.init(dbObject:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = static Exif.filterImage(imageSource:outputURL:);

  return closure #1 in ClientMediaFirstPartyViewModel.init(dbObject:)(a1, v4, v5, v6);
}

void *ServerConnection.connection.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI16ServerConnection_connection;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void ServerConnection.connection.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI16ServerConnection_connection;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t ServerConnection.hasActiveConnection.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI16ServerConnection_hasActiveConnection;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ServerConnection.hasActiveConnection.setter(char a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI16ServerConnection_hasActiveConnection;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id ServerConnection.__deallocating_deinit()
{
  (*((*MEMORY[0x277D85000] & *v0) + 0xD0))();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServerConnection();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ServerConnection.setupConnection(with:queue:serverProtocol:clientProtocol:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v11 = MEMORY[0x21CE91FC0]();
  v12 = [objc_opt_self() interfaceWithIdentifier_];

  [v12 setServer_];
  if (a5)
  {
    [v12 setClient_];
  }

  v13 = MEMORY[0x21CE91FC0](0xD00000000000001ALL, 0x80000002165767B0);
  v14 = MEMORY[0x21CE91FC0](a1, a2);
  v15 = [objc_opt_self() endpointForSystemMachName:v13 service:v14 instance:0];

  if (!v15)
  {

LABEL_9:
    v28 = 0;
    return outlined consume of (@escaping @callee_guaranteed () -> ())?(v28);
  }

  v16 = [objc_opt_self() connectionWithEndpoint_];
  if (!v16)
  {

    goto LABEL_9;
  }

  v17 = v16;
  v18 = swift_allocObject();
  v18[2] = v12;
  v18[3] = v5;
  v18[4] = a3;
  v19 = swift_allocObject();
  *(v19 + 16) = partial apply for closure #1 in ServerConnection.setupConnection(with:queue:serverProtocol:clientProtocol:);
  *(v19 + 24) = v18;
  v29[4] = partial apply for thunk for @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
  v29[5] = v19;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 1107296256;
  v29[2] = thunk for @escaping @callee_guaranteed (@guaranteed BSServiceConnectionConfiguring) -> ();
  v29[3] = &block_descriptor_1;
  v20 = _Block_copy(v29);
  v21 = v12;
  v22 = v5;
  v23 = a3;

  [v17 configureConnection_];
  _Block_release(v20);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    [v17 activate];
    v26 = *((*MEMORY[0x277D85000] & *v22) + 0x78);
    v27 = v17;
    v26(v17);

    v28 = partial apply for closure #1 in ServerConnection.setupConnection(with:queue:serverProtocol:clientProtocol:);
    return outlined consume of (@escaping @callee_guaranteed () -> ())?(v28);
  }

  __break(1u);
  return result;
}

void closure #1 in ServerConnection.setupConnection(with:queue:serverProtocol:clientProtocol:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  [a1 setTargetQueue_];
  v7 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality_];

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = partial apply for closure #1 in closure #1 in ServerConnection.setupConnection(with:queue:serverProtocol:clientProtocol:);
  v19 = v8;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = thunk for @escaping @callee_guaranteed (@guaranteed BSServiceConnection & BSServiceConnectionContext) -> ();
  v17 = &block_descriptor_15;
  v9 = _Block_copy(&v14);

  [a1 setInvalidationHandler_];
  _Block_release(v9);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = partial apply for closure #2 in closure #1 in ServerConnection.setupConnection(with:queue:serverProtocol:clientProtocol:);
  v19 = v10;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = thunk for @escaping @callee_guaranteed (@guaranteed BSServiceConnection & BSServiceConnectionContext) -> ();
  v17 = &block_descriptor_19;
  v11 = _Block_copy(&v14);

  [a1 setActivationHandler_];
  _Block_release(v11);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = partial apply for closure #3 in closure #1 in ServerConnection.setupConnection(with:queue:serverProtocol:clientProtocol:);
  v19 = v12;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = thunk for @escaping @callee_guaranteed (@guaranteed BSServiceConnection & BSServiceConnectionContext) -> ();
  v17 = &block_descriptor_23;
  v13 = _Block_copy(&v14);

  [a1 setInterruptionHandler_];
  _Block_release(v13);
}

void closure #1 in closure #1 in ServerConnection.setupConnection(with:queue:serverProtocol:clientProtocol:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = MEMORY[0x277D85000];
  if (Strong)
  {
    v2 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0x90))(0);
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    (*((*v1 & *v3) + 0xD0))();
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    (*((*v1 & *v5) + 0xD8))();
  }
}

void thunk for @escaping @callee_guaranteed (@guaranteed BSServiceConnection & BSServiceConnectionContext) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void closure #2 in closure #1 in ServerConnection.setupConnection(with:queue:serverProtocol:clientProtocol:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0x90))(1);
  }
}

void closure #3 in closure #1 in ServerConnection.setupConnection(with:queue:serverProtocol:clientProtocol:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0xD8))();
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed BSServiceConnectionConfiguring) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Void __swiftcall ServerConnection.addActiveSandboxHandle(_:)(NSString a1)
{
  [a1 UTF8String];
  v2 = sandbox_extension_consume();
  if (v2 == -1)
  {
    if (one-time initialization token for presentation != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static CommonLogger.presentation);
    v5 = a1;
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412546;
      *(v7 + 4) = v5;
      *v8 = v5;
      *(v7 + 12) = 2048;
      *(v7 + 14) = -1;
      v9 = v5;
      _os_log_impl(&dword_21607C000, oslog, v6, "[PresenterServerConnection] failed to consume sandbox token: %@, err: %lld", v7, 0x16u);
      outlined destroy of UTType?(v8, &_sSo8NSObjectCSgMd);
      MEMORY[0x21CE94770](v8, -1, -1);
      MEMORY[0x21CE94770](v7, -1, -1);
    }
  }

  else
  {
    v3 = v2;
    swift_beginAccess();
    specialized Set._Variant.insert(_:)(&v11, v3, specialized _NativeSet.insertNew(_:at:isUnique:));
    swift_endAccess();
  }
}

Swift::Void __swiftcall ServerConnection.releaseSandbox()()
{
  v1 = OBJC_IVAR____TtC9MomentsUI16ServerConnection_activeSandboxHandles;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(v2 + 56 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        sandbox_extension_release();
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall ServerConnection.invalidateConnection()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI16ServerConnection_lock);
  v2 = [v1 lock];
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v0) + 0x70))(v2);
  [v4 invalidate];

  (*((*v3 & *v0) + 0x78))(0);

  [v1 unlock];
}

id ServerConnection.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ServerConnection.init()()
{
  *&v0[OBJC_IVAR____TtC9MomentsUI16ServerConnection_connection] = 0;
  v0[OBJC_IVAR____TtC9MomentsUI16ServerConnection_hasActiveConnection] = 0;
  *&v0[OBJC_IVAR____TtC9MomentsUI16ServerConnection_activeSandboxHandles] = MEMORY[0x277D84FA0];
  v1 = OBJC_IVAR____TtC9MomentsUI16ServerConnection_lock;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x277CCAC60]) init];
  v3.receiver = v0;
  v3.super_class = type metadata accessor for ServerConnection();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - v10;
  v39 = v2;
  v12 = *v2;
  Hasher.init(_seed:)();
  specialized Optional<A>.hash(into:)(v45, a2);
  v13 = Hasher._finalize()();
  v14 = v12 + 56;
  v15 = -1 << *(v12 + 32);
  v16 = v13 & ~v15;
  if (((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
  {
LABEL_17:
    v31 = v39;
    v32 = v16;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45[0] = *v31;

    specialized _NativeSet.insertNew(_:at:isUnique:)(v34, v32, isUniquelyReferenced_nonNull_native);
    *v31 = v45[0];
    *a1 = a2;
    return 1;
  }

  v17 = v12;
  v18 = ~v15;
  v19 = (v6 + 8);
  v20 = v6;
  v37 = a1;
  v38 = v12;
  v44 = a2;
  v35 = ~v15;
  v36 = v12 + 56;
  while (1)
  {
    v21 = *(*(v17 + 48) + 8 * v16);
    if (v21)
    {
      break;
    }

    if (!a2)
    {
      goto LABEL_19;
    }

LABEL_4:
    v16 = (v16 + 1) & v18;
    if (((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if (!a2)
  {
    goto LABEL_4;
  }

  v22 = *(v21 + 16);
  if (v22 != *(a2 + 16))
  {
    goto LABEL_4;
  }

  v40 = v16;
  if (!v22 || v21 == a2)
  {
LABEL_18:

    v16 = v40;
    v17 = v38;
LABEL_19:
    *a1 = *(*(v17 + 48) + 8 * v16);

    return 0;
  }

  v23 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v43 = v21 + v23;
  v41 = v22;
  v42 = a2 + v23;

  v25 = 0;
  while (v25 < *(v21 + 16))
  {
    v26 = *(v20 + 72) * v25;
    v27 = v20;
    v28 = *(v20 + 16);
    result = v28(v11, v43 + v26, v5);
    if (v25 >= *(v44 + 16))
    {
      goto LABEL_22;
    }

    v28(v9, v42 + v26, v5);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID);
    v29 = dispatch thunk of static Equatable.== infix(_:_:)();
    v30 = *v19;
    (*v19)(v9, v5);
    result = (v30)(v11, v5);
    if ((v29 & 1) == 0)
    {

      a1 = v37;
      v17 = v38;
      a2 = v44;
      v20 = v27;
      v16 = v40;
      v18 = v35;
      v14 = v36;
      goto LABEL_4;
    }

    ++v25;
    v20 = v27;
    if (v41 == v25)
    {

      a1 = v37;
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      v20[9] = v8;
      type metadata accessor for DBAssetData();
      swift_dynamicCast();
      result = 0;
      *a1 = v20[0];
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v18 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC9MomentsUI11DBAssetDataC_Tt1g5(v7, result + 1);
    v20[0] = v18;
    if (*(v18 + 24) <= *(v18 + 16))
    {
      specialized _NativeSet.resize(capacity:)();
      v18 = v20[0];
    }

    specialized _NativeSet._unsafeInsertNew(_:)(v19, v18);

    *v3 = v18;
    goto LABEL_16;
  }

  Hasher.init(_seed:)();
  (*(*a2 + 616))(v20);
  v10 = Hasher._finalize()();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20[0] = *v2;

    specialized _NativeSet.insertNew(_:at:isUnique:)(v17, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20[0];
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  while (1)
  {

    v15 = specialized static DBAssetData.== infix(_:_:)(v14, a2);

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v31 - v14;
  v16 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v16 < 0)
    {
      v17 = *v2;
    }

    else
    {
      v17 = v16 & 0xFFFFFFFFFFFFFF8;
    }

    v18 = __CocoaSet.member(for:)();

    if (v18)
    {

      v31[9] = v18;
      type metadata accessor for DBSuggestion();
      swift_dynamicCast();
      result = 0;
      *a1 = v31[0];
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC9MomentsUI12DBSuggestionC_Tt1g5(v17, result + 1);
    v31[0] = v21;
    if (*(v21 + 24) <= *(v21 + 16))
    {
      specialized _NativeSet.resize(capacity:)();
      v21 = v31[0];
    }

    specialized _NativeSet._unsafeInsertNew(_:)(v22, v21);

    *v3 = v21;
    goto LABEL_19;
  }

  v20 = Hasher.init(_seed:)();
  (*(*a2 + 344))(v20);
  outlined init with copy of UUID?(v15, v13);
  if ((*(v7 + 48))(v13, 1, v6) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v7 + 32))(v9, v13, v6);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID);
    dispatch thunk of Hashable.hash(into:)();
    (*(v7 + 8))(v9, v6);
  }

  outlined destroy of UTType?(v15, &_s10Foundation4UUIDVSgMd);
  v23 = Hasher._finalize()();
  v24 = -1 << *(v16 + 32);
  v25 = v23 & ~v24;
  if (((*(v16 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
  {
LABEL_18:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31[0] = *v2;

    specialized _NativeSet.insertNew(_:at:isUnique:)(v30, v25, isUniquelyReferenced_nonNull_native);
    *v2 = v31[0];
LABEL_19:
    *a1 = a2;
    return 1;
  }

  v26 = ~v24;
  while (1)
  {

    v28 = specialized static DBSuggestion.== infix(_:_:)(v27, a2);

    if (v28)
    {
      break;
    }

    v25 = (v25 + 1) & v26;
    if (((*(v16 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  *a1 = *(*(v16 + 48) + 8 * v25);

  return 0;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(_BYTE *a1, Swift::Int a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  MEMORY[0x21CE937C0](a2);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

{
  v4 = *v2;
  v5 = specialized RawRepresentable<>._rawHashValue(seed:)();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v31 = ~v6;
    v8 = 0x64756F6C43776F6CLL;
    while (1)
    {
      v9 = *(*(v4 + 48) + v7);
      v33 = v7;
      if (v9 > 3)
      {
        if (*(*(v4 + 48) + v7) > 5u)
        {
          if (v9 == 6)
          {
            v14 = 0x756F527465737361;
            v15 = 0xEE00626F6C426574;
          }

          else
          {
            v14 = 0x6174536775626564;
            v15 = 0xEA0000000000656CLL;
          }
        }

        else
        {
          if (v9 == 4)
          {
            v14 = 1280328553;
          }

          else
          {
            v14 = 0x68746C616548;
          }

          if (v9 == 4)
          {
            v15 = 0xE400000000000000;
          }

          else
          {
            v15 = 0xE600000000000000;
          }
        }
      }

      else
      {
        if (v9 == 2)
        {
          v10 = v8;
        }

        else
        {
          v10 = 0x6469766F72506F6ELL;
        }

        if (v9 == 2)
        {
          v11 = 0xEF656761726F7453;
        }

        else
        {
          v11 = 0xEB00000000737265;
        }

        if (*(*(v4 + 48) + v7))
        {
          v12 = 0x6C61636F4C776F6CLL;
        }

        else
        {
          v12 = 0x626E4F726576656ELL;
        }

        if (*(*(v4 + 48) + v7))
        {
          v13 = 0xEF656761726F7453;
        }

        else
        {
          v13 = 0xEE0064656472616FLL;
        }

        if (*(*(v4 + 48) + v7) <= 1u)
        {
          v14 = v12;
        }

        else
        {
          v14 = v10;
        }

        if (*(*(v4 + 48) + v7) <= 1u)
        {
          v15 = v13;
        }

        else
        {
          v15 = v11;
        }
      }

      v16 = 0x756F527465737361;
      if (a2 != 6)
      {
        v16 = 0x6174536775626564;
      }

      v17 = 0xEE00626F6C426574;
      if (a2 != 6)
      {
        v17 = 0xEA0000000000656CLL;
      }

      v18 = 0x68746C616548;
      if (a2 == 4)
      {
        v18 = 1280328553;
      }

      v19 = 0xE400000000000000;
      if (a2 != 4)
      {
        v19 = 0xE600000000000000;
      }

      if (a2 <= 5u)
      {
        v16 = v18;
        v17 = v19;
      }

      if (a2 == 2)
      {
        v20 = v8;
      }

      else
      {
        v20 = 0x6469766F72506F6ELL;
      }

      if (a2 == 2)
      {
        v21 = 0xEF656761726F7453;
      }

      else
      {
        v21 = 0xEB00000000737265;
      }

      if (a2)
      {
        v22 = 0x6C61636F4C776F6CLL;
      }

      else
      {
        v22 = 0x626E4F726576656ELL;
      }

      if (a2)
      {
        v23 = 0xEF656761726F7453;
      }

      else
      {
        v23 = 0xEE0064656472616FLL;
      }

      if (a2 <= 1u)
      {
        v20 = v22;
        v21 = v23;
      }

      v24 = a2 <= 3u ? v20 : v16;
      v25 = a2 <= 3u ? v21 : v17;
      if (v14 == v24 && v15 == v25)
      {
        break;
      }

      v26 = v8;
      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v32)
      {
        goto LABEL_68;
      }

      v7 = (v33 + 1) & v31;
      v8 = v26;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_66;
      }
    }

LABEL_68:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v33);
  }

  else
  {
LABEL_66:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *v29;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v7, isUniquelyReferenced_nonNull_native);
    *v29 = v34;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordZoneID);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo14CKRecordZoneIDC_Tt1g5(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      specialized _NativeSet.resize(capacity:)(v20 + 1);
    }

    v18 = v8;
    specialized _NativeSet._unsafeInsertNew(_:)(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordZoneID);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordID);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo10CKRecordIDC_Tt1g5(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      specialized _NativeSet.resize(capacity:)(v20 + 1);
    }

    v18 = v8;
    specialized _NativeSet._unsafeInsertNew(_:)(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordID);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, uint64_t a2, void (*a3)(uint64_t, unint64_t, uint64_t))
{
  v7 = *v3;
  v8 = MEMORY[0x21CE937A0](*(*v3 + 40));
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (*(*(v7 + 48) + 8 * v10) != a2)
    {
      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    a3(a2, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(double *a1, double a2, double a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  if (a2 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = a2;
  }

  MEMORY[0x21CE937F0](*&v8);
  if (a3 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = a3;
  }

  MEMORY[0x21CE937F0](*&v9);
  v10 = Hasher._finalize()();
  v11 = -1 << *(v7 + 32);
  v12 = v10 & ~v11;
  if ((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    while (1)
    {
      v14 = (*(v7 + 48) + 16 * v12);
      if (*v14 == a2 && v14[1] == a3)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    result = 0;
    a2 = *v14;
    a3 = v14[1];
  }

  else
  {
LABEL_14:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v12, isUniquelyReferenced_nonNull_native, a2, a3);
    *v3 = v18;
    result = 1;
  }

  *a1 = a2;
  a1[1] = a3;
  return result;
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo14CKRecordZoneIDC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo14CKRecordZoneIDCGMd);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordZoneID);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          specialized _NativeSet.resize(capacity:)(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC9MomentsUI11DBAssetDataC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9MomentsUI11DBAssetDataCGMd);
    v2 = static _SetStorage.convert(_:capacity:)();
    v18 = v2;
    __CocoaSet.makeIterator()();
    v3 = __CocoaSet.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      type metadata accessor for DBAssetData();
      v5 = v4;
      do
      {
        v17[0] = v5;
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          specialized _NativeSet.resize(capacity:)();
        }

        v6 = v17[9];
        v2 = v18;
        Hasher.init(_seed:)();
        (*(*v6 + 616))(v17);
        result = Hasher._finalize()();
        v8 = v2 + 56;
        v9 = -1 << *(v2 + 32);
        v10 = result & ~v9;
        v11 = v10 >> 6;
        if (((-1 << v10) & ~*(v2 + 56 + 8 * (v10 >> 6))) != 0)
        {
          v12 = __clz(__rbit64((-1 << v10) & ~*(v2 + 56 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v9) >> 6;
          do
          {
            if (++v11 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v11 == v14;
            if (v11 == v14)
            {
              v11 = 0;
            }

            v13 |= v15;
            v16 = *(v8 + 8 * v11);
          }

          while (v16 == -1);
          v12 = __clz(__rbit64(~v16)) + (v11 << 6);
        }

        *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
        *(*(v2 + 48) + 8 * v12) = v6;
        ++*(v2 + 16);
        v5 = __CocoaSet.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC9MomentsUI12DBSuggestionC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9MomentsUI12DBSuggestionCGMd);
    v2 = static _SetStorage.convert(_:capacity:)();
    v5 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for DBSuggestion();
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          specialized _NativeSet.resize(capacity:)();
        }

        v2 = v5;
        specialized _NativeSet._unsafeInsertNew(_:)(v4, v5);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo10CKRecordIDC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo10CKRecordIDCGMd);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordID);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          specialized _NativeSet.resize(capacity:)(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  (*(*a1 + 616))(v5);
  Hasher._finalize()();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - v12;
  v14 = Hasher.init(_seed:)();
  (*(*a1 + 344))(v14);
  outlined init with copy of UUID?(v13, v11);
  if ((*(v5 + 48))(v11, 1, v4) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v5 + 32))(v7, v11, v4);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID);
    dispatch thunk of Hashable.hash(into:)();
    (*(v5 + 8))(v7, v4);
  }

  outlined destroy of UTType?(v13, &_s10Foundation4UUIDVSgMd);
  Hasher._finalize()();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, double a2, double a3)
{
  Hasher.init(_seed:)();
  if (a2 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = a2;
  }

  MEMORY[0x21CE937F0](*&v6);
  if (a3 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = a3;
  }

  MEMORY[0x21CE937F0](*&v7);
  Hasher._finalize()();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a1 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  v9 = (*(a1 + 48) + 16 * result);
  *v9 = a2;
  v9[1] = a3;
  ++*(a1 + 16);
  return result;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t InterstitialCarouselViewCell.assetViewChanged(assetView:)(void *a1)
{
  v2 = v1;
  [a1 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = [a1 layer];
  v5 = [v2 layer];
  [v5 cornerRadius];
  v7 = v6;

  [v4 setCornerRadius_];
  [v2 addSubview_];
  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);
}

id InterstitialCarouselViewCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id InterstitialCarouselViewCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for InterstitialCarouselViewCell();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id InterstitialCarouselViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id InterstitialCarouselViewCell.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for InterstitialCarouselViewCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id InterstitialCarouselViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InterstitialCarouselViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t TransferMotionActivityViewModel.motionActivityTypeRawValue.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC9MomentsUI31TransferMotionActivityViewModel_motionActivityTypeRawValue;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t TransferMotionActivityViewModel.motionActivityTypeRawValue.getter(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  return *v2;
}

uint64_t TransferMotionActivityViewModel.steps.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC9MomentsUI31TransferMotionActivityViewModel_steps;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

MomentsUI::TransferMotionActivityViewModel::CodingKeys_optional __swiftcall TransferMotionActivityViewModel.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TransferMotionActivityViewModel.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = MomentsUI_TransferMotionActivityViewModel_CodingKeys_steps;
  }

  else
  {
    v4.value = MomentsUI_TransferMotionActivityViewModel_CodingKeys_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

MomentsUI::TransferMotionActivityViewModel::CodingKeys_optional __swiftcall TransferMotionActivityViewModel.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TransferMotionActivityViewModel.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = MomentsUI_TransferMotionActivityViewModel_CodingKeys_steps;
  }

  else
  {
    v4.value = MomentsUI_TransferMotionActivityViewModel_CodingKeys_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t TransferMotionActivityViewModel.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x7370657473;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance TransferMotionActivityViewModel.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7370657473;
  }

  else
  {
    v3 = 0xD00000000000001ALL;
  }

  if (v2)
  {
    v4 = 0x80000002165753A0;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x7370657473;
  }

  else
  {
    v5 = 0xD00000000000001ALL;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0x80000002165753A0;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TransferMotionActivityViewModel.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TransferMotionActivityViewModel.CodingKeys()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TransferMotionActivityViewModel.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance TransferMotionActivityViewModel.CodingKeys@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TransferMotionActivityViewModel.CodingKeys.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance TransferMotionActivityViewModel.CodingKeys(unint64_t *a1@<X8>)
{
  v2 = 0x80000002165753A0;
  v3 = 0xD00000000000001ALL;
  if (*v1)
  {
    v3 = 0x7370657473;
    v2 = 0xE500000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TransferMotionActivityViewModel.CodingKeys()
{
  if (*v0)
  {
    return 0x7370657473;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TransferMotionActivityViewModel.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TransferMotionActivityViewModel.CodingKeys.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TransferMotionActivityViewModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TransferMotionActivityViewModel.CodingKeys and conformance TransferMotionActivityViewModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TransferMotionActivityViewModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TransferMotionActivityViewModel.CodingKeys and conformance TransferMotionActivityViewModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

id TransferMotionActivityViewModel.init(coder:)(void *a1)
{
  v3 = v1 + OBJC_IVAR____TtC9MomentsUI31TransferMotionActivityViewModel_motionActivityTypeRawValue;
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = v1 + OBJC_IVAR____TtC9MomentsUI31TransferMotionActivityViewModel_steps;
  *v4 = 0;
  *(v4 + 8) = 1;
  type metadata accessor for NSNumber();
  v5 = NSCoder.decodeObject<A>(of:forKey:)();
  v6 = v5;
  if (v5)
  {
    v7 = [v5 integerValue];
  }

  else
  {
    v7 = 0;
  }

  swift_beginAccess();
  *v3 = v7;
  *(v3 + 8) = v6 == 0;
  v8 = NSCoder.decodeObject<A>(of:forKey:)();
  v9 = v8;
  if (v8)
  {
    v10 = [v8 integerValue];
  }

  else
  {
    v10 = 0;
  }

  swift_beginAccess();
  *v4 = v10;
  *(v4 + 8) = v9 == 0;
  v11 = specialized AssetViewModel.init(coder:)(a1);

  return v11;
}

Swift::Void __swiftcall TransferMotionActivityViewModel.encode(with:)(NSCoder with)
{
  v2 = v1;
  AssetViewModel.encode(with:)(with);
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & *v1) + 0x218))();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    type metadata accessor for NSNumber();
    isa = NSNumber.init(integerLiteral:)(v7).super.super.isa;
    v9 = MEMORY[0x21CE91FC0](0xD00000000000001ALL, 0x80000002165753A0);
    [(objc_class *)with.super.isa encodeObject:isa forKey:v9];
  }

  v10 = (*((*v4 & *v2) + 0x230))(v5);
  if ((v11 & 1) == 0)
  {
    v12 = v10;
    type metadata accessor for NSNumber();
    v13 = NSNumber.init(integerLiteral:)(v12).super.super.isa;
    v14 = MEMORY[0x21CE91FC0](0x7370657473, 0xE500000000000000);
    [(objc_class *)with.super.isa encodeObject:v13 forKey:v14];
  }
}

void TransferMotionActivityViewModel.init(from:)()
{
  v1 = v0 + OBJC_IVAR____TtC9MomentsUI31TransferMotionActivityViewModel_motionActivityTypeRawValue;
  *v1 = 0;
  *(v1 + 8) = 1;
  v2 = v0 + OBJC_IVAR____TtC9MomentsUI31TransferMotionActivityViewModel_steps;
  *v2 = 0;
  *(v2 + 8) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void TransferMotionActivityViewModel.init(dbObject:)()
{
  v1 = v0 + OBJC_IVAR____TtC9MomentsUI31TransferMotionActivityViewModel_motionActivityTypeRawValue;
  *v1 = 0;
  *(v1 + 8) = 1;
  v2 = v0 + OBJC_IVAR____TtC9MomentsUI31TransferMotionActivityViewModel_steps;
  *v2 = 0;
  *(v2 + 8) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id TransferMotionActivityViewModel.init(motionAcitvityViewModel:)(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v33 - v7;
  v9 = &v3[OBJC_IVAR____TtC9MomentsUI31TransferMotionActivityViewModel_motionActivityTypeRawValue];
  *v9 = 0;
  v9[8] = 1;
  v10 = &v3[OBJC_IVAR____TtC9MomentsUI31TransferMotionActivityViewModel_steps];
  *v10 = 0;
  v10[8] = 1;
  v11 = swift_getObjectType();
  (*(a2 + 16))(&v39, v11, a2);
  v12 = v40;
  if (v40)
  {
    v13 = 0;
  }

  else
  {
    v13 = v39;
  }

  swift_beginAccess();
  *v9 = v13;
  v9[8] = v12;
  v14 = (*(a2 + 24))(v11, a2);
  swift_beginAccess();
  *v10 = v14;
  v10[8] = 0;
  if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  v15 = static ScreenSize.zero;
  v16 = (*(a2 + 40))(v11, a2);
  v17 = *((*MEMORY[0x277D85000] & *a1) + 0xD0);
  v18 = a1;
  v34 = v17();
  v20 = v19;

  (*(*(a2 + 8) + 24))(v11);
  v35 = *(v18 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass);
  v21 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage] = 0;
  v22 = &v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle];
  *v22 = 0;
  v22[1] = 0;
  v23 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
  v24 = type metadata accessor for DateInterval();
  (*(*(v24 - 8) + 56))(&v3[v23], 1, 1, v24);
  UUID.init()();
  v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentStyle] = 9;
  v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentState] = 0;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_availableForSelection] = 1;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_dbAssetModel] = 0;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport] = v15;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles] = MEMORY[0x277D84F90];
  swift_beginAccess();
  v25 = *&v3[v21];
  *&v3[v21] = v16;
  v26 = v15;
  v27 = v16;

  swift_beginAccess();
  *v22 = v34;
  v22[1] = v20;

  swift_beginAccess();
  outlined assign with copy of DateInterval?(v8, &v3[v23]);
  v28 = swift_endAccess();
  v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass] = v35;
  (*(ObjectType + 328))(v38, v28);
  LOBYTE(v15) = v38[0];
  type metadata accessor for AssetViewModelRenderingActor();
  v29 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v29 + 120) = 0;
  swift_unknownObjectWeakInit();
  *(v29 + 144) = 0;
  swift_unknownObjectWeakInit();
  *(v29 + 112) = v15;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_renderingActor] = v29;
  v30 = type metadata accessor for AssetViewModel();
  v37.receiver = v3;
  v37.super_class = v30;
  v31 = objc_msgSendSuper2(&v37, sel_init);

  outlined destroy of DateInterval?(v8);
  return v31;
}

id TransferMotionActivityViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TransferMotionActivityViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TransferMotionActivityViewModel()
{
  result = type metadata singleton initialization cache for TransferMotionActivityViewModel;
  if (!type metadata singleton initialization cache for TransferMotionActivityViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TransferMotionActivityViewModel.CodingKeys and conformance TransferMotionActivityViewModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TransferMotionActivityViewModel.CodingKeys and conformance TransferMotionActivityViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransferMotionActivityViewModel.CodingKeys and conformance TransferMotionActivityViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferMotionActivityViewModel.CodingKeys and conformance TransferMotionActivityViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransferMotionActivityViewModel.CodingKeys and conformance TransferMotionActivityViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransferMotionActivityViewModel.CodingKeys and conformance TransferMotionActivityViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferMotionActivityViewModel.CodingKeys and conformance TransferMotionActivityViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransferMotionActivityViewModel.CodingKeys and conformance TransferMotionActivityViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransferMotionActivityViewModel.CodingKeys and conformance TransferMotionActivityViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferMotionActivityViewModel.CodingKeys and conformance TransferMotionActivityViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransferMotionActivityViewModel.CodingKeys and conformance TransferMotionActivityViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransferMotionActivityViewModel.CodingKeys and conformance TransferMotionActivityViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferMotionActivityViewModel.CodingKeys and conformance TransferMotionActivityViewModel.CodingKeys);
  }

  return result;
}

uint64_t static CloudSyncAssetData.Class.setter(char *a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  static CloudSyncAssetData.Class = a1;
  unk_27CA8E708 = a2;
  byte_27CA8E710 = a3;
  return result;
}

uint64_t one-time initialization function for Log()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static CloudSyncAssetData.Log);
  v1 = __swift_project_value_buffer(v0, static CloudSyncAssetData.Log);
  if (one-time initialization token for database != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static CommonLogger.database);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static CloudSuggestionsDB.Log);
  v1 = __swift_project_value_buffer(v0, static CloudSuggestionsDB.Log);
  if (one-time initialization token for database != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static CommonLogger.database);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static DBSnapshotAnalytics.Log);
  v1 = __swift_project_value_buffer(v0, static DBSnapshotAnalytics.Log);
  if (one-time initialization token for database != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static CommonLogger.database);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static DBAssetData.Log);
  v1 = __swift_project_value_buffer(v0, static DBAssetData.Log);
  if (one-time initialization token for database != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static CommonLogger.database);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static DBSnapshot.Log);
  v1 = __swift_project_value_buffer(v0, static DBSnapshot.Log);
  if (one-time initialization token for database != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static CommonLogger.database);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static DBAsset.Log);
  v1 = __swift_project_value_buffer(v0, static DBAsset.Log);
  if (one-time initialization token for database != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static CommonLogger.database);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static DBWriter.Log);
  v1 = __swift_project_value_buffer(v0, static DBWriter.Log);
  if (one-time initialization token for database != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static CommonLogger.database);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static DBManager.Log);
  v1 = __swift_project_value_buffer(v0, static DBManager.Log);
  if (one-time initialization token for database != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static CommonLogger.database);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static DBSuggestion.Log);
  v1 = __swift_project_value_buffer(v0, static DBSuggestion.Log);
  if (one-time initialization token for database != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static CommonLogger.database);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static CloudSyncSnapshot.Log);
  v1 = __swift_project_value_buffer(v0, static CloudSyncSnapshot.Log);
  if (one-time initialization token for database != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static CommonLogger.database);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static CloudDevicesDB.Log);
  v1 = __swift_project_value_buffer(v0, static CloudDevicesDB.Log);
  if (one-time initialization token for cloud != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static CommonLogger.cloud);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static CloudMetaDevice.Log);
  v1 = __swift_project_value_buffer(v0, static CloudMetaDevice.Log);
  if (one-time initialization token for cloud != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static CommonLogger.cloud);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static CloudManager.Log);
  v1 = __swift_project_value_buffer(v0, static CloudManager.Log);
  if (one-time initialization token for cloud != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static CommonLogger.cloud);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static CloudRootDB.Log);
  v1 = __swift_project_value_buffer(v0, static CloudRootDB.Log);
  if (one-time initialization token for cloud != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static CommonLogger.cloud);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static CloudSyncSuggestion.Log);
  v1 = __swift_project_value_buffer(v0, static CloudSyncSuggestion.Log);
  if (one-time initialization token for database != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static CommonLogger.database);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static CloudDevice.Log);
  v1 = __swift_project_value_buffer(v0, static CloudDevice.Log);
  if (one-time initialization token for cloud != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static CommonLogger.cloud);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static CloudSyncDB.Log);
  v1 = __swift_project_value_buffer(v0, static CloudSyncDB.Log);
  if (one-time initialization token for cloud != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static CommonLogger.cloud);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t CloudSyncAssetData.Log.unsafeMutableAddressor()
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static CloudSyncAssetData.Log);
}

uint64_t static CloudSyncAssetData.Log.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static CloudSyncAssetData.Log);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static CloudSyncAssetData.Log.setter(uint64_t a1)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static CloudSyncAssetData.Log);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static CloudSyncAssetData.Log.modify())()
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static CloudSyncAssetData.Log);
  swift_beginAccess();
  return MutableVideoViewModel.video.modify;
}

uint64_t protocol witness for static CloudLog.Log.getter in conformance CloudSyncAssetData@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static CloudSyncAssetData.Log);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t one-time initialization function for productionSchema()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yXlXptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21658CA40;
  *(inited + 32) = 0x61645F7465737361;
  *(inited + 40) = 0xEA00000000006174;
  v1 = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSData);
  *(inited + 48) = v1;
  *(inited + 56) = 0x73615F7465737361;
  *(inited + 64) = 0xEB00000000746573;
  *(inited + 72) = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKAsset);
  *(inited + 80) = 0x78655F7465737361;
  *(inited + 88) = 0xE900000000000074;
  v2 = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSString);
  *(inited + 96) = v2;
  *(inited + 104) = 0x6C635F7465737361;
  *(inited + 112) = 0xEB00000000737361;
  *(inited + 120) = v2;
  strcpy((inited + 128), "asset_sha256");
  *(inited + 141) = 0;
  *(inited + 142) = -5120;
  *(inited + 144) = v1;
  *(inited + 152) = 0x69735F7465737361;
  *(inited + 160) = 0xEA0000000000657ALL;
  *(inited + 168) = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSNumber);
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_yXlXpTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yXlXmTtMd);
  result = swift_arrayDestroy();
  static CloudSyncAssetData.productionSchema = v3;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yXlXptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2165965F0;
  *(inited + 32) = 0x69746172656E6567;
  *(inited + 40) = 0xEA00000000006E6FLL;
  *(inited + 48) = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSString);
  *(inited + 56) = 0x65636E6575716573;
  *(inited + 64) = 0xE800000000000000;
  *(inited + 72) = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSNumber);
  *(inited + 80) = 0x797269707865;
  *(inited + 88) = 0xE600000000000000;
  *(inited + 96) = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSDate);
  strcpy((inited + 104), "suggestionTabs");
  *(inited + 119) = -18;
  *(inited + 120) = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSData);
  v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_yXlXpTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yXlXmTtMd);
  result = swift_arrayDestroy();
  static CloudSyncSnapshot.productionSchema = v1;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yXlXptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21659A8A0;
  *(inited + 32) = 0x614E64726F636572;
  *(inited + 40) = 0xEA0000000000656DLL;
  v1 = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSString);
  *(inited + 48) = v1;
  *(inited + 56) = 0x6465696669646F6DLL;
  *(inited + 64) = 0xEA00000000007441;
  *(inited + 72) = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSDate);
  strcpy((inited + 80), "DeviceOSBuild");
  *(inited + 94) = -4864;
  *(inited + 96) = v1;
  *(inited + 104) = 0xD000000000000015;
  *(inited + 112) = 0x80000002165847E0;
  *(inited + 120) = v1;
  strcpy((inited + 128), "DeviceOSType");
  *(inited + 141) = 0;
  *(inited + 142) = -5120;
  *(inited + 144) = v1;
  *(inited + 152) = 0xD000000000000015;
  *(inited + 160) = 0x8000000216584800;
  *(inited + 168) = v1;
  *(inited + 176) = 0xD000000000000016;
  *(inited + 184) = 0x8000000216584820;
  *(inited + 192) = v1;
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_yXlXpTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yXlXmTtMd);
  result = swift_arrayDestroy();
  static CloudMetaDevice.productionSchema = v2;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yXlXptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2165A3BD0;
  strcpy((inited + 32), "suggestionID");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  v1 = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSString);
  *(inited + 48) = v1;
  *(inited + 56) = 1701869940;
  *(inited + 64) = 0xE400000000000000;
  v2 = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSNumber);
  *(inited + 72) = v2;
  *(inited + 80) = 0x656C746974;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 96) = v1;
  *(inited + 104) = 0x656C746974627573;
  *(inited + 112) = 0xE800000000000000;
  *(inited + 120) = v1;
  *(inited + 128) = 0x74706D6F7270;
  *(inited + 136) = 0xE600000000000000;
  *(inited + 144) = v1;
  *(inited + 152) = 0x7461447472617473;
  *(inited + 160) = 0xE900000000000065;
  *(inited + 168) = v1;
  *(inited + 176) = 0x65746144646E65;
  *(inited + 184) = 0xE700000000000000;
  *(inited + 192) = v1;
  strcpy((inited + 200), "rankingScore");
  *(inited + 213) = 0;
  *(inited + 214) = -5120;
  *(inited + 216) = v2;
  *(inited + 224) = 0x726F635365736162;
  *(inited + 232) = 0xE900000000000065;
  *(inited + 240) = v2;
  strcpy((inited + 248), "goodnessScore");
  *(inited + 262) = -4864;
  *(inited + 264) = v2;
  *(inited + 272) = 0xD000000000000015;
  *(inited + 280) = 0x800000021657BB10;
  *(inited + 288) = v2;
  *(inited + 296) = 0xD00000000000001BLL;
  *(inited + 304) = 0x80000002165752F0;
  *(inited + 312) = v2;
  *(inited + 320) = 0x6144737465737361;
  *(inited + 328) = 0xEA00000000006174;
  v3 = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSData);
  *(inited + 336) = v3;
  strcpy((inited + 344), "assetIDsData");
  *(inited + 357) = 0;
  *(inited + 358) = -5120;
  *(inited + 360) = v3;
  *(inited + 368) = 0x4965707954627573;
  *(inited + 376) = 0xEA0000000000746ELL;
  *(inited + 384) = v2;
  *(inited + 392) = 0x7469736E65537369;
  *(inited + 400) = 0xEB00000000657669;
  *(inited + 408) = v2;
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_yXlXpTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yXlXmTtMd);
  result = swift_arrayDestroy();
  static CloudSyncSuggestion.productionSchema = v4;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yXlXptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2165A4090;
  *(inited + 32) = 0x4449656369766564;
  *(inited + 40) = 0xE800000000000000;
  v1 = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSString);
  *(inited + 48) = v1;
  *(inited + 56) = 0x4449656C646E7562;
  *(inited + 64) = 0xE800000000000000;
  v2 = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSDate);
  *(inited + 72) = v2;
  *(inited + 80) = 0xD000000000000014;
  *(inited + 88) = 0x8000000216585CF0;
  *(inited + 96) = v2;
  *(inited + 104) = 1701667182;
  *(inited + 112) = 0xE400000000000000;
  *(inited + 120) = v1;
  strcpy((inited + 128), "systemVersion");
  *(inited + 142) = -4864;
  *(inited + 144) = v1;
  strcpy((inited + 152), "systemIdiomInt");
  *(inited + 167) = -18;
  *(inited + 168) = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSNumber);
  strcpy((inited + 176), "systemLanguage");
  *(inited + 191) = -18;
  *(inited + 192) = v1;
  *(inited + 200) = 0x6F4D656369766564;
  *(inited + 208) = 0xEB000000006C6564;
  *(inited + 216) = v1;
  *(inited + 224) = 0xD000000000000012;
  *(inited + 232) = 0x8000000216585D10;
  v3 = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSData);
  *(inited + 240) = v3;
  *(inited + 248) = 0xD000000000000011;
  *(inited + 256) = 0x8000000216585D30;
  *(inited + 264) = v2;
  *(inited + 272) = 0xD000000000000013;
  *(inited + 280) = 0x8000000216585D50;
  *(inited + 288) = v2;
  *(inited + 296) = 0xD000000000000012;
  *(inited + 304) = 0x8000000216585D70;
  *(inited + 312) = v1;
  strcpy((inited + 320), "nominationDate");
  *(inited + 335) = -18;
  *(inited + 336) = v2;
  *(inited + 344) = 0xD000000000000010;
  *(inited + 352) = 0x8000000216585D90;
  *(inited + 360) = v2;
  strcpy((inited + 368), "onboardingDate");
  *(inited + 383) = -18;
  *(inited + 384) = v2;
  *(inited + 392) = 0xD000000000000023;
  *(inited + 400) = 0x8000000216585DB0;
  *(inited + 408) = v2;
  *(inited + 416) = 0xD000000000000021;
  *(inited + 424) = 0x80000002165842C0;
  *(inited + 432) = v2;
  *(inited + 440) = 0xD000000000000020;
  *(inited + 448) = 0x80000002165842F0;
  *(inited + 456) = v2;
  *(inited + 464) = 0xD000000000000018;
  *(inited + 472) = 0x8000000216584320;
  *(inited + 480) = v2;
  *(inited + 488) = 0xD000000000000010;
  *(inited + 496) = 0x8000000216584340;
  *(inited + 504) = v2;
  *(inited + 512) = 0xD00000000000001CLL;
  *(inited + 520) = 0x8000000216585DE0;
  *(inited + 528) = v3;
  *(inited + 536) = 0x69746172656E6567;
  *(inited + 544) = 0xEA00000000006E6FLL;
  *(inited + 552) = v1;
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_yXlXpTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yXlXmTtMd);
  result = swift_arrayDestroy();
  static CloudDevice.productionSchema = v4;
  return result;
}

uint64_t static CloudSyncAssetData.productionSchema.getter()
{
  if (one-time initialization token for productionSchema != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static CloudSyncAssetData.productionSchema.setter(void *a1)
{
  if (one-time initialization token for productionSchema != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static CloudSyncAssetData.productionSchema = a1;
}

uint64_t (*static CloudSyncAssetData.productionSchema.modify())()
{
  if (one-time initialization token for productionSchema != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return MutableVideoViewModel.videoDurationSeconds.modify;
}

void static CloudSyncAssetData.zoneName.getter()
{
  _StringGuts.grow(_:)(24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI18CloudSyncAssetDataCmMd);
  String.init<A>(describing:)();

  MEMORY[0x21CE92100](0xD000000000000016, 0x8000000216578720);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

CKRecordZoneID CloudSyncAssetData.zoneID.getter()
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

double static CloudSyncAssetData._fillInBlanks(id:sha256:size:inlineData:fileURL:fileExt:assetClass:blobFolderURL:allowLazyLoading:dryRun:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, NSString *a4@<X3>, void *a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, void *a10, uint64_t a11, uint64_t a12, unsigned __int8 *a13, NSURL *a14, char a15, unsigned __int8 a16)
{
  specialized static CloudSyncAssetData._fillInBlanks(id:sha256:size:inlineData:fileURL:fileExt:assetClass:blobFolderURL:allowLazyLoading:dryRun:)(a1, a2, a3, a4, a5, a6 & 1, a7, a8, v21, a10, a11, a12, a13, a14, a15, a16);
  v17 = v22;
  result = *v21;
  v19 = v21[1];
  v20 = v21[2];
  *a9 = v21[0];
  *(a9 + 16) = v19;
  *(a9 + 32) = v20;
  *(a9 + 48) = v17;
  return result;
}

Swift::Int static CloudSyncAssetData.guessAssetClass(protectionClass:ext:)@<X0>(Swift::String string@<0:X0, 8:X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  object = string._object;
  if (string._object)
  {
    countAndFlagsBits = string._countAndFlagsBits;
    result = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of static CloudSyncAssetData.guessAssetClass(protectionClass:ext:), *(&object - 1));
    v9 = result == 1;
    goto LABEL_18;
  }

  if (one-time initialization token for momentsUI != -1)
  {
    swift_once();
  }

  v11 = static DefaultsManager.momentsUI;
  if (static DefaultsManager.momentsUI)
  {
    v12 = MEMORY[0x21CE91FC0](0x7373417373657547, 0xEF7373616C437465);
    v13 = [v11 objectForKey_];

    if (v13)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
    }

    v17 = v15;
    v18 = v16;
    if (*(&v16 + 1))
    {
      result = swift_dynamicCast();
      if ((result & 1) != 0 && (v15 & 1) == 0)
      {
        v9 = 0;
        goto LABEL_18;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  result = outlined destroy of UTType?(&v17, &_sypSgMd);
LABEL_15:
  v14 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v14 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v9 = v14 != 0;
LABEL_18:
  *a4 = v9;
  return result;
}

id static CloudSyncAssetData.create(_:blobFolderURL:context:)(void *a1, unint64_t a2, uint64_t a3)
{
  v262 = a3;
  v261 = a2;
  v246 = type metadata accessor for Logger();
  v258 = *(v246 - 8);
  v4 = MEMORY[0x28223BE20](v246);
  v6 = &v236 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v251 = &v236 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v242 = &v236 - v10;
  MEMORY[0x28223BE20](v9);
  v241 = &v236 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v256 = &v236 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v267 = &v236 - v16;
  MEMORY[0x28223BE20](v15);
  v260 = &v236 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v236 - v19;
  v21 = type metadata accessor for Date();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v240 = &v236 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v244 = &v236 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v236 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v236 - v30;
  v32 = [a1 recordID];
  v33 = [v32 recordName];

  v271 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v269 = v34;

  v35 = [a1 expirationDate];
  v263 = v31;
  v264 = v22;
  v243 = v6;
  v245 = v29;
  if (v35)
  {
    v36 = v35;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v37 = *(v22 + 32);
    v37(v20, v29, v21);
    (*(v22 + 56))(v20, 0, 1, v21);
    v37(v31, v20, v21);
  }

  else
  {
    (*(v22 + 56))(v20, 1, 1, v21);
    static Date.distantPast.getter();
    if ((*(v22 + 48))(v20, 1, v21) != 1)
    {
      outlined destroy of UTType?(v20, &_s10Foundation4DateVSgMd);
    }
  }

  v38 = [a1 recordID];
  v39 = [v38 zoneID];

  v40 = [v39 zoneName];
  v253 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v252 = v41;

  v42 = [a1 encryptedValues];
  v43 = MEMORY[0x21CE91FC0](0x68735F7465737361, 0xEC00000036353261);
  v44 = [v42 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  v45 = 0xF000000000000000;
  if (v44)
  {
    v272 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
    v46 = swift_dynamicCast();
    v47 = v274;
    if (!v46)
    {
      v47 = 0;
    }

    v259 = v47;
    if (v46)
    {
      v45 = v275;
    }
  }

  else
  {
    v259 = 0;
  }

  v48 = [a1 encryptedValues];
  v49 = MEMORY[0x21CE91FC0](0x69735F7465737361, 0xEA0000000000657ALL);
  v50 = [v48 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v50)
  {
    v274 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
    v51 = swift_dynamicCast();
    v52 = v272;
    if (!v51)
    {
      v52 = 0;
    }

    v257 = v52;
    v53 = v51 ^ 1;
  }

  else
  {
    v257 = 0;
    v53 = 1;
  }

  v266 = v53;
  v54 = [a1 encryptedValues];
  v55 = MEMORY[0x21CE91FC0](0x78655F7465737361, 0xE900000000000074);
  v56 = [v54 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  v268 = v45;
  if (v56)
  {
    v272 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
    v57 = swift_dynamicCast();
    v58 = v267;
    if (v57)
    {
      v56 = v274;
      v59 = v275;
    }

    else
    {
      v56 = 0;
      v59 = 0xE000000000000000;
    }

    v270 = v59;
  }

  else
  {
    v270 = 0xE000000000000000;
    v58 = v267;
  }

  v60 = [a1 encryptedValues];
  v61 = MEMORY[0x21CE91FC0](0x6C635F7465737361, 0xEB00000000737361);
  v62 = [v60 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  v265 = v21;
  if (v62)
  {
    v272 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
    v63 = swift_dynamicCast();
    if (v63)
    {
      v62 = v274;
    }

    else
    {
      v62 = 0;
    }

    if (v63)
    {
      v64 = v275;
    }

    else
    {
      v64 = 0;
    }
  }

  else
  {
    v64 = 0;
  }

  v65 = [a1 encryptedValues];
  v66 = MEMORY[0x21CE91FC0](0x61645F7465737361, 0xEA00000000006174);
  v67 = [v65 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  v68 = 0xF000000000000000;
  if (v67)
  {
    v272 = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
    v69 = swift_dynamicCast();
    v70 = v274;
    if (!v69)
    {
      v70 = 0;
    }

    v267 = v70;
    if (v69)
    {
      v68 = v275;
    }
  }

  else
  {
    v267 = 0;
  }

  v71 = MEMORY[0x277D837D0];
  if (!MEMORY[0x21CE92CC0](0x73615F7465737361, 0xEB00000000746573))
  {
    goto LABEL_43;
  }

  objc_opt_self();
  v72 = swift_dynamicCastObjCClass();
  if (!v72)
  {
    swift_unknownObjectRelease();
LABEL_43:
    v76 = type metadata accessor for URL();
    v77 = v260;
    (*(*(v76 - 8) + 56))(v260, 1, 1, v76);
    v250 = 0;
    goto LABEL_46;
  }

  v250 = v72;
  v73 = [v72 fileURL];
  if (v73)
  {
    v74 = v73;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v75 = 0;
  }

  else
  {
    v75 = 1;
  }

  v78 = type metadata accessor for URL();
  (*(*(v78 - 8) + 56))(v58, v75, 1, v78);
  v77 = v260;
  outlined init with take of URL?(v58, v260, &_s10Foundation3URLVSgMd);
LABEL_46:
  v281._countAndFlagsBits = v62;
  v281._object = v64;
  static CloudSyncAssetData.guessAssetClass(protectionClass:ext:)(v281, v56, v270, &v274);

  v79 = v274;
  v80 = specialized static DefaultsManager.MomentsUIDomain.BOOLeanValueFor(_:)();
  v81 = (v80 == 2) | v80;
  v82 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v83 = MEMORY[0x21CE91FC0](0xD000000000000012, 0x8000000216578760);
  v84 = [v82 initWithEntityName_];

  [v84 setIncludesPendingChanges_];
  [v84 setFetchLimit_];
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSPredicate);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_21658CA50;
  *(v85 + 56) = v71;
  *(v85 + 64) = lazy protocol witness table accessor for type String and conformance String();
  v86 = v269;
  *(v85 + 32) = v271;
  *(v85 + 40) = v86;

  v87 = NSPredicate.init(format:_:)();
  [v84 setPredicate_];

  type metadata accessor for CloudSyncAssetData();
  v88 = v262;
  v89 = NSManagedObjectContext.fetch<A>(_:)();
  v254 = v68;
  v249 = v84;
  v255 = v79;
  LODWORD(v248) = v81;
  v90 = v268;
  if (!(v89 >> 62))
  {
    if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_48;
    }

LABEL_135:

    v146 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
    goto LABEL_81;
  }

  v232 = v56;
  v233 = v89;
  v234 = __CocoaSet.count.getter();
  v89 = v233;
  v56 = v232;
  if (!v234)
  {
    goto LABEL_135;
  }

LABEL_48:
  v239 = v56;
  if ((v89 & 0xC000000000000001) != 0)
  {
    v91 = MEMORY[0x21CE93180](0);
  }

  else
  {
    if (!*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_138;
    }

    v91 = *(v89 + 32);
  }

  v92 = v91;

  LOBYTE(v272) = v79;
  v93 = type metadata accessor for URL();
  v94 = *(v93 - 8);
  v95 = v256;
  (*(v94 + 16))(v256, v261, v93);
  (*(v94 + 56))(v95, 0, 1, v93);
  v235 = v81 & 1;
  v96 = v271;
  v97 = v269;
  specialized static CloudSyncAssetData._fillInBlanks(id:sha256:size:inlineData:fileURL:fileExt:assetClass:blobFolderURL:allowLazyLoading:dryRun:)(v271, v269, v259, v90, v257, v266, v267, v68, &v274, v77, v239, v270, &v272, v95, v235, 1u);
  v236 = v274;
  v237 = v275;
  v98 = v277;
  v238 = v276;
  v99 = v278;
  outlined destroy of UTType?(v95, &_s10Foundation3URLVSgMd);

  outlined consume of Data?(v98, v99);
  v247 = v92;
  v100 = [v92 id];
  v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v103 = v102;

  if (v101 == v96 && v103 == v97)
  {

    v56 = v242;
  }

  else
  {
    v104 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v56 = v242;
    if ((v104 & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  v105 = [v247 zoneName];
  if (v105)
  {
    v106 = v105;
    v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v109 = v108;

    if (v107 == v253 && v109 == v252)
    {
    }

    else
    {
      v110 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v110 & 1) == 0)
      {
        goto LABEL_76;
      }
    }

    v111 = [v247 sha256];
    if (v111)
    {
      v112 = v111;
      v113 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v115 = v114;

      v116 = v238;
      if (v115 >> 60 != 15)
      {
        if (v238 >> 60 != 15)
        {
          v117 = v237;
          outlined copy of Data._Representation(v237, v238);
          outlined copy of Data._Representation(v117, v116);
          outlined copy of Data?(v113, v115);
          v118 = specialized static Data.== infix(_:_:)(v113, v115, v117, v116);
          outlined consume of Data?(v117, v116);
          outlined consume of Data._Representation(v117, v116);
          outlined consume of Data?(v113, v115);
          outlined consume of Data?(v113, v115);
          if ((v118 & 1) == 0)
          {
            goto LABEL_76;
          }

          goto LABEL_68;
        }

        goto LABEL_74;
      }
    }

    else
    {
      v113 = 0;
      v115 = 0xF000000000000000;
      v116 = v238;
    }

    if (v116 >> 60 == 15)
    {
      outlined copy of Data._Representation(v237, v116);
      outlined consume of Data?(v113, v115);
LABEL_68:
      v119 = [v247 size];
      v120.super.super.isa = Int64._bridgeToObjectiveC()().super.super.isa;
      isa = v120.super.super.isa;
      if (v119)
      {
        type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSNumber);
        v122 = static NSObject.== infix(_:_:)();

        if (v122)
        {
          if (one-time initialization token for Log != -1)
          {
            swift_once();
          }

          v123 = v246;
          v124 = __swift_project_value_buffer(v246, static CloudSyncAssetData.Log);
          swift_beginAccess();
          v125 = v258;
          v126 = v241;
          (*(v258 + 16))(v241, v124, v123);
          v127 = v269;

          v128 = Logger.logObject.getter();
          v129 = static os_log_type_t.debug.getter();

          v130 = os_log_type_enabled(v128, v129);
          v131 = v265;
          v132 = v264;
          if (v130)
          {
            v133 = swift_slowAlloc();
            v134 = swift_slowAlloc();
            v274 = v134;
            *v133 = 136315138;
            *(v133 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v271, v127, &v274);
            _os_log_impl(&dword_21607C000, v128, v129, "Existing assetData found %s", v133, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v134);
            MEMORY[0x21CE94770](v134, -1, -1);
            MEMORY[0x21CE94770](v133, -1, -1);

            (*(v125 + 8))(v241, v123);
          }

          else
          {

            (*(v125 + 8))(v126, v123);
          }

          v173 = v247;
          v224 = v245;
          v225 = v240;
          v226 = [v247 expiry];
          v171 = v258;
          v176 = v251;
          if (v226)
          {
            v227 = v226;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            static Date.distantPast.getter();
            LOBYTE(v227) = static Date.> infix(_:_:)();
            v228 = *(v132 + 8);
            v228(v224, v131);
            if (v227)
            {
              if (static Date.> infix(_:_:)())
              {
                v229 = Date._bridgeToObjectiveC()().super.isa;
                v230 = v247;
                [v247 setExpiry_];

                outlined consume of Data._Representation(v237, v238);
                v228(v225, v131);
                v173 = v230;
              }

              else
              {
                v228(v225, v131);
                outlined consume of Data._Representation(v237, v238);

                v173 = v247;
              }

              goto LABEL_98;
            }

            v228(v225, v131);
            v173 = v247;
          }

          v231 = Date._bridgeToObjectiveC()().super.isa;
          [v173 setExpiry_];
          outlined consume of Data._Representation(v237, v238);

          goto LABEL_98;
        }
      }

      else
      {
      }

      goto LABEL_76;
    }

LABEL_74:
    v135 = v237;
    outlined copy of Data._Representation(v237, v116);
    outlined consume of Data?(v113, v115);
    outlined consume of Data?(v135, v116);
  }

LABEL_76:
  if (one-time initialization token for Log != -1)
  {
LABEL_138:
    swift_once();
  }

  v136 = v246;
  v137 = __swift_project_value_buffer(v246, static CloudSyncAssetData.Log);
  swift_beginAccess();
  v138 = v258;
  (*(v258 + 16))(v56, v137, v136);
  v139 = v269;

  v140 = Logger.logObject.getter();
  v141 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v140, v141))
  {
    v142 = swift_slowAlloc();
    v143 = v138;
    v144 = swift_slowAlloc();
    v274 = v144;
    *v142 = 136315138;
    *(v142 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v271, v139, &v274);
    _os_log_impl(&dword_21607C000, v140, v141, "Modifying existing assetData %s", v142, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v144);
    MEMORY[0x21CE94770](v144, -1, -1);
    MEMORY[0x21CE94770](v142, -1, -1);

    v77 = v260;
    (*(v143 + 8))(v56, v246);
  }

  else
  {

    (*(v138 + 8))(v56, v136);
  }

  LOBYTE(v79) = v255;
  v145 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v146 = [v145 initWithContext_];
  outlined consume of Data._Representation(v237, v238);

  v90 = v268;
  v56 = v239;
LABEL_81:
  LOBYTE(v272) = v79;
  v147 = type metadata accessor for URL();
  v148 = *(v147 - 8);
  v149 = v256;
  (*(v148 + 16))(v256, v261, v147);
  (*(v148 + 56))(v149, 0, 1, v147);
  v150 = v146;
  v151 = v269;
  specialized static CloudSyncAssetData._fillInBlanks(id:sha256:size:inlineData:fileURL:fileExt:assetClass:blobFolderURL:allowLazyLoading:dryRun:)(v271, v269, v259, v90, v257, v266, v267, v68, &v274, v77, v56, v270, &v272, v149, v248 & 1, 0);
  v262 = v275;
  v152 = v277;
  v261 = v276;
  v153 = v278;
  v248 = v279;
  v154 = v280;
  outlined destroy of UTType?(v149, &_s10Foundation3URLVSgMd);
  v155 = [v150 expiry];
  v156 = v150;

  if (v155)
  {
    v157 = v244;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v158 = v245;
    static Date.distantPast.getter();
    v159 = static Date.> infix(_:_:)();
    v160 = *(v264 + 8);
    v161 = v158;
    v162 = v265;
    v160(v161, v265);
    if (v159)
    {
      if (static Date.> infix(_:_:)())
      {
        v163 = Date._bridgeToObjectiveC()().super.isa;
        [v156 setExpiry_];
      }

      v160(v157, v265);
      v77 = v260;
      v151 = v269;
      v164 = v156;
      goto LABEL_88;
    }

    v160(v157, v162);
    v77 = v260;
    v151 = v269;
  }

  v165 = Date._bridgeToObjectiveC()().super.isa;
  v164 = v156;
  [v156 setExpiry_];

LABEL_88:
  v166 = MEMORY[0x21CE91FC0](v271, v151);
  [v164 setId_];

  v167 = MEMORY[0x21CE91FC0](v253, v252);
  [v164 setZoneName_];

  v168 = Data._bridgeToObjectiveC()().super.isa;
  [v164 setSha256_];

  v169 = Int64._bridgeToObjectiveC()().super.super.isa;
  [v164 setSize_];

  if (v153 >> 60 == 15)
  {
    v170 = 0;
  }

  else
  {
    outlined copy of Data._Representation(v152, v153);
    v170 = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(v152, v153);
  }

  v171 = v258;
  [v156 setInlineData_];

  if (v154)
  {
    v172 = MEMORY[0x21CE91FC0](v248, v154);
  }

  else
  {
    v172 = 0;
  }

  v173 = v156;
  [v156 setFilePath_];

  if (v255)
  {
    v174 = 99;
  }

  else
  {
    v174 = 98;
  }

  v175 = MEMORY[0x21CE91FC0](v174, 0xE100000000000000);

  [v156 setProtectionClass_];

  outlined consume of Data._Representation(v262, v261);
  outlined consume of Data?(v152, v153);

  v131 = v265;
  v132 = v264;
  v176 = v251;
LABEL_98:
  [v173 setCkAssetData_];
  if ((v266 & 1) == 0)
  {
    v177 = [v173 size];
    if (v177)
    {
      v274 = 0;
      LOBYTE(v275) = 1;
      v178 = v177;
      static Int64._conditionallyBridgeFromObjectiveC(_:result:)();

      if ((v275 & 1) == 0 && v274 != v257)
      {
        if (one-time initialization token for Log != -1)
        {
          swift_once();
        }

        v179 = v246;
        v180 = __swift_project_value_buffer(v246, static CloudSyncAssetData.Log);
        swift_beginAccess();
        (*(v171 + 16))(v176, v180, v179);
        v247 = v173;
        v181 = v173;
        v182 = Logger.logObject.getter();
        v183 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v182, v183))
        {
          v184 = swift_slowAlloc();
          v185 = swift_slowAlloc();
          v271 = swift_slowAlloc();
          v273 = v271;
          *v184 = 136446722;
          *(v184 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x8000000216578780, &v273);
          *(v184 + 12) = 2080;
          v274 = v257;
          LOBYTE(v275) = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int64VSgMd);
          v186 = String.init<A>(describing:)();
          v188 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v186, v187, &v273);
          v77 = v260;

          *(v184 + 14) = v188;
          v131 = v265;
          *(v184 + 22) = 2112;
          v189 = [v181 size];
          *(v184 + 24) = v189;
          *v185 = v189;
          _os_log_impl(&dword_21607C000, v182, v183, "CloudSyncAssetData.%{public}s Record size %s != asset size %@", v184, 0x20u);
          outlined destroy of UTType?(v185, &_sSo8NSObjectCSgMd);
          MEMORY[0x21CE94770](v185, -1, -1);
          v190 = v271;
          swift_arrayDestroy();
          MEMORY[0x21CE94770](v190, -1, -1);
          MEMORY[0x21CE94770](v184, -1, -1);

          (*(v258 + 8))(v251, v179);
        }

        else
        {

          (*(v258 + 8))(v176, v179);
        }

        v173 = v247;
      }
    }
  }

  v191 = v268;
  if (v268 >> 60 == 15)
  {
    outlined consume of Data?(v267, v254);

    outlined destroy of UTType?(v77, &_s10Foundation3URLVSgMd);
LABEL_114:
    (*(v132 + 8))(v263, v131);
    return v173;
  }

  v192 = [v173 sha256];
  v193 = v254;
  if (!v192)
  {
    outlined consume of Data?(v267, v254);
    outlined consume of Data?(v259, v191);

    outlined destroy of UTType?(v77, &_s10Foundation3URLVSgMd);
    v132 = v264;
    goto LABEL_114;
  }

  v247 = v173;
  v194 = v192;
  v195 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v197 = v196;

  v198 = v259;
  if (specialized static Data.== infix(_:_:)(v195, v197, v259, v191))
  {
    outlined consume of Data?(v267, v193);
    outlined consume of Data._Representation(v195, v197);
    outlined consume of Data?(v198, v191);

    outlined destroy of UTType?(v77, &_s10Foundation3URLVSgMd);
    (*(v264 + 8))(v263, v131);
  }

  else
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v199 = v246;
    v200 = __swift_project_value_buffer(v246, static CloudSyncAssetData.Log);
    swift_beginAccess();
    v201 = v258;
    v202 = v243;
    (*(v258 + 16))(v243, v200, v199);
    v203 = v247;
    v204 = v268;
    outlined copy of Data?(v198, v268);
    v205 = Logger.logObject.getter();
    LODWORD(v200) = static os_log_type_t.error.getter();
    outlined consume of Data?(v198, v204);

    LODWORD(v271) = v200;
    v206 = v200;
    v207 = v205;
    if (os_log_type_enabled(v205, v206))
    {
      v208 = swift_slowAlloc();
      v209 = swift_slowAlloc();
      v273 = v209;
      *v208 = 136446722;
      *(v208 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x8000000216578780, &v273);
      *(v208 + 12) = 2080;
      outlined copy of Data._Representation(v198, v204);
      v210 = Data.description.getter();
      v212 = v211;
      outlined consume of Data?(v198, v204);
      v213 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v210, v212, &v273);

      *(v208 + 14) = v213;
      *(v208 + 22) = 2080;
      v214 = [v203 sha256];
      if (v214)
      {
        v215 = v214;
        v216 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v218 = v217;
      }

      else
      {
        v216 = 0;
        v218 = 0xC000000000000000;
      }

      v219 = Data.description.getter();
      v221 = v220;
      outlined consume of Data._Representation(v216, v218);
      v222 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v219, v221, &v273);

      *(v208 + 24) = v222;
      _os_log_impl(&dword_21607C000, v207, v271, "CloudSyncAssetData.%{public}s Record hash %s != asset hash %s", v208, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v209, -1, -1);
      MEMORY[0x21CE94770](v208, -1, -1);
      outlined consume of Data?(v267, v254);
      outlined consume of Data._Representation(v195, v197);

      outlined consume of Data?(v259, v268);
      (*(v258 + 8))(v243, v246);
    }

    else
    {
      outlined consume of Data?(v267, v254);
      outlined consume of Data._Representation(v195, v197);

      outlined consume of Data?(v198, v204);
      (*(v201 + 8))(v202, v199);
    }

    outlined destroy of UTType?(v260, &_s10Foundation3URLVSgMd);
    (*(v264 + 8))(v263, v265);
  }

  return v247;
}

uint64_t closure #1 in CloudSyncAssetData.mergeFromServerRecord(_:force:primary:primaryID:blobFolderURL:cloudManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](closure #1 in CloudSyncAssetData.mergeFromServerRecord(_:force:primary:primaryID:blobFolderURL:cloudManager:), 0, 0);
}

uint64_t closure #1 in CloudSyncAssetData.mergeFromServerRecord(_:force:primary:primaryID:blobFolderURL:cloudManager:)()
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

  return CloudManagerProtocol.add(pendingRecordZoneChanges:_:_:)(v6, 0xD00000000000004CLL, 0x8000000216578810, 359, ObjectType, v8);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t CloudSyncAssetData.lastKnownCKRecord.setter(void *a1)
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

id @nonobjc NSFileHandle.__allocating_init(forReadingFrom:)(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  URL._bridgeToObjectiveC()(v13);
  v3 = v2;
  v12 = 0;
  v4 = [swift_getObjCClassFromMetadata() fileHandleForReadingFromURL:v2 error:&v12];

  v5 = v12;
  if (v4)
  {
    v6 = type metadata accessor for URL();
    v7 = *(*(v6 - 8) + 8);
    v8 = v5;
    v7(a1, v6);
  }

  else
  {
    v9 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 8))(a1, v10);
  }

  return v4;
}

uint64_t one-time initialization function for zeroSHA256()
{
  result = closure #1 in variable initialization expression of static CloudSyncAssetData.zeroSHA256();
  static CloudSyncAssetData.zeroSHA256 = result;
  *algn_27CA8E728 = v1;
  return result;
}

uint64_t closure #1 in variable initialization expression of static CloudSyncAssetData.zeroSHA256()
{
  v15 = *MEMORY[0x277D85DE8];
  v0 = type metadata accessor for SHA256();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SHA256Digest();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540]);
  dispatch thunk of HashFunction.init()();
  memset(v12, 0, 14);
  dispatch thunk of HashFunction.update(bufferPointer:)();
  dispatch thunk of HashFunction.finalize()();
  (*(v1 + 8))(v3, v0);
  v13 = v4;
  v14 = _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest, MEMORY[0x277CC5290]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(v5 + 16))(boxed_opaque_existential_1, v7, v4);
  __swift_project_boxed_opaque_existential_1(v12, v13);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  (*(v5 + 8))(v7, v4);
  v9 = v11[2];
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v9;
}

Swift::Void __swiftcall CloudSyncAssetData.populateRecord(_:)(CKRecord a1)
{
  v2 = v1;
  isa = a1.super.isa;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v279 = &v271 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v271 - v7;
  v287 = type metadata accessor for URL.DirectoryHint();
  v286 = *(v287 - 8);
  MEMORY[0x28223BE20](v287);
  v285 = &v271 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v275 = &v271 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v284 = &v271 - v13;
  v289 = type metadata accessor for URL();
  v288 = *(v289 - 8);
  v14 = MEMORY[0x28223BE20](v289);
  v16 = &v271 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v271 - v18;
  MEMORY[0x28223BE20](v17);
  v283 = &v271 - v20;
  v21 = type metadata accessor for Logger();
  v295 = *(v21 - 8);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v271 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v271 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v273 = &v271 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v276 = &v271 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v271 = &v271 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v272 = &v271 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v278 = &v271 - v37;
  MEMORY[0x28223BE20](v36);
  v39 = &v271 - v38;
  v40 = [v2 zoneName];
  v291 = v27;
  v282 = v3;
  v281 = v4;
  v280 = v8;
  v274 = v19;
  if (v40)
  {
    v41 = v40;
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;
  }

  else
  {
    v42 = 0;
    v44 = 0;
  }

  v45 = [(objc_class *)isa recordID];
  v46 = [v45 zoneID];

  v47 = [v46 zoneName];
  v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v50 = v49;

  v292 = v21;
  v290 = v16;
  if (!v44)
  {

    v51 = v293;
LABEL_10:
    v277 = v24;
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v53 = __swift_project_value_buffer(v21, static CloudSyncAssetData.Log);
    swift_beginAccess();
    v54 = v295;
    (*(v295 + 16))(v39, v53, v21);
    v55 = isa;
    v56 = v51;
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v294 = swift_slowAlloc();
      v299 = v294;
      *v59 = 136446978;
      *(v59 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x80000002165787D0, &v299);
      *(v59 + 12) = 2080;
      v60 = [(objc_class *)v55 recordID];
      v61 = [v60 recordName];

      v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v64 = v63;

      v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, &v299);

      *(v59 + 14) = v65;
      *(v59 + 22) = 2080;
      v66 = [(objc_class *)v55 recordID];
      v67 = [v66 zoneID];

      v68 = [v67 zoneName];
      v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v71 = v70;

      v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v71, &v299);

      *(v59 + 24) = v72;
      *(v59 + 32) = 2080;
      v73 = [v56 zoneName];
      if (v73)
      {
        v74 = v73;
        v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v77 = v76;
      }

      else
      {
        v77 = 0xE500000000000000;
        v75 = 0x3E6C696E3CLL;
      }

      v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v77, &v299);

      *(v59 + 34) = v78;
      _os_log_impl(&dword_21607C000, v57, v58, "CloudSyncAssetData.%{public}s Populating record %s for wrong zone %s, expected %s", v59, 0x2Au);
      v79 = v294;
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v79, -1, -1);
      MEMORY[0x21CE94770](v59, -1, -1);

      v21 = v292;
      (*(v295 + 8))(v39, v292);
      v51 = v293;
    }

    else
    {

      (*(v54 + 8))(v39, v21);
    }

    v24 = v277;
    goto LABEL_19;
  }

  if (v42 == v48 && v44 == v50)
  {

    v51 = v293;
    goto LABEL_19;
  }

  v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v51 = v293;
  if ((v52 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_19:
  v80 = [v51 sha256];
  v81 = MEMORY[0x277CC9318];
  v82 = MEMORY[0x277CBBBE0];
  if (v80)
  {
    v83 = v80;
    v84 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v86 = v85;

    v301 = v81;
    v302 = v82;
    v299 = v84;
    v300 = v86;
    outlined copy of Data._Representation(v84, v86);
    _s9MomentsUI11CloudRecordPAAE18_setEncryptedValueyySo8CKRecordC_SS0C3Kit0hG8Protocol_pSgtFAA0C13SyncAssetDataC_Tt2g5Tm(isa, 0x68735F7465737361, 0xEC00000036353261, &v299, &one-time initialization token for productionSchema, &static CloudSyncAssetData.productionSchema);
    outlined consume of Data._Representation(v84, v86);
    outlined destroy of UTType?(&v299, &_s8CloudKit21CKRecordValueProtocol_pSgMd);
  }

  v87 = [v51 size];
  v88 = v87;
  v89 = &selRef_setDeliversTouchesForGesturesToSuperview_;
  v294 = v87;
  if (v87)
  {
    v90 = v87;
    if (([v90 longLongValue] & 0x8000000000000000) != 0)
    {
    }

    else
    {
      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v91 = __swift_project_value_buffer(v21, static CloudSyncAssetData.Log);
      swift_beginAccess();
      v92 = v278;
      (*(v295 + 16))(v278, v91, v21);
      v93 = isa;
      v94 = v90;
      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v277 = v24;
        v99 = v98;
        v100 = swift_slowAlloc();
        v299 = v100;
        *v97 = 136446722;
        *(v97 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x80000002165787D0, &v299);
        *(v97 + 12) = 2080;
        v101 = [(objc_class *)v93 recordID];
        v102 = [v101 recordName];

        v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v105 = v104;

        v89 = &selRef_setDeliversTouchesForGesturesToSuperview_;
        v106 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v103, v105, &v299);

        *(v97 + 14) = v106;
        *(v97 + 22) = 2112;
        *(v97 + 24) = v94;
        *v99 = v294;
        v107 = v94;
        _os_log_impl(&dword_21607C000, v95, v96, "CloudSyncAssetData.%{public}s Asset %s size %@", v97, 0x20u);
        outlined destroy of UTType?(v99, &_sSo8NSObjectCSgMd);
        v108 = v292;
        MEMORY[0x21CE94770](v99, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v100, -1, -1);
        v109 = v97;
        v51 = v293;
        MEMORY[0x21CE94770](v109, -1, -1);

        (*(v295 + 8))(v278, v108);
      }

      else
      {

        (*(v295 + 8))(v92, v21);
      }

      v301 = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSNumber);
      v302 = MEMORY[0x277CBBED8];
      v299 = v94;
      v110 = v94;
      _s9MomentsUI11CloudRecordPAAE18_setEncryptedValueyySo8CKRecordC_SS0C3Kit0hG8Protocol_pSgtFAA0C13SyncAssetDataC_Tt2g5Tm(v93, 0x69735F7465737361, 0xEA0000000000657ALL, &v299, &one-time initialization token for productionSchema, &static CloudSyncAssetData.productionSchema);

      outlined destroy of UTType?(&v299, &_s8CloudKit21CKRecordValueProtocol_pSgMd);
      v88 = v294;
    }
  }

  CloudSyncAssetData.assetClass.getter(&v299);
  v111 = 98;
  if (v299)
  {
    v111 = 99;
  }

  v301 = MEMORY[0x277D837D0];
  v302 = MEMORY[0x277CBBE08];
  v299 = v111;
  v300 = 0xE100000000000000;
  _s9MomentsUI11CloudRecordPAAE18_setEncryptedValueyySo8CKRecordC_SS0C3Kit0hG8Protocol_pSgtFAA0C13SyncAssetDataC_Tt2g5Tm(isa, 0x6C635F7465737361, 0xEB00000000737361, &v299, &one-time initialization token for productionSchema, &static CloudSyncAssetData.productionSchema);
  outlined destroy of UTType?(&v299, &_s8CloudKit21CKRecordValueProtocol_pSgMd);
  v112 = [v51 filePath];
  if (v112)
  {
    v113 = v112;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v114 = v288;
    v115 = v289;
    (*(v288 + 56))(v284, 1, 1, v289);
    (*(v286 + 104))(v285, *MEMORY[0x277CC91D8], v287);
    v116 = v283;
    URL.init(filePath:directoryHint:relativeTo:)();
    v117 = URL.pathExtension.getter();
    v119 = v118;
    v51 = v293;
    v120 = isa;
    (*(v114 + 8))(v116, v115);
    v301 = MEMORY[0x277D837D0];
    v302 = MEMORY[0x277CBBE08];
    v299 = v117;
    v300 = v119;
    _s9MomentsUI11CloudRecordPAAE18_setEncryptedValueyySo8CKRecordC_SS0C3Kit0hG8Protocol_pSgtFAA0C13SyncAssetDataC_Tt2g5Tm(v120, 0x78655F7465737361, 0xE900000000000074, &v299, &one-time initialization token for productionSchema, &static CloudSyncAssetData.productionSchema);
    outlined destroy of UTType?(&v299, &_s8CloudKit21CKRecordValueProtocol_pSgMd);
  }

  v121 = specialized static DefaultsManager.MomentsUIDomain.intValueFor(_:)();
  if (!v88)
  {
LABEL_49:
    v134 = [v51 inlineData];
    if (v134)
    {
      v128 = v134;
      v124 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v136 = v135;

      v137 = v136 >> 62;
      v133 = v292;
      if ((v136 >> 62) <= 1)
      {
        if (v137)
        {
          if (__OFSUB__(HIDWORD(v124), v124))
          {
            __break(1u);
            goto LABEL_143;
          }

          v138 = HIDWORD(v124) - v124;
        }

        else
        {
          v138 = BYTE6(v136);
        }

        goto LABEL_69;
      }

      if (v137 != 2)
      {
        if (!v294)
        {
          goto LABEL_102;
        }

        v138 = 0;
        goto LABEL_74;
      }

      v161 = *(v124 + 2);
      v160 = *(v124 + 3);
      v138 = v160 - v161;
      if (!__OFSUB__(v160, v161))
      {
LABEL_69:
        if (!v294)
        {
          if (!v138)
          {
            goto LABEL_102;
          }

LABEL_75:
          v289 = v136 >> 62;
          if (one-time initialization token for Log != -1)
          {
            swift_once();
          }

          v170 = __swift_project_value_buffer(v133, static CloudSyncAssetData.Log);
          swift_beginAccess();
          v171 = v295;
          v172 = v276;
          (*(v295 + 16))(v276, v170, v133);
          outlined copy of Data._Representation(v124, v136);
          v173 = v171;
          v174 = isa;
          v175 = v294;
          outlined copy of Data._Representation(v124, v136);
          v176 = Logger.logObject.getter();
          LODWORD(v171) = static os_log_type_t.error.getter();
          v290 = v175;

          LODWORD(v288) = v171;
          v177 = v171;
          v137 = v176;
          if (os_log_type_enabled(v176, v177))
          {
            v162 = swift_slowAlloc();
            v178 = swift_slowAlloc();
            v287 = swift_slowAlloc();
            v299 = v287;
            *v162 = 136446978;
            *(v162 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x80000002165787D0, &v299);
            *(v162 + 12) = 2080;
            v179 = [(objc_class *)v174 recordID];
            v180 = [v179 recordName];

            v181 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v183 = v182;

            v184 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v181, v183, &v299);

            *(v162 + 14) = v184;
            v168 = v178;
            *(v162 + 22) = 2112;
            v185 = v290;
            *(v162 + 24) = v290;
            *v178 = v294;
            *(v162 + 32) = 2048;
            v186 = v185;
            if (v289 <= 1)
            {
              if (v289)
              {
LABEL_97:
                v212 = v186;
                outlined consume of Data._Representation(v124, v136);
                LODWORD(v188) = HIDWORD(v124) - v124;
                v133 = v292;
                if (__OFSUB__(HIDWORD(v124), v124))
                {
                  __break(1u);
                  goto LABEL_145;
                }

                v188 = v188;
                goto LABEL_101;
              }

              v187 = v185;
              outlined consume of Data._Representation(v124, v136);
              v188 = BYTE6(v136);
              goto LABEL_100;
            }

            if (v289 != 2)
            {
              v213 = v185;
              outlined consume of Data._Representation(v124, v136);
              v188 = 0;
LABEL_100:
              v133 = v292;
LABEL_101:
              v51 = v293;
              v214 = v276;
              *(v162 + 34) = v188;
              outlined consume of Data._Representation(v124, v136);
              _os_log_impl(&dword_21607C000, v137, v288, "CloudSyncAssetData.%{public}s Populating record %s of size %@ with inlineData of size %ld!", v162, 0x2Au);
              outlined destroy of UTType?(v168, &_sSo8NSObjectCSgMd);
              MEMORY[0x21CE94770](v168, -1, -1);
              v215 = v287;
              swift_arrayDestroy();
              MEMORY[0x21CE94770](v215, -1, -1);
              MEMORY[0x21CE94770](v162, -1, -1);

              (*(v295 + 8))(v214, v133);
              goto LABEL_102;
            }

            v189 = *(v124 + 2);
            v51 = *(v124 + 3);
            v190 = v185;
            v163 = outlined consume of Data._Representation(v124, v136);
            v188 = &v51[-v189];
            v133 = v292;
            if (!__OFSUB__(v51, v189))
            {
              goto LABEL_101;
            }

            __break(1u);
LABEL_87:
            v301 = MEMORY[0x277CC9318];
            v302 = MEMORY[0x277CBBBE0];
            v299 = v163;
            v300 = v164;
            v191 = v163;
            v192 = v137;
            v193 = v164;
            outlined copy of Data._Representation(v163, v164);
            _s9MomentsUI11CloudRecordPAAE18_setEncryptedValueyySo8CKRecordC_SS0C3Kit0hG8Protocol_pSgtFAA0C13SyncAssetDataC_Tt2g5Tm(isa, 0x61645F7465737361, 0xEA00000000006174, &v299, &one-time initialization token for productionSchema, &static CloudSyncAssetData.productionSchema);
            outlined consume of Data._Representation(v191, v193);
            (*(v136 + 8))(v162, v192);
LABEL_103:
            outlined destroy of UTType?(&v299, &_s8CloudKit21CKRecordValueProtocol_pSgMd);
LABEL_107:
            v88 = v291;
            goto LABEL_108;
          }

          outlined consume of Data._Representation(v124, v136);
          outlined consume of Data._Representation(v124, v136);

          (*(v173 + 8))(v172, v133);
LABEL_102:
          v301 = MEMORY[0x277CC9318];
          v302 = MEMORY[0x277CBBBE0];
          v299 = v124;
          v300 = v136;
          outlined copy of Data._Representation(v124, v136);
          _s9MomentsUI11CloudRecordPAAE18_setEncryptedValueyySo8CKRecordC_SS0C3Kit0hG8Protocol_pSgtFAA0C13SyncAssetDataC_Tt2g5Tm(isa, 0x61645F7465737361, 0xEA00000000006174, &v299, &one-time initialization token for productionSchema, &static CloudSyncAssetData.productionSchema);
          outlined consume of Data._Representation(v124, v136);
          goto LABEL_103;
        }

LABEL_74:
        if (v138 == [v294 v89[115]])
        {
          goto LABEL_102;
        }

        goto LABEL_75;
      }

      __break(1u);
    }

    else
    {
      v138 = v275;
      CloudSyncAssetData.fileURL.getter(v275);
      v136 = v288;
      v137 = v289;
      v139 = (*(v288 + 48))(v138, 1, v289);
      v133 = v292;
      if (v139 == 1)
      {
        outlined destroy of UTType?(v138, &_s10Foundation3URLVSgMd);
        if (one-time initialization token for Log != -1)
        {
          swift_once();
        }

        v140 = __swift_project_value_buffer(v133, static CloudSyncAssetData.Log);
        swift_beginAccess();
        v141 = v273;
        (*(v295 + 16))(v273, v140, v133);
        v142 = isa;
        v143 = v294;
        v144 = v294;
        v145 = Logger.logObject.getter();
        v146 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v145, v146))
        {
          v147 = swift_slowAlloc();
          v148 = swift_slowAlloc();
          v290 = swift_slowAlloc();
          v297[0] = v290;
          *v147 = 136446722;
          *(v147 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x80000002165787D0, v297);
          *(v147 + 12) = 2080;
          v149 = [(objc_class *)v142 recordID];
          v150 = [v149 recordName];

          v151 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v153 = v152;

          v133 = v292;
          v154 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v151, v153, v297);
          v155 = v143;
          v156 = v295;

          *(v147 + 14) = v154;
          *(v147 + 22) = 2112;
          *(v147 + 24) = v144;
          *v148 = v155;
          v157 = v144;
          _os_log_impl(&dword_21607C000, v145, v146, "CloudSyncAssetData.%{public}s Populating record %s of size %@ with neither inline nor ckAsset!", v147, 0x20u);
          outlined destroy of UTType?(v148, &_sSo8NSObjectCSgMd);
          v158 = v148;
          v51 = v293;
          MEMORY[0x21CE94770](v158, -1, -1);
          v159 = v290;
          swift_arrayDestroy();
          MEMORY[0x21CE94770](v159, -1, -1);
          MEMORY[0x21CE94770](v147, -1, -1);
LABEL_92:

          v210 = v156;
LABEL_106:
          (*(v210 + 8))(v141, v133);
          goto LABEL_107;
        }

LABEL_105:
        v210 = v295;
        goto LABEL_106;
      }
    }

    v162 = v274;
    (*(v136 + 32))(v274, v138, v137);
    v163 = Data.init(contentsOf:options:)();
    goto LABEL_87;
  }

  if (v122)
  {
    v123 = 700000;
  }

  else
  {
    v123 = v121;
  }

  v124 = v88;
  if (v123 >= [v124 v89[115]])
  {

    goto LABEL_49;
  }

  v125 = CloudSyncAssetData.ckAsset.getter();
  if (v125)
  {
    v126 = v125;
    v301 = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKAsset);
    v302 = MEMORY[0x277CBBED0];
    v299 = v126;
    v127 = one-time initialization token for container;
    v128 = v126;
    v88 = v291;
    if (v127 != -1)
    {
      swift_once();
    }

    v129 = [static CloudManager.container containerID];
    v130 = [v129 environment];

    if (v130 != 1)
    {
LABEL_46:
      outlined init with copy of DateInterval?(&v299, v297, &_s8CloudKit21CKRecordValueProtocol_pSgMd);
      type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecord);
      CKRecordKeyValueSetting.subscript.setter();
LABEL_47:

      outlined destroy of UTType?(&v299, &_s8CloudKit21CKRecordValueProtocol_pSgMd);
      v133 = v292;
      goto LABEL_108;
    }

    if (one-time initialization token for productionSchema == -1)
    {
LABEL_44:
      swift_beginAccess();
      if (!*(static CloudSyncAssetData.productionSchema + 2))
      {
        goto LABEL_47;
      }

      specialized __RawDictionaryStorage.find<A>(_:)(0x73615F7465737361, 0xEB00000000746573);
      v132 = v131;

      if ((v132 & 1) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }

LABEL_143:
    swift_once();
    goto LABEL_44;
  }

  v165 = [v51 inlineData];
  v88 = v291;
  if (!v165)
  {
    v194 = isa;
    v133 = v292;
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v195 = __swift_project_value_buffer(v133, static CloudSyncAssetData.Log);
    swift_beginAccess();
    v141 = v271;
    (*(v295 + 16))(v271, v195, v133);
    v196 = v194;
    v197 = v124;
    v145 = Logger.logObject.getter();
    v198 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v145, v198))
    {
      v199 = swift_slowAlloc();
      v200 = swift_slowAlloc();
      v290 = swift_slowAlloc();
      v297[0] = v290;
      *v199 = 136446722;
      *(v199 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x80000002165787D0, v297);
      *(v199 + 12) = 2080;
      v201 = [(objc_class *)v196 recordID];
      v202 = [v201 recordName];

      v203 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v205 = v204;

      v133 = v292;
      v206 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v203, v205, v297);
      v156 = v295;

      *(v199 + 14) = v206;
      *(v199 + 22) = 2112;
      *(v199 + 24) = v197;
      *v200 = v294;
      v207 = v197;
      _os_log_impl(&dword_21607C000, v145, v198, "CloudSyncAssetData.%{public}s Populating record %s of size %@ without any data!", v199, 0x20u);
      outlined destroy of UTType?(v200, &_sSo8NSObjectCSgMd);
      v208 = v200;
      v51 = v293;
      MEMORY[0x21CE94770](v208, -1, -1);
      v209 = v290;
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v209, -1, -1);
      MEMORY[0x21CE94770](v199, -1, -1);

      goto LABEL_92;
    }

    goto LABEL_105;
  }

  v137 = v89;
  v166 = v165;
  v136 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v162 = v167;

  v168 = v162 >> 62;
  v133 = v292;
  if ((v162 >> 62) <= 1)
  {
    if (!v168)
    {
      v169 = BYTE6(v162);
      goto LABEL_124;
    }

    if (!__OFSUB__(HIDWORD(v136), v136))
    {
      v169 = HIDWORD(v136) - v136;
      goto LABEL_124;
    }

LABEL_145:
    __break(1u);
    goto LABEL_146;
  }

  if (v168 != 2)
  {
    v169 = 0;
    goto LABEL_124;
  }

  v211 = *(v136 + 16);
  v186 = *(v136 + 24);
  v169 = &v186[-v211];
  if (__OFSUB__(v186, v211))
  {
    __break(1u);
    goto LABEL_97;
  }

LABEL_124:
  if (v169 != [v124 (v137 + 2527)])
  {
    v289 = v162 >> 62;
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v242 = __swift_project_value_buffer(v133, static CloudSyncAssetData.Log);
    swift_beginAccess();
    v243 = v295;
    v244 = v272;
    (*(v295 + 16))(v272, v242, v133);
    outlined copy of Data._Representation(v136, v162);
    v245 = v133;
    v246 = isa;
    v247 = v124;
    outlined copy of Data._Representation(v136, v162);
    v248 = Logger.logObject.getter();
    LODWORD(v242) = static os_log_type_t.error.getter();
    v290 = v247;

    LODWORD(v288) = v242;
    if (!os_log_type_enabled(v248, v242))
    {
      outlined consume of Data._Representation(v136, v162);
      outlined consume of Data._Representation(v136, v162);

      (*(v243 + 8))(v244, v245);
      v133 = v245;
      v88 = v291;
LABEL_140:
      v51 = v293;
      goto LABEL_141;
    }

    v249 = v248;
    v250 = swift_slowAlloc();
    v251 = swift_slowAlloc();
    v287 = swift_slowAlloc();
    v299 = v287;
    *v250 = 136446978;
    *(v250 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x80000002165787D0, &v299);
    *(v250 + 12) = 2080;
    v252 = [(objc_class *)v246 recordID];
    v253 = [v252 recordName];

    v254 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v256 = v255;

    v257 = v254;
    v258 = v251;
    v259 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v257, v256, &v299);

    *(v250 + 14) = v259;
    *(v250 + 22) = 2112;
    v260 = v290;
    *(v250 + 24) = v290;
    *v251 = v294;
    *(v250 + 32) = 2048;
    if (v289 <= 1)
    {
      v133 = v292;
      if (!v289)
      {
        v261 = v260;
        outlined consume of Data._Representation(v136, v162);
        v262 = BYTE6(v162);
LABEL_138:
        v267 = v295;
        v88 = v291;
        goto LABEL_139;
      }

      v268 = v260;
      outlined consume of Data._Representation(v136, v162);
      LODWORD(v262) = HIDWORD(v136) - v136;
      if (!__OFSUB__(HIDWORD(v136), v136))
      {
        v262 = v262;
        goto LABEL_138;
      }

LABEL_147:
      __break(1u);
      return;
    }

    v133 = v292;
    if (v289 != 2)
    {
      v269 = v260;
      outlined consume of Data._Representation(v136, v162);
      v262 = 0;
      goto LABEL_138;
    }

    v263 = v292;
    v265 = *(v136 + 16);
    v264 = *(v136 + 24);
    v266 = v260;
    outlined consume of Data._Representation(v136, v162);
    v262 = v264 - v265;
    v267 = v295;
    if (!__OFSUB__(v264, v265))
    {
      v88 = v291;
      v133 = v263;
LABEL_139:
      *(v250 + 34) = v262;
      outlined consume of Data._Representation(v136, v162);
      _os_log_impl(&dword_21607C000, v249, v288, "CloudSyncAssetData.%{public}s Populating record %s of size %@ with inlineData of size %ld!", v250, 0x2Au);
      outlined destroy of UTType?(v258, &_sSo8NSObjectCSgMd);
      MEMORY[0x21CE94770](v258, -1, -1);
      v270 = v287;
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v270, -1, -1);
      MEMORY[0x21CE94770](v250, -1, -1);

      (*(v267 + 8))(v272, v133);
      goto LABEL_140;
    }

LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

LABEL_141:
  v301 = MEMORY[0x277CC9318];
  v302 = MEMORY[0x277CBBBE0];
  v299 = v136;
  v300 = v162;
  outlined copy of Data._Representation(v136, v162);
  _s9MomentsUI11CloudRecordPAAE18_setEncryptedValueyySo8CKRecordC_SS0C3Kit0hG8Protocol_pSgtFAA0C13SyncAssetDataC_Tt2g5Tm(isa, 0x61645F7465737361, 0xEA00000000006174, &v299, &one-time initialization token for productionSchema, &static CloudSyncAssetData.productionSchema);

  outlined consume of Data._Representation(v136, v162);
  outlined destroy of UTType?(&v299, &_s8CloudKit21CKRecordValueProtocol_pSgMd);
LABEL_108:
  v216 = [v51 expiry];
  if (!v216)
  {
    goto LABEL_112;
  }

  v217 = v280;
  v218 = v216;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v219 = v279;
  static Date.distantPast.getter();
  LOBYTE(v218) = static Date.> infix(_:_:)();
  v220 = *(v281 + 8);
  v221 = v219;
  v222 = v282;
  v220(v221, v282);
  if ((v218 & 1) == 0)
  {
    v220(v217, v222);
LABEL_112:
    v225 = COERCE_DOUBLE(specialized static DefaultsManager.MomentsUIDomain.doubleValueFor(_:)());
    if (v226)
    {
      v224 = 2419200.0;
    }

    else
    {
      v224 = v225;
    }

    goto LABEL_115;
  }

  Date.timeIntervalSinceNow.getter();
  v224 = v223;
  v220(v217, v222);
LABEL_115:
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v227 = __swift_project_value_buffer(v133, static CloudSyncAssetData.Log);
  swift_beginAccess();
  (*(v295 + 16))(v88, v227, v133);
  v228 = isa;
  v229 = Logger.logObject.getter();
  v230 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v229, v230))
  {
    v231 = swift_slowAlloc();
    v232 = swift_slowAlloc();
    v298 = v232;
    *v231 = 136446722;
    *(v231 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x80000002165787D0, &v298);
    *(v231 + 12) = 2080;
    v233 = [(objc_class *)v228 recordID];
    v234 = [v233 recordName];

    v235 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v236 = v295;
    v237 = v133;
    v239 = v238;

    v240 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v235, v239, &v298);

    *(v231 + 14) = v240;
    *(v231 + 22) = 2048;
    *(v231 + 24) = v224;
    _os_log_impl(&dword_21607C000, v229, v230, "CloudSyncAssetData.%{public}s Setting TTL for record %s to %f seconds", v231, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v232, -1, -1);
    MEMORY[0x21CE94770](v231, -1, -1);

    (*(v236 + 8))(v291, v237);
  }

  else
  {

    (*(v295 + 8))(v88, v133);
  }

  v241 = CGFloat._bridgeToObjectiveC()().super.super.isa;
  [(objc_class *)v228 setExpirationAfterTimeInterval:v241];
}

uint64_t _s9MomentsUI11CloudRecordPAAE18_setEncryptedValueyySo8CKRecordC_SS0C3Kit0hG8Protocol_pSgtFAA0C13SyncAssetDataC_Tt2g5Tm(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  if (one-time initialization token for container != -1)
  {
    swift_once();
  }

  v12 = [static CloudManager.container containerID];
  v13 = [v12 environment];

  if (v13 != 1)
  {
    goto LABEL_8;
  }

  if (*a5 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  if (*(*a6 + 16))
  {

    specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    v16 = v15;

    if (v16)
    {
LABEL_8:
      v17 = [a1 encryptedValues];
      swift_getObjectType();
      outlined init with copy of DateInterval?(a4, v18, &_s8CloudKit21CKRecordValueProtocol_pSgMd);

      CKRecordKeyValueSetting.subscript.setter();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t specialized CloudRecord._setEncryptedValue(_:_:_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (one-time initialization token for container != -1)
  {
    swift_once();
  }

  v8 = [static CloudManager.container containerID];
  v9 = [v8 environment];

  if (v9 != 1)
  {
    goto LABEL_8;
  }

  if (one-time initialization token for productionSchema != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  if (*(static CloudDevice.productionSchema + 2))
  {

    specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    v12 = v11;

    if (v12)
    {
LABEL_8:
      v13 = [a1 encryptedValues];
      swift_getObjectType();
      outlined init with copy of DateInterval?(a4, v14, &_s8CloudKit21CKRecordValueProtocol_pSgMd);

      CKRecordKeyValueSetting.subscript.setter();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t static CloudSyncAssetData.dumpRecord(_:)()
{
  v0 = [swift_getObjCClassFromMetadata() description];
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v1;
}

id CloudSyncAssetData.lastKnownCKRecord.getter()
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

uint64_t key path getter for CloudSyncAssetData.lastKnownCKRecord : CloudSyncAssetData@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v3 = [*a1 lastKnownCKRecordData];
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
  result = outlined consume of Data?(v5, v7);
  *a2 = v8;
  return result;
}

void (*CloudSyncAssetData.lastKnownCKRecord.modify(void *a1))(void **a1, char a2)
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
  return CloudSyncAssetData.lastKnownCKRecord.modify;
}

void CloudSyncAssetData.lastKnownCKRecord.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    CloudSyncAssetData.lastKnownCKRecord.setter(v2);
  }

  else
  {
    CloudSyncAssetData.lastKnownCKRecord.setter(*a1);
  }
}

uint64_t protocol witness for static CloudRecord.productionSchema.getter in conformance CloudSyncAssetData()
{
  if (one-time initialization token for productionSchema != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

CKRecordZoneID protocol witness for CloudRecord.zoneID.getter in conformance CloudSyncAssetData()
{
  v1 = [*v0 zoneName];
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

id protocol witness for CloudRecord.lastKnownCKRecord.getter in conformance CloudSyncAssetData()
{
  v1 = [*v0 lastKnownCKRecordData];
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

void (*protocol witness for CloudRecord.lastKnownCKRecord.modify in conformance CloudSyncAssetData(void *a1))(void *a1)
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
  v2[4] = CloudSyncAssetData.lastKnownCKRecord.modify(v2);
  return protocol witness for CloudRecord.lastKnownCKRecord.modify in conformance CloudSyncAssetData;
}

void protocol witness for CloudRecord.lastKnownCKRecord.modify in conformance CloudSyncAssetData(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t protocol witness for static CloudRecord.dumpRecord(_:) in conformance CloudSyncAssetData()
{
  v0 = [swift_getObjCClassFromMetadata() description];
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v1;
}

uint64_t closure #1 in static Data.== infix(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = MEMORY[0x21CE902B0]();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = MEMORY[0x21CE902B0]();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t specialized Data.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    outlined consume of Data._Representation(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  closure #1 in static Data.== infix(_:_:)(v13, a3, a4, &v12);
  v10 = v4;
  outlined consume of Data._Representation(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

_BYTE *closure #1 in Data.init<A>(_:)@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = specialized Data.InlineData.init(_:)(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = specialized Data.LargeSlice.init(_:)(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = specialized Data.InlineSlice.init(_:)(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t specialized Data._Representation.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      type metadata accessor for SHA256();
      _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540]);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v4, v5);
  }

  if (v2 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v4, v5);
  }

  type metadata accessor for SHA256();
  _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540]);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      MEMORY[0x21CE902B0]();
      type metadata accessor for SHA256();
      _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540]);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  MEMORY[0x21CE902B0]();
  closure #1 in static Data.== infix(_:_:)(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t specialized static Data.== infix(_:_:)(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          outlined copy of Data._Representation(a3, a4);
          return specialized Data.withUnsafeBytes<A>(_:)(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

BOOL specialized static CloudSyncAssetData.< infix(_:_:)(void *a1, void *a2)
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

uint64_t specialized static CloudSyncAssetData.sha256(fileURL:)(uint64_t a1)
{
  v56 = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for SHA256Digest();
  v44 = *(v2 - 8);
  v45 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SHA256();
  v40 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = specialized static DefaultsManager.MomentsUIDomain.intValueFor(_:)();
  if (v13)
  {
    v14 = 0x100000;
  }

  else
  {
    v14 = v12;
  }

  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSFileHandle);
  (*(v9 + 16))(v11, a1, v8);
  v15 = v46;
  v16 = @nonobjc NSFileHandle.__allocating_init(forReadingFrom:)(v11);
  if (!v15)
  {
    v17 = v16;
    v18 = v5;
    v46 = v4;
    v19 = SHA256.init()();
    v20 = MEMORY[0x21CE93DB0](v19);
    v21 = v7;
    v23 = NSFileHandle.read(upToCount:)();
    v25 = v24;
    v41 = v14;
    v42 = v7;
    v43 = v17;
    v39 = v18;
    v27 = v44;
    v26 = v45;
    while (1)
    {
      v29 = v46;
      if (v25 >> 60 == 15)
      {
LABEL_31:
        objc_autoreleasePoolPop(v20);
        SHA256.finalize()();
        v54 = v26;
        v37 = v21;
        v55 = _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest, MEMORY[0x277CC5290]);
        v38 = __swift_allocate_boxed_opaque_existential_1(&v48);
        (*(v27 + 16))(v38, v29, v26);
        __swift_project_boxed_opaque_existential_1(&v48, v54);
        dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();

        (*(v27 + 8))(v29, v26);
        v8 = v47;
        __swift_destroy_boxed_opaque_existential_1(&v48);
        (*(v40 + 8))(v37, v18);
        return v8;
      }

      v30 = v25 >> 62;
      if ((v25 >> 62) > 1)
      {
        if (v30 != 2)
        {
          goto LABEL_30;
        }

        v33 = *(v23 + 16);
        v32 = *(v23 + 24);
        v34 = __OFSUB__(v32, v33);
        v31 = v32 - v33;
        if (v34)
        {
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
        }
      }

      else if (v30)
      {
        LODWORD(v31) = HIDWORD(v23) - v23;
        if (__OFSUB__(HIDWORD(v23), v23))
        {
          goto LABEL_32;
        }

        v31 = v31;
      }

      else
      {
        v31 = BYTE6(v25);
      }

      if (!v31)
      {
LABEL_30:
        outlined consume of Data?(v23, v25);
        goto LABEL_31;
      }

      if (v30 == 2)
      {
        v35 = *(v23 + 16);
        v36 = *(v23 + 24);

        if (__DataStorage._bytes.getter() && __OFSUB__(v35, __DataStorage._offset.getter()))
        {
          goto LABEL_35;
        }

        if (__OFSUB__(v36, v35))
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v30 != 1)
        {
          v48 = v23;
          v49 = v25;
          v50 = BYTE2(v25);
          v51 = BYTE3(v25);
          v52 = BYTE4(v25);
          v53 = BYTE5(v25);
          _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540]);
          v21 = v42;
          dispatch thunk of HashFunction.update(bufferPointer:)();
          outlined consume of Data?(v23, v25);
          outlined consume of Data?(v23, v25);
          goto LABEL_8;
        }

        if (v23 >> 32 < v23)
        {
          goto LABEL_33;
        }

        if (__DataStorage._bytes.getter() && __OFSUB__(v23, __DataStorage._offset.getter()))
        {
          goto LABEL_36;
        }
      }

      MEMORY[0x21CE902B0]();
      _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540]);
      v21 = v42;
      v18 = v39;
      dispatch thunk of HashFunction.update(bufferPointer:)();
      outlined consume of Data?(v23, v25);
      outlined consume of Data?(v23, v25);
      v27 = v44;
      v26 = v45;
LABEL_8:
      objc_autoreleasePoolPop(v20);
      v20 = MEMORY[0x21CE93DB0]();
      v23 = NSFileHandle.read(upToCount:)();
      v25 = v28;
    }
  }

  return v8;
}

uint64_t specialized static CloudSyncAssetData._fillInBlanks(id:sha256:size:inlineData:fileURL:fileExt:assetClass:blobFolderURL:allowLazyLoading:dryRun:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, NSString *a4@<X3>, void *a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, unint64_t a8@<X7>, void *a9@<X8>, void *a10, uint64_t a11, uint64_t a12, unsigned __int8 *a13, NSURL *a14, char a15, unsigned __int8 a16)
{
  v319 = a8;
  v308 = a7;
  v311 = a6;
  v317 = a5;
  v316._urlString = a4;
  v314 = a3;
  v309 = a2;
  v307 = a1;
  v310 = a9;
  v316._baseURL = a14;
  v326[1] = *MEMORY[0x277D85DE8];
  v279 = type metadata accessor for CocoaError.Code();
  v278 = *(v279 - 8);
  MEMORY[0x28223BE20](v279);
  v277 = &v275 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v306 = type metadata accessor for Logger();
  v302 = *(v306 - 8);
  v17 = MEMORY[0x28223BE20](v306);
  v297 = &v275 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v299 = &v275 - v20;
  MEMORY[0x28223BE20](v19);
  v281 = &v275 - v21;
  v293 = type metadata accessor for SHA256();
  v292 = *(v293 - 8);
  MEMORY[0x28223BE20](v293);
  v291 = &v275 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v296 = type metadata accessor for SHA256Digest();
  v295 = *(v296 - 8);
  MEMORY[0x28223BE20](v296);
  v294 = &v275 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for URL();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v298 = &v275 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v275 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v280 = &v275 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v284 = &v275 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v287 = &v275 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v285 = &v275 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v290 = &v275 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v305 = &v275 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v313 = &v275 - v44;
  MEMORY[0x28223BE20](v43);
  reserved = &v275 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v48 = MEMORY[0x28223BE20](v47 - 8);
  v303 = &v275 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x28223BE20](v48);
  v286 = &v275 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v283 = &v275 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v315 = &v275 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v289 = &v275 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v288 = &v275 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v304 = &v275 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v64 = &v275 - v63;
  v65 = MEMORY[0x28223BE20](v62);
  v316._reserved = &v275 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v69 = &v275 - v68;
  v70 = MEMORY[0x28223BE20](v67);
  v316._clients = &v275 - v71;
  MEMORY[0x28223BE20](v70);
  v73 = &v275 - v72;
  v301 = *a13;
  v318 = v24;
  v282 = v30;
  object = a10;
  if (a12)
  {
    v74 = v25;
  }

  else
  {
    outlined init with copy of DateInterval?(a10, &v275 - v72, &_s10Foundation3URLVSgMd);
    if ((*(v25 + 48))(v73, 1, v24) == 1)
    {
      v74 = v25;
      outlined destroy of UTType?(v73, &_s10Foundation3URLVSgMd);
    }

    else
    {
      URL.pathExtension.getter();
      v74 = v25;
      (*(v25 + 8))(v73, v24);
    }
  }

  outlined init with copy of DateInterval?(v316._baseURL, v69, &_s10Foundation3URLVSgMd);
  v75 = v74;
  v77 = (v74 + 6);
  v76 = v74[6];
  v78 = v318;
  v316._baseURL = v76;
  v79 = (v76)(v69, 1, v318);

  v316.super.isa = v77;
  if (v79 == 1)
  {

    outlined destroy of UTType?(v69, &_s10Foundation3URLVSgMd);
    v80 = 1;
    clients = v316._clients;
  }

  else
  {
    URL.appendingPathComponent(_:)();
    v82 = v75[1];
    v82(v69, v318);
    clients = v316._clients;
    URL.appendingPathExtension(_:)();

    v82(reserved, v318);
    v78 = v318;
    v80 = 0;
  }

  v83 = (v75 + 7);
  v84 = v75[7];
  v84(clients, v80, 1, v78);
  outlined init with copy of DateInterval?(object, v64, &_s10Foundation3URLVSgMd);
  v85 = v75;
  if ((v316._baseURL)(v64, 1, v78) == 1)
  {
    outlined destroy of UTType?(v64, &_s10Foundation3URLVSgMd);
    v84(v316._reserved, 1, 1, v78);
    urlString = v319;
    if (v319 >> 60 == 15)
    {
      countAndFlagsBits = 0;
      object = 0;
      v87 = v308;
    }

    else
    {
      v87 = v308;
      outlined copy of Data._Representation(v308, v319);
      countAndFlagsBits = 0;
      object = 0;
    }

    v313 = urlString;
    v90 = v317;
  }

  else
  {
    v88 = v75[4];
    v75 = v313;
    v88(v313, v64, v78);
    reserved = v316._reserved;
    (v85[2])(v316._reserved, v75, v78);
    v84(reserved, 0, 1, v78);
    v89 = URL.path(percentEncoded:)(1);
    countAndFlagsBits = v89._countAndFlagsBits;
    object = v89._object;
    (v85[1])(v75, v78);
    v87 = 0;
    v313 = 0xF000000000000000;
    v90 = v317;
    urlString = v319;
  }

  v91 = v315;
  if ((v311 & 1) == 0 && (v90 & 0x8000000000000000) == 0)
  {
    goto LABEL_17;
  }

  if (!object)
  {
    if (urlString >> 60 == 15)
    {
      v90 = 0;
      v92 = 0;
      reserved = 0;
      goto LABEL_19;
    }

    v103 = urlString >> 62;
    if ((urlString >> 62) <= 1)
    {
      if (v103)
      {
        if (__OFSUB__(HIDWORD(v308), v308))
        {
          __break(1u);
          goto LABEL_149;
        }

        reserved = 0;
        v90 = HIDWORD(v308) - v308;
      }

      else
      {
        outlined consume of Data?(v308, urlString);
        v91 = v315;
        reserved = 0;
        v90 = BYTE6(urlString);
      }

      goto LABEL_18;
    }

    if (v103 == 2)
    {
      v185 = *(v308 + 16);
      v184 = *(v308 + 24);
      v90 = v184 - v185;
      if (__OFSUB__(v184, v185))
      {
        __break(1u);
        goto LABEL_102;
      }
    }

    else
    {
      outlined consume of Data?(v308, urlString);
      v91 = v315;
      v90 = 0;
    }

LABEL_17:
    reserved = 0;
LABEL_18:
    v92 = 1;
LABEL_19:
    urlString = v316._urlString;
    goto LABEL_37;
  }

  v93 = [objc_opt_self() defaultManager];
  v94 = MEMORY[0x21CE91FC0](countAndFlagsBits, object);
  v321 = 0;
  v95 = [v93 attributesOfItemAtPath:v94 error:&v321];

  v96 = v321;
  if (!v95)
  {
    v101 = v321;
    v102 = _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_34:
    reserved = 0;
    goto LABEL_35;
  }

  type metadata accessor for NSFileAttributeKey(0);
  _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey, type metadata accessor for NSFileAttributeKey);
  reserved = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v97 = v96;

  if (reserved)
  {
    if (*(reserved + 2))
    {
      v98 = specialized __RawDictionaryStorage.find<A>(_:)(*MEMORY[0x277CCA1C0]);
      if (v99)
      {
        outlined init with copy of Any(*(reserved + 7) + 32 * v98, &v321);

        type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSNumber);
        if (swift_dynamicCast())
        {
          v100 = v324;
          v90 = [v324 longLongValue];

          reserved = 0;
          v92 = 1;
        }

        else
        {
          v90 = 0;
          v92 = 0;
          reserved = 0;
        }

        urlString = v316._urlString;
        goto LABEL_36;
      }
    }

    goto LABEL_34;
  }

LABEL_35:
  urlString = v316._urlString;
  v90 = 0;
  v92 = 0;
LABEL_36:
  v91 = v315;
LABEL_37:
  v104 = a16;
  v312 = v87;
  if (urlString >> 60 == 15)
  {
    v105 = v304;
    outlined init with copy of DateInterval?(v316._reserved, v304, &_s10Foundation3URLVSgMd);
    if ((v316._baseURL)(v105, 1, v78) == 1)
    {
      v276 = v85;
      outlined destroy of UTType?(v105, &_s10Foundation3URLVSgMd);
      v106 = v319;
      if (v319 >> 60 == 15)
      {
        urlString = v319;
        v83 = v308;
        v85 = v276;
LABEL_56:
        v125 = urlString;
        outlined copy of Data?(v314, v316._urlString);

        v126 = v313;
        if (one-time initialization token for zeroSHA256 != -1)
        {
          swift_once();
        }

        v127 = static CloudSyncAssetData.zeroSHA256;
        v128 = *algn_27CA8E728;
        outlined copy of Data._Representation(static CloudSyncAssetData.zeroSHA256, *algn_27CA8E728);
        v317 = 0;
        v87 = 0;
        v319 = 0xC000000000000000;
LABEL_59:
        v129 = v83;
        v315 = v128;
        v83 = v127;
        if (v104)
        {
LABEL_69:
          v122 = v319;
          if (v319 >> 60 == 15)
          {
            v87 = v312;
            goto LABEL_71;
          }

          outlined consume of Data?(v312, v126);
          outlined consume of Data?(v129, v125);
          v124 = 0;
          object = 0;
          goto LABEL_77;
        }

LABEL_60:
        v130 = v303;
        outlined init with copy of DateInterval?(v316._clients, v303, &_s10Foundation3URLVSgMd);
        if ((v316._baseURL)(v130, 1, v78) == 1)
        {
          outlined destroy of UTType?(v130, &_s10Foundation3URLVSgMd);
        }

        else
        {
          v131 = v126;
          v132 = v83;
          v133 = v298;
          (v85[4])(v298, v130, v78);
          v134 = [objc_opt_self() defaultManager];
          URL._bridgeToObjectiveC()(v135);
          v137 = v136;
          v321 = 0;
          v138 = [v134 removeItemAtURL:v136 error:&v321];

          if (v138)
          {
            v139 = v321;
          }

          else
          {
            v142 = v321;
            v143 = _convertNSErrorToError(_:)();

            swift_willThrow();
          }

          (v85[1])(v133, v318);
          v83 = v132;
          v126 = v131;
        }

        goto LABEL_69;
      }

      v108 = v308;
      outlined copy of Data._Representation(v308, v319);
      _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540]);
      v109 = v291;
      v311 = a16;
      v110 = v293;
      dispatch thunk of HashFunction.init()();
      outlined copy of Data._Representation(v108, v106);
      specialized Data._Representation.withUnsafeBytes<A>(_:)(v108, v106);
      outlined consume of Data?(v108, v106);
      v111 = v294;
      dispatch thunk of HashFunction.finalize()();
      (*(v292 + 8))(v109, v110);
      v112 = v296;
      v322 = v296;
      v323 = _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest, MEMORY[0x277CC5290]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v321);
      v114 = v295;
      (*(v295 + 16))(boxed_opaque_existential_1, v111, v112);
      __swift_project_boxed_opaque_existential_1(&v321, v322);
      dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
      v115 = v108;
      v87 = v312;
      outlined consume of Data?(v115, v106);
      v116 = v111;
      v78 = v318;
      (*(v114 + 8))(v116, v112);
      v104 = v311;
      v83 = v324;
      urlString = v325;
      __swift_destroy_boxed_opaque_existential_1(&v321);
      v85 = v276;
    }

    else
    {
      v107 = v305;
      (v85[4])(v305, v105, v78);
      v83 = specialized static CloudSyncAssetData.sha256(fileURL:)(v107);
      urlString = v117;
      (v85[1])(v305, v78);
    }

    v91 = v315;
  }

  else
  {
    v83 = v314;
  }

  if (urlString >> 60 == 15)
  {
    v118 = 0;
  }

  else
  {
    v118 = v92;
  }

  if (v118 != 1 || v90 < 1)
  {
    goto LABEL_56;
  }

  v317 = v90;
  if ((v301 & 1) == 0)
  {
    outlined copy of Data?(v314, v316._urlString);
    outlined copy of Data?(v83, urlString);

    v126 = v313;
    if (v313 >> 60 == 15)
    {
      v140 = v104;
      v141 = v288;
      outlined init with copy of DateInterval?(v316._reserved, v288, &_s10Foundation3URLVSgMd);
      if ((v316._baseURL)(v141, 1, v78) == 1)
      {
        outlined destroy of UTType?(v141, &_s10Foundation3URLVSgMd);
        v87 = 0;
        v319 = 0xF000000000000000;
        v128 = urlString;
        v127 = v83;
        v125 = v128;
        v104 = v140;
      }

      else
      {
        (v85[4])(v290, v141, v78);
        v87 = Data.init(contentsOf:options:)();
        v319 = v191;
        v125 = urlString;
        v104 = v140;
        (v85[1])(v290, v78);
        v127 = v83;
        v128 = v125;
      }
    }

    else
    {
      outlined copy of Data._Representation(v87, v313);
      v319 = v126;
      v128 = urlString;
      v127 = v83;
      v125 = v128;
    }

    goto LABEL_59;
  }

  v315 = urlString;
  if ((v104 & 1) == 0)
  {
    if (object)
    {
      v175 = v91;
      outlined init with copy of DateInterval?(v316._reserved, v91, &_s10Foundation3URLVSgMd);
      baseURL = v316._baseURL;
      v177 = (v316._baseURL)(v175, 1, v78);
      v75 = v306;
      if (v177 == 1)
      {
        outlined copy of Data?(v314, v316._urlString);
        outlined copy of Data?(v83, urlString);

        outlined destroy of UTType?(v175, &_s10Foundation3URLVSgMd);
        goto LABEL_103;
      }

      v189 = v85[4];
      v189(v287, v175, v78);
      v190 = v283;
      outlined init with copy of DateInterval?(v316._clients, v283, &_s10Foundation3URLVSgMd);
      if ((baseURL)(v190, 1, v78) == 1)
      {
        outlined copy of Data?(v314, v316._urlString);
        v125 = v315;
        outlined copy of Data?(v83, v315);
        (v85[1])(v287, v78);
        outlined destroy of UTType?(v190, &_s10Foundation3URLVSgMd);
        v122 = v319;
        if (v319 >> 60 == 15)
        {
          outlined consume of Data?(v312, v313);
          outlined consume of Data?(v83, v125);
          v123 = v316._clients;
          v87 = v308;
          goto LABEL_55;
        }

        v87 = v308;
        outlined copy of Data?(v308, v319);

        v129 = v83;
LABEL_147:
        v126 = v313;
        goto LABEL_60;
      }

      v64 = v284;
      v189(v284, v190, v78);
      outlined copy of Data?(v314, v316._urlString);
      v316._urlString = v83;
      outlined copy of Data?(v83, v315);
      if (one-time initialization token for Log == -1)
      {
LABEL_120:
        v194 = __swift_project_value_buffer(v75, static CloudSyncAssetData.Log);
        swift_beginAccess();
        v195 = v302;
        v196 = v281;
        (*(v302 + 16))(v281, v194, v75);
        v197 = v280;
        (v85[2])(v280, v64, v78);
        v198 = v75;

        v199 = Logger.logObject.getter();
        LODWORD(v194) = static os_log_type_t.debug.getter();

        LODWORD(v319) = v194;
        v200 = os_log_type_enabled(v199, v194);
        v201 = countAndFlagsBits;
        v276 = v85;
        if (v200)
        {
          v202 = v196;
          v203 = swift_slowAlloc();
          v204 = swift_slowAlloc();
          v321 = v204;
          *v203 = 136315394;
          *(v203 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v201, object, &v321);
          *(v203 + 12) = 2080;
          _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
          v205 = dispatch thunk of CustomStringConvertible.description.getter();
          v206 = v197;
          v207 = v195;
          v209 = v208;
          v210 = v85[1];
          v210(v206, v318);
          v211 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v205, v209, &v321);

          *(v203 + 14) = v211;
          _os_log_impl(&dword_21607C000, v199, v319, "[_fillInBlanks] Copying %s to %s", v203, 0x16u);
          swift_arrayDestroy();
          v212 = v204;
          v64 = v284;
          MEMORY[0x21CE94770](v212, -1, -1);
          MEMORY[0x21CE94770](v203, -1, -1);

          v213 = v202;
          v78 = v318;
          (*(v207 + 8))(v213, v198);
        }

        else
        {

          v210 = v85[1];
          v210(v197, v78);
          (*(v195 + 8))(v196, v198);
        }

        v214 = objc_opt_self();
        v215 = [v214 defaultManager];
        v216 = v287;
        URL._bridgeToObjectiveC()(&v316._clients);
        v218 = v217;
        URL._bridgeToObjectiveC()(v219);
        v221 = v220;
        v321 = 0;
        v222 = v64;
        v223 = [v215 copyItemAtURL:v218 toURL:v220 error:&v321];

        v83 = v316._urlString;
        if (v223)
        {
          v224 = v321;

          v225 = URL.path(percentEncoded:)(1);
          v124 = v225._countAndFlagsBits;
          object = v225._object;
          v210(v222, v78);
          v210(v216, v78);
          v226 = v312;
LABEL_126:
          outlined consume of Data?(v226, v313);
          v182 = v83;
          v183 = v315;
          goto LABEL_96;
        }

        v227 = v321;
        v228 = _convertNSErrorToError(_:)();

        swift_willThrow();
        v229 = v228;
        v230 = v277;
        static CocoaError.fileWriteFileExists.getter();
        _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type CocoaError.Code and conformance CocoaError.Code, MEMORY[0x277CC8608]);
        v231 = v279;
        v232 = static _ErrorCodeProtocol.~= infix(_:_:)();

        (*(v278 + 8))(v230, v231);
        v233 = v312;
        if ((v232 & 1) == 0)
        {

          v85 = v276;
          v210(v284, v78);
          v210(v287, v78);

          goto LABEL_146;
        }

        v319 = v210;

        v234 = v214;
        v235 = [v214 defaultManager];
        v236 = MEMORY[0x21CE91FC0](countAndFlagsBits, object);

        v321 = 0;
        v237 = [v235 attributesOfItemAtPath:v236 error:&v321];

        v238 = v321;
        v239 = v287;
        if (v237)
        {
          type metadata accessor for NSFileAttributeKey(0);
          _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey, type metadata accessor for NSFileAttributeKey);
          v240 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
          v241 = v238;

          if (v240)
          {
            if (*(v240 + 16) && (v242 = specialized __RawDictionaryStorage.find<A>(_:)(*MEMORY[0x277CCA1C0]), (v243 & 1) != 0))
            {
              outlined init with copy of Any(*(v240 + 56) + 32 * v242, &v321);

              type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSNumber);
              if (swift_dynamicCast())
              {
                v244 = v326[0];
                v245 = [v326[0] longLongValue];
                if (v245 == v317)
                {
                  v246 = v284;
                  v247 = URL.path(percentEncoded:)(1);
                  object = v247._object;

                  v248 = v246;
                  v249 = v319;
                  (v319)(v248, v78);
                  v249(v239, v78);
                  v226 = v233;
                  v124 = v247._countAndFlagsBits;
                  goto LABEL_126;
                }

                goto LABEL_140;
              }
            }

            else
            {
            }
          }
        }

        else
        {
          v252 = v321;
          v253 = _convertNSErrorToError(_:)();

          swift_willThrow();
        }

        v244 = 0;
LABEL_140:
        v254 = [v234 defaultManager];
        URL._bridgeToObjectiveC()(&v316);
        v256 = v255;
        v321 = 0;
        v257 = [v254 removeItemAtURL:v255 error:&v321];

        if (v257)
        {
          v258 = v321;
        }

        else
        {
          v259 = v321;
          v260 = _convertNSErrorToError(_:)();

          swift_willThrow();
        }

        v261 = [v234 defaultManager];
        URL._bridgeToObjectiveC()(v262);
        v264 = v263;
        v265 = v284;
        URL._bridgeToObjectiveC()(&v316);
        v267 = v266;
        v321 = 0;
        v268 = [v261 copyItemAtURL:v264 toURL:v266 error:&v321];

        if (v268)
        {
          v269 = v321;
          v270 = URL.path(percentEncoded:)(1);
          object = v270._object;

          v271 = v319;
          (v319)(v265, v78);
          v271(v239, v78);
          v226 = v312;
          v124 = v270._countAndFlagsBits;
          goto LABEL_126;
        }

        v272 = v321;
        v273 = _convertNSErrorToError(_:)();

        swift_willThrow();
        v85 = v276;
        v274 = v319;
        (v319)(v265, v78);
        v274(v239, v78);
LABEL_146:
        v87 = 0;
        v319 = 0xF000000000000000;
        v129 = v83;
        v125 = v315;
        goto LABEL_147;
      }

LABEL_149:
      swift_once();
      goto LABEL_120;
    }

LABEL_102:
    outlined copy of Data?(v314, v316._urlString);
    outlined copy of Data?(v83, urlString);
LABEL_103:
    v186 = v313;
    v87 = v308;
    v187 = v319;
    v188 = v286;
    if (v313 >> 60 == 15)
    {
      v319 = v313;
      v87 = v312;
    }

    else
    {
      outlined init with copy of DateInterval?(v316._clients, v286, &_s10Foundation3URLVSgMd);
      if ((v316._baseURL)(v188, 1, v78) == 1)
      {
        v87 = v312;
        v126 = v186;
        outlined copy of Data._Representation(v312, v186);
        outlined destroy of UTType?(v188, &_s10Foundation3URLVSgMd);
        v319 = v186;
        v129 = v83;
        v125 = urlString;
        goto LABEL_60;
      }

      v192 = v282;
      (v85[4])(v282, v188, v78);
      v193 = v312;
      outlined copy of Data._Representation(v312, v186);
      Data.write(to:options:)();
      if (!reserved)
      {
        v120 = urlString;
        v250 = v192;
        v251 = URL.path(percentEncoded:)(1);
        v124 = v251._countAndFlagsBits;
        object = v251._object;
        outlined consume of Data?(v193, v186);
        (v85[1])(v250, v78);
        v180 = v193;
        v181 = v186;
        goto LABEL_95;
      }

      outlined consume of Data?(v193, v186);
      outlined copy of Data?(v87, v187);
      (v85[1])(v192, v78);
    }

    v129 = v83;
    v125 = urlString;
    v126 = v186;
    goto LABEL_60;
  }

  v119 = v289;
  outlined init with copy of DateInterval?(v316._clients, v289, &_s10Foundation3URLVSgMd);
  v120 = urlString;
  v121 = (v316._baseURL)(v119, 1, v78);
  outlined copy of Data?(v314, v316._urlString);
  outlined copy of Data?(v83, v120);
  if (v121 != 1)
  {

    v178 = v285;
    (v85[4])(v285, v119, v78);
    v179 = URL.path(percentEncoded:)(1);
    v124 = v179._countAndFlagsBits;
    object = v179._object;
    (v85[1])(v178, v78);
    v180 = v87;
    v181 = v313;
LABEL_95:
    outlined consume of Data?(v180, v181);
    v182 = v83;
    v183 = v120;
LABEL_96:
    outlined consume of Data?(v182, v183);
    v87 = 0;
    v122 = 0xF000000000000000;
LABEL_77:
    v123 = v316._clients;
    goto LABEL_78;
  }

  outlined destroy of UTType?(v119, &_s10Foundation3URLVSgMd);
  if (object)
  {
    outlined consume of Data?(v87, v313);
    outlined consume of Data?(v83, v315);
    v87 = 0;
    v122 = 0xF000000000000000;
    v123 = v316._clients;
LABEL_55:
    v124 = countAndFlagsBits;
LABEL_78:
    outlined destroy of UTType?(v316._reserved, &_s10Foundation3URLVSgMd);
    result = outlined destroy of UTType?(v123, &_s10Foundation3URLVSgMd);
    goto LABEL_79;
  }

  v125 = v315;
  v129 = v83;
  v126 = v313;
LABEL_71:

  v144 = v306;
  object = v129;
  if (a15)
  {
    v316._urlString = v83;
    v145 = v87;
    v146 = v126;
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v147 = __swift_project_value_buffer(v144, static CloudSyncAssetData.Log);
    swift_beginAccess();
    v148 = v302;
    v149 = v299;
    (*(v302 + 16))(v299, v147, v144);
    v150 = v309;

    v151 = Logger.logObject.getter();
    v152 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v151, v152))
    {
      v153 = swift_slowAlloc();
      v154 = swift_slowAlloc();
      v326[0] = v154;
      *v153 = 136315394;
      *(v153 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v307, v150, v326);
      *(v153 + 12) = 2048;
      v155 = v317;
      *(v153 + 14) = v317;
      _os_log_impl(&dword_21607C000, v151, v152, "[_fillInBlanks] lazy asset %s, size = %lld", v153, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v154);
      MEMORY[0x21CE94770](v154, -1, -1);
      MEMORY[0x21CE94770](v153, -1, -1);

      outlined consume of Data?(v145, v146);
      outlined consume of Data?(object, v125);
      (*(v148 + 8))(v299, v306);
      outlined destroy of UTType?(v316._reserved, &_s10Foundation3URLVSgMd);
      result = outlined destroy of UTType?(v316._clients, &_s10Foundation3URLVSgMd);
      v157 = v155;
      v87 = 0;
      v124 = 0;
      object = 0;
      v122 = 0xF000000000000000;
      v83 = v316._urlString;
      v158 = v315;
      goto LABEL_89;
    }

    outlined consume of Data?(v145, v146);
    outlined consume of Data?(object, v125);
    (*(v148 + 8))(v149, v144);
    outlined destroy of UTType?(v316._reserved, &_s10Foundation3URLVSgMd);
    result = outlined destroy of UTType?(v316._clients, &_s10Foundation3URLVSgMd);
    v87 = 0;
    v124 = 0;
    object = 0;
    v122 = 0xF000000000000000;
    v83 = v316._urlString;
LABEL_79:
    v158 = v315;
    v157 = v317;
    goto LABEL_89;
  }

  v313 = v126;
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v159 = __swift_project_value_buffer(v144, static CloudSyncAssetData.Log);
  swift_beginAccess();
  v160 = v302;
  v161 = v297;
  (*(v302 + 16))(v297, v159, v144);
  v162 = v309;

  v163 = Logger.logObject.getter();
  v164 = static os_log_type_t.error.getter();

  v165 = v83;
  if (os_log_type_enabled(v163, v164))
  {
    v166 = swift_slowAlloc();
    v167 = v144;
    v168 = swift_slowAlloc();
    v326[0] = v168;
    *v166 = 136315394;
    *(v166 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v307, v162, v326);
    *(v166 + 12) = 2048;
    *(v166 + 14) = v317;
    _os_log_impl(&dword_21607C000, v163, v164, "[_fillInBlanks] unexpectedly blank asset %s, size = %lld", v166, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v168);
    MEMORY[0x21CE94770](v168, -1, -1);
    MEMORY[0x21CE94770](v166, -1, -1);

    (*(v160 + 8))(v161, v167);
  }

  else
  {

    (*(v160 + 8))(v161, v144);
  }

  v169 = v312;
  v170 = v313;
  v171 = v316._clients;
  v172 = object;
  if (one-time initialization token for zeroSHA256 != -1)
  {
    swift_once();
  }

  v173 = static CloudSyncAssetData.zeroSHA256;
  v158 = *algn_27CA8E728;
  outlined copy of Data._Representation(static CloudSyncAssetData.zeroSHA256, *algn_27CA8E728);
  outlined consume of Data._Representation(v165, v315);
  outlined consume of Data?(v169, v170);
  outlined consume of Data?(v172, v125);
  outlined destroy of UTType?(v316._reserved, &_s10Foundation3URLVSgMd);
  result = outlined destroy of UTType?(v171, &_s10Foundation3URLVSgMd);
  v157 = 0;
  v87 = 0;
  v124 = 0;
  object = 0;
  v122 = 0xC000000000000000;
  v83 = v173;
LABEL_89:
  v174 = v310;
  *v310 = v157;
  v174[1] = v83;
  v174[2] = v158;
  v174[3] = v87;
  v174[4] = v122;
  v174[5] = v124;
  v174[6] = object;
  return result;
}

id specialized static CloudSyncAssetData.create(id:expiry:zoneName:sha256:size:ext:assetClass:inlineData:fileURL:blobFolderURL:allowLazyLoading:context:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, NSString *a7, void *a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, unsigned __int8 *a12, uint64_t a13, unint64_t a14, void *a15, uint64_t a16, unsigned __int8 a17, uint64_t a18)
{
  v164 = a7;
  v165 = a8;
  v163 = a6;
  v154 = a5;
  v155 = a4;
  v151 = a3;
  v166 = a18;
  v157 = a17;
  v156 = a16;
  v161 = a15;
  v162 = a14;
  v159 = a11;
  v158 = a10;
  LODWORD(v150) = a9;
  v160 = a13;
  v147 = type metadata accessor for Date();
  v148 = *(v147 - 8);
  v20 = MEMORY[0x28223BE20](v147);
  v149 = &v141 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v146 = &v141 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v141 - v24;
  v26 = type metadata accessor for Logger();
  v145 = *(v26 - 8);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v141 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v141 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v32 - 8);
  v153 = (&v141 - v33);
  v169 = *a12;
  v34 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v35 = MEMORY[0x21CE91FC0](0xD000000000000012, 0x8000000216578760);
  v36 = [v34 initWithEntityName_];

  [v36 setIncludesPendingChanges_];
  [v36 setFetchLimit_];
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSPredicate);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_21658CA50;
  *(v37 + 56) = MEMORY[0x277D837D0];
  *(v37 + 64) = lazy protocol witness table accessor for type String and conformance String();
  v38 = a1;
  *(v37 + 32) = a1;
  *(v37 + 40) = a2;
  v168 = a2;

  v39 = NSPredicate.init(format:_:)();
  [v36 setPredicate_];

  v40 = v166;
  v41 = type metadata accessor for CloudSyncAssetData();
  v42 = 0;
  v43 = NSManagedObjectContext.fetch<A>(_:)();
  v152 = v36;
  v167 = v38;
  v142 = v31;
  v144 = v29;
  v141 = v25;
  if (v43 >> 62)
  {
    v140 = v43;
    v46 = __CocoaSet.count.getter();
    v43 = v140;
  }

  else
  {
    v46 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v47 = v153;
  if (!v46)
  {

    v44 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
    LODWORD(v31) = v150 & 1;
    v45 = v168;
    goto LABEL_38;
  }

  v143 = v41;
  if ((v43 & 0xC000000000000001) != 0)
  {
    v48 = MEMORY[0x21CE93180](0);
  }

  else
  {
    if (!*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_67;
    }

    v48 = *(v43 + 32);
  }

  v42 = v48;

  LOBYTE(v170[0]) = v169;
  v49 = type metadata accessor for URL();
  v50 = *(v49 - 8);
  (*(v50 + 16))(v47, v156, v49);
  (*(v50 + 56))(v47, 0, 1, v49);
  LODWORD(v31) = v150 & 1;
  v51 = v168;
  specialized static CloudSyncAssetData._fillInBlanks(id:sha256:size:inlineData:fileURL:fileExt:assetClass:blobFolderURL:allowLazyLoading:dryRun:)(v38, v168, v163, v164, v165, v31, v160, v162, &v171, v161, v158, v159, v170, v47, v157 & 1, 1u);
  v150 = v171;
  v153 = v172;
  v41 = v173;
  v52 = v174;
  v53 = v175;
  outlined destroy of UTType?(v47, &_s10Foundation3URLVSgMd);

  outlined consume of Data?(v52, v53);
  v54 = [v42 id];
  v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v57 = v56;

  if (v55 == v38 && v57 == v51)
  {
  }

  else
  {
    v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v58 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  v59 = [v42 zoneName];
  if (v59)
  {
    v60 = v59;
    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v62;

    if (v61 == v155 && v63 == v154)
    {
    }

    else
    {
      v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v64 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    v65 = [v42 sha256];
    if (v65)
    {
      v66 = v65;
      v67 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v69 = v68;

      if (v69 >> 60 != 15)
      {
        if (v41 >> 60 != 15)
        {
          v70 = v153;
          outlined copy of Data._Representation(v153, v41);
          outlined copy of Data._Representation(v70, v41);
          outlined copy of Data?(v67, v69);
          v71 = specialized static Data.== infix(_:_:)(v67, v69, v70, v41);
          outlined consume of Data?(v70, v41);
          outlined consume of Data._Representation(v70, v41);
          outlined consume of Data?(v67, v69);
          outlined consume of Data?(v67, v69);
          if ((v71 & 1) == 0)
          {
            goto LABEL_33;
          }

          goto LABEL_25;
        }

        goto LABEL_31;
      }
    }

    else
    {
      v67 = 0;
      v69 = 0xF000000000000000;
    }

    if (v41 >> 60 == 15)
    {
      outlined copy of Data._Representation(v153, v41);
      outlined consume of Data?(v67, v69);
LABEL_25:
      v72 = [v42 size];
      v73.super.super.isa = Int64._bridgeToObjectiveC()().super.super.isa;
      isa = v73.super.super.isa;
      if (v72)
      {
        type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSNumber);
        v75 = static NSObject.== infix(_:_:)();

        if (v75)
        {
          v150 = v41;
          v76 = v38;
          if (one-time initialization token for Log != -1)
          {
            swift_once();
          }

          v77 = v26;
          v78 = __swift_project_value_buffer(v26, static CloudSyncAssetData.Log);
          swift_beginAccess();
          v79 = v145;
          v80 = v142;
          (*(v145 + 16))(v142, v78, v26);
          v81 = v168;

          v82 = Logger.logObject.getter();
          v83 = static os_log_type_t.debug.getter();

          v84 = os_log_type_enabled(v82, v83);
          v85 = v148;
          if (v84)
          {
            v86 = swift_slowAlloc();
            v87 = swift_slowAlloc();
            v170[0] = v87;
            *v86 = 136315138;
            *(v86 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v81, v170);
            _os_log_impl(&dword_21607C000, v82, v83, "Existing assetData found %s", v86, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v87);
            MEMORY[0x21CE94770](v87, -1, -1);
            MEMORY[0x21CE94770](v86, -1, -1);

            (*(v79 + 8))(v142, v77);
          }

          else
          {

            (*(v79 + 8))(v80, v77);
          }

          v129 = v152;
          v130 = v141;
          v131 = v150;
          v132 = [v42 expiry];
          if (v132)
          {
            v133 = v132;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v134 = v146;
            static Date.distantPast.getter();
            LOBYTE(v133) = static Date.> infix(_:_:)();
            v135 = *(v85 + 8);
            v136 = v134;
            v137 = v147;
            v135(v136, v147);
            if (v133)
            {
              if (static Date.> infix(_:_:)())
              {
                v138 = Date._bridgeToObjectiveC()().super.isa;
                [v42 setExpiry_];

                outlined consume of Data._Representation(v153, v131);
                v135(v130, v137);
              }

              else
              {
                v135(v130, v137);
                outlined consume of Data._Representation(v153, v131);
              }

              return v42;
            }

            v135(v130, v137);
          }

          v139 = Date._bridgeToObjectiveC()().super.isa;
          [v42 setExpiry_];
          outlined consume of Data._Representation(v153, v131);

          return v42;
        }
      }

      else
      {
      }

      goto LABEL_33;
    }

LABEL_31:
    v88 = v153;
    outlined copy of Data._Representation(v153, v41);
    outlined consume of Data?(v67, v69);
    outlined consume of Data?(v88, v41);
  }

LABEL_33:
  if (one-time initialization token for Log != -1)
  {
LABEL_67:
    swift_once();
  }

  v89 = v26;
  v90 = __swift_project_value_buffer(v26, static CloudSyncAssetData.Log);
  swift_beginAccess();
  v91 = v145;
  v92 = v144;
  (*(v145 + 16))(v144, v90, v26);
  v93 = v168;

  v94 = Logger.logObject.getter();
  v95 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v94, v95))
  {
    v96 = swift_slowAlloc();
    v150 = v41;
    v97 = v91;
    v98 = v96;
    v99 = swift_slowAlloc();
    v171 = v99;
    *v98 = 136315138;
    *(v98 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v167, v93, &v171);
    _os_log_impl(&dword_21607C000, v94, v95, "Modifying existing assetData %s", v98, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v99);
    MEMORY[0x21CE94770](v99, -1, -1);
    MEMORY[0x21CE94770](v98, -1, -1);

    (*(v97 + 8))(v144, v89);
    v41 = v150;
  }

  else
  {

    (*(v91 + 8))(v92, v89);
  }

  v100 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v44 = [v100 initWithContext_];
  outlined consume of Data._Representation(v153, v41);

  v38 = v167;
  v45 = v168;
LABEL_38:
  v178 = v169;
  v101 = type metadata accessor for URL();
  v102 = *(v101 - 8);
  (*(v102 + 16))(v47, v156, v101);
  (*(v102 + 56))(v47, 0, 1, v101);
  v42 = v44;
  specialized static CloudSyncAssetData._fillInBlanks(id:sha256:size:inlineData:fileURL:fileExt:assetClass:blobFolderURL:allowLazyLoading:dryRun:)(v38, v45, v163, v164, v165, v31, v160, v162, &v171, v161, v158, v159, &v178, v47, v157 & 1, 0);
  v103 = v172;
  v166 = v171;
  v105 = v173;
  v104 = v174;
  v107 = v175;
  v106 = v176;
  v108 = v177;
  outlined destroy of UTType?(v47, &_s10Foundation3URLVSgMd);
  v109 = [v42 expiry];

  if (v109)
  {
    v164 = v106;
    v165 = v108;
    v110 = v104;
    v111 = v103;
    v112 = v149;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v113 = v146;
    static Date.distantPast.getter();
    v114 = static Date.> infix(_:_:)();
    v115 = *(v148 + 8);
    v116 = v113;
    v117 = v147;
    v115(v116, v147);
    if (v114)
    {
      if (static Date.> infix(_:_:)())
      {
        v118 = Date._bridgeToObjectiveC()().super.isa;
        [v42 setExpiry_];
      }

      v115(v149, v117);
      v45 = v168;
      v103 = v111;
      v104 = v110;
      v106 = v164;
      v108 = v165;
      goto LABEL_45;
    }

    v115(v112, v117);
    v45 = v168;
    v103 = v111;
    v104 = v110;
    v106 = v164;
    v108 = v165;
  }

  v119 = Date._bridgeToObjectiveC()().super.isa;
  [v42 setExpiry_];

LABEL_45:
  v120 = MEMORY[0x21CE91FC0](v167, v45);
  [v42 setId_];

  v121 = MEMORY[0x21CE91FC0](v155, v154);
  [v42 setZoneName_];

  v122 = Data._bridgeToObjectiveC()().super.isa;
  [v42 setSha256_];

  v123 = Int64._bridgeToObjectiveC()().super.super.isa;
  [v42 setSize_];

  if (v107 >> 60 == 15)
  {
    v124 = 0;
  }

  else
  {
    outlined copy of Data._Representation(v104, v107);
    v124 = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(v104, v107);
  }

  [v42 setInlineData_];

  if (v108)
  {
    v125 = MEMORY[0x21CE91FC0](v106, v108);
  }

  else
  {
    v125 = 0;
  }

  [v42 setFilePath_];

  if (v169)
  {
    v126 = 99;
  }

  else
  {
    v126 = 98;
  }

  v127 = MEMORY[0x21CE91FC0](v126, 0xE100000000000000);

  [v42 setProtectionClass_];

  outlined consume of Data._Representation(v103, v105);
  outlined consume of Data?(v104, v107);
  return v42;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t specialized CloudSyncAssetData.mergeFromServerRecord(_:force:primary:primaryID:blobFolderURL:cloudManager:)(void *a1, int a2, NSURL *a3, uint64_t a4, uint64_t a5)
{
  v326 = a5;
  v333 = a4;
  v331 = a3;
  LODWORD(v336) = a2;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v325 = &v317 - v7;
  v328 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
  v327 = *(v328 - 8);
  v8 = MEMORY[0x28223BE20](v328);
  v323 = &v317 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v322 = v9;
  MEMORY[0x28223BE20](v8);
  v324 = (&v317 - v10);
  v330 = type metadata accessor for Logger();
  v332 = *(v330 - 8);
  v11 = MEMORY[0x28223BE20](v330);
  v329 = &v317 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v339 = &v317 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v321 = &v317 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v317 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v317 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v317 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v28 = &v317 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v346 = &v317 - v29;
  v30 = [a1 encryptedValues];
  v31 = MEMORY[0x21CE91FC0](0x68735F7465737361, 0xEC00000036353261);
  v32 = [v30 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  v33 = 0xF000000000000000;
  v320 = v19;
  if (v32)
  {
    v357 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
    v34 = swift_dynamicCast();
    v35 = v350;
    if (!v34)
    {
      v35 = 0;
    }

    v344 = v35;
    if (v34)
    {
      v33 = v351;
    }

    v345 = v33;
  }

  else
  {
    v345 = 0xF000000000000000;
    v344 = 0;
  }

  v36 = [a1 encryptedValues];
  v37 = MEMORY[0x21CE91FC0](0x69735F7465737361, 0xEA0000000000657ALL);
  v38 = [v36 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (!v38)
  {
    goto LABEL_12;
  }

  objc_opt_self();
  v39 = swift_dynamicCastObjCClass();
  if (!v39)
  {
    swift_unknownObjectRelease();
LABEL_12:
    v343 = 0;
    goto LABEL_13;
  }

  v343 = v39;
LABEL_13:
  v40 = [a1 encryptedValues];
  v41 = MEMORY[0x21CE91FC0](0x78655F7465737361, 0xE900000000000074);
  v42 = [v40 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v42 && (v357 = v42, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd), (swift_dynamicCast() & 1) != 0))
  {
    v43 = v351;
    v342 = v350;
  }

  else
  {
    v342 = 0;
    v43 = 0xE000000000000000;
  }

  v337 = v43;
  v347 = a1;
  v44 = [a1 encryptedValues];
  v45 = MEMORY[0x21CE91FC0](0x6C635F7465737361, 0xEB00000000737361);
  v46 = [v44 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v46)
  {
    v357 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
    v47 = swift_dynamicCast();
    v48 = v350;
    if (!v47)
    {
      v48 = 0;
    }

    v334 = v48;
    if (v47)
    {
      v49 = v351;
    }

    else
    {
      v49 = 0;
    }

    v340 = v49;
  }

  else
  {
    v334 = 0;
    v340 = 0;
  }

  v50 = [v347 encryptedValues];
  v51 = MEMORY[0x21CE91FC0](0x61645F7465737361, 0xEA00000000006174);
  v52 = [v50 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v52)
  {
    v350 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd);
    v53 = swift_dynamicCast();
    v54 = v341;
    v55 = v346;
    v56 = v340;
    if ((v53 & 1) == 0)
    {
      v358 = xmmword_21658E040;
    }

    v57 = v347;
  }

  else
  {
    v358 = xmmword_21658E040;
    v54 = v341;
    v57 = v347;
    v55 = v346;
    v56 = v340;
  }

  v58 = MEMORY[0x21CE92CC0](0x73615F7465737361, 0xEB00000000746573);
  v59 = v343;
  if (!v58)
  {
    goto LABEL_35;
  }

  objc_opt_self();
  v60 = swift_dynamicCastObjCClass();
  if (!v60)
  {
    swift_unknownObjectRelease();
LABEL_35:
    v65 = type metadata accessor for URL();
    v66 = 1;
    (*(*(v65 - 8) + 56))(v55, 1, 1, v65);
    v61 = 0;
    goto LABEL_38;
  }

  v61 = v60;
  v62 = [v60 fileURL];
  if (v62)
  {
    v63 = v62;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v64 = 0;
  }

  else
  {
    v64 = 1;
  }

  v67 = type metadata accessor for URL();
  (*(*(v67 - 8) + 56))(v28, v64, 1, v67);
  outlined init with take of URL?(v28, v55, &_s10Foundation3URLVSgMd);
  v66 = 0;
LABEL_38:
  v338 = v61;
  if (*(&v358 + 1) >> 60 != 15 || (v68 = type metadata accessor for URL(), (*(*(v68 - 8) + 48))(v55, 1, v68) != 1))
  {
    v74 = 0;
LABEL_44:
    v75 = v337;
    goto LABEL_45;
  }

  if ((v66 & 1) != 0 || (v69 = [v61 assetContent]) == 0)
  {
    v71 = 0;
    v73 = 0xF000000000000000;
  }

  else
  {
    v70 = v69;
    v71 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v73 = v72;
  }

  v92 = v358;
  *&v358 = v71;
  *(&v358 + 1) = v73;
  outlined consume of Data?(v92, *(&v92 + 1));
  if (*(&v358 + 1) >> 60 == 15)
  {
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v93 = v330;
    v94 = __swift_project_value_buffer(v330, static CloudSyncAssetData.Log);
    swift_beginAccess();
    (*(v332 + 16))(v22, v94, v93);
    v95 = v59;
    v96 = v54;
    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v318 = swift_slowAlloc();
      v319 = swift_slowAlloc();
      v350 = v319;
      *v99 = 136446722;
      *(v99 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004CLL, 0x8000000216578810, &v350);
      *(v99 + 12) = 2080;
      v100 = [v96 id];
      v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v103 = v102;

      v104 = v101;
      v55 = v346;
      v105 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v103, &v350);
      v56 = v340;

      *(v99 + 14) = v105;
      *(v99 + 22) = 2112;
      *(v99 + 24) = v95;
      v106 = v318;
      *v318 = v59;
      v107 = v95;
      _os_log_impl(&dword_21607C000, v97, v98, "CloudSyncAssetData.%{public}s: Asset %s has no data despite claiming %@ bytes", v99, 0x20u);
      outlined destroy of UTType?(v106, &_sSo8NSObjectCSgMd);
      MEMORY[0x21CE94770](v106, -1, -1);
      v108 = v319;
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v108, -1, -1);
      MEMORY[0x21CE94770](v99, -1, -1);

      (*(v332 + 8))(v22, v330);
    }

    else
    {

      (*(v332 + 8))(v22, v93);
    }

    v74 = 1;
    v57 = v347;
    goto LABEL_44;
  }

  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v114 = v330;
  v115 = __swift_project_value_buffer(v330, static CloudSyncAssetData.Log);
  swift_beginAccess();
  v116 = v332;
  (*(v332 + 16))(v24, v115, v114);
  v117 = v54;
  v118 = Logger.logObject.getter();
  v119 = static os_log_type_t.debug.getter();

  if (!os_log_type_enabled(v118, v119))
  {

    (*(v116 + 8))(v24, v114);
    goto LABEL_100;
  }

  LODWORD(v319) = v119;
  v120 = -1;
  v121 = swift_slowAlloc();
  v318 = swift_slowAlloc();
  v350 = v318;
  *v121 = 136446722;
  *(v121 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004CLL, 0x8000000216578810, &v350);
  *(v121 + 12) = 2080;
  v122 = [v117 id];
  v123 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v125 = v124;

  v126 = v123;
  v57 = v347;
  v127 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v126, v125, &v350);
  v128 = v332;

  *(v121 + 14) = v127;
  *(v121 + 22) = 2048;
  swift_beginAccess();
  if (*(&v358 + 1) >> 60 != 15)
  {
    v185 = v358;
    v186 = *(&v358 + 1) >> 62;
    if ((*(&v358 + 1) >> 62) > 1)
    {
      if (v186 != 2)
      {
        v120 = 0;
        goto LABEL_71;
      }

      v185 = *(v358 + 16);
      v250 = *(v358 + 24);
      v120 = v250 - v185;
      if (!__OFSUB__(v250, v185))
      {
        goto LABEL_71;
      }

      __break(1u);
    }

    else if (!v186)
    {
      v120 = BYTE14(v358);
      goto LABEL_71;
    }

    v251 = __OFSUB__(HIDWORD(v185), v185);
    v252 = HIDWORD(v185) - v185;
    if (v251)
    {
      __break(1u);
      goto LABEL_199;
    }

    v120 = v252;
  }

LABEL_71:
  *(v121 + 24) = v120;
  _os_log_impl(&dword_21607C000, v118, v319, "CloudSyncAssetData.%{public}s: Asset %s using CKAsset.assetContent %ld bytes", v121, 0x20u);
  v129 = v318;
  swift_arrayDestroy();
  MEMORY[0x21CE94770](v129, -1, -1);
  MEMORY[0x21CE94770](v121, -1, -1);

  (*(v128 + 8))(v24, v330);
LABEL_100:
  v74 = 0;
  v75 = v337;
  v56 = v340;
LABEL_45:
  v359._countAndFlagsBits = v334;
  v359._object = v56;
  static CloudSyncAssetData.guessAssetClass(protectionClass:ext:)(v359, v342, v75, &v350);
  v76 = v350;
  v77 = v339;
  if (v336)
  {
    if (!v333 || (v74 & 1) != 0)
    {

      goto LABEL_143;
    }

    LODWORD(v336) = v350;
    swift_unknownObjectRetain();
    v109 = [v54 id];
    v110 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v112 = v111;

    if (v59)
    {
      v113 = [v59 longLongValue];
    }

    else
    {
      v113 = 0;
    }

    swift_beginAccess();
    v156 = v358;
    LOBYTE(v349) = v336;
    outlined copy of Data?(v358, *(&v358 + 1));
    specialized static CloudSyncAssetData._fillInBlanks(id:sha256:size:inlineData:fileURL:fileExt:assetClass:blobFolderURL:allowLazyLoading:dryRun:)(v110, v112, v344, v345, v113, v59 == 0, v156, *(&v156 + 1), &v350, v346, v342, v75, &v349, v331, 0, 1u);
    v157 = v350;
    v337 = v351;
    v158 = v353;
    v342 = v352;
    v159 = v354;

    outlined consume of Data?(v156, *(&v156 + 1));

    outlined consume of Data?(v158, v159);
    if (one-time initialization token for productionSchema != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v160 = 0x27CA8C000uLL;
    v57 = v347;
    v128 = v332;
    if (*(static CloudSyncAssetData.productionSchema + 2))
    {
      specialized __RawDictionaryStorage.find<A>(_:)(0x69735F7465737361, 0xEA0000000000657ALL);
      v162 = v161;
      swift_endAccess();
      v55 = v346;
      if (v162)
      {
        v163 = [v54 size];
        v164.super.super.isa = Int64._bridgeToObjectiveC()().super.super.isa;
        isa = v164.super.super.isa;
        if (v163)
        {
          type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSNumber);
          v166 = static NSObject.== infix(_:_:)();

          v57 = v347;
          if (v166)
          {
            swift_beginAccess();
            if (!*(static CloudSyncAssetData.productionSchema + 2))
            {
              swift_endAccess();
LABEL_154:

              v253 = v330;
              v169 = v321;
LABEL_174:
              if (*(v160 + 4056) != -1)
              {
                swift_once();
              }

              v264 = __swift_project_value_buffer(v253, static CloudSyncAssetData.Log);
              swift_beginAccess();
              v340 = *(v128 + 16);
              v340(v169, v264, v253);
              v265 = v54;
              v266 = v337;
              v267 = v342;
              outlined copy of Data._Representation(v337, v342);
              v268 = v57;
              v269 = Logger.logObject.getter();
              v270 = static os_log_type_t.error.getter();
              ObjectType = v265;

              outlined consume of Data._Representation(v266, v267);
              v336 = v268;

              LODWORD(v339) = v270;
              if (os_log_type_enabled(v269, v270))
              {
                v271 = swift_slowAlloc();
                v272 = swift_slowAlloc();
                v349 = v272;
                *v271 = 136446978;
                *(v271 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004CLL, 0x8000000216578810, &v349);
                *(v271 + 12) = 2080;
                v273 = [ObjectType sha256];
                if (v273)
                {
                  v274 = v273;
                  v275 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                  v277 = v276;
                }

                else
                {
                  v275 = 0;
                  v277 = 0xC000000000000000;
                }

                v278 = Data.description.getter();
                v280 = v279;
                outlined consume of Data._Representation(v275, v277);
                v281 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v278, v280, &v349);

                *(v271 + 14) = v281;
                *(v271 + 22) = 2080;
                v282 = v337;
                v283 = v342;
                outlined copy of Data._Representation(v337, v342);
                v284 = Data.description.getter();
                v286 = v285;
                outlined consume of Data._Representation(v282, v283);
                v287 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v284, v286, &v349);

                *(v271 + 24) = v287;
                *(v271 + 32) = 2080;
                v288 = [v336 recordID];
                v289 = [v288 recordName];

                v290 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v292 = v291;

                v293 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v290, v292, &v349);

                *(v271 + 34) = v293;
                _os_log_impl(&dword_21607C000, v269, v339, "CloudSyncAssetData.%{public}s: iCloud clobbering local sha256 %s -> ck sha256 %s in record %s.", v271, 0x2Au);
                swift_arrayDestroy();
                MEMORY[0x21CE94770](v272, -1, -1);
                MEMORY[0x21CE94770](v271, -1, -1);

                v205 = *(v332 + 8);
                v189 = v330;
                v205(v321, v330);
                v54 = v341;
                v57 = v347;
              }

              else
              {

                v205 = *(v128 + 8);
                v189 = v330;
                v205(v169, v330);
              }

              type metadata accessor for related decl 'e' for CKErrorCode(0);
              v348 = 12;
              _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
              _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type related decl 'e' for CKErrorCode and conformance related decl 'e' for CKErrorCode, type metadata accessor for related decl 'e' for CKErrorCode);
              _BridgedStoredNSError.init(_:userInfo:)();
              v206 = v349;
              swift_willThrow();
              goto LABEL_134;
            }

            specialized __RawDictionaryStorage.find<A>(_:)(0x68735F7465737361, 0xEC00000036353261);
            v168 = v167;
            swift_endAccess();
            v169 = v321;
            if ((v168 & 1) == 0)
            {

              v253 = v330;
              goto LABEL_174;
            }

            v170 = [v54 sha256];
            if (v170)
            {
              v171 = v170;
              v172 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v174 = v173;

              if (v174 >> 60 != 15)
              {
                v175 = v342;
                if (v342 >> 60 != 15)
                {
                  v176 = v337;
                  outlined copy of Data._Representation(v337, v342);
                  outlined copy of Data._Representation(v176, v175);
                  outlined copy of Data?(v172, v174);
                  v177 = v175;
                  v178 = specialized static Data.== infix(_:_:)(v172, v174, v176, v175);
                  outlined consume of Data?(v176, v177);
                  outlined consume of Data._Representation(v176, v177);
                  outlined consume of Data?(v172, v174);
                  outlined consume of Data?(v172, v174);
                  v160 = 0x27CA8C000;
                  if (v178)
                  {
LABEL_159:
                    swift_beginAccess();
                    if (*(static CloudSyncAssetData.productionSchema + 2))
                    {
                      specialized __RawDictionaryStorage.find<A>(_:)(0x6C635F7465737361, 0xEB00000000737361);
                      v255 = v254;
                      swift_endAccess();
                      v59 = v343;
                      v256 = v336;
                      if (v255)
                      {
                        v257 = [v54 protectionClass];
                        if (!v257)
                        {
                          outlined consume of Data._Representation(v337, v342);
                          swift_unknownObjectRelease();

                          goto LABEL_143;
                        }

                        v258 = v342;
                        if (!v340)
                        {
                          goto LABEL_171;
                        }

                        CloudSyncAssetData.assetClass.getter(&v350);
                        if (v350)
                        {
                          v259 = 99;
                        }

                        else
                        {
                          v259 = 98;
                        }

                        if (v256)
                        {
                          v260 = 99;
                        }

                        else
                        {
                          v260 = 98;
                        }

                        if (v259 == v260)
                        {
                          swift_bridgeObjectRelease_n();
LABEL_171:
                          v261 = v337;
                          v262 = v258;
LABEL_172:
                          outlined consume of Data._Representation(v261, v262);
                          swift_unknownObjectRelease();
                          goto LABEL_143;
                        }

                        v316 = _stringCompareWithSmolCheck(_:_:expecting:)();
                        swift_bridgeObjectRelease_n();
                        if (v316)
                        {
                          v261 = v337;
                          v262 = v342;
                          goto LABEL_172;
                        }

LABEL_185:
                        if (*(v160 + 4056) == -1)
                        {
LABEL_186:
                          v189 = v330;
                          v294 = __swift_project_value_buffer(v330, static CloudSyncAssetData.Log);
                          swift_beginAccess();
                          v295 = v320;
                          v340 = *(v128 + 16);
                          v340(v320, v294, v189);
                          v296 = v54;
                          v297 = v128;
                          v298 = v57;
                          v299 = Logger.logObject.getter();
                          v300 = static os_log_type_t.error.getter();

                          if (os_log_type_enabled(v299, v300))
                          {
                            v301 = swift_slowAlloc();
                            v339 = swift_slowAlloc();
                            v349 = v339;
                            *v301 = 136446978;
                            *(v301 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004CLL, 0x8000000216578810, &v349);
                            *(v301 + 12) = 2080;
                            CloudSyncAssetData.assetClass.getter(&v348);
                            if (v348)
                            {
                              v302 = 99;
                            }

                            else
                            {
                              v302 = 98;
                            }

                            v303 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v302, 0xE100000000000000, &v349);

                            *(v301 + 14) = v303;
                            *(v301 + 22) = 2080;
                            if (v336)
                            {
                              v304 = 99;
                            }

                            else
                            {
                              v304 = 98;
                            }

                            v305 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v304, 0xE100000000000000, &v349);

                            *(v301 + 24) = v305;
                            *(v301 + 32) = 2080;
                            v306 = [v298 recordID];
                            v307 = [v306 recordName];

                            v308 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                            v310 = v309;

                            v311 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v308, v310, &v349);

                            *(v301 + 34) = v311;
                            _os_log_impl(&dword_21607C000, v299, v300, "CloudSyncAssetData.%{public}s: iCloud clobbering local assetClass %s -> ck assetClass %s in record %s.", v301, 0x2Au);
                            v312 = v339;
                            swift_arrayDestroy();
                            v189 = v330;
                            MEMORY[0x21CE94770](v312, -1, -1);
                            v313 = v301;
                            v57 = v347;
                            MEMORY[0x21CE94770](v313, -1, -1);
                          }

                          v314 = v295;
                          v315 = *(v297 + 8);
                          v315(v314, v189);
                          type metadata accessor for related decl 'e' for CKErrorCode(0);
                          v348 = 12;
                          _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
                          _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type related decl 'e' for CKErrorCode and conformance related decl 'e' for CKErrorCode, type metadata accessor for related decl 'e' for CKErrorCode);
                          _BridgedStoredNSError.init(_:userInfo:)();
                          v206 = v349;
                          swift_willThrow();
                          v205 = v315;
LABEL_134:
                          v207 = v329;
                          if (one-time initialization token for Log != -1)
                          {
                            swift_once();
                          }

                          v208 = __swift_project_value_buffer(v189, static CloudSyncAssetData.Log);
                          swift_beginAccess();
                          v340(v207, v208, v189);
                          v209 = v57;
                          v210 = Logger.logObject.getter();
                          v211 = static os_log_type_t.error.getter();

                          if (os_log_type_enabled(v210, v211))
                          {
                            v212 = swift_slowAlloc();
                            v213 = swift_slowAlloc();
                            v340 = v206;
                            v214 = v189;
                            v339 = v205;
                            v215 = v213;
                            v348 = v213;
                            *v212 = 136446466;
                            *(v212 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004CLL, 0x8000000216578810, &v348);
                            *(v212 + 12) = 2080;
                            v216 = [v209 recordID];
                            v217 = [v216 recordName];

                            v218 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                            v220 = v219;

                            v221 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v218, v220, &v348);

                            *(v212 + 14) = v221;
                            _os_log_impl(&dword_21607C000, v210, v211, "CloudSyncAssetData.%{public}s: iCloud tried to clobber our asset data record %s. Re-uploading...", v212, 0x16u);
                            swift_arrayDestroy();
                            MEMORY[0x21CE94770](v215, -1, -1);
                            MEMORY[0x21CE94770](v212, -1, -1);

                            v222 = v214;
                            v206 = v340;
                            (v339)(v329, v222);
                          }

                          else
                          {

                            v205(v207, v189);
                          }

                          v223 = [v54 id];
                          v224 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v226 = v225;

                          v227 = [v54 zoneName];
                          if (v227)
                          {
                            v228 = v227;
                            v229 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                            v231 = v230;
                          }

                          else
                          {
                            v229 = 0;
                            v231 = 0xE000000000000000;
                          }

                          type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordID);
                          type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordZoneID);
                          v232._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v232._object = v233;
                          v234._countAndFlagsBits = v229;
                          v234._object = v231;
                          v235 = CKRecordZoneID.init(zoneName:ownerName:)(v234, v232).super.isa;
                          v236._countAndFlagsBits = v224;
                          v236._object = v226;
                          v237.super.isa = CKRecordID.init(recordName:zoneID:)(v236, v235).super.isa;
                          v238 = v324;
                          v324->super.isa = v237.super.isa;
                          v239 = v327;
                          v240 = v328;
                          (*(v327 + 104))(v238, *MEMORY[0x277CBBC68], v328);
                          v241 = type metadata accessor for TaskPriority();
                          v242 = v325;
                          (*(*(v241 - 8) + 56))(v325, 1, 1, v241);
                          v243 = v323;
                          (*(v239 + 16))(v323, v238, v240);
                          v244 = (*(v239 + 80) + 48) & ~*(v239 + 80);
                          v245 = swift_allocObject();
                          *(v245 + 2) = 0;
                          *(v245 + 3) = 0;
                          v246 = v326;
                          *(v245 + 4) = v333;
                          *(v245 + 5) = v246;
                          (*(v239 + 32))(&v245[v244], v243, v240);
                          swift_unknownObjectRetain();
                          _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v242, &async function pointer to partial apply for closure #1 in CloudSyncAssetData.mergeFromServerRecord(_:force:primary:primaryID:blobFolderURL:cloudManager:), v245);

                          outlined consume of Data._Representation(v337, v342);
                          swift_unknownObjectRelease();
                          (*(v239 + 8))(v238, v240);
                          v57 = v347;
                          v55 = v346;
                          v59 = v343;
                          goto LABEL_143;
                        }

LABEL_199:
                        swift_once();
                        goto LABEL_186;
                      }
                    }

                    else
                    {
                      swift_endAccess();
                    }

                    goto LABEL_185;
                  }

                  goto LABEL_154;
                }

LABEL_173:
                v253 = v330;
                v263 = v337;
                outlined copy of Data._Representation(v337, v175);

                outlined consume of Data?(v172, v174);
                outlined consume of Data?(v263, v175);
                v169 = v321;
                v160 = 0x27CA8C000uLL;
                goto LABEL_174;
              }
            }

            else
            {
              v172 = 0;
              v174 = 0xF000000000000000;
            }

            v175 = v342;
            if (v342 >> 60 == 15)
            {
              outlined copy of Data._Representation(v337, v342);
              outlined consume of Data?(v172, v174);
              goto LABEL_159;
            }

            goto LABEL_173;
          }
        }

        else
        {

          v57 = v347;
        }
      }
    }

    else
    {
      swift_endAccess();
    }

    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v189 = v330;
    v190 = __swift_project_value_buffer(v330, static CloudSyncAssetData.Log);
    swift_beginAccess();
    v340 = *(v128 + 16);
    v340(v77, v190, v189);
    v191 = v54;
    v192 = v57;
    v193 = Logger.logObject.getter();
    v194 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v193, v194))
    {
      v195 = swift_slowAlloc();
      v196 = swift_slowAlloc();
      v197 = swift_slowAlloc();
      v349 = v197;
      *v195 = 136446978;
      *(v195 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004CLL, 0x8000000216578810, &v349);
      *(v195 + 12) = 2112;
      v198 = [v191 size];
      if (!v198)
      {
        type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSNumber);
        v198 = NSNumber.init(integerLiteral:)(-1).super.super.isa;
      }

      *(v195 + 14) = v198;
      *v196 = v198;
      *(v195 + 22) = 2048;
      *(v195 + 24) = v157;
      *(v195 + 32) = 2080;
      v199 = [v192 recordID];
      v200 = [v199 recordName];

      v201 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v203 = v202;

      v204 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v201, v203, &v349);

      *(v195 + 34) = v204;
      _os_log_impl(&dword_21607C000, v193, v194, "CloudSyncAssetData.%{public}s: iCloud clobbering local size %@ -> ck size %lld in record %s.", v195, 0x2Au);
      outlined destroy of UTType?(v196, &_sSo8NSObjectCSgMd);
      MEMORY[0x21CE94770](v196, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v197, -1, -1);
      MEMORY[0x21CE94770](v195, -1, -1);

      v205 = *(v332 + 8);
      v189 = v330;
      v205(v339, v330);
      v57 = v347;
    }

    else
    {

      v205 = *(v128 + 8);
      v205(v77, v189);
    }

    type metadata accessor for related decl 'e' for CKErrorCode(0);
    v348 = 12;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type related decl 'e' for CKErrorCode and conformance related decl 'e' for CKErrorCode, type metadata accessor for related decl 'e' for CKErrorCode);
    _BridgedStoredNSError.init(_:userInfo:)();
    v206 = v349;
    swift_willThrow();
    v54 = v341;
    goto LABEL_134;
  }

  v78 = [v54 size];
  if (v78)
  {
    v79 = v78;
    if (!v59)
    {

      goto LABEL_85;
    }

    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSNumber);
    v80 = v59;
    v81 = static NSObject.== infix(_:_:)();

    if ((v81 & 1) == 0)
    {
      goto LABEL_85;
    }
  }

  else if (v59)
  {
    goto LABEL_85;
  }

  v82 = [v54 sha256];
  if (v82)
  {
    v83 = v82;
    v84 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v86 = v85;

    if (v86 >> 60 != 15)
    {
      v87 = v345;
      if (v345 >> 60 != 15)
      {
        v88 = v76;
        v89 = v344;
        outlined copy of Data?(v344, v345);
        outlined copy of Data?(v84, v86);
        v90 = specialized static Data.== infix(_:_:)(v84, v86, v89, v87);
        outlined consume of Data?(v84, v86);
        v91 = v89;
        v76 = v88;
        outlined consume of Data?(v91, v87);
        outlined consume of Data?(v84, v86);
        v59 = v343;
        if ((v90 & 1) == 0)
        {
          goto LABEL_85;
        }

        goto LABEL_76;
      }

LABEL_84:
      v132 = v344;
      v133 = v345;
      outlined copy of Data?(v344, v345);
      outlined consume of Data?(v84, v86);
      outlined consume of Data?(v132, v133);
      v59 = v343;
      goto LABEL_85;
    }
  }

  else
  {
    v84 = 0;
    v86 = 0xF000000000000000;
  }

  if (v345 >> 60 != 15)
  {
    goto LABEL_84;
  }

  outlined copy of Data?(v344, v345);
  outlined consume of Data?(v84, v86);
LABEL_76:
  CloudSyncAssetData.assetClass.getter(&v350);
  if (v350)
  {
    v130 = 99;
  }

  else
  {
    v130 = 98;
  }

  if (v76)
  {
    v131 = 99;
  }

  else
  {
    v131 = 98;
  }

  if (v130 == v131)
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v179 = _stringCompareWithSmolCheck(_:_:expecting:)();
    swift_bridgeObjectRelease_n();
    if ((v179 & 1) == 0)
    {
      goto LABEL_85;
    }
  }

  v180 = [v54 inlineData];
  if (v180)
  {
    v181 = v180;
    v182 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v184 = v183;

    outlined consume of Data._Representation(v182, v184);
LABEL_123:
    v187 = [v54 filePath];
    if (v187)
    {
      v188 = v187;

      goto LABEL_143;
    }

    v249 = type metadata accessor for URL();
    if ((*(*(v249 - 8) + 48))(v55, 1, v249) == 1)
    {

      goto LABEL_143;
    }

    goto LABEL_85;
  }

  swift_beginAccess();
  if (*(&v358 + 1) >> 60 == 15)
  {
    goto LABEL_123;
  }

LABEL_85:
  v134 = v76;
  v135 = specialized static DefaultsManager.MomentsUIDomain.BOOLeanValueFor(_:)();
  v136 = (v135 == 2) | v135;
  v137 = [v54 id];
  v138 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v140 = v139;

  if (v59)
  {
    v141 = [v59 longLongValue];
  }

  else
  {
    v141 = 0;
  }

  v142 = v59 == 0;
  swift_beginAccess();
  v143 = *(&v358 + 1);
  v144 = v358;
  LOBYTE(v348) = v134;
  outlined copy of Data?(v358, *(&v358 + 1));
  specialized static CloudSyncAssetData._fillInBlanks(id:sha256:size:inlineData:fileURL:fileExt:assetClass:blobFolderURL:allowLazyLoading:dryRun:)(v138, v140, v344, v345, v141, v142, v144, v143, &v350, v55, v342, v75, &v348, v331, v136 & 1, 0);
  v145 = v351;
  v146 = v352;
  v147 = v353;
  v148 = v354;
  v342 = v355;
  v149 = v356;

  outlined consume of Data?(v144, v143);

  v150 = Int64._bridgeToObjectiveC()().super.super.isa;
  v54 = v341;
  [v341 setSize_];

  v151 = Data._bridgeToObjectiveC()().super.isa;
  [v54 setSha256_];

  if (v134)
  {
    v152 = 99;
  }

  else
  {
    v152 = 98;
  }

  v153 = MEMORY[0x21CE91FC0](v152, 0xE100000000000000);

  [v54 setProtectionClass_];

  v154 = 0;
  if (v148 >> 60 != 15)
  {
    outlined copy of Data._Representation(v147, v148);
    v154 = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(v147, v148);
  }

  [v54 setInlineData_];

  if (v149)
  {
    v155 = MEMORY[0x21CE91FC0](v342, v149);
  }

  else
  {
    v155 = 0;
  }

  v59 = v343;
  [v54 setFilePath_];

  outlined consume of Data?(v147, v148);
  outlined consume of Data._Representation(v145, v146);
  v57 = v347;
  v55 = v346;
LABEL_143:
  [v54 setCkAssetData_];
  v247 = v57;
  CloudSyncAssetData.lastKnownCKRecord.setter(v57);

  outlined consume of Data?(v344, v345);
  outlined destroy of UTType?(v55, &_s10Foundation3URLVSgMd);
  return outlined consume of Data?(v358, *(&v358 + 1));
}