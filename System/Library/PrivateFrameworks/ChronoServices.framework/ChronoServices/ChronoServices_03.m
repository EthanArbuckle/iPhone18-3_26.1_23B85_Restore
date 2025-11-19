uint64_t sub_195F42B48()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + OBJC_IVAR___CHSActivityService_queue);
  BSDispatchQueueAssert();
  v2 = *(v0 + OBJC_IVAR___CHSActivityService_connection);
  v7[0] = 0;
  v3 = [v2 subscribeToActivityPayloadUpdates_];
  v4 = *(v0 + OBJC_IVAR___CHSActivityService_queue_activityServiceAssertion);
  *(v0 + OBJC_IVAR___CHSActivityService_queue_activityServiceAssertion) = v3;
  result = swift_unknownObjectRelease();
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

Swift::Void __swiftcall CHSActivityService.invalidate()()
{
  v1 = sub_195FA0778();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_195FA07D8();
  v6 = *(v14 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = *&v0[OBJC_IVAR___CHSActivityService_queue];
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_195F42FB0;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EBDBE8;
  aBlock[3] = &block_descriptor_6;
  v11 = _Block_copy(aBlock);
  v12 = v0;
  sub_195FA0798();
  v15 = MEMORY[0x1E69E7CC0];
  sub_195EBDB58(&qword_1EAEEC450, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
  sub_195F43EC8(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30);
  sub_195FA0E38();
  MEMORY[0x19A8C42F0](0, v9, v5, v11);
  _Block_release(v11);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v14);
}

uint64_t sub_195F42FE4()
{
  v1 = *(v0 + OBJC_IVAR___CHSActivityService_queue);
  BSDispatchQueueAssert();
  v2 = OBJC_IVAR___CHSActivityService_queue_activityServiceAssertion;
  v3 = *(v0 + OBJC_IVAR___CHSActivityService_queue_activityServiceAssertion);
  if (v3)
  {
    [v3 invalidate];
    v4 = *(v0 + v2);
  }

  *(v0 + v2) = 0;

  return swift_unknownObjectRelease();
}

id CHSActivityService.subscribe(toActivityID:withHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_195FA0778();
  v30 = *(v9 - 8);
  v10 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_195FA07D8();
  v28 = *(v13 - 8);
  v29 = v13;
  v14 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for CHSActivitySubscription();
  v18 = objc_allocWithZone(v17);
  v19 = &v18[OBJC_IVAR____TtC14ChronoServicesP33_94FD4DB1545722BE3BD737A60553872423CHSActivitySubscription_activityID];
  *v19 = a1;
  v19[1] = a2;
  v20 = &v18[OBJC_IVAR____TtC14ChronoServicesP33_94FD4DB1545722BE3BD737A60553872423CHSActivitySubscription_payloadHandler];
  *v20 = a3;
  v20[1] = a4;
  v18[OBJC_IVAR____TtC14ChronoServicesP33_94FD4DB1545722BE3BD737A60553872423CHSActivitySubscription_calloutQueue_invalidated] = 0;
  v33.receiver = v18;
  v33.super_class = v17;

  v21 = objc_msgSendSuper2(&v33, sel_init);
  v22 = *&v4[OBJC_IVAR___CHSActivityService_queue];
  v23 = swift_allocObject();
  *(v23 + 16) = v4;
  *(v23 + 24) = v21;
  aBlock[4] = sub_195F433EC;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EBDBE8;
  aBlock[3] = &block_descriptor_6_0;
  v24 = _Block_copy(aBlock);
  v25 = v4;
  v26 = v21;
  sub_195FA0798();
  v31 = MEMORY[0x1E69E7CC0];
  sub_195EBDB58(&qword_1EAEEC450, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
  sub_195F43EC8(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30);
  sub_195FA0E38();
  MEMORY[0x19A8C42F0](0, v16, v12, v24);
  _Block_release(v24);
  (*(v30 + 8))(v12, v9);
  (*(v28 + 8))(v16, v29);

  return v26;
}

id sub_195F433EC()
{
  v1 = *(v0 + 16);
  if ((*(v1 + OBJC_IVAR___CHSActivityService_queue_invalidated) & 1) == 0)
  {
    return [*(v1 + OBJC_IVAR___CHSActivityService_queue_subscriptions) addObject_];
  }

  return result;
}

uint64_t sub_195F434F8()
{
  v0 = sub_195FA0CD8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v2 = sub_195FA07D8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_195FA0CF8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_195EB4B30(0, &qword_1EAEEC590, 0x1E69E9610);
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8098], v4);
  sub_195FA0798();
  v10[1] = MEMORY[0x1E69E7CC0];
  sub_195EBDB58(&qword_1EAEEC5A0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEE3A0, &unk_195FAC790);
  sub_195F43EC8(&qword_1EAEEC5B0, &unk_1EAEEE3A0, &unk_195FAC790);
  sub_195FA0E38();
  result = sub_195FA0D38();
  qword_1EAEF7378 = result;
  return result;
}

id sub_195F438AC()
{
  v2.receiver = v0;
  v2.super_class = _s16ConnectionClientCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_195F43918(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a1;
  if (a1 >> 62)
  {
    v8 = sub_195FA0E88();
    if (!v8)
    {
      return;
    }
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
  }

  else
  {
    v9 = 0;
    v10 = v7 & 0xC000000000000001;
    v11 = &unk_1EAEED000;
    v12 = &unk_1EAEF7000;
    v13 = &unk_1EAEED000;
    v26 = v7 & 0xC000000000000001;
    do
    {
      if (v10)
      {
        v22 = MEMORY[0x19A8C4520](v9, v7);
      }

      else
      {
        v22 = *(v7 + 8 * v9 + 32);
      }

      v23 = v22;
      if (v11[4] != -1)
      {
        swift_once();
      }

      v24 = v12[111];
      BSDispatchQueueAssert();
      if (v23[v13[360]] != 1)
      {
        v25 = *&v23[OBJC_IVAR____TtC14ChronoServicesP33_94FD4DB1545722BE3BD737A60553872423CHSActivitySubscription_activityID] == a2 && *&v23[OBJC_IVAR____TtC14ChronoServicesP33_94FD4DB1545722BE3BD737A60553872423CHSActivitySubscription_activityID + 8] == a3;
        if (v25 || (sub_195FA12B8() & 1) != 0)
        {
          v14 = v8;
          v15 = v7;
          v16 = a2;
          v17 = a3;
          v18 = v13;
          v19 = v12;
          v20 = v11;
          v21 = *&v23[OBJC_IVAR____TtC14ChronoServicesP33_94FD4DB1545722BE3BD737A60553872423CHSActivitySubscription_payloadHandler + 8];
          (*&v23[OBJC_IVAR____TtC14ChronoServicesP33_94FD4DB1545722BE3BD737A60553872423CHSActivitySubscription_payloadHandler])(a4, a5);
          v11 = v20;
          v12 = v19;
          v13 = v18;
          a3 = v17;
          a2 = v16;
          v7 = v15;
          v8 = v14;
          v10 = v26;
        }
      }

      ++v9;
    }

    while (v8 != v9);
  }
}

uint64_t sub_195F43AC4()
{
  v1 = sub_195FA0778();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_195FA07D8();
  v6 = *(v15 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EAEED020 != -1)
  {
    swift_once();
  }

  v14[1] = qword_1EAEF7378;
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_195F43EB0;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EBDBE8;
  aBlock[3] = &block_descriptor_27;
  v11 = _Block_copy(aBlock);
  v12 = v0;
  sub_195FA0798();
  v16 = MEMORY[0x1E69E7CC0];
  sub_195EBDB58(&qword_1EAEEC450, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
  sub_195F43EC8(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30);
  sub_195FA0E38();
  MEMORY[0x19A8C42F0](0, v9, v5, v11);
  _Block_release(v11);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v15);
}

id sub_195F43E24()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_195F43EC8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_195F43F1C()
{
  v1 = *(v0 + 16);
  v2 = sub_195FA0888();
  (*(v1 + 16))(v1, v2);
}

uint64_t sub_195F43FA0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[2];
  return sub_195F427EC(v1, v2, v3, v4);
}

id CHSWidgetRelevanceService.init(options:)(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 initWithOptions_];
}

{
  v2 = v1;
  v4 = sub_195FA0478();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() sharedInstance];
  v10 = CHSWidgetRelevanceServiceCacheDirectory();
  sub_195FA0428();

  v11 = sub_195FA0398();
  (*(v5 + 8))(v8, v4);
  v12 = [v2 initWithConnection:v9 cacheURL:v11 options:a1];

  return v12;
}

char *sub_195F442D8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v94 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDD70, &qword_195FACFD8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v82 = &v80 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDD78, &qword_195FACFE0);
  v84 = *(v10 - 8);
  v85 = v10;
  v11 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v83 = &v80 - v12;
  v13 = sub_195FA0778();
  v92 = *(v13 - 8);
  v93 = v13;
  v14 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v91 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_195FA0CD8();
  v16 = *(*(v87 - 8) + 64);
  MEMORY[0x1EEE9AC00](v87);
  v86 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_195FA07D8();
  v89 = *(v18 - 8);
  v90 = v18;
  v19 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_195FA0CF8();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR___CHSWidgetRelevanceService_finishLaunchingToken] = 0;
  v4[OBJC_IVAR___CHSWidgetRelevanceService_queue_invalidated] = 0;
  *&v4[OBJC_IVAR___CHSWidgetRelevanceService_queue_widgetRelevanceAssertion] = 0;
  *&v4[OBJC_IVAR___CHSWidgetRelevanceService_queue_timelineEntryRelevanceAssertion] = 0;
  v27 = OBJC_IVAR___CHSWidgetRelevanceService_queue_timelineEntryRelevances;
  v28 = MEMORY[0x1E69E7CC0];
  *&v4[v27] = sub_195F2DB60(MEMORY[0x1E69E7CC0]);
  *&v4[OBJC_IVAR___CHSWidgetRelevanceService_queue_widgetRelevanceCache] = 0;
  *&v4[OBJC_IVAR___CHSWidgetRelevanceService_queue_cachedWidgetRelevanceProperties] = 0;
  *&v4[OBJC_IVAR___CHSWidgetRelevanceService_connection] = a1;
  v29 = objc_allocWithZone(_s16ConnectionClientCMa_0());
  v88 = a1;
  v30 = [v29 init];
  *&v4[OBJC_IVAR___CHSWidgetRelevanceService_connectionClient] = v30;
  *&v4[OBJC_IVAR___CHSWidgetRelevanceService_options] = v94;
  v94 = a2;
  v31 = sub_195FA0438();
  v32 = &v4[OBJC_IVAR___CHSWidgetRelevanceService_cachePath];
  *v32 = v31;
  v32[1] = v33;
  v34 = sub_195EB4B30(0, &qword_1EAEEC590, 0x1E69E9610);
  (*(v23 + 104))(v26, *MEMORY[0x1E69E8098], v22);
  sub_195FA0798();
  aBlock[0] = v28;
  sub_195EBDBA0(&qword_1EAEEC5A0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEE3A0, &unk_195FAC790);
  sub_195EB5F38(&qword_1EAEEC5B0, &unk_1EAEEE3A0, &unk_195FAC790);
  sub_195FA0E38();
  v86 = v34;
  v87 = v21;
  *&v4[OBJC_IVAR___CHSWidgetRelevanceService_queue] = sub_195FA0D38();
  *&v4[OBJC_IVAR___CHSWidgetRelevanceService_queue_observers] = [objc_opt_self() weakObjectsHashTable];
  if (qword_1EAEEC288 != -1)
  {
    swift_once();
  }

  v35 = qword_1EAEF7330;
  v36 = &v4[OBJC_IVAR___CHSWidgetRelevanceService_keybagStateProvider];
  v36[3] = type metadata accessor for DefaultKeybagStateProvider();
  v36[4] = &off_1F0A52240;
  *v36 = v35;
  v101.receiver = v4;
  v101.super_class = CHSWidgetRelevanceService;

  v37 = objc_msgSendSuper2(&v101, sel_init);
  v38 = OBJC_IVAR___CHSWidgetRelevanceService_connectionClient;
  v39 = *&v37[OBJC_IVAR___CHSWidgetRelevanceService_connectionClient];
  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = &v39[OBJC_IVAR____TtCE14ChronoServicesCSo25CHSWidgetRelevanceService16ConnectionClient_timelineRelevanceDidChangeHandler];
  v42 = *&v39[OBJC_IVAR____TtCE14ChronoServicesCSo25CHSWidgetRelevanceService16ConnectionClient_timelineRelevanceDidChangeHandler];
  v43 = *&v39[OBJC_IVAR____TtCE14ChronoServicesCSo25CHSWidgetRelevanceService16ConnectionClient_timelineRelevanceDidChangeHandler + 8];
  *v41 = sub_195F48EDC;
  v41[1] = v40;
  v44 = v37;
  v45 = v39;

  sub_195EB6E70(v42);

  v46 = *&v37[v38];
  v47 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v48 = v46;

  v49 = &v48[OBJC_IVAR____TtCE14ChronoServicesCSo25CHSWidgetRelevanceService16ConnectionClient_widgetRelevanceEventHandler];
  v50 = *&v48[OBJC_IVAR____TtCE14ChronoServicesCSo25CHSWidgetRelevanceService16ConnectionClient_widgetRelevanceEventHandler];
  v51 = *&v48[OBJC_IVAR____TtCE14ChronoServicesCSo25CHSWidgetRelevanceService16ConnectionClient_widgetRelevanceEventHandler + 8];
  *v49 = sub_195F48EE4;
  v49[1] = v47;

  sub_195EB6E70(v50);

  v52 = v88;
  [v88 addClient_];
  v81 = OBJC_IVAR___CHSWidgetRelevanceService_queue;
  v53 = *&v44[OBJC_IVAR___CHSWidgetRelevanceService_queue];
  v54 = swift_allocObject();
  *(v54 + 16) = v44;
  v99 = sub_195F48EEC;
  v100 = v54;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EBDBE8;
  v98 = &block_descriptor_88;
  v55 = _Block_copy(aBlock);
  v56 = v53;
  v57 = v87;
  sub_195FA0798();
  v96 = MEMORY[0x1E69E7CC0];
  sub_195EBDBA0(&qword_1EAEEC450, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
  sub_195EB5F38(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30);
  v58 = v91;
  v59 = v93;
  sub_195FA0E38();
  MEMORY[0x19A8C42F0](0, v57, v58, v55);
  _Block_release(v55);

  (*(v92 + 8))(v58, v59);
  (*(v89 + 8))(v57, v90);

  v60 = OBJC_IVAR___CHSWidgetRelevanceService_keybagStateProvider;
  sub_195EC97E0(&v44[OBJC_IVAR___CHSWidgetRelevanceService_keybagStateProvider], aBlock);
  v61 = v98;
  v62 = v99;
  __swift_project_boxed_opaque_existential_1(aBlock, v98);
  LOBYTE(v61) = (*(v62 + 4))(v61, v62);
  __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
  if (v61)
  {
    v63 = sub_195FA0478();
    (*(*(v63 - 8) + 8))(v94, v63);
  }

  else
  {
    if (qword_1EAEEBBA8 != -1)
    {
      swift_once();
    }

    v64 = sub_195FA0678();
    __swift_project_value_buffer(v64, qword_1EAEF7238);
    v65 = sub_195FA0658();
    v66 = sub_195FA0CC8();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_195EB2000, v65, v66, "CHSWidgetRelevanceService started before first unlock registering for notifications", v67, 2u);
      MEMORY[0x19A8C5B70](v67, -1, -1);
    }

    sub_195EC97E0(&v44[v60], aBlock);
    v68 = v98;
    v69 = v99;
    __swift_project_boxed_opaque_existential_1(aBlock, v98);
    v96 = (*(v69 + 1))(v68, v69);
    v95 = *&v44[v81];
    v70 = v95;
    v71 = sub_195FA0CE8();
    v72 = v82;
    (*(*(v71 - 8) + 56))(v82, 1, 1, v71);
    v73 = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDD80, &qword_195FACFE8);
    sub_195EB5F38(&qword_1EAEEDD88, &qword_1EAEEDD80, &qword_195FACFE8);
    sub_195F48E88(&qword_1EAEEDD90, &qword_1EAEEC590, 0x1E69E9610);
    v74 = v83;
    sub_195FA0758();
    sub_195F2DB00(v72, &qword_1EAEEDD70, &qword_195FACFD8);

    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_195EB5F38(&qword_1EAEEDD98, &qword_1EAEEDD78, &qword_195FACFE0);
    v75 = v85;
    v76 = sub_195FA0768();

    v77 = sub_195FA0478();
    (*(*(v77 - 8) + 8))(v94, v77);
    (*(v84 + 8))(v74, v75);
    v78 = *&v44[OBJC_IVAR___CHSWidgetRelevanceService_finishLaunchingToken];
    *&v44[OBJC_IVAR___CHSWidgetRelevanceService_finishLaunchingToken] = v76;
  }

  return v44;
}

uint64_t sub_195F44EF4(uint64_t a1)
{
  v2 = sub_195FA0778();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_195FA07D8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = *(result + OBJC_IVAR___CHSWidgetRelevanceService_queue);
    v13 = result;
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = a1;
    aBlock[4] = sub_195F49BF0;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_195EBDBE8;
    aBlock[3] = &block_descriptor_113_0;
    v15 = _Block_copy(aBlock);
    v19 = v7;
    v16 = v15;
    v18 = v13;

    sub_195FA0798();
    v21 = MEMORY[0x1E69E7CC0];
    sub_195EBDBA0(&qword_1EAEEC450, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
    sub_195EB5F38(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30);
    sub_195FA0E38();
    MEMORY[0x19A8C42F0](0, v11, v6, v16);
    _Block_release(v16);
    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v11, v19);
  }

  return result;
}

uint64_t sub_195F4520C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR___CHSWidgetRelevanceService_queue_timelineEntryRelevances);
  *(a1 + OBJC_IVAR___CHSWidgetRelevanceService_queue_timelineEntryRelevances) = a2;

  return sub_195F47D10(&unk_1F0A532C8, sub_195F49B54, &block_descriptor_101);
}

uint64_t sub_195F45274(void *a1)
{
  v2 = sub_195FA0778();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_195FA07D8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v21 = *(result + OBJC_IVAR___CHSWidgetRelevanceService_queue);
    v13 = result;
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = a1;
    aBlock[4] = sub_195F49B78;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_195EBDBE8;
    aBlock[3] = &block_descriptor_107;
    v15 = _Block_copy(aBlock);
    v20 = v7;
    v16 = v15;
    v19 = v13;
    v17 = a1;
    sub_195FA0798();
    v22 = MEMORY[0x1E69E7CC0];
    sub_195EBDBA0(&qword_1EAEEC450, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
    sub_195EB5F38(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30);
    sub_195FA0E38();
    MEMORY[0x19A8C42F0](0, v11, v6, v16);
    _Block_release(v16);
    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v11, v20);
  }

  return result;
}

uint64_t sub_195F45588(void *a1)
{
  v2 = v1;
  v4 = [a1 eventType];
  if (v4 < 2)
  {
    v5 = OBJC_IVAR___CHSWidgetRelevanceService_queue_cachedWidgetRelevanceProperties;
    swift_beginAccess();
    v6 = *(v2 + v5);
    *(v2 + v5) = 0;

    sub_195F48144();
    return sub_195F47D10(&unk_1F0A53278, sub_195F49AF0, &block_descriptor_95);
  }

  if (v4 == 2)
  {
    v7 = OBJC_IVAR___CHSWidgetRelevanceService_queue_cachedWidgetRelevanceProperties;
    swift_beginAccess();
    if (!*(v2 + v7))
    {
LABEL_8:
      swift_endAccess();
      return sub_195F47D10(&unk_1F0A53278, sub_195F49AF0, &block_descriptor_95);
    }

    v8 = a1;
    v9 = sub_195F494C8((v2 + v7), v8);

    v10 = *(v2 + v7);
    if (v10 >> 62)
    {
      if (v10 < 0)
      {
        v13 = *(v2 + v7);
      }

      v11 = sub_195FA0E88();
      if (v11 >= v9)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11 >= v9)
      {
LABEL_7:
        sub_195F49A04(v9, v11);
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  type metadata accessor for CHSWidgetRelevanceServiceEventType(0);
  sub_195FA1318();
  __break(1u);
  result = swift_endAccess();
  __break(1u);
  return result;
}

void sub_195F45708()
{
  v18[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + OBJC_IVAR___CHSWidgetRelevanceService_queue);
  BSDispatchQueueAssert();
  v2 = *(v0 + OBJC_IVAR___CHSWidgetRelevanceService_options);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___CHSWidgetRelevanceService_connection);
    v18[0] = 0;
    v4 = [v3 subscribeToWidgetRelevanceEvents_];
    v5 = v18[0];
    v6 = *(v0 + OBJC_IVAR___CHSWidgetRelevanceService_queue_widgetRelevanceAssertion);
    *(v0 + OBJC_IVAR___CHSWidgetRelevanceService_queue_widgetRelevanceAssertion) = v4;
    v7 = v5;
    swift_unknownObjectRelease();
    sub_195F47D10(&unk_1F0A53278, sub_195F49AF0, &block_descriptor_95);
  }

  if ((v2 & 2) != 0)
  {
    v8 = *(v0 + OBJC_IVAR___CHSWidgetRelevanceService_connection);
    v17 = 0;
    v18[0] = 0;
    v9 = [v8 subscribeToTimelineEntryRelevance:v18 outTimelineEntryRelevance:&v17];
    v11 = v17;
    v10 = v18[0];
    v12 = *(v0 + OBJC_IVAR___CHSWidgetRelevanceService_queue_timelineEntryRelevanceAssertion);
    *(v0 + OBJC_IVAR___CHSWidgetRelevanceService_queue_timelineEntryRelevanceAssertion) = v9;
    v13 = v10;
    v14 = v11;
    swift_unknownObjectRelease();
    if (v14)
    {
      v18[0] = 0;
      sub_195EB4B30(0, &qword_1EAEEDD50, off_1E74527C8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDD58, &unk_195FACFC8);
      sub_195F48E88(&unk_1EAEEDD60, &qword_1EAEEDD50, off_1E74527C8);
      sub_195FA07F8();

      if (v18[0])
      {
        v15 = *(v0 + OBJC_IVAR___CHSWidgetRelevanceService_queue_timelineEntryRelevances);
        *(v0 + OBJC_IVAR___CHSWidgetRelevanceService_queue_timelineEntryRelevances) = v18[0];

        sub_195F47D10(&unk_1F0A532C8, sub_195F49B54, &block_descriptor_101);
      }
    }

    else
    {
      v14 = v13;
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

void sub_195F45940(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (v1)
    {
      v3 = Strong;
      if (qword_1EAEEBBA8 != -1)
      {
        swift_once();
      }

      v4 = sub_195FA0678();
      __swift_project_value_buffer(v4, qword_1EAEF7238);
      v5 = sub_195FA0658();
      v6 = sub_195FA0CC8();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_195EB2000, v5, v6, "First unlock event received so do a reload. Observers will be notified afterward", v7, 2u);
        MEMORY[0x19A8C5B70](v7, -1, -1);
      }

      v8 = [objc_opt_self() reloadEvent];
      sub_195F45588(v8);

      Strong = v8;
    }
  }
}

