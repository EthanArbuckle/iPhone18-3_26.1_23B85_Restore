uint64_t type metadata accessor for LockedNotesWelcomeViewController()
{
  result = qword_1EDE34190;
  if (!qword_1EDE34190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D4175688(uint64_t a1)
{
  result = sub_1D41756B0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D41756B0()
{
  result = qword_1EDE34170;
  if (!qword_1EDE34170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE34170);
  }

  return result;
}

uint64_t sub_1D4175750()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for LockedNotesSwitchViewController()
{
  result = qword_1EDE340D8;
  if (!qword_1EDE340D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D417586C(uint64_t a1)
{
  result = sub_1D4175894();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D4175894()
{
  result = qword_1EDE34178;
  if (!qword_1EDE34178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE34178);
  }

  return result;
}

unint64_t sub_1D4175908(uint64_t a1)
{
  result = sub_1D4175930();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D4175930()
{
  result = qword_1EDE34168;
  if (!qword_1EDE34168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE34168);
  }

  return result;
}

uint64_t type metadata accessor for LockedNotesLearnMoreViewController()
{
  result = qword_1EDE34180;
  if (!qword_1EDE34180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id ICCollaborationAnalyticsTrackerInternal.init(delegate:)(uint64_t a1)
{
  v12 = a1;
  ObjectType = swift_getObjectType();
  v10 = sub_1D441A2B4();
  v2 = *(v10 - 8);
  MEMORY[0x1EEE9AC00]();
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D441A254();
  MEMORY[0x1EEE9AC00]();
  sub_1D4419484();
  MEMORY[0x1EEE9AC00]();
  v5 = MEMORY[0x1E69E7CC8];
  *&v1[OBJC_IVAR___ICCollaborationAnalyticsTrackerInternal_trackedShareMetrics] = MEMORY[0x1E69E7CC8];
  *&v1[OBJC_IVAR___ICCollaborationAnalyticsTrackerInternal_trackedShareMetricsObservers] = v5;
  v9 = OBJC_IVAR___ICCollaborationAnalyticsTrackerInternal_shareAnalyticsQueue;
  v6 = sub_1D41766C0(0, &qword_1EDE33D70);
  v8[1] = "butedStringMarkedTextFromClient";
  v8[2] = v6;
  sub_1D4419464();
  v14 = MEMORY[0x1E69E7CC0];
  sub_1D4176708(&qword_1EDE33C90, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9A38);
  sub_1D417645C(qword_1EDE33CA8, &qword_1EC7C9A38);
  sub_1D441A814();
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8090], v10);
  *&v1[v9] = sub_1D441A314();
  *&v1[OBJC_IVAR___ICCollaborationAnalyticsTrackerInternal_delegate] = v12;
  v13.receiver = v1;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_init);
}

uint64_t sub_1D417645C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D41766C0(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1D4176708(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1D41767B4()
{
  result = [objc_allocWithZone(ICPaperSearchIndexer) init];
  qword_1EDE32708 = result;
  return result;
}

uint64_t sub_1D41769C4(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D4176A24(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D4177CAC;

  return sub_1D4176ADC(a1, v4);
}

uint64_t sub_1D4176ADC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D41776BC;

  return v6(a1);
}

uint64_t sub_1D4176BD4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1D41775C8;

  return v7();
}

uint64_t sub_1D4176CBC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D4177CAC;

  return sub_1D4176D7C(v2, v3, v4);
}

uint64_t sub_1D4176D7C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1D4177CAC;

  return v6();
}

uint64_t sub_1D4176E64()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D4177CAC;

  return sub_1D4176F18(v2, v3, v4);
}

uint64_t sub_1D4176F18(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1D4177980;

  return sub_1D4176FEC(v6);
}

uint64_t sub_1D417700C()
{
  v1 = v0[3];
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9EB0);
  *v4 = v0;
  v4[1] = sub_1D41777B4;

  return MEMORY[0x1EEE233F8](v0 + 2, sub_1D4318EB8, v2, v5);
}

uint64_t sub_1D417710C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D4177148@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAE70);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D4437270;
  sub_1D41766C0(0, &qword_1EDE32920);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v4 + 32) = [ObjCClassFromMetadata predicateForVisibleObjects];
  v6 = objc_opt_self();
  *(v4 + 40) = [v6 predicateForAllPaperKitBackedAttachments];
  *(v4 + 48) = [v6 predicateForPasswordProtected_];
  *(v4 + 56) = [v6 predicateForOutdatedOrMissingHandwritingSummary];
  sub_1D41766C0(0, &qword_1EDE329F0);
  v7 = sub_1D4419E24();

  v8 = [objc_opt_self() andPredicateWithSubpredicates_];

  *a2 = MEMORY[0x1E69E7CD0];
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1D4318B74;
  *(v10 + 24) = v9;
  aBlock[4] = sub_1D4318B7C;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D4311340;
  aBlock[3] = &block_descriptor_156;
  v11 = _Block_copy(aBlock);
  v12 = v8;

  [ObjCClassFromMetadata ic:v12 enumerateObjectsMatchingPredicate:0 sortDescriptors:0 relationshipKeyPathsForPrefetching:a1 context:10 batchSize:0 saveAfterBatch:v11 usingBlock:?];

  _Block_release(v11);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D41775C8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D41776BC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_1D41777B4()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](sub_1D41778F0, 0, 0);
  }
}

uint64_t sub_1D41778F0()
{
  v1 = *(v0 + 16);
  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1D441A8C4();
  }

  else
  {
    v2 = *(v1 + 16);
  }

  v3 = *(v0 + 8);

  return v3(v2 > 0);
}

uint64_t sub_1D4177980(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  if (v4)
  {
    v8 = *(v3 + 32);
    v8[2](v8, a1 & 1);
    _Block_release(v8);
  }

  v9 = *(v7 + 8);

  return v9();
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_1_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_0_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_2_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_0_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_0_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t objectdestroy_102Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroy_74Tm()
{
  v1 = sub_1D4417494();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

void sub_1D41791B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D417977C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1D417A7A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D417A7EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D417A834(unint64_t *a1, void (*a2)(uint64_t))
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

char *OutlineController.init(textStorage:collapsedUUIDs:asynchronous:)(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR___OutlineController__collapsedUUIDs;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9968);
  swift_allocObject();
  v6 = MEMORY[0x1E69E7CD0];
  *&v3[v5] = sub_1D42DB840(MEMORY[0x1E69E7CD0], 0xD000000000000032, 0x80000001D444C930);
  v7 = OBJC_IVAR___OutlineController__interactedUUIDs;
  swift_allocObject();
  *&v3[v7] = sub_1D42DB840(v6, 0xD000000000000033, 0x80000001D444C970);
  v8 = OBJC_IVAR___OutlineController_isAsynchronous;
  v3[OBJC_IVAR___OutlineController_isAsynchronous] = 0;
  v9 = OBJC_IVAR___OutlineController__index;
  v10 = MEMORY[0x1E69E7CC0];
  v11 = sub_1D417AEAC(MEMORY[0x1E69E7CC0]);
  v12 = sub_1D417AEAC(v10);
  v13 = sub_1D417B09C(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9978);
  swift_allocObject();
  *&v4[v9] = sub_1D42DBACC(v11, v12, v13, MEMORY[0x1E69E7CD0], 0xD00000000000002ELL, 0x80000001D444C9B0);
  v14 = OBJC_IVAR___OutlineController_cache;
  type metadata accessor for OutlineController.Cache();
  swift_allocObject();
  *&v4[v14] = sub_1D417B2B8();
  v4[OBJC_IVAR___OutlineController_isPerformingMerge] = 0;
  *&v4[OBJC_IVAR___OutlineController_selectorDelayer] = 0;
  *&v4[OBJC_IVAR___OutlineController____lazy_storage___updateQueue] = 0;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();

  swift_allocObject();
  *&v4[v5] = sub_1D42DB840(a2, 0xD000000000000032, 0x80000001D444C930);
  swift_endAccess();

  swift_beginAccess();
  v4[v8] = a3;
  v36.receiver = v4;
  v36.super_class = type metadata accessor for OutlineController();
  v15 = objc_msgSendSuper2(&v36, sel_init);
  v16 = objc_allocWithZone(MEMORY[0x1E69B7AB0]);
  v17 = v15;
  v18 = [v16 initWithTarget:v17 selector:sel_update delay:1 waitToFireUntilRequestsStop:1 callOnMainThread:0.1];
  v19 = *&v17[OBJC_IVAR___OutlineController_selectorDelayer];
  *&v17[OBJC_IVAR___OutlineController_selectorDelayer] = v18;

  v20 = OBJC_IVAR___OutlineController__collapsedUUIDs;
  swift_beginAccess();
  v21 = *&v17[v20];
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  v23 = *(v21 + 48);
  *(v21 + 48) = sub_1D418126C;
  *(v21 + 56) = v22;

  sub_1D417BCA0(v23);

  v24 = objc_opt_self();
  v25 = [v24 defaultCenter];
  [v25 addObserver:v17 selector:sel_textStorageDidProcessEndEditingWithNotification_ name:*MEMORY[0x1E69DB738] object:a1];

  v26 = [v24 defaultCenter];
  [v26 addObserver:v17 selector:sel_mergingWillBeginWithNotification_ name:*MEMORY[0x1E69B7500] object:0];

  v27 = [v24 defaultCenter];
  [v27 addObserver:v17 selector:sel_mergingDidEndWithNotification_ name:*MEMORY[0x1E69B74F8] object:0];

  v28 = swift_allocObject();
  *(v28 + 16) = v17;
  aBlock[4] = sub_1D417BF28;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D417BEE4;
  aBlock[3] = &block_descriptor_0;
  v29 = _Block_copy(aBlock);
  v30 = v17;

  performBlockOnMainThread();
  _Block_release(v29);

  return v30;
}

uint64_t sub_1D417ADA4()
{
  MEMORY[0x1DA6D8750](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D417ADF8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D417AEAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9A60);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00]();
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9860);
    v7 = sub_1D441AC24();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D417CF94(v9, v5, &qword_1EC7C9A60);
      result = sub_1D417DAA4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1D4417494();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = (v7[7] + 16 * v13);
      v17 = *(v8 + 1);
      *v16 = *v8;
      v16[1] = v17;
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D417B09C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9A58);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00]();
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9868);
    v7 = sub_1D441AC24();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D417CF94(v9, v5, &qword_1EC7C9A58);
      result = sub_1D417DAA4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1D4417494();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1D417B2B8()
{
  v1 = v0;
  v9 = sub_1D441A2B4();
  v2 = *(v9 - 8);
  MEMORY[0x1EEE9AC00]();
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D441A254();
  MEMORY[0x1EEE9AC00]();
  sub_1D4419484();
  MEMORY[0x1EEE9AC00]();
  v5 = sub_1D41766C0(0, &qword_1EDE33D70);
  v8[0] = "NotesUI.OutlineUpdateOperation";
  v8[1] = v5;
  sub_1D4419464();
  v10 = MEMORY[0x1E69E7CC0];
  sub_1D417A7A4(&qword_1EDE33C90, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9A38);
  sub_1D417645C(qword_1EDE33CA8, &qword_1EC7C9A38);
  sub_1D441A814();
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8090], v9);
  v0[2] = sub_1D441A314();
  v6 = MEMORY[0x1E69E7CC0];
  v1[3] = sub_1D417B55C(MEMORY[0x1E69E7CC0]);
  v1[4] = sub_1D417B744(v6);
  v1[5] = sub_1D417B958(v6);
  return v1;
}

unint64_t sub_1D417B55C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9A50);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00]();
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9848);
    v7 = sub_1D441AC24();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D417CF94(v9, v5, &qword_1EC7C9A50);
      result = sub_1D417DAA4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1D4417494();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + v13) = v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D417B744(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9A48);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00]();
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9838);
    v7 = sub_1D441AC24();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D417CF94(v9, v5, &qword_1EC7C9A48);
      result = sub_1D417DAA4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1D4417494();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA4F0);
      result = sub_1D417E588(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D417B958(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9A40);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00]();
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9840);
    v7 = sub_1D441AC24();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D417CF94(v9, v5, &qword_1EC7C9A40);
      result = sub_1D417DAA4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1D4417494();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 16 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1D417BB54(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

id *OutlineController.Atomic.deinit()
{
  v1 = *v0;

  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 13));
  sub_1D417BCA0(*(v0 + *(*v0 + 14)));
  return v0;
}

uint64_t OutlineController.Atomic.__deallocating_deinit()
{
  OutlineController.Atomic.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D417BCA0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D417BEE4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_1D417BF4C()
{
  v1 = v0;
  v2 = sub_1D44181B4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE33B88 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_1EDE33B90);
  (*(v3 + 16))(v5, v6, v2);
  v7 = swift_allocObject();
  *(v7 + 16) = 2;
  if ((sub_1D417C748(v7) & 1) == 0)
  {
    v8 = sub_1D441A174();
    v9 = sub_1D44181A4();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v48 = v0;
      v11 = v10;
      v47 = swift_slowAlloc();
      v54[0] = v47;
      *v11 = 136315650;
      v12 = sub_1D441A9E4();
      v14 = sub_1D42E9410(v12, v13, v54);

      *(v11 + 4) = v14;
      *(v11 + 12) = 2048;
      *(v11 + 14) = 626;
      *(v11 + 22) = 2080;
      v51 = 0;
      v52 = 0xE000000000000000;
      sub_1D441A9C4();

      v51 = 0xD00000000000002FLL;
      v52 = 0x80000001D444CF90;
      v15 = [objc_opt_self() currentThread];
      v16 = [v15 description];
      v17 = sub_1D4419C54();
      v45 = v8;
      v18 = v17;
      v46 = v9;
      v20 = v19;

      MEMORY[0x1DA6D5730](v18, v20);

      MEMORY[0x1DA6D5730](41, 0xE100000000000000);
      v21 = sub_1D42E9410(v51, v52, v54);

      *(v11 + 24) = v21;
      v22 = v46;
      _os_log_impl(&dword_1D4171000, v46, v45, "Failed assertion at %s:%lu: %s", v11, 0x20u);
      v23 = v47;
      swift_arrayDestroy();
      MEMORY[0x1DA6D8690](v23, -1, -1);
      v24 = v11;
      v1 = v48;
      MEMORY[0x1DA6D8690](v24, -1, -1);
    }

    else
    {
    }
  }

  (*(v3 + 8))(v5, v2);

  if ([v1 ic_isDeallocating])
  {
    v25 = sub_1D44181A4();
    v26 = sub_1D441A164();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      v28 = "Stopping outline update as controller is deallocating";
LABEL_18:
      _os_log_impl(&dword_1D4171000, v25, v26, v28, v27, 2u);
      MEMORY[0x1DA6D8690](v27, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v30 = Strong;
      v31 = [Strong attributedString];
      [v31 copy];

      sub_1D441A804();
      swift_unknownObjectRelease();
      sub_1D41766C0(0, &qword_1EDE33A28);
      if (!swift_dynamicCast())
      {

        return;
      }

      v32 = v49;
      v33 = swift_allocObject();
      *(v33 + 16) = v1;
      updated = type metadata accessor for OutlineUpdateOperation();
      v35 = objc_allocWithZone(updated);
      *&v35[OBJC_IVAR____TtC7NotesUIP33_0937A1AF2A2827E2462B0E48FD7819BC22OutlineUpdateOperation_attributedString] = v32;
      *&v35[OBJC_IVAR____TtC7NotesUIP33_0937A1AF2A2827E2462B0E48FD7819BC22OutlineUpdateOperation_controller] = v1;
      v36 = &v35[OBJC_IVAR____TtC7NotesUIP33_0937A1AF2A2827E2462B0E48FD7819BC22OutlineUpdateOperation_updateBlock];
      *v36 = sub_1D42ED588;
      v36[1] = v33;
      v50.receiver = v35;
      v50.super_class = updated;
      v37 = v1;
      v25 = v32;
      v38 = objc_msgSendSuper2(&v50, sel_init);
      swift_beginAccess();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9948);
      sub_1D441A2E4();

      v39 = *(v51 + 16);

      if ((!v39 || (, sub_1D441A2E4(), , v40 = v53, , , , v41 = *(v40 + 16), , v41)) && (v42 = OBJC_IVAR___OutlineController_isAsynchronous, swift_beginAccess(), v37[v42] == 1))
      {
        v43 = sub_1D417C854();
        [v43 addOperation_];
      }

      else
      {
        [v38 start];
      }
    }

    else
    {
      v25 = sub_1D44181A4();
      v26 = sub_1D441A164();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        v28 = "Unable to update outline controller due to missing text storage";
        goto LABEL_18;
      }
    }
  }
}

uint64_t sub_1D417C614()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D417C660()
{
  v0 = sub_1D44181B4();
  __swift_allocate_value_buffer(v0, qword_1EDE33B90);
  __swift_project_value_buffer(v0, qword_1EDE33B90);
  return sub_1D4418194();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1D417C748(uint64_t a1)
{
  v1 = (a1 + 16);
  v2 = *(a1 + 16);
  if (v2 == 2)
  {
    LOBYTE(v2) = [objc_opt_self() isMainThread];
    swift_beginAccess();
    *v1 = v2;
  }

  return v2 & 1;
}

uint64_t sub_1D417C7B4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D417C804@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 40);
}

