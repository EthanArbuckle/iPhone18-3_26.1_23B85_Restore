uint64_t closure #1 in NearbyGroupTable.registerIfNotPresent(identifier:generationBlock:)(uint64_t a1)
{
  v3 = *(*v2 + 240);
  v4 = *v2;
  v4[31] = a1;

  if (v1)
  {
    v6 = v4[23];
    v5 = v4[24];
    v7 = v4[21];
    v8 = v4[22];

    v9 = v4[1];

    return v9();
  }

  else
  {

    return MEMORY[0x2822009F8](closure #1 in NearbyGroupTable.registerIfNotPresent(identifier:generationBlock:), 0, 0);
  }
}

uint64_t partial apply for closure #1 in NearbyGroupTable.registerIfNotPresent(identifier:generationBlock:)(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in NearbyGroupTable.cleanUpIfNotPresent(_:);

  return closure #1 in NearbyGroupTable.registerIfNotPresent(identifier:generationBlock:)(a1, v6, v1 + v5, v8, v9);
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    outlined destroy of NSObject?(a1, &_s14NearbySessions0A10GroupTableC04WeakaC0VSgMd, &_s14NearbySessions0A10GroupTableC04WeakaC0VSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v10);
    v4 = type metadata accessor for UUID();
    (*(*(v4 - 8) + 8))(a2, v4);
    return outlined destroy of NSObject?(v10, &_s14NearbySessions0A10GroupTableC04WeakaC0VSgMd, &_s14NearbySessions0A10GroupTableC04WeakaC0VSgMR);
  }

  else
  {
    outlined init with take of NearbyGroupTable.WeakNearbyGroup(a1, v10);
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, a2, isUniquelyReferenced_nonNull_native);
    v8 = type metadata accessor for UUID();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v9;
  }

  return result;
}

uint64_t NearbyGroupTable.firstGroup()()
{
  v1[3] = v0;
  v2 = type metadata accessor for AsyncSerialQueue();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](NearbyGroupTable.firstGroup(), 0, 0);
}

{
  v1 = *(v0 + 48);
  (*(**(v0 + 24) + 96))();
  v2 = *(MEMORY[0x277CFD128] + 4);

  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = type metadata accessor for NearbyGroup();
  *v3 = v0;
  v3[1] = NearbyGroupTable.firstGroup();
  v5 = *(v0 + 48);
  v6 = *(v0 + 24);

  return MEMORY[0x28214FC18](v0 + 16, &async function pointer to partial apply for closure #1 in NearbyGroupTable.firstGroup(), v6, v4);
}

{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v9 = *v1;
  *(*v1 + 64) = v0;

  (*(v4 + 8))(v3, v5);

  if (v0)
  {
    v7 = NearbyGroupTable.firstGroup();
  }

  else
  {
    v7 = NearbyGroupTable.firstGroup();
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

{
  v1 = v0[6];
  v2 = v0[2];

  v3 = v0[1];

  return v3(v2);
}

{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t closure #1 in NearbyGroupTable.firstGroup()(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_14NearbySessions0D10GroupTableC04WeakdF0V5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D10GroupTableC04WeakdF0V5valuetMR);
  v2[7] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in NearbyGroupTable.firstGroup(), 0, 0);
}

uint64_t closure #1 in NearbyGroupTable.firstGroup()()
{
  v1 = v0[6];
  v25 = v0[7];
  v2 = OBJC_IVAR____TtC14NearbySessions16NearbyGroupTable_contents;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = MEMORY[0x277D84F90];
  v26 = MEMORY[0x277D84F90];
  v5 = -1;
  v6 = -1 << *(v3 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v3 + 64);
  v8 = (63 - v6) >> 6;
  swift_bridgeObjectRetain_n();
  v9 = 0;
  if (!v7)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v10 = v0[8];
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v12 = v11 | (v9 << 6);
      v13 = *(v3 + 48);
      v14 = type metadata accessor for UUID();
      (*(*(v14 - 8) + 16))(v10, v13 + *(*(v14 - 8) + 72) * v12, v14);
      outlined init with copy of NearbyGroupTable.WeakNearbyGroup(*(v3 + 56) + 8 * v12, v10 + *(v25 + 48));
      Strong = swift_weakLoadStrong();
      v16 = outlined destroy of NSObject?(v10, &_s10Foundation4UUIDV3key_14NearbySessions0D10GroupTableC04WeakdF0V5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D10GroupTableC04WeakdF0V5valuetMR);
      if (Strong)
      {
        break;
      }

      if (!v7)
      {
        goto LABEL_6;
      }
    }

    MEMORY[0x25F86F0D0](v16);
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v18 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v4 = v26;
  }

  while (v7);
  while (1)
  {
LABEL_6:
    v17 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_21:
      result = __CocoaSet.count.getter();
      if (result)
      {
        goto LABEL_16;
      }

LABEL_22:
      v24 = v0[8];

      lazy protocol witness table accessor for type Errors #1 in NearbyGroupTable.firstGroup() and conformance Errors #1 in NearbyGroupTable.firstGroup()();
      swift_allocError();
      swift_willThrow();

      v23 = v0[1];
      goto LABEL_23;
    }

    if (v17 >= v8)
    {
      break;
    }

    v7 = *(v3 + 64 + 8 * v17);
    ++v9;
    if (v7)
    {
      v9 = v17;
      goto LABEL_4;
    }
  }

  if (v4 >> 62)
  {
    goto LABEL_21;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_22;
  }

LABEL_16:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x25F86F4A0](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v20 = *(v4 + 32);
  }

  v21 = v0[8];
  v22 = v0[5];

  *v22 = v20;

  v23 = v0[1];
LABEL_23:

  return v23();
}

uint64_t partial apply for closure #1 in NearbyGroupTable.firstGroup()(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for closure #1 in NearbyGroupTable.firstGroup();

  return closure #1 in NearbyGroupTable.firstGroup()(a1, v1);
}

uint64_t partial apply for closure #1 in NearbyGroupTable.firstGroup()()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t NearbyGroupTable.deinit()
{
  v1 = OBJC_IVAR____TtC14NearbySessions16NearbyGroupTable_serialQueue;
  v2 = type metadata accessor for AsyncSerialQueue();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC14NearbySessions16NearbyGroupTable_contents);

  return v0;
}

uint64_t NearbyGroupTable.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC14NearbySessions16NearbyGroupTable_serialQueue;
  v2 = type metadata accessor for AsyncSerialQueue();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC14NearbySessions16NearbyGroupTable_contents);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t NearbyGroupTable.__allocating_init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOyyyYaYbc__GMd, &_sScS12ContinuationV15BufferingPolicyOyyyYaYbc__GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = *(v1 + 48);
  v12 = *(v1 + 52);
  v13 = swift_allocObject();
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  (*(v3 + 104))(v6, *MEMORY[0x277D85778], v2);
  AsyncSerialQueue.init(priority:bufferingPolicy:)();
  v15 = OBJC_IVAR____TtC14NearbySessions16NearbyGroupTable_contents;
  *(v13 + v15) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_14NearbySessions0E10GroupTableC04WeakeG0VTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  return v13;
}

uint64_t NearbyGroupTable.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOyyyYaYbc__GMd, &_sScS12ContinuationV15BufferingPolicyOyyyYaYbc__GMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v13 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  (*(v2 + 104))(v5, *MEMORY[0x277D85778], v1);
  AsyncSerialQueue.init(priority:bufferingPolicy:)();
  v11 = OBJC_IVAR____TtC14NearbySessions16NearbyGroupTable_contents;
  *(v0 + v11) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_14NearbySessions0E10GroupTableC04WeakeG0VTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  return v0;
}

char *one-time initialization function for shared()
{
  result = specialized NearbyInvitationsController.__allocating_init(provider:)(1);
  static NearbyInvitationsController.shared = result;
  return result;
}

uint64_t static NearbyInvitationsController.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t NearbyInvitationsController.groups.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path getter for NearbyInvitationsController.groups : NearbyInvitationsController@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for NearbyInvitationsController.groups : NearbyInvitationsController(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t NearbyInvitationsController.groups.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void (*NearbyInvitationsController.groups.modify(uint64_t *a1))(void *a1)
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
  return NearbyInvitationsController.groups.modify;
}

void NearbyInvitationsController.groups.modify(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t NearbyInvitationsController.$groups.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDy10Foundation4UUIDV14NearbySessions0E19GroupConnectionInfoCGGMd, &_s7Combine9PublishedVySDy10Foundation4UUIDV14NearbySessions0E19GroupConnectionInfoCGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for NearbyInvitationsController.$groups : NearbyInvitationsController(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDy10Foundation4UUIDV14NearbySessions0E19GroupConnectionInfoCGGMd, &_s7Combine9PublishedVySDy10Foundation4UUIDV14NearbySessions0E19GroupConnectionInfoCGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for NearbyInvitationsController.$groups : NearbyInvitationsController(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDy10Foundation4UUIDV14NearbySessions0F19GroupConnectionInfoCG_GMd, &_s7Combine9PublishedV9PublisherVySDy10Foundation4UUIDV14NearbySessions0F19GroupConnectionInfoCG_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDy10Foundation4UUIDV14NearbySessions0E19GroupConnectionInfoCGGMd, &_s7Combine9PublishedVySDy10Foundation4UUIDV14NearbySessions0E19GroupConnectionInfoCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t NearbyInvitationsController.$groups.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDy10Foundation4UUIDV14NearbySessions0F19GroupConnectionInfoCG_GMd, &_s7Combine9PublishedV9PublisherVySDy10Foundation4UUIDV14NearbySessions0F19GroupConnectionInfoCG_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDy10Foundation4UUIDV14NearbySessions0E19GroupConnectionInfoCGGMd, &_s7Combine9PublishedVySDy10Foundation4UUIDV14NearbySessions0E19GroupConnectionInfoCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*NearbyInvitationsController.$groups.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDy10Foundation4UUIDV14NearbySessions0F19GroupConnectionInfoCG_GMd, &_s7Combine9PublishedV9PublisherVySDy10Foundation4UUIDV14NearbySessions0F19GroupConnectionInfoCG_GMR);
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

  v10 = OBJC_IVAR____TtC14NearbySessions27NearbyInvitationsController__groups;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDy10Foundation4UUIDV14NearbySessions0E19GroupConnectionInfoCGGMd, &_s7Combine9PublishedVySDy10Foundation4UUIDV14NearbySessions0E19GroupConnectionInfoCGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return NearbyInvitationsController.$groups.modify;
}

void NearbyInvitationsController.$groups.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t NearbyInvitationsController.approvalRequests.getter()
{
  v1 = OBJC_IVAR____TtC14NearbySessions27NearbyInvitationsController_approvalRequests;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t NearbyInvitationsController.approvalRequests.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14NearbySessions27NearbyInvitationsController_approvalRequests;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

Swift::Int NearbyInvitationsController.Errors.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x25F86F720](a1);
  return Hasher._finalize()();
}

uint64_t NearbyInvitationsController.__allocating_init(dataSource:queue:provider:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t, void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v12 = a5(a1, a3, a4, v5, ObjectType, a2);
  swift_unknownObjectRelease();

  return v12;
}

uint64_t NearbyInvitationsController.createGroup(with:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](NearbyInvitationsController.createGroup(with:), 0, 0);
}

uint64_t NearbyInvitationsController.createGroup(with:)()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = *(MEMORY[0x277D85A40] + 4);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = type metadata accessor for NearbyGroupConnectionInfo(0);
  *v3 = v0;
  v3[1] = NearbyInvitationsController.createGroup(with:);

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000012, 0x800000025B830470, partial apply for closure #1 in NearbyInvitationsController.createGroup(with:), v1, v4);
}

{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = NearbyInvitationsController.createGroup(with:);
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = NearbyInvitationsController.createGroup(with:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 16));
}

{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t closure #1 in NearbyInvitationsController.createGroup(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24[0] = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v5 - 8);
  v6 = *(v27 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v25 = *(v9 - 8);
  v26 = v9;
  v10 = *(v25 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14NearbySessions0A19GroupConnectionInfoCs5Error_pGMd, &_sScCy14NearbySessions0A19GroupConnectionInfoCs5Error_pGMR);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v24 - v16;
  v24[1] = *(a2 + 32);
  (*(v14 + 16))(v24 - v16, a1, v13);
  v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v19 = swift_allocObject();
  v20 = v24[0];
  *(v19 + 16) = v24[0];
  *(v19 + 24) = a2;
  (*(v14 + 32))(v19 + v18, v17, v13);
  aBlock[4] = partial apply for closure #1 in closure #1 in NearbyInvitationsController.createGroup(with:);
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_186_0;
  v21 = _Block_copy(aBlock);
  v22 = v20;

  static DispatchQoS.unspecified.getter();
  v28 = MEMORY[0x277D84F90];
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x25F86F310](0, v12, v8, v21);
  _Block_release(v21);
  (*(v27 + 8))(v8, v5);
  (*(v25 + 8))(v12, v26);
}

uint64_t closure #1 in closure #1 in NearbyInvitationsController.createGroup(with:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14NearbySessions0A19GroupConnectionInfoCs5Error_pGMd, &_sScCy14NearbySessions0A19GroupConnectionInfoCs5Error_pGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - v9;
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Log.client);
  v12 = a1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v29 = a2;
    v17 = a3;
    v18 = v6;
    v19 = v16;
    *v15 = 138412290;
    *(v15 + 4) = v12;
    *v16 = v12;
    v20 = v12;
    _os_log_impl(&dword_25B7C4000, v13, v14, "NearbyInvitationsController received request to create group %@", v15, 0xCu);
    outlined destroy of NSObject?(v19, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v21 = v19;
    v6 = v18;
    a3 = v17;
    a2 = v29;
    MEMORY[0x25F86FE20](v21, -1, -1);
    MEMORY[0x25F86FE20](v15, -1, -1);
  }

  v22 = *(a2 + 16);
  v23 = *(a2 + 24);
  ObjectType = swift_getObjectType();
  (*(v7 + 16))(v10, a3, v6);
  v25 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v26 = swift_allocObject();
  (*(v7 + 32))(v26 + v25, v10, v6);
  (*(v23 + 32))(v12, partial apply for closure #1 in closure #1 in closure #1 in NearbyInvitationsController.createGroup(with:), v26, ObjectType, v23);
}

uint64_t NearbyInvitationsController.addObserver(_:)(uint64_t a1)
{
  swift_getObjectType();

  return specialized NearbyInvitationsController.addObserver(_:)(a1, v1);
}

uint64_t closure #1 in NearbyInvitationsController.requestApproval(with:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.client);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136315138;
    type metadata accessor for InvitationApprovalRequest();
    v14 = v9;
    v15 = String.init<A>(reflecting:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v22);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_25B7C4000, v10, v11, "NearbyInvitationsController requestApproval with %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x25F86FE20](v13, -1, -1);
    MEMORY[0x25F86FE20](v12, -1, -1);
  }

  v18 = *(a2 + 16);
  v19 = *(a2 + 24);
  ObjectType = swift_getObjectType();
  return (*(v19 + 40))(v9, a3, a4, ObjectType, v19);
}

uint64_t NearbyInvitationsController.approveConnectionRequest(_:localInvitation:)(void *a1, void *a2)
{
  v3 = (*((*MEMORY[0x277D85000] & *a2) + 0x80))();
  v5 = v4;
  NearbyInvitationsController.approveConnectionRequest(_:localInvitation:)(a1, v3, v4);

  return outlined consume of Data._Representation(v3, v5);
}

uint64_t NearbyInvitationsController.approveConnectionRequest(_:localInvitation:)(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v13 = *(v22 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v22);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[1] = *(v4 + 32);
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = v4;
  v17[4] = a2;
  v17[5] = a3;
  aBlock[4] = partial apply for closure #1 in NearbyInvitationsController.approveConnectionRequest(_:localInvitation:);
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_24;
  v18 = _Block_copy(aBlock);
  v19 = a1;

  outlined copy of Data._Representation(a2, a3);
  static DispatchQoS.unspecified.getter();
  v23 = MEMORY[0x277D84F90];
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x25F86F310](0, v16, v12, v18);
  _Block_release(v18);
  (*(v9 + 8))(v12, v8);
  (*(v13 + 8))(v16, v22);
}

uint64_t closure #1 in NearbyInvitationsController.approveConnectionRequest(_:localInvitation:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.client);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136315138;
    type metadata accessor for NearbyAdvertisement(0);
    v14 = v9;
    v15 = String.init<A>(reflecting:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v22);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_25B7C4000, v10, v11, "NearbyInvitationsController approving connection request of advertisement %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x25F86FE20](v13, -1, -1);
    MEMORY[0x25F86FE20](v12, -1, -1);
  }

  v18 = *(a2 + 16);
  v19 = *(a2 + 24);
  ObjectType = swift_getObjectType();
  return (*(v19 + 176))(v9, a3, a4, ObjectType, v19);
}

uint64_t closure #1 in NearbyInvitationsController.denyConnectionRequest(_:localInvitation:)(void *a1, uint64_t a2)
{
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.client);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    type metadata accessor for NearbyAdvertisement(0);
    v10 = v5;
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v18);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_25B7C4000, v6, v7, "NearbyInvitationsController approving connection request of advertisement %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x25F86FE20](v9, -1, -1);
    MEMORY[0x25F86FE20](v8, -1, -1);
  }

  v15 = *(a2 + 16);
  v14 = *(a2 + 24);
  ObjectType = swift_getObjectType();
  return (*(v14 + 184))(v5, ObjectType, v14);
}

uint64_t NearbyInvitationsController.approve(pendingMember:response:completion:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v15 = *(v25 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v25);
  v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[1] = *(v5 + 32);
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = v5;
  v19[5] = a3;
  v19[6] = a4;
  aBlock[4] = partial apply for closure #1 in NearbyInvitationsController.approve(pendingMember:response:completion:);
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_30;
  v20 = _Block_copy(aBlock);
  v21 = a1;
  v22 = a2;

  static DispatchQoS.unspecified.getter();
  v26 = MEMORY[0x277D84F90];
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x25F86F310](0, v18, v14, v20);
  _Block_release(v20);
  (*(v11 + 8))(v14, v10);
  (*(v15 + 8))(v18, v25);
}

uint64_t closure #1 in NearbyInvitationsController.approve(pendingMember:response:completion:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.client);
  v11 = a1;
  v12 = a2;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v30 = a5;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v31 = v16;
    *v15 = 136315394;
    type metadata accessor for IncomingInvitationJoinRequest(0);
    v17 = v11;
    v18 = String.init<A>(reflecting:)();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v31);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    type metadata accessor for InvitationJoinResponse();
    v21 = v12;
    v22 = String.init<A>(reflecting:)();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v31);

    *(v15 + 14) = v24;
    _os_log_impl(&dword_25B7C4000, v13, v14, "NearbyInvitationsController requested approval of pendingMember %s with response: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F86FE20](v16, -1, -1);
    v25 = v15;
    a5 = v30;
    MEMORY[0x25F86FE20](v25, -1, -1);
  }

  v27 = *(a3 + 16);
  v26 = *(a3 + 24);
  ObjectType = swift_getObjectType();
  return (*(v26 + 48))(v11, v12, a4, a5, ObjectType, v26);
}

uint64_t NearbyInvitationsController.requestApproval(with:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a6;
  v8 = v6;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v12 - 8);
  v13 = *(v28 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchQoS();
  v16 = *(v27 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v27);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v8 + 32);
  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = v8;
  v20[4] = a2;
  v20[5] = a3;
  aBlock[4] = a5;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = v25;
  v21 = _Block_copy(aBlock);
  v22 = a1;

  static DispatchQoS.unspecified.getter();
  v29 = MEMORY[0x277D84F90];
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x25F86F310](0, v19, v15, v21);
  _Block_release(v21);
  (*(v28 + 8))(v15, v12);
  (*(v16 + 8))(v19, v27);
}

uint64_t closure #1 in NearbyInvitationsController.reject(pendingMember:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.client);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&dword_25B7C4000, v10, v11, "NearbyInvitationsController rejecting pending member %@", v12, 0xCu);
    outlined destroy of NSObject?(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x25F86FE20](v13, -1, -1);
    MEMORY[0x25F86FE20](v12, -1, -1);
  }

  v15 = *(a2 + 16);
  v16 = *(a2 + 24);
  ObjectType = swift_getObjectType();
  return (*(v16 + 56))(v9, a3, a4, ObjectType, v16);
}

uint64_t closure #1 in NearbyInvitationsController.generateNearbyInvitation(response:)(void *a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.client);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_25B7C4000, v7, v8, "NearbyInvitationsController generateNearbyInvitiation", v9, 2u);
    MEMORY[0x25F86FE20](v9, -1, -1);
  }

  v10 = a1[2];
  v11 = a1[3];
  ObjectType = swift_getObjectType();
  return (*(v11 + 64))(a1[5], a2, a3, ObjectType, v11);
}

uint64_t NearbyInvitationsController.advertiseNearbyInvitation(_:response:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v20 - v10;
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Log.client);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_25B7C4000, v13, v14, "Utilization of deprecated SPI advertiseNearbyInvitation.", v15, 2u);
    MEMORY[0x25F86FE20](v15, -1, -1);
  }

  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v4;
  v17[5] = a1;
  v17[6] = a2;
  v17[7] = a3;

  v18 = a1;

  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #1 in NearbyInvitationsController.advertiseNearbyInvitation(_:response:), v17);
}

{
  return NearbyInvitationsController.advertiseNearbyInvitation(_:response:)(a1, a2, a3, &unk_286D0AFA8, partial apply for closure #1 in NearbyInvitationsController.advertiseNearbyInvitation(_:response:), &block_descriptor_52);
}

uint64_t closure #1 in NearbyInvitationsController.advertiseNearbyInvitation(_:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[12] = a4;
  v7[13] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShy14NearbySessions0C10InvitationC13PendingMemberVyAD0C5GroupC_GGGMd, &_s7Combine9PublishedVyShy14NearbySessions0C10InvitationC13PendingMemberVyAD0C5GroupC_GGGMR);
  v7[16] = v8;
  v9 = *(v8 - 8);
  v7[17] = v9;
  v10 = *(v9 + 64) + 15;
  v7[18] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v7[19] = v11;
  v12 = *(v11 - 8);
  v7[20] = v12;
  v13 = *(v12 + 64) + 15;
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in NearbyInvitationsController.advertiseNearbyInvitation(_:response:), 0, 0);
}

uint64_t closure #1 in NearbyInvitationsController.advertiseNearbyInvitation(_:response:)()
{
  v1 = *(**(*(v0 + 96) + OBJC_IVAR____TtC14NearbySessions27NearbyInvitationsController_groupTable) + 160);
  v5 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  *(v0 + 184) = v3;
  *v3 = v0;
  v3[1] = closure #1 in NearbyInvitationsController.advertiseNearbyInvitation(_:response:);

  return v5();
}