id sub_195F45B2C()
{
  v1 = *&v0[OBJC_IVAR___CHSWidgetRelevanceService_queue_widgetRelevanceAssertion];
  if (v1)
  {
    [v1 invalidate];
  }

  v2 = *&v0[OBJC_IVAR___CHSWidgetRelevanceService_queue_timelineEntryRelevanceAssertion];
  if (v2)
  {
    [v2 invalidate];
  }

  v4.receiver = v0;
  v4.super_class = CHSWidgetRelevanceService;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_195F45CB8()
{
  v0 = sub_195FA0CD8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v2 = sub_195FA07D8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_195FA0CF8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_195EB4B30(0, &qword_1EAEEC590, 0x1E69E9610);
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8098], v4);
  sub_195FA0798();
  v10[1] = MEMORY[0x1E69E7CC0];
  sub_195EBDBA0(&qword_1EAEEC5A0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEE3A0, &unk_195FAC790);
  sub_195EB5F38(&qword_1EAEEC5B0, &unk_1EAEEE3A0, &unk_195FAC790);
  sub_195FA0E38();
  result = sub_195FA0D38();
  qword_1EAEF7230 = result;
  return result;
}

Swift::Void __swiftcall CHSWidgetRelevanceService.invalidate()()
{
  v1 = sub_195FA0778();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_195FA07D8();
  v6 = *(v14 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = *&v0[OBJC_IVAR___CHSWidgetRelevanceService_queue];
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_195F461FC;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EBDBE8;
  aBlock[3] = &block_descriptor_7;
  v11 = _Block_copy(aBlock);
  v12 = v0;
  sub_195FA0798();
  v15 = MEMORY[0x1E69E7CC0];
  sub_195EBDBA0(&qword_1EAEEC450, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
  sub_195EB5F38(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30);
  sub_195FA0E38();
  MEMORY[0x19A8C42F0](0, v9, v5, v11);
  _Block_release(v11);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v14);
}

uint64_t sub_195F46230()
{
  v1 = *(v0 + OBJC_IVAR___CHSWidgetRelevanceService_queue);
  BSDispatchQueueAssert();
  v2 = OBJC_IVAR___CHSWidgetRelevanceService_queue_timelineEntryRelevanceAssertion;
  v3 = *(v0 + OBJC_IVAR___CHSWidgetRelevanceService_queue_timelineEntryRelevanceAssertion);
  if (v3)
  {
    [v3 invalidate];
    v4 = *(v0 + v2);
  }

  *(v0 + v2) = 0;
  swift_unknownObjectRelease();
  v5 = OBJC_IVAR___CHSWidgetRelevanceService_queue_widgetRelevanceAssertion;
  v6 = *(v0 + OBJC_IVAR___CHSWidgetRelevanceService_queue_widgetRelevanceAssertion);
  if (v6)
  {
    [v6 invalidate];
    v7 = *(v0 + v5);
  }

  *(v0 + v5) = 0;

  return swift_unknownObjectRelease();
}

uint64_t CHSWidgetRelevanceService.timelineEntryRelevances.getter()
{
  v10 = sub_195F2DB60(MEMORY[0x1E69E7CC0]);
  v1 = *&v0[OBJC_IVAR___CHSWidgetRelevanceService_queue];
  v2 = swift_allocObject();
  *(v2 + 16) = &v10;
  *(v2 + 24) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_195F48D88;
  *(v3 + 24) = v2;
  aBlock[4] = sub_195EC7340;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EC7454;
  aBlock[3] = &block_descriptor_9;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t CHSWidgetRelevanceService.widgetRelevanceProperties.getter()
{
  v10 = MEMORY[0x1E69E7CC0];
  v1 = *&v0[OBJC_IVAR___CHSWidgetRelevanceService_queue];
  v2 = swift_allocObject();
  *(v2 + 16) = &v10;
  *(v2 + 24) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_195F48DD4;
  *(v3 + 24) = v2;
  aBlock[4] = sub_195EC74B8;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EC7454;
  aBlock[3] = &block_descriptor_19;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t sub_195F4672C(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + OBJC_IVAR___CHSWidgetRelevanceService_queue);
  BSDispatchQueueAssert();
  v5 = OBJC_IVAR___CHSWidgetRelevanceService_queue_cachedWidgetRelevanceProperties;
  swift_beginAccess();
  if (*(a2 + v5))
  {
    v6 = *(a2 + v5);
  }

  else
  {
    v6 = sub_195F48ACC();
    v7 = *(a2 + v5);
    *(a2 + v5) = v6;
  }

  v8 = *a1;
  *a1 = v6;
}

uint64_t sub_195F46840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_195FA0778();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_195FA07D8();
  v13 = *(v22 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[1] = *&v4[OBJC_IVAR___CHSWidgetRelevanceService_queue];
  v17 = swift_allocObject();
  *(v17 + 16) = v4;
  *(v17 + 24) = a1;
  aBlock[4] = a3;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EBDBE8;
  aBlock[3] = a4;
  v18 = _Block_copy(aBlock);
  v19 = v4;
  swift_unknownObjectRetain();
  sub_195FA0798();
  v23 = MEMORY[0x1E69E7CC0];
  sub_195EBDBA0(&qword_1EAEEC450, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
  sub_195EB5F38(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30);
  sub_195FA0E38();
  MEMORY[0x19A8C42F0](0, v16, v12, v18);
  _Block_release(v18);
  (*(v9 + 8))(v12, v8);
  (*(v13 + 8))(v16, v22);
}

void sub_195F46B24(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

uint64_t CHSWidgetRelevanceService.reloadWidgetRelevance(for:kind:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_195FA0778();
  v26 = *(v11 - 8);
  v12 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_195FA07D8();
  v15 = *(v25 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *&v5[OBJC_IVAR___CHSWidgetRelevanceService_queue];
  v19 = swift_allocObject();
  v19[2] = v5;
  v19[3] = a4;
  v19[4] = a5;
  v19[5] = a1;
  v19[6] = a2;
  v19[7] = a3;
  aBlock[4] = sub_195F48E28;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EBDBE8;
  aBlock[3] = &block_descriptor_37;
  v20 = _Block_copy(aBlock);

  v21 = v5;

  v22 = a1;
  sub_195FA0798();
  v27 = MEMORY[0x1E69E7CC0];
  sub_195EBDBA0(&qword_1EAEEC450, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
  sub_195EB5F38(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30);
  sub_195FA0E38();
  MEMORY[0x19A8C42F0](0, v18, v14, v20);
  _Block_release(v20);
  (*(v26 + 8))(v14, v11);
  (*(v15 + 8))(v18, v25);
}

void sub_195F46EA0(uint64_t a1, void (*a2)(id), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a1 + OBJC_IVAR___CHSWidgetRelevanceService_queue_invalidated))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDDC0, &qword_195FAD008);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_195FAC070;
    v9 = *MEMORY[0x1E696A578];
    *(inited + 32) = sub_195FA08B8();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = v10;
    *(inited + 48) = 0xD00000000000002ELL;
    *(inited + 56) = 0x8000000195FC0FA0;
    sub_195F2DD54(inited);
    swift_setDeallocating();
    sub_195F2DB00(inited + 32, &qword_1EAEED640, &qword_195FAD010);
    v11 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v12 = sub_195FA0888();
    v13 = sub_195FA07E8();

    v14 = [v11 initWithDomain:v12 code:1 userInfo:v13];

    v15 = v14;
    a2(v14);
  }

  else
  {
    v17 = *(a1 + OBJC_IVAR___CHSWidgetRelevanceService_connection);
    if (a6)
    {
      v15 = sub_195FA0888();
    }

    else
    {
      v15 = 0;
    }

    aBlock[4] = a2;
    aBlock[5] = a3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_195F9B590;
    aBlock[3] = &block_descriptor_122;
    v18 = _Block_copy(aBlock);

    [v17 reloadWidgetRelevanceForExtensionIdentity:a4 kind:v15 completion:v18];
    _Block_release(v18);
  }
}

uint64_t CHSWidgetRelevanceService.acquireLifetimeAssertion(for:metrics:prewarm:timeout:completion:)(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5, double a6)
{
  v13 = sub_195FA0778();
  v29 = *(v13 - 8);
  v14 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_195FA07D8();
  v17 = *(v28 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *&v6[OBJC_IVAR___CHSWidgetRelevanceService_queue];
  v21 = swift_allocObject();
  *(v21 + 16) = v6;
  *(v21 + 24) = a4;
  *(v21 + 32) = a5;
  *(v21 + 40) = a1;
  *(v21 + 48) = a2;
  *(v21 + 56) = a3;
  *(v21 + 64) = a6;
  aBlock[4] = sub_195F48E38;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EBDBE8;
  aBlock[3] = &block_descriptor_43_0;
  v22 = _Block_copy(aBlock);
  v23 = v6;

  v24 = a1;
  v25 = a2;
  sub_195FA0798();
  v30 = MEMORY[0x1E69E7CC0];
  sub_195EBDBA0(&qword_1EAEEC450, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
  sub_195EB5F38(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30);
  sub_195FA0E38();
  MEMORY[0x19A8C42F0](0, v20, v16, v22);
  _Block_release(v22);
  (*(v29 + 8))(v16, v13);
  (*(v17 + 8))(v20, v28);
}

void sub_195F474D4(uint64_t a1, void (*a2)(void, id), uint64_t a3, uint64_t a4, uint64_t a5, char a6, double a7)
{
  if (*(a1 + OBJC_IVAR___CHSWidgetRelevanceService_queue_invalidated))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDDC0, &qword_195FAD008);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_195FAC070;
    v10 = *MEMORY[0x1E696A578];
    *(inited + 32) = sub_195FA08B8();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = v11;
    *(inited + 48) = 0xD000000000000042;
    *(inited + 56) = 0x8000000195FC0F30;
    sub_195F2DD54(inited);
    swift_setDeallocating();
    sub_195F2DB00(inited + 32, &qword_1EAEED640, &qword_195FAD010);
    v12 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v13 = sub_195FA0888();
    v14 = sub_195FA07E8();

    v15 = [v12 initWithDomain:v13 code:1 userInfo:v14];

    v16 = v15;
    a2(0, v15);
    v17 = v16;
  }

  else
  {
    v20 = *(a1 + OBJC_IVAR___CHSWidgetRelevanceService_connection);
    v16 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v17 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v22 = swift_allocObject();
    *(v22 + 16) = a2;
    *(v22 + 24) = a3;
    aBlock[4] = sub_195F49BF8;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_195F47808;
    aBlock[3] = &block_descriptor_119;
    v23 = _Block_copy(aBlock);

    [v20 acquireLifetimeAssertionForWidget:a4 metrics:a5 prewarm:v16 timeout:v17 completion:v23];
    _Block_release(v23);
  }
}

void sub_195F47790(int a1, id a2, void (*a3)(void))
{
  if (a2)
  {
    v5 = a2;
    (a3)(0, a2);
  }

  else
  {
    a3();
  }
}

void sub_195F47808(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_195F47968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_195FA0318();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void CHSWidgetRelevanceService.acquireWidgetLifetimeAssertion(for:metrics:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[4] = a3;
  v8[5] = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_195F47AAC;
  v8[3] = &block_descriptor_46;
  v7 = _Block_copy(v8);

  [v4 acquireLifetimeAssertionForWidget:a1 metrics:a2 prewarm:0 timeout:v7 completion:30.0];
  _Block_release(v7);
}

uint64_t sub_195F47AAC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  swift_unknownObjectRetain();
  v7 = a3;
  v6(a2, a3);

  return swift_unknownObjectRelease();
}

void __swiftcall CHSWidgetRelevanceService.init()(CHSWidgetRelevanceService *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_195F47D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_195FA0778();
  v23 = *(v6 - 8);
  v7 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_195FA07D8();
  v10 = *(v22 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *&v3[OBJC_IVAR___CHSWidgetRelevanceService_queue];
  BSDispatchQueueAssert();
  v15 = [*&v3[OBJC_IVAR___CHSWidgetRelevanceService_queue_observers] allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDDB0, &qword_195FAD000);
  v16 = sub_195FA0B38();

  if (qword_1EAEEBAF8 != -1)
  {
    swift_once();
  }

  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v3;
  aBlock[4] = a2;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EBDBE8;
  aBlock[3] = a3;
  v18 = _Block_copy(aBlock);
  v19 = v3;
  sub_195FA0798();
  v24 = MEMORY[0x1E69E7CC0];
  sub_195EBDBA0(&qword_1EAEEC450, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
  sub_195EB5F38(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30);
  sub_195FA0E38();
  MEMORY[0x19A8C42F0](0, v13, v9, v18);
  _Block_release(v18);
  (*(v23 + 8))(v9, v6);
  (*(v10 + 8))(v13, v22);
}

unint64_t sub_195F48058(unint64_t result, uint64_t a2, SEL *a3)
{
  v5 = result;
  if (result >> 62)
  {
    result = sub_195FA0E88();
    v6 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return result;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v6; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x19A8C4520](i, v5);
      }

      else
      {
        v8 = *(v5 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      if ([v8 respondsToSelector_])
      {
        [v8 *a3];
      }

      result = swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_195F48144()
{
  v1 = OBJC_IVAR___CHSWidgetRelevanceService_queue_widgetRelevanceCache;
  if (*(v0 + OBJC_IVAR___CHSWidgetRelevanceService_queue_widgetRelevanceCache))
  {
    v2 = *(v0 + OBJC_IVAR___CHSWidgetRelevanceService_queue_widgetRelevanceCache);

    sub_195F65098();
    if (qword_1EAEEBBA8 != -1)
    {
      swift_once();
    }

    v3 = sub_195FA0678();
    __swift_project_value_buffer(v3, qword_1EAEF7238);
    oslog = sub_195FA0658();
    v4 = sub_195FA0CC8();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_195EB2000, oslog, v4, "Reloaded RelevanceCache", v5, 2u);
      MEMORY[0x19A8C5B70](v5, -1, -1);
    }
  }

  else
  {
    v6 = v0;
    v8 = *(v0 + OBJC_IVAR___CHSWidgetRelevanceService_cachePath);
    v7 = *(v0 + OBJC_IVAR___CHSWidgetRelevanceService_cachePath + 8);
    type metadata accessor for RelevanceCache();
    v9 = swift_allocObject();

    v10 = MEMORY[0x1E69E7CC0];
    v9[2] = sub_195F2DC58(MEMORY[0x1E69E7CC0]);
    v9[3] = v10;
    v9[4] = 0;
    v9[5] = v8;
    v9[6] = v7;
    sub_195F65098();
    v11 = *(v6 + v1);
    *(v6 + v1) = v9;

    if (qword_1EAEEBBA8 != -1)
    {
      swift_once();
    }

    v12 = sub_195FA0678();
    __swift_project_value_buffer(v12, qword_1EAEF7238);
    oslog = sub_195FA0658();
    v13 = sub_195FA0CC8();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_195EB2000, oslog, v13, "Loaded RelevanceCache", v14, 2u);
      MEMORY[0x19A8C5B70](v14, -1, -1);
    }
  }
}

uint64_t sub_195F4860C()
{
  v1 = *(v0 + OBJC_IVAR___CHSWidgetRelevanceService_queue);
  v10 = nullsub_1;
  v11 = 0;
  v6 = MEMORY[0x1E69E9820];
  v7 = 1107296256;
  v8 = sub_195EC7454;
  v9 = &block_descriptor_62;
  v2 = _Block_copy(&v6);

  dispatch_sync(v1, v2);
  _Block_release(v2);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
  }

  else if (qword_1EAEEBAF8 == -1)
  {
    goto LABEL_3;
  }

  swift_once();
LABEL_3:
  v3 = qword_1EAEF7230;
  v10 = nullsub_1;
  v11 = 0;
  v6 = MEMORY[0x1E69E9820];
  v7 = 1107296256;
  v8 = sub_195EC7454;
  v9 = &block_descriptor_65;
  v4 = _Block_copy(&v6);

  dispatch_sync(v3, v4);
  _Block_release(v4);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  return result;
}

id sub_195F48A44()
{
  v2.receiver = v0;
  v2.super_class = _s16ConnectionClientCMa_0();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_195F48ACC()
{
  v1 = *(v0 + OBJC_IVAR___CHSWidgetRelevanceService_queue);
  BSDispatchQueueAssert();
  v2 = OBJC_IVAR___CHSWidgetRelevanceService_queue_widgetRelevanceCache;
  v3 = *(v0 + OBJC_IVAR___CHSWidgetRelevanceService_queue_widgetRelevanceCache);
  if (v3 || (sub_195F48144(), (v3 = *(v0 + v2)) != 0))
  {

    v4 = sub_195F64F08();

    sub_195F48F18(v4, v3);
    v6 = v5;

    if (qword_1EAEEBBA8 != -1)
    {
      swift_once();
    }

    v7 = sub_195FA0678();
    __swift_project_value_buffer(v7, qword_1EAEF7238);
    v8 = sub_195FA0658();
    v9 = sub_195FA0CC8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_195EB2000, v8, v9, "Loaded relevance properties", v10, 2u);
      MEMORY[0x19A8C5B70](v10, -1, -1);
    }
  }

  else
  {
    if (qword_1EAEEBBA8 != -1)
    {
      swift_once();
    }

    v12 = sub_195FA0678();
    __swift_project_value_buffer(v12, qword_1EAEF7238);
    v8 = sub_195FA0658();
    v13 = sub_195FA0CA8();
    if (os_log_type_enabled(v8, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_195EB2000, v8, v13, "Read from WidgetRelevanceCache while its unavailable, giving no results", v14, 2u);
      MEMORY[0x19A8C5B70](v14, -1, -1);
    }

    v6 = MEMORY[0x1E69E7CC0];
  }

  return v6;
}

uint64_t sub_195F48CE8(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_195FA0E88();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_195FA0F68();
  *v1 = result;
  return result;
}

uint64_t sub_195F48D88()
{
  v1 = *(v0 + 16);
  v2 = *v1;
  *v1 = *(*(v0 + 24) + OBJC_IVAR___CHSWidgetRelevanceService_queue_timelineEntryRelevances);
}

SEL *sub_195F48DF4(SEL *result)
{
  v2 = *(v1 + 16);
  if ((*(v2 + OBJC_IVAR___CHSWidgetRelevanceService_queue_invalidated) & 1) == 0)
  {
    return [*(v2 + OBJC_IVAR___CHSWidgetRelevanceService_queue_observers) *result];
  }

  return result;
}