id sub_1D417C854()
{
  v1 = OBJC_IVAR___OutlineController____lazy_storage___updateQueue;
  v2 = *(v0 + OBJC_IVAR___OutlineController____lazy_storage___updateQueue);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___OutlineController____lazy_storage___updateQueue);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E696ADC8]) init];
    [v4 setMaxConcurrentOperationCount_];
    [v4 setQualityOfService_];
    v5 = sub_1D4419C14();
    [v4 setName_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_1D417C928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);

  v9(a2, a3, a4, a5);
}

uint64_t sub_1D417C9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_1D417CF84(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_1D41769C4(v13, &qword_1EC7C9720);
}

void sub_1D417CD2C(void *a1)
{
  if ([a1 object])
  {
    sub_1D441A804();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v8 = v13;
  v9 = v14;
  if (*(&v14 + 1))
  {
    sub_1D41766C0(0, &qword_1EDE33C98);
    if (swift_dynamicCast())
    {
      v2 = v12;
      if ([v12 isEditingTemporaryAttributes])
      {
      }

      else
      {
        v3 = OBJC_IVAR___OutlineController_isAsynchronous;
        swift_beginAccess();
        if (v1[v3] == 1)
        {
          v4 = *&v1[OBJC_IVAR___OutlineController_selectorDelayer];
          [v4 requestFire];
        }

        else
        {
          v5 = swift_allocObject();
          *(v5 + 16) = v1;
          v10 = sub_1D42EDB4C;
          v11 = v5;
          *&v8 = MEMORY[0x1E69E9820];
          *(&v8 + 1) = 1107296256;
          *&v9 = sub_1D417BEE4;
          *(&v9 + 1) = &block_descriptor_142;
          v6 = _Block_copy(&v8);
          v7 = v1;

          performBlockOnMainThread();

          _Block_release(v6);
        }
      }
    }
  }

  else
  {
    sub_1D41769C4(&v8, &qword_1EC7C9720);
  }
}

id sub_1D417CF0C()
{
  v0 = sub_1D4419C14();

  return v0;
}

_OWORD *sub_1D417CF84(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1D417CF94(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D417CFFC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1D4417494();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00]();
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1D417D2DC(&qword_1EDE33D40, MEMORY[0x1E69695A8]);
  v33 = a2;
  v11 = sub_1D4419B84();
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
      sub_1D417D2DC(&unk_1EDE33D30, MEMORY[0x1E69695A8]);
      v21 = sub_1D4419BE4();
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
    sub_1D417D324(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1D417D2DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D417D324(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_1D4417494();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00]();
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D417F7E4();
  }

  else
  {
    if (v11 > v10)
    {
      sub_1D43CA410(MEMORY[0x1E69695A8], &qword_1EC7CB5F0);
      goto LABEL_12;
    }

    sub_1D417D5EC();
  }

  v12 = *v3;
  sub_1D417D2DC(&qword_1EDE33D40, MEMORY[0x1E69695A8]);
  v13 = sub_1D4419B84();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1D417D2DC(&unk_1EDE33D30, MEMORY[0x1E69695A8]);
      v21 = sub_1D4419BE4();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D441ADD4();
  __break(1u);
  return result;
}

uint64_t sub_1D417D5EC()
{
  v1 = v0;
  v32 = sub_1D4417494();
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00]();
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB5F0);
  v6 = sub_1D441A974();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_1D417D2DC(&qword_1EDE33D40, MEMORY[0x1E69695A8]);
      result = sub_1D4419B84();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_1D417D908(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D4417494();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1D417DAA4(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      *(v20[7] + 8 * v14) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v19 >= result && (a3 & 1) == 0)
  {
    result = sub_1D42D48F4();
    goto LABEL_7;
  }

  sub_1D417DB78(result, a3 & 1);
  result = sub_1D417DAA4(a2);
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_1D441ADE4();
    __break(1u);
    return result;
  }

  v14 = result;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_1D417DF38(v14, v11, a1, v20);
}

unint64_t sub_1D417DAA4(uint64_t a1)
{
  sub_1D4417494();
  v2 = MEMORY[0x1E69695A8];
  sub_1D417DFF0(&qword_1EDE33D40, MEMORY[0x1E69695A8]);
  v3 = sub_1D4419B84();
  return sub_1D417E0C8(a1, v3, MEMORY[0x1E69695A8], &unk_1EDE33D30, v2, MEMORY[0x1E69695C8]);
}