{
  receiver = v0[12].receiver;
  super_class = v0[6].super_class;
  v49 = *(v0[10].receiver + 2);
  v49(v0[11].receiver, super_class + OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_identifier, v0[9].super_class);
  v3 = *(super_class + OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_displayName + 8);
  v41 = *(super_class + OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_displayName);
  v44 = *(super_class + OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_metadata);
  v4 = one-time initialization token for shared;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = v0[11].receiver;
  v46 = v0[10].super_class;
  v48 = v0[12].super_class;
  v50 = v0[10].receiver;
  v37 = v0[9].super_class;
  v39 = v0[12].receiver;
  v6 = v0[8].super_class;
  v7 = v0[9].receiver;
  v8 = v0[8].receiver;
  v9 = static NearbyInvitationsController.shared;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NearbySessions0A10InvitationCyAA0A5GroupCGMd, &_s14NearbySessions0A10InvitationCyAA0A5GroupCGMR);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  v14 = *(*v13 + 144);
  v15 = MEMORY[0x277D84FA0];
  v0[5].receiver = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy14NearbySessions0A10InvitationC13PendingMemberVyAA0A5GroupC_GGMd, &_sShy14NearbySessions0A10InvitationC13PendingMemberVyAA0A5GroupC_GGMR);
  Published.init(initialValue:)();
  (*(v6 + 4))(v13 + v14, v7, v8);
  *(v13 + *(*v13 + 152)) = v15;
  *(v13 + direct field offset for NearbyInvitation.invitationHostInfo) = v44;
  *(v13 + direct field offset for NearbyInvitation.controller) = v9;
  v49((v13 + direct field offset for NearbyInvitation.id), v5, v37);
  v16 = (v13 + direct field offset for NearbyInvitation.displayName);
  *v16 = v41;
  v16[1] = v3;
  *(v13 + direct field offset for NearbyInvitation.userInfo) = xmmword_25B82C300;
  v17 = (v13 + direct field offset for NearbyInvitation.sourceProvider);
  v17[3] = type metadata accessor for NearbyGroup();
  v17[4] = &protocol witness table for NearbyGroup;
  *v17 = v39;
  v18 = OBJC_IVAR____TtC14NearbySessions27NearbyInvitationsController_approvalRequests;
  swift_beginAccess();
  v0[5].super_class = *(v9 + v18);
  swift_allocObject();
  swift_weakInit();
  v19 = v44;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy14NearbySessions29IncomingInvitationJoinRequestCs5NeverOGMd, &_s7Combine18PassthroughSubjectCy14NearbySessions29IncomingInvitationJoinRequestCs5NeverOGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type PassthroughSubject<IncomingInvitationJoinRequest, Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCy14NearbySessions29IncomingInvitationJoinRequestCs5NeverOGMd, &_s7Combine18PassthroughSubjectCy14NearbySessions29IncomingInvitationJoinRequestCs5NeverOGMR);
  Publisher<>.sink(receiveValue:)();

  v20 = *(*v13 + 152);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v21 = v50[1];
  v21(v5, v37);
  v49(v46, (v13 + direct field offset for NearbyInvitation.id), v37);
  v22 = objc_allocWithZone(type metadata accessor for NearbyInvitationData(0));

  v24 = specialized NearbyInvitationData.init<A>(from:)(v23);

  v26 = (*((*MEMORY[0x277D85000] & *v24) + 0x80))(v25);
  v28 = v27;

  if (v48)
  {

    return swift_unexpectedError();
  }

  else
  {
    v45 = v0[12].receiver;
    v47 = v0[11].receiver;
    v38 = v21;
    v30 = v0[10].super_class;
    v31 = v0[9].super_class;
    v40 = v0[7].receiver;
    v42 = v0[6].receiver;
    v43 = v0[7].super_class;
    v32 = type metadata accessor for NearbyAdvertisementRequest();
    v33 = objc_allocWithZone(v32);
    v49(&v33[OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_identifier], v30, v31);
    v34 = &v33[OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_invitation];
    *v34 = v26;
    v34[1] = v28;
    v33[OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_route] = 2;
    *&v33[OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_activityType] = 1;
    v0[4].receiver = v33;
    v0[4].super_class = v32;
    v35 = objc_msgSendSuper2(v0 + 4, sel_init);
    v38(v30, v31);
    NearbyInvitationsController.advertiseNearbyInvitation(_:response:)(v35, v40, v43);

    v36 = v0->super_class;

    return v36();
  }
}

uint64_t closure #1 in NearbyInvitationsController.advertiseNearbyInvitation(_:response:)(uint64_t a1)
{
  v3 = *(*v2 + 184);
  v4 = *v2;
  v4[24] = a1;
  v4[25] = v1;

  if (v1)
  {
    v6 = v4[21];
    v5 = v4[22];
    v7 = v4[18];

    v8 = v4[1];

    return v8();
  }

  else
  {

    return MEMORY[0x2822009F8](closure #1 in NearbyInvitationsController.advertiseNearbyInvitation(_:response:), 0, 0);
  }
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  outlined init with copy of (UUID, Bool)(a3, v24 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of NSObject?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t closure #1 in NearbyInvitationsController.advertiseNearbyInvitation(_:response:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.client);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315394;
    v13 = _typeName(_:qualified:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v20);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000026, 0x800000025B830630, &v20);
    _os_log_impl(&dword_25B7C4000, v9, v10, "%s %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F86FE20](v12, -1, -1);
    MEMORY[0x25F86FE20](v11, -1, -1);
  }

  v16 = a1[2];
  v17 = a1[3];
  ObjectType = swift_getObjectType();
  return (*(v17 + 72))(a2, a1[5], a3, a4, ObjectType, v17);
}

uint64_t NearbyInvitationsController.advertiseNearbyInvitation(_:response:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v7 = v6;
  v11 = *v7;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v12 - 8);
  v13 = *(v28 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchQoS();
  v16 = *(v27 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v27);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v7[4];
  v20 = swift_allocObject();
  v20[2] = v7;
  v20[3] = a1;
  v20[4] = a2;
  v20[5] = a3;
  v20[6] = v11;
  aBlock[4] = v24;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = v25;
  v21 = _Block_copy(aBlock);

  v22 = a1;

  static DispatchQoS.unspecified.getter();
  v29 = MEMORY[0x277D84F90];
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x25F86F310](0, v19, v15, v21);
  _Block_release(v21);
  (*(v28 + 8))(v15, v12);
  (*(v16 + 8))(v19, v27);
}

uint64_t closure #1 in NearbyInvitationsController.advertiseNearbySessionEndpoint(params:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.client);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315394;
    v13 = _typeName(_:qualified:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v20);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x800000025B82F610, &v20);
    _os_log_impl(&dword_25B7C4000, v9, v10, "%s %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F86FE20](v12, -1, -1);
    MEMORY[0x25F86FE20](v11, -1, -1);
  }

  v16 = *(a1 + 16);
  v17 = *(a1 + 24);
  ObjectType = swift_getObjectType();
  return (*(v17 + 80))(a2, a3, a4, ObjectType, v17);
}

uint64_t closure #1 in NearbyInvitationsController.markInvitationUsed(_:response:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.client);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136315138;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*&v9[OBJC_IVAR____TtC14NearbySessions35NearbyInvitationJoinRequestMetadata_pseudonym], *&v9[OBJC_IVAR____TtC14NearbySessions35NearbyInvitationJoinRequestMetadata_pseudonym + 8], &v18);
    _os_log_impl(&dword_25B7C4000, v10, v11, "Requesting to mark pseudonym %s as used.", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x25F86FE20](v13, -1, -1);
    MEMORY[0x25F86FE20](v12, -1, -1);
  }

  v14 = *(a2 + 16);
  v15 = *(a2 + 24);
  ObjectType = swift_getObjectType();
  return (*(v15 + 104))(v9, a3, a4, ObjectType, v15);
}

uint64_t NearbyInvitationsController.assertAdvertisementPublic(_:rotations:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v28 = a3;
  v29 = a4;
  v27 = a2;
  v33 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v33 - 8);
  v7 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  v31 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DispatchQoS();
  v32 = *(v34 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x28223BE20](v34);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v5 + 32);
  (*(v13 + 16))(v15, a1, v12);
  v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v17 = (v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  (*(v13 + 32))(v19 + v16, v15, v12);
  *(v19 + v17) = v5;
  v20 = v28;
  *(v19 + v18) = v27;
  v21 = (v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8));
  v22 = v29;
  *v21 = v20;
  v21[1] = v22;
  aBlock[4] = partial apply for closure #1 in NearbyInvitationsController.assertAdvertisementPublic(_:rotations:response:);
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_70;
  v23 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v36 = MEMORY[0x277D84F90];
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v24 = v31;
  v25 = v33;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x25F86F310](0, v11, v24, v23);
  _Block_release(v23);
  (*(v35 + 8))(v24, v25);
  (*(v32 + 8))(v11, v34);
}

uint64_t closure #1 in NearbyInvitationsController.assertAdvertisementPublic(_:rotations:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Log.client);
  (*(v10 + 16))(v13, a1, v9);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v34 = a1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v35 = a5;
    v33 = v19;
    v37 = v19;
    *v18 = 136315138;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = a3;
    v22 = a4;
    v24 = v23;
    (*(v10 + 8))(v13, v9);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v24, &v37);
    a4 = v22;
    a3 = v21;

    *(v18 + 4) = v25;
    _os_log_impl(&dword_25B7C4000, v15, v16, "Requesting to assert invitation %s as public.", v18, 0xCu);
    v26 = v33;
    __swift_destroy_boxed_opaque_existential_0(v33);
    a5 = v35;
    MEMORY[0x25F86FE20](v26, -1, -1);
    v27 = v18;
    a1 = v34;
    MEMORY[0x25F86FE20](v27, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v13, v9);
  }

  v29 = *(v36 + 16);
  v28 = *(v36 + 24);
  ObjectType = swift_getObjectType();
  return (*(v28 + 112))(a1, a3, a4, a5, ObjectType, v28);
}

uint64_t NearbyInvitationsController.releaseAdvertisementPublicAssertion(_:assertionIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v29 = a2;
  v34 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v34 - 8);
  v5 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  v32 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for DispatchQoS();
  v33 = *(v35 - 8);
  v7 = *(v33 + 64);
  MEMORY[0x28223BE20](v35);
  v30 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - v14;
  v31 = *(v2 + 32);
  v16 = *(v10 + 16);
  v16(&v28 - v14, v29, v9);
  v16(v13, a1, v9);
  v17 = *(v10 + 80);
  v18 = (v17 + 16) & ~v17;
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v17 + v19 + 8) & ~v17;
  v21 = swift_allocObject();
  v22 = *(v10 + 32);
  v22(v21 + v18, v15, v9);
  *(v21 + v19) = v3;
  v22(v21 + v20, v13, v9);
  aBlock[4] = partial apply for closure #1 in NearbyInvitationsController.releaseAdvertisementPublicAssertion(_:assertionIdentifier:);
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_76;
  v23 = _Block_copy(aBlock);

  v24 = v30;
  static DispatchQoS.unspecified.getter();
  v37 = MEMORY[0x277D84F90];
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v25 = v32;
  v26 = v34;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x25F86F310](0, v24, v25, v23);
  _Block_release(v23);
  (*(v36 + 8))(v25, v26);
  (*(v33 + 8))(v24, v35);
}

uint64_t closure #1 in NearbyInvitationsController.releaseAdvertisementPublicAssertion(_:assertionIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Log.client);
  (*(v7 + 16))(v10, a1, v6);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v30 = a3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v29 = a1;
    v17 = v16;
    v31 = v16;
    *v15 = 136315138;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    (*(v7 + 8))(v10, v6);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v31);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_25B7C4000, v12, v13, "Request to release assertion identifier: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    v22 = v17;
    a1 = v29;
    MEMORY[0x25F86FE20](v22, -1, -1);
    v23 = v15;
    a3 = v30;
    MEMORY[0x25F86FE20](v23, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  v25 = *(a2 + 16);
  v24 = *(a2 + 24);
  ObjectType = swift_getObjectType();
  return (*(v24 + 120))(a3, a1, ObjectType, v24);
}

uint64_t closure #1 in NearbyInvitationsController.releaseInvitation(_:response:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.client);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136315138;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*&v9[OBJC_IVAR____TtC14NearbySessions35NearbyInvitationJoinRequestMetadata_pseudonym], *&v9[OBJC_IVAR____TtC14NearbySessions35NearbyInvitationJoinRequestMetadata_pseudonym + 8], &v18);
    _os_log_impl(&dword_25B7C4000, v10, v11, "Requesting to release invitation from pseudonym %s.", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x25F86FE20](v13, -1, -1);
    MEMORY[0x25F86FE20](v12, -1, -1);
  }

  v14 = *(a2 + 16);
  v15 = *(a2 + 24);
  ObjectType = swift_getObjectType();
  return (*(v15 + 128))(v9, a3, a4, ObjectType, v15);
}

uint64_t NearbyInvitationsController.stopAdvertisingNearbyInvitation(_:response:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.client);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_25B7C4000, v7, v8, "Utilization of deprecated SPI stopAdvertisingNearbyInvitation.", v9, 2u);
    MEMORY[0x25F86FE20](v9, -1, -1);
  }

  v10 = a1 + OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_identifier;

  return NearbyInvitationsController.stopAdvertisingNearbyInvitation(_:response:)(v10, a2, a3);
}

{
  v4 = v3;
  v26 = a2;
  v27 = a3;
  v25 = *v3;
  v30 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v30 - 8);
  v6 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for DispatchQoS();
  v29 = *(v31 - 8);
  v9 = *(v29 + 64);
  MEMORY[0x28223BE20](v31);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v4[4];
  (*(v13 + 16))(v15, a1, v12);
  v16 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v17 = (v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = v4;
  (*(v13 + 32))(v18 + v16, v15, v12);
  v19 = (v18 + v17);
  v20 = v27;
  *v19 = v26;
  v19[1] = v20;
  *(v18 + ((v17 + 23) & 0xFFFFFFFFFFFFFFF8)) = v25;
  aBlock[4] = partial apply for closure #1 in NearbyInvitationsController.stopAdvertisingNearbyInvitation(_:response:);
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_88;
  v21 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v33 = MEMORY[0x277D84F90];
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v22 = v30;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x25F86F310](0, v11, v8, v21);
  _Block_release(v21);
  (*(v32 + 8))(v8, v22);
  (*(v29 + 8))(v11, v31);
}

uint64_t closure #1 in NearbyInvitationsController.stopAdvertisingNearbyInvitation(_:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.client);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315394;
    v13 = _typeName(_:qualified:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v20);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x800000025B82F5E0, &v20);
    _os_log_impl(&dword_25B7C4000, v9, v10, "%s %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F86FE20](v12, -1, -1);
    MEMORY[0x25F86FE20](v11, -1, -1);
  }

  v16 = *(a1 + 16);
  v17 = *(a1 + 24);
  ObjectType = swift_getObjectType();
  return (*(v17 + 88))(a2, a3, a4, ObjectType, v17);
}

uint64_t NearbyInvitationsController.stopAdvertisingNearbySessionEndpoint(response:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v12 = *(v20 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v20);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = v3[4];
  v16 = swift_allocObject();
  v16[2] = v3;
  v16[3] = a1;
  v16[4] = a2;
  v16[5] = v6;
  aBlock[4] = partial apply for closure #1 in NearbyInvitationsController.stopAdvertisingNearbySessionEndpoint(response:);
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_94;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v21 = MEMORY[0x277D84F90];
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x25F86F310](0, v15, v11, v17);
  _Block_release(v17);
  (*(v8 + 8))(v11, v7);
  (*(v12 + 8))(v15, v20);
}

uint64_t closure #1 in NearbyInvitationsController.stopAdvertisingNearbySessionEndpoint(response:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.client);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315394;
    v11 = _typeName(_:qualified:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v18);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x800000025B82F5B0, &v18);
    _os_log_impl(&dword_25B7C4000, v7, v8, "%s %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F86FE20](v10, -1, -1);
    MEMORY[0x25F86FE20](v9, -1, -1);
  }

  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  ObjectType = swift_getObjectType();
  return (*(v15 + 96))(a2, a3, ObjectType, v15);
}

uint64_t NearbyInvitationsController.scanNearbyInvitations(scannerID:response:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v26 = a2;
  v27 = a3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v6 - 8);
  v7 = *(v31 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v3 + 32);
  (*(v15 + 16))(v17, a1, v14);
  v18 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v19 = (v16 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = v4;
  (*(v15 + 32))(v20 + v18, v17, v14);
  v21 = (v20 + v19);
  v22 = v27;
  *v21 = v26;
  v21[1] = v22;
  aBlock[4] = partial apply for closure #1 in NearbyInvitationsController.scanNearbyInvitations(scannerID:response:);
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_100;
  v23 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v32 = MEMORY[0x277D84F90];
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x25F86F310](0, v13, v9, v23);
  _Block_release(v23);
  (*(v31 + 8))(v9, v6);
  (*(v29 + 8))(v13, v30);
}

uint64_t closure #1 in NearbyInvitationsController.scanNearbyInvitations(scannerID:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.client);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_25B7C4000, v9, v10, "NearbyInvitationsController scanNearbyInvitations", v11, 2u);
    MEMORY[0x25F86FE20](v11, -1, -1);
  }

  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  ObjectType = swift_getObjectType();
  return (*(v13 + 136))(a2, a3, a4, ObjectType, v13);
}

uint64_t NearbyInvitationsController.scanNearbyEndpoints(params:scannerID:response:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v28 = a3;
  v29 = a4;
  v31 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v31 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v32 = *(v11 - 8);
  v33 = v11;
  v12 = *(v32 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v5 + 32);
  (*(v16 + 16))(v18, a2, v15);
  v19 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v20 = (v17 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = v5;
  *(v21 + 24) = a1;
  (*(v16 + 32))(v21 + v19, v18, v15);
  v22 = (v21 + v20);
  v23 = v29;
  *v22 = v28;
  v22[1] = v23;
  aBlock[4] = partial apply for closure #1 in NearbyInvitationsController.scanNearbyEndpoints(params:scannerID:response:);
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_106;
  v24 = _Block_copy(aBlock);

  v25 = a1;

  static DispatchQoS.unspecified.getter();
  v35 = MEMORY[0x277D84F90];
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v26 = v31;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x25F86F310](0, v14, v10, v24);
  _Block_release(v24);
  (*(v34 + 8))(v10, v26);
  (*(v32 + 8))(v14, v33);
}

uint64_t closure #1 in NearbyInvitationsController.scanNearbyEndpoints(params:scannerID:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.client);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_25B7C4000, v11, v12, "NearbyInvitationsController scan nearby endpoints", v13, 2u);
    MEMORY[0x25F86FE20](v13, -1, -1);
  }

  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  ObjectType = swift_getObjectType();
  return (*(v15 + 144))(a2, a3, a4, a5, ObjectType, v15);
}

uint64_t NearbyInvitationsController.generateNearbyInvitation(response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = v5;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v11 - 8);
  v12 = *(v24 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v15 = *(v23 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v23);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v8 + 32);
  v19 = swift_allocObject();
  v19[2] = v8;
  v19[3] = a1;
  v19[4] = a2;
  aBlock[4] = a4;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = a5;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v25 = MEMORY[0x277D84F90];
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x25F86F310](0, v18, v14, v20);
  _Block_release(v20);
  (*(v24 + 8))(v14, v11);
  (*(v15 + 8))(v18, v23);
}

uint64_t closure #1 in NearbyInvitationsController.stopScanningNearbyInvitations(response:)(void *a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.client);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_25B7C4000, v7, v8, "NearbyInvitationsController stopScanningNearbyInvitations", v9, 2u);
    MEMORY[0x25F86FE20](v9, -1, -1);
  }

  v10 = a1[2];
  v11 = a1[3];
  ObjectType = swift_getObjectType();
  return (*(v11 + 152))(a1[5], a2, a3, ObjectType, v11);
}

uint64_t NearbyInvitationsController.requestConnection(with:localInvitation:response:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.client);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_25B7C4000, v9, v10, "Utilization of deprecated SPI requestConnection.", v11, 2u);
    MEMORY[0x25F86FE20](v11, -1, -1);
  }

  v12 = *(a2 + OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_metadata);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;

  NearbyInvitationsController.requestConnection(with:localInvitation:response:)(a1, v12, partial apply for closure #1 in NearbyInvitationsController.requestConnection(with:localInvitation:response:), v13);
}

uint64_t closure #1 in NearbyInvitationsController.requestConnection(with:localInvitation:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.client);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_25B7C4000, v11, v12, "NearbyInvitationsController requestConnection", v13, 2u);
    MEMORY[0x25F86FE20](v13, -1, -1);
  }

  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  ObjectType = swift_getObjectType();
  return (*(v15 + 160))(a2, a3, a4, a5, ObjectType, v15);
}

uint64_t NearbyInvitationsController.requestConnection(with:localInvitation:response:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27[0] = a7;
  v9 = v7;
  v14 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v14 - 8);
  v15 = *(v30 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v28 = *(v18 - 8);
  v29 = v18;
  v19 = *(v28 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[1] = *(v9 + 32);
  v22 = swift_allocObject();
  v22[2] = v9;
  v22[3] = a1;
  v22[4] = a2;
  v22[5] = a3;
  v22[6] = a4;
  aBlock[4] = a6;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = v27[0];
  v23 = _Block_copy(aBlock);

  v24 = a1;
  v25 = a2;

  static DispatchQoS.unspecified.getter();
  v31 = MEMORY[0x277D84F90];
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x25F86F310](0, v21, v17, v23);
  _Block_release(v23);
  (*(v30 + 8))(v17, v14);
  (*(v28 + 8))(v21, v29);
}

uint64_t closure #1 in NearbyInvitationsController.requestEndpointConnection(with:pseudonym:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.client);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_25B7C4000, v11, v12, "NearbyInvitationsController requestEndpointConnection", v13, 2u);
    MEMORY[0x25F86FE20](v13, -1, -1);
  }

  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  ObjectType = swift_getObjectType();
  return (*(v15 + 168))(a2, a3, a4, a5, ObjectType, v15);
}

void NearbyInvitationsController.requestJoiningSession(with:response:)(uint64_t a1, void (*a2)(void))
{
  lazy protocol witness table accessor for type NearbyInvitationsController.Errors and conformance NearbyInvitationsController.Errors();
  v3 = swift_allocError();
  *v4 = 2;
  a2();
}

uint64_t NearbyInvitationsController.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = OBJC_IVAR____TtC14NearbySessions27NearbyInvitationsController__groups;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDy10Foundation4UUIDV14NearbySessions0E19GroupConnectionInfoCGGMd, &_s7Combine9PublishedVySDy10Foundation4UUIDV14NearbySessions0E19GroupConnectionInfoCGGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC14NearbySessions27NearbyInvitationsController_approvalRequests);

  v6 = *(v0 + OBJC_IVAR____TtC14NearbySessions27NearbyInvitationsController_groupTable);

  return v0;
}

uint64_t NearbyInvitationsController.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = OBJC_IVAR____TtC14NearbySessions27NearbyInvitationsController__groups;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDy10Foundation4UUIDV14NearbySessions0E19GroupConnectionInfoCGGMd, &_s7Combine9PublishedVySDy10Foundation4UUIDV14NearbySessions0E19GroupConnectionInfoCGGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC14NearbySessions27NearbyInvitationsController_approvalRequests);

  v6 = *(v0 + OBJC_IVAR____TtC14NearbySessions27NearbyInvitationsController_groupTable);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v7, v8);
}

uint64_t NearbyInvitationsController.didReceiveInvitationApprovalRequest(request:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.client);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_25B7C4000, v6, v7, "NearbyInvitationsController didReceiveInvitationApprovalRequest %@", v8, 0xCu);
    outlined destroy of NSObject?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x25F86FE20](v9, -1, -1);
    MEMORY[0x25F86FE20](v8, -1, -1);
  }

  v11 = OBJC_IVAR____TtC14NearbySessions27NearbyInvitationsController_approvalRequests;
  swift_beginAccess();
  v12 = *(v2 + v11);

  PassthroughSubject.send(_:)();
}

uint64_t NearbyInvitationsController.notifyObservers(with:)()
{
  v1 = *(v0 + 48);
  result = Lock.withLock<A>(_:)();
  __break(1u);
  return result;
}

void NearbyInvitationsController.didDiscoverNearbyAdvertisement(advertisement:)(void *a1, const char *a2)
{
  v4 = v2;
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.client);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&dword_25B7C4000, v8, v9, a2, v10, 0xCu);
    outlined destroy of NSObject?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x25F86FE20](v11, -1, -1);
    MEMORY[0x25F86FE20](v10, -1, -1);
  }

  v13 = v7;
  specialized NearbyInvitationsController.notifyObservers(with:)(v4);
}