uint64_t sub_195F48E88(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_195EB4B30(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_195F48F18(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v27 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_195FA0E78();
    sub_195EB4B30(0, &qword_1EAEEBD40, off_1E7452818);
    sub_195F48E88(&qword_1EAEEBD38, &qword_1EAEEBD40, off_1E7452818);
    sub_195FA0C28();
    v2 = v22;
    v3 = v23;
    v5 = v24;
    v4 = v25;
    v6 = v26;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v5 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v4 = 0;
  }

  while (v2 < 0)
  {
    if (!sub_195FA0EA8() || (sub_195EB4B30(0, &qword_1EAEEBD40, off_1E7452818), swift_dynamicCast(), (v12 = v21) == 0))
    {
LABEL_25:
      sub_195EB9E70();
      return;
    }

LABEL_17:
    swift_beginAccess();
    v13 = *(a2 + 16);
    if (*(v13 + 16))
    {

      v14 = sub_195F59E04(v12);
      if (v15)
      {
        v16 = *(v13 + 56) + 16 * v14;
        v17 = *(v16 + 8);
        v18 = *v16;

        if (v17)
        {
        }

        else
        {
          MEMORY[0x19A8C40E0]();
          if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v19 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_195FA0B58();
          }

          sub_195FA0B78();
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  v10 = v4;
  v11 = v6;
  if (v6)
  {
LABEL_13:
    v6 = (v11 - 1) & v11;
    v12 = *(*(v2 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v12)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= ((v5 + 64) >> 6))
    {
      goto LABEL_25;
    }

    v11 = *(v3 + 8 * v4);
    ++v10;
    if (v11)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

unint64_t sub_195F49208(unint64_t a1, void *a2)
{
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_26:
    v25 = a1;
    a1 = sub_195FA0E88();
    v4 = v25;
    v5 = a1;
  }

  else
  {
    v4 = a1;
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v31 = v4 & 0xC000000000000001;
  v26 = v4;
  v30 = v4 + 32;
  v28 = a2;
  v29 = v5;
  v27 = v3;
  while (1)
  {
    if (v6 == v5)
    {
      return 0;
    }

    if (v31)
    {
      v8 = MEMORY[0x19A8C4520](v6, v26);
    }

    else
    {
      if (v6 >= *(v3 + 16))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v8 = *(v30 + 8 * v6);
    }

    v9 = v8;
    v10 = [a2 extensionIdentities];
    if (v10)
    {
      break;
    }

LABEL_5:
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_25;
    }
  }

  v11 = v10;
  type metadata accessor for CHSExtensionIdentity();
  sub_195EBDBA0(&qword_1EAEEBB08, type metadata accessor for CHSExtensionIdentity);
  v12 = sub_195FA0BF8();

  v13 = [v9 extensionIdentity];
  v14 = v13;
  if ((v12 & 0xC000000000000001) != 0)
  {
    v15 = v13;
    v16 = sub_195FA0EB8();

    if (v16)
    {
      return v6;
    }

    goto LABEL_5;
  }

  if (!*(v12 + 16))
  {

    goto LABEL_5;
  }

  v17 = *(v12 + 40);
  v18 = sub_195FA0D78();
  v19 = -1 << *(v12 + 32);
  v20 = v18 & ~v19;
  if (((*(v12 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
  {
LABEL_19:

    a2 = v28;
    v5 = v29;
    v3 = v27;
    goto LABEL_5;
  }

  v21 = ~v19;
  while (1)
  {
    v22 = *(*(v12 + 48) + 8 * v20);
    v23 = sub_195FA0D88();

    if (v23)
    {
      break;
    }

    v20 = (v20 + 1) & v21;
    if (((*(v12 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  return v6;
}

unint64_t sub_195F494C8(unint64_t *a1, void *a2)
{
  v3 = a2;
  v5 = *a1;
  result = sub_195F49208(*a1, a2);
  v8 = result;
  if (v2)
  {
    return v8;
  }

  if (v7)
  {
    if (v5 >> 62)
    {
      return sub_195FA0E88();
    }

    return *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v42 = a1;
  v38 = 0;
  v9 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v43 = v3;
  while (1)
  {
    if (v5 >> 62)
    {
      if (v9 == sub_195FA0E88())
      {
        return v8;
      }
    }

    else if (v9 == *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v8;
    }

    v11 = v5 & 0xC000000000000001;
    if ((v5 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x19A8C4520](v9, v5);
      goto LABEL_15;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_54;
    }

    v12 = *(v5 + 8 * v9 + 32);
LABEL_15:
    v13 = v12;
    v14 = [v3 extensionIdentities];
    if (!v14)
    {

      if (v8 != v9)
      {
        goto LABEL_28;
      }

      goto LABEL_7;
    }

    v15 = v14;
    type metadata accessor for CHSExtensionIdentity();
    sub_195EBDBA0(&qword_1EAEEBB08, type metadata accessor for CHSExtensionIdentity);
    v16 = sub_195FA0BF8();

    v17 = [v13 extensionIdentity];
    v18 = v17;
    if ((v16 & 0xC000000000000001) != 0)
    {
      v19 = v17;
      v20 = sub_195FA0EB8();

      v3 = v43;
      if ((v20 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (!*(v16 + 16))
      {

        v3 = v43;
        if (v8 != v9)
        {
          goto LABEL_28;
        }

        goto LABEL_7;
      }

      v39 = v5 & 0xC000000000000001;
      v40 = v8;
      v41 = v5;
      v21 = *(v16 + 40);
      v22 = sub_195FA0D78();
      v23 = -1 << *(v16 + 32);
      v24 = v22 & ~v23;
      if (((*(v16 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
      {
LABEL_26:

        v8 = v40;
        v5 = v41;
        v3 = v43;
        v11 = v39;
LABEL_27:
        if (v8 != v9)
        {
LABEL_28:
          if (v11)
          {
            v28 = MEMORY[0x19A8C4520](v8, v5);
            v29 = MEMORY[0x19A8C4520](v9, v5);
          }

          else
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_58;
            }

            v30 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v8 >= v30)
            {
              goto LABEL_59;
            }

            if (v9 >= v30)
            {
              goto LABEL_60;
            }

            v31 = *(v5 + 32 + 8 * v9);
            v28 = *(v5 + 32 + 8 * v8);
            v29 = v31;
          }

          v32 = v29;
          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
          {
            v5 = sub_195F4BB24(v5);
            v33 = (v5 >> 62) & 1;
          }

          else
          {
            LODWORD(v33) = 0;
          }

          v34 = v5 & 0xFFFFFFFFFFFFFF8;
          v35 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
          *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v32;

          if ((v5 & 0x8000000000000000) != 0 || v33)
          {
            v5 = sub_195F4BB24(v5);
            v34 = v5 & 0xFFFFFFFFFFFFFF8;
            if ((v9 & 0x8000000000000000) != 0)
            {
LABEL_51:
              __break(1u);
              return v8;
            }
          }

          else if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_51;
          }

          if (v9 >= *(v34 + 16))
          {
            goto LABEL_57;
          }

          v36 = v34 + 8 * v9;
          v37 = *(v36 + 32);
          *(v36 + 32) = v28;

          *v42 = v5;
          v3 = v43;
        }

LABEL_7:
        v10 = __OFADD__(v8++, 1);
        if (v10)
        {
          goto LABEL_56;
        }

        goto LABEL_8;
      }

      v25 = ~v23;
      while (1)
      {
        v26 = *(*(v16 + 48) + 8 * v24);
        v27 = sub_195FA0D88();

        if (v27)
        {
          break;
        }

        v24 = (v24 + 1) & v25;
        if (((*(v16 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      v8 = v40;
      v5 = v41;
      v3 = v43;
    }

LABEL_8:
    v10 = __OFADD__(v9++, 1);
    if (v10)
    {
      goto LABEL_55;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
  return sub_195FA0E88();
}

uint64_t sub_195F498F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_195EB4B30(0, &qword_1EAEEBAE8, off_1E7452820);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_195FA0E88();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_195FA0E88();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_195F49A04(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_195FA0E88();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_195FA0E88();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_195F48CE8(result);

  return sub_195F498F4(v4, v2, 0);
}

uint64_t sub_195F49ADC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 5)
  {
  }

  return result;
}

uint64_t objectdestroy_91Tm()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_195F49B78()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_195F45588(v1);
}

uint64_t objectdestroy_21Tm(void (*a1)(void))
{
  a1(*(v1 + 24));

  return MEMORY[0x1EEE6BDD0](v1, 32, 7);
}

uint64_t CHSControlState.__allocating_init(value:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t CHSControlState.copyWithNewState(_:)(uint64_t a1)
{
  v3 = *v1;
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

unint64_t CHSControlState.description.getter()
{
  sub_195FA0F38();

  v3 = *(v0 + 16);
  v1 = sub_195FA1288();
  MEMORY[0x19A8C3F70](v1);

  MEMORY[0x19A8C3F70](62, 0xE100000000000000);
  return 0xD000000000000018;
}

uint64_t sub_195F49E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_195FA12B8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_195F49EB0(uint64_t a1)
{
  v2 = sub_195F4A070();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_195F49EEC(uint64_t a1)
{
  v2 = sub_195F4A070();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CHSControlState.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDDC8, &qword_195FAD018);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_195F4A070();
  sub_195FA1468();
  v10 = *(v2 + 16);
  sub_195FA1228();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_195F4A070()
{
  result = qword_1EAEEC398;
  if (!qword_1EAEEC398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEC398);
  }

  return result;
}

uint64_t CHSControlState.hashValue.getter()
{
  sub_195FA1398();
  MEMORY[0x19A8C4970](*(v0 + 16));
  return sub_195FA13E8();
}

uint64_t CHSControlState.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  CHSControlState.init(from:)(a1);
  return v2;
}

void *CHSControlState.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v13[1] = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDDD0, &qword_195FAD020);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_195F4A070();
  sub_195FA1448();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v11 = sub_195FA1168();
    (*(v6 + 8))(v9, v5);
    v3[2] = v11;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v3;
}

uint64_t sub_195F4A2F0()
{
  v1 = *v0;
  sub_195FA1398();
  MEMORY[0x19A8C4970](*(v1 + 16));
  return sub_195FA13E8();
}

uint64_t sub_195F4A368()
{
  v1 = *v0;
  sub_195FA1398();
  MEMORY[0x19A8C4970](*(v1 + 16));
  return sub_195FA13E8();
}

unint64_t sub_195F4A3B0()
{
  result = qword_1EAEEDDD8;
  if (!qword_1EAEEDDD8)
  {
    type metadata accessor for CHSControlState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEDDD8);
  }

  return result;
}

void *sub_195F4A44C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = CHSControlState.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_195F4A4A4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDDC8, &qword_195FAD018);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_195F4A070();
  sub_195FA1468();
  v10 = *(v8 + 16);
  sub_195FA1228();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_195F4A660()
{
  result = qword_1EAEEDDE0;
  if (!qword_1EAEEDDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEDDE0);
  }

  return result;
}

unint64_t sub_195F4A6B8()
{
  result = qword_1EAEEC388;
  if (!qword_1EAEEC388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEC388);
  }

  return result;
}

unint64_t sub_195F4A710()
{
  result = qword_1EAEEC390;
  if (!qword_1EAEEC390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEC390);
  }

  return result;
}

uint64_t ConcreteImageIOPrimitives.ImageIOError.hashValue.getter()
{
  v1 = *v0;
  sub_195FA1398();
  MEMORY[0x19A8C4970](v1);
  return sub_195FA13E8();
}

void ConcreteImageIOPrimitives.makeImageDestination(at:typeIdentifier:numberOfImages:)(size_t a1@<X3>, CGImageDestinationRef *a2@<X8>)
{
  v4 = sub_195FA0398();
  v5 = sub_195FA0888();
  v6 = CGImageDestinationCreateWithURL(v4, v5, a1, 0);

  if (v6)
  {
    *a2 = v6;
  }

  else
  {
    sub_195F4A8D4();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();
  }
}

unint64_t sub_195F4A8D4()
{
  result = qword_1EAEEBC00;
  if (!qword_1EAEEBC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEBC00);
  }

  return result;
}

void ConcreteImageIOPrimitives.addImage(_:to:options:)(CGImageRef image, CGImageDestination **a2, const __CFDictionary *a3)
{
  v4 = *a2;
  if (a3)
  {
    type metadata accessor for CFString(0);
    sub_195F4A9B8();
    a3 = sub_195FA07E8();
  }

  v5 = a3;
  CGImageDestinationAddImage(v4, image, a3);
}

unint64_t sub_195F4A9B8()
{
  result = qword_1EAEEBB58;
  if (!qword_1EAEEBB58)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEBB58);
  }

  return result;
}

uint64_t ConcreteImageIOPrimitives.finalizeImageDestination(_:)(CGImageDestinationRef *a1)
{
  result = CGImageDestinationFinalize(*a1);
  if (!result)
  {
    sub_195F4A8D4();
    swift_allocError();
    *v2 = 1;
    return swift_willThrow();
  }

  return result;
}

void ConcreteImageIOPrimitives.makeImageSource(at:)(CGImageSourceRef *a1@<X8>)
{
  v2 = sub_195FA0398();
  v3 = CGImageSourceCreateWithURL(v2, 0);

  if (v3)
  {
    *a1 = v3;
  }

  else
  {
    sub_195F4A8D4();
    swift_allocError();
    *v4 = 2;
    swift_willThrow();
  }
}

unint64_t sub_195F4AB18()
{
  result = qword_1EAEEDDE8;
  if (!qword_1EAEEDDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEDDE8);
  }

  return result;
}

void sub_195F4AB6C(size_t a1@<X3>, CGImageDestinationRef *a2@<X8>)
{
  v4 = sub_195FA0398();
  v5 = sub_195FA0888();
  v6 = CGImageDestinationCreateWithURL(v4, v5, a1, 0);

  if (v6)
  {
    *a2 = v6;
  }

  else
  {
    sub_195F4A8D4();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();
  }
}

void sub_195F4AC2C(CGImageRef image, CGImageDestination **a2, const __CFDictionary *a3)
{
  v4 = *a2;
  if (a3)
  {
    type metadata accessor for CFString(0);
    sub_195F4A9B8();
    a3 = sub_195FA07E8();
  }

  v5 = a3;
  CGImageDestinationAddImage(v4, image, a3);
}

uint64_t sub_195F4ACBC(CGImageDestinationRef *a1)
{
  result = CGImageDestinationFinalize(*a1);
  if (!result)
  {
    sub_195F4A8D4();
    swift_allocError();
    *v2 = 1;
    return swift_willThrow();
  }

  return result;
}

void sub_195F4AD1C(CGImageSourceRef *a1@<X8>)
{
  v2 = sub_195FA0398();
  v3 = CGImageSourceCreateWithURL(v2, 0);

  if (v3)
  {
    *a1 = v3;
  }

  else
  {
    sub_195F4A8D4();
    swift_allocError();
    *v4 = 2;
    swift_willThrow();
  }
}

__CFString *CHSControlSize.debugDescription.getter(uint64_t a1)
{
  result = NSStringFromCHSControlSize(a1);
  if (result)
  {
    v2 = result;
    v3 = sub_195FA08B8();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__CFString *sub_195F4AE70()
{
  result = NSStringFromCHSControlSize(*v0);
  if (result)
  {
    v2 = result;
    v3 = sub_195FA08B8();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t TypedIdentifier.rawValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_195F4AF20(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t static TypedIdentifier.< infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return sub_195FA12B8();
  }
}

uint64_t sub_195F4B054()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t URL.ExtendedAttributeError.errorDescription.getter()
{
  v1 = v0;
  v2 = sub_195FA01A8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL.ExtendedAttributeError();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_195F4BAAC(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v13 = *v10;
  v12 = *(v10 + 1);
  if (EnumCaseMultiPayload == 1)
  {
    v14 = *(v10 + 2);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDDF0, &qword_195FAD750);
    (*(v3 + 32))(v6, &v10[*(v15 + 64)], v2);
    v20 = 0;
    v21 = 0xE000000000000000;
    sub_195FA0F38();
    MEMORY[0x19A8C3F70](0xD000000000000013, 0x8000000195FC1050);
    MEMORY[0x19A8C3F70](v13, v12);

    MEMORY[0x19A8C3F70](0xD000000000000022, 0x8000000195FC1070);
    v19[1] = v14;
    v16 = sub_195FA1288();
    MEMORY[0x19A8C3F70](v16);

    MEMORY[0x19A8C3F70](0xD000000000000018, 0x8000000195FC10A0);
    sub_195FA1008();
    v17 = v20;
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v20 = 0;
    v21 = 0xE000000000000000;
    sub_195FA0F38();

    v20 = 0xD000000000000019;
    v21 = 0x8000000195FC10C0;
    MEMORY[0x19A8C3F70](v13, v12);

    MEMORY[0x19A8C3F70](0x746F6E2073617720, 0xEF2E646E756F6620);
    return v20;
  }

  return v17;
}

uint64_t sub_195F4B3D0(const char *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_195FA0918();
  v7 = removexattr(a1, (v6 + 32), 0);

  if (v7 < 0)
  {
    MEMORY[0x19A8C3C80](result);
    result = sub_195FA0698();
    if ((result & 0x100000000) != 0)
    {
      __break(1u);
    }

    else
    {
      sub_195FA0188();
      v9 = sub_195FA06A8();
      result = sub_195FA06A8();
      if (v9 != result)
      {
        type metadata accessor for URL.ExtendedAttributeError();
        sub_195EBE9E8(&unk_1EAEEC208, type metadata accessor for URL.ExtendedAttributeError);
        swift_allocError();
        v11 = v10;
        v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDDF0, &qword_195FAD750) + 64);
        *v11 = a2;
        v11[1] = a3;
        v11[2] = v7;
        sub_195FA01A8();

        sub_195F4BFD8(MEMORY[0x1E69E7CC0]);
        sub_195EBE9E8(&unk_1EAEEBCD8, MEMORY[0x1E6967EB8]);
        sub_195FA0308();
        swift_storeEnumTagMultiPayload();
        return swift_willThrow();
      }
    }
  }

  return result;
}

uint64_t URL.extendedAttributeNames()()
{
  v0 = sub_195FA08F8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_195FA0448();
  v5 = sub_195FA0918();

  v6 = listxattr((v5 + 32), 0, 0, 0);

  if (v6 == -1)
  {
    type metadata accessor for URL.ExtendedAttributeError();
    sub_195EBE9E8(&unk_1EAEEC208, type metadata accessor for URL.ExtendedAttributeError);
    swift_allocError();
    *v20 = 0;
    v20[1] = 0xE000000000000000;
    v20[2] = -1;
    MEMORY[0x19A8C3C80]();
    result = sub_195FA0698();
    if ((result & 0x100000000) != 0)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v21 = result;
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDDF0, &qword_195FAD750) + 64);
    v23 = sub_195FA01A8();
    v28 = v21;
    sub_195F4BFD8(MEMORY[0x1E69E7CC0]);
    sub_195EBE9E8(&unk_1EAEEBCD8, MEMORY[0x1E6967EB8]);
LABEL_12:
    v15 = v23;
    sub_195FA0308();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return v15;
  }

  v7 = swift_slowAlloc();
  sub_195FA0448();
  v8 = sub_195FA0918();

  v9 = listxattr((v8 + 32), v7, v6, 0);

  if (v9 != -1)
  {
    sub_195FA08D8();
    v10 = sub_195FA08E8();
    (*(v1 + 8))(v4, v0);
    v11 = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithBytes:v7 length:v6 encoding:v10];
    if (!v11)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v12 = v11;
    v13 = sub_195FA0888();
    v14 = [v12 componentsSeparatedByString_];

    v15 = sub_195FA0B38();
    if (*(v15 + 16))
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v17 = *(v15 + 16);
        if (v17)
        {
LABEL_7:
          v18 = v17 - 1;
          v19 = *(v15 + 16 * v18 + 40);
          *(v15 + 16) = v18;

          return v15;
        }

        goto LABEL_17;
      }
    }

    else
    {
      __break(1u);
    }

    result = sub_195F4BB88(v15);
    v15 = result;
    v17 = *(result + 16);
    if (v17)
    {
      goto LABEL_7;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  type metadata accessor for URL.ExtendedAttributeError();
  sub_195EBE9E8(&unk_1EAEEC208, type metadata accessor for URL.ExtendedAttributeError);
  swift_allocError();
  *v24 = 0;
  v24[1] = 0xE000000000000000;
  v24[2] = -1;
  MEMORY[0x19A8C3C80]();
  result = sub_195FA0698();
  if ((result & 0x100000000) == 0)
  {
    v25 = result;
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDDF0, &qword_195FAD750) + 64);
    v23 = sub_195FA01A8();
    v29 = v25;
    sub_195F4BFD8(MEMORY[0x1E69E7CC0]);
    sub_195EBE9E8(&unk_1EAEEBCD8, MEMORY[0x1E6967EB8]);
    goto LABEL_12;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t URL.extendedAttributeData(named:)()
{
  result = sub_195FA0418();
  if (!v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_195F4BAAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL.ExtendedAttributeError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_195F4BB24(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_195FA0E88();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_195FA0F68();
}

uint64_t _s10Foundation3URLV14ChronoServicesE22ExtendedAttributeErrorO2eeoiySbAF_AFtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_195FA01A8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v51 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v46 - v9;
  v11 = type metadata accessor for URL.ExtendedAttributeError();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v46 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDDF8, &qword_195FAD850);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = &v46 - v21;
  v23 = (&v46 + *(v20 + 56) - v21);
  sub_195F4BAAC(a1, &v46 - v21);
  sub_195F4BAAC(a2, v23);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_195F4BAAC(v22, v17);
    v35 = *v17;
    v36 = v17[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      if (v35 == *v23 && v36 == v23[1])
      {
        v44 = v23[1];
      }

      else
      {
        v38 = v23[1];
        v39 = sub_195FA12B8();

        if ((v39 & 1) == 0)
        {
LABEL_22:
          sub_195F4C258(v22);
          goto LABEL_23;
        }
      }

      sub_195F4C258(v22);
      v41 = 1;
      return v41 & 1;
    }

LABEL_17:

    sub_195F4C1F0(v22);
LABEL_23:
    v41 = 0;
    return v41 & 1;
  }

  v50 = v10;
  sub_195F4BAAC(v22, v15);
  v24 = *(v15 + 1);
  v49 = *v15;
  v25 = *(v15 + 2);
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDDF0, &qword_195FAD750) + 64);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v5 + 8))(&v15[v26], v4);
    goto LABEL_17;
  }

  v28 = *v23;
  v27 = v23[1];
  v46 = v23[2];
  v47 = v25;
  v48 = v5;
  v29 = *(v5 + 32);
  v29(v50, &v15[v26], v4);
  v30 = v23 + v26;
  v31 = v51;
  v29(v51, v30, v4);
  if (v49 == v28 && v24 == v27)
  {
  }

  else
  {
    v33 = sub_195FA12B8();

    if ((v33 & 1) == 0)
    {
      v34 = v48;
LABEL_21:
      v43 = *(v34 + 8);
      v43(v31, v4);
      v43(v50, v4);
      goto LABEL_22;
    }
  }

  v34 = v48;
  if (v47 != v46)
  {
    goto LABEL_21;
  }

  sub_195EBE9E8(&unk_1EAEEBCD8, MEMORY[0x1E6967EB8]);
  v40 = v50;
  v41 = sub_195FA02F8();
  v42 = *(v34 + 8);
  v42(v31, v4);
  v42(v40, v4);
  sub_195F4C258(v22);
  return v41 & 1;
}

unint64_t sub_195F4BFD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED638, &unk_195FAD840);
    v3 = sub_195FA10B8();
    v4 = a1 + 32;

    while (1)
    {
      sub_195F4C180(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_195EC7CCC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_195F2E09C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t sub_195F4C180(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED640, &qword_195FAD010);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_195F4C1F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDDF8, &qword_195FAD850);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_195F4C258(uint64_t a1)
{
  v2 = type metadata accessor for URL.ExtendedAttributeError();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Encodable.toOPACKData()(uint64_t a1, uint64_t a2)
{
  sub_195FA05D8();
  v8[3] = a1;
  v8[4] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v2, a1);
  v6 = sub_195FA05C8();
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return v6;
}

void NSCoder.chsEncodeCodable(_:forKey:)(void *a1)
{
  v2 = v1;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = Encodable.toOPACKData()(v3, v4);
  v7 = v6;
  v8 = sub_195FA04B8();
  sub_195EC0890(v5, v7);
  v9 = v8;
  v10 = sub_195FA0888();
  [v2 encodeObject:v9 forKey:v10];
}

uint64_t NSCoder.chsDecodeCodable<A>(of:forKey:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_195F4CBAC();
  v6 = sub_195FA0D58();
  if (v6)
  {
    v7 = v6;
    sub_195FA04C8();
  }

  if (qword_1EAEEC170 != -1)
  {
    swift_once();
  }

  v8 = sub_195FA0678();
  __swift_project_value_buffer(v8, qword_1EAEF72E8);
  v9 = sub_195FA0658();
  v10 = sub_195FA0CA8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_195EB2000, v9, v10, "Unable to decode boxed codable = missing data", v11, 2u);
    MEMORY[0x19A8C5B70](v11, -1, -1);
  }

  v12 = [objc_opt_self() chs:8 initWithErrorCode:?];
  v13 = sub_195FA0318();

  [v3 failWithError_];
  v14 = *(*(a1 - 8) + 56);

  return v14(a2, 1, 1, a1);
}

uint64_t sub_195F4CB74(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

unint64_t sub_195F4CBAC()
{
  result = qword_1EAEEC2F0;
  if (!qword_1EAEEC2F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAEEC2F0);
  }

  return result;
}

uint64_t sub_195F4CBF8(_BYTE *a1, _BYTE *a2)
{
  v2 = 1684957547;
  v3 = *a1;
  v4 = 0xE400000000000000;
  v5 = 0x8000000195FBF8B0;
  if (v3 == 1)
  {
    v6 = 1684957547;
  }

  else
  {
    v6 = 0xD000000000000013;
  }

  if (v3 != 1)
  {
    v4 = 0x8000000195FBF8B0;
  }

  if (*a1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0xD000000000000011;
  }

  if (v3)
  {
    v8 = v4;
  }

  else
  {
    v8 = 0x8000000195FBF890;
  }

  if (*a2 == 1)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xD000000000000013;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD000000000000011;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0x8000000195FBF890;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_195FA12B8();
  }

  return v11 & 1;
}