uint64_t sub_1D417DB78(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1D4417494();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9868);
  v40 = a2;
  result = sub_1D441AC04();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v42 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v5);
      }

      else
      {
        (*v37)(v43, v26, v5);
      }

      v27 = *(*(v9 + 56) + 8 * v24);
      sub_1D417DFF0(&qword_1EDE33D40, MEMORY[0x1E69695A8]);
      result = sub_1D4419B84();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v25 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v27;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
      v16 = v42;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1D417DF38(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1D4417494();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
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

uint64_t sub_1D417DFF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D417E038(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D417E080(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D417E0C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00]();
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_1D417DFF0(v23, v24);
      v19 = sub_1D4419BE4();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t sub_1D417E268(unint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = result;
  v9 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = __OFSUB__(1, v9);
  v11 = 1 - v9;
  if (v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v7 + v11;
  if (__OFADD__(v7, v11))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v12 > v6[3] >> 1)
  {
    if (v7 <= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v7;
    }

    v6 = sub_1D417E344(isUniquelyReferenced_nonNull_native, v16, 1, v6);
    *v4 = v6;
  }

  result = sub_1D417E490(v8, a2, 1, a3, a4);
  *v4 = v6;
  return result;
}

void *sub_1D417E344(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB900);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9C08);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1D417E490(unint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = v11 + 32 + 16 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9C08);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = v12 + 16 * a3;
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    *(v12 + 8) = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t sub_1D417E588(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA4F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

size_t sub_1D417E620(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void sub_1D417E7FC(uint64_t a1)
{
  v2 = sub_1D4417494();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v25 - v7;
  v9 = sub_1D417EAEC();
  v10 = sub_1D417EAF4(&v30, a1, 0, 1, v9);
  v11 = *(a1 + 16);
  v12 = v30;
  if (v30 != v11)
  {
    if ((v30 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v11 >= v30)
    {
      v28 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v27 = a1 + v28;
      sub_1D43FCEE4(a1, a1 + v28, 0, (2 * v30) | 1);
      v31 = v10;
      v32 = v13;
      if (*(a1 + 16) >= v11)
      {
        v25[1] = v10;
        v25[2] = a1;
        v16 = *(v3 + 16);
        v15 = v3 + 16;
        v14 = v16;
        v29 = *(v15 + 56);
        v17 = (v15 - 8);

        v26 = v11;
        while (1)
        {
          v18 = v15;
          v14(v8, v27 + v29 * v12, v2);
          v19 = v31;
          v20 = v32 + v28;
          v21 = *(v32 + 16);
          if (v31)
          {

            sub_1D42EA19C(v8, v20, v21, (v19 + 16), v19 + 32);
            v23 = v22;

            if ((v23 & 1) == 0)
            {
              goto LABEL_7;
            }
          }

          else if (v21)
          {
            do
            {
              v14(v6, v20, v2);
              sub_1D417A7A4(&unk_1EDE33D30, MEMORY[0x1E69695A8]);
              v24 = sub_1D4419BE4();
              (*v17)(v6, v2);
              if (v24)
              {
                goto LABEL_7;
              }

              v20 += v29;
            }

            while (--v21);
          }

          sub_1D42E9B80(v8);
LABEL_7:
          ++v12;
          (*v17)(v8, v2);
          v15 = v18;
          if (v12 == v26)
          {

            return;
          }
        }
      }

LABEL_19:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_19;
  }
}

uint64_t sub_1D417EAF4(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = *(a2 + 16);
  if (a4)
  {
    v9 = 0;
  }

  else
  {
    v9 = a3;
  }

  v10 = MEMORY[0x1DA6D39A0](*(a2 + 16));
  if (v10 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (v11 <= a5)
  {
    v12 = a5;
  }

  else
  {
    v12 = v11;
  }

  if (v12 > 4)
  {
    v14 = MEMORY[0x1DA6D39B0]();
    v15 = *(sub_1D4417494() - 8);
    sub_1D42EA3EC(a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v8, (v14 + 16), v14 + 32);
    *a1 = v16;
    return v14;
  }

  else if (v8 >= 2)
  {
    v17 = *(sub_1D4417494() - 8);
    v18 = sub_1D417F4F8(a2 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), v8);
    result = 0;
    *a1 = v18;
  }

  else
  {
    result = 0;
    *a1 = v8;
  }

  return result;
}

uint64_t sub_1D417EC48(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1D4417494();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9860);
  v43 = a2;
  result = sub_1D441AC04();
  v10 = result;
  if (*(v8 + 16))
  {
    v48 = v5;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v39 = v2;
    v40 = (v6 + 16);
    v41 = v8;
    v42 = v6;
    v45 = (v6 + 32);
    v17 = result + 64;
    v18 = v44;
    while (v15)
    {
      v21 = __clz(__rbit64(v15));
      v22 = (v15 - 1) & v15;
LABEL_15:
      v25 = v21 | (v11 << 6);
      v26 = *(v8 + 48) + *(v42 + 72) * v25;
      v46 = *(v42 + 72);
      v47 = v22;
      if (v43)
      {
        (*v45)(v18, v26, v48);
        v27 = (*(v8 + 56) + 16 * v25);
        v29 = *v27;
        v28 = v27[1];
      }

      else
      {
        (*v40)(v18, v26, v48);
        v30 = (*(v8 + 56) + 16 * v25);
        v29 = *v30;
        v28 = v30[1];
      }

      sub_1D417DFF0(&qword_1EDE33D40, MEMORY[0x1E69695A8]);
      result = sub_1D4419B84();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v18 = v44;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v19 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v18 = v44;
LABEL_7:
      *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v45)(*(v10 + 48) + v46 * v19, v18, v48);
      v20 = (*(v10 + 56) + 16 * v19);
      *v20 = v29;
      v20[1] = v28;
      ++*(v10 + 16);
      v8 = v41;
      v15 = v47;
    }

    v23 = v11;
    while (1)
    {
      v11 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v24 = v12[v11];
      ++v23;
      if (v24)
      {
        v21 = __clz(__rbit64(v24));
        v22 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v38 = 1 << *(v8 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

size_t sub_1D417F034(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

size_t sub_1D417F210(size_t a1, int64_t a2, char a3)
{
  result = sub_1D417F034(a1, a2, a3, *v3, &qword_1EC7C9A20, &unk_1D4436108, MEMORY[0x1E69695A8]);
  *v3 = result;
  return result;
}

uint64_t sub_1D417F254(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v28 = a1;
  v9 = sub_1D4417494();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_1D417DAA4(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      sub_1D42D4664();
      goto LABEL_9;
    }

    sub_1D417EC48(v18, a4 & 1);
    v21 = sub_1D417DAA4(a3);
    if ((v19 & 1) == (v22 & 1))
    {
      v15 = v21;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_1D441ADE4();
    __break(1u);
    return result;
  }

LABEL_9:
  v23 = v28;
  v24 = *v5;
  if (v19)
  {
    v25 = (v24[7] + 16 * v15);
    *v25 = v28;
    v25[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v12, a3, v9);
    return sub_1D417F438(v15, v12, v23, a2, v24);
  }
}

uint64_t sub_1D417F438(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_1D4417494();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

size_t sub_1D417F4F8(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D4417494();
  v6 = *(v5 - 8);
  v7 = (MEMORY[0x1EEE9AC00])();
  v26 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v22 - v9;
  v33 = MEMORY[0x1E69E7CC0];
  result = sub_1D417F210(0, a2 & ~(a2 >> 63), 0);
  v12 = v33;
  if (!a2)
  {
LABEL_11:

    return a2;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v24 = a2;
    v25 = v2;
    v13 = 0;
    v29 = (v6 + 8);
    v22[1] = v6 + 32;
    v23 = a1;
    v14 = *(v6 + 16);
    v15 = *(v6 + 72);
    v30 = v14;
    v31 = v6 + 16;
    do
    {
      v27 = v13;
      v28 = v13 + 1;
      v14(v10, (a1 + v15 * v13), v5);
      v16 = *(v12 + 16) + 1;
      v32 = v12;
      while (--v16)
      {
        sub_1D417A7A4(&unk_1EDE33D30, MEMORY[0x1E69695A8]);
        v12 += v15;
        if (sub_1D4419BE4())
        {
          (*v29)(v10, v5);
          a2 = v27;
          goto LABEL_11;
        }
      }

      v17 = v26;
      v30(v26, v10, v5);
      v33 = v32;
      v19 = *(v32 + 16);
      v18 = *(v32 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1D417F210(v18 > 1, v19 + 1, 1);
        v17 = v26;
      }

      (*(v6 + 8))(v10, v5);
      v20 = v33;
      *(v33 + 16) = v19 + 1;
      v21 = v17;
      v12 = v20;
      (*(v6 + 32))(v20 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + v19 * v15, v21, v5);
      a1 = v23;
      a2 = v24;
      v13 = v28;
      v14 = v30;
    }

    while (v28 != v24);
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D417F7E4()
{
  v1 = v0;
  v35 = sub_1D4417494();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00]();
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB5F0);
  result = sub_1D441A974();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_1D417D2DC(&qword_1EDE33D40, MEMORY[0x1E69695A8]);
      result = sub_1D4419B84();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
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
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_1D417FB40(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D4419444();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = 0;
  v18 = 0;
  sub_1D4419434();
  v12 = &v18;
  v13 = v2;
  v14 = a1;
  v15 = a2;
  v16 = &v17;
  sub_1D441A2D4();
  (*(v6 + 8))(v8, v5);
  swift_beginAccess();
  v9 = *(v2 + 48);
  if (v9)
  {

    v9(&v18, &v17);
    sub_1D417BCA0(v9);
  }
}

uint64_t sub_1D417FDC4(void *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, void *a5)
{
  swift_beginAccess();
  *a1 = *(a2 + 40);

  swift_beginAccess();
  a3(a2 + 40);
  swift_endAccess();
  *a5 = *(a2 + 40);
}

uint64_t sub_1D417FE80(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    bzero(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_1D4180044((v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_1D42E9AF0(v11, v6, a2, a1);

    MEMORY[0x1DA6D8690](v11, -1, -1);
  }

  return v9;
}

uint64_t sub_1D4180044(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = a2;
  v66 = a1;
  v6 = sub_1D4417494();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v75 = (v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v61 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v76 = (v61 - v14);
  result = MEMORY[0x1EEE9AC00](v13);
  v65 = v61 - v16;
  v17 = *(a3 + 16);
  v18 = *(a4 + 16);
  v77 = v7 + 16;
  v73 = a4;
  v74 = a3;
  v69 = v7;
  if (v18 >= v17)
  {
    v42 = 0;
    v43 = *(a3 + 56);
    v64 = a3 + 56;
    v44 = 1 << *(a3 + 32);
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    else
    {
      v45 = -1;
    }

    v46 = v45 & v43;
    v47 = (v44 + 63) >> 6;
    v72 = a4 + 56;
    v76 = (v7 + 8);
    j = v47;
    v68 = 0;
    if (v46)
    {
      goto LABEL_30;
    }

LABEL_31:
    v49 = v42;
    while (1)
    {
      v42 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      if (v42 >= v47)
      {
LABEL_44:

        return sub_1D4180E4C(v66, v62, v68, a3);
      }

      v50 = *(v64 + 8 * v42);
      ++v49;
      if (v50)
      {
        v48 = __clz(__rbit64(v50));
        for (i = ((v50 - 1) & v50); ; i = ((v46 - 1) & v46))
        {
          v51 = v48 | (v42 << 6);
          v52 = *(a3 + 48);
          v53 = *(v7 + 72);
          v70 = v51;
          v54 = *(v7 + 16);
          v54(v75, v52 + v53 * v51, v6);
          sub_1D4183E58(&qword_1EDE33D40, MEMORY[0x1E69695A8]);
          v55 = sub_1D4419B84();
          v56 = -1 << *(a4 + 32);
          v57 = v55 & ~v56;
          if ((*(v72 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57))
          {
            v65 = (v76 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            v58 = ~v56;
            while (1)
            {
              v54(v12, *(v73 + 48) + v57 * v53, v6);
              sub_1D4183E58(&unk_1EDE33D30, MEMORY[0x1E69695A8]);
              v59 = sub_1D4419BE4();
              v60 = *v76;
              (*v76)(v12, v6);
              if (v59)
              {
                break;
              }

              v57 = (v57 + 1) & v58;
              if (((*(v72 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
              {
                a4 = v73;
                goto LABEL_42;
              }
            }

            result = (v60)(v75, v6);
            v7 = v69;
            *(v66 + ((v70 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v70;
            v47 = j;
            v27 = __OFADD__(v68++, 1);
            a4 = v73;
            a3 = v74;
            v46 = i;
            if (v27)
            {
              goto LABEL_47;
            }

            if (!i)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v60 = *v76;
LABEL_42:
            result = (v60)(v75, v6);
            a3 = v74;
            v7 = v69;
            v47 = j;
            v46 = i;
            if (!i)
            {
              goto LABEL_31;
            }
          }

LABEL_30:
          v48 = __clz(__rbit64(v46));
        }
      }
    }

    __break(1u);
  }

  else
  {
    v68 = 0;
    v19 = a4;
    v20 = 0;
    v22 = v19 + 56;
    v21 = *(v19 + 56);
    v61[0] = v22;
    v23 = 1 << *(v22 - 24);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & v21;
    v26 = (v23 + 63) >> 6;
    v63 = v7 + 32;
    v64 = v26;
    v70 = a3 + 56;
    v75 = (v7 + 8);
    if (v25)
    {
      goto LABEL_9;
    }

LABEL_10:
    v29 = v20;
    while (1)
    {
      v20 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v20 >= v26)
      {
        goto LABEL_44;
      }

      v30 = *(v61[0] + 8 * v20);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        for (j = (v30 - 1) & v30; ; j = (v25 - 1) & v25)
        {
          v31 = *(v7 + 72);
          v32 = *(v73 + 48) + v31 * (v28 | (v20 << 6));
          v33 = v65;
          i = *(v7 + 16);
          v72 = v31;
          i(v65, v32, v6);
          (*(v7 + 32))(v76, v33, v6);
          sub_1D4183E58(&qword_1EDE33D40, MEMORY[0x1E69695A8]);
          v34 = sub_1D4419B84();
          v35 = -1 << *(a3 + 32);
          v36 = v34 & ~v35;
          v37 = v36 >> 6;
          v38 = 1 << v36;
          if (((1 << v36) & *(v70 + 8 * (v36 >> 6))) != 0)
          {
            v61[1] = v75 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v39 = ~v35;
            while (1)
            {
              i(v12, *(v74 + 48) + v36 * v72, v6);
              sub_1D4183E58(&unk_1EDE33D30, MEMORY[0x1E69695A8]);
              v40 = sub_1D4419BE4();
              v41 = *v75;
              (*v75)(v12, v6);
              if (v40)
              {
                break;
              }

              v36 = (v36 + 1) & v39;
              v37 = v36 >> 6;
              v38 = 1 << v36;
              if (((1 << v36) & *(v70 + 8 * (v36 >> 6))) == 0)
              {
                a3 = v74;
                goto LABEL_21;
              }
            }

            result = (v41)(v76, v6);
            v25 = j;
            v66[v37] |= v38;
            v7 = v69;
            v27 = __OFADD__(v68++, 1);
            a3 = v74;
            v26 = v64;
            if (v27)
            {
              goto LABEL_48;
            }

            if (!v25)
            {
              goto LABEL_10;
            }
          }

          else
          {
            v41 = *v75;
LABEL_21:
            result = (v41)(v76, v6);
            v7 = v69;
            v26 = v64;
            v25 = j;
            if (!j)
            {
              goto LABEL_10;
            }
          }

LABEL_9:
          v28 = __clz(__rbit64(v25));
        }
      }
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

char *ICCalculateDocumentController.init(note:)(void *a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___ICCalculateDocumentController____lazy_storage___scanner] = 0;
  *&v1[OBJC_IVAR___ICCalculateDocumentController____lazy_storage___highlighter] = 0;
  v3 = &v1[OBJC_IVAR___ICCalculateDocumentController_currentTextStorageHash];
  *v3 = 0;
  v3[8] = 1;
  *&v1[OBJC_IVAR___ICCalculateDocumentController_updatingExpressions] = MEMORY[0x1E69E7CD0];
  v1[OBJC_IVAR___ICCalculateDocumentController_needsDocumentUpdate] = 1;
  *&v1[OBJC_IVAR___ICCalculateDocumentController____lazy_storage___updateDelayer] = 0;
  *&v1[OBJC_IVAR___ICCalculateDocumentController____lazy_storage___highPriorityDelayer] = 0;
  v1[OBJC_IVAR___ICCalculateDocumentController_nextUpdateAffectsChangeCounts] = 0;
  *&v1[OBJC_IVAR___ICCalculateDocumentController____lazy_storage___numberFormatter] = 0;
  *&v1[OBJC_IVAR___ICCalculateDocumentController____lazy_storage___documentOptions] = 0;
  v1[OBJC_IVAR___ICCalculateDocumentController_updating] = 0;
  *&v1[OBJC_IVAR___ICCalculateDocumentController_currentScanRequest] = 0;
  v4 = &v1[OBJC_IVAR___ICCalculateDocumentController_previewedExpressionString];
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR___ICCalculateDocumentController_paperKitDocuments;
  *&v1[v5] = sub_1D4181174(MEMORY[0x1E69E7CC0]);
  v1[OBJC_IVAR___ICCalculateDocumentController_isExpressionFormattingEnabled] = 1;
  *&v1[OBJC_IVAR___ICCalculateDocumentController_isMathPaperSolvingAllowedObservation] = 0;
  *&v1[OBJC_IVAR___ICCalculateDocumentController_isKeyboardMathSolvingAllowedObservation] = 0;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v6 = [a1 deviceManagementRestrictionsManager];
  v38 = v6;
  v7 = [v6 isMathPaperSolvingAllowed] && objc_msgSend(v6, sel_isKeyboardMathSolvingAllowed) && objc_msgSend(a1, sel_calculatePreviewBehavior) != 1;
  v1[OBJC_IVAR___ICCalculateDocumentController__isCalculateMathEnabled] = v7;
  v39.receiver = v1;
  v39.super_class = ICCalculateDocumentController;
  v8 = objc_msgSendSuper2(&v39, sel_init);
  v9 = [v8 note];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 deviceManagementRestrictionsManager];

    if (v11)
    {
      swift_getKeyPath();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v12 = sub_1D4417134();

      v13 = *&v8[OBJC_IVAR___ICCalculateDocumentController_isMathPaperSolvingAllowedObservation];
      *&v8[OBJC_IVAR___ICCalculateDocumentController_isMathPaperSolvingAllowedObservation] = v12;

      swift_getKeyPath();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v14 = sub_1D4417134();

      v15 = *&v8[OBJC_IVAR___ICCalculateDocumentController_isKeyboardMathSolvingAllowedObservation];
      *&v8[OBJC_IVAR___ICCalculateDocumentController_isKeyboardMathSolvingAllowedObservation] = v14;
    }
  }

  v16 = objc_opt_self();
  v17 = [v16 defaultCenter];
  v18 = *MEMORY[0x1E69B74E8];
  v19 = v8;
  [v17 addObserver:v19 selector:sel_noteDidPerformMerge_ name:v18 object:a1];

  v20 = [v16 defaultCenter];
  v21 = *MEMORY[0x1E696AA30];
  v22 = [a1 textStorage];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 undoManager];

    sub_1D41766C0(0, &qword_1EDE33A40);
    v25 = sub_1D441AD64();
  }

  else
  {
    v25 = 0;
  }

  [v20 addObserver:v19 selector:sel_undoManagerDidUndo_ name:v21 object:v25];

  swift_unknownObjectRelease();
  v26 = [v16 defaultCenter];
  v27 = *MEMORY[0x1E696AA28];
  v28 = v19;
  v29 = [a1 textStorage];
  if (v29)
  {
    v30 = v29;
    v31 = [v29 undoManager];

    sub_1D41766C0(0, &qword_1EDE33A40);
    v32 = sub_1D441AD64();
  }

  else
  {
    v32 = 0;
  }

  [v26 addObserver:v28 selector:sel_undoManagerDidRedo_ name:v27 object:v32];

  swift_unknownObjectRelease();
  v33 = [v16 defaultCenter];
  v34 = v28;
  [v33 addObserver:v34 selector:sel_noteDidChangeCalculatePreviewBehavior_ name:@"ICNoteDidChangeCalculatePreviewBehavior" object:a1];

  v35 = [v16 defaultCenter];
  v36 = [a1 textStorage];
  [v35 addObserver:v34 selector:sel_textStorageDidProcessEndEditing_ name:@"ICTTTextStorageDidProcessEndEditingNotification" object:v36];

  return v34;
}

id sub_1D4180DAC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isMathPaperSolvingAllowed];
  *a2 = result;
  return result;
}

uint64_t sub_1D4180DE0()
{
  MEMORY[0x1DA6D8750](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_1D4180E18@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isKeyboardMathSolvingAllowed];
  *a2 = result;
  return result;
}

uint64_t sub_1D4180E4C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_1D4417494();
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB5F0);
  result = sub_1D441A994();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_1D4188890(&qword_1EDE33D40, MEMORY[0x1E69695A8]);
    result = sub_1D4419B84();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
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

unint64_t sub_1D4181174(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA4B0);
    v3 = sub_1D441AC24();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *(i - 1);
      v5 = *i;

      result = sub_1D42D01A4(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1D4181274(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (v2)
    {
      if (!v3)
      {
        v8 = MEMORY[0x1E69E7CD0];
        goto LABEL_9;
      }

      v7 = sub_1D4181490(v6, v3);

      if ((v7 & 1) == 0)
      {
        v8 = v3;
LABEL_9:
        v9 = v2;
        goto LABEL_10;
      }
    }

    else if (v3)
    {
      v9 = MEMORY[0x1E69E7CD0];
      v8 = v3;
LABEL_10:
      v10 = v9;

      sub_1D437E430(v8);

      sub_1D441A2E4();

      sub_1D42DCFF8(v10, v10, v11, v12, v13);

      sub_1D42DD1AC();
    }
  }
}

uint64_t sub_1D4181490(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4417494();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v44 = &v33 - v10;
  result = MEMORY[0x1EEE9AC00](v9);
  v13 = &v33 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 56);
  v33 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 32;
  v42 = a2 + 56;
  v43 = v5 + 16;
  v20 = (v5 + 8);
  v34 = v19;
  v35 = &v33 - v12;
  v36 = v5;
  v37 = a1;
  if (v18)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v39 = (v18 - 1) & v18;
LABEL_13:
      v24 = *(a1 + 48);
      v41 = *(v5 + 72);
      v25 = *(v5 + 16);
      v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4);
      (*(v5 + 32))(v44, v13, v4);
      sub_1D4392788(&qword_1EDE33D40, MEMORY[0x1E69695A8]);
      v26 = sub_1D4419B84();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29 = a2;
      v30 = ~v27;
      while (1)
      {
        v25(v8, *(v29 + 48) + v28 * v41, v4);
        sub_1D4392788(&unk_1EDE33D30, MEMORY[0x1E69695A8]);
        v31 = sub_1D4419BE4();
        v32 = *v20;
        (*v20)(v8, v4);
        if (v31)
        {
          break;
        }

        v28 = (v28 + 1) & v30;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          v32(v44, v4);
          return 0;
        }
      }

      result = (v32)(v44, v4);
      a2 = v29;
      v5 = v36;
      a1 = v37;
      v19 = v34;
      v13 = v35;
      v18 = v39;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

    (*v20)(v44, v4);
    return 0;
  }

LABEL_8:
  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return 1;
    }

    v23 = *(v33 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v39 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D4181840(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D4419444();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  memset(v18, 0, sizeof(v18));
  memset(v17, 0, sizeof(v17));
  sub_1D4419434();
  v12 = v18;
  v13 = v2;
  v14 = a1;
  v15 = a2;
  v16 = v17;
  sub_1D441A2D4();
  (*(v6 + 8))(v8, v5);
  swift_beginAccess();
  v9 = *(v2 + 72);
  if (v9)
  {

    v9(v18, v17);
    sub_1D417BCA0(v9);
  }

  sub_1D4181BA4(*&v17[0]);
  return sub_1D4181BA4(*&v18[0]);
}

uint64_t sub_1D4181A80(uint64_t *a1, void *a2, void (*a3)(void *), uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  v8 = a2[6];
  v9 = a2[7];
  v10 = a2[8];
  v11 = *a1;
  *a1 = a2[5];
  a1[1] = v8;
  a1[2] = v9;
  a1[3] = v10;

  sub_1D4181BA4(v11);
  swift_beginAccess();
  a3(a2 + 5);
  swift_endAccess();
  v12 = a2[5];
  v13 = a2[6];
  v14 = a2[7];
  v15 = a2[8];
  v16 = *a5;
  *a5 = v12;
  a5[1] = v13;
  a5[2] = v14;
  a5[3] = v15;

  return sub_1D4181BA4(v16);
}

uint64_t sub_1D4181BA4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D4181C88(void *a1)
{
  swift_beginAccess();
  if (*(a1[3] + 16))
  {
    swift_isUniquelyReferenced_nonNull_native();
    v3 = a1[3];
    a1[3] = 0x8000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9A78);
    sub_1D441AB64();
    a1[3] = v3;
  }

  swift_endAccess();
  swift_beginAccess();
  if (*(a1[4] + 16))
  {
    swift_isUniquelyReferenced_nonNull_native();
    v4 = a1[4];
    a1[4] = 0x8000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9A70);
    sub_1D441AB64();
    a1[4] = v4;
  }

  swift_endAccess();
  swift_beginAccess();
  if (*(a1[5] + 16))
  {
    swift_isUniquelyReferenced_nonNull_native();
    v5 = a1[5];
    a1[5] = 0x8000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9A68);
    sub_1D441AB64();
    a1[5] = v5;
  }

  return swift_endAccess();
}

void sub_1D4183210(void (*a1)(void, void), uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v30 = a5;
  v31 = a4;
  v28 = a3;
  v29 = a2;
  v33 = sub_1D4417494();
  v7 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D4419444();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v34 = v5;
  v35 = v5 + 24;
  v36 = a1;
  v32 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9A18);
  v14 = sub_1D441A2E4();
  if (v37 == 2)
  {
    LODWORD(v31) = v31(v14);
    v38 = v31 & 1;
    v15 = sub_1D4419434();
    MEMORY[0x1EEE9AC00](v15);
    v16 = v32;
    v27[-4] = v5 + 24;
    v27[-3] = v16;
    v27[-2] = &v38;
    sub_1D441A2D4();
    v18 = *(v11 + 8);
    v17 = (v11 + 8);
    v32 = v18;
    v18(v13, v10);
    v19 = swift_endAccess();
    if (v31)
    {
      v20 = v29(v19);
      if (!v21)
      {
        sub_1D417E7FC(MEMORY[0x1E69E7CC0]);
      }

      v31 = *(v21 + 16);
      if (v31)
      {
        v29 = v17;
        v30 = v10;
        v22 = 0;
        v28 = v21 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
        v27[1] = v20;
        v27[2] = v7 + 16;
        while (v22 < *(v21 + 16))
        {
          v23 = v21;
          v24 = v28 + *(v7 + 72) * v22++;
          v25 = v33;
          (*(v7 + 16))(v9, v24, v33);
          v26 = sub_1D4419434();
          MEMORY[0x1EEE9AC00](v26);
          v27[-2] = v34;
          v27[-1] = v9;
          sub_1D441A2D4();
          v32(v13, v30);
          (*(v7 + 8))(v9, v25);
          v21 = v23;
          if (v31 == v22)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_12:
      }
    }
  }

  else
  {
    swift_endAccess();
  }
}

uint64_t sub_1D41835E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D4183618(*(v1 + 16), *(v1 + 24));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1D4183618(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (!*(*a1 + 16))
  {
    return 2;
  }

  v3 = sub_1D417DAA4(a2);
  if (v4)
  {
    return *(*(v2 + 56) + v3);
  }

  else
  {
    return 2;
  }
}

BOOL sub_1D4183674(uint64_t a1, uint64_t a2)
{

  sub_1D441A2E4();

  if (*(v12 + 16) && (v3 = sub_1D417DAA4(a2), (v4 & 1) != 0))
  {
    v5 = (*(v12 + 56) + 16 * v3);
    v6 = *v5;
    v7 = v5[1];

    swift_beginAccess();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9948);
    sub_1D441A2E4();

    v8 = sub_1D418396C(v6, v7, v11);

    v9 = *(v8 + 16);

    return v9 != 0;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1D4183828(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D418389C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  v4 = a1[5];
  v5 = a1[6];
  v7 = a1[7];
  v6 = a1[8];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v7;
  a2[3] = v6;
}

uint64_t sub_1D4183918(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D418396C(uint64_t isStackAllocationSafe, uint64_t a2, uint64_t a3)
{
  v18[2] = *MEMORY[0x1E69E9840];
  v18[0] = isStackAllocationSafe;
  v18[1] = a2;
  v5 = *(a3 + 32);
  v6 = v5 & 0x3F;
  v17[3] = v18;
  v17[4] = a3;
  v7 = (1 << v5) + 63;
  v8 = v7 >> 6;
  if (v6 <= 0xD || (v13 = 8 * (v7 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v10 = &v17[-1] - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    v11 = sub_1D4183B0C(v10, v8, a2, a3);
  }

  else
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    bzero(v15, v14);
    sub_1D4330064(v15, v8, v17);
    v11 = v17[0];

    MEMORY[0x1DA6D8690](v15, -1, -1);
  }

  return v11;
}

uint64_t sub_1D4183B0C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v30 = a1;
  v6 = sub_1D4417494();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v27 - v11;
  v33 = *(a3 + 16);
  if (v33)
  {
    v29 = 0;
    v12 = 0;
    v14 = *(v10 + 16);
    v13 = v10 + 16;
    v32 = a3 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v35 = a4;
    v36 = a4 + 56;
    v37 = *(v13 + 56);
    v38 = v14;
    v15 = (v13 - 8);
    v39 = v13;
    while (1)
    {
      v34 = v12;
      v38(v40, v32 + v37 * v12, v6);
      sub_1D4183E58(&qword_1EDE33D40, MEMORY[0x1E69695A8]);
      v18 = sub_1D4419B84();
      v19 = -1 << *(a4 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      v22 = 1 << v20;
      if (((1 << v20) & *(v36 + 8 * (v20 >> 6))) == 0)
      {
        break;
      }

      v31 = v15 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v23 = ~v19;
      while (1)
      {
        v38(v9, *(v35 + 48) + v20 * v37, v6);
        sub_1D4183E58(&unk_1EDE33D30, MEMORY[0x1E69695A8]);
        v24 = sub_1D4419BE4();
        v16 = *v15;
        (*v15)(v9, v6);
        if (v24)
        {
          break;
        }

        v20 = (v20 + 1) & v23;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if (((1 << v20) & *(v36 + 8 * (v20 >> 6))) == 0)
        {
          a4 = v35;
          goto LABEL_4;
        }
      }

      result = (v16)(v40, v6);
      v26 = v30[v21];
      v30[v21] = v26 | v22;
      if ((v26 & v22) != 0)
      {
        a4 = v35;
LABEL_5:
        v17 = v34;
        goto LABEL_6;
      }

      v17 = v34;
      a4 = v35;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        return result;
      }

      ++v29;
LABEL_6:
      v12 = v17 + 1;
      if (v12 == v33)
      {
        goto LABEL_17;
      }
    }

    v16 = *v15;
LABEL_4:
    v16(v40, v6);
    goto LABEL_5;
  }

  v29 = 0;
LABEL_17:

  return sub_1D4180E4C(v30, v28, v29, a4);
}

uint64_t sub_1D4183E58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D4183EA0(uint64_t *a1, uint64_t a2, char *a3)
{
  v5 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *a1;
  *a1 = 0x8000000000000000;
  sub_1D4183F3C(v5, a2, isUniquelyReferenced_nonNull_native);
  *a1 = v8;
}

uint64_t sub_1D4183F3C(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D4417494();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1D417DAA4(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      *(v20[7] + v14) = a1 & 1;
      return result;
    }

    goto LABEL_11;
  }

  if (v19 >= result && (a3 & 1) == 0)
  {
    result = sub_1D42D3E50();
    goto LABEL_7;
  }

  sub_1D41840DC(result, a3 & 1);
  result = sub_1D417DAA4(a2);
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_1D441ADE4();
    __break(1u);
    return result;
  }

  v14 = result;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_1D418449C(v14, v11, a1 & 1, v20);
}

uint64_t sub_1D41840DC(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1D4417494();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9848);
  v40 = a2;
  result = sub_1D441AC04();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v42 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v5);
      }

      else
      {
        (*v37)(v43, v26, v5);
      }

      v27 = *(*(v9 + 56) + v24);
      sub_1D417DFF0(&qword_1EDE33D40, MEMORY[0x1E69695A8]);
      result = sub_1D4419B84();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v25 * v19, v43, v5);
      *(*(v11 + 56) + v19) = v27;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
      v16 = v42;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1D418449C(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1D4417494();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + a1) = a3;
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

void sub_1D4184794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4184B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D418599C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose(&a66, 8);
  _Block_object_dispose(&a70, 8);
  _Block_object_dispose(&STACK[0x218], 8);
  _Block_object_dispose(&STACK[0x248], 8);
  _Block_object_dispose(&STACK[0x278], 8);
  _Block_object_dispose(&STACK[0x298], 8);
  _Block_object_dispose(&STACK[0x2B8], 8);
  _Block_object_dispose(&STACK[0x2D8], 8);
  _Block_object_dispose(&STACK[0x2F8], 8);
  _Block_object_dispose(&STACK[0x328], 8);
  _Block_object_dispose(&STACK[0x358], 8);
  _Block_object_dispose(&STACK[0x378], 8);
  _Unwind_Resume(a1);
}

unint64_t sub_1D418666C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9788);
    v3 = sub_1D441AC24();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_1D4186AFC(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1D41867CC(void *a1)
{
  v3 = OBJC_IVAR___ICDocumentMergeController_textViewsToReasonCounts;
  swift_beginAccess();
  if (!*(*(v1 + v3) + 16) || (, sub_1D4186AFC(a1), v5 = v4, result = , (v5 & 1) == 0))
  {
    v7 = sub_1D41868BC(MEMORY[0x1E69E7CC0]);
    swift_beginAccess();
    v8 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v1 + v3);
    *(v1 + v3) = 0x8000000000000000;
    sub_1D41869B4(v7, v8, isUniquelyReferenced_nonNull_native);

    *(v1 + v3) = v10;
    return swift_endAccess();
  }

  return result;
}

unint64_t sub_1D41868BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9790);
    v3 = sub_1D441AC24();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1D42D0138(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

id sub_1D41869B4(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1D4186AFC(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1D42D4D08();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1D4186C18(v13, a3 & 1);
    v8 = sub_1D4186AFC(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      sub_1D41766C0(0, &qword_1EDE32A00);
      result = sub_1D441ADE4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;
  }

  else
  {
    sub_1D4186F2C(v8, a2, a1, v18);

    return a2;
  }
}

unint64_t sub_1D4186B4C(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    sub_1D41766C0(0, a3);
    do
    {
      v7 = *(*(v3 + 48) + 8 * v5);
      v8 = sub_1D441A5E4();

      if (v8)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1D4186C18(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9788);
  result = sub_1D441AC04();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
      }

      result = sub_1D441A5D4();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1D4186EE4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D4186F2C(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

void sub_1D4187230(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t type metadata accessor for LinkSuggestionsContainer()
{
  result = qword_1EDE32F88;
  if (!qword_1EDE32F88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D41872A0()
{
  sub_1D418734C();
  if (v0 <= 0x3F)
  {
    sub_1D41873A4();
    if (v1 <= 0x3F)
    {
      sub_1D4417434();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D418734C()
{
  if (!qword_1EDE32A78)
  {
    sub_1D4417884();
    v0 = sub_1D4419EE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE32A78);
    }
  }
}

void sub_1D41873A4()
{
  if (!qword_1EDE32A80)
  {
    v0 = sub_1D441A784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE32A80);
    }
  }
}

void *sub_1D4187408(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1D4417434();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

char *ICCalculateRecognitionController.init(note:)(void *a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR___ICCalculateRecognitionController_didTriggerResultPreviewAfterUnmarkingText] = 0;
  v1[OBJC_IVAR___ICCalculateRecognitionController_insertsResults] = 1;
  *&v1[OBJC_IVAR___ICCalculateRecognitionController_previewBehavior] = 1;
  *&v1[OBJC_IVAR___ICCalculateRecognitionController_previewedExpression] = 0;
  v1[OBJC_IVAR___ICCalculateRecognitionController_isUpdatingMarkedTextExpressions] = 0;
  *&v1[OBJC_IVAR___ICCalculateRecognitionController____lazy_storage___errorInteractionController] = 0;
  *&v1[OBJC_IVAR___ICCalculateRecognitionController_isMathPaperSolvingAllowedObservation] = 0;
  *&v1[OBJC_IVAR___ICCalculateRecognitionController_isKeyboardMathSolvingAllowedObservation] = 0;
  v4 = [objc_opt_self() isMainThread];
  if (!v4)
  {
    __break(1u);
LABEL_8:
    v18 = v4;
    swift_once();
    v4 = v18;
    goto LABEL_6;
  }

  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v19.receiver = v1;
  v19.super_class = ICCalculateRecognitionController;
  v5 = objc_msgSendSuper2(&v19, sel_init);
  v6 = [v5 note];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 deviceManagementRestrictionsManager];

    if (v8)
    {
      swift_getKeyPath();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v9 = sub_1D4417134();

      v10 = *&v5[OBJC_IVAR___ICCalculateRecognitionController_isMathPaperSolvingAllowedObservation];
      *&v5[OBJC_IVAR___ICCalculateRecognitionController_isMathPaperSolvingAllowedObservation] = v9;

      swift_getKeyPath();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v11 = sub_1D4417134();

      v12 = *&v5[OBJC_IVAR___ICCalculateRecognitionController_isKeyboardMathSolvingAllowedObservation];
      *&v5[OBJC_IVAR___ICCalculateRecognitionController_isKeyboardMathSolvingAllowedObservation] = v11;
    }
  }

  v1 = [objc_opt_self() defaultCenter];
  v2 = sel_willUpdateMarkedText_;
  v13 = qword_1EDE32728;
  v4 = v5;
  if (v13 != -1)
  {
    goto LABEL_8;
  }

LABEL_6:
  v14 = qword_1EDE32738;
  v15 = v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  [v1 addObserver:v15 selector:v2 name:v14 object:Strong];

  return v15;
}

uint64_t sub_1D41878FC()
{
  MEMORY[0x1DA6D8750](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_1D4187944()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

uint64_t sub_1D418799C()
{
  result = sub_1D4419C14();
  qword_1EDE32738 = result;
  return result;
}

Swift::Void __swiftcall ICCalculateRecognitionController.discardPreviewedResult()()
{
  if ([v0 isPreviewingResult])
  {
    *&v0[OBJC_IVAR___ICCalculateRecognitionController_previewedExpression] = 0;

    v1 = [v0 note];
    if (v1)
    {
      v2 = v1;
      v3 = [v1 calculateDocumentController];

      if (v3)
      {
        v4 = &v3[OBJC_IVAR___ICCalculateDocumentController_previewedExpressionString];
        *v4 = 0;
        *(v4 + 1) = 0;
      }
    }

    v0[OBJC_IVAR___ICCalculateRecognitionController_didTriggerResultPreviewAfterUnmarkingText] = 0;
    v5 = [v0 textView];
    if (v5)
    {
      v7 = v5;
      v6 = [v5 markedTextRange];
      if (v6)
      {

        [v7 setMarkedText:0 selectedRange:{0, 0}];
        [v7 unmarkText];
      }
    }
  }
}

id sub_1D4187D10()
{
  v1 = OBJC_IVAR___ICCalculateRecognitionController____lazy_storage___errorInteractionController;
  v2 = *&v0[OBJC_IVAR___ICCalculateRecognitionController____lazy_storage___errorInteractionController];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR___ICCalculateRecognitionController____lazy_storage___errorInteractionController];
  }

  else
  {
    v4 = objc_allocWithZone(_s26ErrorInteractionControllerCMa());
    v5 = v0;
    v6 = sub_1D4187DB0(v0);
    v7 = *&v0[v1];
    *&v5[v1] = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1D4187DB0(void *a1)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtCE7NotesUICSo32ICCalculateRecognitionController26ErrorInteractionController_viewController] = 0;
  v4 = &v1[OBJC_IVAR____TtCE7NotesUICSo32ICCalculateRecognitionController26ErrorInteractionController_state];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *(v4 + 4) = 0u;
  *(v4 + 10) = 0;
  v4[88] = 2;
  *&v1[OBJC_IVAR____TtCE7NotesUICSo32ICCalculateRecognitionController26ErrorInteractionController_hitTestSize] = xmmword_1D443DBF0;
  *&v1[OBJC_IVAR____TtCE7NotesUICSo32ICCalculateRecognitionController26ErrorInteractionController_errorMenuGestureRecognizer] = 0;
  swift_unknownObjectWeakAssign();
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v12, sel_init);
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 defaultCenter];
  v9 = *MEMORY[0x1E69DE750];
  v10 = [a1 textView];
  [v8 addObserver:v7 selector:sel_textViewDidChangeText_ name:v9 object:v10];

  return v7;
}

void sub_1D4187F2C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v6 = [Strong textView];

    v3 = v6;
    if (v6)
    {
      v4 = OBJC_IVAR____TtCE7NotesUICSo32ICCalculateRecognitionController26ErrorInteractionController_errorMenuGestureRecognizer;
      if (!*(v0 + OBJC_IVAR____TtCE7NotesUICSo32ICCalculateRecognitionController26ErrorInteractionController_errorMenuGestureRecognizer))
      {
        v5 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v0 action:sel_didTapTextView_];
        [v5 setDelegate_];
        [v6 addGestureRecognizer_];

        v3 = *(v0 + v4);
        *(v0 + v4) = v5;
      }
    }
  }
}

id sub_1D4188050(void *a1)
{
  *(v1 + OBJC_IVAR___ICCalculateScrubberController_scrubber) = 0;
  *(v1 + OBJC_IVAR___ICCalculateScrubberController_numberLiteral) = 0;
  *(v1 + OBJC_IVAR___ICCalculateScrubberController_note) = 0;
  *(v1 + OBJC_IVAR___ICCalculateScrubberController_scrubberView) = 0;
  *(v1 + OBJC_IVAR___ICCalculateScrubberController____lazy_storage___hoverController) = 0;
  *(v1 + OBJC_IVAR___ICCalculateScrubberController_isBlockingMerge) = 0;
  *(v1 + OBJC_IVAR___ICCalculateScrubberController_isPausingUndoActions) = 0;
  *(v1 + OBJC_IVAR___ICCalculateScrubberController_viewController) = 0;
  *(v1 + OBJC_IVAR___ICCalculateScrubberController_textView) = a1;
  v9.super_class = ICCalculateScrubberController;
  v2 = a1;
  v3 = objc_msgSendSuper2(&v9, sel_init);
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 defaultCenter];
  v7 = sub_1D4419C14();
  [v6 addObserver:v5 selector:sel_outlineControllerCollapsedStateDidChange_ name:v7 object:0];

  return v5;
}

id sub_1D418824C(void *a1)
{
  v36 = a1;
  v2 = sub_1D4419444();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D4419484();
  v39 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v38 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D4419414();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = sub_1D44194A4();
  v37 = *(v40 - 8);
  v12 = MEMORY[0x1EEE9AC00](v40);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v35 = &v29 - v15;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___ICCalculateGraphingController_insertionPromptController] = 0;
  result = [objc_opt_self() isMainThread];
  if (result)
  {
    v32 = v2;
    v33 = v3;
    v34 = v6;
    swift_beginAccess();
    v17 = v36;
    swift_unknownObjectWeakAssign();
    v42.receiver = v1;
    v42.super_class = ICCalculateGraphingController;
    v18 = objc_msgSendSuper2(&v42, sel_init);
    sub_1D41766C0(0, &qword_1EDE33D70);
    v19 = v5;
    v30 = v18;
    v31 = sub_1D441A2C4();
    sub_1D4419494();
    *v11 = 1;
    (*(v9 + 104))(v11, *MEMORY[0x1E69E7F48], v8);
    v20 = v35;
    MEMORY[0x1DA6D4EF0](v14, v11);
    (*(v9 + 8))(v11, v8);
    v37 = *(v37 + 8);
    (v37)(v14, v40);
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    *(v22 + 24) = v17;
    aBlock[4] = sub_1D4376668;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D417BEE4;
    aBlock[3] = &block_descriptor_70;
    v23 = _Block_copy(aBlock);
    v24 = v17;

    v25 = v38;
    sub_1D4419464();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D4188890(&qword_1EDE32AD0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA520);
    sub_1D417645C(&qword_1EDE32A70, &qword_1EC7CA520);
    v26 = v32;
    sub_1D441A814();
    v27 = v31;
    MEMORY[0x1DA6D5C70](v20, v25, v19, v23);
    _Block_release(v23);
    v28 = v30;

    (*(v33 + 8))(v19, v26);
    (*(v39 + 8))(v25, v34);
    (v37)(v20, v40);
    return v28;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D4188814()
{
  MEMORY[0x1DA6D8750](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D418884C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D4188890(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D4188AD8(uint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *a1;
  v6 = *&v4[*a1];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    a2();
    swift_allocObject();
    v9 = v4;
    v7 = a4();

    *&v4[v5] = v7;
  }

  return v7;
}

void sub_1D4188BA0(void *a1)
{
  swift_unknownObjectWeakInit();
  v3 = *MEMORY[0x1E69B7930];
  *(v1 + 24) = *MEMORY[0x1E69B7930];
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  swift_unknownObjectWeakAssign();
  v4 = v3;
  v5 = [a1 note];
  if (v5 && (v6 = v5, v7 = [v5 textStorage], v6, v7))
  {

    v8 = objc_opt_self();
    v9 = [v8 defaultCenter];
    v10 = *MEMORY[0x1E69DB738];

    v11 = [a1 note];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 textStorage];

      if (v13)
      {
        v17 = v13;
        sub_1D41766C0(0, &qword_1EDE33C98);
        v13 = sub_1D441AD64();
      }
    }

    else
    {
      v13 = 0;
    }

    [v9 addObserver:v1 selector:sel_textStorageDidProcessEndEditing_ name:v10 object:v13];

    swift_unknownObjectRelease();
    v14 = [v8 defaultCenter];
    [v14 addObserver:v1 selector:sel_calculateDocumentControllerDidUpdateDocument_ name:@"ICCalculateDocumentControllerDidUpdateDocument" object:a1];

    v15 = [v8 defaultCenter];

    v16 = [a1 note];
    [v15 addObserver:v1 selector:sel_noteDidChangeCalculatePreviewBehavior_ name:@"ICNoteDidChangeCalculatePreviewBehavior" object:v16];

    sub_1D4188E0C();
  }

  else
  {
    __break(1u);
  }
}

void sub_1D4188E0C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong note];

    if (v3)
    {
      v19 = [v3 managedObjectContext];

      if (v19)
      {
        v4 = swift_unknownObjectWeakLoadStrong();
        if (v4 && (v5 = v4, v6 = [v4 note], v5, v6) && (v7 = objc_msgSend(v6, sel_deviceManagementRestrictionsManager), v6, v7))
        {
          swift_getKeyPath();
          v8 = swift_allocObject();
          swift_weakInit();
          v9 = swift_allocObject();
          *(v9 + 16) = v19;
          *(v9 + 24) = v8;
          v10 = v19;
          v11 = v0;
          v12 = sub_1D4417134();

          v13 = *(v11 + 48);
          *(v11 + 48) = v12;

          swift_getKeyPath();
          v14 = swift_allocObject();
          swift_weakInit();
          v15 = swift_allocObject();
          *(v15 + 16) = v10;
          *(v15 + 24) = v14;
          v16 = v10;
          v17 = sub_1D4417134();

          v18 = *(v11 + 56);
          *(v11 + 56) = v17;
        }

        else
        {
        }
      }
    }
  }
}

