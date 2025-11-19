uint64_t DBSuggestion.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  (*(*v1 + 728))(v4);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (v9(v6, 1, v7) != 1)
  {
    return (*(v8 + 32))(a1, v6, v7);
  }

  static Date.distantPast.getter();
  result = (v9)(v6, 1, v7);
  if (result != 1)
  {
    return outlined destroy of UTType?(v6, &_s10Foundation4DateVSgMd);
  }

  return result;
}

uint64_t key path setter for DBSuggestion._suggestionID : DBSuggestion(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of DateInterval?(a1, &v8 - v5, &_s10Foundation4UUIDVSgMd);
  return (*(**a2 + 352))(v6);
}

uint64_t key path setter for DBSuggestion._endDate : DBSuggestion(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of DateInterval?(a1, &v8 - v5, &_s10Foundation4DateVSgMd);
  return (*(**a2 + 784))(v6);
}

uint64_t key path getter for DBSuggestion._suggestionType : DBSuggestion@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 440))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t key path getter for DBSuggestion._suggestionSubType : DBSuggestion@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 488))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t key path getter for DBSuggestion._visibilityCategory : DBSuggestion@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 536))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t key path getter for PersistentModel.persistentModelID : DBAssetData()
{
  type metadata accessor for DBAssetData();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
  return PersistentModel.persistentModelID.getter();
}

uint64_t static DBSuggestion.Class.setter(char *a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  static DBSuggestion.Class = a1;
  unk_27CA91660 = a2;
  byte_27CA91668 = a3;
  return result;
}

uint64_t DBSuggestion.Log.unsafeMutableAddressor()
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static DBSuggestion.Log);
}

uint64_t static DBSuggestion.Log.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static DBSuggestion.Log);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static DBSuggestion.Log.setter(uint64_t a1)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static DBSuggestion.Log);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static DBSuggestion.Log.modify())()
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static DBSuggestion.Log);
  swift_beginAccess();
  return MutableVideoViewModel.videoDurationSeconds.modify;
}

uint64_t protocol witness for static CloudLog.Log.getter in conformance DBSuggestion@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static DBSuggestion.Log);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

MomentsUI::DBSuggestion::SuggestionType_optional __swiftcall DBSuggestion.SuggestionType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 13;
  if ((rawValue + 1) < 0xD)
  {
    v2 = rawValue + 1;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t DBSuggestion.SuggestionType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {

    v6 = 0;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    v5 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    DBSuggestion.SuggestionType.init(rawValue:)(v5);
    if (v8 == 13)
    {
      v6 = 0;
    }

    else
    {
      v6 = v8;
    }

    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  *a2 = v6;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DBSuggestion.SuggestionSubType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x21CE937C0](qword_21659CD30[v1]);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DBSuggestion.SuggestionSubType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x21CE937C0](qword_21659CD30[v1]);
  return Hasher._finalize()();
}

uint64_t DBSuggestion.SuggestionSubType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {

    v6 = 0;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    v5 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    DBSuggestion.SuggestionSubType.init(rawValue:)(v5);
    if (v8 == 65)
    {
      v6 = 0;
    }

    else
    {
      v6 = v8;
    }

    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  *a2 = v6;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t DBSuggestion.VisibilityCategory.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {

    v6 = 0;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    v5 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    if (v5 >= 5)
    {
      v6 = 0;
    }

    else
    {
      v6 = v5;
    }

    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  *a2 = v6;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t DBSuggestion.id.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  PersistentModel.getValue<A>(forKey:)();
}

uint64_t DBSuggestion.id.setter(uint64_t a1)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v2 = type metadata accessor for UUID();
  return (*(*(v2 - 8) + 8))(a1, v2);
}

uint64_t closure #1 in DBSuggestion.id.setter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  PersistentModel.setValue<A>(forKey:to:)();
}

void (*DBSuggestion.id.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = type metadata accessor for UUID();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[6] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[6] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC9MomentsUI12DBSuggestion___observationRegistrar;
  v5[7] = v9;
  v5[8] = v10;
  *v5 = v1;
  swift_getKeyPath();
  v5[9] = lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  PersistentModel.getValue<A>(forKey:)();

  return DBSuggestion.id.modify;
}

void DBSuggestion.id.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  v7 = *(*a1 + 24);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 48), v4, v5);
    v2[1] = v7;
    KeyPath = swift_getKeyPath();
    v11[0] = v11;
    MEMORY[0x28223BE20](KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v9 = *(v6 + 8);
    v9(v3, v5);
    v9(v4, v5);
  }

  else
  {
    v2[2] = v7;
    v10 = swift_getKeyPath();
    v11[0] = v11;
    MEMORY[0x28223BE20](v10);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);
  free(v2);
}

uint64_t closure #1 in DBSuggestion._modifiedDate.setter(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  a4();
  PersistentModel.setValue<A>(forKey:to:)();
}

void (*DBSuggestion._suggestionID.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x40uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd) - 8) + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = OBJC_IVAR____TtC9MomentsUI12DBSuggestion___observationRegistrar;
  v5[5] = v7;
  v5[6] = v8;
  *v5 = v1;
  swift_getKeyPath();
  v5[7] = lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  lazy protocol witness table accessor for type UUID? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();

  return DBSuggestion._suggestionID.modify;
}

void DBSuggestion._suggestionID.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(*a1 + 24);
  if (a2)
  {
    outlined init with copy of DateInterval?(*(*a1 + 40), v3, &_s10Foundation4UUIDVSgMd);
    v2[1] = v5;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    outlined destroy of UTType?(v3, &_s10Foundation4UUIDVSgMd);
  }

  else
  {
    v2[2] = v5;
    v7 = swift_getKeyPath();
    MEMORY[0x28223BE20](v7);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  outlined destroy of UTType?(v4, &_s10Foundation4UUIDVSgMd);
  free(v4);
  free(v3);
  free(v2);
}

void *key path getter for DBSuggestion._type : DBSuggestion@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 392))(&v4);
  *a2 = v4;
  return result;
}

uint64_t key path setter for DBSuggestion._type : DBSuggestion(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 400))(&v4);
}

uint64_t DBSuggestion._type.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  lazy protocol witness table accessor for type DBSuggestion.SuggestionType? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();
}

uint64_t DBSuggestion._type.setter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void (*DBSuggestion._type.modify(void *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9MomentsUI12DBSuggestion___observationRegistrar;
  v3[1] = v1;
  v3[2] = v5;
  *v3 = v1;
  swift_getKeyPath();
  v4[3] = lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  lazy protocol witness table accessor for type DBSuggestion.SuggestionType? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();

  return DBSuggestion._type.modify;
}

void DBSuggestion._type.modify(uint64_t a1)
{
  v1 = *a1;
  **a1 = *(*a1 + 8);
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

uint64_t DBSuggestion._suggestionType.setter()
{
  return DBSuggestion._suggestionType.setter();
}

{
  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void (*DBSuggestion._suggestionType.modify(void *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9MomentsUI12DBSuggestion___observationRegistrar;
  v3[4] = v1;
  v3[5] = v5;
  v3[2] = v1;
  v6 = v3 + 2;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  lazy protocol witness table accessor for type Int? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();

  v7 = *(v4 + 24);
  *v4 = *v6;
  *(v4 + 8) = v7;
  return DBSuggestion._suggestionType.modify;
}

void DBSuggestion._suggestionType.modify(uint64_t a1)
{
  v1 = *a1;
  *(*a1 + 16) = *(*a1 + 32);
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

uint64_t DBSuggestion._suggestionType.getter(uint64_t a1, void (*a2)(void))
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  a2();
  PersistentModel.getValue<A>(forKey:)();

  return v2;
}

uint64_t closure #1 in DBSuggestion._suggestionType.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  swift_getKeyPath();
  v6 = lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  a5(v6, v7);
  PersistentModel.setValue<A>(forKey:to:)();
}

void (*DBSuggestion._suggestionSubType.modify(void *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9MomentsUI12DBSuggestion___observationRegistrar;
  v3[4] = v1;
  v3[5] = v5;
  v3[2] = v1;
  v6 = v3 + 2;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  lazy protocol witness table accessor for type Int? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();

  v7 = *(v4 + 24);
  *v4 = *v6;
  *(v4 + 8) = v7;
  return DBSuggestion._suggestionSubType.modify;
}

void DBSuggestion._suggestionSubType.modify(uint64_t a1)
{
  v1 = *a1;
  *(*a1 + 16) = *(*a1 + 32);
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

void (*DBSuggestion._visibilityCategory.modify(void *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9MomentsUI12DBSuggestion___observationRegistrar;
  v3[4] = v1;
  v3[5] = v5;
  v3[2] = v1;
  v6 = v3 + 2;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  lazy protocol witness table accessor for type UInt? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();

  v7 = *(v4 + 24);
  *v4 = *v6;
  *(v4 + 8) = v7;
  return DBSuggestion._visibilityCategory.modify;
}

void DBSuggestion._visibilityCategory.modify(uint64_t a1)
{
  v1 = *a1;
  *(*a1 + 16) = *(*a1 + 32);
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

double key path getter for DBSuggestion._title : DBSuggestion@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  return key path getter for DBSuggestion._title : DBSuggestion(a1, a2);
}

{
  *&v4 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  lazy protocol witness table accessor for type String? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t key path setter for DBSuggestion._title : DBSuggestion()
{
  return key path setter for DBSuggestion._title : DBSuggestion();
}

{
  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t DBSuggestion._title.getter()
{
  return DBSuggestion._title.getter();
}

{
  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  lazy protocol witness table accessor for type String? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t closure #1 in DBSuggestion._title.setter()
{
  return closure #1 in DBSuggestion._title.setter();
}

{
  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  lazy protocol witness table accessor for type String? and conformance <A> A?();
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t key path setter for DBSuggestion._startDate : DBSuggestion(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of DateInterval?(a1, &v8 - v5, &_s10Foundation4DateVSgMd);
  return (*(**a2 + 736))(v6);
}

uint64_t DBSuggestion._suggestionID.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return outlined destroy of UTType?(a1, a4);
}

void (*DBSuggestion._startDate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x40uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd) - 8) + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = OBJC_IVAR____TtC9MomentsUI12DBSuggestion___observationRegistrar;
  v5[5] = v7;
  v5[6] = v8;
  *v5 = v1;
  swift_getKeyPath();
  v5[7] = lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  lazy protocol witness table accessor for type Date? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();

  return DBSuggestion._startDate.modify;
}

void DBSuggestion._startDate.modify(uint64_t a1, char a2)
{
  DBSuggestion._startDate.modify(a1, a2);
}

{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(*a1 + 24);
  if (a2)
  {
    outlined init with copy of DateInterval?(v2[5], v2[4], &_s10Foundation4DateVSgMd);
    v2[1] = v5;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    outlined destroy of UTType?(v3, &_s10Foundation4DateVSgMd);
  }

  else
  {
    v2[2] = v5;
    v7 = swift_getKeyPath();
    MEMORY[0x28223BE20](v7);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  outlined destroy of UTType?(v4, &_s10Foundation4DateVSgMd);
  free(v4);
  free(v3);
  free(v2);
}

void (*DBSuggestion._endDate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x40uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd) - 8) + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = OBJC_IVAR____TtC9MomentsUI12DBSuggestion___observationRegistrar;
  v5[5] = v7;
  v5[6] = v8;
  *v5 = v1;
  swift_getKeyPath();
  v5[7] = lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  lazy protocol witness table accessor for type Date? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();

  return DBSuggestion._endDate.modify;
}

uint64_t DBSuggestion.modifiedDate.getter(uint64_t a1, void (*a2)(void))
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  a2();
  PersistentModel.getValue<A>(forKey:)();
}

uint64_t type metadata accessor for DBSuggestion()
{
  result = type metadata singleton initialization cache for DBSuggestion;
  if (!type metadata singleton initialization cache for DBSuggestion)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t key path getter for DBSuggestion._rankingScore : DBSuggestion@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 872))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void (*DBSuggestion._rankingScore.modify(void *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9MomentsUI12DBSuggestion___observationRegistrar;
  v3[4] = v1;
  v3[5] = v5;
  v3[2] = v1;
  v6 = v3 + 2;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  lazy protocol witness table accessor for type Double? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();

  v7 = *(v4 + 24);
  *v4 = *v6;
  *(v4 + 8) = v7;
  return DBSuggestion._rankingScore.modify;
}

void DBSuggestion._rankingScore.modify(uint64_t a1)
{
  v1 = *a1;
  *(*a1 + 16) = *(*a1 + 32);
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

uint64_t key path getter for DBSuggestion._baseScore : DBSuggestion@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  lazy protocol witness table accessor for type Double? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t key path setter for DBSuggestion._baseScore : DBSuggestion()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t key path getter for DBSuggestion._goodnessScore : DBSuggestion@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 968))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void (*DBSuggestion._goodnessScore.modify(void *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9MomentsUI12DBSuggestion___observationRegistrar;
  v3[4] = v1;
  v3[5] = v5;
  v3[2] = v1;
  v6 = v3 + 2;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  lazy protocol witness table accessor for type Double? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();

  v7 = *(v4 + 24);
  *v4 = *v6;
  *(v4 + 8) = v7;
  return DBSuggestion._goodnessScore.modify;
}

void DBSuggestion._goodnessScore.modify(uint64_t a1)
{
  v1 = *a1;
  *(*a1 + 16) = *(*a1 + 32);
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

uint64_t key path getter for DBSuggestion._isSensitive : DBSuggestion@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1016))();
  *a2 = result;
  return result;
}

uint64_t DBSuggestion._isSensitive.getter()
{
  return DBSuggestion._isSensitive.getter();
}

{
  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  lazy protocol witness table accessor for type Bool? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();

  return v1;
}

uint64_t DBSuggestion._isSensitive.setter()
{
  return DBSuggestion._isSensitive.setter();
}

{
  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t closure #1 in DBSuggestion._type.setter(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  a4();
  PersistentModel.setValue<A>(forKey:to:)();
}

void (*DBSuggestion._isSensitive.modify(void *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9MomentsUI12DBSuggestion___observationRegistrar;
  v3[1] = v1;
  v3[2] = v5;
  *v3 = v1;
  swift_getKeyPath();
  v4[3] = lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  lazy protocol witness table accessor for type Bool? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();

  *(v4 + 32) = *v4;
  return DBSuggestion._isSensitive.modify;
}

void DBSuggestion._isSensitive.modify(uint64_t a1)
{
  v1 = *a1;
  **a1 = *(*a1 + 8);
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

uint64_t key path getter for DBSuggestion._ordinalRankInRecommendedTab : DBSuggestion@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 1064))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void (*DBSuggestion._ordinalRankInRecommendedTab.modify(void *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9MomentsUI12DBSuggestion___observationRegistrar;
  v3[4] = v1;
  v3[5] = v5;
  v3[2] = v1;
  v6 = v3 + 2;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  lazy protocol witness table accessor for type Int64? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();

  v7 = *(v4 + 24);
  *v4 = *v6;
  *(v4 + 8) = v7;
  return DBSuggestion._ordinalRankInRecommendedTab.modify;
}

void DBSuggestion._ordinalRankInRecommendedTab.modify(uint64_t a1)
{
  v1 = *a1;
  *(*a1 + 16) = *(*a1 + 32);
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

uint64_t key path getter for DBSuggestion.assets : DBSuggestion@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1112))();
  *a2 = result;
  return result;
}

uint64_t key path setter for DBSuggestion.assets : DBSuggestion(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 1120);

  return v2(v3);
}

uint64_t DBSuggestion.assets.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  lazy protocol witness table accessor for type [DBAsset]? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t DBSuggestion.assets.setter()
{
  return DBSuggestion.assets.setter();
}

{
  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t closure #1 in DBSuggestion.assets.setter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  lazy protocol witness table accessor for type [DBAsset]? and conformance <A> A?();
  PersistentModel.setValue<A>(forKey:to:)();
}

void (*DBSuggestion.assets.modify(void *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9MomentsUI12DBSuggestion___observationRegistrar;
  v3[2] = v1;
  v3[3] = v5;
  v3[1] = v1;
  v6 = v3 + 1;
  swift_getKeyPath();
  v4[4] = lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  lazy protocol witness table accessor for type [DBAsset]? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();

  *v4 = *v6;
  return DBSuggestion.assets.modify;
}

void DBSuggestion.assets.modify(uint64_t a1, char a2)
{
  DBSuggestion.assets.modify(a1, a2);
}

{
  v3 = *a1;
  *(*a1 + 8) = *(*a1 + 16);
  swift_getKeyPath();
  if (a2)
  {

    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  free(v3);
}

uint64_t key path getter for DBSuggestion._assetData : DBSuggestion@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1160))();
  *a2 = result;
  return result;
}

uint64_t key path setter for DBSuggestion._assetData : DBSuggestion(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 1168);

  return v2(v3);
}

void (*DBSuggestion._assetData.modify(void *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9MomentsUI12DBSuggestion___observationRegistrar;
  v3[2] = v1;
  v3[3] = v5;
  v3[1] = v1;
  v6 = v3 + 1;
  swift_getKeyPath();
  v4[4] = lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  type metadata accessor for DBAssetData();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  lazy protocol witness table accessor for type [DBAssetData]? and conformance <A> A?();
  PersistentModel.getValue<A, B>(forKey:)();

  *v4 = *v6;
  return DBSuggestion._assetData.modify;
}

void (*DBSuggestion.assetsLoaded.modify(void *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9MomentsUI12DBSuggestion___observationRegistrar;
  v3[1] = v1;
  v3[2] = v5;
  *v3 = v1;
  swift_getKeyPath();
  v4[3] = lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  lazy protocol witness table accessor for type Bool? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();

  *(v4 + 32) = *v4;
  return DBSuggestion.assetsLoaded.modify;
}

void DBSuggestion.assetsLoaded.modify(uint64_t a1)
{
  v1 = *a1;
  **a1 = *(*a1 + 8);
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

uint64_t DBSuggestion.refreshLoadedAssets(deep:context:)(char a1, uint64_t a2)
{
  v53 = type metadata accessor for PersistentIdentifier();
  v5 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI11DBAssetDataC_QPGSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v58 = &v45 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15FetchDescriptorVy9MomentsUI07DBAssetB0CGMd);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v45 - v12;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v59 = (&v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(*v2 + 440))(v16);
  v60 = v2;
  if (v19)
  {
    (*(*v2 + 392))(&v64, v18);
  }

  else
  {
    DBSuggestion.SuggestionType.init(rawValue:)(v18);
  }

  if (v64 != 8)
  {
    v57 = v15;
    if (a2)
    {
      v62 = v7;
      v63 = a2;
      v49 = v5;
      v55 = v14;
      v22 = v13;
    }

    else
    {
      type metadata accessor for DBSuggestion();
      lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
      result = PersistentModel.modelContext.getter();
      if (!result)
      {
        return result;
      }

      v62 = v7;
      v49 = v5;
      v55 = v14;
      v22 = v13;
      dispatch thunk of ModelContext.container.getter();

      type metadata accessor for ModelContext();
      swift_allocObject();
      v63 = ModelContext.init(_:)();
    }

    v23 = *(*v60 + 296);

    v23(v24);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI11DBAssetDataC_QPGMd);
    v26 = *(v25 - 8);
    v27 = v58;
    v56 = *(v26 + 56);
    v28 = v26 + 56;
    v56(v58, 1, 1, v25);
    v29 = type metadata accessor for DBAssetData();
    v30 = lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
    v31 = v22;
    FetchDescriptor.init(predicate:sortBy:)();
    v32 = FetchDescriptor.includePendingChanges.setter();
    v54 = v29;
    if (a1)
    {
      v61 = &v45;
      MEMORY[0x28223BE20](v32);
      *(&v45 - 2) = v59;
      v64 = v29;
      Predicate.init(_:)();
      v56(v27, 0, 1, v25);
      FetchDescriptor.predicate.setter();
      v33 = dispatch thunk of ModelContext.fetchIdentifiers<A>(_:)();
      v35 = v33;
      v50 = v30;
      v51 = v28;
      v52 = v25;
      v46 = v22;
      v47 = v11;
      v48 = v10;
      v31 = *(v33 + 16);
      if (v31)
      {
        v34 = 0;
        v36 = v49;
        v10 = (v49 + 16);
        v11 = (v49 + 8);
        v37 = v53;
        while (v34 < v35[2])
        {
          v28 = v62;
          v38 = v36[2](v62, v35 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + v36[9] * v34, v37);
          v39 = MEMORY[0x21CE93DB0](v38);
          closure #1 in closure #2 in DBSuggestion.refreshLoadedAssets(deep:context:)(v28, v63);
          ++v34;
          objc_autoreleasePoolPop(v39);
          (*v11)(v28, v37);
          if (v31 == v34)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
        goto LABEL_28;
      }

LABEL_19:

      v11 = v47;
      v10 = v48;
      v34 = v57;
      v31 = v46;
    }

    else
    {
      v50 = v30;
      v51 = v28;
      v52 = v25;
      v34 = v57;
    }

    MEMORY[0x28223BE20](v32);
    v40 = v58;
    v36 = v59;
    *(&v45 - 2) = v59;
    v64 = v54;
    Predicate.init(_:)();
    v56(v40, 0, 1, v52);
    FetchDescriptor.predicate.setter();
    v41 = dispatch thunk of ModelContext.fetchCount<A>(_:)();
    v35 = v60;
    v28 = v41;
    v42 = (*(*v60 + 1160))();
    if (!v42)
    {
      v43 = 0;
      v44 = v55;
      goto LABEL_25;
    }

    if (!(v42 >> 62))
    {
      v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_23:
      v44 = v55;

LABEL_25:
      (*(*v35 + 1216))(v28 >= v43);

      v11[1](v31, v10);
      return (*(v34 + 8))(v36, v44);
    }

LABEL_28:
    v43 = __CocoaSet.count.getter();
    goto LABEL_23;
  }

  v20 = *(*v60 + 1216);

  return v20(1);
}

uint64_t closure #4 in DBSuggestion.refreshLoadedAssets(deep:context:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v27 = a2;
  v31 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SbGMd);
  v5 = *(v4 - 8);
  v32 = v4;
  v33 = v5;
  MEMORY[0x28223BE20](v4);
  v30 = &v26 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI11DBAssetDataCGMd);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSayAH12DBSuggestionCGSgGMd);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSayAJ12DBSuggestionCGSgGApC11ConjunctionVy_ATy_AC21SequenceContainsWhereVy_AIy_APGAC5EqualVy_AGy_AIy_AOGAA4UUIDVGAC5ValueVy_A0_GGGAYy_AGy_AMSbSgGAC10NilLiteralVy_SbGGGAYy_AGy_AmA0M0VSgGA10_y_A15_GGGSbGMd);
  v16 = *(v15 - 8);
  v28 = v15;
  v29 = v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v26 - v17;
  v19 = *a1;
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBAssetData> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI11DBAssetDataCGMd);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v8 + 8))(v10, v7);
  v34 = v27;
  v35 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO11ConjunctionVy_AEy_AC21SequenceContainsWhereVy_AC8VariableVy_Say9MomentsUI12DBSuggestionCGGAC5EqualVy_AC7KeyPathVy_AIy_ALGAA4UUIDVGAC5ValueVy_AUGGGAPy_ARy_AIy_AJ11DBAssetDataCGSbSgGAC10NilLiteralVy_SbGGGAPy_ARy_A2_AA0R0VSgGA6_y_A11_GGGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI12DBSuggestionCGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, [DBSuggestion]?> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSayAH12DBSuggestionCGSgGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.NilLiteral<Bool>>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?>, PredicateExpressions.NilLiteral<Data>>> and conformance PredicateExpressions.Conjunction<A, B>, &_s10Foundation20PredicateExpressionsO11ConjunctionVy_AEy_AC21SequenceContainsWhereVy_AC8VariableVy_Say9MomentsUI12DBSuggestionCGGAC5EqualVy_AC7KeyPathVy_AIy_ALGAA4UUIDVGAC5ValueVy_AUGGGAPy_ARy_AIy_AJ11DBAssetDataCGSbSgGAC10NilLiteralVy_SbGGGAPy_ARy_A2_AA0R0VSgGA6_y_A11_GGGMd);
  static PredicateExpressions.build_flatMap<A, B, C, D>(_:_:)();
  (*(v12 + 8))(v14, v11);
  v36 = 0;
  v20 = v30;
  static PredicateExpressions.build_Arg<A>(_:)();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO11NilCoalesceVy_AC15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSayAL12DBSuggestionCGSgGArC11ConjunctionVy_AVy_AC21SequenceContainsWhereVy_AKy_ARGAC5EqualVy_AIy_AKy_AQGAA4UUIDVGAC5ValueVy_A2_GGGA_y_AIy_AOSbSgGAC0D7LiteralVy_SbGGGA_y_AIy_AoA0O0VSgGA12_y_A17_GGGSbGA5_y_SbGGMd);
  v22 = v31;
  v31[3] = v21;
  v22[4] = lazy protocol witness table accessor for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, [DBSuggestion]?>, [DBSuggestion], PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.NilLiteral<Bool>>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?>, PredicateExpressions.NilLiteral<Data>>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>();
  __swift_allocate_boxed_opaque_existential_1(v22);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, [DBSuggestion]?>, [DBSuggestion], PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.NilLiteral<Bool>>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?>, PredicateExpressions.NilLiteral<Data>>>, Bool> and conformance PredicateExpressions.OptionalFlatMap<A, B, C, D>, &_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSayAJ12DBSuggestionCGSgGApC11ConjunctionVy_ATy_AC21SequenceContainsWhereVy_AIy_APGAC5EqualVy_AGy_AIy_AOGAA4UUIDVGAC5ValueVy_A0_GGGAYy_AGy_AMSbSgGAC10NilLiteralVy_SbGGGAYy_AGy_AmA0M0VSgGA10_y_A15_GGGSbGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Value<Bool> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_SbGMd);
  v23 = v28;
  v24 = v32;
  static PredicateExpressions.build_NilCoalesce<A, B>(lhs:rhs:)();
  (*(v33 + 8))(v20, v24);
  return (*(v29 + 8))(v18, v23);
}

uint64_t closure #1 in closure #4 in DBSuggestion.refreshLoadedAssets(deep:context:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v78 = a3;
  v79 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO10NilLiteralVy_AA4DataVGMd);
  v5 = *(v4 - 8);
  v76 = v4;
  v77 = v5;
  MEMORY[0x28223BE20](v4);
  v71 = v50 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGAA0J0VSgGMd);
  v8 = *(v7 - 8);
  v72 = v7;
  v73 = v8;
  MEMORY[0x28223BE20](v7);
  v69 = v50 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGAA0K0VSgGAC10NilLiteralVy_AOGGMd);
  v11 = *(v10 - 8);
  v74 = v10;
  v75 = v11;
  MEMORY[0x28223BE20](v10);
  v70 = v50 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO10NilLiteralVy_SbGMd);
  v14 = *(v13 - 8);
  v65 = v13;
  v66 = v14;
  MEMORY[0x28223BE20](v13);
  v60 = v50 - v15;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI11DBAssetDataCGMd);
  v80 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v17 = v50 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSbSgGMd);
  v62 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v55 = v50 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSbSgGAC10NilLiteralVy_SbGGMd);
  v20 = *(v19 - 8);
  v63 = v19;
  v64 = v20;
  MEMORY[0x28223BE20](v19);
  v57 = v50 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_Say9MomentsUI12DBSuggestionCGGMd);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = v50 - v24;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO21SequenceContainsWhereVy_AC8VariableVy_Say9MomentsUI12DBSuggestionCGGAC5EqualVy_AC7KeyPathVy_AGy_AJGAA4UUIDVGAC5ValueVy_ASGGGMd);
  v59 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v52 = v50 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO11ConjunctionVy_AC21SequenceContainsWhereVy_AC8VariableVy_Say9MomentsUI12DBSuggestionCGGAC5EqualVy_AC7KeyPathVy_AIy_ALGAA4UUIDVGAC5ValueVy_AUGGGAPy_ARy_AIy_AJ11DBAssetDataCGSbSgGAC10NilLiteralVy_SbGGGMd);
  v28 = *(v27 - 8);
  v67 = v27;
  v68 = v28;
  MEMORY[0x28223BE20](v27);
  v54 = v50 - v29;
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<[DBSuggestion]> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_Say9MomentsUI12DBSuggestionCGGMd);
  static PredicateExpressions.build_Arg<A>(_:)();
  v81 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVGAC5ValueVy_AOGGMd);
  v53 = MEMORY[0x277CC9070];
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>> and conformance PredicateExpressions.Equal<A, B>, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVGAC5ValueVy_AOGGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type [DBSuggestion] and conformance [A], &_sSay9MomentsUI12DBSuggestionCGMd);
  static PredicateExpressions.build_contains<A, B>(_:where:)();
  (*(v23 + 8))(v25, v22);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBAssetData> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI11DBAssetDataCGMd);
  v30 = v56;
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  v31 = v55;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v32 = *(v80 + 8);
  v80 += 8;
  v51 = v32;
  v32(v17, v30);
  v33 = v60;
  static PredicateExpressions.build_NilLiteral<A>()();
  v50[1] = MEMORY[0x277CC90C0];
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSbSgGMd);
  v50[0] = MEMORY[0x277CC8EC0];
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.NilLiteral<Bool> and conformance PredicateExpressions.NilLiteral<A>, &_s10Foundation20PredicateExpressionsO10NilLiteralVy_SbGMd);
  lazy protocol witness table accessor for type Bool? and conformance <A> A?();
  v34 = v57;
  v35 = v61;
  v36 = v65;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v66 + 8))(v33, v36);
  (*(v62 + 8))(v31, v35);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>> and conformance PredicateExpressions.SequenceContainsWhere<A, B>, &_s10Foundation20PredicateExpressionsO21SequenceContainsWhereVy_AC8VariableVy_Say9MomentsUI12DBSuggestionCGGAC5EqualVy_AC7KeyPathVy_AGy_AJGAA4UUIDVGAC5ValueVy_ASGGGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.NilLiteral<Bool>> and conformance PredicateExpressions.Equal<A, B>, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSbSgGAC10NilLiteralVy_SbGGMd);
  v37 = v54;
  v38 = v52;
  v39 = v34;
  v40 = v58;
  v41 = v63;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  (*(v64 + 8))(v39, v41);
  (*(v59 + 8))(v38, v40);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  v42 = v69;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v51(v17, v30);
  v43 = v71;
  static PredicateExpressions.build_NilLiteral<A>()();
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGAA0J0VSgGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.NilLiteral<Data> and conformance PredicateExpressions.NilLiteral<A>, &_s10Foundation20PredicateExpressionsO10NilLiteralVy_AA4DataVGMd);
  lazy protocol witness table accessor for type Data? and conformance <A> A?();
  v44 = v70;
  v45 = v72;
  v46 = v76;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v77 + 8))(v43, v46);
  (*(v73 + 8))(v42, v45);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Conjunction<PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.NilLiteral<Bool>>> and conformance PredicateExpressions.Conjunction<A, B>, &_s10Foundation20PredicateExpressionsO11ConjunctionVy_AC21SequenceContainsWhereVy_AC8VariableVy_Say9MomentsUI12DBSuggestionCGGAC5EqualVy_AC7KeyPathVy_AIy_ALGAA4UUIDVGAC5ValueVy_AUGGGAPy_ARy_AIy_AJ11DBAssetDataCGSbSgGAC10NilLiteralVy_SbGGGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?>, PredicateExpressions.NilLiteral<Data>> and conformance PredicateExpressions.Equal<A, B>, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGAA0K0VSgGAC10NilLiteralVy_AOGGMd);
  v47 = v67;
  v48 = v74;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  (*(v75 + 8))(v44, v48);
  return (*(v68 + 8))(v37, v47);
}