uint64_t sub_195F4CCD0()
{
  v1 = *v0;
  sub_195FA1398();
  sub_195FA0958();

  return sub_195FA13E8();
}

uint64_t sub_195F4CD70()
{
  *v0;
  *v0;
  sub_195FA0958();
}

uint64_t sub_195F4CDFC()
{
  v1 = *v0;
  sub_195FA1398();
  sub_195FA0958();

  return sub_195FA13E8();
}

uint64_t sub_195F4CE98@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_195F4D848();
  *a2 = result;
  return result;
}

void sub_195F4CEC8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1684957547;
  if (v2 != 1)
  {
    v4 = 0xD000000000000013;
    v3 = 0x8000000195FBF8B0;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000011;
  }

  if (v5)
  {
    v3 = 0x8000000195FBF890;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_195F4CF24()
{
  v1 = 1684957547;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_195F4CF7C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_195F4D848();
  *a1 = result;
  return result;
}

uint64_t sub_195F4CFB0(uint64_t a1)
{
  v2 = sub_195F4D378();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_195F4CFEC(uint64_t a1)
{
  v2 = sub_195F4D378();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id CHSControlIdentity.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDE08, &qword_195FAD880);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_195F4D378();
  sub_195FA1448();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    type metadata accessor for CHSExtensionIdentity();
    v28 = 0;
    sub_195F4D69C(&qword_1EAEEC300);
    sub_195FA1178();
    v11 = v26;
    LOBYTE(v26) = 1;
    v24 = sub_195FA1138();
    v25 = v12;
    LOBYTE(v26) = 2;
    if (sub_195FA11B8())
    {
      v28 = 2;
      sub_195F3A9DC();
      sub_195FA1178();
      v16 = v26;
      v17 = v27;
      v21[1] = sub_195FA05D8();
      sub_195F411D0();
      v22 = v16;
      v23 = v17;
      v18 = sub_195FA0598();
      v20 = v23;
      v23 = v18;
      sub_195EC0890(v22, v20);
    }

    else
    {
      v23 = 0;
    }

    v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v14 = sub_195FA0888();

    v15 = v23;
    v3 = [v13 initWithExtensionIdentity:v11 kind:v14 intentReference:v23];

    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v3;
}

unint64_t sub_195F4D378()
{
  result = qword_1EAEEC468;
  if (!qword_1EAEEC468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEC468);
  }

  return result;
}

uint64_t CHSControlIdentity.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDE10, qword_195FAD888);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_195F4D378();
  sub_195FA1468();
  v11 = [v3 extensionIdentity];
  v20 = v11;
  v22 = 0;
  type metadata accessor for CHSExtensionIdentity();
  sub_195F4D69C(&qword_1EAEEC308);
  sub_195FA1238();

  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = [v3 kind];
  sub_195FA08B8();

  LOBYTE(v20) = 1;
  sub_195FA11F8();

  v14 = [v3 intentReference];
  if (!v14)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v15 = v14;
  sub_195FA05D8();
  v20 = sub_195FA05A8();
  v21 = v16;
  v22 = 2;
  v17 = v20;
  v18 = v16;
  sub_195F3A7B0();
  sub_195FA1238();
  (*(v6 + 8))(v9, v5);

  return sub_195EC0890(v17, v18);
}

uint64_t sub_195F4D69C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CHSExtensionIdentity();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_195F4D6E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = CHSControlIdentity.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_195F4D744()
{
  result = qword_1EAEEDE18;
  if (!qword_1EAEEDE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEDE18);
  }

  return result;
}

unint64_t sub_195F4D79C()
{
  result = qword_1EAEEC458;
  if (!qword_1EAEEC458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEC458);
  }

  return result;
}

unint64_t sub_195F4D7F4()
{
  result = qword_1EAEEC460;
  if (!qword_1EAEEC460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEC460);
  }

  return result;
}

uint64_t sub_195F4D848()
{
  v0 = sub_195FA10D8();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

void *CHSWidgetExtensionProviderOptions.controlsPredicate.getter()
{
  v1 = *(v0 + OBJC_IVAR___CHSWidgetExtensionProviderOptions_controlsPredicate);
  v2 = v1;
  return v1;
}

void *CHSWidgetExtensionProviderOptions.widgetsPredicate.getter()
{
  v1 = *(v0 + OBJC_IVAR___CHSWidgetExtensionProviderOptions_widgetsPredicate);
  v2 = v1;
  return v1;
}

void sub_195F4D904()
{
  v0 = [objc_allocWithZone(CHSWidgetDescriptorsPredicate) initIncludingRelevanceBacked_];
  v1 = [objc_opt_self() all];
  v2 = [objc_allocWithZone(CHSWidgetExtensionProviderOptions) initWithWidgetsPredicate:v0 controlsPredicate:v1 includeIntents:1];

  qword_1EAEEBAE0 = v2;
}

id static CHSWidgetExtensionProviderOptions.widgets.getter()
{
  v0 = [objc_opt_self() visible];
  v1 = [objc_allocWithZone(CHSWidgetExtensionProviderOptions) initWithWidgetsPredicate:v0 controlsPredicate:0];

  return v1;
}

uint64_t CHSWidgetExtensionProviderOptions.hash.getter()
{
  v1 = v0;
  sub_195FA13F8();
  v2 = [v0 widgetsPredicate];
  if (v2)
  {
    v3 = v2;
    sub_195FA13B8();
    v4 = v3;
    sub_195FA0D98();
  }

  else
  {
    sub_195FA13B8();
  }

  v5 = [v1 controlsPredicate];
  if (v5)
  {
    v6 = v5;
    [v5 includeVisible];

    sub_195FA13B8();
  }

  sub_195FA13B8();
  v7 = [v1 controlsPredicate];
  if (v7)
  {
    v8 = v7;
    [v7 includeHidden];

    sub_195FA13B8();
  }

  sub_195FA13B8();
  [v1 includeIntents];
  sub_195FA13B8();
  return sub_195FA13D8();
}

id sub_195F4DC30(uint64_t a1, uint64_t a2, SEL *a3)
{
  v3 = [objc_opt_self() *a3];
  v4 = [objc_allocWithZone(CHSWidgetExtensionProviderOptions) initWithWidgetsPredicate:0 controlsPredicate:v3];

  return v4;
}

id sub_195F4DCAC(SEL *a1)
{
  v1 = [objc_opt_self() *a1];
  v2 = [objc_allocWithZone(CHSWidgetExtensionProviderOptions) initWithWidgetsPredicate:0 controlsPredicate:v1];

  return v2;
}

CHSWidgetExtensionProviderOptions __swiftcall CHSWidgetExtensionProviderOptions.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v1 = [v0 init];
  result.widgetsPredicate = v3;
  result.controlsPredicate = v2;
  result.super.isa = v1;
  result.includeIntents = v4;
  return result;
}

uint64_t CHSWidgetExtensionProviderOptions.matchesEverything.getter()
{
  if (qword_1EAEEBAD0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EAEEBAE0;
  v2 = sub_195EBAC28(v0, v1);

  return v2 & 1;
}

uint64_t static CHSWidgetExtensionProviderOptions.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EAEEDE28 = a1;
  return result;
}

id CHSWidgetExtensionProviderOptions.init(coder:)(void *a1)
{
  v2 = sub_195EBC828(a1);

  return v2;
}

void _sSo33CHSWidgetExtensionProviderOptionsC14ChronoServicesE33controlDescriptorIsRemoteEligibleySbSo010CHSControlH0CFZ_0(void *a1)
{
  if (![a1 requestedDataProtection])
  {
    if (qword_1EAEEBBC0 != -1)
    {
      swift_once();
    }

    v16 = sub_195FA0678();
    __swift_project_value_buffer(v16, qword_1EAEF7280);
    v5 = a1;
    v6 = sub_195FA0658();
    v7 = sub_195FA0C98();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_26;
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v36 = v9;
    *v8 = 136315138;
    v17 = [v5 succinctDescription];

    if (v17)
    {
      v18 = sub_195FA08B8();
      v20 = v19;

      v21 = sub_195EBD554(v18, v20, &v36);

      *(v8 + 4) = v21;
      v15 = "control descriptor from classA extension is not remote eligible:%s";
      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_30;
  }

  if (([a1 supportsForwardingToRemoteDevices] & 1) == 0)
  {
    if (qword_1EAEEBBC0 != -1)
    {
      swift_once();
    }

    v22 = sub_195FA0678();
    __swift_project_value_buffer(v22, qword_1EAEF7280);
    v5 = a1;
    v6 = sub_195FA0658();
    v7 = sub_195FA0C98();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_26;
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v36 = v9;
    *v8 = 136315138;
    v23 = [v5 succinctDescription];

    if (v23)
    {
      v24 = sub_195FA08B8();
      v26 = v25;

      v27 = sub_195EBD554(v24, v26, &v36);

      *(v8 + 4) = v27;
      v15 = "control descriptor with supportsForwardingToRemoteDevices=false is not remote eligible:%s";
      goto LABEL_19;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    return;
  }

  v2 = [a1 actionMetadata];
  v3 = [v2 isLauncher];

  if (v3)
  {
    if (qword_1EAEEBBC0 != -1)
    {
      swift_once();
    }

    v4 = sub_195FA0678();
    __swift_project_value_buffer(v4, qword_1EAEF7280);
    v5 = a1;
    v6 = sub_195FA0658();
    v7 = sub_195FA0C98();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v36 = v9;
      *v8 = 136315138;
      v10 = [v5 succinctDescription];

      if (v10)
      {
        v11 = sub_195FA08B8();
        v13 = v12;

        v14 = sub_195EBD554(v11, v13, &v36);

        *(v8 + 4) = v14;
        v15 = "control descriptor with launcher action is not remote eligible:%s";
LABEL_19:
        _os_log_impl(&dword_195EB2000, v6, v7, v15, v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v9);
        MEMORY[0x19A8C5B70](v9, -1, -1);
        MEMORY[0x19A8C5B70](v8, -1, -1);
LABEL_27:

        return;
      }

      goto LABEL_31;
    }

LABEL_26:

    goto LABEL_27;
  }

  v28 = [a1 actionMetadata];
  v29 = [v28 isCameraCapture];

  if (v29)
  {
    if (qword_1EAEEBBC0 != -1)
    {
      swift_once();
    }

    v30 = sub_195FA0678();
    __swift_project_value_buffer(v30, qword_1EAEF7280);
    v5 = a1;
    v6 = sub_195FA0658();
    v7 = sub_195FA0C98();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v36 = v9;
      *v8 = 136315138;
      v31 = [v5 succinctDescription];

      if (v31)
      {
        v32 = sub_195FA08B8();
        v34 = v33;

        v35 = sub_195EBD554(v32, v34, &v36);

        *(v8 + 4) = v35;
        v15 = "control descriptor with camera capture action is not remote eligible:%s";
        goto LABEL_19;
      }

      goto LABEL_32;
    }

    goto LABEL_26;
  }
}

uint64_t WidgetRendererSessionInfo.rendererBundleIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t WidgetRendererSessionInfo.sessionIdentifier.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t WidgetRendererSessionInfo.__allocating_init(rendererBundleIdentifier:sessionIdentifier:widget:isForeground:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = a5;
  *(result + 56) = a6;
  return result;
}

uint64_t WidgetRendererSessionInfo.init(rendererBundleIdentifier:sessionIdentifier:widget:isForeground:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  return v6;
}

uint64_t WidgetRendererSessionInfo.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  WidgetRendererSessionInfo.init(from:)(a1);
  return v2;
}

void *WidgetRendererSessionInfo.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDE48, &qword_195FADA60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_195F4EC60();
  sub_195FA1448();
  if (v2)
  {
    type metadata accessor for WidgetRendererSessionInfo();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v17[0]) = 0;
    v1[2] = sub_195FA1138();
    v1[3] = v11;
    LOBYTE(v17[0]) = 1;
    v1[4] = sub_195FA1138();
    v1[5] = v12;
    v18 = 2;
    sub_195F3A9DC();
    sub_195FA1178();
    v14 = v17[0];
    v13 = v17[1];
    sub_195FA05D8();
    sub_195EB4B30(0, &qword_1EAEEDE58, off_1E7452758);
    v1[6] = sub_195FA0598();
    LOBYTE(v17[0]) = 3;
    v16 = sub_195FA1148();
    (*(v6 + 8))(v9, v5);
    sub_195EC0890(v14, v13);
    *(v3 + 56) = v16 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v3;
}

unint64_t sub_195F4EC60()
{
  result = qword_1EAEEDE50;
  if (!qword_1EAEEDE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEDE50);
  }

  return result;
}

uint64_t sub_195F4ECD8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDE60, &qword_195FADA68);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_195F4EC60();
  sub_195FA1468();
  v11 = *(v3 + 16);
  v12 = *(v3 + 24);
  LOBYTE(v22) = 0;
  sub_195FA11F8();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = *(v3 + 32);
  v14 = *(v3 + 40);
  LOBYTE(v22) = 1;
  sub_195FA11F8();
  v15 = *(v3 + 56);
  LOBYTE(v22) = 3;
  sub_195FA1208();
  sub_195FA05D8();
  v16 = *(v3 + 48);
  v22 = sub_195FA05A8();
  v23 = v17;
  v21[15] = 2;
  v18 = v22;
  v19 = v17;
  sub_195F3A7B0();
  sub_195FA1238();
  (*(v6 + 8))(v9, v5);
  return sub_195EC0890(v18, v19);
}

uint64_t sub_195F4EF34()
{
  v1 = *v0;
  sub_195FA1398();
  sub_195FA0958();

  return sub_195FA13E8();
}

uint64_t sub_195F4F008()
{
  *v0;
  *v0;
  *v0;
  sub_195FA0958();
}

uint64_t sub_195F4F0C8()
{
  v1 = *v0;
  sub_195FA1398();
  sub_195FA0958();

  return sub_195FA13E8();
}

uint64_t sub_195F4F198@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_195F4F6E4();
  *a2 = result;
  return result;
}