uint64_t sub_1D418908C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D41890D0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA3B0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v48 - v3;
  v5 = sub_1D4418074();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v48 - v10;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    sub_1D4189834();
    v14 = sub_1D4419974();

    if ((v14 & 0xC000000000000001) != 0)
    {
      v15 = sub_1D441A8C4();
    }

    else
    {
      v15 = *(v14 + 16);
    }

    if (v15 && (v16 = [v13 note]) != 0)
    {
      v17 = v16;
      v18 = [v16 textStorage];
      if (v18)
      {
        v19 = v18;
        v20 = [v18 highlightsAttributedString];
        objc_opt_self();
        v55 = swift_dynamicCastObjCClass();
        if (v55 && ([v19 isEditingViaWritingTools] & 1) == 0)
        {
          v54 = v19;
          v52 = v17;
          if (qword_1EDE335A0 == -1)
          {
            goto LABEL_16;
          }

          while (1)
          {
            swift_once();
LABEL_16:
            v21 = sub_1D44180A4();
            __swift_project_value_buffer(v21, qword_1EDE335A8);
            sub_1D4418064();
            v22 = sub_1D4418094();
            LODWORD(v53) = sub_1D441A3D4();
            if (sub_1D441A764())
            {
              v51 = swift_slowAlloc();
              *v51 = 0;
              v23 = sub_1D4418054();
              v24 = v51;
              _os_signpost_emit_with_name_impl(&dword_1D4171000, v22, v53, v23, "updateHighlights()", "", v51, 2u);
              MEMORY[0x1DA6D8690](v24, -1, -1);
            }

            (*(v6 + 16))(v9, v11, v5);
            sub_1D44180E4();
            swift_allocObject();
            v51 = sub_1D44180D4();
            (*(v6 + 8))(v11, v5);
            v25 = *(v1 + 24);
            v9 = v20;
            v26 = v55;
            v27 = [v55 ic_range];
            [v26 removeAttribute:v25 range:{v27, v28}];
            Strong = swift_unknownObjectWeakLoadStrong();
            if (!Strong)
            {
              break;
            }

            v30 = Strong;
            v31 = [Strong isCalculateMathEnabled];

            if (!v31)
            {
              break;
            }

            v49 = v9;
            sub_1D4189834();
            v32 = sub_1D4419974();

            if ((v32 & 0xC000000000000001) != 0)
            {
              sub_1D441A874();
              _s5IndexCMa();
              sub_1D44099C8();
              sub_1D441A0A4();
              v32 = v58;
              v11 = v59;
              v33 = v60;
              v6 = v61;
              v5 = v62;
            }

            else
            {
              v6 = 0;
              v34 = -1 << *(v32 + 32);
              v11 = (v32 + 56);
              v33 = ~v34;
              v35 = -v34;
              if (v35 < 64)
              {
                v36 = ~(-1 << v35);
              }

              else
              {
                v36 = -1;
              }

              v5 = v36 & *(v32 + 56);
            }

            v48 = v33;
            v20 = ((v33 + 64) >> 6);
            v50 = v32;
            v53 = v6;
            if (v32 < 0)
            {
LABEL_27:
              v37 = sub_1D441A8F4();
              if (v37)
              {
                v56 = v37;
                _s5IndexCMa();
                swift_dynamicCast();
                v9 = v57;
                v38 = v5;
                v32 = v50;
                goto LABEL_34;
              }

LABEL_40:
              sub_1D43300C8();
              v26 = v55;
              v9 = v49;
              break;
            }

            while (1)
            {
              v39 = v6;
              v40 = v5;
              if (!v5)
              {
                break;
              }

LABEL_33:
              v38 = (v40 - 1) & v40;
              v9 = *(*(v32 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v40)))));

LABEL_34:
              if (!v9)
              {
                goto LABEL_40;
              }

              sub_1D430A294(&v9[OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex], v4);
              v41 = sub_1D44196C4();
              if ((*(*(v41 - 8) + 48))(v4, 1, v41) == 1)
              {
                sub_1D430A38C(v4);
                sub_1D440875C(v54, v9);
                v32 = v50;
              }

              else
              {

                sub_1D430A38C(v4);
              }

              v5 = v38;
              v53 = v6;
              if (v32 < 0)
              {
                goto LABEL_27;
              }
            }

            while (1)
            {
              v6 = v39 + 1;
              if (__OFADD__(v39, 1))
              {
                break;
              }

              if (v6 >= v20)
              {
                goto LABEL_40;
              }

              v40 = *&v11[8 * v6];
              ++v39;
              if (v40)
              {
                goto LABEL_33;
              }
            }

            __break(1u);
          }

          v42 = *(v1 + 32);
          v43 = v54;
          if (v42)
          {
            sub_1D41766C0(0, &qword_1EDE33A28);
            v44 = v42;
            v45 = sub_1D441A5E4();

            if (v45)
            {
              sub_1D44084D0();

              return 0;
            }
          }

          else
          {
          }

          v46 = [objc_opt_self() defaultCenter];
          [v46 postNotificationName:@"ICCalculateDocumentControllerDidUpdateHighlights" object:v13];

          [v26 copy];
          sub_1D441A804();
          swift_unknownObjectRelease();
          sub_1D41766C0(0, &qword_1EDE33A28);
          swift_dynamicCast();
          v47 = *(v1 + 32);
          *(v1 + 32) = v56;

          sub_1D44084D0();

          return 1;
        }
      }

      else
      {
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

void *sub_1D4189834()
{
  v1 = v0;
  swift_beginAccess();
  v2 = objc_getAssociatedObject(v0, &unk_1EC7CA3C0);
  swift_endAccess();
  if (v2)
  {
    sub_1D441A804();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (!*(&v7 + 1))
  {
    sub_1D41769C4(v8, &qword_1EC7C9720);
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA470);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    sub_1D41899C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA470);
    swift_allocObject();
    v3 = sub_1D4419924();
    swift_beginAccess();

    objc_setAssociatedObject(v1, &unk_1EC7CA3C0, v3, 1);
    swift_endAccess();

    return v3;
  }

  return v5;
}