uint64_t NearbyInvitationsController.didDiscoverNearbySessionInvitation(id:invitation:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.client);
  outlined copy of Data._Representation(a3, a4);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(a3, a4);
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    v13 = Data.description.getter();
    v15 = v5;
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v18);

    *(v11 + 4) = v16;
    v5 = v15;
    _os_log_impl(&dword_25B7C4000, v9, v10, "NearbyInvitationsController didDiscoverNearbySessionInvitation %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x25F86FE20](v12, -1, -1);
    MEMORY[0x25F86FE20](v11, -1, -1);
  }

  outlined copy of Data._Representation(a3, a4);

  specialized NearbyInvitationsController.notifyObservers(with:)(v5);
  outlined consume of Data._Representation(a3, a4);
}

void closure #1 in NearbyInvitationsController.didDiscoverNearbySessionInvitation(id:invitation:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 respondsToSelector_])
  {
    v15 = MEMORY[0x25F86F000](a2, a3);
    isa = Data._bridgeToObjectiveC()().super.isa;
    [a1 didDiscoverNearbySessionInvitationWithId:v15 invitation:isa];
  }

  v17 = specialized static NearbyInvitationData.create(from:)(a4, a5);
  v18 = *(v11 + 16);
  v18(v14, &v17[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_invitationID], v10);
  v46 = *&v17[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_hostConnectionInfo];
  v19 = UUID.uuidString.getter();
  v44 = v20;
  v45 = v19;
  v21 = *&v17[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_sourceProviderName];
  v42 = *&v17[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_sourceProviderName + 8];
  v43 = v21;
  v22 = v11;
  v23 = *&v17[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_displayName];
  v24 = *&v17[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_displayName + 8];
  v25 = *&v17[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_userInfo];
  v40 = *&v17[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_userInfo + 8];
  v41 = v25;
  v47 = type metadata accessor for NearbySessionInvitation();
  v48 = a1;
  v26 = objc_allocWithZone(v47);
  v18(&v26[OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_identifier], v14, v10);
  *&v26[OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_activityType] = 1;
  v27 = v45;
  *&v26[OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_metadata] = v46;
  v28 = &v26[OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_sourceProviderID];
  v29 = v43;
  v30 = v44;
  *v28 = v27;
  v28[1] = v30;
  v31 = &v26[OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_sourceProviderName];
  v33 = v41;
  v32 = v42;
  *v31 = v29;
  v31[1] = v32;
  v34 = &v26[OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_userInfo];
  v35 = v40;
  *v34 = v33;
  v34[1] = v35;
  v26[OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_isPublic] = 0;
  v36 = &v26[OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_displayName];
  *v36 = v23;
  v36[1] = v24;
  v37 = &v26[OBJC_IVAR____TtC14NearbySessions23NearbySessionInvitation_handle];
  *v37 = v23;
  v37[1] = v24;
  swift_bridgeObjectRetain_n();

  outlined copy of Data?(v33, v35);
  v38 = v48;
  v49.receiver = v26;
  v49.super_class = v47;
  v39 = objc_msgSendSuper2(&v49, sel_init);
  (*(v22 + 8))(v14, v10);
  if ([v38 respondsToSelector_])
  {
    [v38 didDiscoverNearbySessionInvitationWithInvitation_];
  }
}

uint64_t closure #1 in NearbyInvitationsController.notifyObservers(with:)(uint64_t *a1, uint64_t a2)
{
  v3 = [*(a2 + 56) allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NearbySessions0A29InvitationsControllerObserver_pMd, &_s14NearbySessions0A29InvitationsControllerObserver_pMR);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = *a1;
  *a1 = v4;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Errors #1 in NearbyGroupTable.firstGroup()()
{
  Hasher.init(_seed:)();
  MEMORY[0x25F86F720](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Errors #1 in NearbyGroupTable.firstGroup()()
{
  Hasher.init(_seed:)();
  MEMORY[0x25F86F720](0);
  return Hasher._finalize()();
}

uint64_t specialized closure #1 in NearbyInvitation.init<A>(id:displayName:hostInfo:userInfo:controller:invitationSourceProvider:)(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = MEMORY[0x277D85000];
    v5 = (*((*MEMORY[0x277D85000] & *a1) + 0x88))();
    if (v5)
    {
      v7 = *(v5 + OBJC_IVAR____TtC14NearbySessions35NearbyInvitationJoinRequestMetadata_pseudonym);
      v6 = *(v5 + OBJC_IVAR____TtC14NearbySessions35NearbyInvitationJoinRequestMetadata_pseudonym + 8);
      v8 = v5;

      v9 = direct field offset for NearbyInvitation.invitationHostInfo;
      v10 = (*(v3 + direct field offset for NearbyInvitation.invitationHostInfo) + OBJC_IVAR____TtC14NearbySessions35NearbyInvitationJoinRequestMetadata_pseudonym);
      if (v7 == *v10 && v6 == v10[1])
      {
      }

      else
      {
        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v12 & 1) == 0)
        {
        }
      }

      swift_weakInit();
      v13 = *(v3 + v9);
      v14 = *((*v4 & *a1) + 0x90);

      v15 = v13;
      v14(v13);
      v19 = a1;
      swift_weakAssign();
      v16 = a1;

      v17 = (*(*v3 + 184))(v18);
      specialized Set._Variant.insert(_:)(v20, &v19);
      outlined destroy of NSObject?(v20, &_s14NearbySessions0A10InvitationC13PendingMemberVyAA0A5GroupC_GMd, &_s14NearbySessions0A10InvitationC13PendingMemberVyAA0A5GroupC_GMR);
      v17(v18, 0);
    }
  }

  return result;
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy10Foundation4UUIDV14NearbySessions0K10GroupTableC04WeakkM0VG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab28VKXEfU_10Foundation4UUIDV_14k12Sessions0J10mN14C04WeakjL0VTG5APxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjOIsgnndzo_Tf1nc_n04_s14ky3A10mn29C19cleanUpIfNotPresentyySDy10W44UUIDVSbGYaFyyYaYbcfU_SbAG_AC04WeakaC0VtXEfU_SDyAJSbGTf1nnc_n(unint64_t *result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = specialized closure #1 in _NativeDictionary.filter(_:)(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t specialized _NativeDictionary.extractDictionary(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v46 = type metadata accessor for UUID();
  v44 = *(v46 - 8);
  v8 = *(v44 + 64);
  v9 = MEMORY[0x28223BE20](v46);
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v41 = v38 - v12;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV14NearbySessions0E10GroupTableC04WeakeG0VGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV14NearbySessions0E10GroupTableC04WeakeG0VGMR);
  result = static _DictionaryStorage.allocate(capacity:)();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  v38[1] = v44 + 16;
  v39 = result;
  v45 = v44 + 32;
  v17 = result + 64;
  v40 = a1;
  v38[0] = a4;
  v18 = v46;
  while (v15)
  {
    v19 = v11;
    v20 = __clz(__rbit64(v15));
    v42 = (v15 - 1) & v15;
LABEL_16:
    v23 = v20 | (v16 << 6);
    v24 = a4[6];
    v25 = v44;
    v43 = *(v44 + 72);
    v26 = v41;
    (*(v44 + 16))(v41, v24 + v43 * v23, v18);
    outlined init with copy of NearbyGroupTable.WeakNearbyGroup(a4[7] + 8 * v23, v48);
    v27 = *(v25 + 32);
    v11 = v19;
    v27(v19, v26, v18);
    outlined init with take of NearbyGroupTable.WeakNearbyGroup(v48, v47);
    v14 = v39;
    v28 = *(v39 + 40);
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v29 = -1 << *(v14 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v17 + 8 * (v30 >> 6))) == 0)
    {
      v33 = 0;
      v34 = (63 - v29) >> 6;
      a1 = v40;
      while (++v31 != v34 || (v33 & 1) == 0)
      {
        v35 = v31 == v34;
        if (v31 == v34)
        {
          v31 = 0;
        }

        v33 |= v35;
        v36 = *(v17 + 8 * v31);
        if (v36 != -1)
        {
          v32 = __clz(__rbit64(~v36)) + (v31 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v32 = __clz(__rbit64((-1 << v30) & ~*(v17 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
    a1 = v40;
LABEL_26:
    *(v17 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    v27((*(v14 + 48) + v32 * v43), v11, v46);
    result = outlined init with take of NearbyGroupTable.WeakNearbyGroup(v47, *(v14 + 56) + 8 * v32);
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v38[0];
    v15 = v42;
    if (!a3)
    {
      return v14;
    }
  }

  v21 = v16;
  while (1)
  {
    v16 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v22 = a1[v16];
    ++v21;
    if (v22)
    {
      v19 = v11;
      v20 = __clz(__rbit64(v22));
      v42 = (v22 - 1) & v22;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  v8 = v7;
  if (v7)
  {
    v9 = result;
    v10 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v3;
    v15 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v12 = v15;
    }

    v13 = *(v12 + 48);
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 8))(v13 + *(*(v14 - 8) + 72) * v9, v14);
    outlined init with take of NearbyGroupTable.WeakNearbyGroup(*(v12 + 56) + 8 * v9, a2);
    result = specialized _NativeDictionary._delete(at:)(v9, v12);
    *v3 = v12;
  }

  else
  {
    *a2 = 0;
  }

  *(a2 + 8) = (v8 & 1) == 0;
  return result;
}

unint64_t specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v37 = type metadata accessor for UUID();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v37);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = _HashTable.previousHole(before:)();
    v14 = v12;
    v36 = (v13 + 1) & v12;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v34 = a2 + 64;
    v35 = v16;
    v17 = *(v15 + 56);
    v33 = (v15 - 8);
    v38 = v14;
    v18 = v37;
    do
    {
      v19 = v17;
      v20 = v17 * v11;
      v21 = *(a2 + 48) + v17 * v11;
      v22 = v15;
      v35(v8, v21, v18);
      v23 = *(a2 + 40);
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v33)(v8, v18);
      v25 = v38;
      v26 = v24 & v38;
      if (a1 >= v36)
      {
        if (v26 >= v36 && a1 >= v26)
        {
LABEL_15:
          v15 = v22;
          v17 = v19;
          if (v19 * a1 < v20 || *(a2 + 48) + v19 * a1 >= (*(a2 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v29 = *(a2 + 56);
          result = v29 + 8 * a1;
          v9 = v34;
          if (a1 < v11 || result >= v29 + 8 * v11 + 8)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v25 = v38;
          }

          else
          {
            v25 = v38;
            if (a1 != v11)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v25 = v38;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v26 >= v36 || a1 >= v26)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v9 = v34;
      v17 = v19;
LABEL_4:
      v11 = (v11 + 1) & v25;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v30 = *(a2 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v32;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a3 & 1);
    v24 = *v4;
    v25 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return specialized _NativeDictionary._insert(at:key:value:)(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7] + 8 * v15;

  return outlined assign with take of NearbyGroupTable.WeakNearbyGroup(a1, v22);
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = outlined init with take of NearbyGroupTable.WeakNearbyGroup(a3, a4[7] + 8 * a1);
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

char *specialized NearbyInvitationsController.init(dataSource:queue:provider:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v39 = a2;
  v40 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOyyyYaYbc__GMd, &_sScS12ContinuationV15BufferingPolicyOyyyYaYbc__GMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v38 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDy10Foundation4UUIDV14NearbySessions0E19GroupConnectionInfoCGGMd, &_s7Combine9PublishedVySDy10Foundation4UUIDV14NearbySessions0E19GroupConnectionInfoCGGMR);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = type metadata accessor for Lock();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  *(a4 + 6) = Lock.init()();
  *(a4 + 7) = [objc_opt_self() weakObjectsHashTable];
  v23 = OBJC_IVAR____TtC14NearbySessions27NearbyInvitationsController__groups;
  v41 = MEMORY[0x277D84F98];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy10Foundation4UUIDV14NearbySessions0C19GroupConnectionInfoCGMd, &_sSDy10Foundation4UUIDV14NearbySessions0C19GroupConnectionInfoCGMR);
  Published.init(initialValue:)();
  (*(v16 + 32))(&a4[v23], v19, v15);
  v24 = OBJC_IVAR____TtC14NearbySessions27NearbyInvitationsController_approvalRequests;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy14NearbySessions29IncomingInvitationJoinRequestCs5NeverOGMd, &_s7Combine18PassthroughSubjectCy14NearbySessions29IncomingInvitationJoinRequestCs5NeverOGMR);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  *&a4[v24] = PassthroughSubject.init()();
  v28 = OBJC_IVAR____TtC14NearbySessions27NearbyInvitationsController_groupTable;
  v29 = type metadata accessor for NearbyGroupTable(0);
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  v32 = swift_allocObject();
  v33 = type metadata accessor for TaskPriority();
  (*(*(v33 - 8) + 56))(v14, 1, 1, v33);
  (*(v7 + 104))(v10, *MEMORY[0x277D85778], v6);
  AsyncSerialQueue.init(priority:bufferingPolicy:)();
  v34 = OBJC_IVAR____TtC14NearbySessions16NearbyGroupTable_contents;
  *(v32 + v34) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_14NearbySessions0E10GroupTableC04WeakeG0VTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *&a4[v28] = v32;
  *(a4 + 2) = a1;
  *(a4 + 3) = &protocol witness table for NearbyInvitationServiceClient;
  v35 = v40;
  *(a4 + 4) = v39;
  *(a4 + 5) = v35;
  v36 = a1 + direct field offset for NearbyInvitationServiceClient.delegate;
  swift_beginAccess();
  *(v36 + 8) = &protocol witness table for NearbyInvitationsController;
  swift_unknownObjectWeakAssign();
  return a4;
}

void specialized NearbyInvitationsController.didDisconnect(client:)()
{
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Log.client);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_25B7C4000, oslog, v1, "NearbyInvitationsController didDisconnect", v2, 2u);
    MEMORY[0x25F86FE20](v2, -1, -1);
  }
}

uint64_t specialized NearbyInvitationsController.notifyObservers(with:)(uint64_t a1)
{
  v1 = *(a1 + 48);
  result = Lock.withLock<A>(_:)();
  __break(1u);
  return result;
}

{
  v1 = *(a1 + 48);
  result = Lock.withLock<A>(_:)();
  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_14NearbySessions0E10GroupTableC04WeakeG0VTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_14NearbySessions0C10GroupTableC04WeakcE0VtMd, &_s10Foundation4UUIDV_14NearbySessions0C10GroupTableC04WeakcE0VtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV14NearbySessions0E10GroupTableC04WeakeG0VGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV14NearbySessions0E10GroupTableC04WeakeG0VGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (UUID, Bool)(v10, v6, &_s10Foundation4UUIDV_14NearbySessions0C10GroupTableC04WeakcE0VtMd, &_s10Foundation4UUIDV_14NearbySessions0C10GroupTableC04WeakcE0VtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for UUID();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      result = outlined init with take of NearbyGroupTable.WeakNearbyGroup(&v6[v9], v8[7] + 8 * v14);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_SbTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_SbtMd, &_s10Foundation4UUIDV_SbtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSbGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSbGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (UUID, Bool)(v10, v6, &_s10Foundation4UUIDV_SbtMd, &_s10Foundation4UUIDV_SbtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for UUID();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + v14) = v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v26 = a2;
  v32 = a4;
  v27 = a1;
  v31 = type metadata accessor for UUID();
  v5 = *(v31 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v31);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v33 = a3;
  v13 = a3[8];
  v12 = a3 + 8;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v30 = v5 + 16;
  v28 = 0;
  v29 = v5 + 8;
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_11:
    v21 = v18 | (v10 << 6);
    v22 = v33;
    v23 = v31;
    (*(v5 + 16))(v9, v33[6] + *(v5 + 72) * v21, v31);
    outlined init with copy of NearbyGroupTable.WeakNearbyGroup(v22[7] + 8 * v21, v34);
    LOBYTE(v22) = closure #1 in closure #1 in NearbyGroupTable.cleanUpIfNotPresent(_:)(v9, v34, v32);
    outlined destroy of NearbyGroupTable.WeakNearbyGroup(v34);
    result = (*(v5 + 8))(v9, v23);
    if (v22)
    {
      *(v27 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      if (__OFADD__(v28++, 1))
      {
        __break(1u);
        return specialized _NativeDictionary.extractDictionary(using:count:)(v27, v26, v28, v33);
      }
    }
  }

  v19 = v10;
  while (1)
  {
    v10 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(v27, v26, v28, v33);
    }

    v20 = v12[v10];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v16 = (v20 - 1) & v20;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized _NativeDictionary.filter(_:)(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v10 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy10Foundation4UUIDV14NearbySessions0K10GroupTableC04WeakkM0VG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab28VKXEfU_10Foundation4UUIDV_14k12Sessions0J10mN14C04WeakjL0VTG5APxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjOIsgnndzo_Tf1nc_n04_s14ky3A10mn29C19cleanUpIfNotPresentyySDy10W44UUIDVSbGYaFyyYaYbcfU_SbAG_AC04WeakaC0VtXEfU_SDyAJSbGTf1nnc_n(v13, v7, a1, a2);
      MEMORY[0x25F86FE20](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v9);
  bzero(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = specialized closure #1 in _NativeDictionary.filter(_:)((v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
LABEL_6:
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

char *specialized NearbyInvitationsController.__allocating_init(provider:)(uint64_t a1)
{
  v28 = a1;
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v26 = *(v1 - 8);
  v27 = v1;
  v2 = *(v26 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for NSSet(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v29 = 0;
  v30 = 0xE000000000000000;
  _StringGuts.grow(_:)(40);

  v29 = 0xD000000000000026;
  v30 = 0x800000025B830690;
  UUID.init()();
  v14 = UUID.uuidString.getter();
  v16 = v15;
  (*(v10 + 8))(v13, v9);
  MEMORY[0x25F86F070](v14, v16);

  static DispatchQoS.unspecified.getter();
  v29 = MEMORY[0x277D84F90];
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v26 + 104))(v4, *MEMORY[0x277D85260], v27);
  v17 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v18 = static NearbyInvitationServiceClient.shared;
  v19 = type metadata accessor for NearbyInvitationsController(0);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v22 = swift_allocObject();
  v23 = v18;
  return specialized NearbyInvitationsController.init(dataSource:queue:provider:)(v23, v17, v28, v22);
}

char *specialized NearbyInvitationsController.init(dataSource:queue:provider:)(uint64_t a1, void *a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v46 = a3;
  v47 = a5;
  v45 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOyyyYaYbc__GMd, &_sScS12ContinuationV15BufferingPolicyOyyyYaYbc__GMR);
  v9 = *(v44 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v44);
  v12 = &v43 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v43 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDy10Foundation4UUIDV14NearbySessions0E19GroupConnectionInfoCGGMd, &_s7Combine9PublishedVySDy10Foundation4UUIDV14NearbySessions0E19GroupConnectionInfoCGGMR);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v43 - v20;
  v22 = type metadata accessor for Lock();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  *(a4 + 6) = Lock.init()();
  *(a4 + 7) = [objc_opt_self() weakObjectsHashTable];
  v25 = OBJC_IVAR____TtC14NearbySessions27NearbyInvitationsController__groups;
  v48 = MEMORY[0x277D84F98];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy10Foundation4UUIDV14NearbySessions0C19GroupConnectionInfoCGMd, &_sSDy10Foundation4UUIDV14NearbySessions0C19GroupConnectionInfoCGMR);
  Published.init(initialValue:)();
  (*(v18 + 32))(&a4[v25], v21, v17);
  v26 = OBJC_IVAR____TtC14NearbySessions27NearbyInvitationsController_approvalRequests;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy14NearbySessions29IncomingInvitationJoinRequestCs5NeverOGMd, &_s7Combine18PassthroughSubjectCy14NearbySessions29IncomingInvitationJoinRequestCs5NeverOGMR);
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  *&a4[v26] = PassthroughSubject.init()();
  v30 = OBJC_IVAR____TtC14NearbySessions27NearbyInvitationsController_groupTable;
  v31 = type metadata accessor for NearbyGroupTable(0);
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  v34 = swift_allocObject();
  v35 = type metadata accessor for TaskPriority();
  (*(*(v35 - 8) + 56))(v16, 1, 1, v35);
  (*(v9 + 104))(v12, *MEMORY[0x277D85778], v44);
  AsyncSerialQueue.init(priority:bufferingPolicy:)();
  v36 = OBJC_IVAR____TtC14NearbySessions16NearbyGroupTable_contents;
  *(v34 + v36) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_14NearbySessions0E10GroupTableC04WeakeG0VTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *&a4[v30] = v34;
  *(a4 + 2) = a1;
  *(a4 + 3) = a6;
  v38 = v45;
  v37 = v46;
  *(a4 + 4) = v45;
  *(a4 + 5) = v37;
  v39 = *(a6 + 16);
  swift_unknownObjectRetain();
  v40 = v38;

  v39(v41, &protocol witness table for NearbyInvitationsController, v47, a6);
  return a4;
}

char *specialized NearbyInvitationsController.__allocating_init(dataSource:queue:provider:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a4 + 48);
  v12 = *(a4 + 52);
  v13 = swift_allocObject();

  return specialized NearbyInvitationsController.init(dataSource:queue:provider:)(a1, a2, a3, v13, a5, a6);
}

uint64_t specialized NearbyInvitationsController.denyConnectionRequest(_:localInvitation:)(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v8 = *(v17 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v17);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v1 + 32);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v1;
  aBlock[4] = partial apply for closure #1 in NearbyInvitationsController.denyConnectionRequest(_:localInvitation:);
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_180_0;
  v13 = _Block_copy(aBlock);
  v14 = a1;

  static DispatchQoS.unspecified.getter();
  v18 = MEMORY[0x277D84F90];
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x25F86F310](0, v11, v7, v13);
  _Block_release(v13);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v17);
}

uint64_t partial apply for closure #1 in NearbyInvitationsController.advertiseNearbyInvitation(_:response:)(uint64_t a1)
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
  v10[1] = partial apply for closure #1 in NearbyGroupTable.cleanUpIfNotPresent(_:);

  return closure #1 in NearbyInvitationsController.advertiseNearbyInvitation(_:response:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t objectdestroy_48Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t partial apply for closure #1 in NearbyInvitationsController.assertAdvertisementPublic(_:rotations:response:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + v4);
  v7 = (v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return closure #1 in NearbyInvitationsController.assertAdvertisementPublic(_:rotations:response:)(v0 + v2, v5, v6, v8, v9);
}

uint64_t partial apply for closure #1 in NearbyInvitationsController.releaseAdvertisementPublicAssertion(_:assertionIdentifier:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v4);

  return closure #1 in NearbyInvitationsController.releaseAdvertisementPublicAssertion(_:assertionIdentifier:)(v0 + v3, v5, v0 + ((v2 + v4 + 8) & ~v2));
}

uint64_t objectdestroy_17Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t partial apply for closure #1 in NearbyInvitationsController.stopAdvertisingNearbyInvitation(_:response:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = (v0 + v3);
  v7 = *(v0 + v4);
  v8 = *v6;
  v9 = v6[1];

  return closure #1 in NearbyInvitationsController.stopAdvertisingNearbyInvitation(_:response:)(v5, v0 + v2, v8, v9);
}

uint64_t objectdestroy_4Tm()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t partial apply for closure #1 in NearbyInvitationsController.scanNearbyInvitations(scannerID:response:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  return closure #1 in NearbyInvitationsController.scanNearbyInvitations(scannerID:response:)(v3, v0 + v2, v5, v6);
}

uint64_t partial apply for closure #1 in NearbyInvitationsController.scanNearbyEndpoints(params:scannerID:response:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return closure #1 in NearbyInvitationsController.scanNearbyEndpoints(params:scannerID:response:)(v3, v4, v0 + v2, v6, v7);
}