void sub_195F4F1C8(unint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x746567646977;
  if (*v1 != 2)
  {
    v3 = 0x726765726F467369;
    v2 = 0xEC000000646E756FLL;
  }

  v4 = 0x8000000195FBF8D0;
  v5 = 0xD000000000000018;
  if (*v1)
  {
    v5 = 0xD000000000000011;
    v4 = 0x8000000195FBF8F0;
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 <= 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_195F4F258()
{
  v1 = 0x746567646977;
  if (*v0 != 2)
  {
    v1 = 0x726765726F467369;
  }

  v2 = 0xD000000000000018;
  if (*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_195F4F2E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_195F4F6E4();
  *a1 = result;
  return result;
}

uint64_t sub_195F4F30C(uint64_t a1)
{
  v2 = sub_195F4EC60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_195F4F348(uint64_t a1)
{
  v2 = sub_195F4EC60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WidgetRendererSessionInfo.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t WidgetRendererSessionInfo.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

void *sub_195F4F3FC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for WidgetRendererSessionInfo();
  v5 = swift_allocObject();
  result = WidgetRendererSessionInfo.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t _s14ChronoServices25WidgetRendererSessionInfoC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (v4 || (sub_195FA12B8()) && (*(a1 + 32) == *(a2 + 32) ? (v5 = *(a1 + 40) == *(a2 + 40)) : (v5 = 0), (v5 || (sub_195FA12B8()) && (sub_195EB4B30(0, &qword_1EAEEBE10, 0x1E69E58C0), v6 = *(a1 + 48), v7 = *(a2 + 48), (sub_195FA0D88())))
  {
    v8 = *(a1 + 56) ^ *(a2 + 56) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

unint64_t sub_195F4F5E0()
{
  result = qword_1EAEEDE68;
  if (!qword_1EAEEDE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEDE68);
  }

  return result;
}

unint64_t sub_195F4F638()
{
  result = qword_1EAEEDE70;
  if (!qword_1EAEEDE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEDE70);
  }

  return result;
}

unint64_t sub_195F4F690()
{
  result = qword_1EAEEDE78;
  if (!qword_1EAEEDE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEDE78);
  }

  return result;
}

uint64_t sub_195F4F6E4()
{
  v0 = sub_195FA10D8();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t static CHSWidgetExtension.mock(extensionBundleIdentifier:containerBundleIdentifier:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  v6 = objc_allocWithZone(CHSExtensionIdentity);

  v7 = [v6 init];
  v8 = &v7[OBJC_IVAR___CHSExtensionIdentity_extensionBundleIdentifier];
  swift_beginAccess();
  v9 = *(v8 + 1);
  *v8 = v3;
  *(v8 + 1) = v2;
  v10 = v7;

  v11 = &v10[OBJC_IVAR___CHSExtensionIdentity_containerBundleIdentifier];
  swift_beginAccess();
  v12 = *(v11 + 1);
  *v11 = v5;
  *(v11 + 1) = v4;

  v13 = &v10[OBJC_IVAR___CHSExtensionIdentity_deviceIdentifier];
  swift_beginAccess();
  v14 = *(v13 + 1);
  *v13 = 0;
  *(v13 + 1) = 0;

  v15 = sub_195F4F868(v10);

  return v15;
}

uint64_t sub_195F4F868(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDA90, qword_195FAC9A0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_195FADCB0;
  v3 = CHSDefaultTestFamilyMaskSingle();
  v4 = objc_allocWithZone(CHSWidgetDescriptor);
  v5 = sub_195FA0888();
  v6 = [v4 initWithExtensionIdentity:a1 kind:v5 supportedFamilies:v3 intentType:0];

  *(v2 + 32) = v6;
  v7 = CHSDefaultTestFamilyMaskSingle();
  v8 = objc_allocWithZone(CHSWidgetDescriptor);
  v9 = sub_195FA0888();
  v10 = [v8 initWithExtensionIdentity:a1 kind:v9 supportedFamilies:v7 intentType:0];

  *(v2 + 40) = v10;
  v11 = CHSDefaultTestFamilyMaskSingle();
  v12 = objc_allocWithZone(CHSWidgetDescriptor);
  v13 = sub_195FA0888();
  v14 = [v12 initWithExtensionIdentity:a1 kind:v13 supportedFamilies:v11 intentType:0];

  *(v2 + 48) = v14;
  v15 = &selRef_appendString_counterpart_;
  v16 = [objc_allocWithZone(CHSMutableEntitlementCollection) init];
  [v16 setCanOpenSystemURLs_];
  [v16 setUsesEventService_];
  [v16 setCanKeepAlive_];
  [v16 setInvalidatesOnStorefrontChange_];
  v17 = [objc_allocWithZone(CHSMutableWidgetExtension) init];
  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_6;
  }

  v15 = v17;
  if ((v2 & 0xC000000000000001) != 0)
  {
LABEL_6:
    v18 = MEMORY[0x19A8C4520](0, v2);
    goto LABEL_4;
  }

  v18 = *(v2 + 32);
LABEL_4:
  v19 = v18;
  v20 = [v18 extensionIdentity];

  [v15 setIdentity_];
  v21 = sub_195FA0888();
  [v15 setLocalizedDisplayName_];

  v22 = sub_195FA0888();
  [v15 setContainerBundleLocalizedDisplayName_];

  sub_195EB4B30(0, &qword_1EAEEC138, off_1E7452768);
  v23 = sub_195FA0B28();

  [v15 setOrderedWidgetDescriptors_];

  [v15 setEntitlements_];
  [v15 copy];
  sub_195FA0E08();

  swift_unknownObjectRelease();
  sub_195EB4B30(0, &qword_1EAEEC4B8, off_1E7452788);
  swift_dynamicCast();
  return v25;
}

char *CHSExtensionIdentity.init(extensionBundleIdentifier:containerBundleIdentifier:deviceIdentifier:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *a2;
  v9 = a2[1];
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = &v10[OBJC_IVAR___CHSExtensionIdentity_extensionBundleIdentifier];
  swift_beginAccess();
  v12 = *(v11 + 1);
  *v11 = v6;
  *(v11 + 1) = v7;
  v13 = v10;

  v14 = &v13[OBJC_IVAR___CHSExtensionIdentity_containerBundleIdentifier];
  swift_beginAccess();
  v15 = *(v14 + 1);
  *v14 = v8;
  *(v14 + 1) = v9;

  v16 = &v13[OBJC_IVAR___CHSExtensionIdentity_deviceIdentifier];
  swift_beginAccess();
  v17 = *(v16 + 1);
  *v16 = a3;
  *(v16 + 1) = a4;

  return v13;
}

uint64_t CHSExtensionIdentity.tokenString.getter()
{
  CHSExtensionIdentity.token.getter(&v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8E8, &unk_195FAC890);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_195FAC070;
  v1 = sub_195EB5F80();
  v2 = sub_195EB6074(v1);
  v4 = v3;

  *(v0 + 32) = v2;
  *(v0 + 40) = v4;

  sub_195EB6214(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8F0, &unk_195FACA00);
  sub_195EB5F38(&qword_1EAEEC498, &qword_1EAEED8F0, &unk_195FACA00);
  v6 = sub_195FA0828();

  return v6;
}

uint64_t CHSExtensionIdentity.__extensionBundleIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR___CHSExtensionIdentity_extensionBundleIdentifier);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t CHSExtensionIdentity.extensionBundleIdentifier.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR___CHSExtensionIdentity_extensionBundleIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t CHSExtensionIdentity.extensionBundleIdentifier.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + OBJC_IVAR___CHSExtensionIdentity_extensionBundleIdentifier);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v2;
  v4[1] = v3;
}

uint64_t CHSExtensionIdentity.__containerBundleIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR___CHSExtensionIdentity_containerBundleIdentifier);
  swift_beginAccess();
  if (!v1[1])
  {
    return 0;
  }

  v2 = *v1;

  return v2;
}

uint64_t CHSExtensionIdentity.containerBundleIdentifier.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR___CHSExtensionIdentity_containerBundleIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t CHSExtensionIdentity.containerBundleIdentifier.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + OBJC_IVAR___CHSExtensionIdentity_containerBundleIdentifier);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v2;
  v4[1] = v3;
}

uint64_t CHSExtensionIdentity.__deviceIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR___CHSExtensionIdentity_deviceIdentifier);
  swift_beginAccess();
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t CHSExtensionIdentity.deviceIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR___CHSExtensionIdentity_deviceIdentifier);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t CHSExtensionIdentity.deviceIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___CHSExtensionIdentity_deviceIdentifier);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

BOOL CHSExtensionIdentity.isRemote.getter()
{
  v1 = v0 + OBJC_IVAR___CHSExtensionIdentity_deviceIdentifier;
  swift_beginAccess();
  return *(v1 + 8) != 0;
}

uint64_t CHSExtensionIdentity.description.getter()
{
  CHSExtensionIdentity.token.getter(&v2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8F0, &unk_195FACA00);
  sub_195EB5F38(&qword_1EAEEC498, &qword_1EAEED8F0, &unk_195FACA00);
  v0 = sub_195FA0828();
  swift_bridgeObjectRelease_n();
  return v0;
}

id CHSExtensionIdentity.copy(with:)@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for CHSExtensionIdentity();
  *a1 = v3;

  return v3;
}

uint64_t sub_195F50404(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "extensionBundleIdentifier";
  v4 = 0xD000000000000010;
  if (v2 == 1)
  {
    v5 = 0xD000000000000019;
  }

  else
  {
    v5 = 0xD000000000000010;
  }

  if (v2 == 1)
  {
    v6 = "extensionBundleIdentifier";
  }

  else
  {
    v6 = "containerBundleIdentifier";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000019;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "r";
  }

  if (*a2 == 1)
  {
    v4 = 0xD000000000000019;
  }

  else
  {
    v3 = "containerBundleIdentifier";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000019;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "r";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_195FA12B8();
  }

  return v11 & 1;
}

uint64_t sub_195F504D8()
{
  v1 = *v0;
  sub_195FA1398();
  sub_195FA0958();

  return sub_195FA13E8();
}

uint64_t sub_195F50570()
{
  *v0;
  *v0;
  sub_195FA0958();
}

uint64_t sub_195F505F4()
{
  v1 = *v0;
  sub_195FA1398();
  sub_195FA0958();

  return sub_195FA13E8();
}

uint64_t sub_195F50688@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_195F50DD0();
  *a2 = result;
  return result;
}

void sub_195F506B8(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000019;
  v3 = "extensionBundleIdentifier";
  v4 = 0xD000000000000010;
  if (*v1 == 1)
  {
    v4 = 0xD000000000000019;
  }

  else
  {
    v3 = "containerBundleIdentifier";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "r";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

uint64_t sub_195F50710@<X0>(_BYTE *a1@<X8>)
{
  result = sub_195F50DD0();
  *a1 = result;
  return result;
}

uint64_t sub_195F50738(uint64_t a1)
{
  v2 = sub_195EC0D2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_195F50774(uint64_t a1)
{
  v2 = sub_195EC0D2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CHSExtensionIdentity.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDE98, &unk_195FADCF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_195EC0D2C();
  sub_195FA1468();
  v11 = (v3 + OBJC_IVAR___CHSExtensionIdentity_extensionBundleIdentifier);
  swift_beginAccess();
  v12 = v11[1];
  v21 = *v11;
  v22 = v12;
  LOBYTE(v19) = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDA70, &qword_195FAC990);
  sub_195EB5F38(&qword_1ED457A10, &qword_1EAEEDA70, &qword_195FAC990);
  sub_195FA1238();

  if (!v2)
  {
    v13 = (v3 + OBJC_IVAR___CHSExtensionIdentity_containerBundleIdentifier);
    swift_beginAccess();
    v14 = v13[1];
    v19 = *v13;
    v20 = v14;
    LOBYTE(v18) = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDEA0, &unk_195FADD00);
    sub_195F50C1C();
    sub_195FA1238();

    v15 = OBJC_IVAR___CHSExtensionIdentity_deviceIdentifier;
    swift_beginAccess();
    v18 = *(v3 + v15);
    v17[15] = 2;
    sub_195F50CCC();
    sub_195FA1238();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t static CHSExtensionIdentity.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + OBJC_IVAR___CHSExtensionIdentity_extensionBundleIdentifier);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = (a2 + OBJC_IVAR___CHSExtensionIdentity_extensionBundleIdentifier);
  swift_beginAccess();
  if (v4 == *v6 && v5 == v6[1])
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_195FA12B8();
  }

  return v8 & 1;
}

uint64_t sub_195F50B0C(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = (*a1 + OBJC_IVAR___CHSExtensionIdentity_extensionBundleIdentifier);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = (v2 + OBJC_IVAR___CHSExtensionIdentity_extensionBundleIdentifier);
  swift_beginAccess();
  if (v4 == *v6 && v5 == v6[1])
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_195FA12B8();
  }

  return v8 & 1;
}

BOOL CHSExtensionIdentity.isContainerIdentifierValid.getter()
{
  v1 = (v0 + OBJC_IVAR___CHSExtensionIdentity_containerBundleIdentifier);
  swift_beginAccess();
  v2 = v1[1];
  if (!v2)
  {
    return 0;
  }

  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v3 = *v1 & 0xFFFFFFFFFFFFLL;
  }

  return v3 != 0;
}

unint64_t sub_195F50C1C()
{
  result = qword_1ED457A18;
  if (!qword_1ED457A18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAEEDEA0, &unk_195FADD00);
    sub_195EB5F38(&unk_1ED457A20, &qword_1EAEEDA60, &qword_195FAC980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED457A18);
  }

  return result;
}

unint64_t sub_195F50CCC()
{
  result = qword_1ED457A08;
  if (!qword_1ED457A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED457A08);
  }

  return result;
}

unint64_t sub_195F50D24()
{
  result = qword_1EAEEDEB0;
  if (!qword_1EAEEDEB0)
  {
    type metadata accessor for CHSExtensionIdentity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEDEB0);
  }

  return result;
}

unint64_t sub_195F50D7C()
{
  result = qword_1EAEEDEB8;
  if (!qword_1EAEEDEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEDEB8);
  }

  return result;
}

uint64_t sub_195F50DD0()
{
  v0 = sub_195FA10D8();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t TaskPriority.description.getter()
{
  v1 = 0xD000000000000017;
  v2 = *v0;
  v3 = 0xD000000000000019;
  if (v2 == 2)
  {
    v3 = 0xD000000000000017;
  }

  if (*v0)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = v3;
  }

  *v0;
  return result;
}

unint64_t sub_195F50EA4()
{
  result = qword_1EAEEBC30;
  if (!qword_1EAEEBC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEBC30);
  }

  return result;
}

unint64_t sub_195F50EF8()
{
  v1 = 0xD000000000000017;
  v2 = *v0;
  v3 = 0xD000000000000019;
  if (v2 == 2)
  {
    v3 = 0xD000000000000017;
  }

  if (*v0)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = v3;
  }

  *v0;
  return result;
}

uint64_t static CHSRemoteDevicePredicate.deviceIdentifier(_:)(uint64_t a1, uint64_t a2)
{
  v5 = [objc_allocWithZone(CHSRemoteDevicePredicate) init];
  v6 = &v5[OBJC_IVAR___CHSRemoteDevicePredicate_predicate];
  v7 = *&v5[OBJC_IVAR___CHSRemoteDevicePredicate_predicate];
  v8 = *&v5[OBJC_IVAR___CHSRemoteDevicePredicate_predicate + 8];
  *v6 = a1;
  *(v6 + 1) = a2;
  LOBYTE(a1) = v6[16];
  v6[16] = 0;
  v9 = v5;

  sub_195EC5C98(v7, v8, a1);

  return MEMORY[0x1EEE6BE48](v9, v2, 0, 0, 0);
}

uint64_t static CHSRemoteDevicePredicate.deviceType(_:)(uint64_t a1)
{
  v3 = [objc_allocWithZone(CHSRemoteDevicePredicate) init];
  v4 = &v3[OBJC_IVAR___CHSRemoteDevicePredicate_predicate];
  v5 = *&v3[OBJC_IVAR___CHSRemoteDevicePredicate_predicate];
  v6 = *&v3[OBJC_IVAR___CHSRemoteDevicePredicate_predicate + 8];
  *v4 = a1;
  *(v4 + 1) = 0;
  LOBYTE(a1) = v4[16];
  v4[16] = 1;
  v7 = v3;
  sub_195EC5C98(v5, v6, a1);

  return MEMORY[0x1EEE6BE48](v7, v1, 0, 0, 0);
}

uint64_t static CHSRemoteDevicePredicate.relationshipIdentifier(_:)()
{
  v1 = v0;
  v2 = sub_195FA0528();
  v4 = v3;
  v5 = [objc_allocWithZone(CHSRemoteDevicePredicate) init];
  v6 = &v5[OBJC_IVAR___CHSRemoteDevicePredicate_predicate];
  v7 = *&v5[OBJC_IVAR___CHSRemoteDevicePredicate_predicate];
  v8 = *&v5[OBJC_IVAR___CHSRemoteDevicePredicate_predicate + 8];
  *v6 = v2;
  *(v6 + 1) = v4;
  LOBYTE(v2) = v6[16];
  v6[16] = 2;
  v9 = v5;
  sub_195EC5C98(v7, v8, v2);

  return MEMORY[0x1EEE6BE48](v9, v1, 0, 0, 0);
}

char *static CHSRemoteDevicePredicate.none.getter()
{
  v0 = [objc_allocWithZone(CHSRemoteDevicePredicate) init];
  v1 = &v0[OBJC_IVAR___CHSRemoteDevicePredicate_predicate];
  v2 = *&v0[OBJC_IVAR___CHSRemoteDevicePredicate_predicate];
  v3 = *&v0[OBJC_IVAR___CHSRemoteDevicePredicate_predicate + 8];
  *v1 = 0;
  *(v1 + 1) = 0;
  v4 = v1[16];
  v1[16] = 3;
  v5 = v0;
  sub_195EC5C98(v2, v3, v4);

  return v5;
}

char *static CHSRemoteDevicePredicate.all.getter()
{
  v0 = [objc_allocWithZone(CHSRemoteDevicePredicate) init];
  v1 = &v0[OBJC_IVAR___CHSRemoteDevicePredicate_predicate];
  v2 = *&v0[OBJC_IVAR___CHSRemoteDevicePredicate_predicate];
  v3 = *&v0[OBJC_IVAR___CHSRemoteDevicePredicate_predicate + 8];
  *v1 = xmmword_195FAA6A0;
  v4 = v1[16];
  v1[16] = 3;
  v5 = v0;
  sub_195EC5C98(v2, v3, v4);

  return v5;
}

Swift::Bool __swiftcall CHSRemoteDevicePredicate.acceptsDevice(_:)(CHSRemoteDevice *a1)
{
  v3 = sub_195FA0548();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + OBJC_IVAR___CHSRemoteDevicePredicate_predicate);
  v10 = *(v1 + OBJC_IVAR___CHSRemoteDevicePredicate_predicate + 8);
  if (*(v1 + OBJC_IVAR___CHSRemoteDevicePredicate_predicate + 16) > 1u)
  {
    if (*(v1 + OBJC_IVAR___CHSRemoteDevicePredicate_predicate + 16) != 2)
    {
      v17 = (v9 | v10) != 0;
      return v17 & 1;
    }

    v18 = v6;
    v19 = *(v1 + OBJC_IVAR___CHSRemoteDevicePredicate_predicate + 8);

    v20 = [(CHSRemoteDevice *)a1 relationshipID];
    sub_195FA0538();

    v21 = sub_195FA0528();
    v23 = v22;
    (*(v4 + 8))(v8, v18);
    if (v21 != v9 || v10 != v23)
    {
      v17 = sub_195FA12B8();
      sub_195EC5C98(v9, v10, 2u);

      return v17 & 1;
    }

    sub_195EC5C98(v9, v10, 2u);

LABEL_18:
    v17 = 1;
    return v17 & 1;
  }

  if (*(v1 + OBJC_IVAR___CHSRemoteDevicePredicate_predicate + 16))
  {
    v17 = [(CHSRemoteDevice *)a1 deviceType]== v9;
    return v17 & 1;
  }

  v11 = *(v1 + OBJC_IVAR___CHSRemoteDevicePredicate_predicate + 8);

  v12 = [(CHSRemoteDevice *)a1 deviceID];
  v13 = sub_195FA08B8();
  v15 = v14;

  if (v13 == v9 && v10 == v15)
  {

    sub_195EC5C98(v9, v10, 0);
    goto LABEL_18;
  }

  v17 = sub_195FA12B8();

  sub_195EC5C98(v9, v10, 0);
  return v17 & 1;
}

uint64_t sub_195F51768(_BOOL8 a1, uint64_t a2, unsigned __int8 a3)
{
  sub_195FA1398();
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      v6 = 4;
      goto LABEL_6;
    }

    v7 = (a1 | a2) != 0;
LABEL_9:
    MEMORY[0x19A8C4970](v7);
    return sub_195FA13E8();
  }

  if (a3)
  {
    MEMORY[0x19A8C4970](3);
    v7 = a1;
    goto LABEL_9;
  }

  v6 = 2;
LABEL_6:
  MEMORY[0x19A8C4970](v6);
  sub_195FA0958();
  return sub_195FA13E8();
}