unint64_t sub_1D41899C4()
{
  v1 = OBJC_IVAR___ICCalculateDocumentController____lazy_storage___documentOptions;
  if (*(v0 + OBJC_IVAR___ICCalculateDocumentController____lazy_storage___documentOptions))
  {
    v2 = *(v0 + OBJC_IVAR___ICCalculateDocumentController____lazy_storage___documentOptions);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA4A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D4435D20;
    v4 = *MEMORY[0x1E6992270];
    *(inited + 32) = *MEMORY[0x1E6992270];
    v5 = v4;
    v6 = sub_1D4189BBC();
    v7 = sub_1D41766C0(0, &qword_1EDE33A38);
    *(inited + 40) = v6;
    v8 = *MEMORY[0x1E6992280];
    *(inited + 64) = v7;
    *(inited + 72) = v8;
    v9 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v10 = v8;
    v11 = [v9 initWithUnsignedInteger_];
    v12 = sub_1D41766C0(0, &qword_1EDE33950);
    *(inited + 80) = v11;
    v13 = *MEMORY[0x1E6992228];
    *(inited + 104) = v12;
    *(inited + 112) = v13;
    v14 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v15 = v13;
    *(inited + 120) = [v14 initWithBool_];
    v16 = *MEMORY[0x1E6992240];
    *(inited + 144) = v12;
    *(inited + 152) = v16;
    v17 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v18 = v16;
    v19 = [v17 initWithBool_];
    *(inited + 184) = v12;
    *(inited + 160) = v19;
    v2 = sub_1D4189C80(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C99C0);
    swift_arrayDestroy();
    *(v0 + v1) = v2;
  }

  return v2;
}

id sub_1D4189BBC()
{
  v1 = OBJC_IVAR___ICCalculateDocumentController____lazy_storage___numberFormatter;
  v2 = *(v0 + OBJC_IVAR___ICCalculateDocumentController____lazy_storage___numberFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___ICCalculateDocumentController____lazy_storage___numberFormatter);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
    [v4 setUsesGroupingSeparator_];
    [v4 setMaximumIntegerDigits_];
    [v4 setNumberStyle_];
    [v4 setRoundingMode_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

unint64_t sub_1D4189C80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C99B8);
    v3 = sub_1D441AC24();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D417CF94(v4, &v11, &qword_1EC7C99C0);
      v5 = v11;
      result = sub_1D4189DF0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1D417CF84(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D4189DF8(uint64_t a1)
{
  sub_1D4419C54();
  sub_1D441AEB4();
  sub_1D4419CD4();
  v2 = sub_1D441AF04();

  return sub_1D4189E88(a1, v2);
}

unint64_t sub_1D4189E88(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1D4419C54();
      v8 = v7;
      if (v6 == sub_1D4419C54() && v8 == v9)
      {
        break;
      }

      v11 = sub_1D441AD84();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t _s5IndexCMa()
{
  result = qword_1EDE33A10;
  if (!qword_1EDE33A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D4189FD8()
{
  sub_1D441A434();
  if (v0 <= 0x3F)
  {
    sub_1D418A0B8();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1D418A0B8()
{
  if (!qword_1EDE33A50)
  {
    sub_1D44196C4();
    v0 = sub_1D441A784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE33A50);
    }
  }
}

uint64_t sub_1D418A15C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D418A1A4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v1 = [Strong note];
    if (v1)
    {
      v2 = v1;
      v3 = [v1 textContentStorage];

      if (v3)
      {
        v4 = [v3 textStorage];
        [v4 beginEditing];

        v5 = [v12 expressionsIndexSet];
        if (v5)
        {
          v6 = v5;
          v7 = swift_allocObject();
          *(v7 + 16) = v3;
          v8 = swift_allocObject();
          *(v8 + 16) = sub_1D4409998;
          *(v8 + 24) = v7;
          aBlock[4] = sub_1D44099A0;
          aBlock[5] = v8;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1D4409394;
          aBlock[3] = &block_descriptor_7_0;
          v9 = _Block_copy(aBlock);
          v10 = v3;

          [v6 enumerateRangesUsingBlock_];

          _Block_release(v9);
          LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

          if ((v6 & 1) == 0)
          {
            v11 = [v10 textStorage];
            [v11 endEditing];

            return;
          }

          __break(1u);
        }

        __break(1u);
        return;
      }
    }
  }
}

uint64_t sub_1D418A404()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t _sSo29ICCalculateDocumentControllerC7NotesUIE19expressionsIndexSet10Foundation0gH0Vvg_0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA4C8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  swift_beginAccess();
  v7 = objc_getAssociatedObject(v2, &unk_1EC7CA3C1);
  swift_endAccess();
  if (v7)
  {
    sub_1D441A804();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (*(&v13 + 1))
  {
    v8 = sub_1D44175B4();
    v9 = swift_dynamicCast();
    v10 = *(v8 - 8);
    (*(v10 + 56))(v6, v9 ^ 1u, 1, v8);
    if ((*(v10 + 48))(v6, 1, v8) != 1)
    {
      return (*(v10 + 32))(a1, v6, v8);
    }
  }

  else
  {
    sub_1D41769C4(v14, &qword_1EC7C9720);
    v8 = sub_1D44175B4();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  }

  sub_1D44175A4();
  sub_1D44175B4();
  result = (*(*(v8 - 8) + 48))(v6, 1, v8);
  if (result != 1)
  {
    return sub_1D41769C4(v6, &qword_1EC7CA4C8);
  }

  return result;
}

UIDeferredMenuElement __swiftcall ActionMenuProvider.makeDeferredMenuElement()()
{
  v3 = v1;
  v4 = v0;
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  v6[2] = v4;
  v6[3] = v3;
  v6[4] = v2;
  v11[4] = sub_1D43A5AF8;
  v11[5] = v6;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1D43A59E8;
  v11[3] = &block_descriptor_24;
  v7 = _Block_copy(v11);
  v8 = v2;

  v9 = [v5 elementWithUncachedProvider_];
  _Block_release(v7);
  return v9;
}

uint64_t sub_1D418A8D0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t static UITraitCollection.traitsAffectingSizeAndColor.getter()
{
  v8 = sub_1D441A334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB818);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D4435D30;
  v1 = sub_1D44181E4();
  v2 = MEMORY[0x1E69DC130];
  *(inited + 32) = v1;
  *(inited + 40) = v2;
  v3 = sub_1D44181C4();
  v4 = MEMORY[0x1E69DC0C8];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  v5 = sub_1D44181F4();
  v6 = MEMORY[0x1E69DC2B0];
  *(inited + 64) = v5;
  *(inited + 72) = v6;
  sub_1D418ABCC(inited);
  return v8;
}

uint64_t sub_1D418ABCC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1D418ACB8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 16 * v7 + 32), (v6 + 32), 16 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1D418ACB8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB818);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

BOOL ICAccessibilityAccessibilityLargerTextSizesEnabled()
{
  v0 = [MEMORY[0x1E69DC8C0] system];
  v1 = [v0 preferredContentSizeCategory];

  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v1);
  return IsAccessibilityCategory;
}

id ThumbnailKey.init(type:accountId:objectId:preferredSize:scale:appearance:)(uint64_t a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (!a6)
  {
    v16 = 0;
    if (a8)
    {
      goto LABEL_3;
    }

LABEL_5:
    v17 = 0;
    goto LABEL_6;
  }

  v16 = sub_1D4419C14();

  if (!a8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v17 = sub_1D4419C14();

LABEL_6:
  LODWORD(v20) = 0;
  v18 = [v9 initWithType:a1 accountId:v16 objectId:v17 preferredSize:a9 scale:0 appearance:0 isRTL:a2 contentSizeCategory:a3 hasBoldText:a4 hasButtonShapes:v20 hasDarkerSystemColors:? hasBorder:?];

  return v18;
}

uint64_t sub_1D418B114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, char a12, char a13, char a14)
{
  if (a1 <= 4)
  {
    if ((a1 - 1) < 3)
    {

      swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9728);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D4435D20;
      *(inited + 32) = sub_1D43A8584(a1);
      *(inited + 40) = v29;
      sub_1D418B820(a9, a10);
      *(inited + 48) = v30;
      *(inited + 56) = v31;
      if (a6)
      {
        if (a6 != 1)
        {
          goto LABEL_60;
        }

        v34 = a11;
        v32 = 0xE400000000000000;
        v33 = 1802658116;
      }

      else
      {
        v32 = 0xE500000000000000;
        v33 = 0x746867694CLL;
        v34 = a11;
      }

      *(inited + 64) = v33;
      *(inited + 72) = v32;
      sub_1D43A8770(v34);
      *(inited + 80) = v54;
      *(inited + 88) = v55;
      v51 = a2;
      v52 = a3;
      v53 = a4;
      v56 = a5;
      v57 = inited;
LABEL_59:
      v85 = sub_1D418B944(v51, v52, v53, v56, v57);
      swift_deallocPartialClassInstance();
      return v85;
    }

    if (a1)
    {
      v89 = a2;
      v91 = a4;
      v58 = a7;
      if (a1 != 4)
      {
        goto LABEL_60;
      }

      goto LABEL_27;
    }

    swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9728);
    v46 = swift_initStackObject();
    *(v46 + 16) = xmmword_1D4435D30;
    *(v46 + 32) = 0x656D686361747441;
    *(v46 + 40) = 0xEA0000000000746ELL;
    sub_1D418B820(a9, a10);
    *(v46 + 48) = v47;
    *(v46 + 56) = v48;
    sub_1D43A8770(a11);
    *(v46 + 64) = v49;
    *(v46 + 72) = v50;
    v51 = a2;
    v52 = a3;
    v53 = a4;