uint64_t objectdestroy_38Tm(uint64_t a1)
{
  v3 = *(v1 + 16);

  v4 = *(v1 + 32);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t partial apply for closure #1 in NearbyInvitationsController.requestConnection(with:localInvitation:response:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(a2);
}

uint64_t objectdestroy_117Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t lazy protocol witness table accessor for type NearbyInvitationsController.Errors and conformance NearbyInvitationsController.Errors()
{
  result = lazy protocol witness table cache variable for type NearbyInvitationsController.Errors and conformance NearbyInvitationsController.Errors;
  if (!lazy protocol witness table cache variable for type NearbyInvitationsController.Errors and conformance NearbyInvitationsController.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyInvitationsController.Errors and conformance NearbyInvitationsController.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NearbyInvitationsController.Errors and conformance NearbyInvitationsController.Errors;
  if (!lazy protocol witness table cache variable for type NearbyInvitationsController.Errors and conformance NearbyInvitationsController.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyInvitationsController.Errors and conformance NearbyInvitationsController.Errors);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t type metadata completion function for NearbyGroupConnectionInfo()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for NearbyGroupCreationRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of NearbyGroupTable.cleanUpIfNotPresent(_:)(uint64_t a1)
{
  v4 = *(*v1 + 144);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in NearbyGroupTable.firstGroup();

  return v8(a1);
}

uint64_t dispatch thunk of NearbyGroupTable.registerIfNotPresent(identifier:generationBlock:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 152);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = dispatch thunk of NearbyGroupTable.registerIfNotPresent(identifier:generationBlock:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of NearbyGroupTable.firstGroup()()
{
  v2 = *(*v0 + 160);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of NearbyGroupTable.firstGroup();

  return v6();
}

uint64_t dispatch thunk of NearbyGroupTable.firstGroup()(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t getEnumTagSinglePayload for NearbyGroupTable.WeakNearbyGroup(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NearbyGroupTable.WeakNearbyGroup(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

void type metadata completion function for NearbyInvitationsController()
{
  type metadata accessor for Published<[UUID : NearbyGroupConnectionInfo]>();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for NearbyInvitationsController.Errors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NearbyInvitationsController.Errors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id specialized NearbyInvitationData.init<A>(from:)(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(&v1[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_invitationID], a1 + direct field offset for NearbyInvitation.id, v3);
  v8 = *(a1 + direct field offset for NearbyInvitation.displayName + 8);
  v9 = &v1[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_displayName];
  *v9 = *(a1 + direct field offset for NearbyInvitation.displayName);
  *(v9 + 1) = v8;
  v10 = *(a1 + direct field offset for NearbyInvitation.userInfo);
  v11 = *(a1 + direct field offset for NearbyInvitation.userInfo + 8);
  v12 = &v1[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_userInfo];
  *v12 = v10;
  v12[1] = v11;
  v13 = *(a1 + direct field offset for NearbyInvitation.invitationHostInfo);
  *&v1[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_hostConnectionInfo] = v13;

  outlined copy of Data?(v10, v11);
  v14 = v13;
  UUID.init()();
  (*(v4 + 32))(&v1[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_sourceProviderID], v7, v3);
  v15 = _s14NearbySessions24InvitationSourceProviderPAAE18providerIdentifierSSvgZAA0A5GroupC_Ttg5();
  v16 = &v1[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_sourceProviderName];
  *v16 = v15;
  v16[1] = v17;
  v18 = type metadata accessor for NearbyInvitationData(0);
  v20.receiver = v1;
  v20.super_class = v18;
  return objc_msgSendSuper2(&v20, sel_init);
}

{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(&v1[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_invitationID], a1 + direct field offset for NearbyInvitation.id, v3);
  v8 = *(a1 + direct field offset for NearbyInvitation.displayName + 8);
  v9 = &v1[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_displayName];
  *v9 = *(a1 + direct field offset for NearbyInvitation.displayName);
  *(v9 + 1) = v8;
  v10 = *(a1 + direct field offset for NearbyInvitation.userInfo);
  v11 = *(a1 + direct field offset for NearbyInvitation.userInfo + 8);
  v12 = &v1[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_userInfo];
  *v12 = v10;
  v12[1] = v11;
  v13 = *(a1 + direct field offset for NearbyInvitation.invitationHostInfo);
  *&v1[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_hostConnectionInfo] = v13;

  outlined copy of Data?(v10, v11);
  v14 = v13;
  UUID.init()();
  (*(v4 + 32))(&v1[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_sourceProviderID], v7, v3);
  v15 = _s14NearbySessions24InvitationSourceProviderPAAE18providerIdentifierSSvgZAA0A5GroupC_Ttg5();
  v16 = &v1[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_sourceProviderName];
  *v16 = v15;
  v16[1] = v17;
  v18 = type metadata accessor for NearbyInvitationData(0);
  v20.receiver = v1;
  v20.super_class = v18;
  return objc_msgSendSuper2(&v20, sel_init);
}

uint64_t partial apply for closure #1 in closure #1 in NearbyInvitationsController.createGroup(with:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14NearbySessions0A19GroupConnectionInfoCs5Error_pGMd, &_sScCy14NearbySessions0A19GroupConnectionInfoCs5Error_pGMR) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return closure #1 in closure #1 in NearbyInvitationsController.createGroup(with:)(v2, v3, v4);
}

unint64_t lazy protocol witness table accessor for type Errors #1 in NearbyGroupTable.firstGroup() and conformance Errors #1 in NearbyGroupTable.firstGroup()()
{
  result = lazy protocol witness table cache variable for type Errors #1 in NearbyGroupTable.firstGroup() and conformance Errors #1 in NearbyGroupTable.firstGroup();
  if (!lazy protocol witness table cache variable for type Errors #1 in NearbyGroupTable.firstGroup() and conformance Errors #1 in NearbyGroupTable.firstGroup())
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Errors #1 in NearbyGroupTable.firstGroup() and conformance Errors #1 in NearbyGroupTable.firstGroup());
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Errors #1 in NearbyGroupTable.firstGroup() and conformance Errors #1 in NearbyGroupTable.firstGroup();
  if (!lazy protocol witness table cache variable for type Errors #1 in NearbyGroupTable.firstGroup() and conformance Errors #1 in NearbyGroupTable.firstGroup())
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Errors #1 in NearbyGroupTable.firstGroup() and conformance Errors #1 in NearbyGroupTable.firstGroup());
  }

  return result;
}

uint64_t outlined init with copy of (UUID, Bool)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t @objc NearbyInvitationAdvertiser.didDiscoverNearbySessionInvitation(id:invitation:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  outlined consume of Data._Representation(v5, v7);
}

Swift::Int NearbyInvitationAdvertiser.Errors.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x25F86F720](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NearbyInvitationAdvertiser<A>.Errors()
{
  Hasher.init(_seed:)();
  NearbyInvitationAdvertiser.Errors.hash(into:)(v2, *v0);
  return Hasher._finalize()();
}

uint64_t NearbyInvitationAdvertiser.didReceiveConnectionRequest(advertisement:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Log.client);

  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v9 = 136315394;
    v31[0] = v2;
    v12 = *(v4 + 80);
    v13 = *(v4 + 88);
    v30[0] = v11;
    v14 = type metadata accessor for NearbyInvitationAdvertiser();
    v15 = >> prefix<A>(_:)(v31, v14);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v30);

    *(v9 + 4) = v17;
    *(v9 + 12) = 2112;
    *(v9 + 14) = v6;
    *v10 = v6;
    v18 = v6;
    _os_log_impl(&dword_25B7C4000, v7, v8, "%s did receive connection request for advertisement %@ about to insert pending invitation member", v9, 0x16u);
    outlined destroy of NSObject?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x25F86FE20](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x25F86FE20](v11, -1, -1);
    MEMORY[0x25F86FE20](v9, -1, -1);
  }

  else
  {

    v20 = *(v4 + 80);
    v19 = *(v4 + 88);
  }

  v21 = (v2[3] + OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_invitation);
  v22 = *v21;
  v23 = v21[1];
  v30[4] = v6;
  v30[5] = v22;
  v30[6] = v23;
  v24 = *(*v2 + 192);
  v25 = v6;
  outlined copy of Data._Representation(v22, v23);
  v26 = v24(v30);
  type metadata accessor for NearbyInvitationAdvertiser.PendingMember();
  swift_getWitnessTable();
  type metadata accessor for Set();
  Set.insert(_:)();
  v27 = v31[1];
  v28 = v31[2];

  outlined consume of Data._Representation(v27, v28);
  return v26(v30, 0);
}

uint64_t NearbyInvitationAdvertiser.PendingMember.init(advertisement:invitationData:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t NearbyInvitationAdvertiser.didReceiveSessionJoinResponse(response:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for JSONDecoder();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  result = JSONDecoder.init()();
  if (*(a1 + OBJC_IVAR____TtC14NearbySessions22InvitationJoinResponse_userInfo + 8) >> 60 == 15)
  {
    __break(1u);
    goto LABEL_10;
  }

  v14 = result;
  v15 = *(a1 + OBJC_IVAR____TtC14NearbySessions22InvitationJoinResponse_userInfo);
  lazy protocol witness table accessor for type InvitationRequestData and conformance InvitationRequestData();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v54 = v5;
  v49 = v4;
  v53 = v14;
  v50 = v62[0];
  v51 = v62[1];
  v16 = v62[4];
  v52 = v62[3];
  v17 = v62[5];
  result = UUID.init()();
  v48 = *(a1 + OBJC_IVAR____TtC14NearbySessions22InvitationJoinResponse_sessionIdentifier + 8);
  if (!v48)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v18 = *(a1 + OBJC_IVAR____TtC14NearbySessions22InvitationJoinResponse_sessionIdentifier);
  v47 = type metadata accessor for NearbyAdvertisement(0);
  v19 = objc_allocWithZone(v47);
  v20 = &v19[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_deviceColor];
  *v20 = 0;
  v20[8] = 1;
  v21 = &v19[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_deviceModel];
  *v21 = 0;
  *(v21 + 1) = 0;
  v22 = &v19[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_deviceID];
  *v22 = 0;
  *(v22 + 1) = 0;
  v23 = &v19[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement____lazy_storage___dataSource];
  *v23 = 0;
  *(v23 + 1) = 0;
  (*(v6 + 16))(&v19[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_scannerID], v9, v54);
  v24 = &v19[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_identifier];
  *v24 = v18;
  *(v24 + 1) = v48;
  *&v19[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_activityType] = 1;
  v25 = &v19[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_contactID];
  *v25 = v16;
  *(v25 + 1) = v17;
  v26 = &v19[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_handle];
  *v26 = v16;
  *(v26 + 1) = v17;
  v27 = &v19[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_displayName];
  *v27 = v16;
  *(v27 + 1) = v17;
  *&v19[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_userInfo] = xmmword_25B82C300;
  swift_beginAccess();
  *v20 = 0;
  v20[8] = 1;
  swift_beginAccess();
  *v21 = 0;
  *(v21 + 1) = 0;
  swift_beginAccess();
  *v22 = 0;
  *(v22 + 1) = 0;
  v61.receiver = v19;
  v61.super_class = v47;
  v47 = v17;
  swift_bridgeObjectRetain_n();

  v28 = objc_msgSendSuper2(&v61, sel_init);
  (*(v6 + 8))(v9, v54);
  v29 = (v2[3] + OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_invitation);
  v30 = *v29;
  v31 = v29[1];
  v32 = *(v49 + 80);
  v33 = *(v49 + 88);
  v55 = v28;
  v56 = v30;
  v57 = v31;
  v34 = *(*v2 + 192);
  v35 = v28;
  outlined copy of Data._Representation(v30, v31);
  v36 = v34(v62);
  type metadata accessor for NearbyInvitationAdvertiser.PendingMember();
  swift_getWitnessTable();
  type metadata accessor for Set();
  Set.insert(_:)();
  v37 = v59;
  v38 = v60;

  outlined consume of Data._Representation(v37, v38);
  v36(v62, 0);
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  __swift_project_value_buffer(v39, static Log.client);
  v40 = v35;
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v43 = 138412290;
    *(v43 + 4) = v40;
    *v44 = v40;
    v45 = v40;
    _os_log_impl(&dword_25B7C4000, v41, v42, "NearbyInvitationAdvertiser is sending pendingMember through %@", v43, 0xCu);
    outlined destroy of NSObject?(v44, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x25F86FE20](v44, -1, -1);
    MEMORY[0x25F86FE20](v43, -1, -1);

    outlined consume of Data?(v50, v51);
  }

  else
  {

    outlined consume of Data?(v50, v51);
  }
}

uint64_t @objc NearbyInvitationAdvertiser.didReceiveConnectionRequest(advertisement:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(id))
{
  v5 = a3;

  a4(v5);
}

Swift::Int NearbyInvitationAdvertiser.PendingMember.Errors.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x25F86F720](0);
  return Hasher._finalize()();
}

uint64_t NearbyInvitationAdvertiser.PendingMember.contactID.getter(uint64_t a1)
{
  v1 = specialized NearbyInvitationAdvertiser.PendingMember.displayName.getter(a1, &OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_contactID);

  return v1;
}

uint64_t NearbyInvitationAdvertiser.PendingMember.displayName.getter(uint64_t a1)
{
  v1 = specialized NearbyInvitationAdvertiser.PendingMember.displayName.getter(a1, &OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_displayName);

  return v1;
}

uint64_t NearbyInvitationAdvertiser.PendingMember.identifier.getter()
{
  v1 = (*v0 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_identifier);
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t NearbyInvitationAdvertiser.PendingMember.userInfo.getter()
{
  v1 = *v0 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_userInfo;
  v2 = *v1;
  outlined copy of Data?(*v1, *(v1 + 8));
  return v2;
}

uint64_t NearbyInvitationAdvertiser.PendingMember.invitationData.getter()
{
  v1 = *(v0 + 8);
  outlined copy of Data._Representation(v1, *(v0 + 16));
  return v1;
}

uint64_t NearbyInvitationAdvertiser.PendingMember.invitationData.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t NearbyInvitationAdvertiser.PendingMember.description.getter()
{
  v1 = *v0;
  _StringGuts.grow(_:)(44);

  v2 = _typeName(_:qualified:)();
  MEMORY[0x25F86F070](v2);

  result = MEMORY[0x25F86F070](2108704, 0xE300000000000000);
  v4 = *&v1[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_displayName + 8];
  if (v4)
  {
    v5 = *&v1[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_displayName];
    v6 = *&v1[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_displayName + 8];

    MEMORY[0x25F86F070](v5, v4);

    MEMORY[0x25F86F070](0xD000000000000012, 0x800000025B8306C0);
    v7 = [v1 description];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    MEMORY[0x25F86F070](v8, v10);

    result = MEMORY[0x25F86F070](0x6361746E6F63202CLL, 0xED0000203A444974);
    v11 = &v1[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_contactID];
    v12 = *&v1[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_contactID + 8];
    if (v12)
    {
      v13 = *v11;

      MEMORY[0x25F86F070](v13, v12);

      MEMORY[0x25F86F070](62, 0xE100000000000000);
      return 60;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static NearbyInvitationAdvertiser.PendingMember.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for NSObject();
  return static NSObject.== infix(_:_:)() & 1;
}

uint64_t NearbyInvitationAdvertiser.PendingMember.approve()()
{
  *(v1 + 16) = *v0;
  *(v1 + 24) = *(v0 + 8);
  return MEMORY[0x2822009F8](NearbyInvitationAdvertiser.PendingMember.approve(), 0, 0);
}

{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  NearbyInvitationsController.approveConnectionRequest(_:localInvitation:)(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t NearbyInvitationAdvertiser.PendingMember.reject()()
{
  *(v1 + 16) = *v0;
  return MEMORY[0x2822009F8](NearbyInvitationAdvertiser.PendingMember.reject(), 0, 0);
}

{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  specialized NearbyInvitationsController.denyConnectionRequest(_:localInvitation:)(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

Swift::Int NearbyInvitationAdvertiser.PendingMember.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t property wrapper backing initializer of NearbyInvitationAdvertiser.pendingMembers(uint64_t a1)
{
  v3 = a1;
  type metadata accessor for NearbyInvitationAdvertiser.PendingMember();
  swift_getWitnessTable();
  v1 = type metadata accessor for Set();
  return Published.init(wrappedValue:)(&v3, v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NearbyInvitationAdvertiser<A>.PendingMember()
{
  Hasher.init(_seed:)();
  NearbyInvitationAdvertiser.PendingMember.hash(into:)();
  return Hasher._finalize()();
}

uint64_t key path getter for NearbyInvitationAdvertiser.pendingMembers : <A>NearbyInvitationAdvertiser<A>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result;
  return result;
}

uint64_t key path setter for NearbyInvitationAdvertiser.pendingMembers : <A>NearbyInvitationAdvertiser<A>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 184);

  return v3(v4);
}

uint64_t NearbyInvitationAdvertiser.pendingMembers.getter()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v4;
}

uint64_t NearbyInvitationAdvertiser.pendingMembers.setter()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void (*NearbyInvitationAdvertiser.pendingMembers.modify(uint64_t *a1))(void *a1)
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
  v5 = *v1;
  MEMORY[0x28223BE20](v3);
  v7 = *(v6 + 80);
  v8 = *(v6 + 88);
  KeyPath = swift_getKeyPath();
  v4[4] = KeyPath;
  MEMORY[0x28223BE20](KeyPath);
  v4[5] = swift_getKeyPath();
  v4[6] = static Published.subscript.modify();
  return NearbyInvitationsController.groups.modify;
}

uint64_t key path setter for NearbyInvitationAdvertiser.$pendingMembers : <A>NearbyInvitationAdvertiser<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 16);
  v7 = *(a3 + a4 - 8);
  type metadata accessor for NearbyInvitationAdvertiser.PendingMember();
  swift_getWitnessTable();
  type metadata accessor for Set();
  v8 = type metadata accessor for Published.Publisher();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1);
  return (*(**a2 + 208))(v11);
}

uint64_t NearbyInvitationAdvertiser.$pendingMembers.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  swift_beginAccess();
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  type metadata accessor for NearbyInvitationAdvertiser.PendingMember();
  swift_getWitnessTable();
  type metadata accessor for Set();
  type metadata accessor for Published();
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t NearbyInvitationAdvertiser.$pendingMembers.setter(uint64_t a1)
{
  v3 = *v1;
  specialized NearbyInvitationAdvertiser.$pendingMembers.setter(a1);
  v4 = *(v3 + 80);
  v5 = *(v3 + 88);
  type metadata accessor for NearbyInvitationAdvertiser.PendingMember();
  swift_getWitnessTable();
  type metadata accessor for Set();
  v6 = type metadata accessor for Published.Publisher();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1, v6);
}

void (*NearbyInvitationAdvertiser.$pendingMembers.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 80);
  v7 = *(*v1 + 88);
  type metadata accessor for NearbyInvitationAdvertiser.PendingMember();
  swift_getWitnessTable();
  type metadata accessor for Set();
  v8 = type metadata accessor for Published.Publisher();
  v5[1] = v8;
  v9 = *(v8 - 8);
  v5[2] = v9;
  v10 = *(v9 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v5[4] = v11;
  NearbyInvitationAdvertiser.$pendingMembers.getter();
  return NearbyInvitationAdvertiser.$pendingMembers.modify;
}

void NearbyInvitationAdvertiser.$pendingMembers.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[3], v4, v5);
    specialized NearbyInvitationAdvertiser.$pendingMembers.setter(v3);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    specialized NearbyInvitationAdvertiser.$pendingMembers.setter((*a1)[4]);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

char *NearbyInvitationAdvertiser.__allocating_init(invitation:provider:activityType:route:)(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v8 = *(v4 + 48);
  v9 = *(v4 + 52);
  swift_allocObject();
  v10 = specialized NearbyInvitationAdvertiser.init(invitation:provider:activityType:route:)(a1, a3, a4);

  return v10;
}

char *NearbyInvitationAdvertiser.init(invitation:provider:activityType:route:)(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = specialized NearbyInvitationAdvertiser.init(invitation:provider:activityType:route:)(a1, a3, a4);

  return v4;
}

char *NearbyInvitationAdvertiser.__allocating_init(invitation:provider:activityType:route:params:)(uint64_t a1, uint64_t a2, int a3, int a4, void *a5)
{
  v10 = *(v5 + 48);
  v11 = *(v5 + 52);
  swift_allocObject();
  v12 = specialized NearbyInvitationAdvertiser.init(invitation:provider:activityType:route:params:)(a1, a3, a4, a5);

  return v12;
}

char *NearbyInvitationAdvertiser.init(invitation:provider:activityType:route:params:)(uint64_t a1, uint64_t a2, int a3, int a4, void *a5)
{
  v6 = specialized NearbyInvitationAdvertiser.init(invitation:provider:activityType:route:params:)(a1, a3, a4, a5);

  return v6;
}

char *NearbyInvitationAdvertiser.__allocating_init(remoteInvitationData:provider:activityType:route:params:)(uint64_t a1, unint64_t a2, uint64_t a3, int a4, int a5, void *a6)
{
  v12 = *(v6 + 48);
  v13 = *(v6 + 52);
  swift_allocObject();
  return specialized NearbyInvitationAdvertiser.init(remoteInvitationData:provider:activityType:route:params:)(a1, a2, a4, a5, a6);
}

uint64_t NearbyInvitationAdvertiser.start()()
{
  *(v1 + 24) = v0;
  *(v1 + 32) = *v0;
  return MEMORY[0x2822009F8](NearbyInvitationAdvertiser.start(), 0, 0);
}

{
  v21 = v0;
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.client);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[3];
    v5 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    v0[2] = v6;
    v9 = *(v5 + 80);
    v10 = *(v5 + 88);
    v11 = type metadata accessor for NearbyInvitationAdvertiser();
    v12 = >> prefix<A>(_:)((v0 + 2), v11);
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v20);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_25B7C4000, v3, v4, "%s: client called start on NearbyInvitationsAdvertiser", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x25F86FE20](v8, -1, -1);
    MEMORY[0x25F86FE20](v7, -1, -1);
  }

  v15 = *(MEMORY[0x277D85A40] + 4);
  v16 = swift_task_alloc();
  v0[5] = v16;
  *v16 = v0;
  v16[1] = NearbyInvitationAdvertiser.start();
  v17 = v0[3];
  v18 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v16, 0, 0, 0x29287472617473, 0xE700000000000000, partial apply for closure #1 in NearbyInvitationAdvertiser.start(), v17, v18);
}