unint64_t closure #1 in closure #2 in DBSuggestion.refreshLoadedAssets(deep:context:)(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v18 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI11DBAssetDataC_QPGSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15FetchDescriptorVy9MomentsUI07DBAssetB0CGMd);
  v17 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI11DBAssetDataC_QPGMd);
  v9 = *(*(v8 - 8) + 56);
  v9(v4, 1, 1, v8);
  v10 = type metadata accessor for DBAssetData();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
  FetchDescriptor.init(predicate:sortBy:)();
  FetchDescriptor.includePendingChanges.setter();
  v21 = v18;
  v22 = v10;
  Predicate.init(_:)();
  v9(v4, 0, 1, v8);
  FetchDescriptor.predicate.setter();
  v11 = v20;
  result = dispatch thunk of ModelContext.fetch<A>(_:)();
  if (v11)
  {

LABEL_11:
    dispatch thunk of ModelContext.save()();
    return (*(v17 + 8))(v7, v5);
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    goto LABEL_11;
  }

  v15 = result;
  v16 = __CocoaSet.count.getter();
  result = v15;
  if (!v16)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x21CE93180](0);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(result + 32);

LABEL_8:

    (*(*v13 + 416))(v14);

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t closure #5 in DBSuggestion.refreshLoadedAssets(deep:context:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v27 = a2;
  v31 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SbGMd);
  v5 = *(v4 - 8);
  v32 = v4;
  v33 = v5;
  MEMORY[0x28223BE20](v4);
  v30 = &v26 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI11DBAssetDataCGMd);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSayAH12DBSuggestionCGSgGMd);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSayAJ12DBSuggestionCGSgGApC11ConditionalVy_AC21SequenceContainsWhereVy_AIy_APGAC5EqualVy_AGy_AIy_AOGAA4UUIDVGAC5ValueVy_A0_GGGAC11DisjunctionVy_AC03NotS0Vy_AGy_AmA0M0VSgGAC10NilLiteralVy_A12_GGAC0X8CoalesceVy_AGy_AMSbSgGA3_y_SbGGGA23_GSbGMd);
  v16 = *(v15 - 8);
  v28 = v15;
  v29 = v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v26 - v17;
  v19 = *a1;
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBAssetData> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI11DBAssetDataCGMd);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v8 + 8))(v10, v7);
  v34 = v27;
  v35 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO11ConditionalVy_AC21SequenceContainsWhereVy_AC8VariableVy_Say9MomentsUI12DBSuggestionCGGAC5EqualVy_AC7KeyPathVy_AIy_ALGAA4UUIDVGAC5ValueVy_AUGGGAC11DisjunctionVy_AC03NotL0Vy_ARy_AIy_AJ11DBAssetDataCGAA0T0VSgGAC10NilLiteralVy_A8_GGAC0U8CoalesceVy_ARy_A6_SbSgGAXy_SbGGGA19_GMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI12DBSuggestionCGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, [DBSuggestion]?> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSayAH12DBSuggestionCGSgGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Conditional<PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>>, PredicateExpressions.Disjunction<PredicateExpressions.NotEqual<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?>, PredicateExpressions.NilLiteral<Data>>, PredicateExpressions.NilCoalesce<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.Value<Bool>>>, PredicateExpressions.Value<Bool>> and conformance PredicateExpressions.Conditional<A, B, C>, &_s10Foundation20PredicateExpressionsO11ConditionalVy_AC21SequenceContainsWhereVy_AC8VariableVy_Say9MomentsUI12DBSuggestionCGGAC5EqualVy_AC7KeyPathVy_AIy_ALGAA4UUIDVGAC5ValueVy_AUGGGAC11DisjunctionVy_AC03NotL0Vy_ARy_AIy_AJ11DBAssetDataCGAA0T0VSgGAC10NilLiteralVy_A8_GGAC0U8CoalesceVy_ARy_A6_SbSgGAXy_SbGGGA19_GMd);
  static PredicateExpressions.build_flatMap<A, B, C, D>(_:_:)();
  (*(v12 + 8))(v14, v11);
  v36 = 0;
  v20 = v30;
  static PredicateExpressions.build_Arg<A>(_:)();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO11NilCoalesceVy_AC15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSayAL12DBSuggestionCGSgGArC11ConditionalVy_AC21SequenceContainsWhereVy_AKy_ARGAC5EqualVy_AIy_AKy_AQGAA4UUIDVGAC5ValueVy_A2_GGGAC11DisjunctionVy_AC03NotU0Vy_AIy_AoA0O0VSgGAC0D7LiteralVy_A14_GGAEy_AIy_AOSbSgGA5_y_SbGGGA23_GSbGA23_GMd);
  v22 = v31;
  v31[3] = v21;
  v22[4] = lazy protocol witness table accessor for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, [DBSuggestion]?>, [DBSuggestion], PredicateExpressions.Conditional<PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>>, PredicateExpressions.Disjunction<PredicateExpressions.NotEqual<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?>, PredicateExpressions.NilLiteral<Data>>, PredicateExpressions.NilCoalesce<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.Value<Bool>>>, PredicateExpressions.Value<Bool>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>();
  __swift_allocate_boxed_opaque_existential_1(v22);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, [DBSuggestion]?>, [DBSuggestion], PredicateExpressions.Conditional<PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>>, PredicateExpressions.Disjunction<PredicateExpressions.NotEqual<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?>, PredicateExpressions.NilLiteral<Data>>, PredicateExpressions.NilCoalesce<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.Value<Bool>>>, PredicateExpressions.Value<Bool>>, Bool> and conformance PredicateExpressions.OptionalFlatMap<A, B, C, D>, &_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSayAJ12DBSuggestionCGSgGApC11ConditionalVy_AC21SequenceContainsWhereVy_AIy_APGAC5EqualVy_AGy_AIy_AOGAA4UUIDVGAC5ValueVy_A0_GGGAC11DisjunctionVy_AC03NotS0Vy_AGy_AmA0M0VSgGAC10NilLiteralVy_A12_GGAC0X8CoalesceVy_AGy_AMSbSgGA3_y_SbGGGA23_GSbGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Value<Bool> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_SbGMd);
  v23 = v28;
  v24 = v32;
  static PredicateExpressions.build_NilCoalesce<A, B>(lhs:rhs:)();
  (*(v33 + 8))(v20, v24);
  return (*(v29 + 8))(v18, v23);
}

uint64_t closure #1 in closure #5 in DBSuggestion.refreshLoadedAssets(deep:context:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v57 = a2;
  v73 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SbGMd);
  v5 = *(v4 - 8);
  v71 = v4;
  v72 = v5;
  MEMORY[0x28223BE20](v4);
  v66 = v47 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSbSgGMd);
  v8 = *(v7 - 8);
  v67 = v7;
  v68 = v8;
  MEMORY[0x28223BE20](v7);
  v62 = v47 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO11NilCoalesceVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSbSgGAC5ValueVy_SbGGMd);
  v11 = *(v10 - 8);
  v69 = v10;
  v70 = v11;
  MEMORY[0x28223BE20](v10);
  v64 = v47 - v12;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO10NilLiteralVy_AA4DataVGMd);
  v55 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v50 = v47 - v13;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI11DBAssetDataCGMd);
  v75 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v15 = v47 - v14;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGAA0J0VSgGMd);
  v53 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v48 = v47 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8NotEqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGAA0L0VSgGAC10NilLiteralVy_AOGGMd);
  v18 = *(v17 - 8);
  v60 = v17;
  v61 = v18;
  MEMORY[0x28223BE20](v17);
  v74 = v47 - v19;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO11DisjunctionVy_AC8NotEqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGAA0M0VSgGAC10NilLiteralVy_AQGGAC0N8CoalesceVy_AIy_AOSbSgGAC5ValueVy_SbGGGMd);
  v65 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v56 = v47 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_Say9MomentsUI12DBSuggestionCGGMd);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = v47 - v23;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO21SequenceContainsWhereVy_AC8VariableVy_Say9MomentsUI12DBSuggestionCGGAC5EqualVy_AC7KeyPathVy_AGy_AJGAA4UUIDVGAC5ValueVy_ASGGGMd);
  v59 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v52 = v47 - v25;
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<[DBSuggestion]> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_Say9MomentsUI12DBSuggestionCGGMd);
  static PredicateExpressions.build_Arg<A>(_:)();
  v76 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVGAC5ValueVy_AOGGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>> and conformance PredicateExpressions.Equal<A, B>, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVGAC5ValueVy_AOGGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type [DBSuggestion] and conformance [A], &_sSay9MomentsUI12DBSuggestionCGMd);
  static PredicateExpressions.build_contains<A, B>(_:where:)();
  (*(v22 + 8))(v24, v21);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBAssetData> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI11DBAssetDataCGMd);
  v26 = v15;
  v27 = v49;
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  v28 = v48;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v29 = *(v75 + 8);
  v75 += 8;
  v47[0] = v29;
  v29(v15, v27);
  v30 = v50;
  static PredicateExpressions.build_NilLiteral<A>()();
  v47[1] = MEMORY[0x277CC90C0];
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGAA0J0VSgGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.NilLiteral<Data> and conformance PredicateExpressions.NilLiteral<A>, &_s10Foundation20PredicateExpressionsO10NilLiteralVy_AA4DataVGMd);
  lazy protocol witness table accessor for type Data? and conformance <A> A?();
  v31 = v51;
  v32 = v54;
  static PredicateExpressions.build_NotEqual<A, B>(lhs:rhs:)();
  (*(v55 + 8))(v30, v32);
  (*(v53 + 8))(v28, v31);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  v33 = v62;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (v47[0])(v26, v27);
  v77 = 0;
  v34 = v66;
  static PredicateExpressions.build_Arg<A>(_:)();
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSbSgGMd);
  v57 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Value<Bool> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_SbGMd);
  v35 = v64;
  v36 = v67;
  v37 = v71;
  static PredicateExpressions.build_NilCoalesce<A, B>(lhs:rhs:)();
  v75 = *(v72 + 8);
  (v75)(v34, v37);
  (*(v68 + 8))(v33, v36);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.NotEqual<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?>, PredicateExpressions.NilLiteral<Data>> and conformance PredicateExpressions.NotEqual<A, B>, &_s10Foundation20PredicateExpressionsO8NotEqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGAA0L0VSgGAC10NilLiteralVy_AOGGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.NilCoalesce<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.Value<Bool>> and conformance PredicateExpressions.NilCoalesce<A, B>, &_s10Foundation20PredicateExpressionsO11NilCoalesceVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSbSgGAC5ValueVy_SbGGMd);
  v38 = v56;
  v39 = v74;
  v40 = v60;
  v41 = v69;
  static PredicateExpressions.build_Disjunction<A, B>(lhs:rhs:)();
  (*(v70 + 8))(v35, v41);
  (*(v61 + 8))(v39, v40);
  v77 = 0;
  static PredicateExpressions.build_Arg<A>(_:)();
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>> and conformance PredicateExpressions.SequenceContainsWhere<A, B>, &_s10Foundation20PredicateExpressionsO21SequenceContainsWhereVy_AC8VariableVy_Say9MomentsUI12DBSuggestionCGGAC5EqualVy_AC7KeyPathVy_AGy_AJGAA4UUIDVGAC5ValueVy_ASGGGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Disjunction<PredicateExpressions.NotEqual<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?>, PredicateExpressions.NilLiteral<Data>>, PredicateExpressions.NilCoalesce<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.Value<Bool>>> and conformance PredicateExpressions.Disjunction<A, B>, &_s10Foundation20PredicateExpressionsO11DisjunctionVy_AC8NotEqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGAA0M0VSgGAC10NilLiteralVy_AQGGAC0N8CoalesceVy_AIy_AOSbSgGAC5ValueVy_SbGGGMd);
  v42 = v52;
  v43 = v38;
  v44 = v58;
  v45 = v63;
  static PredicateExpressions.build_Conditional<A, B, C>(_:_:_:)();
  (v75)(v34, v37);
  (*(v65 + 8))(v43, v45);
  return (*(v59 + 8))(v42, v44);
}

uint64_t closure #1 in closure #1 in closure #4 in DBSuggestion.refreshLoadedAssets(deep:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16[0] = a1;
  v16[1] = a2;
  v18 = a3;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_AA4UUIDVGMd);
  v3 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v5 = v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVGMd);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v16 - v12;
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBSuggestion> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v7 + 8))(v9, v6);
  type metadata accessor for UUID();
  static PredicateExpressions.build_Arg<A>(_:)();
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Value<UUID> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_AA4UUIDVGMd);
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  v14 = v17;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v3 + 8))(v5, v14);
  return (*(v11 + 8))(v13, v10);
}

uint64_t DBSuggestion._assetData.getter(uint64_t a1, void (*a2)(void), void (*a3)(void))
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  a2(0);
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  a3();
  PersistentModel.getValue<A, B>(forKey:)();

  return v3;
}

uint64_t closure #1 in DBSuggestion._assetData.setter(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(void))
{
  swift_getKeyPath();
  a4(0);
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  a5();
  PersistentModel.setValue<A, B>(forKey:to:)();
}

void (*DBSuggestion._snapshots.modify(void *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9MomentsUI12DBSuggestion___observationRegistrar;
  v3[2] = v1;
  v3[3] = v5;
  v3[1] = v1;
  v6 = v3 + 1;
  swift_getKeyPath();
  v4[4] = lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  type metadata accessor for DBSnapshot();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  lazy protocol witness table accessor for type [DBSnapshot]? and conformance <A> A?();
  PersistentModel.getValue<A, B>(forKey:)();

  *v4 = *v6;
  return DBSuggestion._snapshots.modify;
}

unint64_t DBSuggestion._assetDict.getter()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    swift_weakInit();
    v1 = specialized closure #1 in DBSuggestion._assetDict.getter();
    swift_weakDestroy();
    *(v0 + 40) = v1;
  }

  return v1;
}

uint64_t closure #2 in closure #1 in DBSuggestion._assetDict.getter@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v23 = a1;
  v26 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SbGMd);
  v3 = *(v2 - 8);
  v27 = v2;
  v28 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI11DBAssetDataCGMd);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSayAH12DBSuggestionCGSgGMd);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSayAJ12DBSuggestionCGSgGApC21SequenceContainsWhereVy_AIy_APGAC5EqualVy_AGy_AIy_AOGAA4UUIDVGAC5ValueVy_AZGGGSbGMd);
  v15 = *(v14 - 8);
  v24 = v14;
  v25 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v23 - v16;
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBAssetData> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI11DBAssetDataCGMd);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v7 + 8))(v9, v6);
  v29 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO21SequenceContainsWhereVy_AC8VariableVy_Say9MomentsUI12DBSuggestionCGGAC5EqualVy_AC7KeyPathVy_AGy_AJGAA4UUIDVGAC5ValueVy_ASGGGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI12DBSuggestionCGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, [DBSuggestion]?> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSayAH12DBSuggestionCGSgGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>> and conformance PredicateExpressions.SequenceContainsWhere<A, B>, &_s10Foundation20PredicateExpressionsO21SequenceContainsWhereVy_AC8VariableVy_Say9MomentsUI12DBSuggestionCGGAC5EqualVy_AC7KeyPathVy_AGy_AJGAA4UUIDVGAC5ValueVy_ASGGGMd);
  static PredicateExpressions.build_flatMap<A, B, C, D>(_:_:)();
  (*(v11 + 8))(v13, v10);
  v30 = 0;
  static PredicateExpressions.build_Arg<A>(_:)();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO11NilCoalesceVy_AC15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSayAL12DBSuggestionCGSgGArC21SequenceContainsWhereVy_AKy_ARGAC5EqualVy_AIy_AKy_AQGAA4UUIDVGAC5ValueVy_A0_GGGSbGA3_y_SbGGMd);
  v19 = v26;
  v26[3] = v18;
  v19[4] = lazy protocol witness table accessor for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, [DBSuggestion]?>, [DBSuggestion], PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>();
  __swift_allocate_boxed_opaque_existential_1(v19);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, [DBSuggestion]?>, [DBSuggestion], PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>>, Bool> and conformance PredicateExpressions.OptionalFlatMap<A, B, C, D>, &_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSayAJ12DBSuggestionCGSgGApC21SequenceContainsWhereVy_AIy_APGAC5EqualVy_AGy_AIy_AOGAA4UUIDVGAC5ValueVy_AZGGGSbGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Value<Bool> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_SbGMd);
  v20 = v24;
  v21 = v27;
  static PredicateExpressions.build_NilCoalesce<A, B>(lhs:rhs:)();
  (*(v28 + 8))(v5, v21);
  return (*(v25 + 8))(v17, v20);
}

uint64_t closure #1 in closure #2 in closure #1 in DBSuggestion._assetDict.getter(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_Say9MomentsUI12DBSuggestionCGGMd);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<[DBSuggestion]> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_Say9MomentsUI12DBSuggestionCGGMd);
  static PredicateExpressions.build_Arg<A>(_:)();
  v9 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVGAC5ValueVy_AOGGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>> and conformance PredicateExpressions.Equal<A, B>, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVGAC5ValueVy_AOGGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type [DBSuggestion] and conformance [A], &_sSay9MomentsUI12DBSuggestionCGMd);
  static PredicateExpressions.build_contains<A, B>(_:where:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t closure #2 in closure #1 in closure #2 in DBSuggestion.refreshLoadedAssets(deep:context:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v17[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_9SwiftData20PersistentIdentifierVGMd);
  v4 = *(v3 - 8);
  v18 = v3;
  v19 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI11DBAssetDataCGMd);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v17 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCG05SwiftJ020PersistentIdentifierVGMd);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v17 - v13;
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBAssetData> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI11DBAssetDataCGMd);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v8 + 8))(v10, v7);
  type metadata accessor for PersistentIdentifier();
  static PredicateExpressions.build_Arg<A>(_:)();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCG05SwiftK020PersistentIdentifierVGAC5ValueVy_APGGMd);
  a2[4] = lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, PersistentIdentifier>, PredicateExpressions.Value<PersistentIdentifier>> and conformance <> PredicateExpressions.Equal<A, B>();
  __swift_allocate_boxed_opaque_existential_1(a2);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, PersistentIdentifier> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCG05SwiftJ020PersistentIdentifierVGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Value<PersistentIdentifier> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_9SwiftData20PersistentIdentifierVGMd);
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type PersistentIdentifier and conformance PersistentIdentifier, MEMORY[0x277CDD538]);
  v15 = v18;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v19 + 8))(v6, v15);
  return (*(v12 + 8))(v14, v11);
}

uint64_t DBSuggestion.__allocating_init(id:suggestionID:type:title:subtitle:prompt:startDate:endDate:rankingScore:baseScore:goodnessScore:visibilityCategory:ordinalRankInRecommendedTab:assets:assetData:subType:blobFolderURL:modelContext:isSensitive:)(uint64_t a1, char *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void, void, void, void), void (*a8)(void, void, void), double a9, double a10, double a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned __int8 *a15, uint64_t a16, unsigned __int8 a17, unint64_t a18, uint64_t a19, char *a20, unsigned int (**a21)(uint64_t, uint64_t, uint64_t), uint64_t a22, unsigned __int8 a23)
{
  v24 = v23;
  v67 = a8;
  v63 = a6;
  v64 = a7;
  v61 = a4;
  v62 = a5;
  v80 = a2;
  v81 = a1;
  v72 = a22;
  v75 = a19;
  v74 = a18;
  v71 = a17;
  v70 = a16;
  v69 = a23;
  v79 = a13;
  v65 = a12;
  v73 = a21;
  v76 = a14;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v29 - 8);
  v66 = v56 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v31 - 8);
  v58 = v56 - v32;
  v84 = type metadata accessor for UUID();
  v57 = *(v84 - 8);
  v33 = v57;
  MEMORY[0x28223BE20](v84);
  v35 = v56 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = swift_allocObject();
  v59 = *a3;
  v68 = *a15;
  v60 = *a20;
  *(v36 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy9MomentsUI12DBSuggestionC_AGQo_Md);
  v82 = type metadata accessor for DBSuggestion;
  v37 = lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  v125 = v24;
  v126 = v24;
  v127 = v37;
  v128 = v37;
  *(v36 + 80) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v36 + 48));
  v56[0] = v37;
  v56[1] = v24;
  static PersistentModel.createBackingData<A>()();
  UUID.init()();
  __swift_project_boxed_opaque_existential_1((v36 + 48), *(v36 + 72));
  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  v38 = v84;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v77 = *(v33 + 8);
  v78 = v33 + 8;
  v77(v35, v38);
  *(v36 + 16) = 0x101010101010101;
  *(v36 + 24) = 0x101010101010101;
  __swift_project_boxed_opaque_existential_1((v36 + 48), *(v36 + 72));
  swift_getKeyPath();
  v39 = MEMORY[0x277D84F90];
  v125 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI7DBAssetCGSgMd);
  lazy protocol witness table accessor for type [DBAsset]? and conformance <A> A?();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v36 + 32) = 0;
  __swift_project_boxed_opaque_existential_1((v36 + 48), *(v36 + 72));
  swift_getKeyPath();
  v125 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI11DBAssetDataCGSgMd);
  type metadata accessor for DBAssetData();
  lazy protocol witness table accessor for type [DBAssetData]? and conformance <A> A?();
  dispatch thunk of BackingData.setValue<A, B>(forKey:to:)();

  *(v36 + 33) = 256;
  __swift_project_boxed_opaque_existential_1((v36 + 48), *(v36 + 72));
  swift_getKeyPath();
  v125 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI10DBSnapshotCGSgMd);
  type metadata accessor for DBSnapshot();
  lazy protocol witness table accessor for type [DBSnapshot]? and conformance <A> A?();
  dispatch thunk of BackingData.setValue<A, B>(forKey:to:)();

  *(v36 + 35) = 0;
  *(v36 + 40) = 0;
  v83 = OBJC_IVAR____TtC9MomentsUI12DBSuggestion___observationRegistrar;
  ObservationRegistrar.init()();
  v40 = v57;
  v41 = *(v57 + 16);
  v42 = v84;
  v41(v35, v81, v84);
  v125 = v36;
  swift_getKeyPath();
  v123 = v36;
  v124 = v35;
  v82 = lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, v82);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v77(v35, v42);
  v43 = v58;
  v41(v58, v80, v42);
  (*(v40 + 56))(v43, 0, 1, v42);
  v125 = v36;
  swift_getKeyPath();
  v121 = v36;
  v122 = v43;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  outlined destroy of UTType?(v43, &_s10Foundation4UUIDVSgMd);
  v44 = v59 - 1;
  v125 = v36;
  swift_getKeyPath();
  v118 = v36;
  v119 = v44;
  v120 = 0;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v45 = qword_21659CD30[v60];
  v125 = v36;
  swift_getKeyPath();
  v115 = v36;
  v116 = v45;
  v117 = 0;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v125 = v36;
  swift_getKeyPath();
  v112 = v36;
  v113 = v61;
  v114 = v62;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v125 = v36;
  swift_getKeyPath();
  v109 = v36;
  v110 = v63;
  v111 = v64;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v125 = v36;
  swift_getKeyPath();
  v106 = v36;
  v107 = v67;
  v108 = v65;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v46 = type metadata accessor for Date();
  v47 = *(v46 - 8);
  v67 = *(v47 + 16);
  v48 = v66;
  v67(v66, v79, v46);
  v65 = v47;
  v64 = *(v47 + 56);
  v64(v48, 0, 1, v46);
  v125 = v36;
  swift_getKeyPath();
  v104 = v36;
  v105 = v48;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  outlined destroy of UTType?(v48, &_s10Foundation4DateVSgMd);
  v67(v48, v76, v46);
  v67 = v46;
  v64(v48, 0, 1, v46);
  v125 = v36;
  swift_getKeyPath();
  v102 = v36;
  v103 = v48;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  outlined destroy of UTType?(v48, &_s10Foundation4DateVSgMd);
  v125 = v36;
  swift_getKeyPath();
  v99 = v36;
  v100 = a9;
  v101 = 0;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v125 = v36;
  swift_getKeyPath();
  v96 = v36;
  v97 = a10;
  v98 = 0;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v125 = v36;
  swift_getKeyPath();
  v93 = v36;
  v94 = a11;
  v95 = 0;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v125 = v36;
  swift_getKeyPath();
  v90 = v36;
  v91 = v68;
  v92 = 0;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v125 = v36;
  swift_getKeyPath();
  v88 = v36;
  v89 = v69;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v125 = v36;
  swift_getKeyPath();
  v85 = v36;
  v86 = v70;
  v87 = v71 & 1;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  v49 = v72;

  if (v49)
  {

    dispatch thunk of ModelContext.insert<A>(_:)();
  }

  v50 = v73;
  DBSuggestion.updateAssetDataReferences(assetData:assets:blobFolderURL:modelContext:)(v75, v74, v73, v49);

  outlined destroy of UTType?(v50, &_s10Foundation3URLVSgMd);
  v51 = *(v65 + 8);
  v52 = v67;
  v51(v76, v67);
  v51(v79, v52);
  v53 = v84;
  v54 = v77;
  v77(v80, v84);
  v54(v81, v53);
  return v36;
}

uint64_t DBSuggestion.init(id:suggestionID:type:title:subtitle:prompt:startDate:endDate:rankingScore:baseScore:goodnessScore:visibilityCategory:ordinalRankInRecommendedTab:assets:assetData:subType:blobFolderURL:modelContext:isSensitive:)(uint64_t a1, char *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void, void, void, void), void (*a8)(void, void, void), double a9, double a10, double a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned __int8 *a15, uint64_t a16, unsigned __int8 a17, uint64_t a18, uint64_t a19, char *a20, uint64_t a21, uint64_t a22, unsigned __int8 a23)
{
  v24 = v23;
  v67 = a8;
  v63 = a6;
  v64 = a7;
  v61 = a4;
  v62 = a5;
  v80 = a2;
  v81 = a1;
  v72 = a22;
  v75 = a19;
  v74 = a18;
  v71 = a17;
  v70 = a16;
  v69 = a23;
  v79 = a13;
  v65 = a12;
  v73 = a21;
  v76 = a14;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v29 - 8);
  v66 = v56 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v31 - 8);
  v58 = v56 - v32;
  v84 = type metadata accessor for UUID();
  v57 = *(v84 - 8);
  v33 = v57;
  MEMORY[0x28223BE20](v84);
  v35 = v56 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = *a3;
  v68 = *a15;
  v60 = *a20;
  v36 = type metadata accessor for DBSuggestion();
  *(v24 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy9MomentsUI12DBSuggestionC_AGQo_Md);
  v82 = type metadata accessor for DBSuggestion;
  v37 = lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  v125 = v36;
  v126 = v36;
  v127 = v37;
  v128 = v37;
  *(v24 + 80) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v24 + 48));
  v56[0] = v37;
  v56[1] = v36;
  static PersistentModel.createBackingData<A>()();
  UUID.init()();
  __swift_project_boxed_opaque_existential_1((v24 + 48), *(v24 + 72));
  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  v38 = v84;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v77 = *(v33 + 8);
  v78 = v33 + 8;
  v77(v35, v38);
  *(v24 + 16) = 0x101010101010101;
  *(v24 + 24) = 0x101010101010101;
  __swift_project_boxed_opaque_existential_1((v24 + 48), *(v24 + 72));
  swift_getKeyPath();
  v39 = MEMORY[0x277D84F90];
  v125 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI7DBAssetCGSgMd);
  lazy protocol witness table accessor for type [DBAsset]? and conformance <A> A?();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v24 + 32) = 0;
  __swift_project_boxed_opaque_existential_1((v24 + 48), *(v24 + 72));
  swift_getKeyPath();
  v125 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI11DBAssetDataCGSgMd);
  type metadata accessor for DBAssetData();
  lazy protocol witness table accessor for type [DBAssetData]? and conformance <A> A?();
  dispatch thunk of BackingData.setValue<A, B>(forKey:to:)();

  *(v24 + 33) = 256;
  __swift_project_boxed_opaque_existential_1((v24 + 48), *(v24 + 72));
  swift_getKeyPath();
  v125 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI10DBSnapshotCGSgMd);
  type metadata accessor for DBSnapshot();
  lazy protocol witness table accessor for type [DBSnapshot]? and conformance <A> A?();
  dispatch thunk of BackingData.setValue<A, B>(forKey:to:)();

  *(v24 + 35) = 0;
  *(v24 + 40) = 0;
  v83 = OBJC_IVAR____TtC9MomentsUI12DBSuggestion___observationRegistrar;
  ObservationRegistrar.init()();
  v40 = v57;
  v41 = *(v57 + 16);
  v42 = v84;
  v41(v35, v81, v84);
  v125 = v24;
  swift_getKeyPath();
  v123 = v24;
  v124 = v35;
  v82 = lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, v82);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v77(v35, v42);
  v43 = v58;
  v41(v58, v80, v42);
  (*(v40 + 56))(v43, 0, 1, v42);
  v125 = v24;
  swift_getKeyPath();
  v121 = v24;
  v122 = v43;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  outlined destroy of UTType?(v43, &_s10Foundation4UUIDVSgMd);
  v44 = v59 - 1;
  v125 = v24;
  swift_getKeyPath();
  v118 = v24;
  v119 = v44;
  v120 = 0;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v45 = qword_21659CD30[v60];
  v125 = v24;
  swift_getKeyPath();
  v115 = v24;
  v116 = v45;
  v117 = 0;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v125 = v24;
  swift_getKeyPath();
  v112 = v24;
  v113 = v61;
  v114 = v62;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v125 = v24;
  swift_getKeyPath();
  v109 = v24;
  v110 = v63;
  v111 = v64;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v125 = v24;
  swift_getKeyPath();
  v106 = v24;
  v107 = v67;
  v108 = v65;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v46 = type metadata accessor for Date();
  v47 = *(v46 - 8);
  v67 = *(v47 + 16);
  v48 = v66;
  v67(v66, v79, v46);
  v65 = v47;
  v64 = *(v47 + 56);
  v64(v48, 0, 1, v46);
  v125 = v24;
  swift_getKeyPath();
  v104 = v24;
  v105 = v48;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  outlined destroy of UTType?(v48, &_s10Foundation4DateVSgMd);
  v67(v48, v76, v46);
  v67 = v46;
  v64(v48, 0, 1, v46);
  v125 = v24;
  swift_getKeyPath();
  v102 = v24;
  v103 = v48;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  outlined destroy of UTType?(v48, &_s10Foundation4DateVSgMd);
  v125 = v24;
  swift_getKeyPath();
  v99 = v24;
  v100 = a9;
  v101 = 0;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v125 = v24;
  swift_getKeyPath();
  v96 = v24;
  v97 = a10;
  v98 = 0;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v125 = v24;
  swift_getKeyPath();
  v93 = v24;
  v94 = a11;
  v95 = 0;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v125 = v24;
  swift_getKeyPath();
  v90 = v24;
  v91 = v68;
  v92 = 0;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v125 = v24;
  swift_getKeyPath();
  v88 = v24;
  v89 = v69;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v125 = v24;
  swift_getKeyPath();
  v85 = v24;
  v86 = v70;
  v87 = v71 & 1;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  v49 = v72;

  if (v49)
  {

    dispatch thunk of ModelContext.insert<A>(_:)();
  }

  v50 = v73;
  (*(*v24 + 1328))(v75, v74, v73, v49);

  outlined destroy of UTType?(v50, &_s10Foundation3URLVSgMd);
  v51 = *(v65 + 8);
  v52 = v67;
  v51(v76, v67);
  v51(v79, v52);
  v53 = v84;
  v54 = v77;
  v77(v80, v84);
  v54(v81, v53);
  return v24;
}