LABEL_25:
    v56 = a5;
    v57 = v46;
    goto LABEL_59;
  }

  if (a1 > 7)
  {
    if ((a1 - 10) < 2)
    {
      v87 = a5;
      swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9728);
      v36 = swift_initStackObject();
      *(v36 + 16) = xmmword_1D44361A0;
      *(v36 + 32) = sub_1D43A8584(a1);
      *(v36 + 40) = v37;
      if (a6)
      {
        if (a6 != 1)
        {
          goto LABEL_60;
        }

        v40 = a7;
        v38 = 0xE400000000000000;
        v39 = 1802658116;
      }

      else
      {
        v38 = 0xE500000000000000;
        v39 = 0x746867694CLL;
        v40 = a7;
      }

      *(v36 + 48) = v39;
      *(v36 + 56) = v38;
      v71 = sub_1D43A882C(v40, a8);
      v73 = v72;

      *(v36 + 64) = v71;
      *(v36 + 72) = v73;
      v74 = 0x5472616C75676552;
      if (a12)
      {
        v74 = 0x74786554646C6F42;
      }

      v75 = 0xEB00000000747865;
      if (a12)
      {
        v75 = 0xE800000000000000;
      }

      *(v36 + 80) = v74;
      *(v36 + 88) = v75;
      v76 = 0x4372616C75676552;
      if (a13)
      {
        v76 = 0x6F4372656B726144;
      }

      v77 = 0xED000073726F6C6FLL;
      if (a13)
      {
        v77 = 0xEC00000073726F6CLL;
      }

      *(v36 + 96) = v76;
      *(v36 + 104) = v77;
      v51 = a2;
      v53 = a4;
      v52 = a3;
      goto LABEL_58;
    }

    if (a1 != 8)
    {
      goto LABEL_60;
    }

    swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9728);
    v46 = swift_initStackObject();
    *(v46 + 16) = xmmword_1D4435D30;
    *(v46 + 32) = 0x726174617641;
    *(v46 + 40) = 0xE600000000000000;
    sub_1D418B820(a9, a10);
    *(v46 + 48) = v61;
    *(v46 + 56) = v62;
    v63 = 0x726564726F426F4ELL;
    if (a14)
    {
      v63 = 0x726564726F42;
    }

    v64 = 0xE800000000000000;
    if (a14)
    {
      v64 = 0xE600000000000000;
    }

    *(v46 + 64) = v63;
    *(v46 + 72) = v64;
    v51 = a2;
    v53 = a4;
    v52 = a3;
    goto LABEL_25;
  }

  if ((a1 - 5) >= 2)
  {
    v89 = a2;
    v91 = a4;
    v58 = a7;
    if (a1 != 7)
    {
      goto LABEL_60;
    }

LABEL_27:
    v87 = a5;
    swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9728);
    v36 = swift_initStackObject();
    *(v36 + 16) = xmmword_1D44361A0;
    *(v36 + 32) = sub_1D43A8584(a1);
    *(v36 + 40) = v65;
    if (a6)
    {
      if (a6 != 1)
      {
        goto LABEL_60;
      }

      v68 = v58;
      v66 = 0xE400000000000000;
      v67 = 1802658116;
    }

    else
    {
      v66 = 0xE500000000000000;
      v67 = 0x746867694CLL;
      v68 = v58;
    }

    *(v36 + 48) = v67;
    *(v36 + 56) = v66;
    v78 = sub_1D43A882C(v68, a8);
    v80 = v79;

    *(v36 + 64) = v78;
    *(v36 + 72) = v80;
    v81 = 0x5472616C75676552;
    if (a12)
    {
      v81 = 0x74786554646C6F42;
    }

    v82 = 0xEB00000000747865;
    if (a12)
    {
      v82 = 0xE800000000000000;
    }

    *(v36 + 80) = v81;
    *(v36 + 88) = v82;
    v83 = 0x4372616C75676552;
    if (a13)
    {
      v83 = 0x6F4372656B726144;
    }

    v84 = 0xED000073726F6C6FLL;
    if (a13)
    {
      v84 = 0xEC00000073726F6CLL;
    }

    *(v36 + 96) = v83;
    *(v36 + 104) = v84;
    v51 = v89;
    v52 = a3;
    v53 = v91;
LABEL_58:
    v56 = v87;
    v57 = v36;
    goto LABEL_59;
  }

  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9728);
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_1D4435D30;
  *(v19 + 32) = sub_1D43A8584(a1);
  *(v19 + 40) = v20;
  if (!a6)
  {
    v21 = 0xE500000000000000;
    v22 = 0x746867694CLL;
LABEL_31:
    *(v19 + 48) = v22;
    *(v19 + 56) = v21;
    v69 = 0x4372616C75676552;
    if (a13)
    {
      v69 = 0x6F4372656B726144;
    }

    v70 = 0xED000073726F6C6FLL;
    if (a13)
    {
      v70 = 0xEC00000073726F6CLL;
    }

    *(v19 + 64) = v69;
    *(v19 + 72) = v70;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v56 = 0;
    v57 = v19;
    goto LABEL_59;
  }

  if (a6 == 1)
  {
    v21 = 0xE400000000000000;
    v22 = 1802658116;
    goto LABEL_31;
  }

LABEL_60:
  result = sub_1D441ABC4();
  __break(1u);
  return result;
}

void sub_1D418B820(double a1, double a2)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a1 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (a1 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1D441AD44();
  MEMORY[0x1DA6D5730](120, 0xE100000000000000);
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (a2 < 9.22337204e18)
  {
    v3 = sub_1D441AD44();
    MEMORY[0x1DA6D5730](v3);

    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_1D418B944(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 16);
  if (v5)
  {
    v30 = result;
    v10 = 0;
    v11 = a5 + 40;
    v12 = MEMORY[0x1E69E7CC0];
LABEL_3:
    v13 = (v11 + 16 * v10);
    while (1)
    {
      if (v5 == v10)
      {

        v32 = v12;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9768);
        sub_1D418BC58();
        v21 = sub_1D4419BB4();
        v23 = v22;

        v24 = type metadata accessor for ThumbnailKey();
        v25 = objc_allocWithZone(v24);
        v26 = &v25[OBJC_IVAR___ICThumbnailKey_accountId];
        *v26 = v30;
        *(v26 + 1) = a2;
        v27 = &v25[OBJC_IVAR___ICThumbnailKey_objectId];
        *v27 = a3;
        *(v27 + 1) = a4;
        v28 = &v25[OBJC_IVAR___ICThumbnailKey_thumbnailId];
        *v28 = v21;
        v28[1] = v23;
        v31.receiver = v25;
        v31.super_class = v24;
        return objc_msgSendSuper2(&v31, sel_init);
      }

      if (v10 >= *(a5 + 16))
      {
        break;
      }

      ++v10;
      v14 = *(v13 - 1);
      v15 = *v13;
      v13 += 2;
      v16 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v16 = v14 & 0xFFFFFFFFFFFFLL;
      }

      if (v16)
      {

        result = swift_isUniquelyReferenced_nonNull_native();
        v32 = v12;
        v29 = a3;
        v17 = a4;
        if ((result & 1) == 0)
        {
          result = sub_1D418BC38(0, *(v12 + 16) + 1, 1);
          v12 = v32;
        }

        v19 = *(v12 + 16);
        v18 = *(v12 + 24);
        if (v19 >= v18 >> 1)
        {
          result = sub_1D418BC38((v18 > 1), v19 + 1, 1);
          v12 = v32;
        }

        *(v12 + 16) = v19 + 1;
        v20 = v12 + 16 * v19;
        *(v20 + 32) = v14;
        *(v20 + 40) = v15;
        a4 = v17;
        a3 = v29;
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_1D418BB2C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9728);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D418BC38(char *a1, int64_t a2, char a3)
{
  result = sub_1D418BB2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_1D418BC58()
{
  result = qword_1EDE32A60;
  if (!qword_1EDE32A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C9768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE32A60);
  }

  return result;
}

uint64_t sub_1D418BF04(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1D418BF98()
{
  v0 = [objc_opt_self() defaultManager];
  v1 = objc_allocWithZone(type metadata accessor for ThumbnailCache());
  result = sub_1D418BFF4(v0);
  qword_1EDE333A0 = result;
  return result;
}

id sub_1D418BFF4(uint64_t a1)
{
  v2 = v1;
  v21 = a1;
  ObjectType = swift_getObjectType();
  v19 = sub_1D441A254();
  MEMORY[0x1EEE9AC00](v19);
  v18[1] = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D441A2B4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D4419484();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR___ICThumbnailCache_cache;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB798);
  swift_allocObject();
  *&v1[v12] = sub_1D4417D14();
  v18[0] = OBJC_IVAR___ICThumbnailCache_cacheKeyQueue;
  sub_1D41766C0(0, &qword_1EDE33D70);
  if (qword_1EDE333B0 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, qword_1EDE333B8);
  (*(v9 + 16))(v11, v13, v8);
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8098], v4);
  v14 = MEMORY[0x1E69E7CC0];
  v23 = MEMORY[0x1E69E7CC0];
  sub_1D418D5E4(&qword_1EDE33C90, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9A38);
  sub_1D418D674(qword_1EDE33CA8, &qword_1EC7C9A38);
  sub_1D441A814();
  *&v1[v18[0]] = sub_1D441A314();
  v15 = OBJC_IVAR___ICThumbnailCache_objectIdentifiersToCacheKeys;
  *&v2[v15] = sub_1D418D988(v14);
  type metadata accessor for PersistedThumbnailCache();
  v16 = swift_allocObject();
  *(v16 + 16) = v21;
  *&v2[OBJC_IVAR___ICThumbnailCache_persistedCache] = v16;
  v22.receiver = v2;
  v22.super_class = ObjectType;
  return objc_msgSendSuper2(&v22, sel_init);
}

void sub_1D418C3D4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB788);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (v9 - v4);
  if ([a1 cacheLevel] >= 1)
  {
    v6 = [a1 uniqueKey];
    v9[0] = v6;
    sub_1D4417D44();

    if (!v9[1] && [a1 cacheLevel] >= 2)
    {
      v7 = [a1 uniqueKey];
      sub_1D43434F0(v7, v5);

      if (!v1)
      {
        v8 = type metadata accessor for PersistedThumbnail();
        if ((*(*(v8 - 8) + 48))(v5, 1, v8) == 1)
        {
          sub_1D41769C4(v5, &qword_1EC7CB788);
        }

        else
        {
          sub_1D437BE9C();
          sub_1D437EDBC(v5, type metadata accessor for PersistedThumbnail);
        }
      }
    }
  }
}