uint64_t sub_195F51820(uint64_t a1)
{
  v2 = sub_195F52D0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_195F5185C(uint64_t a1)
{
  v2 = sub_195F52D0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_195F518A4(uint64_t a1)
{
  v2 = sub_195EC5C44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_195F518E0(uint64_t a1)
{
  v2 = sub_195EC5C44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_195F5191C(uint64_t a1)
{
  v2 = sub_195F52CB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_195F51958(uint64_t a1)
{
  v2 = sub_195F52CB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_195F51994(uint64_t a1)
{
  v2 = sub_195F52C64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_195F519D0(uint64_t a1)
{
  v2 = sub_195F52C64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_195F51A0C(uint64_t a1)
{
  v2 = sub_195EC5D48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_195F51A48(uint64_t a1)
{
  v2 = sub_195EC5D48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_195F51A84(uint64_t a1)
{
  v2 = sub_195F52C10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_195F51AC0(uint64_t a1)
{
  v2 = sub_195F52C10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_195F51B08()
{
  v1 = *v0;
  if (*(v0 + 16) > 1u)
  {
    if (*(v0 + 16) == 2)
    {
      v2 = 4;
      goto LABEL_6;
    }

    v4 = *v0 != 0;
    return MEMORY[0x19A8C4970](v4);
  }

  if (*(v0 + 16))
  {
    MEMORY[0x19A8C4970](3);
    v4 = v1;
    return MEMORY[0x19A8C4970](v4);
  }

  v2 = 2;
LABEL_6:
  MEMORY[0x19A8C4970](v2);

  return sub_195FA0958();
}

uint64_t sub_195F51BBC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_195FA1398();
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = 4;
      goto LABEL_6;
    }

    v5 = (v1 | v2) != 0;
LABEL_9:
    MEMORY[0x19A8C4970](v5);
    return sub_195FA13E8();
  }

  if (v3)
  {
    MEMORY[0x19A8C4970](3);
    v5 = v1;
    goto LABEL_9;
  }

  v4 = 2;
LABEL_6:
  MEMORY[0x19A8C4970](v4);
  sub_195FA0958();
  return sub_195FA13E8();
}

uint64_t CHSRemoteDevicePredicate.isEqual(_:)(uint64_t a1)
{
  v2 = sub_195EB773C(a1, v6);
  if (!v7)
  {
    sub_195EB7914(v6);
    goto LABEL_5;
  }

  type metadata accessor for CHSRemoteDevicePredicate(v2);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v3 = 0;
    return v3 & 1;
  }

  v3 = sub_195F52898(*(v1 + OBJC_IVAR___CHSRemoteDevicePredicate_predicate), *(v1 + OBJC_IVAR___CHSRemoteDevicePredicate_predicate + 8), *(v1 + OBJC_IVAR___CHSRemoteDevicePredicate_predicate + 16), *&v5[OBJC_IVAR___CHSRemoteDevicePredicate_predicate], *&v5[OBJC_IVAR___CHSRemoteDevicePredicate_predicate + 8], v5[OBJC_IVAR___CHSRemoteDevicePredicate_predicate + 16]);

  return v3 & 1;
}

uint64_t CHSRemoteDevicePredicate.hash.getter()
{
  v1 = *(v0 + OBJC_IVAR___CHSRemoteDevicePredicate_predicate);
  v2 = *(v0 + OBJC_IVAR___CHSRemoteDevicePredicate_predicate + 8);
  v3 = *(v0 + OBJC_IVAR___CHSRemoteDevicePredicate_predicate + 16);
  sub_195FA1398();
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = 4;
      goto LABEL_6;
    }

    v5 = (v1 | v2) != 0;
LABEL_9:
    MEMORY[0x19A8C4970](v5);
    goto LABEL_10;
  }

  if (v3)
  {
    MEMORY[0x19A8C4970](3);
    v5 = v1;
    goto LABEL_9;
  }

  v4 = 2;
LABEL_6:
  MEMORY[0x19A8C4970](v4);

  sub_195FA0958();
LABEL_10:
  v6 = sub_195FA13E8();
  sub_195EC5C98(v1, v2, v3);
  return v6;
}

id CHSRemoteDevicePredicate.copy(with:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[3] = type metadata accessor for CHSRemoteDevicePredicate(a1);
  *a2 = v4;

  return v4;
}

uint64_t sub_195F51FE0(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0xE900000000000065;
  }

  else
  {
    v2 = 0xED00006174614465;
  }

  if (*a2)
  {
    v3 = 0xE900000000000065;
  }

  else
  {
    v3 = 0xED00006174614465;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_195FA12B8();
  }

  return v4 & 1;
}

uint64_t sub_195F52080()
{
  v1 = *v0;
  sub_195FA1398();
  sub_195FA0958();

  return sub_195FA13E8();
}

uint64_t sub_195F52100()
{
  *v0;
  sub_195FA0958();
}

uint64_t sub_195F5216C()
{
  v1 = *v0;
  sub_195FA1398();
  sub_195FA0958();

  return sub_195FA13E8();
}

uint64_t sub_195F521E8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_195FA10D8();

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

void sub_195F52248(void *a1@<X8>)
{
  v2 = 0xED00006174614465;
  if (*v1)
  {
    v2 = 0xE900000000000065;
  }

  *a1 = 0x7461636964657270;
  a1[1] = v2;
}

uint64_t sub_195F522BC@<X0>(char *a1@<X8>)
{
  v2 = sub_195FA10D8();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_195F52320(uint64_t a1)
{
  v2 = sub_195F52968();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_195F5235C(uint64_t a1)
{
  v2 = sub_195F52968();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CHSRemoteDevicePredicate.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDEC8, &qword_195FAE078);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12[-v7];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_195F52968();
  sub_195FA1468();
  v10 = *(v2 + OBJC_IVAR___CHSRemoteDevicePredicate_predicate + 16);
  v13 = *(v2 + OBJC_IVAR___CHSRemoteDevicePredicate_predicate);
  v14 = v10;
  v12[15] = 1;
  sub_195EC5AB0();
  sub_195FA1238();
  return (*(v5 + 8))(v8, v4);
}

char *CHSRemoteDevicePredicate.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDED8, &unk_195FAE080);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v18 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_195F52968();
  sub_195FA1448();
  if (!v1)
  {
    v21 = 1;
    sub_195EC7618();
    sub_195FA1178();
    v11 = v18[1];
    v12 = v18[2];
    v20 = v19;
    v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    (*(v4 + 8))(v7, v3);
    v14 = &v13[OBJC_IVAR___CHSRemoteDevicePredicate_predicate];
    v15 = *&v13[OBJC_IVAR___CHSRemoteDevicePredicate_predicate];
    v16 = *&v13[OBJC_IVAR___CHSRemoteDevicePredicate_predicate + 8];
    *v14 = v11;
    *(v14 + 1) = v12;
    v17 = v14[16];
    v14[16] = v20;
    v9 = v13;
    sub_195EC5C98(v15, v16, v17);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v9;
}

char *sub_195F5274C@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  result = CHSRemoteDevicePredicate.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_195F52898(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      if (a6 == 2)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        return sub_195FA12B8();
      }
    }

    else if (a1 | a2)
    {
      if (a6 == 3 && a4 == 1 && !a5)
      {
        return 1;
      }
    }

    else if (a6 == 3 && !(a5 | a4))
    {
      return 1;
    }
  }

  else if (a3)
  {
    if (a6 == 1)
    {
      return a1 == a4;
    }
  }

  else if (!a6)
  {
    if (a1 == a4 && a2 == a5)
    {
      return 1;
    }

    return sub_195FA12B8();
  }

  return 0;
}

unint64_t sub_195F52968()
{
  result = qword_1EAEEDED0;
  if (!qword_1EAEEDED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEDED0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So24CHSRemoteDevicePredicateC14ChronoServicesE0C033_E1AE0057D1F63D0AFC0DF38A496B6370LLO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_195F529FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_195F52A44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_195F52A88(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_195F52AB4()
{
  result = qword_1EAEEDEE8;
  if (!qword_1EAEEDEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEDEE8);
  }

  return result;
}

unint64_t sub_195F52B0C()
{
  result = qword_1EAEEDEF0;
  if (!qword_1EAEEDEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEDEF0);
  }

  return result;
}

unint64_t sub_195F52B64()
{
  result = qword_1EAEEDEF8;
  if (!qword_1EAEEDEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEDEF8);
  }

  return result;
}

unint64_t sub_195F52BBC()
{
  result = qword_1EAEEDF00;
  if (!qword_1EAEEDF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEDF00);
  }

  return result;
}

unint64_t sub_195F52C10()
{
  result = qword_1EAEEDF48;
  if (!qword_1EAEEDF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEDF48);
  }

  return result;
}

unint64_t sub_195F52C64()
{
  result = qword_1EAEEDF50;
  if (!qword_1EAEEDF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEDF50);
  }

  return result;
}

unint64_t sub_195F52CB8()
{
  result = qword_1EAEEDF60;
  if (!qword_1EAEEDF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEDF60);
  }

  return result;
}

unint64_t sub_195F52D0C()
{
  result = qword_1EAEEDF68;
  if (!qword_1EAEEDF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEDF68);
  }

  return result;
}

uint64_t sub_195F52D60(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CHSRemoteDeviceType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_195F52DA8()
{
  result = qword_1EAEEDFB8;
  if (!qword_1EAEEDFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEDFB8);
  }

  return result;
}

unint64_t sub_195F52E00()
{
  result = qword_1EAEEDFC0;
  if (!qword_1EAEEDFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEDFC0);
  }

  return result;
}

unint64_t sub_195F52E58()
{
  result = qword_1EAEEDFC8;
  if (!qword_1EAEEDFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEDFC8);
  }

  return result;
}

unint64_t sub_195F52EB0()
{
  result = qword_1EAEEDFD0;
  if (!qword_1EAEEDFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEDFD0);
  }

  return result;
}

uint64_t sub_195F52FAC(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(a5 + 8))(a3, a5);
  a1(v8);
  return (*(a5 + 24))(a3, a5);
}

uint64_t sub_195F53054()
{
  MEMORY[0x19A8C5B70](*(v0 + 16), -1, -1);

  return swift_deallocClassInstance();
}

uint64_t sub_195F530AC()
{
  v10 = sub_195FA0CF8();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_195FA0CD8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_195FA07D8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9[1] = sub_195EC6FD4();
  sub_195FA07A8();
  v11 = MEMORY[0x1E69E7CC0];
  sub_195F566D8(&qword_1EAEEC5A0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEE3A0, &unk_195FAC790);
  sub_195F43EC8(&qword_1EAEEC5B0, &unk_1EAEEE3A0, &unk_195FAC790);
  sub_195FA0E38();
  (*(v0 + 104))(v3, *MEMORY[0x1E69E8098], v10);
  result = sub_195FA0D38();
  qword_1EAEEBC10 = result;
  return result;
}

uint64_t sub_195F532FC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 120);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_195F5339C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = sub_195FA0DB8();
  return (*(*(v6 - 8) + 16))(a1, v1 + v4, v6);
}

uint64_t sub_195F53448@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 176);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = sub_195FA0DB8();
  return (*(*(v6 - 8) + 16))(a1, v1 + v4, v6);
}

uint64_t sub_195F534F4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 176);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = sub_195FA0DB8();
  (*(*(v6 - 8) + 40))(v1 + v4, a1, v6);
  return swift_endAccess();
}

uint64_t sub_195F535B8()
{
  sub_195F55344();
}

uint64_t sub_195F535F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a3)
  {
    sub_195FA08B8();
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v13, 0, sizeof(v13));
    v10 = a5;
    v11 = a1;
    if (!a5)
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  v8 = a5;
  v9 = a1;
  sub_195FA0E08();
  swift_unknownObjectRelease();
  if (a5)
  {
LABEL_4:
    type metadata accessor for NSKeyValueChangeKey(0);
    sub_195F566D8(&qword_1EAEEBB20, type metadata accessor for NSKeyValueChangeKey);
    sub_195FA0808();
  }

LABEL_7:
  sub_195F55440();

  return sub_195EB7914(v13);
}

void sub_195F53718(void *a1)
{
  v1 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x58);
  sub_195F55748();
}

id sub_195F53758()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for UserDefault._KVOUserDefaultsObserver();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t *UserDefault.__allocating_init(domain:key:defaultValue:appleInternalOnly:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  has_internal_ui = os_variant_has_internal_ui();
  v14 = sub_195F55E80(a1, a2, a3, a4, a5, a6, has_internal_ui);
  v16 = *(v6 + 80);
  v15 = *(v6 + 88);
  v17 = type metadata accessor for UserDefault.AppleInternalOnlyOption();
  (*(*(v17 - 8) + 8))(a6, v17);
  (*(*(v16 - 8) + 8))(a5, v16);
  return v14;
}