uint64_t DBSuggestion.copyWith(blobFolder:assets:modelContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v93 = a3;
  v94 = a2;
  v92 = a1;
  v5 = **&v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v76 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v91 = v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v89 = v76 - v12;
  v90 = type metadata accessor for Date();
  v95 = *(v90 - 8);
  v13 = MEMORY[0x28223BE20](v90);
  v97 = v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v96 = v76 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v76 - v17;
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = v76 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = v76 - v28;
  (*(v5 + 344))(v27);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    outlined destroy of UTType?(v18, &_s10Foundation4UUIDVSgMd);
    return 0;
  }

  else
  {
    (*(v20 + 32))(v29, v18, v19);
    UUID.init()();
    v31 = *(v20 + 16);
    v86 = v19;
    v32 = v31(v23, v29, v19);
    v33 = (*(**&v3 + 440))(v32);
    v87 = v8;
    v88 = v5;
    v85 = v20;
    v84 = v23;
    v83 = v29;
    v82 = v26;
    if (v34)
    {
      (*(**&v3 + 392))(&v99, v33);
    }

    else
    {
      DBSuggestion.SuggestionType.init(rawValue:)(v33);
    }

    v35 = LOBYTE(v99);
    if (LOBYTE(v99) == 13)
    {
      v35 = 0;
    }

    v101[0] = v35;
    v36 = OBJC_IVAR____TtC9MomentsUI12DBSuggestion___observationRegistrar;
    v99 = v3;
    swift_getKeyPath();
    lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
    lazy protocol witness table accessor for type String? and conformance <A> A?();
    PersistentModel.getValue<A>(forKey:)();

    v37 = v99;
    if (!v100)
    {
      v37 = 0.0;
    }

    v81 = v37;
    if (v100)
    {
      v38 = v100;
    }

    else
    {
      v38 = 0xE000000000000000;
    }

    v80 = v38;
    v99 = v3;
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    PersistentModel.getValue<A>(forKey:)();

    v39 = v99;
    if (!v100)
    {
      v39 = 0.0;
    }

    v79 = v39;
    if (v100)
    {
      v40 = v100;
    }

    else
    {
      v40 = 0xE000000000000000;
    }

    v78 = v40;
    v99 = v3;
    swift_getKeyPath();
    v76[1] = v36;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    PersistentModel.getValue<A>(forKey:)();

    v42 = v99;
    if (!v100)
    {
      v42 = 0.0;
    }

    v77 = v42;
    if (v100)
    {
      v43 = v100;
    }

    else
    {
      v43 = 0xE000000000000000;
    }

    v44 = v89;
    (*(**&v3 + 728))(v41);
    v45 = v95;
    v46 = *(v95 + 48);
    v47 = v90;
    v48 = v46(v44, 1, v90);
    v49 = v91;
    if (v48 == 1)
    {
      static Date.distantPast.getter();
      v50 = v46(v44, 1, v47);
      if (v50 != 1)
      {
        v50 = outlined destroy of UTType?(v44, &_s10Foundation4DateVSgMd);
      }
    }

    else
    {
      v50 = (*(v45 + 32))(v96, v44, v47);
    }

    (*(**&v4 + 776))(v50);
    v51 = v46(v49, 1, v47);
    v52 = v87;
    if (v51 == 1)
    {
      static Date.distantFuture.getter();
      v53 = v46(v49, 1, v47);
      if (v53 != 1)
      {
        v53 = outlined destroy of UTType?(v49, &_s10Foundation4DateVSgMd);
      }
    }

    else
    {
      v53 = (*(v95 + 32))(v97, v49, v47);
    }

    v54 = COERCE_DOUBLE((*(**&v4 + 872))(v53));
    v56 = -1.0;
    if (v55)
    {
      v57 = -1.0;
    }

    else
    {
      v57 = v54;
    }

    v99 = v4;
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    lazy protocol witness table accessor for type Double? and conformance <A> A?();
    PersistentModel.getValue<A>(forKey:)();

    if (v100)
    {
      v59 = -1.0;
    }

    else
    {
      v59 = v99;
    }

    v60 = COERCE_DOUBLE((*(**&v4 + 968))(v58));
    if ((v61 & 1) == 0)
    {
      v56 = v60;
    }

    v62 = DBSuggestion.visibilityCategory.getter(&v99);
    v63 = (*(**&v4 + 1064))(v62);
    if (v64)
    {
      v65 = -1;
    }

    else
    {
      v65 = v63;
    }

    v66 = (*(**&v4 + 488))();
    if (v67)
    {
      v68 = 0;
    }

    else
    {
      DBSuggestion.SuggestionSubType.init(rawValue:)(v66);
      v68 = v98;
      if (v98 == 65)
      {
        v68 = 0;
      }
    }

    v98 = v68;
    v69 = type metadata accessor for URL();
    v70 = *(v69 - 8);
    (*(v70 + 16))(v52, v92, v69);
    v71 = (*(v70 + 56))(v52, 0, 1, v69);
    LOBYTE(v69) = (*(**&v4 + 1016))(v71) & 1;
    v72 = *(v88 + 1312);
    v73 = v93;

    v75 = v72(v82, v84, v101, *&v81, v80, *&v79, v78, *&v77, v57, v59, v56, v43, v96, v97, &v99, v65, 0, v74, 0, &v98, v52, v73, v69);
    (*(v85 + 8))(v83, v86);
    return v75;
  }
}

uint64_t DBSuggestion.title.getter()
{
  return DBSuggestion.title.getter();
}

{
  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  lazy protocol witness table accessor for type String? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();

  if (v2)
  {
    return v0;
  }

  else
  {
    return 0;
  }
}

uint64_t DBSuggestion.endDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  (*(*v1 + 776))(v4);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (v9(v6, 1, v7) != 1)
  {
    return (*(v8 + 32))(a1, v6, v7);
  }

  static Date.distantFuture.getter();
  result = (v9)(v6, 1, v7);
  if (result != 1)
  {
    return outlined destroy of UTType?(v6, &_s10Foundation4DateVSgMd);
  }

  return result;
}

double DBSuggestion.baseScore.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  lazy protocol witness table accessor for type Double? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();

  result = v0;
  if (v2)
  {
    return -1.0;
  }

  return result;
}

double DBSuggestion.goodnessScore.getter()
{
  result = COERCE_DOUBLE((*(*v0 + 968))());
  if (v2)
  {
    return -1.0;
  }

  return result;
}

unint64_t DBSuggestion.visibilityCategory.getter@<X0>(_BYTE *a1@<X8>)
{
  result = (*(*v1 + 536))();
  if (result >= 5)
  {
    v5 = 0;
  }

  else
  {
    v5 = result;
  }

  if (v4)
  {
    v5 = 0;
  }

  *a1 = v5;
  return result;
}

uint64_t DBSuggestion.ordinalRankInRecommendedTab.getter()
{
  result = (*(*v0 + 1064))();
  if (v2)
  {
    return -1;
  }

  return result;
}

char DBSuggestion.subType.getter@<W0>(_BYTE *a1@<X8>)
{
  v3 = (*(*v1 + 488))();
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    LOBYTE(v3) = DBSuggestion.SuggestionSubType.init(rawValue:)(v3);
    v5 = v7;
    if (v7 == 65)
    {
      v5 = 0;
    }
  }

  *a1 = v5;
  return v3;
}

uint64_t DBSuggestion.updateAssetDataReferences(assetData:assets:blobFolderURL:modelContext:)(uint64_t a1, unint64_t a2, unsigned int (**a3)(uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  v216 = a4;
  *&v217 = a1;
  v218 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI11DBAssetDataC_QPGSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v191 = &v183 - v7;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15FetchDescriptorVy9MomentsUI07DBAssetB0CGMd);
  v187 = *(v196 - 8);
  MEMORY[0x28223BE20](v196);
  v197 = &v183 - v8;
  v214 = type metadata accessor for UUID();
  v195 = *(v214 - 8);
  v9 = MEMORY[0x28223BE20](v214);
  v202 = &v183 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v194 = &v183 - v12;
  MEMORY[0x28223BE20](v11);
  v193 = &v183 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v212 = &v183 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v223 = &v183 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v190 = &v183 - v20;
  MEMORY[0x28223BE20](v19);
  v189 = &v183 - v21;
  v22 = type metadata accessor for Logger();
  v185 = *(v22 - 8);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v183 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v183 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v183 - v29;
  v31 = type metadata accessor for URL();
  v205 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v33 = &v183 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = 0;
  v220 = type metadata accessor for PersistentIdentifier();
  v222 = *(v220 - 1);
  MEMORY[0x28223BE20](v220);
  v219 = &v183 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(*v4 + 1120);

  v203 = v4;
  v35(v36);
  v208 = a2;
  v37 = a2 >> 62;
  v38 = v217;
  v198 = v37;
  if (v217)
  {
    if (!v216)
    {
      v66 = v203;
      v67 = *(*v203 + 1168);

      v69 = v67(v68);
      goto LABEL_148;
    }

    v226 = MEMORY[0x277D84F90];
    v39 = v217 & 0xFFFFFFFFFFFFFF8;
    if (v217 >> 62)
    {
      v40 = __CocoaSet.count.getter();
    }

    else
    {
      v40 = *((v217 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v40)
    {
      v41 = 0;
      v224 = (v38 & 0xC000000000000001);
      v222 += 8;
      v42 = MEMORY[0x277D84F90];
      v223 = v40;
      v221 = v38 & 0xFFFFFFFFFFFFFF8;
      do
      {
        v218 = v42;
        v43 = v41;
        while (1)
        {
          if (v224)
          {
            MEMORY[0x21CE93180](v43, v38);
            v41 = v43 + 1;
            if (__OFADD__(v43, 1))
            {
              goto LABEL_202;
            }
          }

          else
          {
            if (v43 >= *(v39 + 16))
            {
              goto LABEL_203;
            }

            v41 = v43 + 1;
            if (__OFADD__(v43, 1))
            {
              goto LABEL_202;
            }
          }

          type metadata accessor for DBAssetData();
          lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
          v44 = PersistentModel.modelContext.getter();
          if (!v44)
          {
            goto LABEL_22;
          }

          v225 = v44;
          v229 = v216;
          type metadata accessor for ModelContext();
          lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type ModelContext and conformance ModelContext, MEMORY[0x277CDD490]);
          if (dispatch thunk of static Equatable.== infix(_:_:)())
          {
            break;
          }

          v45 = v38;
          v46 = v219;
          PersistentModel.persistentModelID.getter();
          dispatch thunk of ModelContext.model(for:)();

          (*v222)(v46, v220);
          if (swift_dynamicCastClass())
          {
            v38 = v45;
            v39 = v221;
            goto LABEL_21;
          }

          swift_unknownObjectRelease();
          ++v43;
          v40 = v223;
          v38 = v45;
          v39 = v221;
          if (v41 == v223)
          {
            v42 = v218;
            goto LABEL_69;
          }
        }

LABEL_21:
        v40 = v223;
LABEL_22:
        MEMORY[0x21CE92260]();
        if (*((v226 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v226 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v42 = v226;
      }

      while (v41 != v40);
    }

    else
    {
      v42 = MEMORY[0x277D84F90];
    }

LABEL_69:

    v66 = v203;
    (*(*v203 + 1168))(v42);
    goto LABEL_147;
  }

  v184 = v30;
  v192 = v33;
  v204 = v31;
  v213 = v27;
  v186 = v25;
  v188 = v22;
  if (v37)
  {
    v47 = __CocoaSet.count.getter();
  }

  else
  {
    v47 = *((v208 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v39 = v216;
  v48 = v223;
  v49 = v213;
  v50 = v218;
  v51 = MEMORY[0x277D84F90];
  if (!v47)
  {
    v53 = MEMORY[0x277D84F90];
    goto LABEL_71;
  }

  v226 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47 & ~(v47 >> 63), 0);
  v206 = v47;
  if (v47 < 0)
  {
    goto LABEL_212;
  }

  v52 = 0;
  v53 = v226;
  v207 = v208 & 0xC000000000000001;
  v200 = v208 & 0xFFFFFFFFFFFFFF8;
  v199 = v208 + 32;
  *&v217 = v222 + 8;
  do
  {
    if (__OFADD__(v52, 1))
    {
      goto LABEL_204;
    }

    v211 = v53;
    v210 = (v52 + 1);
    if (v207)
    {
      v54 = MEMORY[0x21CE93180]();
    }

    else
    {
      if (v52 >= *(v200 + 16))
      {
        goto LABEL_205;
      }
    }

    v209 = v54;
    v55 = DBAsset.dumpAssetData()();
    v56 = v55;
    v225 = v51;
    if (v55 >> 62)
    {
      v222 = v55 & 0xFFFFFFFFFFFFFF8;
      v57 = __CocoaSet.count.getter();
      if (!v57)
      {
LABEL_62:
        v215 = v51;
        goto LABEL_63;
      }
    }

    else
    {
      v222 = v55 & 0xFFFFFFFFFFFFFF8;
      v57 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v57)
      {
        goto LABEL_62;
      }
    }

    v58 = 0;
    v221 = v56 & 0xC000000000000001;
    v215 = v51;
    do
    {
      v59 = v58;
      while (1)
      {
        if (v221)
        {
          MEMORY[0x21CE93180](v59, v56);
          v60 = (v59 + 1);
          if (__OFADD__(v59, 1))
          {
            goto LABEL_197;
          }
        }

        else
        {
          if (v59 >= *(v222 + 16))
          {
            goto LABEL_198;
          }

          v60 = (v59 + 1);
          if (__OFADD__(v59, 1))
          {
            goto LABEL_197;
          }
        }

        v224 = v60;
        type metadata accessor for DBAssetData();
        lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
        v61 = PersistentModel.modelContext.getter();
        if (!v61)
        {
          v48 = v223;
          v49 = v213;
          goto LABEL_57;
        }

        if (!v39)
        {
          v48 = v223;
          v49 = v213;
LABEL_55:

          goto LABEL_57;
        }

        v228 = v39;
        v229 = v61;
        type metadata accessor for ModelContext();
        lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type ModelContext and conformance ModelContext, MEMORY[0x277CDD490]);

        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {

          v48 = v223;
          v49 = v213;
          v50 = v218;
          goto LABEL_55;
        }

        v62 = v219;
        PersistentModel.persistentModelID.getter();
        dispatch thunk of ModelContext.model(for:)();

        (*v217)(v62, v220);
        if (swift_dynamicCastClass())
        {
          break;
        }

        swift_unknownObjectRelease();
        v59 = (v59 + 1);
        v48 = v223;
        v50 = v218;
        if (v224 == v57)
        {
          v49 = v213;
          goto LABEL_63;
        }
      }

      v48 = v223;
      v49 = v213;
      v50 = v218;
LABEL_57:
      MEMORY[0x21CE92260]();
      if (*((v225 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v225 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v39 = v216;
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v58 = v224;
      v215 = v225;
    }

    while (v224 != v57);
LABEL_63:

    v53 = v211;
    v226 = v211;
    v64 = *(v211 + 16);
    v63 = *(v211 + 24);
    if (v64 >= v63 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1);
      v53 = v226;
    }

    *(v53 + 16) = v64 + 1;
    v65 = v53 + 8 * v64;
    v39 = v216;
    *(v65 + 32) = v215;
    v52 = v210;
    v51 = MEMORY[0x277D84F90];
  }

  while (v210 != v206);
LABEL_71:
  v70 = v188;
  v33 = specialized _copySequenceToContiguousArray<A>(_:)(v53);

  v71 = v50;
  v72 = v184;
  outlined init with copy of DateInterval?(v71, v184, &_s10Foundation3URLVSgMd);
  v73 = v205;
  v74 = v204;
  v75 = (*(v205 + 48))(v72, 1, v204);
  v224 = v33;
  if (v75 == 1)
  {
    outlined destroy of UTType?(v72, &_s10Foundation3URLVSgMd);
  }

  else
  {
    v76 = *(v73 + 32);
    v77 = v192;
    v76(v192, v72, v74);
    if (v33 < 0 || (v33 & 0x4000000000000000) != 0)
    {
LABEL_215:
      v79 = __CocoaSet.count.getter();
    }

    else
    {
      v79 = *(v33 + 16);
    }

    v80 = v204;
    v81 = v205;
    if (v79)
    {
      if (v79 < 1)
      {
        goto LABEL_218;
      }

      v82 = 0;
      v220 = (v185 + 16);
      v221 = v33 & 0xC000000000000001;
      v219 = v185 + 8;
      v218 = (v195 + 48);
      v210 = (v195 + 8);
      *&v78 = 136315138;
      v217 = v78;
      v222 = v79;
      do
      {
        if (v221)
        {
          v83 = MEMORY[0x21CE93180](v82, v33);
        }

        else
        {
          v83 = *(v33 + 8 * v82 + 32);
        }

        v84 = (*v83 + 504);
        v85 = *v84;
        v86 = (*v84)();
        if (v87)
        {
        }

        else
        {
          v88 = (*(*v83 + 456))(v86);
          if (v89 >> 60 == 15)
          {
            if (one-time initialization token for Log != -1)
            {
              swift_once();
            }

            v90 = __swift_project_value_buffer(v70, static DBSuggestion.Log);
            swift_beginAccess();
            (*v220)(v49, v90, v70);
            v91 = v203;

            v92 = Logger.logObject.getter();
            v93 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v92, v93))
            {
              LODWORD(v215) = v93;
              v94 = swift_slowAlloc();
              v211 = swift_slowAlloc();
              v229 = v211;
              *v94 = v217;
              v95 = v189;
              (*(*v91 + 344))();
              v96 = v214;
              if ((*v218)(v95, 1, v214) == 1)
              {
                outlined destroy of UTType?(v95, &_s10Foundation4UUIDVSgMd);
                v97 = 0xE300000000000000;
                v98 = 7104878;
              }

              else
              {
                v99 = v95;
                v98 = UUID.uuidString.getter();
                v97 = v100;
                v101 = v99;
                v49 = v213;
                (*v210)(v101, v96);
              }

              v102 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v97, &v229);

              *(v94 + 4) = v102;
              _os_log_impl(&dword_21607C000, v92, v215, "[DBSuggestion.updateAssetDataReferences] no data or url, suggestionID=%s", v94, 0xCu);
              v103 = v211;
              __swift_destroy_boxed_opaque_existential_1(v211);
              MEMORY[0x21CE94770](v103, -1, -1);
              MEMORY[0x21CE94770](v94, -1, -1);

              v70 = v188;
              (*v219)(v49, v188);
              v33 = v224;
            }

            else
            {

              (*v219)(v49, v70);
            }

            v77 = v192;
          }

          else
          {
            outlined consume of Data?(v88, v89);
          }
        }

        countAndFlagsBits = URL.path(percentEncoded:)(1)._countAndFlagsBits;
        (*(*v83 + 608))(countAndFlagsBits);

        v106 = (v85)(v105);
        if (v107)
        {

          v39 = v216;
          v48 = v223;
        }

        else
        {
          v108 = (*(*v83 + 456))(v106);
          v39 = v216;
          v48 = v223;
          if (v109 >> 60 == 15)
          {
            if (one-time initialization token for Log != -1)
            {
              swift_once();
            }

            v110 = __swift_project_value_buffer(v70, static DBSuggestion.Log);
            swift_beginAccess();
            v111 = v186;
            (*v220)(v186, v110, v70);
            v112 = v203;

            v113 = Logger.logObject.getter();
            v114 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v113, v114))
            {
              v115 = swift_slowAlloc();
              v116 = swift_slowAlloc();
              v229 = v116;
              *v115 = v217;
              v117 = v190;
              (*(*v112 + 344))();
              v118 = v214;
              if ((*v218)(v117, 1, v214) == 1)
              {
                outlined destroy of UTType?(v117, &_s10Foundation4UUIDVSgMd);
                v119 = 0xE300000000000000;
                v120 = 7104878;
              }

              else
              {
                v121 = UUID.uuidString.getter();
                v122 = v118;
                v123 = v121;
                v119 = v124;
                (*v210)(v117, v122);
                v120 = v123;
              }

              v125 = v186;
              v126 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v120, v119, &v229);

              *(v115 + 4) = v126;
              _os_log_impl(&dword_21607C000, v113, v114, "[DBSuggestion.updateAssetDataReferences] (after setBlobFolderPath) no data or url, suggestionID=%s", v115, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v116);
              MEMORY[0x21CE94770](v116, -1, -1);
              MEMORY[0x21CE94770](v115, -1, -1);

              v127 = v125;
              v70 = v188;
              (*v219)(v127, v188);
              v39 = v216;
              v33 = v224;
            }

            else
            {

              (*v219)(v111, v70);
              v39 = v216;
            }

            v49 = v213;
            v77 = v192;
          }

          else
          {
            outlined consume of Data?(v108, v109);
          }
        }

        ++v82;
        v80 = v204;
        v81 = v205;
      }

      while (v222 != v82);
    }

    (*(v81 + 8))(v77, v80);
  }

  v66 = v203;
  if (!v39)
  {
    v69 = (*(*v203 + 1168))(v33);
    goto LABEL_148;
  }

  v229 = MEMORY[0x277D84F90];
  if (v33 < 0 || (v33 & 0x4000000000000000) != 0)
  {
    goto LABEL_213;
  }

  v128 = *(v33 + 16);
LABEL_114:
  if (!v128)
  {

    v130 = MEMORY[0x277D84F90];
LABEL_146:

    v66 = v203;
    (*(*v203 + 1168))(v130);
LABEL_147:

LABEL_148:
    v148 = (*(*v66 + 1160))(v69);
    if (v148)
    {
      v39 = v148;
      v149 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_9MomentsUI11DBAssetDataCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      if (v39 >> 62)
      {
        v77 = __CocoaSet.count.getter();
      }

      else
      {
        v77 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v77)
      {
        v48 = 0;
        v70 = v39 & 0xC000000000000001;
        v150 = (v195 + 48);
        v223 = (v195 + 32);
        v224 = (v195 + 16);
        v222 = v195 + 8;
        while (1)
        {
          v151 = v48;
          while (1)
          {
            if (v70)
            {
              v152 = MEMORY[0x21CE93180](v151, v39);
              v48 = v151 + 1;
              if (__OFADD__(v151, 1))
              {
                goto LABEL_200;
              }
            }

            else
            {
              if (v151 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_201;
              }

              v152 = *(v39 + 8 * v151 + 32);

              v48 = v151 + 1;
              if (__OFADD__(v151, 1))
              {
                goto LABEL_200;
              }
            }

            (*(*v152 + 192))();
            v153 = v212;
            if ((*v150)(v212, 1, v214) != 1)
            {
              break;
            }

            outlined destroy of UTType?(v153, &_s10Foundation4UUIDVSgMd);
            ++v151;
            if (v48 == v77)
            {
              goto LABEL_174;
            }
          }

          v33 = v194;
          v154 = v153;
          v155 = v214;
          (*v223)(v194, v154, v214);
          v220 = *v224;
          (v220)(v202, v33, v155);

          LODWORD(v221) = swift_isUniquelyReferenced_nonNull_native();
          v229 = v149;
          v156 = specialized __RawDictionaryStorage.find<A>(_:)(v202);
          v158 = v149[2];
          v159 = (v157 & 1) == 0;
          v160 = __OFADD__(v158, v159);
          v161 = v158 + v159;
          if (v160)
          {
            __break(1u);
LABEL_212:
            __break(1u);
LABEL_213:
            v128 = __CocoaSet.count.getter();
            goto LABEL_114;
          }

          v162 = v157;
          if (v149[3] < v161)
          {
            break;
          }

          if (v221)
          {
            goto LABEL_168;
          }

          v166 = v156;
          specialized _NativeDictionary.copy()();
          v156 = v166;
          v149 = v229;
          if (v162)
          {
LABEL_169:
            *(v149[7] + 8 * v156) = v152;

            v164 = *v222;
            v165 = v214;
            (*v222)(v202, v214);
            v164(v194, v165);
            goto LABEL_173;
          }

LABEL_171:
          v149[(v156 >> 6) + 8] |= 1 << v156;
          v167 = v195;
          v168 = v149[6] + *(v195 + 72) * v156;
          v219 = v156;
          v221 = v149;
          v169 = v202;
          v33 = v214;
          (v220)(v168, v202, v214);
          *(*(v221 + 56) + 8 * v219) = v152;

          v170 = *(v167 + 8);
          v171 = v169;
          v149 = v221;
          v49 = v222;
          v170(v171, v33);
          v170(v194, v33);
          v172 = v149[2];
          v160 = __OFADD__(v172, 1);
          v173 = v172 + 1;
          if (v160)
          {
            __break(1u);
            goto LABEL_215;
          }

          v149[2] = v173;
LABEL_173:
          if (v48 == v77)
          {
            goto LABEL_174;
          }
        }

        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v161, v221);
        v156 = specialized __RawDictionaryStorage.find<A>(_:)(v202);
        if ((v162 & 1) != (v163 & 1))
        {
          goto LABEL_219;
        }

LABEL_168:
        v149 = v229;
        if (v162)
        {
          goto LABEL_169;
        }

        goto LABEL_171;
      }

LABEL_174:
    }

    else
    {
      v149 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_9MomentsUI11DBAssetDataCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    }

    v39 = swift_allocObject();
    *(v39 + 16) = v149;
    if (v198)
    {
      goto LABEL_206;
    }

    for (i = *((v208 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v175 = 0;
      v222 = v208 & 0xFFFFFFFFFFFFFF8;
      v223 = (v208 & 0xC000000000000001);
      v220 = i;
      v221 = v208 + 32;
      while (1)
      {
        if (v223)
        {
          v176 = MEMORY[0x21CE93180](v175, v208);
          v160 = __OFADD__(v175, 1);
          v175 = (v175 + 1);
          if (v160)
          {
            goto LABEL_195;
          }
        }

        else
        {
          if (v175 >= *(v222 + 16))
          {
            goto LABEL_199;
          }

          v160 = __OFADD__(v175, 1);
          v175 = (v175 + 1);
          if (v160)
          {
LABEL_195:
            __break(1u);
            goto LABEL_196;
          }
        }

        v224 = v176;
        v177 = *(v176 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations) ? *(v176 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations) : MEMORY[0x277D84F90];
        v178 = *(v177 + 16);

        if (v178)
        {
          break;
        }

LABEL_179:

        if (v175 == v220)
        {
        }
      }

      v179 = 0;
      while (v179 < *(v177 + 16))
      {
        v180 = *(v177 + 32 + 8 * v179++);
        switch(v180 >> 60)
        {
          case 1uLL:
          case 2uLL:
          case 3uLL:
          case 4uLL:
          case 5uLL:
          case 6uLL:
          case 7uLL:
          case 8uLL:
          case 9uLL:
          case 0xAuLL:
          case 0xBuLL:
          case 0xCuLL:
            v180 &= 0xFFFFFFFFFFFFFFFuLL;
            break;
          default:
            break;
        }

        v181 = *(*v180 + 264);

        v181(partial apply for closure #5 in DBSuggestion.updateAssetDataReferences(assetData:assets:blobFolderURL:modelContext:), v39);

        if (v178 == v179)
        {
          goto LABEL_179;
        }
      }

LABEL_196:
      __break(1u);
LABEL_197:
      __break(1u);
LABEL_198:
      __break(1u);
LABEL_199:
      __break(1u);
LABEL_200:
      __break(1u);
LABEL_201:
      __break(1u);
LABEL_202:
      __break(1u);
LABEL_203:
      __break(1u);
LABEL_204:
      __break(1u);
LABEL_205:
      __break(1u);
LABEL_206:
      ;
    }
  }

  if (v128 < 1)
  {
    goto LABEL_217;
  }

  v222 = v33 & 0xC000000000000001;
  v221 = v195 + 48;
  v218 = (v187 + 8);
  v219 = v195 + 32;
  *&v217 = v195 + 8;

  v129 = 0;
  v130 = MEMORY[0x277D84F90];
  v131 = v193;
  while (2)
  {
    if (v222)
    {
      v139 = MEMORY[0x21CE93180](v129, v33);
    }

    else
    {
      v139 = *(v33 + 8 * v129 + 32);
    }

    v140 = type metadata accessor for DBAssetData();
    lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
    v141 = PersistentModel.modelContext.getter();
    if (!v141)
    {
LABEL_129:

      MEMORY[0x21CE92260](v143);
      if (*((v229 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v229 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v130 = v229;
      v33 = v224;
LABEL_120:
      if (v128 == ++v129)
      {
        goto LABEL_146;
      }

      continue;
    }

    break;
  }

  v227 = v216;
  v228 = v141;
  type metadata accessor for ModelContext();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type ModelContext and conformance ModelContext, MEMORY[0x277CDD490]);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {

    goto LABEL_129;
  }

  (*(*v139 + 192))();
  v142 = v214;
  if ((*v221)(v48, 1, v214) == 1)
  {

    outlined destroy of UTType?(v48, &_s10Foundation4UUIDVSgMd);
    goto LABEL_129;
  }

  v132 = (*v219)(v131, v48, v142);
  v220 = &v183;
  MEMORY[0x28223BE20](v132);
  *(&v183 - 2) = v131;
  v228 = v140;
  v133 = v191;
  Predicate.init(_:)();
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI11DBAssetDataC_QPGMd);
  (*(*(v134 - 8) + 56))(v133, 0, 1, v134);
  v135 = v197;
  FetchDescriptor.init(predicate:sortBy:)();
  v136 = v196;
  FetchDescriptor.fetchLimit.setter();
  v137 = v201;
  v138 = dispatch thunk of ModelContext.fetch<A>(_:)();
  if (v137)
  {

    (*v218)(v135, v136);
    v201 = 0;
    v131 = v193;
    v48 = v223;
    v33 = v224;
    goto LABEL_119;
  }

  v201 = 0;
  v33 = v224;
  if (v138 >> 62)
  {
    v147 = v138;
    v144 = __CocoaSet.count.getter();
    v138 = v147;
  }

  else
  {
    v144 = *((v138 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v131 = v193;
  v48 = v223;
  if (!v144)
  {
    (*v218)(v197, v196);

LABEL_119:
    (*v217)(v131, v214);
    goto LABEL_120;
  }

  if ((v138 & 0xC000000000000001) != 0)
  {
    MEMORY[0x21CE93180](0);
    v145 = v196;
LABEL_138:

    MEMORY[0x21CE92260](v146);
    if (*((v229 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v229 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v145 = v196;
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    (*v218)(v197, v145);
    v130 = v229;
    goto LABEL_119;
  }

  v145 = v196;
  if (*((v138 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_138;
  }

  __break(1u);
LABEL_217:
  __break(1u);
LABEL_218:
  __break(1u);
LABEL_219:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Void __swiftcall DBSuggestion.start()()
{
  v1 = v0;
  v2 = *v0;
  type metadata accessor for DBSuggestion();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  if (PersistentModel.modelContext.getter())
  {
    v3 = dispatch thunk of ModelContext.container.getter();
  }

  else
  {
    v3 = 0;
  }

  v4 = DBSuggestion._assetDict.getter();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v2;
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = v2;
  v33 = v7;
  v8 = *(*v1 + 1112);
  v9 = swift_retain_n();
  v10 = v8(v9);
  if (v10)
  {
    v11 = v10 & 0xFFFFFFFFFFFFFF8;
    v28 = v10;
    if (v10 >> 62)
    {
      goto LABEL_47;
    }

    for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v13 = 0;
      v29 = i;
      v30 = v11;
      while (1)
      {
        if ((v28 & 0xC000000000000001) != 0)
        {
          v32 = MEMORY[0x21CE93180](v13, v28);
          v14 = __OFADD__(v13, 1);
          v15 = v13 + 1;
          if (v14)
          {
            goto LABEL_41;
          }
        }

        else
        {
          if (v13 >= *(v11 + 16))
          {
            goto LABEL_46;
          }

          v32 = *(v28 + 32 + 8 * v13);

          v14 = __OFADD__(v13, 1);
          v15 = v13 + 1;
          if (v14)
          {
LABEL_41:
            __break(1u);
            goto LABEL_42;
          }
        }

        v31 = v15;
        v34 = OBJC_IVAR____TtC9MomentsUI7DBAsset__representations;
        if (*(v32 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations))
        {
          v16 = *(v32 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations);
        }

        else
        {
          v16 = MEMORY[0x277D84F90];
        }

        v11 = *(v16 + 16);

        if (v11)
        {
          v17 = 0;
          while (v17 < *(v16 + 16))
          {
            v18 = *(v16 + 32 + 8 * v17++);
            switch(v18 >> 60)
            {
              case 1uLL:
              case 2uLL:
              case 3uLL:
              case 4uLL:
              case 5uLL:
              case 6uLL:
              case 7uLL:
              case 8uLL:
              case 9uLL:
              case 0xAuLL:
              case 0xBuLL:
              case 0xCuLL:
                v18 &= 0xFFFFFFFFFFFFFFFuLL;
                break;
              default:
                break;
            }

            v19 = *(*v18 + 264);

            v19(partial apply for closure #1 in DBSuggestion.start(), v5);

            if (v11 == v17)
            {
              goto LABEL_21;
            }
          }

          __break(1u);
          goto LABEL_44;
        }

LABEL_21:

        if (*(v32 + v34))
        {
          v20 = *(v32 + v34);
        }

        else
        {
          v20 = MEMORY[0x277D84F90];
        }

        v11 = *(v20 + 16);

        if (v11)
        {
          v21 = 0;
          while (v21 < *(v20 + 16))
          {
            v22 = *(v20 + 32 + 8 * v21++);
            switch(v22 >> 60)
            {
              case 1uLL:
              case 2uLL:
              case 3uLL:
              case 4uLL:
              case 5uLL:
              case 6uLL:
              case 7uLL:
              case 8uLL:
              case 9uLL:
              case 0xAuLL:
              case 0xBuLL:
              case 0xCuLL:
                v22 &= 0xFFFFFFFFFFFFFFFuLL;
                break;
              default:
                break;
            }

            v23 = *(*v22 + 288);

            v23(partial apply for closure #2 in DBSuggestion.start(), v6);

            if (v11 == v21)
            {
              goto LABEL_30;
            }
          }

LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

LABEL_30:

        v24 = MEMORY[0x277D84F90];
        if (*(v32 + v34))
        {
          v24 = *(v32 + v34);
        }

        v35 = v24;
        v11 = *(v24 + 16);

        if (v11)
        {
          break;
        }

LABEL_8:

        v11 = v30;
        v13 = v31;
        if (v31 == v29)
        {
          goto LABEL_48;
        }
      }

      v25 = 0;
      while (v25 < *(v35 + 16))
      {
        v26 = *(v35 + 32 + 8 * v25++);
        switch(v26 >> 60)
        {
          case 1uLL:
          case 2uLL:
          case 3uLL:
          case 4uLL:
          case 5uLL:
          case 6uLL:
          case 7uLL:
          case 8uLL:
          case 9uLL:
          case 0xAuLL:
          case 0xBuLL:
          case 0xCuLL:
            v26 &= 0xFFFFFFFFFFFFFFFuLL;
            break;
          default:
            break;
        }

        v27 = *(*v26 + 312);

        v27(partial apply for closure #3 in DBSuggestion.start(), v33);

        if (v11 == v25)
        {
          goto LABEL_8;
        }
      }

LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      ;
    }

LABEL_48:
  }

  else
  {
LABEL_42:
  }
}

uint64_t closure #1 in DBSuggestion.start()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PersistentIdentifier();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16))
  {
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v15)
    {
      (*(v11 + 16))(v13, *(a2 + 56) + *(v11 + 72) * v14, v10);
      if (a3)
      {
        type metadata accessor for ModelContext();
        swift_allocObject();
        swift_retain_n();
        ModelContext.init(_:)();
        dispatch thunk of ModelContext.model(for:)();

        (*(v11 + 8))(v13, v10);
        type metadata accessor for DBAssetData();
        result = swift_dynamicCastClass();
        if (result)
        {
          return result;
        }

        swift_unknownObjectRelease();
      }

      else
      {
        if (one-time initialization token for Log != -1)
        {
          swift_once();
        }

        v17 = __swift_project_value_buffer(v6, static DBSuggestion.Log);
        swift_beginAccess();
        (*(v7 + 16))(v9, v17, v6);
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v22 = v21;
          *v20 = 136446210;
          *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x29287472617473, 0xE700000000000000, &v22);
          _os_log_impl(&dword_21607C000, v18, v19, "DBSuggestion.%{public}s Faulting asset data failed: no model context", v20, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v21);
          MEMORY[0x21CE94770](v21, -1, -1);
          MEMORY[0x21CE94770](v20, -1, -1);
        }

        (*(v7 + 8))(v9, v6);
        (*(v11 + 8))(v13, v10);
      }
    }
  }

  return 0;
}

uint64_t closure #2 in DBSuggestion.start()(unint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI11DBAssetDataC_QPGSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v150 = &v139 - v5;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15FetchDescriptorVy9MomentsUI07DBAssetB0CGMd);
  v148 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v160 = &v139 - v6;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI11DBAssetDataC_QPGMd);
  v151 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v161 = &v139 - v7;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v142 = &v139 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v139 = &v139 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v141 = &v139 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v149 = &v139 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v139 - v18;
  v20 = type metadata accessor for Logger();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v145 = &v139 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v146 = &v139 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v143 = &v139 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v140 = &v139 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v144 = &v139 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v153 = &v139 - v33;
  MEMORY[0x28223BE20](v32);
  v35 = &v139 - v34;
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v36 = __swift_project_value_buffer(v20, static DBSuggestion.Log);
  swift_beginAccess();
  v37 = *(v21 + 16);
  v164 = v21 + 16;
  v165 = v36;
  v163 = v37;
  v37(v35, v36, v20);
  v38 = *(v9 + 16);
  v166 = a1;
  v154 = v38;
  v155 = v9 + 16;
  v38(v19, a1, v8);
  v39 = v9;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.debug.getter();
  v42 = os_log_type_enabled(v40, v41);
  v158 = v8;
  v159 = a2;
  v167 = v21;
  v157 = v9;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v169 = v44;
    *v43 = 136315138;
    lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    v46 = v8;
    v48 = v47;
    v156 = *(v39 + 8);
    v156(v19, v46);
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v48, &v169);

    *(v43 + 4) = v49;
    _os_log_impl(&dword_21607C000, v40, v41, "DBSuggestion.dataHelper() Faulting asset data for %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v44);
    v50 = v44;
    v21 = v167;
    MEMORY[0x21CE94770](v50, -1, -1);
    v51 = v43;
    a2 = v159;
    MEMORY[0x21CE94770](v51, -1, -1);
  }

  else
  {

    v156 = *(v9 + 8);
    v156(v19, v8);
  }

  v52 = *(v21 + 8);
  v52(v35, v20);
  v53 = v20;
  v54 = v166;
  if (!a2)
  {
    v68 = v145;
    v163(v145, v165, v20);
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v169 = v72;
      *v71 = 136446210;
      *(v71 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x29287472617473, 0xE700000000000000, &v169);
      _os_log_impl(&dword_21607C000, v69, v70, "DBSuggestion.%{public}s Faulting asset data failed: no model context", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v72);
      MEMORY[0x21CE94770](v72, -1, -1);
      MEMORY[0x21CE94770](v71, -1, -1);
    }

    v52(v68, v53);
    return 0;
  }

  v147 = v52;
  type metadata accessor for ModelContext();
  swift_allocObject();
  swift_retain_n();
  v55 = ModelContext.init(_:)();
  v56 = v153;
  v163(v153, v165, v53);
  v57 = v149;
  v58 = v158;
  v154(v149, v54, v158);
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v169 = v62;
    *v61 = 136315138;
    lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v63 = dispatch thunk of CustomStringConvertible.description.getter();
    v65 = v64;
    v156(v57, v58);
    v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v65, &v169);

    *(v61 + 4) = v66;
    _os_log_impl(&dword_21607C000, v59, v60, "DBSuggestion.dataHelper() Context Created Faulting asset data for %s", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v62);
    MEMORY[0x21CE94770](v62, -1, -1);
    MEMORY[0x21CE94770](v61, -1, -1);

    v67 = v153;
  }

  else
  {

    v156(v57, v58);
    v67 = v56;
  }

  v73 = v147(v67, v53);
  v74 = v152;
  v76 = v161;
  v75 = v162;
  v153 = &v139;
  MEMORY[0x28223BE20](v73);
  v77 = v166;
  *(&v139 - 2) = v166;
  v169 = type metadata accessor for DBAssetData();
  Predicate.init(_:)();
  v78 = v151;
  v79 = v76;
  v80 = v150;
  (*(v151 + 16))(v150, v79, v75);
  (*(v78 + 56))(v80, 0, 1, v75);
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
  FetchDescriptor.init(predicate:sortBy:)();
  FetchDescriptor.fetchLimit.setter();
  v150 = v55;
  v81 = dispatch thunk of ModelContext.fetch<A>(_:)();
  v82 = v144;
  v163(v144, v165, v53);
  v83 = v141;
  v84 = v158;
  v154(v141, v77, v158);
  v85 = Logger.logObject.getter();
  v86 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v85, v86))
  {
    v87 = v83;
    v83 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v168[0] = v74;
    *v83 = 136315138;
    lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v88 = dispatch thunk of CustomStringConvertible.description.getter();
    v90 = v89;
    v156(v87, v84);
    v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v90, v168);

    *(v83 + 4) = v91;
    _os_log_impl(&dword_21607C000, v85, v86, "DBSuggestion.dataHelper() Asset Fetched Faulting asset data for %s", v83, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v74);
    MEMORY[0x21CE94770](v74, -1, -1);
    MEMORY[0x21CE94770](v83, -1, -1);

    v92 = v144;
  }

  else
  {

    v156(v83, v84);
    v92 = v82;
  }

  v93 = v147;
  v147(v92, v53);
  v94 = v142;
  v149 = v53;
  if (v81 >> 62)
  {
    v95 = __CocoaSet.count.getter();
    if (!v95)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v95 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v95)
    {
      goto LABEL_22;
    }
  }

  if ((v81 & 0xC000000000000001) != 0)
  {
    v97 = MEMORY[0x21CE93180](0, v81);
    v96 = v97;
  }

  else
  {
    if (!*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_53;
    }

    v96 = *(v81 + 32);
  }

  v98 = (*(*v96 + 424))(v97);
  v100 = v99;

  if (v100 >> 60 == 15)
  {
LABEL_22:
    v101 = v143;
    v102 = v149;
    v163(v143, v165, v149);
    v103 = v158;
    v154(v94, v166, v158);

    v85 = Logger.logObject.getter();
    v104 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v85, v104))
    {

      v156(v94, v103);
      v93(v101, v102);
      (*(v148 + 8))(v160, v152);
      (*(v151 + 8))(v161, v162);
      return 0;
    }

    LODWORD(v166) = v104;
    v83 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v168[0] = v74;
    *v83 = 136446722;
    *(v83 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x29287472617473, 0xE700000000000000, v168);
    *(v83 + 12) = 2080;
    lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v105 = dispatch thunk of CustomStringConvertible.description.getter();
    v107 = v106;
    v156(v94, v103);
    v108 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v105, v107, v168);

    *(v83 + 14) = v108;
    *(v83 + 22) = 2080;
    if (!v95)
    {

      v110 = v162;
      v86 = v143;
      goto LABEL_36;
    }

    v86 = v143;
    if ((v81 & 0xC000000000000001) == 0)
    {
      v110 = v162;
      if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v111 = *(v81 + 32);

        goto LABEL_27;
      }

      __break(1u);
      goto LABEL_55;
    }