uint64_t type metadata accessor for PersistedThumbnail()
{
  result = qword_1EDE33288;
  if (!qword_1EDE33288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D418C690()
{
  type metadata accessor for ThumbnailKey();
  if (v0 <= 0x3F)
  {
    sub_1D4417434();
    if (v1 <= 0x3F)
    {
      sub_1D41873A4();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Appearances(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t ThumbnailKey.hash.getter()
{
  sub_1D441AF14();
  if (*(v0 + OBJC_IVAR___ICThumbnailKey_accountId + 8))
  {
    sub_1D441AED4();
    sub_1D4419CD4();
  }

  else
  {
    sub_1D441AED4();
  }

  if (*(v0 + OBJC_IVAR___ICThumbnailKey_objectId + 8))
  {
    sub_1D441AED4();
    sub_1D4419CD4();
  }

  else
  {
    sub_1D441AED4();
  }

  sub_1D4419CD4();
  return sub_1D441AEF4();
}

id ThumbnailKey.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v5 = *(v1 + OBJC_IVAR___ICThumbnailKey_accountId);
  v4 = *(v1 + OBJC_IVAR___ICThumbnailKey_accountId + 8);
  v7 = *(v1 + OBJC_IVAR___ICThumbnailKey_objectId);
  v6 = *(v1 + OBJC_IVAR___ICThumbnailKey_objectId + 8);
  v9 = *(v1 + OBJC_IVAR___ICThumbnailKey_thumbnailId);
  v8 = *(v1 + OBJC_IVAR___ICThumbnailKey_thumbnailId + 8);
  v10 = objc_allocWithZone(ObjectType);
  v11 = &v10[OBJC_IVAR___ICThumbnailKey_accountId];
  *v11 = v5;
  *(v11 + 1) = v4;
  v12 = &v10[OBJC_IVAR___ICThumbnailKey_objectId];
  *v12 = v7;
  *(v12 + 1) = v6;
  v13 = &v10[OBJC_IVAR___ICThumbnailKey_thumbnailId];
  *v13 = v9;
  *(v13 + 1) = v8;
  v15.receiver = v10;
  v15.super_class = ObjectType;

  result = objc_msgSendSuper2(&v15, sel_init);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t ThumbnailKey.isEqual(_:)(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9720);
  v4 = sub_1D441A774();
  swift_unknownObjectRelease();
  if (v4 == v2)
  {
    v8 = 1;
    return v8 & 1;
  }

  sub_1D418CFF4(a1, v13);
  if (!v14)
  {
    sub_1D418D074(v13);
    goto LABEL_25;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_25:
    v8 = 0;
    return v8 & 1;
  }

  v5 = *(v2 + OBJC_IVAR___ICThumbnailKey_accountId + 8);
  v6 = *&v12[OBJC_IVAR___ICThumbnailKey_accountId + 8];
  if (v5)
  {
    if (!v6)
    {
      goto LABEL_24;
    }

    v7 = *(v2 + OBJC_IVAR___ICThumbnailKey_accountId) == *&v12[OBJC_IVAR___ICThumbnailKey_accountId] && v5 == v6;
    if (!v7 && (sub_1D441AD84() & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (v6)
  {
    goto LABEL_24;
  }

  v9 = *(v2 + OBJC_IVAR___ICThumbnailKey_objectId + 8);
  v10 = *&v12[OBJC_IVAR___ICThumbnailKey_objectId + 8];
  if (v9)
  {
    if (v10 && (*(v2 + OBJC_IVAR___ICThumbnailKey_objectId) == *&v12[OBJC_IVAR___ICThumbnailKey_objectId] && v9 == v10 || (sub_1D441AD84() & 1) != 0))
    {
      goto LABEL_20;
    }

LABEL_24:

    goto LABEL_25;
  }

  if (v10)
  {
    goto LABEL_24;
  }

LABEL_20:
  if (*(v2 + OBJC_IVAR___ICThumbnailKey_thumbnailId) == *&v12[OBJC_IVAR___ICThumbnailKey_thumbnailId] && *(v2 + OBJC_IVAR___ICThumbnailKey_thumbnailId + 8) == *&v12[OBJC_IVAR___ICThumbnailKey_thumbnailId + 8])
  {

    v8 = 1;
  }

  else
  {
    v8 = sub_1D441AD84();
  }

  return v8 & 1;
}

uint64_t sub_1D418CFF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9720);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D418D074(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9720);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void ThumbnailCache.subscript.setter(void *a1, void *a2)
{
  if (a1 && (v4 = [a1 image]) != 0)
  {

    sub_1D418D494(a1, a2);
    v5 = [a1 associatedObjectIdentifiers];
    v6 = sub_1D441A064();

    v7 = [a2 uniqueKey];
    v8 = *&v2[OBJC_IVAR___ICThumbnailCache_cacheKeyQueue];
    v9 = swift_allocObject();
    v9[2] = v6;
    v9[3] = v2;
    v9[4] = v7;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1D418D6CC;
    *(v10 + 24) = v9;
    aBlock[4] = sub_1D418D6E0;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D418D6C8;
    aBlock[3] = &block_descriptor_17;
    v11 = _Block_copy(aBlock);

    v12 = v2;
    v13 = v7;

    dispatch_sync(v8, v11);
    _Block_release(v11);
    LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

    if (v8)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1D437AF0C(a2);
    v14 = [a2 uniqueKey];
    sub_1D437AFE0(v14);
  }
}

void sub_1D418D494(void *a1, void *a2)
{
  v5 = type metadata accessor for PersistedThumbnail();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ([a2 cacheLevel] >= 1)
  {
    v8 = [a2 uniqueKey];
    v10[3] = a1;
    v10[1] = v8;
    v9 = a1;
    sub_1D4417D54();
    if ([a2 cacheLevel] >= 2)
    {
      sub_1D437B6DC(v9, v7);
      if (!v2)
      {
        sub_1D4344174(v7);
        sub_1D437EDBC(v7, type metadata accessor for PersistedThumbnail);
      }
    }
  }
}

uint64_t sub_1D418D5E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D418D62C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D418D674(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D418D708(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v32 = OBJC_IVAR___ICThumbnailCache_objectIdentifiersToCacheKeys;
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  while (v6)
  {
LABEL_10:
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v6)))));
    v13 = *v11;
    v12 = v11[1];
    swift_beginAccess();

    sub_1D417BCA0(v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *(a2 + v32);
    v15 = v34;
    *(a2 + v32) = 0x8000000000000000;
    v17 = sub_1D418DA8C(v13, v12);
    v18 = v15[2];
    v19 = (v16 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      goto LABEL_22;
    }

    v21 = v16;
    if (v15[3] >= v20)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D42D59A0();
        v15 = v34;
      }
    }

    else
    {
      sub_1D418DB04(v20, isUniquelyReferenced_nonNull_native);
      v15 = v34;
      v22 = sub_1D418DA8C(v13, v12);
      if ((v21 & 1) != (v23 & 1))
      {
        goto LABEL_24;
      }

      v17 = v22;
    }

    *(a2 + v32) = v15;
    if ((v21 & 1) == 0)
    {
      sub_1D418DE64(&v34);
      v24 = v34;
      v15[(v17 >> 6) + 8] |= 1 << v17;
      v25 = (v15[6] + 16 * v17);
      *v25 = v13;
      v25[1] = v12;
      *(v15[7] + 8 * v17) = v24;
      v26 = v15[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_23;
      }

      v15[2] = v28;
    }

    v6 &= v6 - 1;
    sub_1D418DED8(&v34, a3);
    swift_endAccess();

    v8 = sub_1D418DE64;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return sub_1D417BCA0(v8);
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1D441ADE4();
  __break(1u);
  return result;
}

unint64_t sub_1D418D988(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C97C8);
    v3 = sub_1D441AC24();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D418DA8C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D418DA8C(uint64_t a1, uint64_t a2)
{
  sub_1D441AEB4();
  sub_1D4419CD4();
  v4 = sub_1D441AF04();

  return sub_1D418DDAC(a1, a2, v4);
}

uint64_t sub_1D418DB04(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C97C8);
  v34 = a2;
  result = sub_1D441AC04();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1D441AEB4();
      sub_1D4419CD4();
      result = sub_1D441AF04();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_1D418DDAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1D441AD84())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void sub_1D418DE64(void *a1@<X8>)
{
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    if (sub_1D441A8C4())
    {
      sub_1D42D6D2C(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v2 = MEMORY[0x1E69E7CD0];
    }

    *a1 = v2;
  }

  else
  {
    *a1 = MEMORY[0x1E69E7CD0];
  }
}

uint64_t sub_1D418DED8(void *a1, void *a2)
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

    v9 = sub_1D441A8D4();

    if (v9)
    {

      type metadata accessor for ThumbnailKey();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1D441A8C4();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1D43C7520(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1D43C8818(v20 + 1, &qword_1EC7C97D0);
    }

    v18 = v8;
    sub_1D43C8D80(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for ThumbnailKey();
  v11 = sub_1D441A5D4();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1D418E30C(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1D441A5E4();

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

uint64_t sub_1D418E100(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_1D441A974();
  v6 = result;
  if (*(v4 + 16))
  {
    v25 = v2;
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v4 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_1D441A5D4();
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v3 = v25;
        goto LABEL_26;
      }

      v16 = *(v4 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v3 = v6;
  }

  return result;
}

void sub_1D418E30C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D43C8818(v6 + 1, &qword_1EC7C97D0);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1D43CA648(&qword_1EC7C97D0);
      goto LABEL_12;
    }

    sub_1D418E100(v6 + 1, &qword_1EC7C97D0);
  }

  v8 = *v3;
  v9 = sub_1D441A5D4();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for ThumbnailKey();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1D441A5E4();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1D441ADD4();
  __break(1u);
}

uint64_t objectdestroyTm()
{

  if (*(v0 + 64))
  {
  }

  if (*(v0 + 80))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t objectdestroyTm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroyTm_1()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t objectdestroyTm_2()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroyTm_3()
{
  v1 = (type metadata accessor for GroupedActivityStreamItem(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_1D4417434();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = v0 + v3 + v1[8];
  type metadata accessor for GroupedActivityStreamItem.Activities(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload > 2)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (EnumCaseMultiPayload == 3)
  {
LABEL_8:

    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBD38) + 48);
    v10 = sub_1D4417954();
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 4 || EnumCaseMultiPayload == 5)
  {
    v8 = sub_1D4417954();
    (*(*(v8 - 8) + 8))(v6, v8);
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBD30) + 64);
    v10 = sub_1D4417C84();
LABEL_9:
    (*(*(v10 - 8) + 8))(v6 + v9, v10);
  }

LABEL_10:

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_4()
{
  v1 = sub_1D4416E44();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroyTm_5()
{
  if (*(v0 + 64))
  {
  }

  if (*(v0 + 80))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t objectdestroyTm_6()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void sub_1D418EF1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1D418F798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

UIMenu __swiftcall ActionMenuProvider.makeMenu(deferredChildren:)(Swift::Bool deferredChildren)
{
  v3 = v2;
  v4 = v1;
  if (deferredChildren)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAE70);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1D4438490;
    *(v5 + 32) = (*(v3 + 64))(v4, v3);
  }

  else
  {
    (*(v2 + 40))();
  }

  sub_1D41766C0(0, &qword_1EDE32430);
  (*(v3 + 32))(v4, v3);
  return sub_1D441A5A4();
}

uint64_t NSTextElement.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA4F0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - v3;
  v5 = NSTextElement.ttParagraphStyle.getter();
  if (v5)
  {
    v6 = v5;
    v7 = [v5 uuid];

    if (v7)
    {
      sub_1D4417474();

      v8 = sub_1D4417494();
      (*(*(v8 - 8) + 56))(v4, 0, 1, v8);
    }

    else
    {
      v12 = sub_1D4417494();
      (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
    }

    return sub_1D417E588(v4, a1);
  }

  else
  {
    v9 = sub_1D4417494();
    v10 = *(*(v9 - 8) + 56);

    return v10(a1, 1, 1, v9);
  }
}

uint64_t NSTextElement.ttParagraphStyle.getter()
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v2 = result;
    v3 = v0;
    v4 = [v2 elementRange];
    if (v4)
    {
      v5 = v4;
      if (([v4 isEmpty] & 1) != 0 || (v6 = objc_msgSend(v2, sel_textContentManager)) == 0)
      {
      }

      else
      {
        v7 = v6;
        objc_opt_self();
        v8 = swift_dynamicCastObjCClass();
        if (v8)
        {
          v9 = v8;
          v10 = v7;
          v11 = [v10 documentRange];
          v12 = [v11 location];

          v13 = [v10 offsetFromLocation:v12 toLocation:{objc_msgSend(v5, sel_location)}];
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          v14 = [v9 textStorage];
          v15 = [v14 attribute:*MEMORY[0x1E69B7600] atIndex:v13 effectiveRange:0];

          if (v15)
          {
            sub_1D441A804();

            swift_unknownObjectRelease();
          }

          else
          {

            v17 = 0u;
            v18 = 0u;
          }

          v19[0] = v17;
          v19[1] = v18;
          if (*(&v18 + 1))
          {
            sub_1D419070C();
            if (swift_dynamicCast())
            {
              return v16;
            }

            else
            {
              return 0;
            }
          }

          sub_1D418D074(v19);
        }

        else
        {
        }
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

unint64_t sub_1D419070C()
{
  result = qword_1EDE33C88;
  if (!qword_1EDE33C88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE33C88);
  }

  return result;
}

BOOL sub_1D419089C(uint64_t a1)
{

  sub_1D441A2E4();

  v2 = sub_1D4190A40(a1, v9);

  if (v2)
  {

    sub_1D441A2E4();

    if (*(v8 + 16))
    {
      v3 = sub_1D417DAA4(a1);
      if (v4)
      {
        v5 = *(*(v8 + 56) + 16 * v3 + 8);

        v6 = *(v5 + 16);

        return v6 != 0;
      }
    }
  }

  return 0;
}

uint64_t sub_1D4190A40(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D4417494();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1D417A7A4(&qword_1EDE33D40, MEMORY[0x1E69695A8]), v7 = sub_1D4419B84(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_1D417A7A4(&unk_1EDE33D30, MEMORY[0x1E69695A8]);
      v15 = sub_1D4419BE4();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t ICLanguageUsesSpaces(void *a1)
{
  v1 = a1;
  if (ICLanguageUsesSpaces_once != -1)
  {
    ICLanguageUsesSpaces_cold_1();
  }

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (v1)
  {
    v2 = ICLanguageUsesSpaces_sLanguagesWithoutSpaces;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __ICLanguageUsesSpaces_block_invoke_2;
    v5[3] = &unk_1E846D670;
    v7 = &v8;
    v6 = v1;
    [v2 enumerateObjectsUsingBlock:v5];

    v3 = *(v9 + 24) ^ 1;
  }

  else
  {
    v3 = 1;
  }

  _Block_object_dispose(&v8, 8);

  return v3 & 1;
}

void sub_1D4191228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __ICLanguageUsesSpaces_block_invoke()
{
  ICLanguageUsesSpaces_sLanguagesWithoutSpaces = [MEMORY[0x1E695DFD8] setWithObjects:{@"zh", @"yue", @"ja", @"th", 0}];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __ICLanguageUsesSpaces_block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) hasPrefix:a2];
  *(*(*(a1 + 40) + 8) + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a3 = 1;
  }

  return result;
}

void sub_1D4191520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Swift::Void __swiftcall ICCalculateDocumentController.scheduleUpdate(affectChangeCounts:isHighPriority:)(Swift::Bool affectChangeCounts, Swift::Bool isHighPriority)
{
  if ([v2 isCalculateMathEnabled])
  {
    if (affectChangeCounts)
    {
      v2[OBJC_IVAR___ICCalculateDocumentController_nextUpdateAffectsChangeCounts] = 1;
    }

    if (isHighPriority || (sub_1D43232B4(), (v5 & 1) != 0))
    {
      v6 = sub_1D41919D8();
    }

    else
    {
      v6 = sub_1D4323224();
    }

    v7 = v6;
    [v6 requestFire];
  }
}

id sub_1D41919D8()
{
  v1 = OBJC_IVAR___ICCalculateDocumentController____lazy_storage___highPriorityDelayer;
  v2 = *(v0 + OBJC_IVAR___ICCalculateDocumentController____lazy_storage___highPriorityDelayer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___ICCalculateDocumentController____lazy_storage___highPriorityDelayer);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69B7AB0]) initWithTarget:v0 selector:sel_performUpdate delay:0 maximumDelay:0.05 callOnMainThread:0.2];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1D4191B38()
{
  swift_unknownObjectWeakInit();
  v1 = &v0[OBJC_IVAR___ICCalculateAccessibilityController_isVoiceOverEnabledObservation];
  *v1 = 0u;
  v1[1] = 0u;
  v2 = &v0[OBJC_IVAR___ICCalculateAccessibilityController_isSwitchControlEnabledObservation];
  *v2 = 0u;
  v2[1] = 0u;
  v3 = &v0[OBJC_IVAR___ICCalculateAccessibilityController_lastAnnouncement];
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  v0[OBJC_IVAR___ICCalculateAccessibilityController_hasInitializedStateCache] = 0;
  v4 = MEMORY[0x1E69E7CD0];
  *&v0[OBJC_IVAR___ICCalculateAccessibilityController_stateErrorsCache] = MEMORY[0x1E69E7CD0];
  *&v0[OBJC_IVAR___ICCalculateAccessibilityController_stateResultsCache] = v4;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v7.receiver = v0;
  v7.super_class = ICCalculateAccessibilityController;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  sub_1D4191C48();
  if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning())
  {
    sub_1D438B610();
  }

  return v5;
}

uint64_t sub_1D4191C48()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  v3 = *MEMORY[0x1E69DDA58];
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = sub_1D4392878;
  v20 = v4;
  aBlock = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1D438B4B8;
  ObjectType = &block_descriptor_35;
  v5 = _Block_copy(&aBlock);

  v6 = [v2 addObserverForName:v3 object:0 queue:0 usingBlock:v5];
  _Block_release(v5);

  ObjectType = swift_getObjectType();
  aBlock = v6;
  v7 = OBJC_IVAR___ICCalculateAccessibilityController_isVoiceOverEnabledObservation;
  swift_beginAccess();
  sub_1D4191F30(&aBlock, v0 + v7);
  swift_endAccess();
  v8 = [v1 defaultCenter];
  v9 = *MEMORY[0x1E69DD960];
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = sub_1D43927E4;
  v20 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1D438B4B8;
  ObjectType = &block_descriptor_39;
  v11 = _Block_copy(&aBlock);

  v12 = [v8 addObserverForName:v9 object:0 queue:0 usingBlock:v11];
  _Block_release(v11);

  ObjectType = swift_getObjectType();
  aBlock = v12;
  v13 = OBJC_IVAR___ICCalculateAccessibilityController_isSwitchControlEnabledObservation;
  swift_beginAccess();
  sub_1D4191F30(&aBlock, v0 + v13);
  return swift_endAccess();
}

uint64_t sub_1D4191EE8()
{
  MEMORY[0x1DA6D8750](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D4191F30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9720);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _s7NotesUI32ICNoteTimelineControllerInternalC09ascendingD8Sections3for5dates13referenceDate9directionSaySo0cD7SectionCGSaySo17NSManagedObjectIDCG_Say10Foundation0L0VGAQSo35ICFolderCustomNoteSortTypeDirectionVtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v126 = a4;
  v139 = a2;
  v127 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C98F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v148 = &v114 - v6;
  v7 = sub_1D4417434();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v125 = &v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v137 = &v114 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v138 = &v114 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v128 = &v114 - v15;
  v16 = sub_1D4416F64();
  v134 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v147 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v114 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC118);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v114 - v22;
  v24 = sub_1D4417544();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v136 = &v114 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_1D41932B8(a3);
  v27 = qword_1EDE32D40;
  v149 = v151;

  if (v27 != -1)
  {
    goto LABEL_134;
  }

LABEL_2:
  v28 = __swift_project_value_buffer(v21, qword_1EDE32D48);
  swift_beginAccess();
  sub_1D419456C(v28, v23);
  v29 = *(v25 + 48);
  v30 = v29(v23, 1, v24);
  v133 = a3;
  v144 = v8;
  v145 = v7;
  v132 = v16;
  v131 = v20;
  v130 = v24;
  v129 = v25;
  if (v30 == 1)
  {
    sub_1D4417514();
    if (v29(v23, 1, v24) != 1)
    {
      sub_1D41769C4(v23, &qword_1EC7CC118);
    }
  }

  else
  {
    (*(v25 + 32))(v136, v23, v24);
  }

  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC120);
  v32 = sub_1D4417534();
  v33 = *(v32 - 8);
  v34 = *(v33 + 72);
  v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v146 = v31;
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1D44364A0;
  v37 = *(v33 + 104);
  (v37)(v36 + v35, *MEMORY[0x1E6969A78], v32);
  v38 = *MEMORY[0x1E6969A68];
  v143 = v34;
  LODWORD(v142) = v38;
  v37(&v34[v36 + v35]);
  sub_1D41945DC(v36);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v39 = v131;
  sub_1D44174D4();

  v40 = *(v149 + 16);

  if (!v40)
  {
    v49 = v129;
    v43 = v136;
    (*(v134 + 8))(v39, v132);
    goto LABEL_14;
  }

  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1D4435D40;
  (v37)(v41 + v35, v142, v32);
  sub_1D41945DC(v41);
  swift_setDeallocating();
  (*(v33 + 8))(v41 + v35, v32);
  swift_deallocClassInstance();
  v42 = v147;
  v43 = v136;
  sub_1D44174D4();

  v44 = v148;
  sub_1D44174E4();
  v45 = v134 + 8;
  v46 = v42;
  v47 = v132;
  v124 = *(v134 + 8);
  v124(v46, v132);
  v20 = v144;
  v48 = v145;
  if (v144[6](v44, 1, v145) == 1)
  {
    sub_1D41769C4(v44, &qword_1EC7C98F0);
    v49 = v129;
    goto LABEL_13;
  }

  v134 = v45;
  v50 = v128;
  (*(v20 + 4))(v128, v44, v48);
  v148 = sub_1D4416F44();
  if (v51 & 1) != 0 || (v147 = sub_1D4416F34(), (v52))
  {
    (*(v20 + 1))(v50, v48);
    v49 = v129;
    v43 = v136;
LABEL_13:
    v124(v39, v47);
LABEL_14:
    (*(v49 + 8))(v43, v130);
    v53 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v53;
  }

  sub_1D4417284();
  v53 = MEMORY[0x1E69E7CC0];
  v150 = MEMORY[0x1E69E7CC0];
  v56 = *(v139 + 16);
  if (!v56)
  {
LABEL_129:
    (*(v20 + 1))(v50, v48);
    v124(v39, v47);
    (*(v129 + 8))(v136, v130);
    goto LABEL_15;
  }

  v57 = v55;
  v58 = 0;
  v59 = 0;
  v142 = (v20 + 8);
  v143 = v20 + 16;
  if (v127 < 0)
  {
    v60 = v127;
  }

  else
  {
    v60 = v127 & 0xFFFFFFFFFFFFFF8;
  }

  v116 = v127 & 0xC000000000000001;
  v120 = v127 & 0xFFFFFFFFFFFFFF8;
  v115 = (v127 & 0xFFFFFFFFFFFFFF8) + 32;
  v23 = v56;
  v141 = v56;
  v118 = (v56 - 1);
  v117 = v60;
  while (2)
  {
    v61 = v139;
    v149 = v58;
LABEL_23:
    v146 = v59;
    while (1)
    {
      v62 = v151;
      if (v59 < *(v151 + 2))
      {
        if (v149 < 0)
        {
          goto LABEL_126;
        }

        v25 = v61 + ((v20[80] + 32) & ~v20[80]);
        a3 = *(v20 + 9);
        v21 = *(v20 + 2);
        v63 = v138;
        v20 = v145;
        v21(v138, v25 + a3 * v149, v145);
        v59 = v146;
        if (v146 < 0)
        {
          goto LABEL_127;
        }

        v64 = &v62[56 * v146];
        v66 = *(v64 + 7);
        v65 = *(v64 + 8);
        v16 = v64[72];
        v67 = v63;
        sub_1D4417284();
        v61 = v139;
        v69 = v68;
        v70 = v67;
        v23 = v141;
        v140 = *v142;
        result = (v140)(v70, v20);
        v20 = v144;
        if (v66 <= v69)
        {
          break;
        }
      }

LABEL_32:
      if (v59 < *(v62 + 2) - 1)
      {
        ++v59;
        goto LABEL_23;
      }

      if (v149 >= v23)
      {
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
LABEL_128:
        v53 = v150;
        v48 = v145;
        v47 = v132;
        v39 = v131;
        v50 = v128;
        goto LABEL_129;
      }

      sub_1D419490C(&v151, v61 + ((v20[80] + 32) & ~v20[80]) + *(v20 + 9) * v149, v148, v147, v57);
    }

    if (v16)
    {
      v59 = v146;
      if (v69 != INFINITY)
      {
        goto LABEL_35;
      }

      goto LABEL_32;
    }

    v59 = v146;
    if (v69 >= v65)
    {
      goto LABEL_32;
    }

LABEL_35:
    if (v59 >= *(v62 + 2))
    {
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
      goto LABEL_138;
    }

    v121 = *(v64 + 4);
    v123 = *(v64 + 6);
    v71 = *(v64 + 7);
    v72 = *(v64 + 8);
    v135 = v64[72];
    v122 = *(v64 + 10);
    v24 = v118;
    v8 = v149;
    v119 = v72;
    if (v149 < v118)
    {
      v73 = v72;

      v7 = v24;
      while (1)
      {
        if (__OFSUB__(v7, v8))
        {
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          swift_once();
          goto LABEL_2;
        }

        v16 = v8 + (v7 - v8) / 2;
        if (__OFADD__(v8, (v7 - v8) / 2))
        {
          goto LABEL_131;
        }

        if (v16 >= v23)
        {
          goto LABEL_132;
        }

        v23 = v137;
        v74 = v145;
        v21(v137, v25 + v16 * a3, v145);
        sub_1D4417284();
        v76 = v75;
        v77 = v74;
        v20 = v144;
        result = (v140)(v23, v77);
        if (v71 > v76)
        {
          break;
        }

        if (v135)
        {
          if (v76 == INFINITY)
          {
            break;
          }
        }

        else if (v76 >= v73)
        {
          break;
        }

        v8 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_133;
        }

LABEL_39:
        v23 = v141;
        if (v8 >= v7)
        {
          goto LABEL_52;
        }
      }

      v7 = v16 - 1;
      goto LABEL_39;
    }

    v7 = v24;