{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = NearbyInvitationAdvertiser.start();
  }

  else
  {
    v3 = NearbyInvitationAdvertiser.start();
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void closure #1 in NearbyInvitationAdvertiser.start()(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = [objc_allocWithZone(MEMORY[0x277CFD160]) init];
  v11 = [v10 wranglerHomePodBoopEnabled];

  if (v11 && (v12 = a2[4]) != 0)
  {
    v13 = a2[2];
    (*(v6 + 16))(v9, a1, v5);
    v14 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v15 = swift_allocObject();
    (*(v6 + 32))(v15 + v14, v9, v5);
    v16 = v12;
    NearbyInvitationsController.advertiseNearbySessionEndpoint(params:response:)(v16, partial apply for closure #1 in closure #1 in NearbyInvitationAdvertiser.start(), v15);
  }

  else
  {
    v17 = a2[2];
    v18 = a2[3];
    (*(v6 + 16))(v9, a1, v5);
    v19 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = *(v4 + 80);
    *(v20 + 24) = *(v4 + 88);
    (*(v6 + 32))(v20 + v19, v9, v5);
    *(v20 + ((v7 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;

    NearbyInvitationsController.advertiseNearbyInvitation(_:response:)(v18, partial apply for closure #2 in closure #1 in NearbyInvitationAdvertiser.start(), v20);
  }
}

void closure #1 in closure #1 in NearbyInvitationAdvertiser.start()(NSObject *a1)
{
  if (a1)
  {
    v2 = a1;
    if (one-time initialization token for client != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Log.client);
    v4 = a1;
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      v8 = a1;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v9;
      *v7 = v9;
      _os_log_impl(&dword_25B7C4000, oslog, v5, "Could not start advertising %@", v6, 0xCu);
      outlined destroy of NSObject?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x25F86FE20](v7, -1, -1);
      MEMORY[0x25F86FE20](v6, -1, -1);

      v10 = oslog;
    }

    else
    {

      v10 = a1;
    }
  }

  else
  {
    if (one-time initialization token for client != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Log.client);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_25B7C4000, v12, v13, "Started advertising request through NearbyInvitationLisntener", v14, 2u);
      MEMORY[0x25F86FE20](v14, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t NearbyInvitationAdvertiser.stop()()
{
  *(v1 + 24) = v0;
  *(v1 + 32) = *v0;
  return MEMORY[0x2822009F8](NearbyInvitationAdvertiser.stop(), 0, 0);
}

{
  v21 = v0;
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.client);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[3];
    v5 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    v0[2] = v6;
    v9 = *(v5 + 80);
    v10 = *(v5 + 88);
    v11 = type metadata accessor for NearbyInvitationAdvertiser();
    v12 = >> prefix<A>(_:)((v0 + 2), v11);
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v20);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_25B7C4000, v3, v4, "%s: client called stop on NearbyInvitationsAdvertiser", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x25F86FE20](v8, -1, -1);
    MEMORY[0x25F86FE20](v7, -1, -1);
  }

  v15 = *(MEMORY[0x277D85A40] + 4);
  v16 = swift_task_alloc();
  v0[5] = v16;
  *v16 = v0;
  v16[1] = NearbyInvitationAdvertiser.stop();
  v17 = v0[3];
  v18 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v16, 0, 0, 0x2928706F7473, 0xE600000000000000, partial apply for closure #1 in NearbyInvitationAdvertiser.stop(), v17, v18);
}

{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = NearbyInvitationAdvertiser.stop();
  }

  else
  {
    v3 = NearbyInvitationAdvertiser.stop();
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 48);
  return (*(v0 + 8))();
}

void closure #1 in NearbyInvitationAdvertiser.stop()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v30 = a1;
  v31 = v3;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - v12;
  v14 = [objc_allocWithZone(MEMORY[0x277CFD160]) init];
  v15 = [v14 wranglerHomePodBoopEnabled];

  if (v15 && (v16 = a2[4]) != 0)
  {
    v17 = a2[2];
    (*(v10 + 16))(v13, v30, v9);
    v18 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v19 = swift_allocObject();
    v20 = v31;
    *(v19 + 16) = *(v31 + 80);
    *(v19 + 24) = *(v20 + 88);
    (*(v10 + 32))(v19 + v18, v13, v9);
    *(v19 + ((v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
    v21 = v16;

    NearbyInvitationsController.stopAdvertisingNearbySessionEndpoint(response:)(partial apply for closure #1 in closure #1 in NearbyInvitationAdvertiser.stop(), v19);
  }

  else
  {
    v22 = a2[2];
    v23 = *(v5 + 16);
    v24 = a2[3] + OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_identifier;
    v29 = v4;
    v23(v8, v24, v4);
    (*(v10 + 16))(v13, v30, v9);
    v25 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v26 = swift_allocObject();
    v27 = v31;
    *(v26 + 16) = *(v31 + 80);
    *(v26 + 24) = *(v27 + 88);
    (*(v10 + 32))(v26 + v25, v13, v9);
    *(v26 + ((v11 + v25 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;

    NearbyInvitationsController.stopAdvertisingNearbyInvitation(_:response:)(v8, partial apply for closure #2 in closure #1 in NearbyInvitationAdvertiser.stop(), v26);

    (*(v5 + 8))(v8, v29);
  }
}

uint64_t closure #1 in closure #1 in NearbyInvitationAdvertiser.stop()(void *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v4 = a1;
    if (one-time initialization token for client != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Log.client);
    v6 = a1;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = a1;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      _os_log_impl(&dword_25B7C4000, v7, v8, "Could not stop advertising %@", v9, 0xCu);
      outlined destroy of NSObject?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x25F86FE20](v10, -1, -1);
      MEMORY[0x25F86FE20](v9, -1, -1);
    }

    v28 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v15 = *a3;
    if (one-time initialization token for client != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Log.client);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v27 = a3;
      v28 = v20;
      *v19 = 136315138;
      v21 = *(v15 + 80);
      v22 = *(v15 + 88);
      v23 = type metadata accessor for NearbyInvitationAdvertiser();
      v24 = >> prefix<A>(_:)(&v27, v23);
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v28);

      *(v19 + 4) = v26;
      _os_log_impl(&dword_25B7C4000, v17, v18, "%s: stopping advertising for NearbySessionEndpoint", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x25F86FE20](v20, -1, -1);
      MEMORY[0x25F86FE20](v19, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t closure #2 in closure #1 in NearbyInvitationAdvertiser.start()(void *a1, uint64_t a2, uint64_t *a3, const char *a4, const char *a5)
{
  if (a1)
  {
    v7 = a1;
    if (one-time initialization token for client != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Log.client);
    v9 = a1;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = a1;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_25B7C4000, v10, v11, a4, v12, 0xCu);
      outlined destroy of NSObject?(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x25F86FE20](v13, -1, -1);
      MEMORY[0x25F86FE20](v12, -1, -1);
    }

    v37 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v18 = *a3;
    if (one-time initialization token for client != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Log.client);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v36 = a3;
      v37 = v24;
      *v23 = 136315394;
      v25 = *(v18 + 80);
      v26 = *(v18 + 88);
      v27 = type metadata accessor for NearbyInvitationAdvertiser();
      v28 = >> prefix<A>(_:)(&v36, v27);
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v37);

      *(v23 + 4) = v30;
      *(v23 + 12) = 2080;
      v31 = [a3[3] description];
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v37);

      *(v23 + 14) = v35;
      _os_log_impl(&dword_25B7C4000, v21, v22, a5, v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F86FE20](v24, -1, -1);
      MEMORY[0x25F86FE20](v23, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t NearbyInvitationAdvertiser.assertPublic(rotations:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  v3 = type metadata accessor for UUID();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v2[8] = *(v4 + 64);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](NearbyInvitationAdvertiser.assertPublic(rotations:), 0, 0);
}

uint64_t NearbyInvitationAdvertiser.assertPublic(rotations:)()
{
  v25 = v0;
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.client);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[4];
    v5 = v0[5];
    v7 = v0[3];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v8 = 136315394;
    v0[2] = v6;
    v10 = *(v5 + 80);
    v11 = *(v5 + 88);
    v12 = type metadata accessor for NearbyInvitationAdvertiser();
    v13 = >> prefix<A>(_:)((v0 + 2), v12);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v24);

    *(v8 + 4) = v15;
    *(v8 + 12) = 2048;
    *(v8 + 14) = v7;
    _os_log_impl(&dword_25B7C4000, v3, v4, "%s: Client wants to assert for the advertisement to be public for %lu rotations", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x25F86FE20](v9, -1, -1);
    MEMORY[0x25F86FE20](v8, -1, -1);
  }

  v17 = v0[3];
  v16 = v0[4];
  v18 = swift_task_alloc();
  v0[11] = v18;
  *(v18 + 16) = v16;
  *(v18 + 24) = v17;
  v19 = *(MEMORY[0x277D85A40] + 4);
  v20 = swift_task_alloc();
  v0[12] = v20;
  *v20 = v0;
  v20[1] = NearbyInvitationAdvertiser.assertPublic(rotations:);
  v21 = v0[10];
  v22 = v0[6];

  return MEMORY[0x2822008A0](v21, 0, 0, 0xD000000000000018, 0x800000025B8306E0, partial apply for closure #1 in NearbyInvitationAdvertiser.assertPublic(rotations:), v18, v22);
}

{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = NearbyInvitationAdvertiser.assertPublic(rotations:);
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = NearbyInvitationAdvertiser.assertPublic(rotations:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v1 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[4];
  v8 = swift_allocObject();
  swift_weakInit();
  (*(v4 + 16))(v1, v2, v5);
  v9 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v10 = swift_allocObject();
  *(v10 + 2) = *(v6 + 80);
  *(v10 + 3) = *(v6 + 88);
  *(v10 + 4) = v8;
  (*(v4 + 32))(&v10[v9], v1, v5);
  v11 = type metadata accessor for AnyCancellable();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();

  v14 = AnyCancellable.init(_:)();
  (*(v4 + 8))(v2, v5);

  v15 = v0[1];

  return v15(v14);
}

{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  v4 = v0[1];
  v5 = v0[13];

  return v4();
}

uint64_t closure #1 in NearbyInvitationAdvertiser.assertPublic(rotations:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v21 = *a2;
  v22 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation4UUIDVs5Error_pGMd, &_sScCy10Foundation4UUIDVs5Error_pGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v20 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a2[3];
  v20[1] = a2[2];
  (*(v11 + 16))(v14, v15 + OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_identifier, v10);
  (*(v6 + 16))(v9, a1, v5);
  v16 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v17 = swift_allocObject();
  v18 = v21;
  *(v17 + 16) = *(v21 + 80);
  *(v17 + 24) = *(v18 + 88);
  (*(v6 + 32))(v17 + v16, v9, v5);
  NearbyInvitationsController.assertAdvertisementPublic(_:rotations:response:)(v14, v22, partial apply for closure #1 in closure #1 in NearbyInvitationAdvertiser.assertPublic(rotations:), v17);

  return (*(v11 + 8))(v14, v10);
}

uint64_t closure #1 in closure #1 in NearbyInvitationAdvertiser.assertPublic(rotations:)(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  if (a2)
  {
    v21 = a2;
    v16 = a2;
  }

  else
  {
    outlined init with copy of UUID?(a1, v7);
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      (*(v9 + 32))(v15, v7, v8);
      (*(v9 + 16))(v13, v15, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation4UUIDVs5Error_pGMd, &_sScCy10Foundation4UUIDVs5Error_pGMR);
      CheckedContinuation.resume(returning:)();
      return (*(v9 + 8))(v15, v8);
    }

    outlined destroy of NSObject?(v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    type metadata accessor for NearbyInvitationAdvertiser.Errors();
    swift_getWitnessTable();
    v17 = swift_allocError();
    *v18 = 1;
    v21 = v17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation4UUIDVs5Error_pGMd, &_sScCy10Foundation4UUIDVs5Error_pGMR);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t closure #2 in NearbyInvitationAdvertiser.assertPublic(rotations:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v35 - v9;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    if (one-time initialization token for client != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Log.client);
    v14 = v4[2];
    v14(v10, a2, v3);
    swift_retain_n();
    v15 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v39))
    {
      v16 = swift_slowAlloc();
      v40 = v14;
      v17 = v16;
      v37 = swift_slowAlloc();
      v41 = v37;
      *v17 = 136315394;
      v18 = lazy protocol witness table accessor for type UUID and conformance UUID();
      v38 = a2;
      v35 = v18;
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      v22 = v4[1];
      v36 = v15;
      v23 = v10;
      v24 = v22;
      v22(v23, v3);
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v41);

      *(v17 + 4) = v25;
      *(v17 + 12) = 2080;
      v40(v8, *(v12 + 24) + OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_identifier, v3);

      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;

      v22(v8, v3);
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v41);

      *(v17 + 14) = v29;
      a2 = v38;
      v30 = v36;
      _os_log_impl(&dword_25B7C4000, v36, v39, "Releasing assertionIdentifier: %s for invitationID: %s", v17, 0x16u);
      v31 = v37;
      swift_arrayDestroy();
      MEMORY[0x25F86FE20](v31, -1, -1);
      MEMORY[0x25F86FE20](v17, -1, -1);

      v32 = v40;
    }

    else
    {

      v33 = v10;
      v24 = v4[1];
      v24(v33, v3);
      v32 = v14;
    }

    v34 = *(v12 + 16);
    v32(v8, *(v12 + 24) + OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_identifier, v3);
    NearbyInvitationsController.releaseAdvertisementPublicAssertion(_:assertionIdentifier:)(v8, a2);
    v24(v8, v3);
  }

  return result;
}

uint64_t *NearbyInvitationAdvertiser.deinit()
{
  v1 = *v0;
  v2 = v0[2];

  v3 = *(*v0 + 120);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  type metadata accessor for NearbyInvitationAdvertiser.PendingMember();
  swift_getWitnessTable();
  type metadata accessor for Set();
  v6 = type metadata accessor for Published();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  return v0;
}

uint64_t NearbyInvitationAdvertiser.__deallocating_deinit()
{
  NearbyInvitationAdvertiser.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t Published.init(wrappedValue:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  Published.init(initialValue:)();
  return (*(v4 + 8))(a1, a2);
}

unint64_t lazy protocol witness table accessor for type InvitationRequestData and conformance InvitationRequestData()
{
  result = lazy protocol witness table cache variable for type InvitationRequestData and conformance InvitationRequestData;
  if (!lazy protocol witness table cache variable for type InvitationRequestData and conformance InvitationRequestData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvitationRequestData and conformance InvitationRequestData);
  }

  return result;
}

uint64_t specialized NearbyInvitationAdvertiser.PendingMember.displayName.getter(uint64_t a1, void *a2)
{
  v3 = (*v2 + *a2);
  if (v3[1])
  {
    return *v3;
  }

  __break(1u);
  return result;
}

unint64_t type metadata accessor for NSObject()
{
  result = lazy cache variable for type metadata for NSObject;
  if (!lazy cache variable for type metadata for NSObject)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSObject);
  }

  return result;
}

uint64_t specialized NearbyInvitationAdvertiser.$pendingMembers.setter(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  type metadata accessor for NearbyInvitationAdvertiser.PendingMember();
  swift_getWitnessTable();
  type metadata accessor for Set();
  v5 = type metadata accessor for Published.Publisher();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  (*(v8 + 16))(&v11 - v7, a1);
  v9 = *(*v1 + 120);
  swift_beginAccess();
  type metadata accessor for Published();
  Published.projectedValue.setter();
  return swift_endAccess();
}

char *specialized NearbyInvitationAdvertiser.init(invitation:provider:activityType:route:)(uint64_t a1, int a2, int a3)
{
  v4 = v3;
  v38 = a3;
  v39 = a2;
  v6 = *v4;
  v40 = type metadata accessor for UUID();
  v36 = *(v40 - 8);
  v7 = *(v36 + 64);
  MEMORY[0x28223BE20](v40);
  v35[0] = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v6[10];
  v10 = v6[11];
  type metadata accessor for NearbyInvitationAdvertiser.PendingMember();
  swift_getWitnessTable();
  type metadata accessor for Set();
  v11 = type metadata accessor for Published();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v35 - v14;
  v16 = v6[15];
  v17 = Set.init()();
  v37 = v9;
  v35[1] = v10;
  property wrapper backing initializer of NearbyInvitationAdvertiser.pendingMembers(v17);
  (*(v12 + 32))(&v4[v16], v15, v11);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  *(v4 + 2) = static NearbyInvitationsController.shared;
  v18 = v36;
  v19 = *(v36 + 16);
  v20 = v35[0];
  v21 = v40;
  v19(v35[0], a1 + direct field offset for NearbyInvitation.id, v40);
  v22 = *(*a1 + 160);

  v24 = v22(v23);
  v26 = v25;
  v27 = type metadata accessor for NearbyAdvertisementRequest();
  v28 = objc_allocWithZone(v27);
  v19(&v28[OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_identifier], v20, v21);
  v29 = &v28[OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_invitation];
  *v29 = v24;
  v29[1] = v26;
  v30 = v39;
  v28[OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_route] = v38;
  *&v28[OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_activityType] = v30;
  v41.receiver = v28;
  v41.super_class = v27;
  v31 = objc_msgSendSuper2(&v41, sel_init);
  (*(v18 + 8))(v20, v21);
  *(v4 + 3) = v31;
  *(v4 + 4) = 0;
  v32 = *(v4 + 2);
  type metadata accessor for NearbyInvitationAdvertiser();

  specialized NearbyInvitationsController.addObserver(_:)(v33, v32);

  return v4;
}

char *specialized NearbyInvitationAdvertiser.init(invitation:provider:activityType:route:params:)(uint64_t a1, int a2, int a3, void *a4)
{
  v5 = v4;
  v63 = a4;
  v59 = a3;
  v60 = a2;
  v7 = *v5;
  v8 = type metadata accessor for UUID();
  v61 = *(v8 - 8);
  v62 = v8;
  v9 = *(v61 + 64);
  MEMORY[0x28223BE20](v8);
  v58 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v7[10];
  v12 = v7[11];
  type metadata accessor for NearbyInvitationAdvertiser.PendingMember();
  swift_getWitnessTable();
  type metadata accessor for Set();
  v13 = type metadata accessor for Published();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v57 - v16;
  v18 = v7[15];
  v19 = Set.init()();
  v64 = v11;
  v57[1] = v12;
  property wrapper backing initializer of NearbyInvitationAdvertiser.pendingMembers(v19);
  (*(v14 + 32))(&v5[v18], v17, v13);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  *(v5 + 2) = static NearbyInvitationsController.shared;
  v21 = v61;
  v20 = v62;
  v22 = *(v61 + 16);
  v23 = v58;
  v22(v58, a1 + direct field offset for NearbyInvitation.id, v62);
  v24 = *(*a1 + 160);

  v26 = v24(v25);
  v28 = v27;
  v29 = type metadata accessor for NearbyAdvertisementRequest();
  v30 = objc_allocWithZone(v29);
  v22(&v30[OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_identifier], v23, v20);
  v31 = &v30[OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_invitation];
  *v31 = v26;
  v31[1] = v28;
  v32 = v60;
  v30[OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_route] = v59;
  *&v30[OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_activityType] = v32;
  v67.receiver = v30;
  v67.super_class = v29;
  v33 = objc_msgSendSuper2(&v67, sel_init);
  (*(v21 + 8))(v23, v20);
  *(v5 + 3) = v33;
  v34 = v63;
  if (!v63)
  {
    goto LABEL_10;
  }

  v35 = objc_allocWithZone(MEMORY[0x277CFD160]);
  v36 = v34;
  v37 = [v35 init];
  v38 = [v37 wranglerHomePodBoopEnabled];

  if (!v38)
  {

LABEL_10:
    *(v5 + 4) = 0;
    goto LABEL_11;
  }

  *(v5 + 4) = v34;
  v39 = one-time initialization token for client;
  v40 = v36;
  if (v39 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  __swift_project_value_buffer(v41, static Log.client);

  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v65 = v5;
    v66 = v46;
    *v44 = 136315394;
    v47 = type metadata accessor for NearbyInvitationAdvertiser();
    v48 = >> prefix<A>(_:)(&v65, v47);
    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, &v66);
    v63 = v40;
    v51 = v50;

    *(v44 + 4) = v51;
    *(v44 + 12) = 2112;
    v52 = *(v5 + 4);
    *(v44 + 14) = v52;
    *v45 = v52;
    v53 = v52;
    _os_log_impl(&dword_25B7C4000, v42, v43, "%s: parameters = %@", v44, 0x16u);
    outlined destroy of NSObject?(v45, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x25F86FE20](v45, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x25F86FE20](v46, -1, -1);
    MEMORY[0x25F86FE20](v44, -1, -1);
  }

  else
  {
  }

LABEL_11:
  v54 = *(v5 + 2);
  type metadata accessor for NearbyInvitationAdvertiser();

  specialized NearbyInvitationsController.addObserver(_:)(v55, v54);

  return v5;
}

char *specialized NearbyInvitationAdvertiser.init(remoteInvitationData:provider:activityType:route:params:)(uint64_t a1, unint64_t a2, int a3, int a4, void *a5)
{
  v6 = v5;
  v85 = a5;
  v86 = a1;
  v77 = a4;
  v78 = a3;
  v87 = a2;
  v7 = *v5;
  v8 = type metadata accessor for UUID();
  v79 = *(v8 - 1);
  v80 = v8;
  v9 = v79[8];
  MEMORY[0x28223BE20](v8);
  v76 = v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v7[10];
  v12 = v7[11];
  type metadata accessor for NearbyInvitationAdvertiser.PendingMember();
  swift_getWitnessTable();
  type metadata accessor for Set();
  v13 = type metadata accessor for Published();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v75 - v16;
  v18 = v7[15];
  v19 = Set.init()();
  v83 = v12;
  v84 = v11;
  property wrapper backing initializer of NearbyInvitationAdvertiser.pendingMembers(v19);
  v20 = *(v14 + 32);
  v81 = v13;
  v20(&v6[v18], v17, v13);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  *(v6 + 2) = static NearbyInvitationsController.shared;
  v21 = one-time initialization token for client;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  v23 = __swift_project_value_buffer(v22, static Log.client);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_25B7C4000, v24, v25, "Attempting to decode NearbyInvitationData from given payload", v26, 2u);
    MEMORY[0x25F86FE20](v26, -1, -1);
  }

  v28 = v86;
  v27 = v87;
  v29 = v82;
  v30 = specialized static NearbyInvitationData.create(from:)(v86, v87);
  if (!v29)
  {
    v75[1] = v23;
    v81 = 0;
    v43 = v79;
    v44 = v80;
    v45 = v79[2];
    v46 = v76;
    v82 = v30;
    v45(v76, &v30[OBJC_IVAR____TtC14NearbySessions20NearbyInvitationData_invitationID], v80);
    v47 = type metadata accessor for NearbyAdvertisementRequest();
    v48 = objc_allocWithZone(v47);
    v45(&v48[OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_identifier], v46, v44);
    v49 = v87;
    v50 = &v48[OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_invitation];
    *v50 = v28;
    v50[1] = v49;
    v51 = v78;
    v48[OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_route] = v77;
    *&v48[OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_activityType] = v51;
    outlined copy of Data._Representation(v28, v49);
    v88.receiver = v48;
    v88.super_class = v47;
    v52 = objc_msgSendSuper2(&v88, sel_init);
    (v43[1])(v46, v44);
    *(v6 + 3) = v52;
    v53 = v82;
    v54 = v85;
    if (v85)
    {
      v55 = objc_allocWithZone(MEMORY[0x277CFD160]);
      v56 = v54;
      v57 = [v55 init];
      v58 = [v57 wranglerHomePodBoopEnabled];

      if (v58)
      {
        *(v6 + 4) = v54;
        v59 = v56;

        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v80 = v59;
          v64 = v63;
          v79 = swift_slowAlloc();
          v90 = v79;
          *v62 = 136315394;
          v89 = v6;
          v65 = type metadata accessor for NearbyInvitationAdvertiser();
          v66 = >> prefix<A>(_:)(&v89, v65);
          v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v67, &v90);

          *(v62 + 4) = v68;
          *(v62 + 12) = 2112;
          v69 = *(v6 + 4);
          *(v62 + 14) = v69;
          *v64 = v69;
          v70 = v69;
          _os_log_impl(&dword_25B7C4000, v60, v61, "%s: parameters = %@", v62, 0x16u);
          outlined destroy of NSObject?(v64, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          MEMORY[0x25F86FE20](v64, -1, -1);
          v71 = v79;
          __swift_destroy_boxed_opaque_existential_0(v79);
          MEMORY[0x25F86FE20](v71, -1, -1);
          MEMORY[0x25F86FE20](v62, -1, -1);
        }

        else
        {
        }

        v54 = v85;
        v53 = v82;
        goto LABEL_19;
      }

      v53 = v82;
    }

    *(v6 + 4) = 0;