LABEL_53:
    v111 = MEMORY[0x21CE93180](0, v81);
    v110 = v162;
LABEL_27:

    v113 = (*(*v111 + 504))(v112);
    v115 = v114;

    if (v115)
    {
      v116 = v113;
LABEL_37:
      v136 = v152;
      v137 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v116, v115, v168);

      *(v83 + 24) = v137;
      _os_log_impl(&dword_21607C000, v85, v166, "DBSuggestion.%{public}s Faulting asset data failed: no data for %s, url=%s", v83, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v74, -1, -1);
      MEMORY[0x21CE94770](v83, -1, -1);

      v147(v86, v149);
      (*(v148 + 8))(v160, v136);
      (*(v151 + 8))(v161, v110);
      return 0;
    }

LABEL_36:

    v115 = 0xE300000000000000;
    v116 = 7104878;
    goto LABEL_37;
  }

  v117 = v140;
  v118 = v149;
  v163(v140, v165, v149);
  v119 = v139;
  v120 = v158;
  v154(v139, v166, v158);
  outlined copy of Data?(v98, v100);
  v166 = v100;
  outlined copy of Data._Representation(v98, v100);
  v121 = Logger.logObject.getter();
  v122 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v121, v122))
  {
    v135 = v166;
    outlined consume of Data?(v98, v166);

    outlined consume of Data?(v98, v135);

    v156(v119, v120);
    v93(v117, v118);
    (*(v148 + 8))(v160, v152);
    (*(v151 + 8))(v161, v162);
    return v98;
  }

  v123 = v93;
  v124 = swift_slowAlloc();
  v125 = swift_slowAlloc();
  v168[0] = v125;
  *v124 = 136315394;
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  v126 = dispatch thunk of CustomStringConvertible.description.getter();
  v128 = v127;
  v156(v119, v120);
  v129 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v126, v128, v168);

  *(v124 + 4) = v129;
  *(v124 + 12) = 2048;
  v130 = v166;
  v131 = v166 >> 62;
  if ((v166 >> 62) > 1)
  {
    if (v131 == 2)
    {
      v132 = *(v98 + 16);
      v138 = *(v98 + 24);
      outlined consume of Data?(v98, v166);
      v133 = v138 - v132;
      if (__OFSUB__(v138, v132))
      {
        __break(1u);
        goto LABEL_43;
      }
    }

    else
    {
      outlined consume of Data?(v98, v166);
      v133 = 0;
    }

    v134 = v152;
    v132 = v140;
    goto LABEL_47;
  }

  v132 = v140;
  if (!v131)
  {
    outlined consume of Data?(v98, v166);
    v133 = BYTE6(v166);
    v134 = v152;
LABEL_47:
    *(v124 + 14) = v133;
    outlined consume of Data?(v98, v166);
    _os_log_impl(&dword_21607C000, v121, v122, "DBSuggestion.dataHelper() Faulted asset data for %s, %ld bytes", v124, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v125);
    MEMORY[0x21CE94770](v125, -1, -1);
    MEMORY[0x21CE94770](v124, -1, -1);

    v123(v132, v149);
    (*(v148 + 8))(v160, v134);
    (*(v151 + 8))(v161, v162);
    return v98;
  }

LABEL_43:
  result = outlined consume of Data?(v98, v130);
  LODWORD(v133) = HIDWORD(v98) - v98;
  v134 = v152;
  if (!__OFSUB__(HIDWORD(v98), v98))
  {
    v133 = v133;
    goto LABEL_47;
  }

LABEL_55:
  __break(1u);
  return result;
}

uint64_t closure #7 in DBSuggestion.updateAssetDataReferences(assetData:assets:blobFolderURL:modelContext:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v23 = a1;
  v25 = a2;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v24);
  v3 = &v22 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_AA4UUIDVSgGMd);
  v5 = *(v4 - 8);
  v26 = v4;
  v27 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI11DBAssetDataCGMd);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGAA4UUIDVSgGMd);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - v14;
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBAssetData> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI11DBAssetDataCGMd);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v9 + 8))(v11, v8);
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v3, v23, v16);
  (*(v17 + 56))(v3, 0, 1, v16);
  static PredicateExpressions.build_Arg<A>(_:)();
  outlined destroy of UTType?(v3, &_s10Foundation4UUIDVSgMd);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGAA4UUIDVSgGAC5ValueVy_APGGMd);
  v19 = v25;
  v25[3] = v18;
  v19[4] = lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, UUID?>, PredicateExpressions.Value<UUID?>> and conformance <> PredicateExpressions.Equal<A, B>();
  __swift_allocate_boxed_opaque_existential_1(v19);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, UUID?> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGAA4UUIDVSgGMd);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Value<UUID?> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_AA4UUIDVSgGMd);
  lazy protocol witness table accessor for type UUID? and conformance <A> A?();
  v20 = v26;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v27 + 8))(v7, v20);
  return (*(v13 + 8))(v15, v12);
}

uint64_t closure #3 in DBSuggestion.start()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v222 = a3;
  v199 = type metadata accessor for URL.DirectoryHint();
  v198 = *(v199 - 8);
  MEMORY[0x28223BE20](v199);
  v197 = &v189 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v196 = &v189 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI11DBAssetDataC_QPGSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v208 = &v189 - v9;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15FetchDescriptorVy9MomentsUI07DBAssetB0CGMd);
  v206 = *(v219 - 8);
  MEMORY[0x28223BE20](v219);
  v218 = &v189 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI11DBAssetDataC_QPGMd);
  v209 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v217 = &v189 - v12;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v195 = &v189 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v192 = &v189 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v191 = &v189 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v205 = &v189 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v204 = &v189 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v212 = &v189 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v189 - v27;
  v29 = type metadata accessor for Logger();
  v30 = *(v29 - 8);
  v31 = MEMORY[0x28223BE20](v29);
  v210 = &v189 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v207 = &v189 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v194 = &v189 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v193 = &v189 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v190 = &v189 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v201 = &v189 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v203 = &v189 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v220 = &v189 - v46;
  MEMORY[0x28223BE20](v45);
  v48 = &v189 - v47;
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v49 = __swift_project_value_buffer(v29, static DBSuggestion.Log);
  swift_beginAccess();
  v50 = *(v30 + 16);
  v225 = v49;
  v226 = v30 + 16;
  v224 = v50;
  (v50)(v48, v49, v29);
  v51 = *(v14 + 16);
  v221 = a1;
  v214 = v51;
  v215 = v14 + 16;
  v51(v28, a1, v13);
  v52 = v14;
  v53 = v30;
  v54 = v13;
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.debug.getter();
  v57 = os_log_type_enabled(v55, v56);
  v211 = v11;
  v216 = a2;
  v227 = v53;
  v213 = v52;
  if (v57)
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v202 = v29;
    v60 = v59;
    v229 = v59;
    *v58 = 136315138;
    lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v61 = dispatch thunk of CustomStringConvertible.description.getter();
    v63 = v62;
    v64 = *(v52 + 8);
    v64(v28, v54);
    v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v63, &v229);

    *(v58 + 4) = v65;
    _os_log_impl(&dword_21607C000, v55, v56, "DBSuggestion.dataHelper() Faulting asset url for %s", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v60);
    v66 = v60;
    v67 = v222;
    a2 = v216;
    v29 = v202;
    MEMORY[0x21CE94770](v66, -1, -1);
    MEMORY[0x21CE94770](v58, -1, -1);

    v223 = *(v227 + 8);
    v223(v48, v29);
  }

  else
  {

    v64 = *(v52 + 8);
    v64(v28, v54);
    v223 = *(v53 + 8);
    v223(v48, v29);
    v67 = v222;
  }

  v68 = v220;
  v69 = v217;
  v70 = v212;
  if (a2)
  {
    type metadata accessor for ModelContext();
    swift_allocObject();
    swift_retain_n();
    v210 = ModelContext.init(_:)();
    (v224)(v68, v225, v29);
    v214(v70, v221, v54);
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.debug.getter();
    v73 = os_log_type_enabled(v71, v72);
    v189 = v54;
    v200 = v64;
    if (v73)
    {
      v74 = swift_slowAlloc();
      v229 = swift_slowAlloc();
      v75 = v69;
      v76 = v229;
      *v74 = 136315138;
      lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v77 = dispatch thunk of CustomStringConvertible.description.getter();
      v78 = v70;
      v79 = v75;
      v81 = v80;
      v64(v78, v54);
      v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v81, &v229);

      *(v74 + 4) = v82;
      _os_log_impl(&dword_21607C000, v71, v72, "DBSuggestion.dataHelper() Context Created Faulting url data for %s", v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v76);
      v83 = v76;
      v69 = v79;
      MEMORY[0x21CE94770](v83, -1, -1);
      MEMORY[0x21CE94770](v74, -1, -1);

      v84 = v220;
    }

    else
    {

      v64(v70, v54);
      v84 = v68;
    }

    v94 = (v223)(v84, v29);
    v95 = v211;
    v220 = &v189;
    MEMORY[0x28223BE20](v94);
    v96 = v221;
    *(&v189 - 2) = v221;
    v229 = type metadata accessor for DBAssetData();
    Predicate.init(_:)();
    v97 = v209;
    v98 = v208;
    (*(v209 + 16))(v208, v69, v95);
    (*(v97 + 56))(v98, 0, 1, v95);
    lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
    FetchDescriptor.init(predicate:sortBy:)();
    FetchDescriptor.fetchLimit.setter();
    v212 = dispatch thunk of ModelContext.fetch<A>(_:)();
    v99 = v203;
    (v224)(v203, v225, v29);
    v100 = v204;
    v101 = v189;
    v214(v204, v96, v189);
    v102 = Logger.logObject.getter();
    v103 = v29;
    v104 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v102, v104))
    {
      v105 = v100;
      v106 = swift_slowAlloc();
      v107 = v101;
      v108 = swift_slowAlloc();
      v228 = v108;
      *v106 = 136315138;
      lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v109 = dispatch thunk of CustomStringConvertible.description.getter();
      v111 = v110;
      v200(v105, v107);
      v112 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v109, v111, &v228);
      v95 = v211;

      *(v106 + 4) = v112;
      _os_log_impl(&dword_21607C000, v102, v104, "DBSuggestion.dataHelper() Asset Fetched Faulting asset url for %s", v106, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v108);
      v113 = v108;
      v101 = v107;
      MEMORY[0x21CE94770](v113, -1, -1);
      MEMORY[0x21CE94770](v106, -1, -1);
    }

    else
    {

      v200(v100, v101);
    }

    v114 = v103;
    v223(v99, v103);
    v115 = v205;
    v116 = v212;
    if (v212 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (result)
      {
LABEL_18:
        v207 = (v116 & 0xC000000000000001);
        if ((v116 & 0xC000000000000001) != 0)
        {
          v117 = v101;
          v119 = MEMORY[0x21CE93180](0, v116);
          v118 = v119;
        }

        else
        {
          if (!*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_68:
            __break(1u);
            goto LABEL_69;
          }

          v117 = v101;
          v118 = *(v116 + 32);
        }

        v120 = (*(*v118 + 504))(v119);
        if (v121)
        {
          v208 = v120;
          v122 = v201;
          (v224)(v201, v225, v103);
          v214(v115, v221, v117);

          v123 = Logger.logObject.getter();
          LODWORD(v226) = static os_log_type_t.debug.getter();
          if (!os_log_type_enabled(v123, v226))
          {

            swift_bridgeObjectRelease_n();
            v200(v115, v117);
            v139 = v122;
LABEL_43:
            v223(v139, v114);
            v147 = v222;
            v148 = type metadata accessor for URL();
            v149 = *(*(v148 - 8) + 56);
            v149(v196, 1, 1, v148);
            (*(v198 + 104))(v197, *MEMORY[0x277CC91D8], v199);
            URL.init(filePath:directoryHint:relativeTo:)();

            (*(v206 + 8))(v218, v219);
            (*(v209 + 8))(v217, v211);
            return (v149)(v147, 0, 1, v148);
          }

          v202 = v103;
          v124 = swift_slowAlloc();
          v225 = swift_slowAlloc();
          v228 = v225;
          *v124 = 136315394;
          lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
          v125 = dispatch thunk of CustomStringConvertible.description.getter();
          v127 = v126;
          v200(v115, v117);
          v128 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v125, v127, &v228);

          *(v124 + 4) = v128;
          *(v124 + 12) = 2048;
          if (v116 >> 62)
          {
            result = __CocoaSet.count.getter();
          }

          else
          {
            result = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v140 = v201;
          v114 = v202;
          if (!result)
          {

            v142 = -1;
LABEL_42:
            *(v124 + 14) = v142;

            _os_log_impl(&dword_21607C000, v123, v226, "DBSuggestion.dataHelper() Faulted asset url for %s, %lld bytes", v124, 0x16u);
            v146 = v225;
            __swift_destroy_boxed_opaque_existential_1(v225);
            MEMORY[0x21CE94770](v146, -1, -1);
            MEMORY[0x21CE94770](v124, -1, -1);

            v139 = v140;
            goto LABEL_43;
          }

          if (v207)
          {
            v141 = MEMORY[0x21CE93180](0, v116);
LABEL_38:
            v143 = (*(*v141 + 288))();
            v145 = v144;

            if (v145)
            {
              v142 = -1;
            }

            else
            {
              v142 = v143;
            }

            v114 = v202;
            goto LABEL_42;
          }

          if (*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v141 = *(v116 + 32);

            goto LABEL_38;
          }

          goto LABEL_68;
        }

        v130 = (*(*v118 + 456))(v129);
        if (v131 >> 60 == 15)
        {
          goto LABEL_55;
        }

        v132 = v130;
        v133 = v131;
        v134 = v95;
        result = (*(*v118 + 288))();
        v135 = v191;
        if ((v136 & 1) == 0)
        {
          v137 = v133 >> 62;
          if ((v133 >> 62) <= 1)
          {
            if (!v137)
            {
              v138 = BYTE6(v133);
              goto LABEL_50;
            }

            goto LABEL_48;
          }

          if (v137 == 2)
          {
            v151 = *(v132 + 16);
            v150 = *(v132 + 24);
            v152 = __OFSUB__(v150, v151);
            v138 = v150 - v151;
            if (!v152)
            {
              goto LABEL_50;
            }

            __break(1u);
LABEL_48:
            LODWORD(v138) = HIDWORD(v132) - v132;
            if (__OFSUB__(HIDWORD(v132), v132))
            {
LABEL_69:
              __break(1u);
              return result;
            }

            v138 = v138;
LABEL_50:
            if (v138 == result)
            {
LABEL_51:
              v153 = v190;
              v202 = v103;
              v224();
              v214(v135, v221, v117);
              v154 = Logger.logObject.getter();
              v155 = static os_log_type_t.debug.getter();
              if (!os_log_type_enabled(v154, v155))
              {

                outlined consume of Data?(v132, v133);

                v200(v135, v117);
                v223(v153, v202);
                (*(v206 + 8))(v218, v219);
                (*(v209 + 8))(v217, v134);
                goto LABEL_59;
              }

              v156 = swift_slowAlloc();
              v226 = swift_slowAlloc();
              v228 = v226;
              *v156 = 136446466;
              *(v156 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x29287472617473, 0xE700000000000000, &v228);
              *(v156 + 12) = 2080;
              lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
              v157 = dispatch thunk of CustomStringConvertible.description.getter();
              v159 = v158;
              v200(v135, v117);
              v160 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v157, v159, &v228);

              *(v156 + 14) = v160;
              _os_log_impl(&dword_21607C000, v154, v155, "DBSuggestion.%{public}s Faulting asset url failed: but data available for %s", v156, 0x16u);
              v161 = v226;
              swift_arrayDestroy();
              MEMORY[0x21CE94770](v161, -1, -1);
              MEMORY[0x21CE94770](v156, -1, -1);

              outlined consume of Data?(v132, v133);

              v162 = &v222;
              goto LABEL_57;
            }

            goto LABEL_54;
          }

          if (!result)
          {
            goto LABEL_51;
          }
        }

LABEL_54:
        outlined consume of Data?(v132, v133);
        v95 = v134;
LABEL_55:
        v163 = v193;
        (v224)(v193, v225, v103);
        v164 = v192;
        v214(v192, v221, v117);
        v165 = Logger.logObject.getter();
        v166 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v165, v166))
        {

          v200(v164, v117);
          v223(v163, v103);
          (*(v206 + 8))(v218, v219);
          (*(v209 + 8))(v217, v95);
          goto LABEL_59;
        }

        v167 = v164;
        v168 = swift_slowAlloc();
        v169 = swift_slowAlloc();
        v202 = v103;
        v170 = v169;
        v228 = v169;
        *v168 = 136446466;
        *(v168 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x29287472617473, 0xE700000000000000, &v228);
        *(v168 + 12) = 2080;
        lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
        v171 = dispatch thunk of CustomStringConvertible.description.getter();
        v173 = v172;
        v200(v167, v117);
        v174 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v171, v173, &v228);

        *(v168 + 14) = v174;
        _os_log_impl(&dword_21607C000, v165, v166, "DBSuggestion.%{public}s Faulting asset url failed: no data for %s", v168, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v170, -1, -1);
        MEMORY[0x21CE94770](v168, -1, -1);

        v162 = &v225;