void UserDefault.deinit()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v3 = *&v0[v2];
  if (v3)
  {
    v4 = v0;
    v5 = *(v0 + 2);
    v6 = *(v0 + 5);
    v7 = *(v4 + 6);
    v8 = v5;

    v9 = v3;
    v10 = sub_195FA0888();

    [v8 removeObserver:v9 forKeyPath:v10];

    v11 = *&v4[v2];
    if (v11)
    {
      v12 = v11;
      sub_195F55344();

      v13 = *(v4 + 4);

      v14 = *(v4 + 6);

      (*(*(*(v1 + 80) - 8) + 8))(&v4[*(*v4 + 120)], *(v1 + 80));
      v15 = *(*v4 + 128);
      v16 = sub_195FA0DB8();
      v17 = *(*(v16 - 8) + 8);
      v17(&v4[v15], v16);
      v18 = *&v4[*(*v4 + 144)];

      v19 = *&v4[*(*v4 + 152)];

      v20 = *&v4[*(*v4 + 168)];

      v17(&v4[*(*v4 + 176)], v16);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t UserDefault.__deallocating_deinit()
{
  UserDefault.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_195F53B60()
{
  v1 = *(v0 + *(*v0 + 168));
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  sub_195F53BF4(v0, &v4);
  os_unfair_lock_unlock(*(v1 + 16));

  return v4;
}

uint64_t sub_195F53BF4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v13 - v7;
  v13 = 0;
  v14 = 0xE000000000000000;
  v9 = *(v6 + 40);
  v10 = *(v6 + 48);

  MEMORY[0x19A8C3F70](v9, v10);

  MEMORY[0x19A8C3F70](2112800, 0xE300000000000000);
  sub_195F54C90(v8);
  sub_195FA1298();
  result = (*(v4 + 8))(v8, v3);
  v12 = v14;
  *a2 = v13;
  a2[1] = v12;
  return result;
}

uint64_t sub_195F53D38(uint64_t a1)
{
  v3 = *v1;
  sub_195F55F9C();
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

void (*sub_195F53DB4(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v4[1] = v6;
  v7 = *(v6 - 8);
  v4[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  sub_195F54BCC();
  return sub_195F53EC8;
}

void sub_195F53EC8(uint64_t **a1, char a2)
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
    sub_195F55F24(v3);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    sub_195F55F24((*a1)[4]);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_195F53FC0(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v20[-v5];
  v7 = sub_195FA0DB8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20[-v13];
  (*(v3 + 56))(&v20[-v13], 1, 1, v2);
  v15 = *(v1 + *(*v1 + 168));
  v16 = *(v15 + 16);

  os_unfair_lock_lock(v16);
  sub_195F54290(v1, v14);
  os_unfair_lock_unlock(*(v15 + 16));

  (*(v8 + 16))(v12, v14, v7);
  if ((*(v3 + 48))(v12, 1, v2) == 1)
  {
    v17 = *(v8 + 8);
    v17(v12, v7);
    return (v17)(v14, v7);
  }

  else
  {
    (*(v3 + 32))(v6, v12, v2);
    v19 = *(v1 + *(*v1 + 144));

    sub_195FA06D8();

    (*(v3 + 8))(v6, v2);
    return (*(v8 + 8))(v14, v7);
  }
}

uint64_t sub_195F54290(void *a1, uint64_t a2)
{
  v90 = a2;
  v83 = *a1;
  v3 = *(v83 + 80);
  v4 = sub_195FA0DB8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v84 = *(TupleTypeMetadata2 - 8);
  v5 = *(v84 + 64);
  v6 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v8 = (&v82 - v7);
  v94 = *(v4 - 8);
  v9 = v94;
  v10 = *(v94 + 64);
  v11 = MEMORY[0x1EEE9AC00](v6);
  v88 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v95 = &v82 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v82 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v82 - v19;
  v21 = *(v3 - 8);
  v22 = v21[8];
  v23 = MEMORY[0x1EEE9AC00](v18);
  v92 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v85 = &v82 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v82 - v27;
  sub_195F54C90(&v82 - v27);
  v29 = v21[2];
  v100 = v28;
  v96 = v21 + 2;
  v93 = v29;
  v29(v20, v28, v3);
  v86 = v21[7];
  v87 = v21 + 7;
  v86(v20, 0, 1, v3);
  v91 = a1;
  sub_195F53448(v17);
  v30 = *(TupleTypeMetadata2 + 48);
  v89 = v9;
  v31 = *(v9 + 16);
  v31(v8, v20, v4);
  v101 = v4;
  v31((v8 + v30), v17, v4);
  v97 = v21;
  v98 = v8;
  v32 = v21[6];
  if (v32(v8, 1, v3) == 1)
  {
    v33 = *(v94 + 8);
    v34 = v17;
    v35 = v101;
    v33(v34, v101);
    v33(v20, v35);
    v36 = v98;
    v37 = v32(v98 + v30, 1, v3) == 1;
    v38 = v36;
    if (v37)
    {
      v33(v36, v35);
      return (v97[1])(v100, v3);
    }

    v43 = v91;
    v44 = v97;
    goto LABEL_7;
  }

  v40 = v98;
  v31(v95, v98, v101);
  if (v32(v40 + v30, 1, v3) == 1)
  {
    v33 = *(v94 + 8);
    v41 = v17;
    v42 = v101;
    v33(v41, v101);
    v33(v20, v42);
    v44 = v97;
    (v97[1])(v95, v3);
    v43 = v91;
    v38 = v98;
LABEL_7:
    (*(v84 + 8))(v38, TupleTypeMetadata2);
    goto LABEL_8;
  }

  v44 = v97;
  v54 = v98;
  v55 = v85;
  (v97[4])(v85, v98 + v30, v3);
  v56 = *(v83 + 88);
  LODWORD(TupleTypeMetadata2) = sub_195FA0868();
  v57 = v44[1];
  v57(v55, v3);
  v33 = *(v94 + 8);
  v58 = v17;
  v59 = v101;
  v33(v58, v101);
  v33(v20, v59);
  v57(v95, v3);
  v33(v54, v59);
  v43 = v91;
  if (TupleTypeMetadata2)
  {
    return (v57)(v100, v3);
  }

LABEL_8:
  if (qword_1EAEEBBD0 != -1)
  {
    swift_once();
  }

  v45 = sub_195FA0678();
  __swift_project_value_buffer(v45, qword_1EAEF7298);
  v46 = v92;
  v47 = v93;
  v93(v92, v100, v3);

  v48 = sub_195FA0658();
  v49 = sub_195FA0CC8();

  v50 = os_log_type_enabled(v48, v49);
  TupleTypeMetadata2 = v33;
  if (v50)
  {
    LODWORD(v95) = v49;
    v98 = v48;
    v51 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v102 = v94;
    *v51 = 136446978;
    if (v43[4])
    {
      v52 = v43[3];
      v53 = v43[4];
    }

    else
    {
      v60 = [objc_opt_self() mainBundle];
      v61 = [v60 bundleIdentifier];

      if (v61)
      {
        v52 = sub_195FA08B8();
        v53 = v62;
      }

      else
      {
        v53 = 0xE300000000000000;
        v52 = 7104878;
      }
    }

    v63 = sub_195EBD554(v52, v53, &v102);

    *(v51 + 4) = v63;
    *(v51 + 12) = 2082;
    v65 = v43[5];
    v64 = v43[6];

    v66 = sub_195EBD554(v65, v64, &v102);

    *(v51 + 14) = v66;
    *(v51 + 22) = 2082;
    v67 = v85;
    v68 = v92;
    v47 = v93;
    v93(v85, v92, v3);
    v69 = sub_195FA0908();
    v71 = v70;
    v44 = v97;
    (v97[1])(v68, v3);
    v72 = sub_195EBD554(v69, v71, &v102);

    *(v51 + 24) = v72;
    *(v51 + 32) = 2082;
    sub_195F532FC(v67);
    v73 = sub_195FA0908();
    v75 = sub_195EBD554(v73, v74, &v102);

    *(v51 + 34) = v75;
    v76 = v98;
    _os_log_impl(&dword_195EB2000, v98, v95, "Preferences[%{public}s]: %{public}s preference changed to %{public}s [default=%{public}s]", v51, 0x2Au);
    v77 = v94;
    swift_arrayDestroy();
    MEMORY[0x19A8C5B70](v77, -1, -1);
    MEMORY[0x19A8C5B70](v51, -1, -1);
  }

  else
  {

    (v44[1])(v46, v3);
  }

  v78 = v88;
  v79 = v100;
  v47(v88, v100, v3);
  v80 = v86;
  v86(v78, 0, 1, v3);
  sub_195F534F4(v78);
  v81 = v90;
  (TupleTypeMetadata2)(v90, v101);
  (v44[4])(v81, v79, v3);
  return v80(v81, 0, 1, v3);
}

uint64_t sub_195F54BCC()
{
  v1 = v0;
  v2 = *v0;
  v6 = *(v1 + *(v2 + 168));
  v3 = type metadata accessor for UnfairLock();
  v4 = *(v2 + 80);

  sub_195F52FAC(sub_195F56720, v1, v3, v4, &off_1F0A53DA0);
}

uint64_t sub_195F54C90@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = sub_195FA0DB8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v27 - v11;
  os_unfair_lock_assert_owner(*(*(v1 + *(v3 + 168)) + 16));
  sub_195F5339C(v12);
  v13 = *(v4 - 8);
  v14 = *(v13 + 48);
  if (v14(v12, 1, v4) != 1)
  {
    return (*(v13 + 32))(a1, v12, v4);
  }

  v27[0] = v14;
  v28 = v5;
  v29 = a1;
  v15 = *(v6 + 8);
  v27[1] = v6 + 8;
  v15(v12, v5);
  v16 = v15;
  v17 = v1[5];
  v18 = v1[6];
  v19 = v1[2];

  v20 = sub_195FA0888();

  v21 = [v19 valueForKey_];

  if (v21)
  {
    sub_195FA0E08();
    swift_unknownObjectRelease();
    sub_195F2E09C(&v30, v31);
  }

  else
  {
    memset(v31, 0, sizeof(v31));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEED4B0, &qword_195FAC080);
  v23 = swift_dynamicCast();
  v24 = *(v13 + 56);
  v26 = v28;
  v25 = v29;
  if (v23)
  {
    v24(v10, 0, 1, v4);
    return (*(v13 + 32))(v25, v10, v4);
  }

  else
  {
    v24(v10, 1, 1, v4);
    sub_195F532FC(v25);
    result = (v27[0])(v10, 1, v4);
    if (result != 1)
    {
      return v16(v10, v26);
    }
  }

  return result;
}

void sub_195F54FA0(uint64_t a1)
{
  v2 = v1;
  v32 = a1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v31 - v10;
  v12 = sub_195FA0DB8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v31 - v15;
  os_unfair_lock_assert_owner(*(*(v1 + *(v3 + 168)) + 16));
  sub_195F5339C(v16);
  v17 = (*(v5 + 48))(v16, 1, v4);
  (*(v13 + 8))(v16, v12);
  if (v17 == 1)
  {
    sub_195F54C90(v11);
    v18 = *(v3 + 88);
    v19 = sub_195FA0868();
    (*(v5 + 8))(v11, v4);
    if ((v19 & 1) == 0)
    {
      (*(v5 + 16))(v9, v32, v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEED4B0, &qword_195FAC080);
      swift_dynamicCast();
      if (v34)
      {
        sub_195F2E09C(&v33, v35);
        v20 = v2[2];
        __swift_project_boxed_opaque_existential_1(v35, v36);
        v21 = v20;
        v22 = sub_195FA12A8();
        v24 = v2[5];
        v23 = v2[6];

        v25 = sub_195FA0888();

        [v21 setObject:v22 forKey:v25];

        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_1Tm(v35);
      }

      else
      {
        sub_195EB7914(&v33);
        v26 = v2[2];
        v28 = v2[5];
        v27 = v2[6];
        v29 = v26;

        v30 = sub_195FA0888();

        [v29 removeObjectForKey_];
      }
    }
  }
}

id sub_195F55358()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  swift_weakInit();
  swift_weakAssign();
  v3 = *((v2 & v1) + 0x50);
  v4 = *((v2 & v1) + 0x58);
  v6.receiver = v0;
  v6.super_class = type metadata accessor for UserDefault._KVOUserDefaultsObserver();
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_195F55404()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = objc_allocWithZone(type metadata accessor for UserDefault._KVOUserDefaultsObserver());
  return sub_195F55358();
}

uint64_t sub_195F55440()
{
  v0 = sub_195FA0778();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_195FA07D8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = v5;
    v15 = v1;
    if (qword_1EAEEBC08 != -1)
    {
      v12 = result;
      swift_once();
      result = v12;
    }

    v13 = qword_1EAEEBC10;
    aBlock[4] = sub_195F566D4;
    aBlock[5] = result;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_195EBDBE8;
    aBlock[3] = &block_descriptor_8;
    v11 = _Block_copy(aBlock);

    sub_195FA0798();
    v16 = MEMORY[0x1E69E7CC0];
    sub_195F566D8(&qword_1EAEEC450, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
    sub_195F43EC8(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30);
    sub_195FA0E38();
    MEMORY[0x19A8C42F0](0, v9, v4, v11);
    _Block_release(v11);

    (*(v15 + 8))(v4, v0);
    (*(v6 + 8))(v9, v14);
  }

  return result;
}

uint64_t *sub_195F55778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v8 = v7;
  v76 = a7;
  v75 = a6;
  v77 = a5;
  v72 = a3;
  v12 = *v8;
  v13 = *(*v8 + 80);
  v14 = sub_195FA0DB8();
  v66 = *(v14 - 8);
  v15 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v65 = &v60 - v16;
  v74 = *(v12 + 88);
  v73 = type metadata accessor for UserDefault.AppleInternalOnlyOption();
  v71 = *(v73 - 8);
  v17 = *(v71 + 64);
  v18 = MEMORY[0x1EEE9AC00](v73);
  v70 = &v60 - v19;
  v20 = *(v13 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v68 = &v60 - v22;
  *(v8 + 3) = 0;
  *(v8 + 4) = 0;
  v23 = *(v12 + 128);
  v69 = v20;
  v24 = *(v20 + 56);
  v64 = v23;
  v24(&v8[v23], 1, 1, v13);
  *&v8[*(*v8 + 160)] = 0;
  v25 = *(*v8 + 168);
  type metadata accessor for UnfairLock();
  v26 = swift_allocObject();
  v27 = swift_slowAlloc();
  *v27 = 0;
  *(v26 + 16) = v27;
  *&v8[v25] = v26;
  v28 = &v8[*(*v8 + 176)];
  v62 = v20 + 56;
  v63 = v24;
  v24(v28, 1, 1, v13);
  v67 = v14;
  if (!a2)
  {
    goto LABEL_7;
  }

  v29 = [objc_opt_self() mainBundle];
  v30 = [v29 bundleIdentifier];

  if (v30)
  {
    v61 = a4;
    v31 = sub_195FA08B8();
    v33 = v32;

    if (v31 == a1 && v33 == a2)
    {

      a4 = v61;
LABEL_7:
      result = [objc_opt_self() standardUserDefaults];
      goto LABEL_9;
    }

    v34 = sub_195FA12B8();

    a4 = v61;
    if (v34)
    {
      goto LABEL_7;
    }
  }

  v36 = objc_allocWithZone(MEMORY[0x1E695E000]);

  v37 = sub_195FA0888();

  v38 = [v36 initWithSuiteName_];

  result = v38;
  if (!v38)
  {
    __break(1u);
    return result;
  }

LABEL_9:
  v39 = *(v8 + 4);
  *(v8 + 2) = result;
  *(v8 + 3) = a1;
  *(v8 + 4) = a2;

  *(v8 + 5) = v72;
  *(v8 + 6) = a4;
  v40 = *(*v8 + 120);
  v41 = v69;
  v42 = *(v69 + 16);
  v42(&v8[v40], v77, v13);
  v43 = v76;
  v8[*(*v8 + 136)] = v76 & 1;
  v45 = v70;
  v44 = v71;
  v46 = v73;
  (*(v71 + 16))(v70, v75, v73);
  if ((*(v41 + 48))(v45, 1, v13) == 1)
  {
    (*(v44 + 8))(v45, v46);
  }

  else
  {
    v47 = v68;
    (*(v41 + 32))(v68, v45, v13);
    if (v43)
    {
      swift_beginAccess();
      (*(v41 + 40))(&v8[v40], v47, v13);
    }

    else
    {
      (*(v41 + 8))(v47, v13);
      v48 = v65;
      v42(v65, v77, v13);
      v63(v48, 0, 1, v13);
      v49 = v64;
      swift_beginAccess();
      (*(v66 + 40))(&v8[v49], v48, v67);
    }

    swift_endAccess();
  }

  sub_195FA0708();
  v50 = sub_195FA06E8();
  *&v8[*(*v8 + 144)] = v50;
  v78 = v50;
  swift_getWitnessTable();
  *&v8[*(*v8 + 152)] = sub_195FA0738();
  v51 = *(*v8 + 160);
  v52 = *&v8[v51];
  *&v8[v51] = 0;

  type metadata accessor for UserDefault._KVOUserDefaultsObserver();

  v53 = sub_195F55404();

  v54 = *&v8[v51];
  *&v8[v51] = v53;
  v55 = v53;

  v56 = *(v8 + 5);
  v57 = *(v8 + 6);
  v58 = *(v8 + 2);

  v59 = sub_195FA0888();

  [v58 addObserver:v55 forKeyPath:v59 options:0 context:0];

  return v8;
}

uint64_t *sub_195F55E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v15 = *(v7 + 80);
  v16 = *(v7 + 88);
  v17 = type metadata accessor for UserDefault();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  return sub_195F55778(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_195F55F24(uint64_t a1)
{
  v3 = *(v1 + *(*v1 + 168));
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F54FA0(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F55FC4(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = sub_195FA0DB8();
    if (v4 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_195F561F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_195F56250(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_195F563D0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  v10 = v8 - 1;
  if (v8)
  {
    v11 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v10 = 0;
    v11 = v9 + 1;
  }

  v12 = a3 >= v10;
  v13 = a3 - v10;
  if (v13 == 0 || !v12)
  {
    goto LABEL_16;
  }

  if (v11 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v14 = ((v13 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
  if (!HIWORD(v14))
  {
    if (v14 < 0x100)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    if (v14 >= 2)
    {
      v6 = v15;
    }

    else
    {
      v6 = 0;
    }

LABEL_16:
    if (v10 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_17:
    v16 = ~v10 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> (8 * v11)) + 1;
      if (v11)
      {
        v18 = v16 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v18;
            if (v6 > 1)
            {
LABEL_55:
              if (v6 == 2)
              {
                *&a1[v11] = v17;
              }

              else
              {
                *&a1[v11] = v17;
              }

              return;
            }
          }

          else
          {
            *a1 = v16;
            if (v6 > 1)
            {
              goto LABEL_55;
            }
          }

          goto LABEL_52;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v6 > 1)
      {
        goto LABEL_55;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
      if (v6 > 1)
      {
        goto LABEL_55;
      }
    }

LABEL_52:
    if (v6)
    {
      a1[v11] = v17;
    }

    return;
  }

LABEL_26:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v11] = 0;
LABEL_32:
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!v6)
  {
    goto LABEL_32;
  }

  a1[v11] = 0;
  if (!a2)
  {
    return;
  }

LABEL_33:
  if (v8 >= 2)
  {
    if (a2 >= v8)
    {
      if (v9 <= 3)
      {
        v20 = ~(-1 << (8 * v9));
      }

      else
      {
        v20 = -1;
      }

      if (v9)
      {
        v21 = v20 & (a2 - v8);
        if (v9 <= 3)
        {
          v22 = v9;
        }

        else
        {
          v22 = 4;
        }

        bzero(a1, v9);
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *a1 = v21;
            a1[2] = BYTE2(v21);
          }

          else
          {
            *a1 = v21;
          }
        }

        else if (v22 == 1)
        {
          *a1 = v21;
        }

        else
        {
          *a1 = v21;
        }
      }
    }

    else
    {
      v19 = *(v7 + 56);

      v19();
    }
  }
}

uint64_t sub_195F566D8(unint64_t *a1, void (*a2)(uint64_t))
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

id CHSRemoteActivityLaunchController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CHSRemoteActivityLaunchController.init()()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = type metadata accessor for CHSRemoteActivityLaunchController();
  v2 = objc_allocWithZone(v1);
  *&v2[OBJC_IVAR____TtC14ChronoServices33CHSRemoteActivityLaunchController_connection] = v0;
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v3;
}

void sub_195F568E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDAC8, &unk_195FACC70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v17 - v9;
  v11 = *(v5 + OBJC_IVAR____TtC14ChronoServices33CHSRemoteActivityLaunchController_connection);
  v12 = sub_195FA0888();
  v13 = sub_195FA0888();
  sub_195F3ED30(a5, v10);
  v14 = sub_195FA0478();
  v15 = *(v14 - 8);
  v16 = 0;
  if ((*(v15 + 48))(v10, 1, v14) != 1)
  {
    v16 = sub_195FA0398();
    (*(v15 + 8))(v10, v14);
  }

  [v11 launchLiveActivityWithID:v12 deviceID:v13 url:v16];
}

id CHSRemoteActivityLaunchController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CHSRemoteActivityLaunchController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CHSWidgetIcon.size.setter(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR___CHSWidgetIcon_size);
  result = swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return result;
}

double CHSWidgetIcon.scale.getter()
{
  v1 = OBJC_IVAR___CHSWidgetIcon_scale;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CHSWidgetIcon.scale.setter(double a1)
{
  v3 = OBJC_IVAR___CHSWidgetIcon_scale;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_195F56CB8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  swift_beginAccess();
  result = *v3;
  v5 = *(v3 + 8);
  return result;
}

double sub_195F56D08(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_195F56D58(uint64_t a1, double a2, double a3, uint64_t a4, void *a5)
{
  v7 = (a1 + *a5);
  result = swift_beginAccess();
  *v7 = a2;
  v7[1] = a3;
  return result;
}

uint64_t CHSWidgetIcon.pixelSize.setter(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR___CHSWidgetIcon_pixelSize);
  result = swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return result;
}

id CHSWidgetIcon.image.getter()
{
  v1 = OBJC_IVAR___CHSWidgetIcon_image;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void CHSWidgetIcon.image.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CHSWidgetIcon_image;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id CHSWidgetIcon.init(image:size:scale:pixelSize:)(void *a1, double a2, double a3, double a4, double a5, double a6)
{
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithImage:a1 size:a2 scale:a3 pixelSize:{a4, a5, a6}];

  return v7;
}

id CHSWidgetIcon.init(image:size:scale:pixelSize:)(uint64_t a1, double a2, double a3, double a4, double a5, double a6)
{
  *(v6 + OBJC_IVAR___CHSWidgetIcon_image) = a1;
  v7 = (v6 + OBJC_IVAR___CHSWidgetIcon_size);
  *v7 = a2;
  v7[1] = a3;
  *(v6 + OBJC_IVAR___CHSWidgetIcon_scale) = a4;
  v8 = (v6 + OBJC_IVAR___CHSWidgetIcon_pixelSize);
  *v8 = a5;
  v8[1] = a6;
  v10.super_class = CHSWidgetIcon;
  return objc_msgSendSuper2(&v10, sel_init);
}

void __swiftcall CHSWidgetIcon.init()(CHSWidgetIcon *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id keypath_getTm@<X0>(id *a1@<X0>, SEL *a2@<X3>, void *a3@<X8>)
{
  result = [*a1 *a2];
  *a3 = v5;
  a3[1] = v6;
  return result;
}

unint64_t type metadata accessor for CHSWidgetIcon()
{
  result = qword_1EAEEE008;
  if (!qword_1EAEEE008)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAEEE008);
  }

  return result;
}

uint64_t sub_195F57238(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
}

uint64_t sub_195F57298()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_195F572D0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t ControlSessionSubscriptionResponse.__allocating_init(archiveSandboxExtension:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  swift_beginAccess();
  *(v2 + 16) = a1;
  return v2;
}

uint64_t ControlSessionSubscriptionResponse.init(archiveSandboxExtension:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  swift_beginAccess();
  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_195F57440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000017 && 0x8000000195FC18A0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_195FA12B8();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_195F574D4(uint64_t a1)
{
  v2 = sub_195F57728();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_195F57510(uint64_t a1)
{
  v2 = sub_195F57728();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ControlSessionSubscriptionResponse.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t ControlSessionSubscriptionResponse.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_195F575A4(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE010, &qword_195FAEC80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_195F57728();
  sub_195FA1468();
  swift_beginAccess();
  v11 = *(v2 + 16);
  type metadata accessor for SandboxExtension();
  sub_195F579B8(&qword_1EAEEBC20);
  sub_195FA11E8();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_195F57728()
{
  result = qword_1EAEEBEE0;
  if (!qword_1EAEEBEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEBEE0);
  }

  return result;
}

uint64_t ControlSessionSubscriptionResponse.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  ControlSessionSubscriptionResponse.init(from:)(a1);
  return v2;
}

uint64_t ControlSessionSubscriptionResponse.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE018, &qword_195FAEC88);
  v15[0] = *(v5 - 8);
  v6 = *(v15[0] + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - v7;
  *(v1 + 16) = 0;
  v9 = (v1 + 16);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_195F57728();
  sub_195FA1448();
  if (!v2)
  {
    v11 = v15[0];
    type metadata accessor for SandboxExtension();
    sub_195F579B8(&qword_1EAEEBDC0);
    sub_195FA1128();
    (*(v11 + 8))(v8, v5);
    v13 = v15[5];
    swift_beginAccess();
    v14 = *v9;
    *v9 = v13;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v3;
}

uint64_t sub_195F579B8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SandboxExtension();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_195F579FC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for ControlSessionSubscriptionResponse();
  v5 = swift_allocObject();
  result = ControlSessionSubscriptionResponse.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_195F57BA8()
{
  result = qword_1EAEEE020;
  if (!qword_1EAEEE020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEE020);
  }

  return result;
}

unint64_t sub_195F57C00()
{
  result = qword_1EAEEBED0;
  if (!qword_1EAEEBED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEBED0);
  }

  return result;
}

unint64_t sub_195F57C58()
{
  result = qword_1EAEEBED8;
  if (!qword_1EAEEBED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEBED8);
  }

  return result;
}

void sub_195F57CAC()
{
  if ((*(v0 + OBJC_IVAR____TtC14ChronoServices23StateCaptureInvalidator_invalidated) & 1) == 0)
  {
    v1 = OBJC_IVAR____TtC14ChronoServices23StateCaptureInvalidator_handle;
    if (*(v0 + OBJC_IVAR____TtC14ChronoServices23StateCaptureInvalidator_handle))
    {
      os_state_remove_handler();
      if (qword_1EAEEBF18 != -1)
      {
        swift_once();
      }

      v2 = off_1EAEEBF28;
      os_unfair_lock_lock(*(off_1EAEEBF28 + 2));
      if (qword_1EAEEBF00 != -1)
      {
        swift_once();
      }

      v3 = *(v0 + v1);
      swift_beginAccess();
      v4 = sub_195F5A044(v3);
      swift_endAccess();

      os_unfair_lock_unlock(v2[2]);
    }
  }
}

uint64_t sub_195F57EC4(uint64_t a1, void (*a2)(uint64_t *__return_ptr), uint64_t a3, uint64_t a4, unint64_t a5)
{
  a2(v33);
  v7 = 0;
  result = sub_195F58494(v33);
  v10 = result;
  v11 = v9 >> 62;
  if ((v9 >> 62) <= 1)
  {
    if (!v11)
    {
      v12 = BYTE6(v9);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v11 != 2)
  {
    v12 = 0;
    goto LABEL_11;
  }

  v14 = *(result + 16);
  v13 = *(result + 24);
  v15 = __OFSUB__(v13, v14);
  v12 = v13 - v14;
  if (v15)
  {
    __break(1u);
LABEL_8:
    LODWORD(v12) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_60:
      __break(1u);
LABEL_61:
      swift_once();
LABEL_32:
      v27 = sub_195FA0678();
      __swift_project_value_buffer(v27, qword_1EAEF72D0);

      v19 = sub_195FA0658();
      v20 = sub_195FA0CA8();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v32[0] = v22;
        *v21 = 136446210;
        *(v21 + 4) = sub_195EBD554(a4, a5, v32);
        v23 = "[state-capture][%{public}s] cannot allocate memory for state data";
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    v12 = v12;
  }

LABEL_11:
  v15 = __OFADD__(v12, 200);
  v16 = v12 + 200;
  if (v15)
  {
    __break(1u);
LABEL_57:
    swift_once();
LABEL_17:
    v18 = sub_195FA0678();
    __swift_project_value_buffer(v18, qword_1EAEF72D0);

    v19 = sub_195FA0658();
    v20 = sub_195FA0CA8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v32[0] = v22;
      *v21 = 136446210;
      *(v21 + 4) = sub_195EBD554(a4, a5, v32);
      v23 = "[state-capture][%{public}s] cannot capture state data larger than 32KB";
LABEL_34:
      _os_log_impl(&dword_195EB2000, v19, v20, v23, v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x19A8C5B70](v22, -1, -1);
      MEMORY[0x19A8C5B70](v21, -1, -1);

      sub_195EC0890(v10, v7);
LABEL_36:
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      return 0;
    }

LABEL_35:
    sub_195EC0890(v10, v7);

    goto LABEL_36;
  }

  v7 = v9;
  if (v16 >= 0x8000)
  {
    if (qword_1EAEEBEC8 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_57;
  }

  if (v11 <= 1)
  {
    if (!v11)
    {
      v17 = BYTE6(v9);
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  if (v11 != 2)
  {
    v17 = 0;
    goto LABEL_26;
  }

  v25 = *(result + 16);
  v24 = *(result + 24);
  v15 = __OFSUB__(v24, v25);
  v17 = v24 - v25;
  if (v15)
  {
    __break(1u);
LABEL_23:
    LODWORD(v17) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
      goto LABEL_63;
    }

    v17 = v17;
  }

LABEL_26:
  if (__OFADD__(v17, 200))
  {
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  result = calloc(v17 + 200, 1uLL);
  if (!result)
  {
    if (qword_1EAEEBEC8 == -1)
    {
      goto LABEL_32;
    }

    goto LABEL_61;
  }

  *result = 1;
  if (v11 > 1)
  {
    if (v11 != 2)
    {
      goto LABEL_46;
    }

    v29 = *(v10 + 16);
    v28 = *(v10 + 24);
    v15 = __OFSUB__(v28, v29);
    v26 = v28 - v29;
    if (!v15)
    {
      goto LABEL_43;
    }

    __break(1u);
LABEL_41:
    LODWORD(v26) = HIDWORD(v10) - v10;
    if (!__OFSUB__(HIDWORD(v10), v10))
    {
      v26 = v26;
LABEL_43:
      if ((v26 & 0x8000000000000000) == 0)
      {
        if (!HIDWORD(v26))
        {
          goto LABEL_47;
        }

        __break(1u);
LABEL_46:
        LODWORD(v26) = 0;
        goto LABEL_47;
      }

      goto LABEL_59;
    }

LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v11)
  {
    goto LABEL_41;
  }

  LODWORD(v26) = BYTE6(v7);
LABEL_47:
  *(result + 4) = v26;
  v30 = result;
  v31 = sub_195FA0918();
  strlcpy((v30 + 136), (v31 + 32), 0x40uLL);

  if (v11 > 1)
  {
    if (v11 != 2 || !__OFSUB__(*(v10 + 24), *(v10 + 16)))
    {
      goto LABEL_55;
    }

    __break(1u);
  }

  else if (!v11)
  {
    goto LABEL_55;
  }

  if (!__OFSUB__(HIDWORD(v10), v10))
  {
LABEL_55:
    sub_195FA0508();
    sub_195EC0890(v10, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    return v30;
  }

LABEL_64:
  __break(1u);
  return result;
}

void *sub_195F58494(void *a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = objc_opt_self();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8[0] = 0;
  v3 = [v2 dataWithPropertyList:sub_195FA12A8() format:200 options:0 error:v8];
  swift_unknownObjectRelease();
  v4 = v8[0];
  if (v3)
  {
    v5 = sub_195FA04D8();
  }

  else
  {
    v5 = v4;
    sub_195FA0328();

    swift_willThrow();
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t sub_195F585A0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = v4(a2);

  return v5;
}

uint64_t StateCaptureItem.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14ChronoServices16StateCaptureItem_title);
  v2 = *(v0 + OBJC_IVAR____TtC14ChronoServices16StateCaptureItem_title + 8);

  return v1;
}

uint64_t StateCaptureItem.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14ChronoServices16StateCaptureItem_identifier);
  v2 = *(v0 + OBJC_IVAR____TtC14ChronoServices16StateCaptureItem_identifier + 8);

  return v1;
}

uint64_t sub_195F58668(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC14ChronoServices16StateCaptureItem_captureHandler);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_195F586D4()
{
  v1 = (v0 + OBJC_IVAR____TtC14ChronoServices16StateCaptureItem_captureHandler);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_195F5872C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC14ChronoServices16StateCaptureItem_captureHandler);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

id StateCaptureItem.__deallocating_deinit()
{
  sub_195F588A4(v0 + OBJC_IVAR____TtC14ChronoServices16StateCaptureItem__invalidatable, v5);
  v1 = v6;
  if (v6)
  {
    v2 = v7;
    __swift_project_boxed_opaque_existential_1(v5, v6);
    (*(v2 + 8))(v1, v2);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
  }

  else
  {
    sub_195F2DB00(v5, &qword_1EAEEE048, &unk_195FAEE60);
  }

  v4.receiver = v0;
  v4.super_class = type metadata accessor for StateCaptureItem();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_195F588A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE048, &unk_195FAEE60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_195F58AB8()
{
  if (qword_1EAEEBF50 != -1)
  {
    swift_once();
  }

  v1 = off_1EAEEBF60;
  os_unfair_lock_lock(*(off_1EAEEBF60 + 2));
  v2 = OBJC_IVAR____TtC14ChronoServices19StateCaptureService_itemsByIdentifier;
  swift_beginAccess();
  v3 = *(v0 + v2);

  v5 = sub_195F370E0(v4);
  os_unfair_lock_unlock(v1[2]);
  return v5;
}

void sub_195F58B6C(void *a1, uint64_t a2, unint64_t a3, char a4)
{
  if (qword_1EAEEBF50 != -1)
  {
    swift_once();
  }

  v9 = off_1EAEEBF60;
  os_unfair_lock_lock(*(off_1EAEEBF60 + 2));
  v10 = a1[3];
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_195F5F4EC(v12, a2, a3, a4 & 1, v4, v10, v11);
  v13 = *(v9 + 2);

  os_unfair_lock_unlock(v13);
}

void sub_195F58C30(void *a1, uint64_t a2, unint64_t a3)
{
  if (qword_1EAEEBF50 != -1)
  {
    swift_once();
  }

  v6 = off_1EAEEBF60;
  os_unfair_lock_lock(*(off_1EAEEBF60 + 2));
  sub_195F58F50(a1, a2, a3);
  v7 = *(v6 + 2);

  os_unfair_lock_unlock(v7);
}

void sub_195F58CCC(uint64_t a1, uint64_t a2)
{
  if (qword_1EAEEBF50 != -1)
  {
    swift_once();
  }

  v4 = off_1EAEEBF60;
  os_unfair_lock_lock(*(off_1EAEEBF60 + 2));
  sub_195F5929C(a1, a2);
  v5 = *(v4 + 2);

  os_unfair_lock_unlock(v5);
}

uint64_t sub_195F58D58(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  if (qword_1EAEEBF50 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for UnfairLock();

  sub_195F52FAC(a1, a2, v6, a3, &off_1F0A53DA0);
}

uint64_t sub_195F58E28(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = a1[3];
  v7 = a1[4];
  v8 = __swift_project_boxed_opaque_existential_1(a1, v6);

  return sub_195EC966C(v8, a2, a3, v3, v6, v7);
}

void sub_195F58E8C(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (qword_1EAEEBF50 != -1)
  {
    swift_once();
  }

  v4 = off_1EAEEBF60;
  a2[3] = MEMORY[0x1E69E6158];
  os_unfair_lock_lock(v4[2]);
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = (*(v6 + 16))(v5, v6);
  v9 = v8;
  os_unfair_lock_unlock(v4[2]);
  *a2 = v7;
  a2[1] = v9;
}

uint64_t sub_195F58F50(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (qword_1EAEEBF50 != -1)
  {
LABEL_20:
    swift_once();
  }

  os_unfair_lock_assert_owner(*(off_1EAEEBF60 + 2));
  v8 = a1[3];
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_195EC966C(v10, a2, a3, v4, v8, *(v9 + 8));
  v11 = OBJC_IVAR____TtC14ChronoServices19StateCaptureService_subitemsByIdentifier;
  swift_beginAccess();
  v34 = v11;
  v12 = *(v4 + v11);
  if (*(v12 + 16))
  {

    v13 = sub_195EC7CCC(a2, a3);
    if (v14)
    {
      v15 = *(*(v12 + 56) + 8 * v13);
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = (*(v17 + 16))(v16, v17);
  v19 = 0;
  a1 = *(v18 + 16);
  v35 = v18 + 32;
  v36 = v18;
  while (1)
  {
    v20 = 0uLL;
    v21 = a1;
    v22 = 0uLL;
    v23 = 0uLL;
    if (v19 != a1)
    {
      if (v19 >= *(v36 + 16))
      {
        __break(1u);
        goto LABEL_20;
      }

      v21 = (v19 + 1);
      *&v37 = v19;
      sub_195EC97E0(v35 + 40 * v19, &v37 + 8);
      v20 = v37;
      v22 = v38;
      v23 = v39;
    }

    v40[0] = v20;
    v40[1] = v22;
    v40[2] = v23;
    if (!v23)
    {
      break;
    }

    sub_195EB9104((v40 + 8), &v37);

    MEMORY[0x19A8C3F70](45, 0xE100000000000000);
    v24 = sub_195FA1288();
    MEMORY[0x19A8C3F70](v24);

    v26 = *(&v38 + 1);
    v25 = v39;
    v27 = __swift_project_boxed_opaque_existential_1(&v37, *(&v38 + 1));
    sub_195EC966C(v27, a2, a3, v4, v26, v25);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_195EB6418(0, *(v15 + 2) + 1, 1, v15);
    }

    v29 = *(v15 + 2);
    v28 = *(v15 + 3);
    if (v29 >= v28 >> 1)
    {
      v15 = sub_195EB6418((v28 > 1), v29 + 1, 1, v15);
    }

    *(v15 + 2) = v29 + 1;
    v30 = &v15[16 * v29];
    *(v30 + 4) = a2;
    *(v30 + 5) = a3;
    __swift_destroy_boxed_opaque_existential_1Tm(&v37);
    v19 = v21;
  }

  swift_beginAccess();

  v31 = *(v4 + v34);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v37 = *(v4 + v34);
  *(v4 + v34) = 0x8000000000000000;
  sub_195F5D0C8(v15, a2, a3, isUniquelyReferenced_nonNull_native);

  *(v4 + v34) = v37;
  return swift_endAccess();
}

uint64_t sub_195F5929C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1EAEEBF50 != -1)
  {
    swift_once();
  }

  os_unfair_lock_assert_owner(*(off_1EAEEBF60 + 2));
  v6 = OBJC_IVAR____TtC14ChronoServices19StateCaptureService_itemsByIdentifier;
  swift_beginAccess();

  v7 = sub_195F5A0CC(a1, a2);
  swift_endAccess();

  v8 = OBJC_IVAR____TtC14ChronoServices19StateCaptureService_subitemsByIdentifier;
  result = swift_beginAccess();
  v10 = *(v3 + v8);
  if (*(v10 + 16))
  {
    v11 = *(v3 + v8);

    v12 = sub_195EC7CCC(a1, a2);
    if (v13)
    {
      v14 = *(*(v10 + 56) + 8 * v12);

      v15 = *(v14 + 16);
      if (v15)
      {
        v16 = (v14 + 40);
        do
        {
          v19 = *(v16 - 1);
          v18 = *v16;
          swift_beginAccess();
          v20 = *(v3 + v6);

          v21 = sub_195EC7CCC(v19, v18);
          if (v22)
          {
            v23 = v21;
            v24 = *(v3 + v6);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v26 = *(v3 + v6);
            *(v3 + v6) = 0x8000000000000000;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_195F5EB5C();
            }

            v17 = *(*(v26 + 48) + 16 * v23 + 8);

            sub_195F5C218(v23, v26);
            *(v3 + v6) = v26;
          }

          swift_endAccess();

          v16 += 2;
          --v15;
        }

        while (v15);
      }

      swift_beginAccess();
      sub_195F5A164(a1, a2);
      swift_endAccess();
    }
  }

  return result;
}

void *sub_195F594E0(uint64_t a1, uint64_t a2)
{
  if (qword_1EAEEBF50 != -1)
  {
    swift_once();
  }

  v5 = off_1EAEEBF60;
  os_unfair_lock_lock(*(off_1EAEEBF60 + 2));
  v6 = OBJC_IVAR____TtC14ChronoServices19StateCaptureService_itemsByIdentifier;
  swift_beginAccess();
  v7 = *(v2 + v6);
  if (*(v7 + 16))
  {

    v8 = sub_195EC7CCC(a1, a2);
    if (v9)
    {
      v10 = *(*(v7 + 56) + 8 * v8);
      v11 = v10;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  os_unfair_lock_unlock(v5[2]);
  return v10;
}

id sub_195F595CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1EAEEBF50 != -1)
  {
    swift_once();
  }

  v6 = off_1EAEEBF60;
  os_unfair_lock_lock(*(off_1EAEEBF60 + 2));
  v7 = OBJC_IVAR____TtC14ChronoServices19StateCaptureService_itemsByIdentifier;
  swift_beginAccess();
  v8 = *(v2 + v7);
  if (!*(v8 + 16))
  {
    goto LABEL_19;
  }

  v9 = *(v3 + v7);

  v10 = sub_195EC7CCC(a1, a2);
  if ((v11 & 1) == 0)
  {

LABEL_19:
    v12 = 0;
    goto LABEL_20;
  }

  v12 = *(*(v8 + 56) + 8 * v10);

  v13 = OBJC_IVAR____TtC14ChronoServices19StateCaptureService_subitemsByIdentifier;
  swift_beginAccess();
  v14 = *(v3 + v13);
  if (!*(v14 + 16))
  {
LABEL_18:

    goto LABEL_19;
  }

  v15 = sub_195EC7CCC(a1, a2);
  if ((v16 & 1) == 0)
  {

    goto LABEL_18;
  }

  v17 = *(*(v14 + 56) + 8 * v15);

  v31 = MEMORY[0x1E69E7CC0];
  v18 = *(v17 + 16);
  if (v18)
  {
    v30 = v6;
    v19 = (v17 + 40);
    do
    {
      v20 = *(v3 + v7);
      if (*(v20 + 16))
      {
        v21 = *(v19 - 1);
        v22 = *v19;

        v23 = sub_195EC7CCC(v21, v22);
        v25 = v24;

        if (v25)
        {
          v26 = *(*(v20 + 56) + 8 * v23);

          v27 = v26;
          MEMORY[0x19A8C40E0]();
          if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v28 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_195FA0B58();
          }

          sub_195FA0B78();
        }

        else
        {
        }
      }

      v19 += 2;
      --v18;
    }

    while (v18);

    v6 = v30;
  }

  else
  {
  }

LABEL_20:
  os_unfair_lock_unlock(v6[2]);
  return v12;
}

id sub_195F59870(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_195F59904()
{
  v1 = *v0;
  if (qword_1EAEEBF50 != -1)
  {
    swift_once();
  }

  v2 = off_1EAEEBF60;
  os_unfair_lock_lock(*(off_1EAEEBF60 + 2));
  v3 = OBJC_IVAR____TtC14ChronoServices19StateCaptureService_itemsByIdentifier;
  swift_beginAccess();
  v4 = *(v1 + v3);

  v6 = sub_195F370E0(v5);
  os_unfair_lock_unlock(v2[2]);
  return v6;
}

void sub_195F599B4(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v11 = *v6;
  if (qword_1EAEEBF50 != -1)
  {
    swift_once();
  }

  v12 = off_1EAEEBF60;
  os_unfair_lock_lock(*(off_1EAEEBF60 + 2));
  v13 = a1[3];
  v14 = a1[4];
  v15 = __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_195F5F4EC(v15, a2, a3, a6 & 1, v11, v13, v14);
  v16 = *(v12 + 2);

  os_unfair_lock_unlock(v16);
}

void sub_195F59A7C(void *a1, uint64_t a2, unint64_t a3)
{
  v7 = *v3;
  if (qword_1EAEEBF50 != -1)
  {
    swift_once();
  }

  v8 = off_1EAEEBF60;
  os_unfair_lock_lock(*(off_1EAEEBF60 + 2));
  sub_195F58F50(a1, a2, a3);
  v9 = *(v8 + 2);

  os_unfair_lock_unlock(v9);
}

void sub_195F59B1C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (qword_1EAEEBF50 != -1)
  {
    swift_once();
  }

  v6 = off_1EAEEBF60;
  os_unfair_lock_lock(*(off_1EAEEBF60 + 2));
  sub_195F5929C(a1, a2);
  v7 = *(v6 + 2);

  os_unfair_lock_unlock(v7);
}

uint64_t sub_195F59C0C(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = *v3;
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, v7);

  return sub_195EC966C(v9, a2, a3, v6, v7, v8);
}

unint64_t sub_195F59CBC(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_195FA1398();
  type metadata accessor for CFString(0);
  sub_195EC6848(&qword_1EAEEBB68, type metadata accessor for CFString);
  sub_195FA0578();
  v4 = sub_195FA13E8();

  return sub_195F5DB80(a1, v4);
}

unint64_t sub_195F59D70(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_195FA0D78();

  return sub_195F5DC8C(a1, v5);
}

unint64_t sub_195F59DB4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_195FA0D78();
  return sub_195F5DD50(a1, v5, &qword_1EAEEDD50, off_1E74527C8);
}