LABEL_52:
    if (v7 < v8)
    {
      v8 = v7;
    }

    if (v8 >= v23)
    {
      goto LABEL_136;
    }

    v78 = v25 + v8 * a3;
    v79 = v125;
    v80 = v145;
    v21(v125, v78, v145);
    sub_1D4417284();
    v82 = v81;
    result = (v140)(v79, v80);
    v83 = v127;
    v84 = v149;
    if (v71 > v82)
    {
      goto LABEL_56;
    }

    if (v135)
    {
      if (v82 != INFINITY)
      {
        goto LABEL_57;
      }
    }

    else if (v82 < v119)
    {
      goto LABEL_57;
    }

LABEL_56:
    --v8;
LABEL_57:
    v140 = v8;
    if (!v126 || v149 == v8)
    {
      if (v8 < v149)
      {
LABEL_138:
        __break(1u);
        goto LABEL_139;
      }

      v86 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
LABEL_140:
        __break(1u);
        goto LABEL_141;
      }

      if (v127 >> 62)
      {
        result = sub_1D441A8C4();
        if (result < v84)
        {
          goto LABEL_153;
        }

        result = sub_1D441A8C4();
        if (result < v86)
        {
          goto LABEL_145;
        }
      }

      else
      {
        result = *(v120 + 16);
        if (result < v149)
        {
          goto LABEL_143;
        }

        if (result < v86)
        {
          goto LABEL_145;
        }
      }

      if (v86 < 0)
      {
        goto LABEL_146;
      }

      if (!v116)
      {
        goto LABEL_78;
      }

      if (v86 < v84)
      {
        goto LABEL_149;
      }

      if (v84 != v86)
      {
        sub_1D41766C0(0, &qword_1EDE32768);

        v87 = v84;
        do
        {
          v88 = v87 + 1;
          sub_1D441A9F4();
          v87 = v88;
        }

        while (v86 != v88);
      }

      else
      {
LABEL_78:
      }

      if (v83 >> 62)
      {

        v90 = sub_1D441ABE4();
        v84 = v92;
        v89 = v93;
        if ((v93 & 1) == 0)
        {
          goto LABEL_90;
        }
      }

      else
      {
        v89 = (2 * v86) | 1;
        v90 = v120;
        v91 = v115;
        if ((v89 & 1) == 0)
        {
          goto LABEL_90;
        }
      }

      v149 = v91;
      sub_1D441AD94();
      swift_unknownObjectRetain_n();
      v94 = swift_dynamicCastClass();
      if (!v94)
      {
        swift_unknownObjectRelease();
        v94 = MEMORY[0x1E69E7CC0];
      }

      v95 = *(v94 + 16);

      if (__OFSUB__(v89 >> 1, v84))
      {
        goto LABEL_151;
      }

      if (v95 == (v89 >> 1) - v84)
      {
        v96 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (!v96)
        {
          swift_unknownObjectRelease();
        }

LABEL_112:
        v108 = objc_allocWithZone(ICNoteTimelineSectionIdentifier);
        v109 = sub_1D44173A4();
        v110 = sub_1D4419C14();
        v111 = [v108 initWithTimelineSectionType:v123 referenceDate:v109 title:v110 sortOrder:v122];

        v112 = objc_allocWithZone(ICNoteTimelineSection);
        sub_1D41766C0(0, &qword_1EDE32768);
        v113 = sub_1D4419E24();

        [v112 initWithIdentifier:v111 objectIDs:v113];

        MEMORY[0x1DA6D5820]();
        if (*((v150 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v150 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D4419E94();
        }

        result = sub_1D4419EB4();
        v58 = v140 + 1;
        if (!__OFADD__(v140, 1))
        {
          v59 = v146 + 1;
          v23 = v141;
          if (v141 > v58)
          {
            continue;
          }

          goto LABEL_128;
        }

        goto LABEL_137;
      }

      swift_unknownObjectRelease();
      v91 = v149;
LABEL_90:
      sub_1D43FD0B8(v90, v91, v84, v89);
      swift_unknownObjectRelease();
      goto LABEL_112;
    }

    break;
  }

  if (v8 < v149)
  {
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  v85 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

  if (v127 >> 62)
  {
    result = sub_1D441A8C4();
    if (result < v84)
    {
      goto LABEL_152;
    }

    result = sub_1D441A8C4();
    if (result < v85)
    {
      goto LABEL_142;
    }

LABEL_64:
    if (v85 < 0)
    {
      goto LABEL_147;
    }

    if (!v116)
    {
      goto LABEL_68;
    }

    if (v85 < v84)
    {
      goto LABEL_148;
    }

    if (v84 != v85)
    {
      sub_1D41766C0(0, &qword_1EDE32768);

      v97 = v84;
      do
      {
        v98 = v97 + 1;
        sub_1D441A9F4();
        v97 = v98;
      }

      while (v85 != v98);
    }

    else
    {
LABEL_68:
    }

    if (v83 >> 62)
    {

      v100 = sub_1D441ABE4();
      v84 = v102;
      v99 = v103;
      if ((v103 & 1) == 0)
      {
        goto LABEL_103;
      }
    }

    else
    {
      v99 = (2 * v85) | 1;
      v100 = v120;
      v101 = v115;
      if ((v99 & 1) == 0)
      {
        goto LABEL_103;
      }
    }

    v149 = v101;
    sub_1D441AD94();
    swift_unknownObjectRetain_n();
    v106 = swift_dynamicCastClass();
    if (!v106)
    {
      swift_unknownObjectRelease();
      v106 = MEMORY[0x1E69E7CC0];
    }

    v107 = *(v106 + 16);

    if (__OFSUB__(v99 >> 1, v84))
    {
      goto LABEL_150;
    }

    if (v107 == (v99 >> 1) - v84)
    {
      v105 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v105)
      {
LABEL_111:
        sub_1D43DAD50(v105);
        goto LABEL_112;
      }

      v105 = MEMORY[0x1E69E7CC0];
LABEL_110:
      swift_unknownObjectRelease();
      goto LABEL_111;
    }

    swift_unknownObjectRelease();
    v101 = v149;
LABEL_103:
    sub_1D43FD0B8(v100, v101, v84, v99);
    v105 = v104;
    goto LABEL_110;
  }

  result = *(v120 + 16);
  if (result >= v149)
  {
    if (result >= v85)
    {
      goto LABEL_64;
    }

LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
  }

  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
  return result;
}

uint64_t sub_1D41932B8(uint64_t a1)
{
  v152 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CABB8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v148 = &v131 - v2;
  v3 = sub_1D4416F64();
  v155 = *(v3 - 8);
  v156 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v153 = &v131 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C98F0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v138 = &v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v131 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v144 = &v131 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v146 = &v131 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v131 - v15;
  v17 = sub_1D4417434();
  v154 = *(v17 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v139 = &v131 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v140 = &v131 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v131 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v147 = &v131 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v131 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC118);
  v30 = MEMORY[0x1EEE9AC00](v29);
  v150 = &v131 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v131 - v32;
  v34 = sub_1D4417544();
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v131 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE32D40 != -1)
  {
    swift_once();
  }

  v143 = v24;
  v149 = v28;
  v38 = __swift_project_value_buffer(v29, qword_1EDE32D48);
  swift_beginAccess();
  sub_1D419456C(v38, v33);
  v39 = *(v35 + 48);
  v40 = v39(v33, 1, v34);
  v157 = v35;
  v158 = v34;
  v142 = v10;
  v41 = v17;
  if (v40 == 1)
  {
    sub_1D4417514();
    if (v39(v33, 1, v34) != 1)
    {
      sub_1D41769C4(v33, &qword_1EC7CC118);
    }
  }

  else
  {
    (*(v35 + 32))(v37, v33, v34);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC120);
  v42 = sub_1D4417534();
  v43 = *(v42 - 8);
  v44 = *(v43 + 72);
  v45 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1D4435D30;
  v47 = v46 + v45;
  v48 = *(v43 + 104);
  v48(v47, *MEMORY[0x1E6969A68], v42);
  v48(v47 + v44, *MEMORY[0x1E6969A78], v42);
  v48(v47 + 2 * v44, *MEMORY[0x1E6969A48], v42);
  sub_1D41945DC(v46);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v49 = v153;
  sub_1D44174D4();

  sub_1D44174E4();
  v50 = v156;
  v51 = *(v155 + 8);
  v51(v49, v156);
  v52 = v154;
  v53 = *(v154 + 48);
  v155 = v41;
  v151 = v53;
  v152 = v154 + 48;
  v54 = v37;
  if (v53(v16, 1, v41) != 1)
  {
    v57 = *(v52 + 32);
    v58 = v149;
    v59 = v155;
    v137 = v52 + 32;
    v136 = v57;
    v57(v149, v16, v155);
    v141 = v51;
    v60 = v54;
    v61 = *(v157 + 56);
    v135 = v157 + 56;
    v134 = v61;
    v61(v150, 1, 1, v158);
    v62 = sub_1D44175E4();
    v63 = *(v62 - 8);
    v64 = *(v63 + 56);
    v65 = v148;
    v133 = v62;
    v132 = v64;
    v131 = v63 + 56;
    (v64)(v148, 1, 1);
    sub_1D4416F54();
    v66 = v52;
    v67 = v146;
    v145 = v60;
    v68 = v141;
    sub_1D44174F4();
    v55 = v67;
    v68(v49, v50);
    if (v151(v67, 1, v59) == 1)
    {
      (*(v66 + 8))(v58, v155);
    }

    else
    {
      v69 = v155;
      v136(v147, v67, v155);
      v70 = v150;
      v134(v150, 1, 1, v158);
      v132(v65, 1, 1, v133);
      sub_1D4416F54();
      v71 = v144;
      sub_1D44174F4();
      v68(v49, v156);
      if (v151(v71, 1, v69) == 1)
      {
        v72 = v155;
        v73 = *(v154 + 8);
        v73(v147, v155);
        v73(v58, v72);
        v55 = v71;
      }

      else
      {
        v74 = v143;
        v75 = v71;
        v76 = v155;
        v136(v143, v75, v155);
        v134(v70, 1, 1, v158);
        v132(v65, 1, 1, v133);
        v77 = v74;
        sub_1D4416F54();
        v78 = v142;
        sub_1D44174F4();
        v79 = v141;
        v141(v49, v156);
        v80 = v151(v78, 1, v76);
        v81 = v154;
        if (v80 != 1)
        {
          v87 = v140;
          v88 = v155;
          v136(v140, v78, v155);
          v134(v70, 1, 1, v158);
          v132(v148, 1, 1, v133);
          sub_1D4416F54();
          v16 = v138;
          v89 = v145;
          sub_1D44174F4();
          v79(v49, v156);
          v54 = v89;
          if (v151(v16, 1, v88) != 1)
          {
            v92 = v155;
            v136(v139, v16, v155);
            sub_1D4417284();
            v94 = v93;
            v95 = v147;
            sub_1D4417284();
            v97 = v96;
            sub_1D4417284();
            v99 = v98;
            sub_1D4417284();
            v101 = v100;
            sub_1D4417284();
            v103 = v102;
            v104 = objc_opt_self();
            v105 = sub_1D4419C14();
            v106 = [v104 localizedFrameworkStringForKey:v105 value:0 table:0 allowSiri:1];

            v153 = sub_1D4419C54();
            v156 = v107;

            v108 = sub_1D4419C14();
            v109 = [v104 localizedFrameworkStringForKey:v108 value:0 table:0 allowSiri:1];

            v151 = sub_1D4419C54();
            v152 = v110;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB8A8);
            v84 = swift_allocObject();
            *(v84 + 16) = xmmword_1D44361A0;
            v111 = sub_1D4419C14();
            v112 = v89;
            v113 = [v104 localizedFrameworkStringForKey:v111 value:0 table:0 allowSiri:1];

            v114 = sub_1D4419C54();
            v116 = v115;

            *(v84 + 32) = v114;
            *(v84 + 40) = v116;
            *(v84 + 48) = 2;
            *(v84 + 56) = v97;
            *(v84 + 64) = 0;
            *(v84 + 72) = 1;
            *(v84 + 80) = 0;
            v117 = sub_1D4419C14();
            v118 = [v104 localizedFrameworkStringForKey:v117 value:0 table:0 allowSiri:1];

            v119 = sub_1D4419C54();
            v121 = v120;

            *(v84 + 88) = v119;
            *(v84 + 96) = v121;
            v54 = v112;
            *(v84 + 104) = 3;
            *(v84 + 112) = v94;
            *(v84 + 120) = v97;
            *(v84 + 128) = 0;
            *(v84 + 136) = 0;
            v122 = sub_1D4419C14();
            v123 = [v104 localizedFrameworkStringForKey:v122 value:0 table:0 allowSiri:1];

            v124 = sub_1D4419C54();
            v126 = v125;

            *(v84 + 144) = v124;
            *(v84 + 152) = v126;
            *(v84 + 160) = 4;
            *(v84 + 168) = v99;
            *(v84 + 176) = v94;
            *(v84 + 184) = 0;
            v127 = v153;
            *(v84 + 192) = 0;
            *(v84 + 200) = v127;
            *(v84 + 208) = v156;
            *(v84 + 216) = 5;
            *(v84 + 224) = v101;
            *(v84 + 232) = v99;
            *(v84 + 240) = 0;
            v128 = v151;
            v129 = v152;
            *(v84 + 248) = 0;
            *(v84 + 256) = v128;
            *(v84 + 264) = v129;
            *(v84 + 272) = 6;
            *(v84 + 280) = v103;
            *(v84 + 288) = v101;
            *(v84 + 296) = 0;
            *(v84 + 304) = 0;
            v130 = *(v81 + 8);
            v130(v139, v92);
            v130(v140, v92);
            v130(v143, v92);
            v130(v95, v92);
            v130(v149, v92);
            v56 = v157;
            v85 = v158;
            goto LABEL_17;
          }

          v90 = *(v81 + 8);
          v91 = v155;
          v90(v87, v155);
          v90(v143, v91);
          v90(v147, v91);
          v90(v149, v91);
          goto LABEL_8;
        }

        v82 = *(v154 + 8);
        v83 = v155;
        v82(v77, v155);
        v82(v147, v83);
        v82(v149, v83);
        v55 = v78;
      }
    }

    v56 = v157;
    v54 = v145;
    goto LABEL_16;
  }

LABEL_8:
  v55 = v16;
  v56 = v157;
LABEL_16:
  sub_1D41769C4(v55, &qword_1EC7C98F0);
  v84 = MEMORY[0x1E69E7CC0];
  v85 = v158;
LABEL_17:
  (*(v56 + 8))(v54, v85);
  return v84;
}