LABEL_57:
        v223(*(v162 - 32), v202);
        (*(v206 + 8))(v218, v219);
        (*(v209 + 8))(v217, v211);
LABEL_59:
        v175 = v222;
        v176 = type metadata accessor for URL();
        return (*(*(v176 - 8) + 56))(v175, 1, 1, v176);
      }
    }

    else
    {
      result = *((v212 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_18;
      }
    }

    v177 = v194;
    (v224)(v194, v225, v103);
    v178 = v195;
    v214(v195, v221, v101);
    v179 = Logger.logObject.getter();
    v180 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v179, v180))
    {
      v181 = v177;
      v182 = swift_slowAlloc();
      v183 = swift_slowAlloc();
      v228 = v183;
      *v182 = 136446466;
      *(v182 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x29287472617473, 0xE700000000000000, &v228);
      *(v182 + 12) = 2080;
      lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v184 = dispatch thunk of CustomStringConvertible.description.getter();
      v186 = v185;
      v200(v178, v101);
      v187 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v184, v186, &v228);

      *(v182 + 14) = v187;
      _os_log_impl(&dword_21607C000, v179, v180, "DBSuggestion.%{public}s Faulting asset url failed: no asset for %s", v182, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v183, -1, -1);
      MEMORY[0x21CE94770](v182, -1, -1);

      v223(v181, v103);
      (*(v206 + 8))(v218, v219);
      (*(v209 + 8))(v217, v211);
    }

    else
    {

      v200(v178, v101);
      v223(v177, v103);
      (*(v206 + 8))(v218, v219);
      (*(v209 + 8))(v217, v95);
    }

    v188 = type metadata accessor for URL();
    return (*(*(v188 - 8) + 56))(v222, 1, 1, v188);
  }

  else
  {
    v85 = v210;
    (v224)(v210, v225, v29);
    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = v67;
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v229 = v90;
      *v89 = 136446210;
      *(v89 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x29287472617473, 0xE700000000000000, &v229);
      _os_log_impl(&dword_21607C000, v86, v87, "DBSuggestion.%{public}s Faulting asset url failed: no model context", v89, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v90);
      MEMORY[0x21CE94770](v90, -1, -1);
      v91 = v89;
      v67 = v88;
      MEMORY[0x21CE94770](v91, -1, -1);
    }

    v223(v85, v29);
    v92 = type metadata accessor for URL();
    return (*(*(v92 - 8) + 56))(v67, 1, 1, v92);
  }
}

void (*DBSuggestion.persistentBackingData.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  outlined init with copy of DBObject(v1 + 48, v4);
  return DBAssetData.persistentBackingData.modify;
}

uint64_t static DBSuggestion.schemaMetadata.getter()
{
  v28 = type metadata accessor for Schema.PropertyMetadata();
  v0 = *(v28 - 8);
  v1 = v0;
  MEMORY[0x28223BE20](v28);
  v25 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Schema.Relationship.DeleteRule();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9SwiftData6SchemaC16PropertyMetadataVGMd);
  v7 = *(v0 + 72);
  v8 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21659BFF0;
  v26 = v9;
  v27 = v8;
  swift_getKeyPath();
  *(&v33 + 1) = type metadata accessor for UUID();
  __swift_allocate_boxed_opaque_existential_1(&v32);
  UUID.init()();
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v32 = 0u;
  v33 = 0u;
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v32 = 0u;
  v33 = 0u;
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v32 = 0u;
  v33 = 0u;
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v32 = 0u;
  v33 = 0u;
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v32 = 0u;
  v33 = 0u;
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v32 = 0u;
  v33 = 0u;
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v32 = 0u;
  v33 = 0u;
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v32 = 0u;
  v33 = 0u;
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v32 = 0u;
  v33 = 0u;
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v32 = 0u;
  v33 = 0u;
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v32 = 0u;
  v33 = 0u;
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v32 = 0u;
  v33 = 0u;
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v32 = 0u;
  v33 = 0u;
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v32 = 0u;
  v33 = 0u;
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v32 = 0u;
  v33 = 0u;
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v32 = 0u;
  v33 = 0u;
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd);
  v11 = MEMORY[0x277D84F90];
  *(&v33 + 1) = v10;
  *&v32 = MEMORY[0x277D84F90];
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  *(&v33 + 1) = v10;
  *&v32 = v11;
  (*(v4 + 104))(v6, *MEMORY[0x277CDD5A8], v3);
  swift_getKeyPath();
  v12 = type metadata accessor for Schema.Relationship();
  swift_allocObject();
  v13 = Schema.Relationship.init(_:deleteRule:minimumModelCount:maximumModelCount:originalName:inverse:hashModifier:)();
  *(&v30 + 1) = v12;
  v31 = lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type Schema.Relationship and conformance Schema.Relationship, MEMORY[0x277CDD5B8]);
  *&v29 = v13;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v32 = 0u;
  v33 = 0u;
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  *(&v33 + 1) = v10;
  *&v32 = v11;
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v32 = 0u;
  v33 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySays14PartialKeyPathCy9MomentsUI12DBSuggestionCGGGMd);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_21658CA50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_21658E180;
  *(v15 + 32) = swift_getKeyPath();
  *(v15 + 40) = swift_getKeyPath();
  *(v14 + 32) = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData6SchemaC5IndexCy_9MomentsUI12DBSuggestionCGMd);
  swift_allocObject();
  v17 = Schema.Index.init(_:)();
  *(&v30 + 1) = v16;
  v18 = v25;
  v31 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Schema.Index<DBSuggestion> and conformance Schema.Index<A>, &_s9SwiftData6SchemaC5IndexCy_9MomentsUI12DBSuggestionCGMd);
  *&v29 = v17;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, v11);
  v21 = v19[2];
  v20 = v19[3];
  if (v21 >= v20 >> 1)
  {
    v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v20 > 1, v21 + 1, 1, v19);
  }

  v19[2] = v21 + 1;
  v22 = v19 + v27 + v21 * v7;
  v23 = v19;
  (*(v1 + 32))(v22, v18, v28);
  *&v29 = v26;
  specialized Array.append<A>(contentsOf:)(v23);
  return v29;
}

uint64_t DBSuggestion.__allocating_init(backingData:)(uint64_t a1)
{
  v2 = swift_allocObject();
  DBSuggestion.init(backingData:)(a1);
  return v2;
}

uint64_t DBSuggestion.init(backingData:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DBSuggestion();
  *(v2 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy9MomentsUI12DBSuggestionC_AGQo_Md);
  v9 = lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  v13[0] = v8;
  v13[1] = v8;
  v13[2] = v9;
  v13[3] = v9;
  *(v2 + 80) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v2 + 48));
  static PersistentModel.createBackingData<A>()();
  UUID.init()();
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  (*(v5 + 8))(v7, v4);
  *(v2 + 16) = 0x101010101010101;
  *(v2 + 24) = 0x101010101010101;
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  v10 = MEMORY[0x277D84F90];
  v13[0] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI7DBAssetCGSgMd);
  lazy protocol witness table accessor for type [DBAsset]? and conformance <A> A?();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v2 + 32) = 0;
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  v13[0] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI11DBAssetDataCGSgMd);
  type metadata accessor for DBAssetData();
  lazy protocol witness table accessor for type [DBAssetData]? and conformance <A> A?();
  dispatch thunk of BackingData.setValue<A, B>(forKey:to:)();

  *(v2 + 33) = 256;
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  v13[0] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI10DBSnapshotCGSgMd);
  type metadata accessor for DBSnapshot();
  lazy protocol witness table accessor for type [DBSnapshot]? and conformance <A> A?();
  dispatch thunk of BackingData.setValue<A, B>(forKey:to:)();

  *(v2 + 35) = 0;
  *(v2 + 40) = 0;
  ObservationRegistrar.init()();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  outlined init with copy of DBObject(a1, v13);
  (*(*v2 + 1384))(v13);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t DBSuggestion.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 48);
  v1 = OBJC_IVAR____TtC9MomentsUI12DBSuggestion___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t DBSuggestion.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 48);
  v1 = OBJC_IVAR____TtC9MomentsUI12DBSuggestion___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

Swift::Int DBSuggestion.hashValue.getter()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  v11 = Hasher.init(_seed:)();
  (*(*v0 + 344))(v11);
  outlined init with copy of DateInterval?(v10, v8, &_s10Foundation4UUIDVSgMd);
  if ((*(v2 + 48))(v8, 1, v1) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v2 + 32))(v4, v8, v1);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v4, v1);
  }

  outlined destroy of UTType?(v10, &_s10Foundation4UUIDVSgMd);
  return Hasher._finalize()();
}

uint64_t DBSuggestion.hash(into:)()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v13 - v10;
  (*(*v0 + 344))(v9);
  outlined init with copy of DateInterval?(v11, v8, &_s10Foundation4UUIDVSgMd);
  if ((*(v2 + 48))(v8, 1, v1) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v2 + 32))(v4, v8, v1);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v4, v1);
  }

  return outlined destroy of UTType?(v11, &_s10Foundation4UUIDVSgMd);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DBSuggestion()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  v11 = Hasher.init(_seed:)();
  (*(**v0 + 344))(v11);
  outlined init with copy of DateInterval?(v10, v8, &_s10Foundation4UUIDVSgMd);
  if ((*(v2 + 48))(v8, 1, v1) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v2 + 32))(v4, v8, v1);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v4, v1);
  }

  outlined destroy of UTType?(v10, &_s10Foundation4UUIDVSgMd);
  return Hasher._finalize()();
}

uint64_t key path getter for DBSuggestion.modifiedDate : DBSuggestion()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  lazy protocol witness table accessor for type Date? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();
}

uint64_t key path setter for DBSuggestion.modifiedDate : DBSuggestion(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  outlined init with copy of DateInterval?(a1, &v12[-v8], &_s10Foundation4DateVSgMd);
  v10 = *a2;
  outlined init with copy of DateInterval?(v9, v7, &_s10Foundation4DateVSgMd);
  v15 = v10;
  swift_getKeyPath();
  v13 = v10;
  v14 = v7;
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  outlined destroy of UTType?(v9, &_s10Foundation4DateVSgMd);
  return outlined destroy of UTType?(v7, &_s10Foundation4DateVSgMd);
}

void (*DBSuggestion.modifiedDate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd) - 8) + 64);
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

  v8 = OBJC_IVAR____TtC9MomentsUI12DBSuggestion___observationRegistrar;
  v5[6] = v7;
  v5[7] = v8;
  *v5 = v1;
  swift_getKeyPath();
  v5[8] = lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  lazy protocol witness table accessor for type Date? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();

  return DBSuggestion.modifiedDate.modify;
}

void DBSuggestion.modifiedDate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  outlined init with copy of DateInterval?(*(*a1 + 48), *(*a1 + 40), &_s10Foundation4DateVSgMd);
  v4 = v3[5];
  v5 = v3[6];
  v7 = v3[3];
  v6 = v3[4];
  if (a2)
  {
    outlined init with copy of DateInterval?(v3[5], v3[4], &_s10Foundation4DateVSgMd);
    v3[1] = v7;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    outlined destroy of UTType?(v4, &_s10Foundation4DateVSgMd);
    outlined destroy of UTType?(v6, &_s10Foundation4DateVSgMd);
    v9 = v5;
  }

  else
  {
    v3[2] = v7;
    v10 = swift_getKeyPath();
    MEMORY[0x28223BE20](v10);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    outlined destroy of UTType?(v5, &_s10Foundation4DateVSgMd);
    v9 = v4;
  }

  outlined destroy of UTType?(v9, &_s10Foundation4DateVSgMd);
  free(v5);
  free(v4);
  free(v6);
  free(v3);
}

Swift::Bool __swiftcall Double.isEqual(decimalPlaces:other:)(Swift::Int decimalPlaces, Swift::Double other)
{
  v3 = v2;
  v5 = __exp10(decimalPlaces);
  return round(v5 * v3) / v5 == round(v5 * other) / v5;
}

Swift::Double __swiftcall Double.rounded(to:)(Swift::Int to)
{
  v2 = v1;
  v3 = __exp10(to);
  return round(v3 * v2) / v3;
}

MomentsUI::DBSuggestion::SuggestionType DBSuggestion.uiType.getter@<W0>(_BYTE *a1@<X8>)
{
  v3 = (*(*v1 + 440))();
  if (v4)
  {
    result = (*(*v1 + 392))(&v8, v3);
    v6 = v8;
    if (v8 != 13)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  result = DBSuggestion.SuggestionType.init(rawValue:)(v3).value;
  v6 = v7;
  if (v7 == 13)
  {
LABEL_5:
    v6 = 0;
  }

LABEL_6:
  *a1 = v6;
  return result;
}

id DBSuggestion.uiTitle.getter()
{
  return DBSuggestion.uiTitle.getter();
}

{
  v8 = v0;
  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  lazy protocol witness table accessor for type String? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();

  if (v9)
  {
    v1 = v8;
  }

  else
  {
    v1 = 0;
  }

  if (v9)
  {
    v2 = v9;
  }

  else
  {
    v2 = 0xE000000000000000;
  }

  v3 = type metadata accessor for TemplatedString();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR____TtC9MomentsUI15TemplatedString_template];
  *v5 = v1;
  *(v5 + 1) = v2;
  v7.receiver = v4;
  v7.super_class = v3;
  return objc_msgSendSuper2(&v7, sel_init);
}

id DBSuggestion.uiDateRange.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v23 - v13;
  (*(*v0 + 728))(v12);
  v15 = *(v8 + 48);
  if (v15(v6, 1, v7) == 1)
  {
    static Date.distantPast.getter();
    v16 = v15(v6, 1, v7);
    if (v16 != 1)
    {
      v16 = outlined destroy of UTType?(v6, &_s10Foundation4DateVSgMd);
    }
  }

  else
  {
    v16 = (*(v8 + 32))(v14, v6, v7);
  }

  (*(*v0 + 776))(v16);
  if (v15(v4, 1, v7) == 1)
  {
    static Date.distantFuture.getter();
    if (v15(v4, 1, v7) != 1)
    {
      outlined destroy of UTType?(v4, &_s10Foundation4DateVSgMd);
    }
  }

  else
  {
    (*(v8 + 32))(v11, v4, v7);
  }

  v17 = type metadata accessor for DateRange();
  v18 = objc_allocWithZone(v17);
  v19 = *(v8 + 16);
  v19(&v18[OBJC_IVAR____TtC9MomentsUI9DateRange_startDate], v14, v7);
  v19(&v18[OBJC_IVAR____TtC9MomentsUI9DateRange_endDate], v11, v7);
  v23.receiver = v18;
  v23.super_class = v17;
  v20 = objc_msgSendSuper2(&v23, sel_init);
  v21 = *(v8 + 8);
  v21(v11, v7);
  v21(v14, v7);
  return v20;
}

id DBSuggestion.uiRanking.getter()
{
  v1 = v0;
  v2 = (*(*v0 + 872))();
  v4 = v3;
  v24 = v0;
  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  lazy protocol witness table accessor for type Double? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();

  v5 = v25;
  v6 = DBSuggestion.visibilityCategory.getter(&v24);
  if (v24 >= 5u)
  {
    v7 = 5;
  }

  else
  {
    v7 = v24;
  }

  v8 = (*(*v0 + 968))(v6);
  v10 = v9;
  v11 = (*(*v0 + 1016))();
  v12 = (*(*v0 + 1064))();
  if (v13)
  {
    v14 = -1;
  }

  else
  {
    v14 = v12;
  }

  if (v4)
  {
    v2 = 0xBFF0000000000000;
  }

  if (v5)
  {
    v15 = 0xBFF0000000000000;
  }

  else
  {
    v15 = v1;
  }

  if (v10)
  {
    v8 = 0xBFF0000000000000;
  }

  v16 = type metadata accessor for SuggestionRanking();
  v17 = objc_allocWithZone(v16);
  v18 = &v17[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_rankingScore];
  *v18 = v2;
  v18[8] = 0;
  v19 = &v17[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_baseScore];
  *v19 = v15;
  v19[8] = 0;
  v17[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_visibilityCategory] = v7;
  v20 = &v17[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore];
  *v20 = v8;
  v20[8] = 0;
  v17[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_isSensitive] = v11 & 1;
  v21 = &v17[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_ordinalRankInRecommendedTab];
  *v21 = v14;
  v21[8] = 0;
  v23.receiver = v17;
  v23.super_class = v16;
  return objc_msgSendSuper2(&v23, sel_init);
}

uint64_t DBSuggestion.__allocating_init(id:suggestionID:type:title:subtitle:prompt:dateRange:ranking:assets:subType:)(char *a1, char *a2, unsigned __int8 *a3, char *a4, char *a5, char *a6, char *a7, _BYTE *a8, unint64_t a9, unsigned __int8 *a10)
{
  v65 = a7;
  v66 = a8;
  v73 = a6;
  v74 = a5;
  v72 = a4;
  v75 = a2;
  v76 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v12 - 8);
  v63 = &v55 - v13;
  v61 = type metadata accessor for Date();
  v60 = *(v61 - 8);
  v14 = MEMORY[0x28223BE20](v61);
  v62 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v71 = &v55 - v16;
  v77 = type metadata accessor for UUID();
  v17 = *(v77 - 8);
  v18 = MEMORY[0x28223BE20](v77);
  v67 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v70 = &v55 - v21;
  MEMORY[0x28223BE20](v20);
  v69 = &v55 - v22;
  LODWORD(v58) = *a3;
  v59 = *a10;
  v82 = MEMORY[0x277D84F90];
  if (a9 >> 62)
  {
LABEL_41:
    v23 = __CocoaSet.count.getter();
  }

  else
  {
    v23 = *((a9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v64 = v17;
  v68 = (v17 + 16);
  if (v23)
  {
    v24 = 0;
    v17 = MEMORY[0x277D84F90];
    do
    {
      v25 = v24;
      while (1)
      {
        if ((a9 & 0xC000000000000001) != 0)
        {
          v26 = MEMORY[0x21CE93180](v25, a9);
          v24 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            goto LABEL_39;
          }
        }

        else
        {
          if (v25 >= *((a9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_40;
          }

          v26 = *(a9 + 8 * v25 + 32);
          v24 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
LABEL_39:
            __break(1u);
LABEL_40:
            __break(1u);
            goto LABEL_41;
          }
        }

        v27 = *&v26[OBJC_IVAR____TtC9MomentsUI5Asset_representations];
        if (v27)
        {
          break;
        }

        ++v25;
        if (v24 == v23)
        {
          goto LABEL_20;
        }
      }

      v57 = v10;
      v28 = v26;
      v56 = type metadata accessor for DBAsset();
      (*v68)(v67, &v28[OBJC_IVAR____TtC9MomentsUI5Asset_universalUUID], v77);
      v55 = *((*MEMORY[0x277D85000] & *v28) + 0x88);

      v30 = v55(v29);
      DBAsset.__allocating_init(universalUUID:representations:priorityScore:)(v67, v27, v30, v31 & 1);

      MEMORY[0x21CE92260]();
      if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v17 = v82;
      v10 = v57;
    }

    while (v24 != v23);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

LABEL_20:

  v32 = *v68;
  v33 = v77;
  (*v68)(v69, v76, v77);
  v32(v70, v75, v33);
  v81 = v58;
  v34 = OBJC_IVAR____TtC9MomentsUI15TemplatedString_template;
  v35 = *&v72[OBJC_IVAR____TtC9MomentsUI15TemplatedString_template + 8];
  v68 = *&v72[OBJC_IVAR____TtC9MomentsUI15TemplatedString_template];
  if (v74)
  {
    v36 = *&v74[OBJC_IVAR____TtC9MomentsUI15TemplatedString_template + 8];
    v58 = *&v74[OBJC_IVAR____TtC9MomentsUI15TemplatedString_template];
    v57 = v36;
  }

  else
  {
    v58 = 0;
    v57 = 0xE000000000000000;
  }

  v67 = v17;
  if (v73)
  {
    v37 = *&v73[v34 + 8];
    v56 = *&v73[v34];
    v55 = v37;
  }

  else
  {
    v56 = 0;
    v55 = 0xE000000000000000;
  }

  v38 = *(v60 + 16);
  v39 = v65;
  v40 = v61;
  v38(v71, &v65[OBJC_IVAR____TtC9MomentsUI9DateRange_startDate], v61);
  v41 = v62;
  v38(v62, &v39[OBJC_IVAR____TtC9MomentsUI9DateRange_endDate], v40);
  v42 = v66;
  if (v66[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore + 8])
  {
    v43 = -1.0;
  }

  else
  {
    v43 = *&v66[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore];
  }

  if (v66[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_baseScore + 8])
  {
    v44 = -1.0;
  }

  else
  {
    v44 = *&v66[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_baseScore];
  }

  if (v66[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_rankingScore + 8])
  {
    v45 = -1.0;
  }

  else
  {
    v45 = *&v66[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_rankingScore];
  }

  v80 = 0x403020100uLL >> (8 * v66[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_visibilityCategory]);
  if (v66[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_ordinalRankInRecommendedTab + 8])
  {
    v46 = -1;
  }

  else
  {
    v46 = *&v66[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_ordinalRankInRecommendedTab];
  }

  v79 = v59;
  static DBSuggestion.SuggestionSubType.subscript.getter(&v79, &v78);
  v47 = type metadata accessor for URL();
  v48 = v63;
  (*(*(v47 - 8) + 56))(v63, 1, 1, v47);
  v49 = v42[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_isSensitive] & 1;
  v50 = *(v10 + 1312);

  v51 = v50(v69, v70, &v81, v68, v35, v58, v57, v56, v45, v44, v43, v55, v71, v41, &v80, v46, 0, v67, 0, &v78, v48, 0, v49);

  v52 = *(v64 + 8);
  v53 = v77;
  v52(v75, v77);
  v52(v76, v53);
  return v51;
}

void (*protocol witness for PersistentModel.persistentBackingData.modify in conformance DBSuggestion(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*(*v1 + 1392))();
  return protocol witness for CloudRecord.lastKnownCKRecord.modify in conformance CloudSyncAssetData;
}

uint64_t specialized static DBSuggestion.== infix(_:_:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v367 = v350 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v365 = v350 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v362 = v350 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v360 = v350 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v370 = v350 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v368 = v350 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v375 = (v350 - v18);
  MEMORY[0x28223BE20](v17);
  v373 = v350 - v19;
  v20 = type metadata accessor for Date();
  v21 = *(v20 - 8);
  v377 = v20;
  v378 = v21;
  v22 = MEMORY[0x28223BE20](v20);
  v366 = v350 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v363 = v350 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v361 = v350 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v358 = v350 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v369 = v350 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v376 = (v350 - v33);
  v34 = MEMORY[0x28223BE20](v32);
  v374 = v350 - v35;
  MEMORY[0x28223BE20](v34);
  *&v381 = v350 - v36;
  v37 = type metadata accessor for UUID();
  v386 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v382 = v350 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  v40 = v39 - 8;
  MEMORY[0x28223BE20](v39);
  v42 = v350 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v44 = MEMORY[0x28223BE20](v43 - 8);
  v372 = v350 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v44);
  v371 = v350 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v364 = v350 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v359 = v350 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v357 = v350 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v356 = v350 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v355 = v350 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v354 = v350 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v353 = v350 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v352 = v350 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v66 = v350 - v65;
  v67 = MEMORY[0x28223BE20](v64);
  v69 = v350 - v68;
  v70 = MEMORY[0x28223BE20](v67);
  v72 = v350 - v71;
  v73 = *a1;
  v74 = *(*a1 + 344);
  v385 = a1;
  v379 = v73 + 344;
  v380 = v74;
  v75 = (v74)(v70);
  v76 = *(*a2 + 344);
  v384 = a2;
  v77 = v386;
  v76(v75);
  v78 = *(v40 + 56);
  outlined init with copy of DateInterval?(v72, v42, &_s10Foundation4UUIDVSgMd);
  outlined init with copy of DateInterval?(v69, &v42[v78], &_s10Foundation4UUIDVSgMd);
  v79 = *(v77 + 48);
  if (v79(v42, 1, v37) == 1)
  {
    v383 = v79;
    outlined destroy of UTType?(v69, &_s10Foundation4UUIDVSgMd);
    outlined destroy of UTType?(v72, &_s10Foundation4UUIDVSgMd);
    if (v383(&v42[v78], 1, v37) == 1)
    {
      v351 = v77 + 48;
      v382 = v37;
      outlined destroy of UTType?(v42, &_s10Foundation4UUIDVSgMd);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  outlined init with copy of DateInterval?(v42, v66, &_s10Foundation4UUIDVSgMd);
  if (v79(&v42[v78], 1, v37) == 1)
  {
    outlined destroy of UTType?(v69, &_s10Foundation4UUIDVSgMd);
    outlined destroy of UTType?(v72, &_s10Foundation4UUIDVSgMd);
    (*(v77 + 8))(v66, v37);
LABEL_6:
    outlined destroy of UTType?(v42, &_s10Foundation4UUIDVSg_ADtMd);
    return 0;
  }

  v383 = v79;
  v351 = v77 + 48;
  v80 = v382;
  (*(v77 + 32))(v382, &v42[v78], v37);
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  v81 = dispatch thunk of static Equatable.== infix(_:_:)();
  v82 = *(v77 + 8);
  v82(v80, v37);
  outlined destroy of UTType?(v69, &_s10Foundation4UUIDVSgMd);
  outlined destroy of UTType?(v72, &_s10Foundation4UUIDVSgMd);
  v382 = v37;
  v82(v66, v37);
  outlined destroy of UTType?(v42, &_s10Foundation4UUIDVSgMd);
  if ((v81 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  v83 = OBJC_IVAR____TtC9MomentsUI12DBSuggestion___observationRegistrar;
  v388 = *&v385;
  swift_getKeyPath();
  v84 = lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  v350[2] = v83;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  v85 = lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  lazy protocol witness table accessor for type String? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();

  if (v389)
  {
    v86 = v388;
  }

  else
  {
    v86 = 0.0;
  }

  if (v389)
  {
    v87 = v389;
  }

  else
  {
    v87 = 0xE000000000000000;
  }

  v88 = OBJC_IVAR____TtC9MomentsUI12DBSuggestion___observationRegistrar;
  v89 = v384;
  v388 = *&v384;
  swift_getKeyPath();
  v350[1] = v88;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  v350[3] = v85;
  v90 = v89;
  PersistentModel.getValue<A>(forKey:)();

  if (v389)
  {
    v91 = v388;
  }

  else
  {
    v91 = 0.0;
  }

  if (v389)
  {
    v92 = v389;
  }

  else
  {
    v92 = 0xE000000000000000;
  }

  if (*&v86 == *&v91 && v87 == v92)
  {

    v94 = v386;
  }

  else
  {
    v95 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v94 = v386;
    if ((v95 & 1) == 0)
    {
      if (one-time initialization token for processing != -1)
      {
        swift_once();
      }

      v115 = type metadata accessor for Logger();
      __swift_project_value_buffer(v115, static CommonLogger.processing);

      v107 = Logger.logObject.getter();
      v116 = static os_log_type_t.debug.getter();

      v117 = os_log_type_enabled(v107, v116);
      v118 = v372;
      if (!v117)
      {
        goto LABEL_137;
      }

      v119 = swift_slowAlloc();
      *&v120 = COERCE_DOUBLE(swift_slowAlloc());
      v388 = *&v120;
      *v119 = 136315138;
      v380();
      v121 = v382;
      if (v383(v118, 1, v382) == 1)
      {
        v122 = 7104878;
        outlined destroy of UTType?(v118, &_s10Foundation4UUIDVSgMd);
        v123 = 0xE300000000000000;
      }

      else
      {
        v122 = UUID.uuidString.getter();
        v123 = v216;
        (*(v94 + 8))(v118, v121);
      }

      v217 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v122, v123, &v388);

      *(v119 + 4) = v217;
      _os_log_impl(&dword_21607C000, v107, v116, "[comparator] title mismatch, suggestionID=%s", v119, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v120);
      v218 = *&v120;
      goto LABEL_107;
    }
  }

  v96 = v385;
  v97 = (*v385 + 488);
  v98 = *v97;
  v99 = (*v97)(v93);
  v350[0] = v84;
  if (v100)
  {
    v101 = 0;
  }

  else
  {
    LOBYTE(v99) = DBSuggestion.SuggestionSubType.init(rawValue:)(v99);
    if (LOBYTE(v388) == 65)
    {
      v101 = 0;
    }

    else
    {
      v101 = LOBYTE(v388);
    }
  }

  v102 = (*v89 + 488);
  v103 = *v102;
  v104 = (*v102)(v99);
  if ((v105 & 1) != 0 || (LOBYTE(v104) = DBSuggestion.SuggestionSubType.init(rawValue:)(v104), SLOBYTE(v388) == 65))
  {
    if (v101)
    {
LABEL_32:
      if (one-time initialization token for processing != -1)
      {
        swift_once();
      }

      v106 = type metadata accessor for Logger();
      __swift_project_value_buffer(v106, static CommonLogger.processing);

      v107 = Logger.logObject.getter();
      v108 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v107, v108))
      {
        goto LABEL_137;
      }

      v109 = v94;
      v110 = swift_slowAlloc();
      *&v111 = COERCE_DOUBLE(swift_slowAlloc());
      v388 = *&v111;
      *v110 = 136315650;
      v112 = v98(v111);
      if (v113)
      {
        v114 = 0;
      }

      else
      {
        DBSuggestion.SuggestionSubType.init(rawValue:)(v112);
        v114 = v387;
        if (v387 == 65)
        {
          v114 = 0;
        }
      }

      LOBYTE(v387) = v114;
      v149 = String.init<A>(describing:)();
      v151 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v149, v150, &v388);

      *(v110 + 4) = v151;
      *(v110 + 12) = 2080;
      v153 = v103(v152);
      if (v154)
      {
        v155 = 0;
      }

      else
      {
        DBSuggestion.SuggestionSubType.init(rawValue:)(v153);
        v155 = v387;
        if (v387 == 65)
        {
          v155 = 0;
        }
      }

      LOBYTE(v387) = v155;
      v156 = String.init<A>(describing:)();
      v158 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v156, v157, &v388);

      *(v110 + 14) = v158;
      *(v110 + 22) = 2080;
      v160 = v371;
      (v380)(v159);
      v161 = v382;
      if (v383(v160, 1, v382) == 1)
      {
        v162 = 7104878;
        outlined destroy of UTType?(v160, &_s10Foundation4UUIDVSgMd);
        v163 = 0xE300000000000000;
      }

      else
      {
        v162 = UUID.uuidString.getter();
        v163 = v164;
        (*(v109 + 8))(v160, v161);
      }

      v165 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v162, v163, &v388);

      *(v110 + 24) = v165;
      _os_log_impl(&dword_21607C000, v107, v108, "[comparator] subType mismatch, lhs=%s, rhs=%s, suggestionID=%s", v110, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v111, -1, -1);
      v166 = v110;
      goto LABEL_136;
    }
  }

  else if (qword_21659CD30[v101] != qword_21659CD30[SLOBYTE(v388)])
  {
    goto LABEL_32;
  }

  v124 = *(*v96 + 728);
  v125 = v373;
  v371 = (*v96 + 728);
  v372 = v124;
  (v124)(v104);
  v127 = v377;
  v126 = v378;
  v128 = *(v378 + 48);
  if ((v128)(v125, 1, v377) == 1)
  {
    static Date.distantPast.getter();
    v129 = (v128)(v125, 1, v127);
    v130 = v375;
    if (v129 != 1)
    {
      v129 = outlined destroy of UTType?(v125, &_s10Foundation4DateVSgMd);
    }
  }

  else
  {
    v129 = (*(v126 + 32))(COERCE_DOUBLE(*&v381), v125, v127);
    v130 = v375;
  }

  v131 = (*v90 + 728);
  v375 = *v131;
  v373 = v131;
  v375(v129);
  if ((v128)(v130, 1, v127) == 1)
  {
    v132 = v374;
    static Date.distantPast.getter();
    if ((v128)(v130, 1, v127) != 1)
    {
      outlined destroy of UTType?(v130, &_s10Foundation4DateVSgMd);
    }
  }

  else
  {
    v132 = v374;
    (*(v126 + 32))(v374, v130, v127);
  }

  v133 = v381;
  v134 = static Date.== infix(_:_:)();
  v135 = *(v126 + 8);
  v135(v132, v127);
  v381 = *&v135;
  v136 = (v135)(*&v133, v127);
  if ((v134 & 1) == 0)
  {
    if (one-time initialization token for processing != -1)
    {
      swift_once();
    }

    v143 = type metadata accessor for Logger();
    __swift_project_value_buffer(v143, static CommonLogger.processing);

    v107 = Logger.logObject.getter();
    v144 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v107, v144))
    {
      goto LABEL_137;
    }

    LODWORD(v374) = v144;
    v376 = v107;
    v145 = swift_slowAlloc();
    *&v146 = COERCE_DOUBLE(swift_slowAlloc());
    v370 = v146;
    v388 = *&v146;
    *v145 = 136315650;
    v147 = v365;
    (v372)(v146);
    if ((v128)(v147, 1, v127) == 1)
    {
      v148 = v363;
      static Date.distantPast.getter();
      if ((v128)(v147, 1, v127) != 1)
      {
        outlined destroy of UTType?(v147, &_s10Foundation4DateVSgMd);
      }
    }

    else
    {
      v148 = v363;
      (*(v378 + 32))(v363, v147, v127);
    }

    lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    v219 = dispatch thunk of CustomStringConvertible.description.getter();
    v221 = v220;
    (*&v381)(v148, v127);
    v222 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v219, v221, &v388);

    *(v145 + 4) = v222;
    *(v145 + 12) = 2080;
    v224 = v367;
    v375(v223);
    if ((v128)(v224, 1, v127) == 1)
    {
      v225 = v366;
      static Date.distantPast.getter();
      v226 = (v128)(v224, 1, v127);
      v227 = v386;
      v107 = v376;
      if (v226 != 1)
      {
        outlined destroy of UTType?(v224, &_s10Foundation4DateVSgMd);
      }
    }

    else
    {
      v225 = v366;
      (*(v378 + 32))(v366, v224, v127);
      v227 = v386;
      v107 = v376;
    }

    v228 = v225;
    v229 = dispatch thunk of CustomStringConvertible.description.getter();
    v231 = v230;
    (*&v381)(v228, v127);
    v232 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v229, v231, &v388);

    *(v145 + 14) = v232;
    *(v145 + 22) = 2080;
    v234 = v364;
    (v380)(v233);
    v235 = v382;
    if (v383(v234, 1, v382) == 1)
    {
      v236 = 7104878;
      outlined destroy of UTType?(v234, &_s10Foundation4UUIDVSgMd);
      v237 = 0xE300000000000000;
    }

    else
    {
      v236 = UUID.uuidString.getter();
      v237 = v238;
      (*(v227 + 8))(v234, v235);
    }

    v239 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v236, v237, &v388);

    *(v145 + 24) = v239;
    _os_log_impl(&dword_21607C000, v107, v374, "[comparator] startDate mismatch, lhs=%s, rhs=%s, suggestionID=%s", v145, 0x20u);
    v240 = v370;
    goto LABEL_135;
  }

  v137 = (*v96 + 776);
  v138 = *v137;
  v139 = v368;
  (*v137)(v136);
  if ((v128)(v139, 1, v127) == 1)
  {
    static Date.distantFuture.getter();
    v140 = (v128)(v139, 1, v127) == 1;
    v141 = v139;
    v142 = v370;
    if (!v140)
    {
      v141 = outlined destroy of UTType?(v141, &_s10Foundation4DateVSgMd);
    }
  }

  else
  {
    v141 = (*(v126 + 32))(v376, v139, v127);
    v142 = v370;
  }

  v167 = *(*v384 + 776);
  v374 = (*v384 + 776);
  v375 = v167;
  v167(v141);
  if ((v128)(v142, 1, v127) == 1)
  {
    v168 = v369;
    static Date.distantFuture.getter();
    if ((v128)(v142, 1, v127) != 1)
    {
      outlined destroy of UTType?(v142, &_s10Foundation4DateVSgMd);
    }
  }

  else
  {
    v168 = v369;
    (*(v126 + 32))(v369, v142, v127);
  }

  v169 = v376;
  v170 = static Date.== infix(_:_:)();
  v171 = v168;
  v172 = v381;
  (*&v381)(v171, v127);
  v173 = (*&v172)(v169, v127);
  if ((v170 & 1) == 0)
  {
    if (one-time initialization token for processing != -1)
    {
LABEL_238:
      swift_once();
    }

    v211 = type metadata accessor for Logger();
    __swift_project_value_buffer(v211, static CommonLogger.processing);

    v107 = Logger.logObject.getter();
    v212 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v107, v212))
    {
      goto LABEL_137;
    }

    LODWORD(v373) = v212;
    v376 = v107;
    v145 = swift_slowAlloc();
    *&v213 = COERCE_DOUBLE(swift_slowAlloc());
    v372 = v213;
    v388 = *&v213;
    *v145 = 136315650;
    v214 = v360;
    (v138)(v213);
    if ((v128)(v214, 1, v127) == 1)
    {
      v215 = v358;
      static Date.distantFuture.getter();
      if ((v128)(v214, 1, v127) != 1)
      {
        outlined destroy of UTType?(v214, &_s10Foundation4DateVSgMd);
      }
    }

    else
    {
      v215 = v358;
      (*(v378 + 32))(v358, v214, v127);
    }

    lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    v254 = dispatch thunk of CustomStringConvertible.description.getter();
    v256 = v255;
    (*&v381)(v215, v127);
    v257 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v254, v256, &v388);

    *(v145 + 4) = v257;
    *(v145 + 12) = 2080;
    v259 = v362;
    v375(v258);
    if ((v128)(v259, 1, v127) == 1)
    {
      v260 = v361;
      static Date.distantFuture.getter();
      v261 = (v128)(v259, 1, v127);
      v262 = v386;
      v107 = v376;
      if (v261 != 1)
      {
        outlined destroy of UTType?(v259, &_s10Foundation4DateVSgMd);
      }
    }

    else
    {
      v260 = v361;
      (*(v378 + 32))(v361, v259, v127);
      v262 = v386;
      v107 = v376;
    }

    v263 = v260;
    v264 = dispatch thunk of CustomStringConvertible.description.getter();
    v266 = v265;
    (*&v381)(v263, v127);
    v267 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v264, v266, &v388);

    *(v145 + 14) = v267;
    *(v145 + 22) = 2080;
    v269 = v359;
    (v380)(v268);
    v270 = v382;
    if (v383(v269, 1, v382) == 1)
    {
      v271 = 7104878;
      outlined destroy of UTType?(v269, &_s10Foundation4UUIDVSgMd);
      v272 = 0xE300000000000000;
    }

    else
    {
      v271 = UUID.uuidString.getter();
      v272 = v273;
      (*(v262 + 8))(v269, v270);
    }

    v274 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v271, v272, &v388);

    *(v145 + 24) = v274;
    _os_log_impl(&dword_21607C000, v107, v373, "[comparator] endDate mismatch, lhs=%s, rhs=%s, suggestionID=%s", v145, 0x20u);
    v240 = v372;