unint64_t sub_195F59E04(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_195FA0D78();
  return sub_195F5DD50(a1, v5, &qword_1EAEEBD40, off_1E7452818);
}

unint64_t sub_195F59E54(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_195FA08B8();
  sub_195FA1398();
  sub_195FA0958();
  v4 = sub_195FA13E8();

  return sub_195F5DE1C(a1, v4);
}

unint64_t sub_195F59EE8(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_195FA1398();
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  sub_195FA0958();
  swift_beginAccess();
  v6 = *(a1 + 32);
  sub_195FA0D98();

  v7 = sub_195FA13E8();
  return sub_195F5DF20(a1, v7);
}

unint64_t sub_195F59F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 40);
  sub_195FA1398();
  sub_195F37930(a1, a2, a3, a4);
  sub_195FA0958();

  v10 = sub_195FA13E8();

  return sub_195F5E0A8(a1, a2, a3, a4, v10);
}

uint64_t sub_195F5A044(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_195ECA0D8(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v13 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_195F5EA00();
    v9 = v13;
  }

  v10 = v6;
  v11 = *(*(v9 + 56) + 8 * v6);
  sub_195F5C0A8(v10, v9);
  *v2 = v9;
  return v11;
}

uint64_t sub_195F5A0CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_195EC7CCC(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v14 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_195F5EB5C();
    v10 = v14;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = *(*(v10 + 56) + 8 * v7);
  sub_195F5C218(v7, v10);
  *v3 = v10;
  return v12;
}

uint64_t sub_195F5A164(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_195EC7CCC(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v14 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_195F5ECC8();
    v10 = v14;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = *(*(v10 + 56) + 8 * v7);
  sub_195F5C218(v7, v10);
  *v3 = v10;
  return v12;
}

uint64_t sub_195F5A24C(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = v4;
  v7 = *v5;
  if ((*v5 & 0xC000000000000001) == 0)
  {
    v13 = a2;
    v12 = a3;
    v18 = *v5;
    v19 = sub_195F59EE8(a1);
    if (v20)
    {
      v7 = v19;
      v21 = *v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = *v5;
      v26 = *v5;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:
        v24 = *(*(v23 + 48) + 8 * v7);

        v17 = *(*(v23 + 56) + 8 * v7);
        sub_195F5C3C8(v7, v23);
        *v5 = v23;
        return v17;
      }

LABEL_14:
      sub_195F5EF94(v13, v12);
      v23 = v26;
      goto LABEL_10;
    }

    return 0;
  }

  if (v7 < 0)
  {
    v9 = *v5;
  }

  else
  {
    v9 = v7 & 0xFFFFFFFFFFFFFF8;
  }

  v10 = sub_195FA1038();

  if (!v10)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v11 = sub_195FA0E88();
  v12 = a4(v9, v11);

  v13 = sub_195F59EE8(a1);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v16 = *(v12[6] + 8 * v13);

  v17 = *(v12[7] + 8 * v13);
  sub_195F5C3C8(v13, v12);

  *v5 = v12;
  return v17;
}

unint64_t sub_195F5A3C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  result = sub_195EC7CCC(a1, a2);
  if (v8)
  {
    v9 = result;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v17 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_195F5F0E8();
      v12 = v17;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56) + 32 * v9;
    v15 = *v14;
    v16 = *(v14 + 16);
    LOBYTE(v14) = *(v14 + 24);
    *a3 = v15;
    *(a3 + 16) = v16;
    *(a3 + 24) = v14;
    result = sub_195F5C5B8(v9, v12);
    *v4 = v12;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 24) = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

uint64_t sub_195F5A478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v8 = *v5;
  v9 = sub_195F59F90(a1, a2, a3, a4);
  if (v10)
  {
    v11 = v9;
    v12 = *v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v6;
    v27 = *v6;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_195F5F284(type metadata accessor for IconStore.FileVersionUpdateMigration, &unk_1EAEEE0D8, &qword_195FAEFF8, type metadata accessor for IconStore.FileVersionUpdateMigration);
      v14 = v27;
    }

    v15 = *(v14 + 48) + 32 * v11;
    v16 = *(v15 + 8);
    v17 = *(v15 + 24);

    v18 = *(v14 + 56);
    updated = type metadata accessor for IconStore.FileVersionUpdateMigration(0);
    v26 = *(updated - 8);
    sub_195F5FE40(v18 + *(v26 + 72) * v11, a5, type metadata accessor for IconStore.FileVersionUpdateMigration);
    sub_195F5C774(v11, v14, type metadata accessor for IconStore.FileVersionUpdateMigration);
    *v6 = v14;
    v20 = *(v26 + 56);
    v21 = a5;
    v22 = 0;
    v23 = updated;
  }

  else
  {
    v24 = type metadata accessor for IconStore.FileVersionUpdateMigration(0);
    v20 = *(*(v24 - 8) + 56);
    v23 = v24;
    v21 = a5;
    v22 = 1;
  }

  return v20(v21, v22, 1, v23);
}

uint64_t sub_195F5A63C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v8 = *v5;
  v9 = sub_195F59F90(a1, a2, a3, a4);
  if (v10)
  {
    v11 = v9;
    v12 = *v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v6;
    v27 = *v6;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_195F5F284(type metadata accessor for IconStore.FileRenameMigration, &qword_1EAEEE0D0, &qword_195FAEFF0, type metadata accessor for IconStore.FileRenameMigration);
      v14 = v27;
    }

    v15 = *(v14 + 48) + 32 * v11;
    v16 = *(v15 + 8);
    v17 = *(v15 + 24);

    v18 = *(v14 + 56);
    v19 = type metadata accessor for IconStore.FileRenameMigration(0);
    v26 = *(v19 - 8);
    sub_195F5FE40(v18 + *(v26 + 72) * v11, a5, type metadata accessor for IconStore.FileRenameMigration);
    sub_195F5C774(v11, v14, type metadata accessor for IconStore.FileRenameMigration);
    *v6 = v14;
    v20 = *(v26 + 56);
    v21 = a5;
    v22 = 0;
    v23 = v19;
  }

  else
  {
    v24 = type metadata accessor for IconStore.FileRenameMigration(0);
    v20 = *(*(v24 - 8) + 56);
    v23 = v24;
    v21 = a5;
    v22 = 1;
  }

  return v20(v21, v22, 1, v23);
}

uint64_t sub_195F5A800(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEE110, &qword_195FAF040);
  result = sub_195FA1098();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 32 * v20);
      if (a2)
      {
        sub_195F2E09C(v22, v34);
      }

      else
      {
        sub_195EBDAFC(v22, v34);
        v23 = v21;
      }

      v24 = *(v8 + 40);
      sub_195FA1398();
      type metadata accessor for CFString(0);
      sub_195EC6848(&qword_1EAEEBB68, type metadata accessor for CFString);
      sub_195FA0578();
      result = sub_195FA13E8();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      result = sub_195F2E09C(v34, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_36;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_195F5AAE0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE0C8, &unk_195FAEFE0);
  result = sub_195FA1098();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
        swift_unknownObjectRetain();
      }

      v24 = *(v8 + 40);
      result = sub_195FA0D78();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_195F5AD64(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED630, &qword_195FAC388);
  v38 = a2;
  result = sub_195FA1098();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = *(v5 + 56) + 16 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      if ((v38 & 1) == 0)
      {
        v26 = v24;
        v27 = v22;
      }

      v28 = *(v8 + 40);
      result = sub_195FA0D78();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = *(v8 + 56) + 16 * v16;
      *v17 = v24;
      *(v17 + 8) = v25;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if (v38)
    {
      v36 = 1 << *(v5 + 32);
      if (v36 >= 64)
      {
        bzero((v5 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v36;
      }

      *(v5 + 16) = 0;
    }

    v3 = v37;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_195F5AFE8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE0F0, &unk_195FAF010);
  v39 = a2;
  result = sub_195FA1098();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = v23[1];
      v25 = (*(v5 + 56) + 24 * v22);
      v26 = v25[1];
      v40 = *v25;
      v41 = *v23;
      v27 = v25[2];
      if ((v39 & 1) == 0)
      {
      }

      v28 = *(v8 + 40);
      sub_195FA1398();
      sub_195FA0958();
      result = sub_195FA13E8();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v41;
      v17[1] = v24;
      v18 = (*(v8 + 56) + 24 * v16);
      *v18 = v40;
      v18[1] = v26;
      v18[2] = v27;
      ++*(v8 + 16);
      v5 = v38;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_195F5B2C0(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = sub_195FA1098();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_195FA1398();
      sub_195FA0958();
      result = sub_195FA13E8();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}