LABEL_19:
    v72 = *(v6 + 2);
    type metadata accessor for NearbyInvitationAdvertiser();

    specialized NearbyInvitationsController.addObserver(_:)(v73, v72);

    outlined consume of Data._Representation(v28, v49);
    return v6;
  }

  v31 = v29;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v90 = v35;
    *v34 = 136315138;
    v89 = v29;
    v36 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v37 = String.init<A>(reflecting:)();
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v90);

    *(v34 + 4) = v39;
    v27 = v87;
    _os_log_impl(&dword_25B7C4000, v32, v33, "Failed to decode payload, error: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x25F86FE20](v35, -1, -1);
    MEMORY[0x25F86FE20](v34, -1, -1);
  }

  swift_willThrow();
  outlined consume of Data._Representation(v86, v27);
  v40 = *(v6 + 2);

  (*(v14 + 8))(&v6[*(*v6 + 120)], v81);
  type metadata accessor for NearbyInvitationAdvertiser();
  v41 = *(*v6 + 48);
  v42 = *(*v6 + 52);
  swift_deallocPartialClassInstance();
  return v6;
}

uint64_t partial apply for closure #2 in NearbyInvitationAdvertiser.assertPublic(rotations:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = v0[4];
  v5 = v0 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return closure #2 in NearbyInvitationAdvertiser.assertPublic(rotations:)(v4, v5);
}

uint64_t type metadata completion function for NearbyInvitationAdvertiser(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 88);
  type metadata accessor for NearbyInvitationAdvertiser.PendingMember();
  swift_getWitnessTable();
  type metadata accessor for Set();
  result = type metadata accessor for Published();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of NearbyInvitationAdvertiser.start()()
{
  v2 = *(*v0 + 248);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in NearbyGroupTable.cleanUpIfNotPresent(_:);

  return v6();
}

uint64_t dispatch thunk of NearbyInvitationAdvertiser.stop()()
{
  v2 = *(*v0 + 256);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in NearbyGroupTable.firstGroup();

  return v6();
}

uint64_t dispatch thunk of NearbyInvitationAdvertiser.assertPublic(rotations:)(uint64_t a1)
{
  v4 = *(*v1 + 264);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of NearbyGroupTable.firstGroup();

  return v8(a1);
}

uint64_t getEnumTagSinglePayload for NearbyInvitationAdvertiser.Errors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NearbyInvitationAdvertiser.Errors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata instantiation function for NearbyInvitationAdvertiser.PendingMember()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for NearbyInvitationAdvertiser.PendingMember(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for NearbyInvitationAdvertiser.PendingMember(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UUID and conformance UUID()
{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in NearbyInvitationAdvertiser.assertPublic(rotations:)(uint64_t a1, void *a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation4UUIDVs5Error_pGMd, &_sScCy10Foundation4UUIDVs5Error_pGMR) - 8) + 80);

  return closure #1 in closure #1 in NearbyInvitationAdvertiser.assertPublic(rotations:)(a1, a2);
}

uint64_t outlined init with copy of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in NearbyInvitationAdvertiser.stop()(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #1 in NearbyInvitationAdvertiser.stop()(a1, v1 + v4, v5);
}

uint64_t objectdestroy_34Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t partial apply for closure #2 in closure #1 in NearbyInvitationAdvertiser.stop()(void *a1, const char *a2, const char *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  return closure #2 in closure #1 in NearbyInvitationAdvertiser.start()(a1, v3 + v8, *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8)), a2, a3);
}

void partial apply for closure #1 in closure #1 in NearbyInvitationAdvertiser.start()(NSObject *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR) - 8) + 80);

  closure #1 in closure #1 in NearbyInvitationAdvertiser.start()(a1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NearbyInvitationSessionProvider()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x25F86F720](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NearbyInvitationSessionProvider()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x25F86F720](v1);
  return Hasher._finalize()();
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance NearbyInvitationSessionProvider@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result != 1;
  *a2 = *result == 1;
  *(a2 + 8) = v2;
  return result;
}

uint64_t static NearbyInvitationServiceInterface.identity.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for XPCIdentity();
  v3 = __swift_project_value_buffer(v2, static NearbyInvitationServiceInterface.identity);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id closure #1 in variable initialization expression of static NearbyInvitationServiceInterface.hostObjectInterface()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  _ss29getContiguousArrayStorageType3fors01_bcD0CyxGmxm_tlFSo8NSObjectCm_Ttg5();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25B82D2E0;
  *(inited + 32) = type metadata accessor for NSSet(0, &lazy cache variable for type metadata for NSUUID, 0x277CCAD78);
  *(inited + 40) = type metadata accessor for NSSet(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
  *(inited + 48) = type metadata accessor for NSSet(0, &lazy cache variable for type metadata for NSData, 0x277CBEA90);
  *(inited + 56) = type metadata accessor for NSSet(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  *(inited + 64) = type metadata accessor for NSSet(0, &lazy cache variable for type metadata for NSArray, 0x277CBEA60);
  v2 = type metadata accessor for NearbyAdvertisement(0);
  *(inited + 72) = v2;
  *(inited + 80) = type metadata accessor for NearbyInvitationJoinRequestMetadata();
  *(inited + 88) = v2;
  *(inited + 96) = type metadata accessor for IncomingInvitationJoinRequest(0);
  *(inited + 104) = type metadata accessor for InvitationJoinResponse();
  *(inited + 112) = type metadata accessor for InvitationApprovalRequest();
  *(inited + 120) = type metadata accessor for NearbyInvitationData(0);
  *(inited + 128) = type metadata accessor for NearbyGroupMember();
  *(inited + 136) = type metadata accessor for NearbyAdvertisementRequest();
  *(inited + 144) = type metadata accessor for NearbyInvitationParameters();
  *(inited + 152) = type metadata accessor for InvitationBlob();
  specialized _arrayForceCast<A, B>(_:)(inited);
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  specialized _arrayForceCast<A, B>(_:)(inited);
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  specialized _arrayForceCast<A, B>(_:)(inited);
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  specialized _arrayForceCast<A, B>(_:)(inited);
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  specialized _arrayForceCast<A, B>(_:)(inited);
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  specialized _arrayForceCast<A, B>(_:)(inited);
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  specialized _arrayForceCast<A, B>(_:)(inited);
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  specialized _arrayForceCast<A, B>(_:)(inited);
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  specialized _arrayForceCast<A, B>(_:)(inited);
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  specialized _arrayForceCast<A, B>(_:)(inited);
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  specialized _arrayForceCast<A, B>(_:)(inited);
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  specialized _arrayForceCast<A, B>(_:)(inited);
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  specialized _arrayForceCast<A, B>(_:)(inited);
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  specialized _arrayForceCast<A, B>(_:)(inited);
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  specialized _arrayForceCast<A, B>(_:)(inited);
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  specialized _arrayForceCast<A, B>(_:)(inited);
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  specialized _arrayForceCast<A, B>(_:)(inited);
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  specialized _arrayForceCast<A, B>(_:)(inited);
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  specialized _arrayForceCast<A, B>(_:)(inited);
  swift_setDeallocating();
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  return v0;
}

uint64_t specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v4 = (a1 + 32);
    v2 = v10;
    do
    {
      v8 = *v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCmMd, "<G");
      __swift_instantiateConcreteTypeFromMangledNameV2(&_syXlXpMd, "BG");
      swift_dynamicCast();
      v6 = *(v10 + 16);
      v5 = *(v10 + 24);
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
      }

      *(v10 + 16) = v6 + 1;
      *(v10 + 8 * v6 + 32) = v9;
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

id one-time initialization function for clientObjectInterface()
{
  result = closure #1 in variable initialization expression of static NearbyInvitationServiceInterface.clientObjectInterface();
  static NearbyInvitationServiceInterface.clientObjectInterface = result;
  return result;
}

id closure #1 in variable initialization expression of static NearbyInvitationServiceInterface.clientObjectInterface()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25B82C310;
  v2 = type metadata accessor for NSSet(0, &lazy cache variable for type metadata for NSArray, 0x277CBEA60);
  *(v1 + 32) = v2;
  *(v1 + 40) = type metadata accessor for NearbyGroupConnectionInfo(0);
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  _ss29getContiguousArrayStorageType3fors01_bcD0CyxGmxm_tlFSo8NSObjectCm_Ttg5();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25B82D2F0;
  *(inited + 32) = type metadata accessor for NSSet(0, &lazy cache variable for type metadata for NSUUID, 0x277CCAD78);
  *(inited + 40) = type metadata accessor for NSSet(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
  *(inited + 48) = type metadata accessor for NSSet(0, &lazy cache variable for type metadata for NSData, 0x277CBEA90);
  *(inited + 56) = type metadata accessor for NSSet(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  *(inited + 64) = v2;
  *(inited + 72) = type metadata accessor for NearbyAdvertisement(0);
  v4 = type metadata accessor for NearbyInvitationJoinRequestMetadata();
  *(inited + 80) = v4;
  *(inited + 88) = type metadata accessor for InvitationJoinResponse();
  *(inited + 96) = type metadata accessor for IncomingInvitationJoinRequest(0);
  *(inited + 104) = v4;
  specialized _arrayForceCast<A, B>(_:)(inited);
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  specialized _arrayForceCast<A, B>(_:)(inited);
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  specialized _arrayForceCast<A, B>(_:)(inited);
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  specialized _arrayForceCast<A, B>(_:)(inited);
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  specialized _arrayForceCast<A, B>(_:)(inited);
  swift_setDeallocating();
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  return v0;
}

id static NearbyInvitationServiceInterface.hostObjectInterface.getter(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

unint64_t lazy protocol witness table accessor for type NearbyInvitationSessionProvider and conformance NearbyInvitationSessionProvider()
{
  result = lazy protocol witness table cache variable for type NearbyInvitationSessionProvider and conformance NearbyInvitationSessionProvider;
  if (!lazy protocol witness table cache variable for type NearbyInvitationSessionProvider and conformance NearbyInvitationSessionProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyInvitationSessionProvider and conformance NearbyInvitationSessionProvider);
  }

  return result;
}

uint64_t protocol witness for static XPCInterface.identity.getter in conformance NearbyInvitationServiceInterface@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for XPCIdentity();
  v3 = __swift_project_value_buffer(v2, static NearbyInvitationServiceInterface.identity);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id protocol witness for static XPCInterface.hostObjectInterface.getter in conformance NearbyInvitationServiceInterface(uint64_t a1, uint64_t a2, void *a3, void **a4)
{
  if (*a3 == -1)
  {
    v5 = *a4;
  }

  else
  {
    swift_once();
    v5 = *a4;
  }

  return v5;
}

uint64_t _ss29getContiguousArrayStorageType3fors01_bcD0CyxGmxm_tlFSo8NSObjectCm_Ttg5()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCmMd, "<G");
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &_ss23_ContiguousArrayStorageCySo8NSObjectCmGMd;
    v3 = &_ss23_ContiguousArrayStorageCySo8NSObjectCmGMR;
  }

  else
  {
    v2 = &_ss23_ContiguousArrayStorageCyyXlGMd;
    v3 = &_ss23_ContiguousArrayStorageCyyXlGMR;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
}

uint64_t NearbyInvitationScanner.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for NearbyInvitationScanner.uuid;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

Swift::Int NearbyInvitationScanner.Errors.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x25F86F720](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NearbyInvitationScanner<A>.Errors()
{
  Hasher.init(_seed:)();
  NearbyInvitationScanner.Errors.hash(into:)(v2, *v0);
  return Hasher._finalize()();
}

void NearbyInvitationScanner.didDiscoverNearbyAdvertisement(advertisement:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Log.client);

  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  v37 = v4;
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v38[0] = v11;
    *v9 = 136315394;
    v39 = v1;
    v12 = *(v4 + 80);
    v13 = *(v4 + 88);
    v14 = type metadata accessor for NearbyInvitationScanner();
    v15 = >> prefix<A>(_:)(&v39, v14);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v38);

    *(v9 + 4) = v17;
    *(v9 + 12) = 2112;
    *(v9 + 14) = v6;
    *v10 = v6;
    v18 = v6;
    _os_log_impl(&dword_25B7C4000, v7, v8, "%s Did discover NearbyAdvertisement callback: %@", v9, 0x16u);
    outlined destroy of NSObject?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x25F86FE20](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x25F86FE20](v11, -1, -1);
    MEMORY[0x25F86FE20](v9, -1, -1);
  }

  v19 = static UUID.== infix(_:_:)();
  if (v19)
  {
    MEMORY[0x28223BE20](v19);
    v20 = *(v37 + 80);
    v21 = *(v37 + 88);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    swift_getKeyPath();
    v23 = static Published.subscript.modify();
    specialized Set._Variant.insert(_:)(&v39, v6, type metadata accessor for NearbyAdvertisement, &_ss11_SetStorageCy14NearbySessions0C13AdvertisementCGMd, &_ss11_SetStorageCy14NearbySessions0C13AdvertisementCGMR, type metadata accessor for NearbyAdvertisement);

    v23(v38, 0);
  }

  else
  {

    v24 = v6;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v38[0] = v29;
      *v27 = 136315394;
      v39 = v2;
      v30 = *(v37 + 80);
      v31 = *(v37 + 88);
      v32 = type metadata accessor for NearbyInvitationScanner();
      v33 = >> prefix<A>(_:)(&v39, v32);
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, v38);

      *(v27 + 4) = v35;
      *(v27 + 12) = 2112;
      *(v27 + 14) = v24;
      *v28 = v24;
      v36 = v24;
      _os_log_impl(&dword_25B7C4000, v25, v26, "%s Ignored discovered advertisement: %@ since it's not for our scanner", v27, 0x16u);
      outlined destroy of NSObject?(v28, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x25F86FE20](v28, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x25F86FE20](v29, -1, -1);
      MEMORY[0x25F86FE20](v27, -1, -1);
    }
  }
}

void NearbyInvitationScanner.didLoseNearbyAdvertisement(advertisement:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Log.client);

  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  v37 = v4;
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v38[0] = v11;
    *v9 = 136315394;
    v39 = v1;
    v12 = *(v4 + 80);
    v13 = *(v4 + 88);
    v14 = type metadata accessor for NearbyInvitationScanner();
    v15 = >> prefix<A>(_:)(&v39, v14);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v38);

    *(v9 + 4) = v17;
    *(v9 + 12) = 2112;
    *(v9 + 14) = v6;
    *v10 = v6;
    v18 = v6;
    _os_log_impl(&dword_25B7C4000, v7, v8, "%s Did lose NearbyAdvertisement callback: %@", v9, 0x16u);
    outlined destroy of NSObject?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x25F86FE20](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x25F86FE20](v11, -1, -1);
    MEMORY[0x25F86FE20](v9, -1, -1);
  }

  v19 = static UUID.== infix(_:_:)();
  if (v19)
  {
    MEMORY[0x28223BE20](v19);
    v20 = *(v37 + 80);
    v21 = *(v37 + 88);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    swift_getKeyPath();
    v23 = static Published.subscript.modify();

    v23(v38, 0);
  }

  else
  {

    v24 = v6;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v38[0] = v29;
      *v27 = 136315394;
      v39 = v2;
      v30 = *(v37 + 80);
      v31 = *(v37 + 88);
      v32 = type metadata accessor for NearbyInvitationScanner();
      v33 = >> prefix<A>(_:)(&v39, v32);
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, v38);

      *(v27 + 4) = v35;
      *(v27 + 12) = 2112;
      *(v27 + 14) = v24;
      *v28 = v24;
      v36 = v24;
      _os_log_impl(&dword_25B7C4000, v25, v26, "%s Ignored lost advertisement: %@ since it's not for our scanner", v27, 0x16u);
      outlined destroy of NSObject?(v28, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x25F86FE20](v28, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x25F86FE20](v29, -1, -1);
      MEMORY[0x25F86FE20](v27, -1, -1);
    }
  }
}

uint64_t @objc NearbyInvitationScanner.didDiscoverNearbyAdvertisement(advertisement:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(id))
{
  v5 = a3;

  a4(v5);
}

uint64_t NearbyInvitationScanner.didDiscoverNearbySessionInvitation(id:invitation:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Log.client);

  outlined copy of Data._Representation(a3, a4);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();

  outlined consume of Data._Representation(a3, a4);
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = v5;
    v30[0] = v28;
    *v14 = 136315650;
    v15 = *(v10 + 80);
    v16 = *(v10 + 88);
    v17 = type metadata accessor for NearbyInvitationScanner();
    v18 = >> prefix<A>(_:)(&v29, v17);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v30);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    *(v14 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v30);
    *(v14 + 22) = 2080;
    v21 = Data.description.getter();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v30);

    *(v14 + 24) = v23;
    _os_log_impl(&dword_25B7C4000, v12, v13, "%s Did discover NearbySessionInvitation callback: [%s:%s]", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25F86FE20](v28, -1, -1);
    MEMORY[0x25F86FE20](v14, -1, -1);
  }

  v24 = *(v5 + direct field offset for NearbyInvitationScanner.invitationDataBlobs);
  v30[0] = a1;
  v30[1] = a2;
  v31 = a3;
  v32 = a4;

  outlined copy of Data._Representation(a3, a4);
  PassthroughSubject.send(_:)();
  v25 = v31;
  v26 = v32;

  return outlined consume of Data._Representation(v25, v26);
}

uint64_t @objc NearbyInvitationScanner.didDiscoverNearbySessionInvitation(id:invitation:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = a4;

  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  NearbyInvitationScanner.didDiscoverNearbySessionInvitation(id:invitation:)(v5, v7, v9, v11);
  outlined consume of Data._Representation(v9, v11);
}

uint64_t key path getter for NearbyInvitationScanner.advertisements : <A>NearbyInvitationScanner<A>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 184))();
  *a2 = result;
  return result;
}

uint64_t key path setter for NearbyInvitationScanner.advertisements : <A>NearbyInvitationScanner<A>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return NearbyInvitationScanner.advertisements.setter();
}

uint64_t NearbyInvitationScanner.advertisements.getter()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v4;
}

uint64_t NearbyInvitationScanner.advertisements.setter()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t key path setter for NearbyInvitationScanner.$advertisements : <A>NearbyInvitationScanner<A>(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVyShy14NearbySessions0D13AdvertisementCG_GMd, &_s7Combine9PublishedV9PublisherVyShy14NearbySessions0D13AdvertisementCG_GMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  (*(v8 + 16))(&v11 - v6, a1);
  v9 = *a2;
  return NearbyInvitationScanner.$advertisements.setter(v7);
}

uint64_t NearbyInvitationScanner.$advertisements.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShy14NearbySessions0C13AdvertisementCGGMd, &_s7Combine9PublishedVyShy14NearbySessions0C13AdvertisementCGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t NearbyInvitationScanner.$advertisements.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVyShy14NearbySessions0D13AdvertisementCG_GMd, &_s7Combine9PublishedV9PublisherVyShy14NearbySessions0D13AdvertisementCG_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShy14NearbySessions0C13AdvertisementCGGMd, &_s7Combine9PublishedVyShy14NearbySessions0C13AdvertisementCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void *NearbyInvitationScanner.__allocating_init(provider:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return specialized NearbyInvitationScanner.init(provider:)();
}

void *NearbyInvitationScanner.__allocating_init(provider:configuration:)(uint64_t a1, void *a2)
{
  v4 = *(v2 + 48);
  v5 = *(v2 + 52);
  swift_allocObject();
  v6 = specialized NearbyInvitationScanner.init(provider:configuration:)(a2);

  return v6;
}

void *NearbyInvitationScanner.init(provider:configuration:)(uint64_t a1, void *a2)
{
  v3 = specialized NearbyInvitationScanner.init(provider:configuration:)(a2);

  return v3;
}

uint64_t NearbyInvitationScanner.start()()
{
  *(v1 + 24) = v0;
  *(v1 + 32) = *v0;
  return MEMORY[0x2822009F8](NearbyInvitationScanner.start(), 0, 0);
}

{
  v21 = v0;
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.client);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[3];
    v5 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    v0[2] = v6;
    v9 = *(v5 + 80);
    v10 = *(v5 + 88);
    v11 = type metadata accessor for NearbyInvitationScanner();
    v12 = >> prefix<A>(_:)((v0 + 2), v11);
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v20);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_25B7C4000, v3, v4, "%s: client called start on NearbyInvitationsScanner", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x25F86FE20](v8, -1, -1);
    MEMORY[0x25F86FE20](v7, -1, -1);
  }

  v15 = *(MEMORY[0x277D85A40] + 4);
  v16 = swift_task_alloc();
  v0[5] = v16;
  *v16 = v0;
  v16[1] = NearbyInvitationAdvertiser.start();
  v17 = v0[3];
  v18 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v16, 0, 0, 0x29287472617473, 0xE700000000000000, partial apply for closure #1 in NearbyInvitationScanner.start(), v17, v18);
}

void closure #1 in NearbyInvitationScanner.start()(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v21 - v8;
  v10 = [objc_allocWithZone(MEMORY[0x277CFD160]) init];
  v11 = [v10 wranglerHomePodBoopEnabled];

  if (v11 && (v12 = *(a2 + direct field offset for NearbyInvitationScanner.setup)) != 0)
  {
    v21[1] = *(a2 + direct field offset for NearbyInvitationScanner.controller);
    v13 = direct field offset for NearbyInvitationScanner.uuid;
    (*(v6 + 16))(v9, a1, v5);
    v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = *(v4 + 80);
    *(v15 + 24) = *(v4 + 88);
    (*(v6 + 32))(v15 + v14, v9, v5);
    *(v15 + ((v7 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
    v16 = v12;

    NearbyInvitationsController.scanNearbyEndpoints(params:scannerID:response:)(v16, a2 + v13, partial apply for closure #1 in closure #1 in NearbyInvitationScanner.start(), v15);
  }

  else
  {
    v17 = *(a2 + direct field offset for NearbyInvitationScanner.controller);
    v18 = direct field offset for NearbyInvitationScanner.uuid;
    (*(v6 + 16))(v9, a1, v5);
    v19 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = *(v4 + 80);
    *(v20 + 24) = *(v4 + 88);
    (*(v6 + 32))(v20 + v19, v9, v5);
    *(v20 + ((v7 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;

    NearbyInvitationsController.scanNearbyInvitations(scannerID:response:)(a2 + v18, partial apply for closure #2 in closure #1 in NearbyInvitationScanner.start(), v20);
  }
}

uint64_t closure #1 in closure #1 in NearbyInvitationScanner.start()(void *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v4 = a1;
    if (one-time initialization token for client != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Log.client);
    v6 = a1;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = a1;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      _os_log_impl(&dword_25B7C4000, v7, v8, "NearbyInvitationScanner could not start scanning - Error: %@", v9, 0xCu);
      outlined destroy of NSObject?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x25F86FE20](v10, -1, -1);
      MEMORY[0x25F86FE20](v9, -1, -1);
    }

    v28 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v15 = *a3;
    if (one-time initialization token for client != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Log.client);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v27 = a3;
      v28 = v20;
      *v19 = 136315138;
      v21 = *(v15 + 80);
      v22 = *(v15 + 88);
      v23 = type metadata accessor for NearbyInvitationScanner();
      v24 = >> prefix<A>(_:)(&v27, v23);
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v28);

      *(v19 + 4) = v26;
      _os_log_impl(&dword_25B7C4000, v17, v18, "%s NearbyInvitationScanner did start scanning", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x25F86FE20](v20, -1, -1);
      MEMORY[0x25F86FE20](v19, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t NearbyInvitationScanner.stop()()
{
  *(v1 + 24) = v0;
  *(v1 + 32) = *v0;
  return MEMORY[0x2822009F8](NearbyInvitationScanner.stop(), 0, 0);
}

{
  v21 = v0;
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.client);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[3];
    v5 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    v0[2] = v6;
    v9 = *(v5 + 80);
    v10 = *(v5 + 88);
    v11 = type metadata accessor for NearbyInvitationScanner();
    v12 = >> prefix<A>(_:)((v0 + 2), v11);
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v20);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_25B7C4000, v3, v4, "%s: client called stop on NearbyInvitationsScanner", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x25F86FE20](v8, -1, -1);
    MEMORY[0x25F86FE20](v7, -1, -1);
  }

  v15 = *(MEMORY[0x277D85A40] + 4);
  v16 = swift_task_alloc();
  v0[5] = v16;
  *v16 = v0;
  v16[1] = NearbyInvitationAdvertiser.stop();
  v17 = v0[3];
  v18 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v16, 0, 0, 0x2928706F7473, 0xE600000000000000, partial apply for closure #1 in NearbyInvitationScanner.stop(), v17, v18);
}

uint64_t closure #1 in NearbyInvitationScanner.stop()(uint64_t a1, void *a2)
{
  v4 = *a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v10 = *(a2 + direct field offset for NearbyInvitationScanner.controller);
  (*(v6 + 16))(&v25 - v8, a1, v5);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  (*(v6 + 32))(v12 + v11, v9, v5);
  NearbyInvitationsController.stopScanningNearbyInvitations(response:)(partial apply for closure #1 in closure #1 in NearbyInvitationScanner.stop(), v12);

  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Log.client);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v25 = a2;
    v26 = v17;
    *v16 = 136315138;
    v18 = *(v4 + 80);
    v19 = *(v4 + 88);
    v20 = type metadata accessor for NearbyInvitationScanner();
    v21 = >> prefix<A>(_:)(&v25, v20);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v26);

    *(v16 + 4) = v23;
    _os_log_impl(&dword_25B7C4000, v14, v15, "%s NearbyInvitationScanner did stop scanning", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x25F86FE20](v17, -1, -1);
    MEMORY[0x25F86FE20](v16, -1, -1);
  }

  return CheckedContinuation.resume(returning:)();
}