LABEL_135:
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v240, -1, -1);
    v166 = v145;
    goto LABEL_136;
  }

  v174 = (*v96 + 872);
  v175 = *v174;
  v176 = COERCE_DOUBLE((*v174)(v173));
  v178 = v177;
  v179 = v176 * 1000.0;
  v180 = v384;
  v181 = (*v384 + 872);
  v182 = *v181;
  v184 = COERCE_DOUBLE((*v181)(COERCE_DOUBLE(*&v176))) * 1000.0;
  if (v178)
  {
    v185 = -1000.0;
  }

  else
  {
    v185 = v179;
  }

  v186 = round(v185) / 1000.0;
  if (v183)
  {
    v184 = -1000.0;
  }

  if (v186 != round(v184) / 1000.0)
  {
    if (one-time initialization token for processing != -1)
    {
      swift_once();
    }

    v241 = type metadata accessor for Logger();
    __swift_project_value_buffer(v241, static CommonLogger.processing);

    v107 = Logger.logObject.getter();
    v242 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v107, v242))
    {
      goto LABEL_137;
    }

    v119 = swift_slowAlloc();
    v243 = COERCE_DOUBLE(swift_slowAlloc());
    v381 = v243;
    v388 = v243;
    *v119 = 134218498;
    *&v244 = COERCE_DOUBLE(v175(*&v243));
    v245 = *&v244;
    if (v246)
    {
      v245 = -1.0;
    }

    *(v119 + 4) = v245;
    *(v119 + 12) = 2048;
    *&v247 = COERCE_DOUBLE((v182)(v244));
    v248 = *&v247;
    if (v249)
    {
      v248 = -1.0;
    }

    *(v119 + 14) = v248;
    *(v119 + 22) = 2080;
    v250 = v357;
    (v380)(v247);
    v251 = v382;
    if (v383(v250, 1, v382) == 1)
    {
      v252 = 7104878;
      outlined destroy of UTType?(v250, &_s10Foundation4UUIDVSgMd);
      v253 = 0xE300000000000000;
    }

    else
    {
      v252 = UUID.uuidString.getter();
      v253 = v307;
      (*(v386 + 8))(v250, v251);
    }

    v308 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v252, v253, &v388);

    *(v119 + 24) = v308;
    v309 = "[comparator] ranking score mismatch, lhs=%f, rhs=%f, suggestionID=%s";
    goto LABEL_170;
  }

  v388 = *&v96;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type Double? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();

  v187 = v389;
  v188 = v388 * 1000.0;
  v388 = *&v180;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  PersistentModel.getValue<A>(forKey:)();

  v190 = v388 * 1000.0;
  if (v187)
  {
    v191 = -1000.0;
  }

  else
  {
    v191 = v188;
  }

  v192 = round(v191) / 1000.0;
  if (v389)
  {
    v190 = -1000.0;
  }

  if (v192 != round(v190) / 1000.0)
  {
    if (one-time initialization token for processing != -1)
    {
      swift_once();
    }

    v276 = type metadata accessor for Logger();
    __swift_project_value_buffer(v276, static CommonLogger.processing);

    v277 = *&v384;

    v107 = Logger.logObject.getter();
    v278 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v107, v278))
    {
      goto LABEL_137;
    }

    LODWORD(v381) = v278;
    v279 = swift_slowAlloc();
    v378 = swift_slowAlloc();
    v387 = v378;
    v388 = *&v96;
    *v279 = 134218498;
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    PersistentModel.getValue<A>(forKey:)();

    v280 = v388;
    if (v389)
    {
      v280 = -1.0;
    }

    *(v279 + 4) = v280;
    *(v279 + 12) = 2048;
    v388 = v277;
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    PersistentModel.getValue<A>(forKey:)();

    v282 = v388;
    if (v389)
    {
      v282 = -1.0;
    }

    *(v279 + 14) = v282;
    *(v279 + 22) = 2080;
    v283 = v356;
    (v380)(v281);
    v284 = v382;
    if (v383(v283, 1, v382) == 1)
    {
      v285 = 7104878;
      outlined destroy of UTType?(v283, &_s10Foundation4UUIDVSgMd);
      v286 = 0xE300000000000000;
    }

    else
    {
      v285 = UUID.uuidString.getter();
      v286 = v313;
      (*(v386 + 8))(v283, v284);
    }

    v314 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v285, v286, &v387);

    *(v279 + 24) = v314;
    _os_log_impl(&dword_21607C000, v107, LOBYTE(v381), "[comparator] baseScore mismatch, lhs=%f, rhs=%f, suggestionID=%s", v279, 0x20u);
    v315 = v378;
    __swift_destroy_boxed_opaque_existential_1(v378);
    MEMORY[0x21CE94770](v315, -1, -1);
    v166 = v279;
    goto LABEL_136;
  }

  v193 = (*v96 + 968);
  v194 = *v193;
  v195 = COERCE_DOUBLE((*v193)(v189));
  v197 = v196;
  v198 = v195 * 1000.0;
  v199 = (*v180 + 968);
  v200 = *v199;
  v202 = COERCE_DOUBLE((*v199)(COERCE_DOUBLE(*&v195))) * 1000.0;
  if (v197)
  {
    v203 = -1000.0;
  }

  else
  {
    v203 = v198;
  }

  v204 = round(v203) / 1000.0;
  if (v201)
  {
    v202 = -1000.0;
  }

  if (v204 != round(v202) / 1000.0)
  {
    if (one-time initialization token for processing != -1)
    {
      swift_once();
    }

    v287 = type metadata accessor for Logger();
    __swift_project_value_buffer(v287, static CommonLogger.processing);

    v107 = Logger.logObject.getter();
    v242 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v107, v242))
    {
      goto LABEL_137;
    }

    v119 = swift_slowAlloc();
    v288 = COERCE_DOUBLE(swift_slowAlloc());
    v381 = v288;
    v388 = v288;
    *v119 = 134218498;
    *&v289 = COERCE_DOUBLE(v194(*&v288));
    v290 = *&v289;
    if (v291)
    {
      v290 = -1.0;
    }

    *(v119 + 4) = v290;
    *(v119 + 12) = 2048;
    *&v292 = COERCE_DOUBLE((v200)(v289));
    v293 = *&v292;
    if (v294)
    {
      v293 = -1.0;
    }

    *(v119 + 14) = v293;
    *(v119 + 22) = 2080;
    v295 = &v387;
LABEL_164:
    v303 = *(v295 - 32);
    (v380)(v292);
    v304 = v382;
    if (v383(v303, 1, v382) == 1)
    {
      v305 = 7104878;
      outlined destroy of UTType?(v303, &_s10Foundation4UUIDVSgMd);
      v306 = 0xE300000000000000;
    }

    else
    {
      v305 = UUID.uuidString.getter();
      v306 = v310;
      (*(v386 + 8))(v303, v304);
    }

    v311 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v305, v306, &v388);

    *(v119 + 24) = v311;
    v309 = "[comparator] goodnessScore mismatch, lhs=%f, rhs=%f, suggestionID=%s";
LABEL_170:
    _os_log_impl(&dword_21607C000, v107, v242, v309, v119, 0x20u);
    v312 = v381;
    __swift_destroy_boxed_opaque_existential_1(*&v381);
    v218 = v312;
LABEL_107:
    MEMORY[0x21CE94770](*&v218, -1, -1);
    v166 = v119;
LABEL_136:
    MEMORY[0x21CE94770](v166, -1, -1);
LABEL_137:

    return 0;
  }

  DBSuggestion.visibilityCategory.getter(&v388);
  v205 = LOBYTE(v388);
  v206 = DBSuggestion.visibilityCategory.getter(&v387);
  if (v205 != v387)
  {
    if (one-time initialization token for processing == -1)
    {
LABEL_158:
      v296 = type metadata accessor for Logger();
      __swift_project_value_buffer(v296, static CommonLogger.processing);

      v107 = Logger.logObject.getter();
      v242 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v107, v242))
      {
        goto LABEL_137;
      }

      v119 = swift_slowAlloc();
      v297 = COERCE_DOUBLE(swift_slowAlloc());
      v381 = v297;
      v388 = v297;
      *v119 = 134218498;
      *&v298 = COERCE_DOUBLE(v194(*&v297));
      v299 = *&v298;
      if (v300)
      {
        v299 = -1.0;
      }

      *(v119 + 4) = v299;
      *(v119 + 12) = 2048;
      *&v292 = COERCE_DOUBLE((v200)(v298));
      v301 = *&v292;
      if (v302)
      {
        v301 = -1.0;
      }

      *(v119 + 14) = v301;
      *(v119 + 22) = 2080;
      v295 = &v386;
      goto LABEL_164;
    }