void *closure #1 in closure #1 in NearbyInvitationScanner.stop()(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = result;
    if (one-time initialization token for client != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Log.client);
    v4 = v1;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = v1;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_25B7C4000, v5, v6, "NearbyInvitationScanner could not stop scanning Nearby Invitation - Error: %@", v7, 0xCu);
      outlined destroy of NSObject?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x25F86FE20](v8, -1, -1);
      MEMORY[0x25F86FE20](v7, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  return result;
}

uint64_t NearbyInvitationScanner.deinit()
{
  v1 = direct field offset for NearbyInvitationScanner.uuid;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + direct field offset for NearbyInvitationScanner.invitationDataBlobs);

  v4 = *(v0 + direct field offset for NearbyInvitationScanner.controller);

  v5 = direct field offset for NearbyInvitationScanner._advertisements;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShy14NearbySessions0C13AdvertisementCGGMd, &_s7Combine9PublishedVyShy14NearbySessions0C13AdvertisementCGGMR);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t NearbyInvitationScanner.__deallocating_deinit()
{
  NearbyInvitationScanner.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t NearbyInvitationScanner<>.request(_:displayName:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[43] = a6;
  v7[44] = v6;
  v7[41] = a4;
  v7[42] = a5;
  v7[39] = a2;
  v7[40] = a3;
  v7[38] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA18PassthroughSubjectCySS_10Foundation4DataVts5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA18PassthroughSubjectCySS_10Foundation4DataVts5NeverOGGMR);
  v7[45] = v8;
  v9 = *(v8 - 8);
  v7[46] = v9;
  v10 = *(v9 + 64) + 15;
  v7[47] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA18PassthroughSubjectCySS_10Foundation4DataVts5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA18PassthroughSubjectCySS_10Foundation4DataVts5NeverOG_GMR);
  v7[48] = v11;
  v12 = *(v11 - 8);
  v7[49] = v12;
  v13 = *(v12 + 64) + 15;
  v7[50] = swift_task_alloc();

  return MEMORY[0x2822009F8](NearbyInvitationScanner<>.request(_:displayName:userInfo:), 0, 0);
}

uint64_t NearbyInvitationScanner<>.request(_:displayName:userInfo:)()
{
  v22 = v0;
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v1 = v0[44];
  v2 = v0[39];
  v3 = type metadata accessor for Logger();
  v0[51] = __swift_project_value_buffer(v3, static Log.client);

  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[44];
    v8 = v0[39];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v9 = 136315394;
    v0[37] = v7;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NearbySessions0A17InvitationScannerCyAA0A5GroupCGMd, &_s14NearbySessions0A17InvitationScannerCyAA0A5GroupCGMR);
    v12 = String.init<A>(reflecting:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v21);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    *(v9 + 14) = v8;
    *v10 = v8;
    v15 = v8;
    _os_log_impl(&dword_25B7C4000, v5, v6, "%s: about to request to be let in to NearbyAdvertisement %@", v9, 0x16u);
    outlined destroy of NSObject?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x25F86FE20](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x25F86FE20](v11, -1, -1);
    MEMORY[0x25F86FE20](v9, -1, -1);
  }

  v16 = *(MEMORY[0x277D85A40] + 4);
  v17 = swift_task_alloc();
  v0[52] = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NearbySessions0A29InvitationJoinRequestMetadataCSgMd, &_s14NearbySessions0A29InvitationJoinRequestMetadataCSgMR);
  *v17 = v0;
  v17[1] = NearbyInvitationScanner<>.request(_:displayName:userInfo:);
  v19 = v0[44];

  return MEMORY[0x2822008A0](v0 + 24, 0, 0, 0xD000000000000020, 0x800000025B830750, partial apply for closure #1 in NearbyInvitationScanner<>.request(_:displayName:userInfo:), v19, v18);
}

{
  v2 = *(*v1 + 416);
  v5 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v3 = NearbyInvitationScanner<>.request(_:displayName:userInfo:);
  }

  else
  {
    v3 = NearbyInvitationScanner<>.request(_:displayName:userInfo:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v32 = v0;
  v1 = v0[24];
  v0[54] = v1;
  if (v1)
  {
    v2 = v0[51];
    v3 = v0[44];

    v4 = v1;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[44];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v31 = v9;
      *v8 = 136315138;
      v0[36] = v7;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NearbySessions0A17InvitationScannerCyAA0A5GroupCGMd, &_s14NearbySessions0A17InvitationScannerCyAA0A5GroupCGMR);
      v10 = String.init<A>(reflecting:)();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v31);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_25B7C4000, v5, v6, "%s requesting for preLMI, and now going to await for datablobs", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x25F86FE20](v9, -1, -1);
      MEMORY[0x25F86FE20](v8, -1, -1);
    }

    v13 = [objc_allocWithZone(MEMORY[0x277CFD160]) init];
    v14 = [v13 wranglerHomePodBoopEnabled];

    if (v14)
    {
      v15 = v0[44];
      v16 = v0[39];
      v17 = swift_task_alloc();
      v0[55] = v17;
      v17[2] = v15;
      v17[3] = v16;
      v17[4] = v4;
      v18 = *(MEMORY[0x277D85A40] + 4);
      v19 = swift_task_alloc();
      v0[56] = v19;
      *v19 = v0;
      v19[1] = NearbyInvitationScanner<>.request(_:displayName:userInfo:);
      v20 = partial apply for closure #2 in NearbyInvitationScanner<>.request(_:displayName:userInfo:);
      v21 = MEMORY[0x277D84F78] + 8;
    }

    else
    {
      v27 = v0[44];
      v28 = v0[39];
      v17 = swift_task_alloc();
      v0[66] = v17;
      v17[2] = v27;
      v17[3] = v28;
      v17[4] = v4;
      v29 = *(MEMORY[0x277D85A40] + 4);
      v30 = swift_task_alloc();
      v0[67] = v30;
      v21 = type metadata accessor for InvitationBlob();
      v0[68] = v21;
      *v30 = v0;
      v30[1] = NearbyInvitationScanner<>.request(_:displayName:userInfo:);
      v20 = partial apply for closure #3 in NearbyInvitationScanner<>.request(_:displayName:userInfo:);
      v19 = v0 + 25;
    }

    return MEMORY[0x2822008A0](v19, 0, 0, 0xD000000000000020, 0x800000025B830750, v20, v17, v21);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NearbySessions0A17InvitationScannerC6ErrorsOyAA0A5GroupC_GMd, &_s14NearbySessions0A17InvitationScannerC6ErrorsOyAA0A5GroupC_GMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type NearbyInvitationScanner<NearbyGroup>.Errors and conformance NearbyInvitationScanner<A>.Errors, &_s14NearbySessions0A17InvitationScannerC6ErrorsOyAA0A5GroupC_GMd, &_s14NearbySessions0A17InvitationScannerC6ErrorsOyAA0A5GroupC_GMR);
    swift_allocError();
    *v22 = 0;
    swift_willThrow();
    v23 = v0[50];
    v24 = v0[47];

    v25 = v0[1];

    return v25();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 448);
  v4 = *v1;
  *(v2 + 456) = v0;

  v5 = *(v2 + 440);
  if (v0)
  {

    v6 = NearbyInvitationScanner<>.request(_:displayName:userInfo:);
  }

  else
  {

    v6 = NearbyInvitationScanner<>.request(_:displayName:userInfo:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v24 = v0;
  v1 = v0[51];
  v2 = v0[44];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[44];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 136315138;
    v0[35] = v5;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NearbySessions0A17InvitationScannerCyAA0A5GroupCGMd, &_s14NearbySessions0A17InvitationScannerCyAA0A5GroupCGMR);
    v8 = String.init<A>(reflecting:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v23);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_25B7C4000, v3, v4, "%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x25F86FE20](v7, -1, -1);
    MEMORY[0x25F86FE20](v6, -1, -1);
  }

  v11 = v0[50];
  v13 = v0[46];
  v12 = v0[47];
  v14 = v0[45];
  v0[30] = *(v0[44] + direct field offset for NearbyInvitationScanner.invitationDataBlobs);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCySS_10Foundation4DataVts5NeverOGMd, &_s7Combine18PassthroughSubjectCySS_10Foundation4DataVts5NeverOGMR);
  v16 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type PassthroughSubject<(String, Data), Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCySS_10Foundation4DataVts5NeverOGMd, &_s7Combine18PassthroughSubjectCySS_10Foundation4DataVts5NeverOGMR);
  MEMORY[0x25F86EF60](v15, v16);
  AsyncPublisher.makeAsyncIterator()();
  (*(v13 + 8))(v12, v14);
  v0[58] = OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_identifier;
  v17 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<PassthroughSubject<(String, Data), Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA18PassthroughSubjectCySS_10Foundation4DataVts5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA18PassthroughSubjectCySS_10Foundation4DataVts5NeverOG_GMR);
  v18 = *(MEMORY[0x277D856D0] + 4);
  v19 = swift_task_alloc();
  v0[59] = v19;
  *v19 = v0;
  v19[1] = NearbyInvitationScanner<>.request(_:displayName:userInfo:);
  v20 = v0[50];
  v21 = v0[48];

  return MEMORY[0x282200308](v0 + 2, v21, v17);
}

{
  v2 = *(*v1 + 472);
  v5 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {
    v3 = NearbyInvitationScanner<>.request(_:displayName:userInfo:);
  }

  else
  {
    v3 = NearbyInvitationScanner<>.request(_:displayName:userInfo:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  return MEMORY[0x2822009F8](NearbyInvitationScanner<>.request(_:displayName:userInfo:), 0, 0);
}

{
  v85 = v0;
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v0[61] = v4;
  v0[62] = v3;
  v5 = v0[51];
  if (!v2)
  {
    v35 = v0[44];
    (*(v0[49] + 8))(v0[50], v0[48]);

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = v0[44];
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v84[0] = v40;
      *v39 = 136315138;
      v0[32] = v38;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NearbySessions0A17InvitationScannerCyAA0A5GroupCGMd, &_s14NearbySessions0A17InvitationScannerCyAA0A5GroupCGMR);
      v41 = String.init<A>(reflecting:)();
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, v84);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_25B7C4000, v36, v37, "%s scanner could not request for invitation request for NearbyGroups", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x25F86FE20](v40, -1, -1);
      MEMORY[0x25F86FE20](v39, -1, -1);
    }

    v44 = v0[54];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NearbySessions0A17InvitationScannerC6ErrorsOyAA0A5GroupC_GMd, &_s14NearbySessions0A17InvitationScannerC6ErrorsOyAA0A5GroupC_GMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type NearbyInvitationScanner<NearbyGroup>.Errors and conformance NearbyInvitationScanner<A>.Errors, &_s14NearbySessions0A17InvitationScannerC6ErrorsOyAA0A5GroupC_GMd, &_s14NearbySessions0A17InvitationScannerC6ErrorsOyAA0A5GroupC_GMR);
    swift_allocError();
    *v45 = 1;
    swift_willThrow();

    goto LABEL_14;
  }

  v6 = v0[44];

  outlined copy of Data._Representation(v4, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  outlined consume of Data._Representation(v4, v3);
  if (os_log_type_enabled(v7, v8))
  {
    v82 = v1;
    v9 = v0[44];
    v10 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v84[0] = v79;
    *v10 = 136315650;
    v0[34] = v9;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NearbySessions0A17InvitationScannerCyAA0A5GroupCGMd, &_s14NearbySessions0A17InvitationScannerCyAA0A5GroupCGMR);
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v84);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    *(v10 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v2, v84);
    *(v10 + 22) = 2080;
    outlined copy of Data._Representation(v4, v3);
    v14 = Data.description.getter();
    v16 = v15;
    outlined consume of Data._Representation(v4, v3);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, v84);

    *(v10 + 24) = v17;
    v1 = v82;
    _os_log_impl(&dword_25B7C4000, v7, v8, "%s Starting to request: [%s:%s]", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25F86FE20](v79, -1, -1);
    MEMORY[0x25F86FE20](v10, -1, -1);
  }

  v18 = (v0[39] + v0[58]);
  v19 = *v18;
  v20 = v18[1];
  v21 = v1 == *v18 && v2 == v20;
  if (v21 || (v22 = *v18, v23 = v18[1], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v24 = v0[60];
    v25 = v0[54];
    v26 = v0[42];
    v27 = v0[43];
    v28 = v0[41];

    outlined copy of Data._Representation(v4, v3);
    outlined copy of Data?(v26, v27);

    v29 = specialized static NearbyInvitationData.create(from:)(v4, v3);
    if (v24)
    {
      v30 = v0[54];
      v32 = v0[49];
      v31 = v0[50];
      v33 = v0[48];
      v34 = v0[41];
      outlined consume of Data?(v0[42], v0[43]);

      outlined consume of Data._Representation(v4, v3);
      (*(v32 + 8))(v31, v33);

      outlined consume of Data._Representation(v4, v3);
LABEL_14:
      v46 = v0[50];
      v47 = v0[47];

      v48 = v0[1];

      return v48();
    }

    v50 = v29;
    v52 = v0[42];
    v51 = v0[43];
    v54 = v0[40];
    v53 = v0[41];
    outlined consume of Data._Representation(v4, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NearbySessions17InvitationRequestCyAA0A5GroupCGMd, &_s14NearbySessions17InvitationRequestCyAA0A5GroupCGMR);
    v55 = swift_allocObject();
    v0[63] = v55;
    v55[3] = 0;
    v55[4] = 0;
    v55[2] = 0;
    v55[5] = 0xF000000000000000;
    v55[6] = v50;
    swift_beginAccess();
    v55[2] = v54;
    v55[3] = v53;
    swift_beginAccess();
    v56 = v55[4];
    v57 = v55[5];
    outlined copy of Data?(v52, v51);
    v55[4] = v52;
    v55[5] = v51;
    outlined consume of Data?(v56, v57);
    outlined consume of Data?(v52, v51);
    v58 = swift_task_alloc();
    v0[64] = v58;
    *v58 = v0;
    v58[1] = NearbyInvitationScanner<>.request(_:displayName:userInfo:);
    v59 = v0[38];

    return InvitationRequest<>.request()(v59);
  }

  else
  {
    v83 = v1;
    v60 = v0[51];
    v61 = v0[44];
    v62 = v0[39];

    v80 = v62;

    v63 = Logger.logObject.getter();
    LOBYTE(v60) = static os_log_type_t.error.getter();

    v81 = v60;
    v64 = v60;
    v65 = v63;
    if (os_log_type_enabled(v63, v64))
    {
      v66 = v0[44];
      v67 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v84[0] = v78;
      *v67 = 136315650;
      v0[33] = v66;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NearbySessions0A17InvitationScannerCyAA0A5GroupCGMd, &_s14NearbySessions0A17InvitationScannerCyAA0A5GroupCGMR);
      v68 = String.init<A>(reflecting:)();
      log = v65;
      v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v69, v84);

      *(v67 + 4) = v70;
      *(v67 + 12) = 2080;
      v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v2, v84);

      *(v67 + 14) = v71;
      *(v67 + 22) = 2080;
      *(v67 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v84);
      _os_log_impl(&dword_25B7C4000, log, v81, "%s: Datablob does not have valid id %s and advertisement = %s", v67, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x25F86FE20](v78, -1, -1);
      MEMORY[0x25F86FE20](v67, -1, -1);
      outlined consume of Data._Representation(v4, v3);
    }

    else
    {
      outlined consume of Data._Representation(v4, v3);
    }

    v72 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<PassthroughSubject<(String, Data), Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA18PassthroughSubjectCySS_10Foundation4DataVts5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA18PassthroughSubjectCySS_10Foundation4DataVts5NeverOG_GMR);
    v73 = *(MEMORY[0x277D856D0] + 4);
    v74 = swift_task_alloc();
    v0[59] = v74;
    *v74 = v0;
    v74[1] = NearbyInvitationScanner<>.request(_:displayName:userInfo:);
    v75 = v0[50];
    v76 = v0[48];

    return MEMORY[0x282200308](v0 + 2, v76, v72);
  }
}

{
  *(v0 + 248) = *(v0 + 480);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

{
  v2 = v0[62];
  v1 = v0[63];
  v3 = v0[61];
  v4 = v0[54];
  v6 = v0[49];
  v5 = v0[50];
  v7 = v0[48];

  outlined consume of Data._Representation(v3, v2);

  (*(v6 + 8))(v5, v7);
  v8 = v0[19];
  v9 = v0[50];
  v10 = v0[47];

  v11 = v0[1];

  return v11(v8);
}

{
  v2 = *v1;
  v3 = *(*v1 + 536);
  v4 = *v1;
  *(v2 + 552) = v0;

  v5 = *(v2 + 528);
  if (v0)
  {

    v6 = NearbyInvitationScanner<>.request(_:displayName:userInfo:);
  }

  else
  {

    v6 = NearbyInvitationScanner<>.request(_:displayName:userInfo:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v82 = v0;
  v1 = v0[51];
  v2 = v0[25];
  v0[70] = v2;
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[68];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v81[0] = v8;
    *v7 = 136315138;
    v0[29] = v3;
    v9 = v3;
    v10 = String.init<A>(reflecting:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v81);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_25B7C4000, v4, v5, "Received connection Info %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x25F86FE20](v8, -1, -1);
    MEMORY[0x25F86FE20](v7, -1, -1);
  }

  v13 = v0[39];
  v14 = *&v3[OBJC_IVAR____TtC14NearbySessions14InvitationBlob_invitationID];
  v15 = *&v3[OBJC_IVAR____TtC14NearbySessions14InvitationBlob_invitationID + 8];
  v16 = &v3[OBJC_IVAR____TtC14NearbySessions14InvitationBlob_dataBlob];
  v17 = *&v3[OBJC_IVAR____TtC14NearbySessions14InvitationBlob_dataBlob];
  v0[71] = v17;
  v18 = *(v16 + 1);
  v0[72] = v18;
  v19 = (v13 + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_identifier);
  v20 = *v19;
  v21 = v19[1];
  if (v14 != *v19 || v15 != v21)
  {
    v23 = *v19;
    v24 = v19[1];
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v80 = v14;
      v57 = v0[51];
      v58 = v0[44];
      v59 = v0[39];

      v77 = v59;
      outlined copy of Data._Representation(v17, v18);

      v60 = Logger.logObject.getter();
      LOBYTE(v57) = static os_log_type_t.default.getter();

      v75 = v57;
      v61 = v57;
      v62 = v60;
      if (os_log_type_enabled(v60, v61))
      {
        v63 = v0[44];
        v78 = v3;
        v64 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v81[0] = v74;
        *v64 = 136315650;
        v0[26] = v63;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NearbySessions0A17InvitationScannerCyAA0A5GroupCGMd, &_s14NearbySessions0A17InvitationScannerCyAA0A5GroupCGMR);
        v65 = String.init<A>(reflecting:)();
        v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, v81);

        *(v64 + 4) = v67;
        *(v64 + 12) = 2080;
        v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v15, v81);

        *(v64 + 14) = v68;
        *(v64 + 22) = 2080;
        *(v64 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v81);
        _os_log_impl(&dword_25B7C4000, v62, v75, "%s: Datablob does not have valid id %s and advertisement = %s", v64, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x25F86FE20](v74, -1, -1);
        v69 = v64;
        v3 = v78;
        MEMORY[0x25F86FE20](v69, -1, -1);
      }

      else
      {
      }

      v44 = v0[54];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NearbySessions0A17InvitationScannerC6ErrorsOyAA0A5GroupC_GMd, &_s14NearbySessions0A17InvitationScannerC6ErrorsOyAA0A5GroupC_GMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type NearbyInvitationScanner<NearbyGroup>.Errors and conformance NearbyInvitationScanner<A>.Errors, &_s14NearbySessions0A17InvitationScannerC6ErrorsOyAA0A5GroupC_GMd, &_s14NearbySessions0A17InvitationScannerC6ErrorsOyAA0A5GroupC_GMR);
      swift_allocError();
      *v70 = 0;
      swift_willThrow();
      goto LABEL_20;
    }
  }

  v25 = v0[51];
  v26 = v0[44];
  outlined copy of Data._Representation(v17, v18);

  outlined copy of Data._Representation(v17, v18);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  outlined consume of Data._Representation(v17, v18);
  if (os_log_type_enabled(v27, v28))
  {
    v79 = v14;
    v29 = v0[44];
    v30 = swift_slowAlloc();
    v76 = v3;
    v31 = swift_slowAlloc();
    v81[0] = v31;
    *v30 = 136315650;
    v0[28] = v29;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NearbySessions0A17InvitationScannerCyAA0A5GroupCGMd, &_s14NearbySessions0A17InvitationScannerCyAA0A5GroupCGMR);
    v32 = String.init<A>(reflecting:)();
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, v81);

    *(v30 + 4) = v34;
    *(v30 + 12) = 2080;
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v15, v81);

    *(v30 + 14) = v35;
    *(v30 + 22) = 2080;
    outlined copy of Data._Representation(v17, v18);
    v36 = Data.description.getter();
    v38 = v37;
    outlined consume of Data._Representation(v17, v18);
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, v81);

    *(v30 + 24) = v39;
    _os_log_impl(&dword_25B7C4000, v27, v28, "%s Starting to request: [%s:%s]", v30, 0x20u);
    swift_arrayDestroy();
    v40 = v31;
    v3 = v76;
    MEMORY[0x25F86FE20](v40, -1, -1);
    MEMORY[0x25F86FE20](v30, -1, -1);
  }

  else
  {
  }

  v41 = v0[69];
  v42 = v0[41];
  outlined copy of Data?(v0[42], v0[43]);

  outlined copy of Data._Representation(v17, v18);
  v43 = specialized static NearbyInvitationData.create(from:)(v17, v18);
  if (v41)
  {
    v44 = v0[54];
    v45 = v0[41];
    outlined consume of Data?(v0[42], v0[43]);

    outlined consume of Data._Representation(v17, v18);
LABEL_20:
    outlined consume of Data._Representation(v17, v18);

    v71 = v0[50];
    v72 = v0[47];

    v73 = v0[1];

    return v73();
  }

  v46 = v43;
  v48 = v0[42];
  v47 = v0[43];
  v50 = v0[40];
  v49 = v0[41];
  outlined consume of Data._Representation(v17, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NearbySessions17InvitationRequestCyAA0A5GroupCGMd, &_s14NearbySessions17InvitationRequestCyAA0A5GroupCGMR);
  v51 = swift_allocObject();
  v0[73] = v51;
  v51[3] = 0;
  v51[4] = 0;
  v51[2] = 0;
  v51[5] = 0xF000000000000000;
  v51[6] = v46;
  swift_beginAccess();
  v51[2] = v50;
  v51[3] = v49;
  swift_beginAccess();
  v52 = v51[4];
  v53 = v51[5];
  outlined copy of Data?(v48, v47);
  v51[4] = v48;
  v51[5] = v47;
  outlined consume of Data?(v52, v53);
  outlined consume of Data?(v48, v47);
  v54 = swift_task_alloc();
  v0[74] = v54;
  *v54 = v0;
  v54[1] = NearbyInvitationScanner<>.request(_:displayName:userInfo:);
  v55 = v0[38];

  return InvitationRequest<>.request()(v55);
}