LABEL_240:
    swift_once();
    goto LABEL_158;
  }

  v207 = (*v96 + 1112);
  v127 = *v207;
  v208 = (*v207)(v206);
  v209 = v208;
  if (v208)
  {
    if (v208 >> 62)
    {
      v210 = __CocoaSet.count.getter();
    }

    else
    {
      v210 = *((v208 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v210 = 0;
  }

  v316 = (*v180 + 1112);
  v317 = *v316;
  v194 = v316;
  v318 = (*v316)(v208);
  if (!v318)
  {
    if (!v209)
    {
      goto LABEL_187;
    }

    goto LABEL_180;
  }

  if (!(v318 >> 62))
  {
    v319 = *((v318 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v209)
    {
      goto LABEL_177;
    }

LABEL_180:
    if (one-time initialization token for processing != -1)
    {
      swift_once();
    }

    v320 = type metadata accessor for Logger();
    __swift_project_value_buffer(v320, static CommonLogger.processing);

    v107 = Logger.logObject.getter();
    v321 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v107, v321))
    {
      LODWORD(v381) = v321;
      v322 = -1;
      v323 = swift_slowAlloc();
      *&v324 = COERCE_DOUBLE(swift_slowAlloc());
      v388 = *&v324;
      *v323 = 134218498;
      v325 = (v127)(v324);
      if (v325)
      {
        v326 = v386;
        if (v325 >> 62)
        {
          v322 = __CocoaSet.count.getter();
        }

        else
        {
          v322 = *((v325 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }
      }

      else
      {
        v326 = v386;
      }

      *(v323 + 4) = v322;

      *(v323 + 12) = 2048;
      v336 = v317(v335);
      if (v336)
      {
        v337 = v353;
        if (v336 >> 62)
        {
          v338 = __CocoaSet.count.getter();
        }

        else
        {
          v338 = *((v336 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }
      }

      else
      {
        v338 = -1;
        v337 = v353;
      }

      *(v323 + 14) = v338;

      *(v323 + 22) = 2080;
      (v380)(v339);
      v340 = v382;
      if (v383(v337, 1, v382) == 1)
      {
        v341 = 7104878;
        outlined destroy of UTType?(v337, &_s10Foundation4UUIDVSgMd);
        v342 = 0xE300000000000000;
      }

      else
      {
        v341 = UUID.uuidString.getter();
        v342 = v343;
        (*(v326 + 8))(v337, v340);
      }

      v344 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v341, v342, &v388);

      *(v323 + 24) = v344;
      _os_log_impl(&dword_21607C000, v107, LOBYTE(v381), "[comparator] asset count mismatch, lhs=%ld, rhs=%ld, suggestionID=%s", v323, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v324);
      MEMORY[0x21CE94770](v324, -1, -1);
      v166 = v323;
      goto LABEL_136;
    }

LABEL_216:

    return 0;
  }

  v319 = __CocoaSet.count.getter();

  if (!v209)
  {
    goto LABEL_180;
  }

LABEL_177:
  if (v210 != v319)
  {
    goto LABEL_180;
  }

LABEL_187:
  result = (v127)(v318);
  if (result)
  {
    v327 = result;
    v328 = v317(result);
    if (!v328)
    {

      return 0;
    }

    v329 = v328;
    v128 = (v327 & 0xFFFFFFFFFFFFFF8);
    if (v327 >> 62)
    {
      goto LABEL_245;
    }

    v330 = *((v327 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v330)
    {
      goto LABEL_246;
    }

    while (1)
    {
      v331 = v329 & 0xF8;
      v376 = v128;
      if (v329 >> 62)
      {
        v332 = __CocoaSet.count.getter();
      }

      else
      {
        v332 = *((v329 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *&v200 = 0.0;
      *&v381 = v327 & 0xC000000000000001;
      v377 = v327;
      v378 = v330;
      v375 = (v327 + 32);
      v128 = (v329 & 0xC000000000000001);
LABEL_194:
      if (v381 != 0.0)
      {
        v327 = MEMORY[0x21CE93180](v200, v377);
        goto LABEL_198;
      }

      if (v200 < v376[2].isa)
      {
        break;
      }

      __break(1u);
LABEL_245:
      v330 = __CocoaSet.count.getter();
      if (!v330)
      {
        goto LABEL_246;
      }
    }

    v327 = *(v375 + v200);

LABEL_198:
    if (!__OFADD__(v200++, 1))
    {
      if (!v332)
      {
LABEL_228:

        if (one-time initialization token for processing != -1)
        {
          swift_once();
        }

        v345 = type metadata accessor for Logger();
        __swift_project_value_buffer(v345, static CommonLogger.processing);

        v128 = Logger.logObject.getter();
        v331 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v128, v331))
        {
          v332 = swift_slowAlloc();
          *&v200 = COERCE_DOUBLE(swift_slowAlloc());
          v388 = *&v200;
          *v332 = 136315138;
          v127 = v352;
          (v380)(v200);
          v194 = v382;
          if (v383(v127, 1, v382) == 1)
          {
            v346 = 7104878;
            outlined destroy of UTType?(v127, &_s10Foundation4UUIDVSgMd);
            v347 = 0xE300000000000000;
          }

          else
          {
LABEL_234:
            v346 = UUID.uuidString.getter();
            v347 = v348;
            (*(v386 + 8))(v127, v194);
          }

          v349 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v346, v347, &v388);

          *(v332 + 4) = v349;
          _os_log_impl(&dword_21607C000, v128, v331, "[comparator] asset metadata hash check mismatch suggestionID=%s", v332, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v200);
          MEMORY[0x21CE94770](v200, -1, -1);
          MEMORY[0x21CE94770](v332, -1, -1);
        }

        goto LABEL_216;
      }

      LODWORD(v384) = 0;
      v138 = 0;
      do
      {
        while (1)
        {
          if (v128)
          {
            v194 = MEMORY[0x21CE93180](v138, v329);
            v334 = (v138 + 1);
            if (__OFADD__(v138, 1))
            {
              goto LABEL_233;
            }
          }

          else
          {
            if (v138 >= *((v329 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_238;
            }

            v194 = *(v329 + 8 * v138 + 32);

            v334 = (v138 + 1);
            if (__OFADD__(v138, 1))
            {
LABEL_233:
              __break(1u);
              goto LABEL_234;
            }
          }

          v127 = specialized static DBAsset.== infix(_:_:)(v327, v194);

          if ((v127 & 1) == 0)
          {
            break;
          }

          LODWORD(v384) = 1;
          v138 = v334;
          if (v334 == v332)
          {
            goto LABEL_213;
          }
        }

        ++v138;
      }

      while (v334 != v332);
      if ((v384 & 1) == 0)
      {
        goto LABEL_228;
      }

LABEL_213:

      if (v200 != v378)
      {
        goto LABEL_194;
      }

LABEL_246:

      return 1;
    }

    __break(1u);
    goto LABEL_240;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Double? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type Double? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type Double? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSdSgMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Double? and conformance <A> A?);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Double? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type Double? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSdSgMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Double? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [DBAsset]? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type [DBAsset]? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type [DBAsset]? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9MomentsUI7DBAssetCGSgMd);
    lazy protocol witness table accessor for type [DBAsset] and conformance <A> [A]();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DBAsset]? and conformance <A> A?);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [DBAsset]? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type [DBAsset]? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9MomentsUI7DBAssetCGSgMd);
    lazy protocol witness table accessor for type [DBAsset] and conformance <A> [A]();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DBAsset]? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [DBAssetData]? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type [DBAssetData]? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type [DBAssetData]? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9MomentsUI11DBAssetDataCGSgMd);
    lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type [DBAssetData] and conformance [A], &_sSay9MomentsUI11DBAssetDataCGMd);
    lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DBAssetData]? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [DBSnapshot]? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type [DBSnapshot]? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type [DBSnapshot]? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9MomentsUI10DBSnapshotCGSgMd);
    lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type [DBSnapshot] and conformance [A], &_sSay9MomentsUI10DBSnapshotCGMd);
    lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DBSnapshot]? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UUID? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type UUID? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type UUID? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4UUIDVSgMd);
    lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID? and conformance <A> A?);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UUID? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type UUID? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4UUIDVSgMd);
    lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID? and conformance <A> A?);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UUID? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type UUID? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4UUIDVSgMd);
    lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DBSuggestion.SuggestionType? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type DBSuggestion.SuggestionType? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type DBSuggestion.SuggestionType? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9MomentsUI12DBSuggestionC14SuggestionTypeOSgMd);
    lazy protocol witness table accessor for type DBSuggestion.SuggestionType and conformance DBSuggestion.SuggestionType();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBSuggestion.SuggestionType? and conformance <A> A?);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBSuggestion.SuggestionType? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type DBSuggestion.SuggestionType? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9MomentsUI12DBSuggestionC14SuggestionTypeOSgMd);
    lazy protocol witness table accessor for type DBSuggestion.SuggestionType and conformance DBSuggestion.SuggestionType();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBSuggestion.SuggestionType? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DBSuggestion.SuggestionType and conformance DBSuggestion.SuggestionType()
{
  result = lazy protocol witness table cache variable for type DBSuggestion.SuggestionType and conformance DBSuggestion.SuggestionType;
  if (!lazy protocol witness table cache variable for type DBSuggestion.SuggestionType and conformance DBSuggestion.SuggestionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBSuggestion.SuggestionType and conformance DBSuggestion.SuggestionType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBSuggestion.SuggestionType and conformance DBSuggestion.SuggestionType;
  if (!lazy protocol witness table cache variable for type DBSuggestion.SuggestionType and conformance DBSuggestion.SuggestionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBSuggestion.SuggestionType and conformance DBSuggestion.SuggestionType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBSuggestion.SuggestionType and conformance DBSuggestion.SuggestionType;
  if (!lazy protocol witness table cache variable for type DBSuggestion.SuggestionType and conformance DBSuggestion.SuggestionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBSuggestion.SuggestionType and conformance DBSuggestion.SuggestionType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBSuggestion.SuggestionType and conformance DBSuggestion.SuggestionType;
  if (!lazy protocol witness table cache variable for type DBSuggestion.SuggestionType and conformance DBSuggestion.SuggestionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBSuggestion.SuggestionType and conformance DBSuggestion.SuggestionType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UInt? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type UInt? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type UInt? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSuSgMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt? and conformance <A> A?);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UInt? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type UInt? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSuSgMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DBSuggestion.SuggestionSubType and conformance DBSuggestion.SuggestionSubType()
{
  result = lazy protocol witness table cache variable for type DBSuggestion.SuggestionSubType and conformance DBSuggestion.SuggestionSubType;
  if (!lazy protocol witness table cache variable for type DBSuggestion.SuggestionSubType and conformance DBSuggestion.SuggestionSubType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBSuggestion.SuggestionSubType and conformance DBSuggestion.SuggestionSubType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBSuggestion.SuggestionSubType and conformance DBSuggestion.SuggestionSubType;
  if (!lazy protocol witness table cache variable for type DBSuggestion.SuggestionSubType and conformance DBSuggestion.SuggestionSubType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBSuggestion.SuggestionSubType and conformance DBSuggestion.SuggestionSubType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DBSuggestion.VisibilityCategory and conformance DBSuggestion.VisibilityCategory()
{
  result = lazy protocol witness table cache variable for type DBSuggestion.VisibilityCategory and conformance DBSuggestion.VisibilityCategory;
  if (!lazy protocol witness table cache variable for type DBSuggestion.VisibilityCategory and conformance DBSuggestion.VisibilityCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBSuggestion.VisibilityCategory and conformance DBSuggestion.VisibilityCategory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBSuggestion.VisibilityCategory and conformance DBSuggestion.VisibilityCategory;
  if (!lazy protocol witness table cache variable for type DBSuggestion.VisibilityCategory and conformance DBSuggestion.VisibilityCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBSuggestion.VisibilityCategory and conformance DBSuggestion.VisibilityCategory);
  }

  return result;
}

uint64_t type metadata completion function for DBSuggestion()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?> and conformance <> PredicateExpressions.KeyPath<A, B>(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBAssetData> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI11DBAssetDataCGMd);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t specialized closure #1 in DBSuggestion._assetDict.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v0 - 8);
  v121 = &v91 - v1;
  v132 = type metadata accessor for PersistentIdentifier();
  v130 = *(v132 - 8);
  v2 = MEMORY[0x28223BE20](v132);
  v113 = &v91 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v131 = &v91 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI11DBAssetDataC_QPGSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v91 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15FetchDescriptorVy9MomentsUI07DBAssetB0CGMd);
  v115 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v114 = &v91 - v12;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v119 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v112 = &v91 - v18;
  MEMORY[0x28223BE20](v17);
  v122 = &v91 - v19;
  v20 = type metadata accessor for Logger();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_9SwiftData20PersistentIdentifierVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  v25 = Strong;
  v103 = v14;
  type metadata accessor for DBSuggestion();
  lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  if (!PersistentModel.modelContext.getter())
  {
    if (one-time initialization token for Log != -1)
    {
LABEL_45:
      swift_once();
    }

    v42 = __swift_project_value_buffer(v20, static DBSuggestion.Log);
    swift_beginAccess();
    (*(v21 + 16))(v23, v42, v20);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v133[0] = v46;
      *v45 = 136446210;
      *(v45 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x694474657373615FLL, 0xEA00000000007463, v133);
      _os_log_impl(&dword_21607C000, v43, v44, "DBSuggestion.%{public}s _assetDict: no model context", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x21CE94770](v46, -1, -1);
      MEMORY[0x21CE94770](v45, -1, -1);
    }

    (*(v21 + 8))(v23, v20);
    v47 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_9SwiftData20PersistentIdentifierVTt0g5Tf4g_n(MEMORY[0x277D84F90]);

    return v47;
  }

  v26 = dispatch thunk of ModelContext.container.getter();

  type metadata accessor for ModelContext();
  swift_allocObject();

  v27 = ModelContext.init(_:)();
  if (!(*(*v25 + 1160))())
  {
    v48 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_9SwiftData20PersistentIdentifierVTt0g5Tf4g_n(MEMORY[0x277D84F90]);

    return v48;
  }

  v102 = v13;
  v101 = v26;

  v29 = *(*v25 + 296);
  v125 = v27;
  v30 = v122;
  v29(v28);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI11DBAssetDataC_QPGMd);
  v32 = *(v31 - 8);
  v33 = *(v32 + 56);
  v123 = v32 + 56;
  v124 = v33;
  v34 = v7;
  v33(v7, 1, 1, v31);
  v35 = type metadata accessor for DBAssetData();
  v36 = lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBAssetData and conformance DBAssetData, type metadata accessor for DBAssetData);
  v37 = v114;
  FetchDescriptor.init(predicate:sortBy:)();
  v38 = FetchDescriptor.includePendingChanges.setter();
  v100 = &v91;
  MEMORY[0x28223BE20](v38);
  *(&v91 - 2) = v30;
  v133[1] = v35;
  Predicate.init(_:)();
  v120 = v31;
  v124(v34, 0, 1, v31);
  FetchDescriptor.predicate.setter();
  v20 = 0;
  v39 = dispatch thunk of ModelContext.fetchIdentifiers<A>(_:)();
  v49 = v34;
  v109 = v36;
  v110 = v35;
  v118 = v39;
  v99 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_9SwiftData20PersistentIdentifierVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v50 = v103;
  if (!v118)
  {
    v48 = v99;
    v52 = v102;
    v40 = v122;
    (*(v115 + 8))(v37, v8);

LABEL_42:
    (*(v50 + 8))(v40, v52);
    return v48;
  }

  v51 = *(v118 + 16);
  v52 = v102;
  if (!v51)
  {

LABEL_41:
    v40 = v122;

    (*(v115 + 8))(v37, v8);
    v48 = v99;
    goto LABEL_42;
  }

  v108 = v49;
  v53 = 0;
  v117 = *(v130 + 16);
  v54 = v118 + ((*(v130 + 80) + 32) & ~*(v130 + 80));
  v106 = (v115 + 8);
  v111 = *(v130 + 72);
  v98 = (v103 + 48);
  v95 = (v103 + 32);
  v96 = (v103 + 16);
  v93 = (v130 + 32);
  v94 = (v103 + 8);
  v92 = (v130 + 40);
  v130 += 16;
  v105 = (v130 - 8);
  v104 = v51 - 1;
  v107 = xmmword_21658E210;
  v97 = v8;
  v116 = v25;
  while (1)
  {
    v129 = v53;
    v55 = v131;
    v126 = v54;
    v56 = v117(v131);
    v127 = MEMORY[0x21CE93DB0](v56);
    v57 = v11;
    v58 = v108;
    v21 = v120;
    v59 = v124;
    v124(v108, 1, 1, v120);
    v23 = v110;
    FetchDescriptor.init(predicate:sortBy:)();
    v60 = FetchDescriptor.includePendingChanges.setter();
    v128 = &v91;
    MEMORY[0x28223BE20](v60);
    *(&v91 - 2) = v55;
    Predicate.init(_:)();
    v59(v58, 0, 1, v21);
    v11 = v57;
    FetchDescriptor.predicate.setter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v61 = swift_allocObject();
    *(v61 + 16) = v107;
    *(v61 + 32) = swift_getKeyPath();
    FetchDescriptor.propertiesToFetch.setter();
    v62 = dispatch thunk of ModelContext.fetch<A>(_:)();
    if (v62 >> 62)
    {
      v89 = v62;
      v90 = __CocoaSet.count.getter();
      v62 = v89;
      v63 = v121;
      if (!v90)
      {
LABEL_36:
        (*v106)(v57, v8);

        goto LABEL_15;
      }
    }

    else
    {
      v63 = v121;
      if (!*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_36;
      }
    }

    if ((v62 & 0xC000000000000001) != 0)
    {
      v64 = MEMORY[0x21CE93180](0);
    }

    else
    {
      if (!*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_44;
      }

      v64 = *(v62 + 32);
    }

    (*(*v64 + 192))(v65);
    v66 = v102;
    if ((*v98)(v63, 1, v102) == 1)
    {
      v67 = v97;
      (*v106)(v57, v97);
      v8 = v67;

      outlined destroy of UTType?(v63, &_s10Foundation4UUIDVSgMd);
      goto LABEL_15;
    }

    v68 = v112;
    (*v95)(v112, v63, v66);
    v23 = *v96;
    v69 = v119;
    (*v96)(v119, v68, v66);
    (v117)(v113, v131, v132);
    v70 = v99;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v133[0] = v70;
    v73 = specialized __RawDictionaryStorage.find<A>(_:)(v69);
    v74 = *(v70 + 16);
    v75 = (v72 & 1) == 0;
    v76 = v74 + v75;
    if (__OFADD__(v74, v75))
    {
      break;
    }

    v21 = v72;
    if (*(v70 + 24) >= v76)
    {
      v79 = v103;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
        v79 = v103;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v76, isUniquelyReferenced_nonNull_native);
      v77 = specialized __RawDictionaryStorage.find<A>(_:)(v119);
      if ((v21 & 1) != (v78 & 1))
      {
        goto LABEL_48;
      }

      v73 = v77;
      v79 = v103;
    }

    v80 = v133[0];
    v99 = v133[0];
    if (v21)
    {
      (*v92)(*(v133[0] + 56) + v73 * v111, v113, v132);

      v81 = *v94;
      v82 = v102;
      (*v94)(v119, v102);
      v81(v112, v82);
      v8 = v97;
      (*v106)(v11, v97);
    }

    else
    {
      *(v133[0] + 8 * (v73 >> 6) + 64) |= 1 << v73;
      v21 = v119;
      v83 = v79;
      v84 = v102;
      (v23)(v80[6] + *(v79 + 72) * v73, v119, v102);
      (*v93)(v80[7] + v73 * v111, v113, v132);

      v85 = *(v83 + 8);
      v23 = v94;
      v85(v21, v84);
      v85(v112, v84);
      v8 = v97;
      (*v106)(v11, v97);
      v86 = v80[2];
      v87 = __OFADD__(v86, 1);
      v88 = v86 + 1;
      if (v87)
      {
        goto LABEL_47;
      }

      v80[2] = v88;
    }

LABEL_15:
    objc_autoreleasePoolPop(v127);
    (*v105)(v131, v132);
    if (v104 == v129)
    {

      v52 = v102;
      v50 = v103;
      v37 = v114;
      goto LABEL_41;
    }

    v53 = v129 + 1;
    v54 = v126 + v111;
    if ((v129 + 1) >= *(v118 + 16))
    {
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, PersistentIdentifier>, PredicateExpressions.Value<PersistentIdentifier>> and conformance <> PredicateExpressions.Equal<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, PersistentIdentifier>, PredicateExpressions.Value<PersistentIdentifier>> and conformance <> PredicateExpressions.Equal<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, PersistentIdentifier>, PredicateExpressions.Value<PersistentIdentifier>> and conformance <> PredicateExpressions.Equal<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCG05SwiftK020PersistentIdentifierVGAC5ValueVy_APGGMd);
    lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?> and conformance <> PredicateExpressions.KeyPath<A, B>(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, PersistentIdentifier> and conformance <> PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCG05SwiftJ020PersistentIdentifierVGMd);
    lazy protocol witness table accessor for type PredicateExpressions.Value<PersistentIdentifier> and conformance <A> PredicateExpressions.Value<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, PersistentIdentifier>, PredicateExpressions.Value<PersistentIdentifier>> and conformance <> PredicateExpressions.Equal<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Value<PersistentIdentifier> and conformance <A> PredicateExpressions.Value<A>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Value<PersistentIdentifier> and conformance <A> PredicateExpressions.Value<A>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Value<PersistentIdentifier> and conformance <A> PredicateExpressions.Value<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5ValueVy_9SwiftData20PersistentIdentifierVGMd);
    v1 = MEMORY[0x277CDD538];
    lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type PersistentIdentifier and conformance PersistentIdentifier, MEMORY[0x277CDD538]);
    lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type PersistentIdentifier and conformance PersistentIdentifier, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Value<PersistentIdentifier> and conformance <A> PredicateExpressions.Value<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, [DBSuggestion]?>, [DBSuggestion], PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, [DBSuggestion]?>, [DBSuggestion], PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, [DBSuggestion]?>, [DBSuggestion], PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO11NilCoalesceVy_AC15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSayAL12DBSuggestionCGSgGArC21SequenceContainsWhereVy_AKy_ARGAC5EqualVy_AIy_AKy_AQGAA4UUIDVGAC5ValueVy_A0_GGGSbGA3_y_SbGGMd);
    lazy protocol witness table accessor for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, [DBSuggestion]?>, [DBSuggestion], PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>();
    lazy protocol witness table accessor for type PredicateExpressions.Value<Bool> and conformance <A> PredicateExpressions.Value<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, [DBSuggestion]?>, [DBSuggestion], PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, [DBSuggestion]?>, [DBSuggestion], PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, [DBSuggestion]?>, [DBSuggestion], PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, [DBSuggestion]?>, [DBSuggestion], PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSayAJ12DBSuggestionCGSgGApC21SequenceContainsWhereVy_AIy_APGAC5EqualVy_AGy_AIy_AOGAA4UUIDVGAC5ValueVy_AZGGGSbGMd);
    lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?> and conformance <> PredicateExpressions.KeyPath<A, B>(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, [DBSuggestion]?> and conformance <> PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSayAH12DBSuggestionCGSgGMd);
    lazy protocol witness table accessor for type PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>> and conformance <> PredicateExpressions.SequenceContainsWhere<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, [DBSuggestion]?>, [DBSuggestion], PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>> and conformance <> PredicateExpressions.SequenceContainsWhere<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>> and conformance <> PredicateExpressions.SequenceContainsWhere<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>> and conformance <> PredicateExpressions.SequenceContainsWhere<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO21SequenceContainsWhereVy_AC8VariableVy_Say9MomentsUI12DBSuggestionCGGAC5EqualVy_AC7KeyPathVy_AGy_AJGAA4UUIDVGAC5ValueVy_ASGGGMd);
    lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<[DBSuggestion]> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_Say9MomentsUI12DBSuggestionCGGMd);
    lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>> and conformance <> PredicateExpressions.Equal<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>> and conformance <> PredicateExpressions.SequenceContainsWhere<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, [DBSuggestion]?>, [DBSuggestion], PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.NilLiteral<Bool>>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?>, PredicateExpressions.NilLiteral<Data>>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, [DBSuggestion]?>, [DBSuggestion], PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.NilLiteral<Bool>>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?>, PredicateExpressions.NilLiteral<Data>>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, [DBSuggestion]?>, [DBSuggestion], PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.NilLiteral<Bool>>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?>, PredicateExpressions.NilLiteral<Data>>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO11NilCoalesceVy_AC15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSayAL12DBSuggestionCGSgGArC11ConjunctionVy_AVy_AC21SequenceContainsWhereVy_AKy_ARGAC5EqualVy_AIy_AKy_AQGAA4UUIDVGAC5ValueVy_A2_GGGA_y_AIy_AOSbSgGAC0D7LiteralVy_SbGGGA_y_AIy_AoA0O0VSgGA12_y_A17_GGGSbGA5_y_SbGGMd);
    lazy protocol witness table accessor for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, [DBSuggestion]?>, [DBSuggestion], PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.NilLiteral<Bool>>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?>, PredicateExpressions.NilLiteral<Data>>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>();
    lazy protocol witness table accessor for type PredicateExpressions.Value<Bool> and conformance <A> PredicateExpressions.Value<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, [DBSuggestion]?>, [DBSuggestion], PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.NilLiteral<Bool>>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?>, PredicateExpressions.NilLiteral<Data>>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, [DBSuggestion]?>, [DBSuggestion], PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.NilLiteral<Bool>>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?>, PredicateExpressions.NilLiteral<Data>>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, [DBSuggestion]?>, [DBSuggestion], PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.NilLiteral<Bool>>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?>, PredicateExpressions.NilLiteral<Data>>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, [DBSuggestion]?>, [DBSuggestion], PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.NilLiteral<Bool>>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?>, PredicateExpressions.NilLiteral<Data>>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSayAJ12DBSuggestionCGSgGApC11ConjunctionVy_ATy_AC21SequenceContainsWhereVy_AIy_APGAC5EqualVy_AGy_AIy_AOGAA4UUIDVGAC5ValueVy_A0_GGGAYy_AGy_AMSbSgGAC10NilLiteralVy_SbGGGAYy_AGy_AmA0M0VSgGA10_y_A15_GGGSbGMd);
    lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?> and conformance <> PredicateExpressions.KeyPath<A, B>(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, [DBSuggestion]?> and conformance <> PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSayAH12DBSuggestionCGSgGMd);
    lazy protocol witness table accessor for type PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.NilLiteral<Bool>>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?>, PredicateExpressions.NilLiteral<Data>>> and conformance <> PredicateExpressions.Conjunction<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, [DBSuggestion]?>, [DBSuggestion], PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.NilLiteral<Bool>>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?>, PredicateExpressions.NilLiteral<Data>>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.NilLiteral<Bool>>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?>, PredicateExpressions.NilLiteral<Data>>> and conformance <> PredicateExpressions.Conjunction<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.NilLiteral<Bool>>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?>, PredicateExpressions.NilLiteral<Data>>> and conformance <> PredicateExpressions.Conjunction<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.NilLiteral<Bool>>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?>, PredicateExpressions.NilLiteral<Data>>> and conformance <> PredicateExpressions.Conjunction<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO11ConjunctionVy_AEy_AC21SequenceContainsWhereVy_AC8VariableVy_Say9MomentsUI12DBSuggestionCGGAC5EqualVy_AC7KeyPathVy_AIy_ALGAA4UUIDVGAC5ValueVy_AUGGGAPy_ARy_AIy_AJ11DBAssetDataCGSbSgGAC10NilLiteralVy_SbGGGAPy_ARy_A2_AA0R0VSgGA6_y_A11_GGGMd);
    lazy protocol witness table accessor for type PredicateExpressions.Conjunction<PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.NilLiteral<Bool>>> and conformance <> PredicateExpressions.Conjunction<A, B>();
    lazy protocol witness table accessor for type PredicateExpressions.NotEqual<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?>, PredicateExpressions.NilLiteral<Data>> and conformance <> PredicateExpressions.NotEqual<A, B>(&lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?>, PredicateExpressions.NilLiteral<Data>> and conformance <> PredicateExpressions.Equal<A, B>, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGAA0K0VSgGAC10NilLiteralVy_AOGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Conjunction<PredicateExpressions.Conjunction<PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.NilLiteral<Bool>>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?>, PredicateExpressions.NilLiteral<Data>>> and conformance <> PredicateExpressions.Conjunction<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Conjunction<PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.NilLiteral<Bool>>> and conformance <> PredicateExpressions.Conjunction<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Conjunction<PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.NilLiteral<Bool>>> and conformance <> PredicateExpressions.Conjunction<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Conjunction<PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.NilLiteral<Bool>>> and conformance <> PredicateExpressions.Conjunction<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO11ConjunctionVy_AC21SequenceContainsWhereVy_AC8VariableVy_Say9MomentsUI12DBSuggestionCGGAC5EqualVy_AC7KeyPathVy_AIy_ALGAA4UUIDVGAC5ValueVy_AUGGGAPy_ARy_AIy_AJ11DBAssetDataCGSbSgGAC10NilLiteralVy_SbGGGMd);
    lazy protocol witness table accessor for type PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>> and conformance <> PredicateExpressions.SequenceContainsWhere<A, B>();
    lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.NilLiteral<Bool>> and conformance <> PredicateExpressions.Equal<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Conjunction<PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.NilLiteral<Bool>>> and conformance <> PredicateExpressions.Conjunction<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.NilLiteral<Bool>> and conformance <> PredicateExpressions.Equal<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.NilLiteral<Bool>> and conformance <> PredicateExpressions.Equal<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.NilLiteral<Bool>> and conformance <> PredicateExpressions.Equal<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSbSgGAC10NilLiteralVy_SbGGMd);
    lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?> and conformance <> PredicateExpressions.KeyPath<A, B>(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?> and conformance <> PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSbSgGMd);
    lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.NilLiteral<Bool> and conformance PredicateExpressions.NilLiteral<A>, &_s10Foundation20PredicateExpressionsO10NilLiteralVy_SbGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.NilLiteral<Bool>> and conformance <> PredicateExpressions.Equal<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type PredicateExpressions.NotEqual<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?>, PredicateExpressions.NilLiteral<Data>> and conformance <> PredicateExpressions.NotEqual<A, B>(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?> and conformance <> PredicateExpressions.KeyPath<A, B>(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?> and conformance <> PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGAA0J0VSgGMd);
    lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.NilLiteral<Data> and conformance PredicateExpressions.NilLiteral<A>, &_s10Foundation20PredicateExpressionsO10NilLiteralVy_AA4DataVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, [DBSuggestion]?>, [DBSuggestion], PredicateExpressions.Conditional<PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>>, PredicateExpressions.Disjunction<PredicateExpressions.NotEqual<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?>, PredicateExpressions.NilLiteral<Data>>, PredicateExpressions.NilCoalesce<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.Value<Bool>>>, PredicateExpressions.Value<Bool>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, [DBSuggestion]?>, [DBSuggestion], PredicateExpressions.Conditional<PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>>, PredicateExpressions.Disjunction<PredicateExpressions.NotEqual<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?>, PredicateExpressions.NilLiteral<Data>>, PredicateExpressions.NilCoalesce<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.Value<Bool>>>, PredicateExpressions.Value<Bool>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, [DBSuggestion]?>, [DBSuggestion], PredicateExpressions.Conditional<PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>>, PredicateExpressions.Disjunction<PredicateExpressions.NotEqual<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?>, PredicateExpressions.NilLiteral<Data>>, PredicateExpressions.NilCoalesce<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.Value<Bool>>>, PredicateExpressions.Value<Bool>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO11NilCoalesceVy_AC15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSayAL12DBSuggestionCGSgGArC11ConditionalVy_AC21SequenceContainsWhereVy_AKy_ARGAC5EqualVy_AIy_AKy_AQGAA4UUIDVGAC5ValueVy_A2_GGGAC11DisjunctionVy_AC03NotU0Vy_AIy_AoA0O0VSgGAC0D7LiteralVy_A14_GGAEy_AIy_AOSbSgGA5_y_SbGGGA23_GSbGA23_GMd);
    lazy protocol witness table accessor for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, [DBSuggestion]?>, [DBSuggestion], PredicateExpressions.Conditional<PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>>, PredicateExpressions.Disjunction<PredicateExpressions.NotEqual<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?>, PredicateExpressions.NilLiteral<Data>>, PredicateExpressions.NilCoalesce<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.Value<Bool>>>, PredicateExpressions.Value<Bool>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>();
    lazy protocol witness table accessor for type PredicateExpressions.Value<Bool> and conformance <A> PredicateExpressions.Value<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.NilCoalesce<PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, [DBSuggestion]?>, [DBSuggestion], PredicateExpressions.Conditional<PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>>, PredicateExpressions.Disjunction<PredicateExpressions.NotEqual<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?>, PredicateExpressions.NilLiteral<Data>>, PredicateExpressions.NilCoalesce<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.Value<Bool>>>, PredicateExpressions.Value<Bool>>, Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, [DBSuggestion]?>, [DBSuggestion], PredicateExpressions.Conditional<PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>>, PredicateExpressions.Disjunction<PredicateExpressions.NotEqual<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?>, PredicateExpressions.NilLiteral<Data>>, PredicateExpressions.NilCoalesce<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.Value<Bool>>>, PredicateExpressions.Value<Bool>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, [DBSuggestion]?>, [DBSuggestion], PredicateExpressions.Conditional<PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>>, PredicateExpressions.Disjunction<PredicateExpressions.NotEqual<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?>, PredicateExpressions.NilLiteral<Data>>, PredicateExpressions.NilCoalesce<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.Value<Bool>>>, PredicateExpressions.Value<Bool>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, [DBSuggestion]?>, [DBSuggestion], PredicateExpressions.Conditional<PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>>, PredicateExpressions.Disjunction<PredicateExpressions.NotEqual<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?>, PredicateExpressions.NilLiteral<Data>>, PredicateExpressions.NilCoalesce<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.Value<Bool>>>, PredicateExpressions.Value<Bool>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO15OptionalFlatMapVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSayAJ12DBSuggestionCGSgGApC11ConditionalVy_AC21SequenceContainsWhereVy_AIy_APGAC5EqualVy_AGy_AIy_AOGAA4UUIDVGAC5ValueVy_A0_GGGAC11DisjunctionVy_AC03NotS0Vy_AGy_AmA0M0VSgGAC10NilLiteralVy_A12_GGAC0X8CoalesceVy_AGy_AMSbSgGA3_y_SbGGGA23_GSbGMd);
    lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?> and conformance <> PredicateExpressions.KeyPath<A, B>(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, [DBSuggestion]?> and conformance <> PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSayAH12DBSuggestionCGSgGMd);
    lazy protocol witness table accessor for type PredicateExpressions.Conditional<PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>>, PredicateExpressions.Disjunction<PredicateExpressions.NotEqual<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?>, PredicateExpressions.NilLiteral<Data>>, PredicateExpressions.NilCoalesce<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.Value<Bool>>>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.Conditional<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.OptionalFlatMap<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, [DBSuggestion]?>, [DBSuggestion], PredicateExpressions.Conditional<PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>>, PredicateExpressions.Disjunction<PredicateExpressions.NotEqual<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?>, PredicateExpressions.NilLiteral<Data>>, PredicateExpressions.NilCoalesce<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.Value<Bool>>>, PredicateExpressions.Value<Bool>>, Bool> and conformance <> PredicateExpressions.OptionalFlatMap<A, B, C, D>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Conditional<PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>>, PredicateExpressions.Disjunction<PredicateExpressions.NotEqual<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?>, PredicateExpressions.NilLiteral<Data>>, PredicateExpressions.NilCoalesce<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.Value<Bool>>>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.Conditional<A, B, C>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Conditional<PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>>, PredicateExpressions.Disjunction<PredicateExpressions.NotEqual<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?>, PredicateExpressions.NilLiteral<Data>>, PredicateExpressions.NilCoalesce<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.Value<Bool>>>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.Conditional<A, B, C>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Conditional<PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>>, PredicateExpressions.Disjunction<PredicateExpressions.NotEqual<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?>, PredicateExpressions.NilLiteral<Data>>, PredicateExpressions.NilCoalesce<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.Value<Bool>>>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.Conditional<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO11ConditionalVy_AC21SequenceContainsWhereVy_AC8VariableVy_Say9MomentsUI12DBSuggestionCGGAC5EqualVy_AC7KeyPathVy_AIy_ALGAA4UUIDVGAC5ValueVy_AUGGGAC11DisjunctionVy_AC03NotL0Vy_ARy_AIy_AJ11DBAssetDataCGAA0T0VSgGAC10NilLiteralVy_A8_GGAC0U8CoalesceVy_ARy_A6_SbSgGAXy_SbGGGA19_GMd);
    lazy protocol witness table accessor for type PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>> and conformance <> PredicateExpressions.SequenceContainsWhere<A, B>();
    lazy protocol witness table accessor for type PredicateExpressions.Disjunction<PredicateExpressions.NotEqual<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?>, PredicateExpressions.NilLiteral<Data>>, PredicateExpressions.NilCoalesce<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.Value<Bool>>> and conformance <> PredicateExpressions.Disjunction<A, B>();
    lazy protocol witness table accessor for type PredicateExpressions.Value<Bool> and conformance <A> PredicateExpressions.Value<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Conditional<PredicateExpressions.SequenceContainsWhere<PredicateExpressions.Variable<[DBSuggestion]>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>>>, PredicateExpressions.Disjunction<PredicateExpressions.NotEqual<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?>, PredicateExpressions.NilLiteral<Data>>, PredicateExpressions.NilCoalesce<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.Value<Bool>>>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.Conditional<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Disjunction<PredicateExpressions.NotEqual<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?>, PredicateExpressions.NilLiteral<Data>>, PredicateExpressions.NilCoalesce<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.Value<Bool>>> and conformance <> PredicateExpressions.Disjunction<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Disjunction<PredicateExpressions.NotEqual<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?>, PredicateExpressions.NilLiteral<Data>>, PredicateExpressions.NilCoalesce<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.Value<Bool>>> and conformance <> PredicateExpressions.Disjunction<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Disjunction<PredicateExpressions.NotEqual<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?>, PredicateExpressions.NilLiteral<Data>>, PredicateExpressions.NilCoalesce<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.Value<Bool>>> and conformance <> PredicateExpressions.Disjunction<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO11DisjunctionVy_AC8NotEqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGAA0M0VSgGAC10NilLiteralVy_AQGGAC0N8CoalesceVy_AIy_AOSbSgGAC5ValueVy_SbGGGMd);
    lazy protocol witness table accessor for type PredicateExpressions.NotEqual<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?>, PredicateExpressions.NilLiteral<Data>> and conformance <> PredicateExpressions.NotEqual<A, B>(&lazy protocol witness table cache variable for type PredicateExpressions.NotEqual<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?>, PredicateExpressions.NilLiteral<Data>> and conformance <> PredicateExpressions.NotEqual<A, B>, &_s10Foundation20PredicateExpressionsO8NotEqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGAA0L0VSgGAC10NilLiteralVy_AOGGMd);
    lazy protocol witness table accessor for type PredicateExpressions.NilCoalesce<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Disjunction<PredicateExpressions.NotEqual<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?>, PredicateExpressions.NilLiteral<Data>>, PredicateExpressions.NilCoalesce<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.Value<Bool>>> and conformance <> PredicateExpressions.Disjunction<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.NilCoalesce<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.NilCoalesce<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.NilCoalesce<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO11NilCoalesceVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSbSgGAC5ValueVy_SbGGMd);
    lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Data?> and conformance <> PredicateExpressions.KeyPath<A, B>(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?> and conformance <> PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI11DBAssetDataCGSbSgGMd);
    lazy protocol witness table accessor for type PredicateExpressions.Value<Bool> and conformance <A> PredicateExpressions.Value<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.NilCoalesce<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBAssetData>, Bool?>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.NilCoalesce<A, B>);
  }

  return result;
}

uint64_t closure #1 in DBSuggestion._prompt.setterpartial apply()
{
  return partial apply for closure #1 in DBSuggestion._prompt.setter();
}

{
  return _s9MomentsUI12DBSuggestionC7_prompt33_1DB052C2F87551A7DFBAAEBB3445D63DLLSSSgvsyyXEfU_TA_0();
}

uint64_t static DBPhotoModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_localIdentifier);
  v4 = *(a1 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_localIdentifier + 8);
  v5 = (a2 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_localIdentifier);
  v6 = v5[1];
  result = (v4 | v6) == 0;
  if (v4)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    if (*v3 == *v5 && v4 == v6)
    {
      return 1;
    }

    else
    {
      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t DBPhotoModel.__allocating_init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:baseImage:squareCropRect:landscapeCropRect:portraitCropRect:cloudIdentifier:localIdentifier:renderState:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (**a5)(void, void, void, void), unint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 *a16)
{
  swift_allocObject();
  v23 = specialized DBPhotoModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:baseImage:squareCropRect:landscapeCropRect:portraitCropRect:cloudIdentifier:localIdentifier:renderState:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);

  return v23;
}

uint64_t DBPhotoModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:baseImage:squareCropRect:landscapeCropRect:portraitCropRect:cloudIdentifier:localIdentifier:renderState:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (**a5)(void, void, void, void), unint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 *a16)
{
  v18 = specialized DBPhotoModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:baseImage:squareCropRect:landscapeCropRect:portraitCropRect:cloudIdentifier:localIdentifier:renderState:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);

  return v18;
}