{
  v1 = v0[73];
  v2 = v0[72];
  v3 = v0[71];
  v4 = v0[70];
  v5 = v0[54];
  v6 = v0[44];
  v7 = *(v6 + direct field offset for NearbyInvitationScanner.controller);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v5;

  v9 = v5;
  NearbyInvitationsController.releaseInvitation(_:response:)(v9, closure #1 in $defer #1 <A>() in NearbyInvitationScanner<>.request(_:displayName:userInfo:)partial apply, v8);

  outlined consume of Data._Representation(v3, v2);

  v10 = v0[22];
  v11 = v0[50];
  v12 = v0[47];

  v13 = v0[1];

  return v13(v10);
}

{
  v1 = v0[53];
  v2 = v0[50];
  v3 = v0[47];

  v4 = v0[1];

  return v4();
}

{

  v1 = *(v0 + 456);
  v2 = *(v0 + 400);
  v3 = *(v0 + 376);

  v4 = *(v0 + 8);

  return v4();
}

{
  v1 = v0[65];
  v2 = v0[62];
  v3 = v0[63];
  v4 = v0[61];
  v5 = v0[54];
  v7 = v0[49];
  v6 = v0[50];
  v8 = v0[48];
  swift_willThrow();

  outlined consume of Data._Representation(v4, v2);

  (*(v7 + 8))(v6, v8);
  v9 = v0[65];
  v10 = v0[50];
  v11 = v0[47];

  v12 = v0[1];

  return v12();
}

{

  v1 = *(v0 + 552);
  v2 = *(v0 + 400);
  v3 = *(v0 + 376);

  v4 = *(v0 + 8);

  return v4();
}

{
  v33 = v0;
  v1 = v0[75];
  v2 = v0[51];
  v3 = v0[44];

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[75];
    v8 = v0[44];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v32 = v11;
    *v9 = 136315394;
    v0[27] = v8;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NearbySessions0A17InvitationScannerCyAA0A5GroupCGMd, &_s14NearbySessions0A17InvitationScannerCyAA0A5GroupCGMR);
    v12 = String.init<A>(reflecting:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v32);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    v15 = v7;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v16;
    *v10 = v16;
    _os_log_impl(&dword_25B7C4000, v5, v6, "%s scanner could not request for invitation request for NearbyGroups %@", v9, 0x16u);
    outlined destroy of NSObject?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x25F86FE20](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x25F86FE20](v11, -1, -1);
    MEMORY[0x25F86FE20](v9, -1, -1);
  }

  v17 = v0[75];
  v18 = v0[73];
  v19 = v0[72];
  v20 = v0[71];
  v21 = v0[70];
  v22 = v0[54];
  v23 = v0[44];
  swift_willThrow();
  v24 = *(v23 + direct field offset for NearbyInvitationScanner.controller);
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  *(v25 + 24) = v22;

  v26 = v22;
  NearbyInvitationsController.releaseInvitation(_:response:)(v26, partial apply for closure #1 in $defer #1 <A>() in NearbyInvitationScanner<>.request(_:displayName:userInfo:), v25);

  outlined consume of Data._Representation(v20, v19);

  v27 = v0[75];
  v28 = v0[50];
  v29 = v0[47];

  v30 = v0[1];

  return v30();
}

{
  return (*(v0 + 8))(*(v0 + 48));
}

{
  v1 = *(v0 + 40);
  return (*(v0 + 8))();
}

uint64_t NearbyInvitationScanner<>.request(_:displayName:userInfo:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[18] = v2;
  v4[19] = a1;
  v4[20] = v1;
  v5 = v3[64];
  v8 = *v2;
  v4[65] = v1;

  if (v1)
  {
    v6 = NearbyInvitationScanner<>.request(_:displayName:userInfo:);
  }

  else
  {
    v6 = NearbyInvitationScanner<>.request(_:displayName:userInfo:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v3 = *v2;
  v4 = *v2;
  v4[21] = v2;
  v4[22] = a1;
  v4[23] = v1;
  v5 = v3[74];
  v8 = *v2;
  v4[75] = v1;

  if (v1)
  {
    v6 = NearbyInvitationScanner<>.request(_:displayName:userInfo:);
  }

  else
  {
    v6 = NearbyInvitationScanner<>.request(_:displayName:userInfo:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v7 = NearbyInvitationScanner<>.request(_:displayName:userInfo:);
  }

  else
  {
    v4[6] = a1;
    outlined consume of Data?(v4[2], v4[3]);
    v7 = NearbyInvitationScanner<>.request(_:displayName:userInfo:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t closure #1 in NearbyInvitationScanner<>.request(_:displayName:userInfo:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14NearbySessions0A29InvitationJoinRequestMetadataCSgs5Error_pGMd, &_sScCy14NearbySessions0A29InvitationJoinRequestMetadataCSgs5Error_pGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = *(a2 + direct field offset for NearbyInvitationScanner.controller);
  (*(v5 + 16))(&v14 - v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = (v6 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v10, v8, v4);
  *(v12 + v11) = a2;

  NearbyInvitationsController.generateNearbyInvitation(response:)(partial apply for closure #1 in closure #1 in NearbyInvitationScanner<>.request(_:displayName:userInfo:), v12);
}

uint64_t closure #1 in closure #1 in NearbyInvitationScanner<>.request(_:displayName:userInfo:)(void *a1, uint64_t *a2)
{
  if (a2)
  {
    v17 = a2;
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14NearbySessions0A29InvitationJoinRequestMetadataCSgs5Error_pGMd, &_sScCy14NearbySessions0A29InvitationJoinRequestMetadataCSgs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    if (one-time initialization token for client != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Log.client);
    v6 = a1;

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v9 = 136315394;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NearbySessions0A17InvitationScannerCyAA0A5GroupCGMd, &_s14NearbySessions0A17InvitationScannerCyAA0A5GroupCGMR);
      v12 = String.init<A>(reflecting:)();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v17);

      *(v9 + 4) = v14;
      *(v9 + 12) = 2112;
      *(v9 + 14) = v6;
      *v10 = a1;
      v15 = v6;
      _os_log_impl(&dword_25B7C4000, v7, v8, "%s scanner is generating metadata %@", v9, 0x16u);
      outlined destroy of NSObject?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x25F86FE20](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x25F86FE20](v11, -1, -1);
      MEMORY[0x25F86FE20](v9, -1, -1);
    }

    v17 = a1;
    v16 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14NearbySessions0A29InvitationJoinRequestMetadataCSgs5Error_pGMd, &_sScCy14NearbySessions0A29InvitationJoinRequestMetadataCSgs5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t closure #2 in NearbyInvitationScanner<>.request(_:displayName:userInfo:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - v11;
  v13 = *(a2 + direct field offset for NearbyInvitationScanner.controller);
  (*(v9 + 16))(&v18 - v11, a1, v8);
  v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a2;
  (*(v9 + 32))(v15 + v14, v12, v8);
  v16 = a3;

  NearbyInvitationsController.requestEndpointConnection(with:pseudonym:response:)(v16, a4, partial apply for closure #1 in closure #2 in NearbyInvitationScanner<>.request(_:displayName:userInfo:), v15);
}

void closure #1 in closure #2 in NearbyInvitationScanner<>.request(_:displayName:userInfo:)(NSObject *a1, void *a2)
{
  if (a1)
  {
    v4 = a1;
    if (one-time initialization token for client != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Log.client);
    v6 = a1;
    v7 = a2;
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412546;
      *(v9 + 4) = v7;
      *v10 = v7;
      *(v9 + 12) = 2112;
      v11 = a1;
      v12 = v7;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 14) = v13;
      v10[1] = v13;
      _os_log_impl(&dword_25B7C4000, oslog, v8, "We could not establish connection to our endpoint %@ with err: %@", v9, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x25F86FE20](v10, -1, -1);
      MEMORY[0x25F86FE20](v9, -1, -1);

      v14 = oslog;
    }

    else
    {

      v14 = a1;
    }
  }

  else
  {
    if (one-time initialization token for client != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Log.client);
    v16 = a2;

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v27 = v21;
      *v19 = 136315394;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NearbySessions0A17InvitationScannerCyAA0A5GroupCGMd, &_s14NearbySessions0A17InvitationScannerCyAA0A5GroupCGMR);
      v22 = String.init<A>(reflecting:)();
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v27);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2112;
      *(v19 + 14) = v16;
      *v20 = v16;
      v25 = v16;
      _os_log_impl(&dword_25B7C4000, v17, v18, "%s scanner is requesting connection to our endpoint %@", v19, 0x16u);
      outlined destroy of NSObject?(v20, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x25F86FE20](v20, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x25F86FE20](v21, -1, -1);
      MEMORY[0x25F86FE20](v19, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t closure #3 in NearbyInvitationScanner<>.request(_:displayName:userInfo:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v20 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14NearbySessions14InvitationBlobCs5Error_pGMd, &_sScCy14NearbySessions14InvitationBlobCs5Error_pGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - v10;
  v19 = *(a2 + direct field offset for NearbyInvitationScanner.controller);
  (*(v8 + 16))(&v19 - v10, a1, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = (v9 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v8 + 32))(v16 + v12, v11, v7);
  *(v16 + v13) = a2;
  *(v16 + v14) = a3;
  v17 = v20;
  *(v16 + v15) = v20;

  NearbyInvitationsController.requestConnection(with:localInvitation:response:)(a3, v17, partial apply for closure #1 in closure #3 in NearbyInvitationScanner<>.request(_:displayName:userInfo:), v16);
}

uint64_t closure #1 in closure #3 in NearbyInvitationScanner<>.request(_:displayName:userInfo:)(void *a1, id a2, uint64_t a3, uint64_t a4, NSObject *a5, void *a6)
{
  if (a2)
  {
    v25 = a2;
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14NearbySessions14InvitationBlobCs5Error_pGMd, &_sScCy14NearbySessions14InvitationBlobCs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    if (!a1)
    {
      if (one-time initialization token for client != -1)
      {
        goto LABEL_9;
      }

      while (1)
      {
        v15 = type metadata accessor for Logger();
        __swift_project_value_buffer(v15, static Log.client);

        v16 = a5;
        a5 = Logger.logObject.getter();
        v17 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(a5, v17))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v25 = v20;
          *v18 = 136315650;

          __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NearbySessions0A17InvitationScannerCyAA0A5GroupCGMd, &_s14NearbySessions0A17InvitationScannerCyAA0A5GroupCGMR);
          v21 = String.init<A>(reflecting:)();
          v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v25);

          *(v18 + 4) = v23;
          *(v18 + 12) = 2112;
          *(v18 + 14) = v16;
          *v19 = v16;
          *(v18 + 22) = 2080;
          v24 = v16;
          *(v18 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(7104878, 0xE300000000000000, &v25);
          _os_log_impl(&dword_25B7C4000, a5, v17, "%s: Failed to get InvitationData from requestConnection(with: %@, error: %s", v18, 0x20u);
          outlined destroy of NSObject?(v19, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          MEMORY[0x25F86FE20](v19, -1, -1);
          swift_arrayDestroy();
          MEMORY[0x25F86FE20](v20, -1, -1);
          MEMORY[0x25F86FE20](v18, -1, -1);

          __break(1u);
        }

        __break(1u);
LABEL_9:
        swift_once();
      }
    }

    v10 = *(a4 + direct field offset for NearbyInvitationScanner.controller);
    v12 = swift_allocObject();
    *(v12 + 16) = a4;
    *(v12 + 24) = a6;
    v13 = a1;

    NearbyInvitationsController.markInvitationUsed(_:response:)(a6, partial apply for closure #1 in closure #1 in closure #3 in NearbyInvitationScanner<>.request(_:displayName:userInfo:), v12);

    v25 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14NearbySessions14InvitationBlobCs5Error_pGMd, &_sScCy14NearbySessions14InvitationBlobCs5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t NearbyInvitationScanner<>.request(_:displayName:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 32) = v11;
  *v11 = v5;
  v11[1] = NearbyInvitationScanner<>.request(_:displayName:userInfo:);

  return NearbyInvitationScanner<>.request(_:displayName:userInfo:)(v5 + 16, a1, a2, a3, a4, a5);
}

void closure #1 in closure #1 in closure #3 in NearbyInvitationScanner<>.request(_:displayName:userInfo:)(NSObject *a1, uint64_t a2, void *a3, const char *a4, const char *a5)
{
  if (a1)
  {
    v8 = a1;
    if (one-time initialization token for client != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Log.client);
    v10 = a1;

    v11 = a3;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v36 = v16;
      *v14 = 136315650;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NearbySessions0A17InvitationScannerCyAA0A5GroupCGMd, &_s14NearbySessions0A17InvitationScannerCyAA0A5GroupCGMR);
      v17 = String.init<A>(reflecting:)();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v36);

      *(v14 + 4) = v19;
      *(v14 + 12) = 2112;
      *(v14 + 14) = v11;
      *v15 = v11;
      *(v14 + 22) = 2112;
      v20 = a1;
      v21 = v11;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 24) = v22;
      v15[1] = v22;
      _os_log_impl(&dword_25B7C4000, v12, v13, a4, v14, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x25F86FE20](v15, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x25F86FE20](v16, -1, -1);
      MEMORY[0x25F86FE20](v14, -1, -1);

      return;
    }

    v34 = a1;
  }

  else
  {
    if (one-time initialization token for client != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Log.client);

    v25 = a3;
    oslog = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v36 = v29;
      *v27 = 136315394;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NearbySessions0A17InvitationScannerCyAA0A5GroupCGMd, &_s14NearbySessions0A17InvitationScannerCyAA0A5GroupCGMR);
      v30 = String.init<A>(reflecting:)();
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v36);

      *(v27 + 4) = v32;
      *(v27 + 12) = 2112;
      *(v27 + 14) = v25;
      *v28 = v25;
      v33 = v25;
      _os_log_impl(&dword_25B7C4000, oslog, v26, a5, v27, 0x16u);
      outlined destroy of NSObject?(v28, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x25F86FE20](v28, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x25F86FE20](v29, -1, -1);
      MEMORY[0x25F86FE20](v27, -1, -1);

      return;
    }

    v34 = oslog;
  }
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  v7 = *a2;
  NSObject.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v5 + 32);
  v10 = v8 & ~v9;
  if ((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      outlined init with copy of NearbyInvitation<NearbyGroup>.PendingMember(*(v5 + 48) + 16 * v10, v18);
      type metadata accessor for NSObject();
      v12 = static NSObject.== infix(_:_:)();
      outlined destroy of NSObject?(v18, &_s14NearbySessions0A10InvitationC13PendingMemberVyAA0A5GroupC_GMd, &_s14NearbySessions0A10InvitationC13PendingMemberVyAA0A5GroupC_GMR);
      if (v12)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    outlined destroy of NSObject?(a2, &_s14NearbySessions0A10InvitationC13PendingMemberVyAA0A5GroupC_GMd, &_s14NearbySessions0A10InvitationC13PendingMemberVyAA0A5GroupC_GMR);
    outlined init with copy of NearbyInvitation<NearbyGroup>.PendingMember(*(v5 + 48) + 16 * v10, a1);
    return 0;
  }

  else
  {
LABEL_5:
    v13 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    outlined init with copy of NearbyInvitation<NearbyGroup>.PendingMember(a2, v18);
    v17 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v18, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v17;
    outlined init with take of NearbyInvitation<NearbyGroup>.PendingMember(a2, a1);
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for AddressableMember();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  lazy protocol witness table accessor for type AddressableMember and conformance AddressableMember(&lazy protocol witness table cache variable for type AddressableMember and conformance AddressableMember);
  v36 = a2;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      lazy protocol witness table accessor for type AddressableMember and conformance AddressableMember(&lazy protocol witness table cache variable for type AddressableMember and conformance AddressableMember);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, void *a2, void (*a3)(void), uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = __CocoaSet.member(for:)();

    if (v17)
    {

      a3(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v36;
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v28 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC14NearbySessions0E13AdvertisementC_Tt1g5Tm(v15, result + 1, a4, a5, a6);
        v29 = *(v28 + 16);
        if (*(v28 + 24) <= v29)
        {
          specialized _NativeSet.resize(capacity:)(v29 + 1, a4, a5);
        }

        v30 = v16;
        specialized _NativeSet._unsafeInsertNew(_:)(v30, v28);

        *v11 = v28;
        *a1 = v30;
        return 1;
      }
    }
  }

  else
  {
    a3(0);
    v19 = NSObject._rawHashValue(seed:)(*(v14 + 40));
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = static NSObject.== infix(_:_:)();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v31 = *(*(v14 + 48) + 8 * v21);
      *a1 = v31;
      v32 = v31;
      return 0;
    }

    else
    {
LABEL_11:
      v25 = *v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *v11;
      v27 = a2;
      specialized _NativeSet.insertNew(_:at:isUnique:)(v27, v21, isUniquelyReferenced_nonNull_native, a4, a5, a6);
      *v11 = v37;
      *a1 = v27;
      return 1;
    }
  }

  return result;
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3, Swift::Int a4, Swift::Int a5)
{
  v10 = *v5;
  v11 = *(*v5 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (a5)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v12 = Hasher._finalize()();
  v13 = v10 + 56;
  v14 = -1 << *(v10 + 32);
  v15 = v12 & ~v14;
  if (((*(v10 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
  {
LABEL_21:
    v23 = *v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *v31;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, a4, a5, v15, isUniquelyReferenced_nonNull_native);
    *v31 = v33;
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    a1[3] = a5;
    return 1;
  }

  v16 = ~v14;
  v30 = v10;
  v17 = *(v10 + 48);
  while (1)
  {
    v18 = (v17 + 32 * v15);
    v20 = v18[2];
    v19 = v18[3];
    v21 = *v18 == a2 && v18[1] == a3;
    if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_7;
    }

    if (v19)
    {
      break;
    }

    if (!a5)
    {
      goto LABEL_22;
    }

LABEL_7:
    v15 = (v15 + 1) & v16;
    if (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  if (!a5)
  {
    goto LABEL_7;
  }

  v22 = v20 == a4 && v19 == a5;
  if (!v22 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_22:

  v26 = (*(v30 + 48) + 32 * v15);
  v27 = v26[1];
  v29 = v26[2];
  v28 = v26[3];
  *a1 = *v26;
  a1[1] = v27;
  a1[2] = v29;
  a1[3] = v28;

  return 0;
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC14NearbySessions0E13AdvertisementC_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v8 = static _SetStorage.convert(_:capacity:)();
    v21 = v8;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      a5(0);
      do
      {
        swift_dynamicCast();
        v15 = *(v8 + 16);
        if (*(v8 + 24) <= v15)
        {
          specialized _NativeSet.resize(capacity:)(v15 + 1, a3, a4);
        }

        v8 = v21;
        result = NSObject._rawHashValue(seed:)(*(v21 + 40));
        v10 = v21 + 56;
        v11 = -1 << *(v21 + 32);
        v12 = result & ~v11;
        v13 = v12 >> 6;
        if (((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6))) != 0)
        {
          v14 = __clz(__rbit64((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v16 = 0;
          v17 = (63 - v11) >> 6;
          do
          {
            if (++v13 == v17 && (v16 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v18 = v13 == v17;
            if (v13 == v17)
            {
              v13 = 0;
            }

            v16 |= v18;
            v19 = *(v10 + 8 * v13);
          }

          while (v19 == -1);
          v14 = __clz(__rbit64(~v19)) + (v13 << 6);
        }

        *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        *(*(v21 + 48) + 8 * v14) = v20;
        ++*(v21 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v8;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy14NearbySessions0C10InvitationC13PendingMemberVyAC0C5GroupC_GGMd, &_ss11_SetStorageCy14NearbySessions0C10InvitationC13PendingMemberVyAC0C5GroupC_GGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      outlined init with take of NearbyInvitation<NearbyGroup>.PendingMember(*(v3 + 48) + 16 * (v15 | (v7 << 6)), v27);
      v18 = *(v6 + 40);
      Hasher.init(_seed:)();
      NSObject.hash(into:)();
      result = Hasher._finalize()();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = outlined init with take of NearbyInvitation<NearbyGroup>.PendingMember(v27, *(v6 + 48) + 16 * v14);
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

{
  v2 = v1;
  v41 = type metadata accessor for AddressableMember();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15GroupActivities17AddressableMemberVGMd, &_ss11_SetStorageCy15GroupActivities17AddressableMemberVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      lazy protocol witness table accessor for type AddressableMember and conformance AddressableMember(&lazy protocol witness table cache variable for type AddressableMember and conformance AddressableMember);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy14NearbySessions0C5GroupC6MemberVGMd, &_ss11_SetStorageCy14NearbySessions0C5GroupC6MemberVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v34 = v2;
    v35 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 32 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      v23 = v19[3];
      v24 = *(v6 + 40);
      Hasher.init(_seed:)();
      v36 = v21;
      String.hash(into:)();
      if (v23)
      {
        Hasher._combine(_:)(1u);
        v25 = v22;
        String.hash(into:)();
      }

      else
      {
        v25 = v22;
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v26 = -1 << *(v6 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v13 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v13 + 8 * v28);
          if (v32 != -1)
          {
            v14 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v27) & ~*(v13 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 32 * v14);
      *v15 = v20;
      v15[1] = v36;
      v15[2] = v25;
      v15[3] = v23;
      ++*(v6 + 16);
      v3 = v35;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v3 + 32);
    if (v33 >= 64)
    {
      bzero(v8, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v33;
    }

    v2 = v34;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v8 + 40));
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero((v5 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, uint64_t a2)
{
  NSObject._rawHashValue(seed:)(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t *a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  Hasher.init(_seed:)();
  v11 = *a1;
  NSObject.hash(into:)();
  v12 = Hasher._finalize()();
  v13 = -1 << *(v9 + 32);
  a2 = v12 & ~v13;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v14 = ~v13;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NearbySessions0A10InvitationC13PendingMemberVyAA0A5GroupC_GMd, &_s14NearbySessions0A10InvitationC13PendingMemberVyAA0A5GroupC_GMR);
      outlined init with copy of NearbyInvitation<NearbyGroup>.PendingMember(*(v9 + 48) + 16 * a2, v22);
      type metadata accessor for NSObject();
      v15 = static NSObject.== infix(_:_:)();
      outlined destroy of NSObject?(v22, &_s14NearbySessions0A10InvitationC13PendingMemberVyAA0A5GroupC_GMd, &_s14NearbySessions0A10InvitationC13PendingMemberVyAA0A5GroupC_GMR);
      if (v15)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v14;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v16 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = outlined init with take of NearbyInvitation<NearbyGroup>.PendingMember(a1, *(v16 + 48) + 16 * a2);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = type metadata accessor for AddressableMember();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  lazy protocol witness table accessor for type AddressableMember and conformance AddressableMember(&lazy protocol witness table cache variable for type AddressableMember and conformance AddressableMember);
  v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      lazy protocol witness table accessor for type AddressableMember and conformance AddressableMember(&lazy protocol witness table cache variable for type AddressableMember and conformance AddressableMember);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}