uint64_t DBPhotoModel.__allocating_init(from:)(uint64_t a1)
{
  swift_allocObject();
  outlined init with copy of DBObject(a1, v4);
  v2 = DBPhotosFamilyModel.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t DBPhotoModel.init(from:)(uint64_t a1)
{
  outlined init with copy of DBObject(a1, v4);
  v2 = DBPhotosFamilyModel.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t DBPhotoModel.deinit()
{
  v0 = DBAssetModel.deinit();

  return v0;
}

uint64_t DBPhotoModel.__deallocating_deinit()
{
  DBAssetModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized DBPhotoModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:baseImage:squareCropRect:landscapeCropRect:portraitCropRect:cloudIdentifier:localIdentifier:renderState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void, void, void), unint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 *a16)
{
  v17 = v16;
  v151 = a7;
  v167 = a6;
  v157 = a5;
  *&v169 = a3;
  v152 = v17;
  *&v168 = *v17;
  v142 = type metadata accessor for Date();
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v140 = &v132 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v23 - 8);
  v165 = &v132 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtSgMd);
  MEMORY[0x28223BE20](v25 - 8);
  v164 = &v132 - v26;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtMd);
  v144 = *(v163 - 8);
  v27 = MEMORY[0x28223BE20](v163);
  v136 = &v132 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v135 = &v132 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v132 - v31;
  v161 = type metadata accessor for DateInterval();
  v160 = *(v161 - 8);
  v33 = MEMORY[0x28223BE20](v161);
  v149 = &v132 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v159 = &v132 - v35;
  v36 = type metadata accessor for UUID();
  v37 = *(v36 - 8);
  v38 = MEMORY[0x28223BE20](v36);
  v156 = &v132 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v158 = &v132 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v146 = &v132 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v46 = &v132 - v45;
  MEMORY[0x28223BE20](v44);
  LODWORD(v162) = *a16;
  v150 = v37;
  v47 = *(v37 + 16);
  v147 = &v132 - v48;
  v139 = a1;
  v47();
  v148 = v46;
  v138 = a2;
  v166 = v36;
  v155 = v37 + 16;
  v154 = v47;
  (v47)(v46, a2, v36);
  v49 = *(a4 + 16);
  v145 = MEMORY[0x277D84F90];
  if (v49)
  {
    v171 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v49, 0);
    v50 = v171;
    v51 = *(v171 + 16);
    v52 = 32;
    v53 = a8;
    do
    {
      v54 = *(a4 + v52);
      v171 = v50;
      v55 = *(v50 + 24);
      if (v51 >= v55 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v51 + 1, 1);
        v50 = v171;
      }

      *(v50 + 16) = v51 + 1;
      *(v50 + v51 + 32) = v54;
      ++v52;
      ++v51;
      --v49;
    }

    while (v49);
  }

  else
  {

    v50 = MEMORY[0x277D84F90];
    v53 = a8;
  }

  v56 = v157;
  if (!v167)
  {
    v56 = 0;
  }

  v157 = v56;
  v57 = 0xE000000000000000;
  if (v167)
  {
    v57 = v167;
  }

  v153 = v57;
  outlined init with copy of DateInterval?(v151, v32);
  v58 = v160;
  v59 = *(v160 + 48);
  v60 = v161;
  if (v59(v32, 1, v161) == 1)
  {
    DateInterval.init()();
    if (v59(v32, 1, v60) != 1)
    {
      outlined destroy of UTType?(v32, &_s10Foundation12DateIntervalVSgMd);
    }
  }

  else
  {
    (*(v58 + 32))(v159, v32, v60);
  }

  v61 = a15;
  if (v53)
  {
    v62 = v53;
    v167 = specialized static DBAssetModel.baseImage2DB(_:)(v53);

    v61 = a15;
  }

  else
  {
    v167 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9MomentsUI11DBAssetDataCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  v63 = v152;
  v64 = v152 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_squareCropRect;
  v65 = *(a9 + 16);
  *v64 = *a9;
  *(v64 + 1) = v65;
  v64[32] = *(a9 + 32);
  v66 = v63 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_landscapeCropRect;
  v67 = *(a10 + 16);
  *v66 = *a10;
  *(v66 + 16) = v67;
  *(v66 + 32) = *(a10 + 32);
  v68 = v63 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_portraitCropRect;
  *(v68 + 32) = *(a11 + 32);
  v69 = *(a11 + 16);
  *v68 = *a11;
  *(v68 + 16) = v69;
  v70 = (v63 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_cloudIdentifier);
  *v70 = a12;
  v70[1] = a13;
  v71 = (v63 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_localIdentifier);
  *v71 = a14;
  v71[1] = v61;
  v72 = v146;
  v73 = v166;
  v74 = v154;
  (v154)(v146, v147, v166);
  (v74)(v158, v148, v73);
  v134 = type metadata accessor for DBAssetModel();
  static DBAssetModel.subscript.getter(v168, &v172);
  LODWORD(v143) = v172;
  v75 = *(v160 + 16);
  v76 = v149;
  v77 = v161;
  v75(v149, v159, v161);
  *(v63 + 16) = 0;
  *&v168 = v63 + 16;
  v133 = OBJC_IVAR____TtC9MomentsUI12DBAssetModel_id;
  (v74)(v63 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_id, v72, v73);
  v132 = OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetID;
  (v74)(v63 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetID, v158, v73);
  *(v63 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetClass) = v143;
  v78 = v169;
  v155 = OBJC_IVAR____TtC9MomentsUI12DBAssetModel_maximumSupportedViewport;
  *(v63 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_maximumSupportedViewport) = v169;
  *(v63 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_supportedStyles) = v50;
  v79 = (v63 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseTitle);
  v80 = v153;
  *v79 = v157;
  v79[1] = v80;
  v75((v63 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseDateInterval), v76, v77);
  v81 = v78;
  v82 = v167;
  v83 = specialized Dictionary.compactMapValues<A>(_:)(v167);
  v137 = 0;
  *(v63 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel__assetDataID) = v83;
  *(v63 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_children) = MEMORY[0x277D84F90];
  v84 = v83;
  swift_beginAccess();
  *(v63 + 16) = v162;
  v85 = *(v82 + 64);
  *&v169 = v82 + 64;
  v86 = 1 << *(v82 + 32);
  v87 = -1;
  if (v86 < 64)
  {
    v87 = ~(-1 << v86);
  }

  v88 = v87 & v85;
  v89 = (v86 + 63) >> 6;
  v90 = (v150 + 48);
  v154 = (v150 + 32);
  v91 = (v144 + 56);
  v162 = (v144 + 48);
  v143 = v84;

  v92 = 0;
  v93 = v165;
  v94 = v82;
  v155 = v90;
  v153 = v89;
  v157 = v91;
  v167 = v82;
  while (v88)
  {
    v95 = v92;
LABEL_27:
    v96 = __clz(__rbit64(v88)) | (v95 << 6);
    v97 = *(*(v94 + 56) + 8 * v96);
    v98 = *(*v97 + 192);
    *&v168 = *(*(v94 + 48) + 16 * v96 + 8);

    v98(v99);
    v100 = v166;
    if ((*v90)(v93, 1, v166) == 1)
    {
      outlined destroy of UTType?(v93, &_s10Foundation4UUIDVSgMd);
      v101 = v164;
      v63 = v163;
      (*v91)(v164, 1, 1, v163);
    }

    else
    {
      v102 = *v154;
      (*v154)(v156, v165, v100);
      v63 = v163;
      v103 = *(v163 + 48);
      v101 = v164;
      v102();
      v91 = v157;
      v93 = v165;
      *(v101 + v103) = v97;
      v89 = v153;
      v90 = v155;
      (*v91)(v101, 0, 1, v63);
    }

    v88 &= v88 - 1;

    if ((*v162)(v101, 1, v63) == 1)
    {
      outlined destroy of UTType?(v101, &_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtSgMd);
      v92 = v95;
      v94 = v167;
    }

    else
    {
      v104 = v135;
      outlined init with take of (UUID, DBAssetData)(v101, v135);
      outlined init with take of (UUID, DBAssetData)(v104, v136);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v145 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v145[2] + 1, 1, v145);
      }

      v106 = v145[2];
      v105 = v145[3];
      if (v106 >= v105 >> 1)
      {
        v145 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v105 > 1, v106 + 1, 1, v145);
      }

      v107 = v145;
      v145[2] = v106 + 1;
      outlined init with take of (UUID, DBAssetData)(v136, v107 + ((*(v144 + 80) + 32) & ~*(v144 + 80)) + *(v144 + 72) * v106);
      v92 = v95;
      v91 = v157;
      v94 = v167;
    }
  }

  while (1)
  {
    v95 = v92 + 1;
    if (__OFADD__(v92, 1))
    {
      __break(1u);

      v130 = *(v150 + 8);
      v131 = v166;
      v130(v63 + v133, v166);
      v130(v63 + v132, v131);

      (*(v160 + 8))(v63 + v93, v161);
      swift_deallocPartialClassInstance();
      __break(1u);
      goto LABEL_43;
    }

    if (v95 >= v89)
    {
      break;
    }

    v88 = *(v169 + 8 * v95);
    ++v92;
    if (v88)
    {
      goto LABEL_27;
    }
  }

  if (v145[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV9MomentsUI11DBAssetDataCGMd);
    v108 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v108 = MEMORY[0x277D84F98];
  }

  v109 = v152;
  v110 = v160;
  v170 = v108;

  v112 = v137;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v111, 1, &v170);
  if (!v112)
  {

    v113 = v170;
    v114 = swift_allocObject();
    *(v114 + 16) = v113;
    v115 = (v109 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetDataLookup);
    *v115 = partial apply for closure #3 in DBAssetModel.init(id:assetID:assetClass:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:children:renderState:renderableContentHash:);
    v115[1] = v114;
    v116 = swift_allocObject();
    *(v116 + 16) = v113;
    v117 = (v109 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetDataGet);
    *v117 = partial apply for closure #4 in DBAssetModel.init(id:assetID:assetClass:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:children:renderState:renderableContentHash:);
    v117[1] = v116;
    v118 = (v109 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetURLGet);
    *v118 = closure #3 in DBAssetModel.init(from:);
    v118[1] = 0;
    v119 = swift_allocObject();
    *(v119 + 16) = v143;
    swift_beginAccess();
    v169 = *v115;
    swift_beginAccess();
    v168 = *v117;
    swift_beginAccess();
    v120 = *v118;
    v121 = v118[1];
    v122 = v109 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetData;
    *v122 = partial apply for closure #6 in DBAssetModel.init(id:assetID:assetClass:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:children:renderState:renderableContentHash:);
    *(v122 + 8) = v119;
    v123 = v168;
    *(v122 + 16) = v169;
    *(v122 + 32) = v123;
    *(v122 + 48) = v120;
    *(v122 + 56) = v121;

    v124 = v140;
    static Date.now.getter();
    outlined destroy of UTType?(v151, &_s10Foundation12DateIntervalVSgMd);
    v125 = *(v150 + 8);
    v126 = v166;
    v125(v138, v166);
    v125(v139, v126);
    v127 = *(v110 + 8);
    v128 = v161;
    v127(v149, v161);
    v125(v158, v126);
    v125(v146, v126);
    v127(v159, v128);
    v125(v148, v126);
    v125(v147, v126);
    (*(v141 + 32))(v109 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_creationDate, v124, v142);
    return v109;
  }

LABEL_43:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for DBPhotoModel()
{
  result = type metadata singleton initialization cache for DBPhotoModel;
  if (!type metadata singleton initialization cache for DBPhotoModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of DBPhotoModel.__allocating_init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:baseImage:squareCropRect:landscapeCropRect:portraitCropRect:cloudIdentifier:localIdentifier:renderState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = *(a9 + 32);
  v15 = *(a10 + 32);
  v16 = *(a11 + 32);
  v17 = *(v13 + 448);
  v18 = *(a9 + 16);
  v26[0] = *a9;
  v26[1] = v18;
  v27 = v14;
  v19 = *(a10 + 16);
  v24[0] = *a10;
  v24[1] = v19;
  v25 = v15;
  v20 = *(a11 + 16);
  v22[0] = *a11;
  v22[1] = v20;
  v23 = v16;
  return v17(a1, a2, a3, a4, a5, a6, a7, a8, v26, v24, v22, a12, a13);
}

uint64_t static PairedPhotoVideo.generateTemporaryPath(video:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v43 = type metadata accessor for UUID();
  v4 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v41 - v11;
  v13 = type metadata accessor for UTType();
  MEMORY[0x28223BE20](v13);
  v15 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = (v16 + 8);
  if (a1)
  {
    static UTType.quickTimeMovie.getter();
  }

  else
  {
    static UTType.heic.getter();
  }

  v18 = UTType.preferredFilenameExtension.getter();
  v20 = v19;
  (*v17)(v15, v13);
  if (v20)
  {
    v41[1] = v18;
    v42 = a2;
    v21 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_21658CA60;
    v23 = NSTemporaryDirectory();
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    *(v22 + 32) = v24;
    *(v22 + 40) = v26;
    UUID.init()();
    v27 = UUID.uuidString.getter();
    v29 = v28;
    (*(v4 + 8))(v6, v43);
    *(v22 + 48) = v27;
    *(v22 + 56) = v29;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v31 = [v21 fileURLWithPathComponents_];

    if (v31)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v32 = 0;
    }

    else
    {
      v32 = 1;
    }

    v35 = type metadata accessor for URL();
    v36 = *(v35 - 8);
    v37 = *(v36 + 56);
    v37(v10, v32, 1, v35);
    outlined init with take of URL?(v10, v12);
    if ((*(v36 + 48))(v12, 1, v35) == 1)
    {

      outlined destroy of UTType?(v12, &_s10Foundation3URLVSgMd);
      v38 = v42;
      v39 = 1;
    }

    else
    {
      v40 = v42;
      URL.appendingPathExtension(_:)();

      (*(v36 + 8))(v12, v35);
      v38 = v40;
      v39 = 0;
    }

    return (v37)(v38, v39, 1, v35);
  }

  else
  {
    v33 = type metadata accessor for URL();
    return (*(*(v33 - 8) + 56))(a2, 1, 1, v33);
  }
}

char *PairedPhotoVideo.constructedLivePhoto.getter()
{
  v1 = v0;
  v74[1] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v64 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v64 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v64 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v64 - v20;
  v22 = (*(*v0 + 96))(v19);
  if (!v22)
  {
    (*(v9 + 56))(v7, 1, 1, v8);
    goto LABEL_7;
  }

  v23 = v22;
  v72 = v15;
  v73 = v18;
  (*((*MEMORY[0x277D85000] & *v22) + 0xB8))();

  v24 = *(v9 + 48);
  if (v24(v7, 1, v8) == 1)
  {
LABEL_7:
    v5 = v7;
    goto LABEL_8;
  }

  v69 = v12;
  v70 = *(v9 + 32);
  v25 = v70(v21, v7, v8);
  v26 = (*(*v1 + 120))(v25);
  if (!v26)
  {
    (*(v9 + 8))(v21, v8);
    (*(v9 + 56))(v5, 1, 1, v8);
    goto LABEL_8;
  }

  v27 = v26;
  v71 = v21;
  (*((*MEMORY[0x277D85000] & *v26) + 0x70))();

  if (v24(v5, 1, v8) == 1)
  {
    (*(v9 + 8))(v71, v8);
LABEL_8:
    outlined destroy of UTType?(v5, &_s10Foundation3URLVSgMd);
    return PairedPhotoVideo.databasedLivePhoto.getter();
  }

  v29 = v73;
  v70(v73, v5, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation3URLVGMd);
  v30 = v9;
  v31 = *(v9 + 72);
  v32 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_21658CA60;
  v35 = *(v9 + 16);
  v34 = v33 + v32;
  v36 = v71;
  v35(v34, v71, v8);
  v35(v34 + v31, v29, v8);
  v74[0] = 0;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v70 = [objc_opt_self() livePhotoWithResourceFileURLs:isa error:v74];

  if (v74[0])
  {
    v38 = one-time initialization token for viewModel;
    v68 = v74[0];
    v39 = v74[0];
    if (v38 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    __swift_project_value_buffer(v40, static CommonLogger.viewModel);
    v41 = v72;
    v35(v72, v36, v8);
    v42 = v69;
    v35(v69, v29, v8);
    v43 = v39;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v66 = v45;
      v47 = v46;
      v48 = swift_slowAlloc();
      v65 = v48;
      v67 = swift_slowAlloc();
      v74[0] = v67;
      *v47 = 138412802;
      *(v47 + 4) = v43;
      *v48 = v68;
      *(v47 + 12) = 2080;
      lazy protocol witness table accessor for type URL and conformance URL();
      v68 = v43;
      v64 = v44;
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      v52 = *(v30 + 8);
      v52(v41, v8);
      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, v74);

      *(v47 + 14) = v53;
      *(v47 + 22) = 2080;
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v56 = v55;
      v52(v42, v8);
      v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v56, v74);

      *(v47 + 24) = v57;
      v58 = v64;
      _os_log_impl(&dword_21607C000, v64, v66, "Failed to construct PHLivePhoto from resource files to URL: %@, imageURL: %s, videoURL: %s", v47, 0x20u);
      v59 = v65;
      outlined destroy of UTType?(v65, &_sSo8NSObjectCSgMd);
      MEMORY[0x21CE94770](v59, -1, -1);
      v60 = v67;
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v60, -1, -1);
      MEMORY[0x21CE94770](v47, -1, -1);
      v61 = v68;

      v52(v29, v8);
      v52(v71, v8);
    }

    else
    {

      v63 = *(v30 + 8);
      v63(v42, v8);
      v63(v41, v8);
      v63(v29, v8);
      v63(v36, v8);
    }

    return 0;
  }

  else
  {
    v62 = *(v9 + 8);
    v62(v29, v8);
    v62(v36, v8);
    return v70;
  }
}

char *PairedPhotoVideo.databasedLivePhoto.getter()
{
  v1 = v0;
  v209[1] = *MEMORY[0x277D85DE8];
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v207 = &v194 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v194 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v194 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v200 = &v194 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v202 = &v194 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v197 = &v194 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v201 = &v194 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v203 = &v194 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v199 = (&v194 - v24);
  v25 = MEMORY[0x28223BE20](v23);
  v198 = &v194 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v205 = &v194 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v206 = &v194 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v204 = &v194 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v208 = &v194 - v34;
  v35 = *(v2 + 96);
  v36 = v35(v33);
  if (v36)
  {
    v37 = v36;
    (*((*MEMORY[0x277D85000] & *v36) + 0xB8))();

    v38 = v12;
    v39 = *(v12 + 48);
    v40 = v11;
    if (v39(v10, 1, v11) != 1)
    {
      v41 = *(v38 + 32);
      v42 = v208;
      v43 = v40;
      v44 = v41(v208, v10, v40);
      goto LABEL_18;
    }
  }

  else
  {
    v38 = v12;
    v40 = v11;
    (*(v12 + 56))(v10, 1, 1, v11);
  }

  v45 = outlined destroy of UTType?(v10, &_s10Foundation3URLVSgMd);
  v46 = v35(v45);
  if (!v46)
  {
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    __swift_project_value_buffer(v56, static CommonLogger.viewModel);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_21607C000, v57, v58, "Cannot unwrap data for photo", v59, 2u);
      MEMORY[0x21CE94770](v59, -1, -1);
    }

    return 0;
  }

  v47 = v46;
  v48 = (*((*MEMORY[0x277D85000] & *v46) + 0x98))();
  v50 = v49;

  static PairedPhotoVideo.generateTemporaryPath(video:)(0, v8);
  v51 = v38;
  v39 = *(v38 + 48);
  if (v39(v8, 1, v40) == 1)
  {
    outlined destroy of UTType?(v8, &_s10Foundation3URLVSgMd);
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    __swift_project_value_buffer(v52, static CommonLogger.viewModel);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_21607C000, v53, v54, "Cannot generate temporary path for image", v55, 2u);
      MEMORY[0x21CE94770](v55, -1, -1);
    }

    outlined consume of Data._Representation(v48, v50);

    return 0;
  }

  v43 = v40;
  v60 = *(v38 + 32);
  v61 = v204;
  v60(v204, v8, v43);
  Data.write(to:options:)();
  v62 = v61;
  v38 = v51;
  outlined consume of Data._Representation(v48, v50);
  v42 = v208;
  v44 = (v60)(v208, v62, v43);
  v41 = v60;
LABEL_18:
  v63 = (*(*v1 + 120))(v44);
  v64 = v207;
  if (!v63)
  {
    v66 = v38;
    (*(v38 + 56))(v207, 1, 1, v43);
    goto LABEL_25;
  }

  v65 = v63;
  (*((*MEMORY[0x277D85000] & *v63) + 0xB8))();

  v66 = v38;
  if (v39(v64, 1, v43) == 1)
  {
LABEL_25:
    outlined destroy of UTType?(v64, &_s10Foundation3URLVSgMd);
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v74 = type metadata accessor for Logger();
    __swift_project_value_buffer(v74, static CommonLogger.viewModel);
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_21607C000, v75, v76, "Cannot generate temporary path for video", v77, 2u);
      MEMORY[0x21CE94770](v77, -1, -1);
    }

    (*(v66 + 8))(v42, v43);
    return 0;
  }

  v67 = v206;
  v41(v206, v64, v43);
  v68 = URL.pathExtension.getter();
  v70 = v69;

  v71 = HIBYTE(v70) & 0xF;
  if ((v70 & 0x2000000000000000) == 0)
  {
    v71 = v68 & 0xFFFFFFFFFFFFLL;
  }

  if (v71)
  {
    v72 = *(v66 + 16);
    (v72)(v205, v42, v43);
    v73 = v201;
  }

  else
  {
    v204 = (v66 + 32);
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v79 = type metadata accessor for Logger();
    v80 = __swift_project_value_buffer(v79, static CommonLogger.viewModel);
    v81 = *(v66 + 16);
    v82 = v198;
    v81(v198, v42, v43);
    v194 = v80;
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.error.getter();
    v85 = os_log_type_enabled(v83, v84);
    v196 = v43;
    v207 = v81;
    if (v85)
    {
      v86 = swift_slowAlloc();
      v87 = v82;
      v88 = v66;
      v89 = swift_slowAlloc();
      v209[0] = v89;
      *v86 = 136315138;
      lazy protocol witness table accessor for type URL and conformance URL();
      v90 = dispatch thunk of CustomStringConvertible.description.getter();
      v91 = v41;
      v93 = v92;
      v198 = *(v88 + 8);
      (v198)(v87, v43);
      v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v93, v209);
      v41 = v91;

      *(v86 + 4) = v94;
      _os_log_impl(&dword_21607C000, v83, v84, "Missing image extension: %s", v86, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v89);
      v95 = v89;
      v66 = v88;
      MEMORY[0x21CE94770](v95, -1, -1);
      MEMORY[0x21CE94770](v86, -1, -1);
    }

    else
    {

      v198 = *(v66 + 8);
      (v198)(v82, v43);
    }

    v96 = v205;
    v97 = v199;
    URL.appendingPathExtension(_:)();
    v98 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v99);
    v101 = v100;
    URL._bridgeToObjectiveC()(v102);
    v104 = v103;
    v209[0] = 0;
    v105 = [v98 linkItemAtURL:v101 toURL:v103 error:v209];

    v106 = v209[0];
    v67 = v206;
    if (!v105)
    {
      v126 = v209[0];
      v127 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v128 = v127;
      v129 = Logger.logObject.getter();
      v130 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v129, v130))
      {
        v131 = swift_slowAlloc();
        v132 = swift_slowAlloc();
        *v131 = 138412290;
        v133 = v127;
        v134 = _swift_stdlib_bridgeErrorToNSError();
        *(v131 + 4) = v134;
        *v132 = v134;
        _os_log_impl(&dword_21607C000, v129, v130, "Cannot symlink temporary path for image: %@", v131, 0xCu);
        outlined destroy of UTType?(v132, &_sSo8NSObjectCSgMd);
        MEMORY[0x21CE94770](v132, -1, -1);
        MEMORY[0x21CE94770](v131, -1, -1);
      }

      v135 = v196;
      v136 = v198;
      (v198)(v97, v196);
      v136(v67, v135);
      v136(v208, v135);
      return 0;
    }

    v43 = v196;
    v41(v96, v97, v196);
    v107 = v106;
    v72 = v207;
    v42 = v208;
    v73 = v201;
  }

  v108 = URL.pathExtension.getter();
  v110 = v109;

  v111 = HIBYTE(v110) & 0xF;
  if ((v110 & 0x2000000000000000) == 0)
  {
    v111 = v108 & 0xFFFFFFFFFFFFLL;
  }

  v207 = v72;
  if (v111)
  {
    v112 = v203;
    (v72)(v203, v67, v43);
  }

  else
  {
    v204 = v41;
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v113 = type metadata accessor for Logger();
    v114 = __swift_project_value_buffer(v113, static CommonLogger.viewModel);
    (v72)(v73, v42, v43);
    v199 = v114;
    v115 = Logger.logObject.getter();
    v116 = static os_log_type_t.error.getter();
    v117 = os_log_type_enabled(v115, v116);
    v195 = v66;
    if (v117)
    {
      v118 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v196 = v43;
      v120 = v119;
      v209[0] = v119;
      *v118 = 136315138;
      lazy protocol witness table accessor for type URL and conformance URL();
      v121 = dispatch thunk of CustomStringConvertible.description.getter();
      v123 = v122;
      v201 = *(v66 + 8);
      (v201)(v73, v196);
      v124 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v121, v123, v209);

      *(v118 + 4) = v124;
      _os_log_impl(&dword_21607C000, v115, v116, "Missing video extension: %s", v118, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v120);
      v125 = v120;
      v43 = v196;
      MEMORY[0x21CE94770](v125, -1, -1);
      MEMORY[0x21CE94770](v118, -1, -1);
    }

    else
    {

      v201 = *(v66 + 8);
      (v201)(v73, v43);
    }

    v137 = v197;
    URL.appendingPathExtension(_:)();
    v138 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v139);
    v141 = v140;
    URL._bridgeToObjectiveC()(v142);
    v144 = v143;
    v209[0] = 0;
    v145 = [v138 linkItemAtURL:v141 toURL:v143 error:v209];

    v146 = v209[0];
    if (!v145)
    {
      v184 = v209[0];
      v185 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v186 = v185;
      v187 = Logger.logObject.getter();
      v188 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v187, v188))
      {
        v189 = swift_slowAlloc();
        v190 = swift_slowAlloc();
        *v189 = 138412290;
        v191 = v185;
        v192 = _swift_stdlib_bridgeErrorToNSError();
        *(v189 + 4) = v192;
        *v190 = v192;
        _os_log_impl(&dword_21607C000, v187, v188, "Cannot symlink temporary path for video: %@", v189, 0xCu);
        outlined destroy of UTType?(v190, &_sSo8NSObjectCSgMd);
        MEMORY[0x21CE94770](v190, -1, -1);
        MEMORY[0x21CE94770](v189, -1, -1);
      }

      v193 = v201;
      (v201)(v137, v43);
      v193(v205, v43);
      v193(v206, v43);
      v193(v208, v43);
      return 0;
    }

    v147 = v203;
    (v204)(v203, v137, v43);
    v112 = v147;
    v148 = v146;
    v66 = v195;
    v72 = v207;
    v42 = v208;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation3URLVGMd);
  v149 = *(v66 + 72);
  v150 = (*(v66 + 80) + 32) & ~*(v66 + 80);
  v151 = swift_allocObject();
  *(v151 + 16) = xmmword_21658CA60;
  v152 = v151 + v150;
  (v72)(v152, v112, v43);
  v153 = v72;
  v154 = v205;
  (v153)(v152 + v149, v205, v43);
  v209[0] = 0;
  v155 = v112;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v204 = [objc_opt_self() livePhotoWithResourceFileURLs:isa error:v209];

  v157 = v209[0];
  if (v209[0])
  {
    v158 = one-time initialization token for viewModel;
    v159 = v209[0];
    if (v158 != -1)
    {
      swift_once();
    }

    v160 = type metadata accessor for Logger();
    __swift_project_value_buffer(v160, static CommonLogger.viewModel);
    v161 = v207;
    (v207)(v202, v42, v43);
    v162 = v200;
    (v161)(v200, v206, v43);
    v163 = v159;
    v164 = Logger.logObject.getter();
    v165 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v164, v165))
    {
      v166 = swift_slowAlloc();
      v167 = swift_slowAlloc();
      v199 = v167;
      v201 = swift_slowAlloc();
      v209[0] = v201;
      *v166 = 138412802;
      *(v166 + 4) = v163;
      *v167 = v157;
      *(v166 + 12) = 2080;
      lazy protocol witness table accessor for type URL and conformance URL();
      v207 = v163;
      v168 = v202;
      v169 = dispatch thunk of CustomStringConvertible.description.getter();
      v171 = v170;
      v172 = *(v66 + 8);
      v172(v168, v43);
      v173 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v169, v171, v209);

      *(v166 + 14) = v173;
      *(v166 + 22) = 2080;
      v174 = v200;
      v175 = dispatch thunk of CustomStringConvertible.description.getter();
      v177 = v176;
      v172(v174, v43);
      v178 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v175, v177, v209);

      *(v166 + 24) = v178;
      _os_log_impl(&dword_21607C000, v164, v165, "Failed to construct PHLivePhoto from resource files to URL: %@, imageURL: %s, videoURL: %s", v166, 0x20u);
      v179 = v199;
      outlined destroy of UTType?(v199, &_sSo8NSObjectCSgMd);
      MEMORY[0x21CE94770](v179, -1, -1);
      v180 = v201;
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v180, -1, -1);
      MEMORY[0x21CE94770](v166, -1, -1);
      v181 = v207;

      v172(v203, v43);
      v172(v205, v43);
      v172(v206, v43);
      v172(v208, v43);
    }

    else
    {

      v183 = *(v66 + 8);
      v183(v162, v43);
      v183(v202, v43);
      v183(v203, v43);
      v183(v205, v43);
      v183(v206, v43);
      v183(v42, v43);
    }

    return 0;
  }

  v182 = *(v66 + 8);
  v182(v155, v43);
  v182(v154, v43);
  v182(v206, v43);
  v182(v42, v43);
  return v204;
}