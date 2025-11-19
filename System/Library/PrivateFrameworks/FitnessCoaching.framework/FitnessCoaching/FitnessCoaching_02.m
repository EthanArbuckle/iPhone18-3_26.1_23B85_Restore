uint64_t sub_2277B88A0()
{
  v1 = v0[9];
  v2 = v0[5];
  v0[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE8A0, &qword_2277E3A08);
  swift_willThrowTypedImpl();
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

unint64_t sub_2277B8948()
{
  result = qword_2813BC500;
  if (!qword_2813BC500)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813BC500);
  }

  return result;
}

uint64_t type metadata accessor for AsyncWorkoutWeekStream()
{
  result = qword_27D7CEF40;
  if (!qword_27D7CEF40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2277B8A28()
{
  result = sub_2277E1E84();
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

uint64_t sub_2277B8B00(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AsyncWorkoutWeekStream();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2277B8B44(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEF68, &qword_2277E61F0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22779696C;

  return sub_2277B804C(a1, v6, v7, v8, v1 + v5);
}

uint64_t FirstGlanceWorkoutSummationType.protobuf()()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf();
  sub_2277B98C0(&qword_27D7CEED8, type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf);
  return sub_2277E2274();
}

uint64_t sub_2277B8D00(uint64_t a1, void *a2)
{
  GlanceWorkoutSummationProtobuf = type metadata accessor for FirstGlanceWorkoutSummationProtobuf();
  v6 = *(GlanceWorkoutSummationProtobuf - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](GlanceWorkoutSummationProtobuf);
  v10 = &v26[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v26[-1] - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v26[-1] - v15;
  v17 = a2[1];
  v19 = a2[2];
  v18 = a2[3];
  v20 = a2[4];
  v21 = v17 >> 62;
  v22 = v17 & 0x3FFFFFFFFFFFFFFFLL;
  if (v21)
  {
    if (v21 == 1)
    {
      v27[0] = *a2;
      v27[1] = v22;
      v27[2] = v19;
      v27[3] = v18;
      v27[4] = v20;
      *a1 = 1;
      *(a1 + 8) = 1;
      MEMORY[0x28223BE20](v14);
      *(&v25 - 2) = v27;
      sub_2277B98C0(&qword_27D7CE948, type metadata accessor for FirstGlanceWorkoutSummationProtobuf);
      result = sub_2277E2274();
      if (v2)
      {
        return result;
      }

      v10 = v13;
    }

    else
    {
      v28[0] = *a2;
      v28[1] = v22;
      v28[2] = v19;
      v28[3] = v18;
      v28[4] = v20;
      *a1 = 2;
      *(a1 + 8) = 1;
      MEMORY[0x28223BE20](v14);
      *(&v25 - 2) = v28;
      sub_2277B98C0(&qword_27D7CE948, type metadata accessor for FirstGlanceWorkoutSummationProtobuf);
      result = sub_2277E2274();
      if (v2)
      {
        return result;
      }
    }
  }

  else
  {
    v26[0] = *a2;
    v26[1] = v22;
    v26[2] = v19;
    v26[3] = v18;
    v26[4] = v20;
    *a1 = 0;
    *(a1 + 8) = 1;
    MEMORY[0x28223BE20](v14);
    *(&v25 - 2) = v26;
    sub_2277B98C0(&qword_27D7CE948, type metadata accessor for FirstGlanceWorkoutSummationProtobuf);
    result = sub_2277E2274();
    if (v2)
    {
      return result;
    }

    v10 = v16;
  }

  v24 = *(type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf() + 24);
  sub_2277B9694(a1 + v24);
  sub_2277B96FC(v10, a1 + v24);
  return (*(v6 + 56))(a1 + v24, 0, 1, GlanceWorkoutSummationProtobuf);
}

uint64_t FirstGlanceWorkoutSummationType.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEF70, &unk_2277E74F0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v53 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v53 - v12;
  GlanceWorkoutSummationProtobuf = type metadata accessor for FirstGlanceWorkoutSummationProtobuf();
  v15 = *(*(GlanceWorkoutSummationProtobuf - 8) + 64);
  v16 = MEMORY[0x28223BE20](GlanceWorkoutSummationProtobuf);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v53 - v20;
  MEMORY[0x28223BE20](v19);
  v24 = &v53 - v23;
  if (*(a1 + 8) != 1)
  {
    sub_227791024();
    swift_allocError();
    *v31 = 3;
    swift_willThrow();
    return sub_2277B95C8(a1);
  }

  v53 = a2;
  v25 = (v22 + 48);
  if (*a1)
  {
    if (*a1 == 1)
    {
      GlanceWorkoutSummationTypeProtobuf = type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf();
      sub_2277B9624(a1 + *(GlanceWorkoutSummationTypeProtobuf + 24), v11);
      v27 = *v25;
      if ((*v25)(v11, 1, GlanceWorkoutSummationProtobuf) == 1)
      {
        *v21 = 0;
        *(v21 + 1) = 0;
        *(v21 + 4) = 0;
        v28 = &v21[*(GlanceWorkoutSummationProtobuf + 28)];
        sub_2277E20F4();
        v29 = *(GlanceWorkoutSummationProtobuf + 32);
        GlanceModalityProtobuf = type metadata accessor for FirstGlanceModalityProtobuf();
        (*(*(GlanceModalityProtobuf - 8) + 56))(&v21[v29], 1, 1, GlanceModalityProtobuf);
        if (v27(v11, 1, GlanceWorkoutSummationProtobuf) != 1)
        {
          sub_2277B9694(v11);
        }
      }

      else
      {
        sub_2277B96FC(v11, v21);
      }

      v47 = v58;
      FirstGlanceWorkoutSummation.init(_:)(v21, &v54);
      result = sub_2277B95C8(a1);
      if (!v47)
      {
        v48 = v54;
        v49 = v56;
        v50 = v57;
        v51 = v55 | 0x4000000000000000;
LABEL_23:
        v52 = v53;
        *v53 = v48;
        v52[1] = v51;
        *(v52 + 1) = v49;
        v52[4] = v50;
      }
    }

    else
    {
      v40 = type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf();
      sub_2277B9624(a1 + *(v40 + 24), v8);
      v41 = *v25;
      if ((*v25)(v8, 1, GlanceWorkoutSummationProtobuf) == 1)
      {
        *v18 = 0;
        *(v18 + 1) = 0;
        *(v18 + 4) = 0;
        v42 = &v18[*(GlanceWorkoutSummationProtobuf + 28)];
        sub_2277E20F4();
        v43 = *(GlanceWorkoutSummationProtobuf + 32);
        v44 = type metadata accessor for FirstGlanceModalityProtobuf();
        (*(*(v44 - 8) + 56))(&v18[v43], 1, 1, v44);
        v45 = v41(v8, 1, GlanceWorkoutSummationProtobuf);
        v46 = v58;
        if (v45 != 1)
        {
          sub_2277B9694(v8);
        }
      }

      else
      {
        sub_2277B96FC(v8, v18);
        v46 = v58;
      }

      FirstGlanceWorkoutSummation.init(_:)(v18, &v54);
      result = sub_2277B95C8(a1);
      if (!v46)
      {
        v48 = v54;
        v49 = v56;
        v50 = v57;
        v51 = v55 | 0x8000000000000000;
        goto LABEL_23;
      }
    }
  }

  else
  {
    v33 = type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf();
    sub_2277B9624(a1 + *(v33 + 24), v13);
    v34 = *v25;
    if ((*v25)(v13, 1, GlanceWorkoutSummationProtobuf) == 1)
    {
      *v24 = 0;
      *(v24 + 1) = 0;
      *(v24 + 4) = 0;
      v35 = &v24[*(GlanceWorkoutSummationProtobuf + 28)];
      sub_2277E20F4();
      v36 = *(GlanceWorkoutSummationProtobuf + 32);
      v37 = type metadata accessor for FirstGlanceModalityProtobuf();
      (*(*(v37 - 8) + 56))(&v24[v36], 1, 1, v37);
      v38 = v34(v13, 1, GlanceWorkoutSummationProtobuf);
      v39 = v58;
      if (v38 != 1)
      {
        sub_2277B9694(v13);
      }
    }

    else
    {
      sub_2277B96FC(v13, v24);
      v39 = v58;
    }

    FirstGlanceWorkoutSummation.init(_:)(v24, &v54);
    result = sub_2277B95C8(a1);
    if (!v39)
    {
      v48 = v54;
      v51 = v55;
      v49 = v56;
      v50 = v57;
      goto LABEL_23;
    }
  }

  return result;
}

uint64_t sub_2277B95C8(uint64_t a1)
{
  GlanceWorkoutSummationTypeProtobuf = type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf();
  (*(*(GlanceWorkoutSummationTypeProtobuf - 8) + 8))(a1, GlanceWorkoutSummationTypeProtobuf);
  return a1;
}

uint64_t sub_2277B9624(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEF70, &unk_2277E74F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2277B9694(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEF70, &unk_2277E74F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2277B96FC(uint64_t a1, uint64_t a2)
{
  GlanceWorkoutSummationProtobuf = type metadata accessor for FirstGlanceWorkoutSummationProtobuf();
  (*(*(GlanceWorkoutSummationProtobuf - 8) + 32))(a2, a1, GlanceWorkoutSummationProtobuf);
  return a2;
}

uint64_t sub_2277B97F0()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf();
  sub_2277B98C0(&qword_27D7CEED8, type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf);
  return sub_2277E2274();
}

uint64_t sub_2277B98C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t XPCClient.__allocating_init(machServiceName:)()
{
  v0 = swift_allocObject();
  XPCClient.init(machServiceName:)();
  return v0;
}

uint64_t XPCClient.__allocating_init()()
{
  type metadata accessor for XPCClient();
  v0 = swift_allocObject();
  XPCClient.init(machServiceName:)();
  return v0;
}

uint64_t XPCClient.init(machServiceName:)()
{
  swift_defaultActor_initialize();
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_2277E2414();

  v3 = [v1 initWithMachServiceName:v2 options:0];

  *(v0 + 112) = v3;
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 interfaceWithProtocol_];
  [v5 setRemoteObjectInterface_];

  return v0;
}

uint64_t XPCClient.deinit()
{
  v1 = v0;
  if (*(v0 + 128) != 2)
  {
    if (qword_2813BC690 != -1)
    {
      swift_once();
    }

    v2 = sub_2277E2374();
    __swift_project_value_buffer(v2, qword_2813BC698);
    v3 = sub_2277E2354();
    v4 = sub_2277E2704();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_227786000, v3, v4, "### XPCClient deinit before invalidation", v5, 2u);
      MEMORY[0x22AA9C370](v5, -1, -1);
    }

    [*(v1 + 112) setInterruptionHandler_];
    [*(v1 + 112) setInvalidationHandler_];
    [*(v1 + 112) invalidate];
  }

  v6 = *(v1 + 120);
  swift_unknownObjectRelease();
  swift_defaultActor_destroy();
  return v1;
}

uint64_t XPCClient.__deallocating_deinit()
{
  XPCClient.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2277B9C34()
{
  if (*(v0 + 128) == 1)
  {
    v1 = *(v0 + 120);
    if (!v1)
    {
      v2 = *(v0 + 112);
      aBlock[4] = sub_2277B9DBC;
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2277B9F54;
      aBlock[3] = &block_descriptor_1;
      v3 = _Block_copy(aBlock);
      v4 = [v2 remoteObjectProxyWithErrorHandler_];
      _Block_release(v3);
      sub_2277E27B4();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEFF0, &qword_2277E6338);
      if (swift_dynamicCast())
      {
        v1 = v8;
      }

      else
      {
        v1 = 0;
      }

      v5 = *(v0 + 120);
      *(v0 + 120) = v1;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRetain();
  }

  else
  {
    sub_227791024();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();
  }

  return v1;
}

void sub_2277B9DBC(void *a1)
{
  if (qword_2813BC690 != -1)
  {
    swift_once();
  }

  v2 = sub_2277E2374();
  __swift_project_value_buffer(v2, qword_2813BC698);
  v3 = a1;
  oslog = sub_2277E2354();
  v4 = sub_2277E26F4();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    swift_getErrorValue();
    v7 = (Error.logOutput.getter)();
    v9 = sub_22779A830(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_227786000, oslog, v4, "Error on remote object proxy: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x22AA9C370](v6, -1, -1);
    MEMORY[0x22AA9C370](v5, -1, -1);
  }

  else
  {
  }
}

void sub_2277B9F54(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_2277B9FE8()
{
  if (qword_2813BC690 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = sub_2277E2374();
  __swift_project_value_buffer(v2, qword_2813BC698);
  v3._countAndFlagsBits = 0x6574617669746361;
  v4._object = 0x80000002277E9720;
  v4._countAndFlagsBits = 0xD000000000000059;
  v3._object = 0xEA00000000002928;
  Logger.trace(file:function:)(v4, v3);
  if (!*(v1 + 128))
  {
    v5 = v0[8];
    v6 = *(v5 + 112);
    [v6 setExportedObject_];
    v0[6] = sub_2277BA200;
    v0[7] = 0;
    v7 = MEMORY[0x277D85DD0];
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_2277CFE88;
    v0[5] = &block_descriptor_19;
    v8 = _Block_copy(v0 + 2);
    [v6 setInterruptionHandler_];
    _Block_release(v8);
    v0[6] = sub_2277BA740;
    v0[7] = v5;
    v0[2] = v7;
    v0[3] = 1107296256;
    v0[4] = sub_2277CFE88;
    v0[5] = &block_descriptor_22;
    v9 = _Block_copy(v0 + 2);
    v10 = v0[7];

    [v6 setInvalidationHandler_];
    _Block_release(v9);
    [v6 resume];
    *(v1 + 128) = 1;
  }

  v11 = v0[1];

  return v11();
}

void sub_2277BA200()
{
  if (qword_2813BC690 != -1)
  {
    swift_once();
  }

  v0 = sub_2277E2374();
  __swift_project_value_buffer(v0, qword_2813BC698);
  oslog = sub_2277E2354();
  v1 = sub_2277E26F4();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_227786000, oslog, v1, "XPC connection interrupted", v2, 2u);
    MEMORY[0x22AA9C370](v2, -1, -1);
  }
}

uint64_t sub_2277BA2E8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CF280, &qword_2277E47B0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v12 - v2;
  if (qword_2813BC690 != -1)
  {
    swift_once();
  }

  v4 = sub_2277E2374();
  __swift_project_value_buffer(v4, qword_2813BC698);
  v5 = sub_2277E2354();
  v6 = sub_2277E26F4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_227786000, v5, v6, "XPC connection invalidated", v7, 2u);
    MEMORY[0x22AA9C370](v7, -1, -1);
  }

  v8 = sub_2277E2624();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v9;
  sub_2277BAC08(0, 0, v3, &unk_2277E6350, v10);
}

uint64_t sub_2277BA4C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_2277BA4E8, 0, 0);
}

uint64_t sub_2277BA4E8()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_2277BA5AC, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_2277BA5AC()
{
  v1 = *(v0 + 56);
  if (*(v1 + 128) != 2)
  {
    *(v1 + 128) = 2;
    v2 = v1;
    [*(v1 + 112) setInterruptionHandler_];
    [*(v2 + 112) setInvalidationHandler_];
    [*(v2 + 112) invalidate];
    v3 = *(v0 + 56);
  }

  return MEMORY[0x2822009F8](sub_2277BA66C, 0, 0);
}

unint64_t sub_2277BA6D4()
{
  result = qword_27D7CEFE0;
  if (!qword_27D7CEFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CEFE0);
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2277BA748(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22779696C;

  return sub_2277BA4C8(a1, v4, v5, v6);
}

uint64_t AchievementNotificationContent.protobuf()()
{
  v1 = *v0;
  type metadata accessor for AchievementNotificationContentProtobuf();
  sub_2277BAB00(&qword_2813BC810);
  return sub_2277E2274();
}

uint64_t sub_2277BA8A0(uint64_t a1, id a2)
{
  v3 = [a2 transportData];
  v4 = sub_2277E1F34();
  v6 = v5;

  result = sub_22778E130(*a1, *(a1 + 8));
  *a1 = v4;
  *(a1 + 8) = v6;
  return result;
}

uint64_t AchievementNotificationContent.init(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = objc_allocWithZone(MEMORY[0x277CE8CE0]);
  sub_2277905C0(v4, v5);
  v7 = sub_2277E1F24();
  sub_22778E130(v4, v5);
  v8 = [v6 initWithData_];

  if (v8)
  {
    v9 = [objc_allocWithZone(MEMORY[0x277CE8CB0]) initWithCodable_];

    result = sub_2277BAA3C(a1);
    *a2 = v9;
  }

  else
  {
    sub_227791024();
    swift_allocError();
    *v11 = 3;
    swift_willThrow();
    return sub_2277BAA3C(a1);
  }

  return result;
}

uint64_t sub_2277BAA3C(uint64_t a1)
{
  v2 = type metadata accessor for AchievementNotificationContentProtobuf();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2277BAB00(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AchievementNotificationContentProtobuf();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2277BAB44()
{
  v1 = *v0;
  type metadata accessor for AchievementNotificationContentProtobuf();
  sub_2277BAB00(&qword_2813BC810);
  return sub_2277E2274();
}

uint64_t sub_2277BAC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CF280, &qword_2277E47B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_227796CF8(a3, v27 - v11);
  v13 = sub_2277E2624();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_227796D68(v12);
  }

  else
  {
    sub_2277E2614();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2277E25C4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2277E2464() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CF000, &qword_2277E6460);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_227796D68(a3);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_227796D68(a3);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CF000, &qword_2277E6460);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_2277BAEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CF280, &qword_2277E47B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_227796CF8(a3, v27 - v11);
  v13 = sub_2277E2624();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_227796D68(v12);
  }

  else
  {
    sub_2277E2614();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2277E25C4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2277E2464() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_227796D68(a3);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_227796D68(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t AsyncLock.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  return v0;
}

uint64_t AsyncLock.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  return v0;
}

uint64_t sub_2277BB21C()
{
  v1 = v0[3];
  v2 = *(v1 + 112);
  if (v2)
  {
    v0[2] = v2;
    sub_2277BB504();
    v3 = swift_task_alloc();
    v0[4] = v3;
    *(v3 + 16) = v0 + 2;
    *(v3 + 24) = v1;
    v4 = *(MEMORY[0x277D859E0] + 4);

    v5 = swift_task_alloc();
    v0[5] = v5;
    *v5 = v0;
    v5[1] = sub_2277BB378;

    return MEMORY[0x2822007B8]();
  }

  else
  {
    *(v1 + 112) = MEMORY[0x277D84F90];
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_2277BB378()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_2277BB4A4, v3, 0);
}

uint64_t sub_2277BB4A4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_2277BB504()
{
  result = qword_27D7CEFF8;
  if (!qword_27D7CEFF8)
  {
    type metadata accessor for AsyncLock();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CEFF8);
  }

  return result;
}

uint64_t sub_2277BB57C(uint64_t a1, void **a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEF18, &qword_2277E6080);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  (*(v7 + 16))(&v18 - v9, a1, v6);
  v11 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_2277B5D00(0, v11[2] + 1, 1, v11);
    *a2 = v11;
  }

  v14 = v11[2];
  v13 = v11[3];
  if (v14 >= v13 >> 1)
  {
    v11 = sub_2277B5D00(v13 > 1, v14 + 1, 1, v11);
    *a2 = v11;
  }

  v11[2] = v14 + 1;
  (*(v7 + 32))(v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v14, v10, v6);
  v15 = *a2;
  v16 = *(a3 + 112);
  *(a3 + 112) = v15;
}

uint64_t sub_2277BB720()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CF280, &qword_2277E47B0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v8 - v3;
  v5 = sub_2277E2624();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;

  sub_2277BAEDC(0, 0, v4, &unk_2277E6398, v6);
}

uint64_t sub_2277BB828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEF18, &qword_2277E6080);
  v4[3] = v6;
  v7 = *(v6 - 8);
  v4[4] = v7;
  v8 = *(v7 + 64) + 15;
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2277BB8F8, a4, 0);
}

uint64_t sub_2277BB8F8()
{
  v1 = v0[2];
  v2 = *(v1 + 112);
  if (v2)
  {
    if (v2[2])
    {
      result = (*(v0[4] + 16))(v0[5], v2 + ((*(v0[4] + 80) + 32) & ~*(v0[4] + 80)), v0[3]);
      v4 = v2[2];
      if (!v4)
      {
        __break(1u);
        return result;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v4 - 1) > v2[3] >> 1)
      {
        v2 = sub_2277B5D00(isUniquelyReferenced_nonNull_native, v4, 1, v2);
      }

      v7 = v0[4];
      v6 = v0[5];
      v8 = v0[3];
      sub_2277BC190(0, 1, 0);
      v9 = *(v1 + 112);
      *(v1 + 112) = v2;

      sub_2277E25E4();
      (*(v7 + 8))(v6, v8);
    }

    else
    {
      *(v1 + 112) = 0;
    }
  }

  v10 = v0[5];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2277BBA50(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2277AA94C;

  return sub_2277BB828(a1, v4, v5, v6);
}

uint64_t AsyncLock.deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t AsyncLock.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t dispatch thunk of AsyncLock.lock()()
{
  v2 = *(*v0 + 128);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22779696C;

  return v6();
}

uint64_t sub_2277BBCE0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2277BBDD8;

  return v7(a1);
}

uint64_t sub_2277BBDD8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2277BBED0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2277AA94C;

  return sub_2277BBCE0(a1, v5);
}

uint64_t sub_2277BBF88(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_2277BC07C;

  return v6(v2 + 32);
}

uint64_t sub_2277BC07C()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

unint64_t sub_2277BC190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEF18, &qword_2277E6080);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_2277BC2E4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2277AA94C;

  return sub_2277BBF88(a1, v5);
}

uint64_t sub_2277BC39C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22779696C;

  return sub_2277BBF88(a1, v5);
}

uint64_t FirstGlanceWorkoutSummation.init(modality:totalActiveEnergy:totalDistance:workoutCount:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v5 = *(result + 8);
  *a3 = *result;
  *(a3 + 8) = v5;
  *(a3 + 16) = a4;
  *(a3 + 24) = a5;
  *(a3 + 32) = a2;
  return result;
}

void FirstGlanceWorkoutSummation.modality.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t FirstGlanceWorkoutSummation.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  MEMORY[0x22AA9BBC0](*v0);
  MEMORY[0x22AA9BBC0](v1);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x22AA9BBE0](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x22AA9BBE0](*&v6);
  return MEMORY[0x22AA9BBC0](v4);
}

uint64_t FirstGlanceWorkoutSummation.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 1);
  v5 = v0[4];
  sub_2277E2A04();
  FirstGlanceWorkoutSummation.hash(into:)();
  return sub_2277E2A44();
}

uint64_t sub_2277BC588()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 1);
  v5 = v0[4];
  sub_2277E2A04();
  FirstGlanceWorkoutSummation.hash(into:)();
  return sub_2277E2A44();
}

uint64_t sub_2277BC5F0()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 1);
  v5 = v0[4];
  sub_2277E2A04();
  FirstGlanceWorkoutSummation.hash(into:)();
  return sub_2277E2A44();
}

unint64_t sub_2277BC6A0()
{
  result = qword_27D7CF008;
  if (!qword_27D7CF008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CF008);
  }

  return result;
}

uint64_t sub_2277BC6F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 40))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_2277BC738(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t ActivityDataError.hashValue.getter()
{
  v1 = *v0;
  sub_2277E2A04();
  MEMORY[0x22AA9BBC0](v1);
  return sub_2277E2A44();
}

unint64_t sub_2277BC820()
{
  result = qword_27D7CF010;
  if (!qword_27D7CF010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CF010);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActivityDataError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActivityDataError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_2277BC9DC(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2277E28E4())
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x22AA9B9D0](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      a1(&v11);

      if (!v3)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_2277BCADC(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2277A31F8;

  return WorkoutQuerying.completedWorkouts(dateInterval:minimumDuration:)(a1, a2, a3, a4);
}

uint64_t WorkoutQuerying.completedWorkouts(dateInterval:minimumDuration:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = *(a3 + 8);
  v14 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2277BEC1C;
  v12.n128_f64[0] = a4;

  return v14(a1, a2, a3, v12);
}

uint64_t WorkoutQuery.completedWorkouts(dateInterval:minimumDuration:)(uint64_t a1, double a2)
{
  *(v3 + 32) = a2;
  *(v3 + 24) = a1;
  *(v3 + 40) = *v2;
  return MEMORY[0x2822009F8](sub_2277BCD04, 0, 0);
}

uint64_t sub_2277BCD04()
{
  v1 = v0[5];
  v2 = v0[4];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v1;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[7] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CECC8, &qword_2277E52E8);
  *v6 = v0;
  v6[1] = sub_2277BCE24;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000030, 0x80000002277E97A0, sub_2277BD4B0, v4, v7);
}

uint64_t sub_2277BCE24()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_2277BCF40;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_2277A204C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2277BCF40()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

void sub_2277BCFA4(uint64_t a1, double a2, uint64_t a3, void *a4)
{
  v42 = a1;
  v43 = a4;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CF038, qword_2277E6710);
  v5 = *(v41 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v38 - v7;
  v8 = sub_2277E1FA4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_opt_self();
  sub_2277E1E64();
  v14 = sub_2277E1F74();
  v15 = *(v9 + 8);
  v15(v12, v8);
  sub_2277E1E44();
  v16 = sub_2277E1F74();
  v15(v12, v8);
  v17 = [v13 predicateForSamplesWithStartDate:v14 endDate:v16 options:0];

  v18 = [v13 predicateForWorkoutsWithOperatorType:3 duration:a2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CF020, "HP");
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2277E6660;
  *(v19 + 32) = v17;
  *(v19 + 40) = v18;
  sub_22778E6C8(0, &qword_27D7CF040, 0x277CCAC30);
  v39 = v17;
  v38 = v18;
  v20 = sub_2277E2544();

  v21 = [objc_opt_self() andPredicateWithSubpredicates_];

  v22 = *MEMORY[0x277CCCD50];
  sub_2277E2434();
  v23 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v24 = sub_2277E2414();

  v25 = [v23 initWithKey:v24 ascending:0];

  sub_22778E6C8(0, &qword_27D7CF048, 0x277CCD8D8);
  v26 = [swift_getObjCClassFromMetadata() workoutType];
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_2277E6670;
  *(v27 + 32) = v25;
  v28 = v40;
  v29 = v41;
  (*(v5 + 16))(v40, v42, v41);
  v30 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v31 = swift_allocObject();
  (*(v5 + 32))(v31 + v30, v28, v29);
  v32 = objc_allocWithZone(MEMORY[0x277CCD8D0]);
  sub_22778E6C8(0, &qword_27D7CF030, 0x277CCAC98);
  v33 = v21;
  v34 = v25;
  v35 = sub_2277E2544();

  aBlock[4] = sub_2277BEAF8;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2277BE724;
  aBlock[3] = &block_descriptor_30;
  v36 = _Block_copy(aBlock);
  v37 = [v32 initWithSampleType:v26 predicate:v33 limit:0 sortDescriptors:v35 resultsHandler:v36];

  _Block_release(v36);

  [v43 executeQuery_];
}

uint64_t sub_2277BD4C0(int a1, unint64_t a2, id a3)
{
  if (a2)
  {
    v13 = MEMORY[0x277D84F90];
    v4 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 >> 62)
    {
LABEL_23:
      v5 = sub_2277E28E4();
      if (v5)
      {
LABEL_4:
        v6 = 0;
        do
        {
          v7 = v6;
          while (1)
          {
            if ((a2 & 0xC000000000000001) != 0)
            {
              v8 = MEMORY[0x22AA9B9D0](v7, a2, a3);
            }

            else
            {
              if (v7 >= *(v4 + 16))
              {
                goto LABEL_22;
              }

              v8 = *(a2 + 8 * v7 + 32);
            }

            v9 = v8;
            v6 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
              __break(1u);
LABEL_22:
              __break(1u);
              goto LABEL_23;
            }

            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              break;
            }

            ++v7;
            if (v6 == v5)
            {
              goto LABEL_24;
            }
          }

          MEMORY[0x22AA9B6E0]();
          if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v10 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_2277E2564();
          }

          sub_2277E2594();
        }

        while (v6 != v5);
      }
    }

    else
    {
      v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
        goto LABEL_4;
      }
    }

LABEL_24:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CF038, qword_2277E6710);
    return sub_2277E25E4();
  }

  if (!a3)
  {
    sub_2277BEB8C();
    swift_allocError();
    a3 = 0;
  }

  v11 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CF038, qword_2277E6710);
  return sub_2277E25D4();
}

char *WorkoutQuery.makeWorkoutStream(dateInterval:activityType:limit:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a3;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEF58, &unk_2277E61E0);
  v4 = *(v30 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v30);
  v7 = v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEF28, &qword_2277E6098);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEF30, &qword_2277E60A0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v28 - v19;
  v21 = *v28[1];
  v31 = a2;
  v32 = v29;
  v33 = v21;
  sub_22778E6C8(0, &qword_2813BC500, 0x277CCDBE8);
  (*(v9 + 104))(v12, *MEMORY[0x277D858A0], v8);
  sub_2277E26A4();
  (*(v14 + 16))(v18, v20, v13);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CF018, &qword_2277E6690);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  v25 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v25 + 14) = 0;
  swift_beginAccess();
  *(v25 + 14) = 0;
  sub_2277E2664();
  v26 = *(v14 + 8);
  v26(v18, v13);
  v26(v20, v13);
  (*(v4 + 32))(&v25[*(*v25 + 120)], v7, v30);
  return v25;
}

void sub_2277BDA04(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v34 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEF68, &qword_2277E61F0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  v12 = [objc_opt_self() predicateForWorkoutsWithWorkoutActivityType_];
  v35 = v12;
  v13 = [objc_opt_self() workoutType];
  v14 = [objc_allocWithZone(MEMORY[0x277CCD848]) initWithSampleType:v13 predicate:v12];
  v33 = v14;

  v15 = *MEMORY[0x277CCCD50];
  sub_2277E2434();
  v16 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v17 = sub_2277E2414();

  v18 = [v16 initWithKey:v17 ascending:1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CF020, "HP");
  v19 = swift_allocObject();
  v32 = xmmword_2277E6670;
  *(v19 + 16) = xmmword_2277E6670;
  *(v19 + 32) = v14;
  v20 = swift_allocObject();
  *(v20 + 16) = v32;
  *(v20 + 32) = v18;
  (*(v8 + 16))(v11, a1, v7);
  v21 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v22 = (v9 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  (*(v8 + 32))(v23 + v21, v11, v7);
  v24 = v34;
  *(v23 + v22) = v34;
  v25 = objc_allocWithZone(MEMORY[0x277CCD8B8]);
  sub_22778E6C8(0, &qword_27D7CF028, 0x277CCD848);
  v33 = v33;
  v26 = v18;
  v27 = a4;
  v28 = sub_2277E2544();

  sub_22778E6C8(0, &qword_27D7CF030, 0x277CCAC98);
  v29 = sub_2277E2544();

  aBlock[4] = sub_2277BE6E8;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2277BE7DC;
  aBlock[3] = &block_descriptor_2;
  v30 = _Block_copy(aBlock);
  v31 = [v25 initWithQueryDescriptors:v28 sortDescriptors:v29 followingAnchor:0 upToAndIncludingAnchor:0 distinctByKeyPaths:0 limit:v24 resultsHandler:v30];

  _Block_release(v30);

  [v27 executeQuery_];
}

void sub_2277BDE0C(uint64_t a1, unint64_t a2, void *a3, void *a4, void *a5, unint64_t a6, unint64_t a7, void *a8, uint64_t a9, uint64_t a10, unint64_t a11)
{
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEF68, &qword_2277E61F0);
  v45 = *(v18 - 8);
  v43 = *(v45 + 64);
  MEMORY[0x28223BE20](v18);
  v44 = &v36 - v19;
  if (a4)
  {
    aBlock[0] = a4;
    v20 = a4;
    sub_2277E2654();
  }

  v21 = MEMORY[0x277D84F90];
  if (a2)
  {
    v40 = a3;
    aBlock[0] = MEMORY[0x277D84F90];
    a3 = (a2 & 0xFFFFFFFFFFFFFF8);
    if (a2 >> 62)
    {
      v22 = sub_2277E28E4();
    }

    else
    {
      v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v39 = v18;
    v41 = a5;
    v42 = a7;
    if (v22)
    {
      a7 = 0;
      a5 = (a2 & 0xC000000000000001);
      v18 = 0x277CCD000uLL;
      v37 = a8;
      v38 = a6;
      do
      {
        v36 = v21;
        v21 = a7;
        while (1)
        {
          if (a5)
          {
            v23 = MEMORY[0x22AA9B9D0](v21, a2);
          }

          else
          {
            if (v21 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_26;
            }

            v23 = *(a2 + 8 * v21 + 32);
          }

          a8 = v23;
          a7 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            break;
          }

          ++v21;
          if (a7 == v22)
          {
            a8 = v37;
            a6 = v38;
            v21 = v36;
            goto LABEL_20;
          }
        }

        MEMORY[0x22AA9B6E0]();
        if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v24 = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_2277E2564();
        }

        sub_2277E2594();
        v21 = aBlock[0];
        a8 = v37;
        a6 = v38;
      }

      while (a7 != v22);
    }

LABEL_20:
    a5 = v41;
    a7 = v42;
    v18 = v39;
    a3 = v40;
  }

  if (!(v21 >> 62))
  {
    v25 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
      goto LABEL_23;
    }

LABEL_28:

    goto LABEL_29;
  }

LABEL_27:
  v25 = sub_2277E28E4();
  if (!v25)
  {
    goto LABEL_28;
  }

LABEL_23:
  MEMORY[0x28223BE20](v25);
  *(&v36 - 2) = a6;
  sub_2277BC9DC(a8, (&v36 - 4), v21);

  if (a3)
  {
    v42 = a11;
    v26 = v44;
    v27 = v45;
    (*(v45 + 16))(v44, a6, v18);
    v28 = (*(v27 + 80) + 24) & ~*(v27 + 80);
    v29 = (v43 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = swift_allocObject();
    *(v30 + 16) = a5;
    (*(v27 + 32))(v30 + v28, v26, v18);
    *(v30 + v29) = a7;
    v31 = objc_allocWithZone(MEMORY[0x277CCD8B8]);
    aBlock[4] = a10;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2277BE7DC;
    aBlock[3] = v42;
    v32 = _Block_copy(aBlock);
    v33 = a3;
    v34 = a5;
    v35 = [v31 initWithQueryCursor:v33 limit:a7 resultsHandler:v32];
    _Block_release(v32);

    [v34 executeQuery_];

    return;
  }

LABEL_29:
  aBlock[0] = 0;
  sub_2277E2654();
}

uint64_t sub_2277BE214(id *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEF50, &qword_2277E61D8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v10 = *a1;
  v7 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEF68, &qword_2277E61F0);
  sub_2277E2644();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_2277BE320(uint64_t a1, double a2)
{
  *(v3 + 32) = a2;
  *(v3 + 24) = a1;
  *(v3 + 40) = *v2;
  return MEMORY[0x2822009F8](sub_2277BE34C, 0, 0);
}

uint64_t sub_2277BE34C()
{
  v1 = v0[5];
  v2 = v0[4];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v1;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[7] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CECC8, &qword_2277E52E8);
  *v6 = v0;
  v6[1] = sub_2277BE46C;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000030, 0x80000002277E97A0, sub_2277BEC0C, v4, v7);
}

uint64_t sub_2277BE46C()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_2277BEBEC;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_2277A425C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t dispatch thunk of WorkoutQuerying.completedWorkouts(dateInterval:minimumDuration:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = *(a3 + 8);
  v14 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2277A3B58;
  v12.n128_f64[0] = a4;

  return v14(a1, a2, a3, v12);
}

uint64_t sub_2277BE724(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a3)
  {
    sub_22778E6C8(0, &qword_2813BC510, 0x277CCD8A8);
    v5 = sub_2277E2554();
  }

  v9 = a2;
  v10 = a4;
  v8(v9, v5, a4);
}

uint64_t sub_2277BE7DC(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v7 = a3;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (a3)
  {
    sub_22778E6C8(0, &qword_2813BC510, 0x277CCD8A8);
    v7 = sub_2277E2554();
  }

  v11 = a2;
  v12 = a4;
  v13 = a5;
  v10(v11, v7, a4, a5);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEF68, &qword_2277E61F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

void sub_2277BE9FC(uint64_t a1, unint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEF68, &qword_2277E61F0) - 8);
  v18 = (*(v17 + 80) + 24) & ~*(v17 + 80);
  sub_2277BDE0C(a1, a2, a3, a4, *(v8 + 16), v8 + v18, *(v8 + ((*(v17 + 64) + v18 + 7) & 0xFFFFFFFFFFFFFFF8)), a5, a6, a7, a8);
}

uint64_t sub_2277BEAF8(int a1, unint64_t a2, void *a3)
{
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CF038, qword_2277E6710) - 8) + 80);

  return sub_2277BD4C0(a1, a2, a3);
}

unint64_t sub_2277BEB8C()
{
  result = qword_27D7CF050;
  if (!qword_27D7CF050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CF050);
  }

  return result;
}

uint64_t WalkSuggestionClient.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for XPCClient();
  swift_allocObject();
  result = XPCClient.init(machServiceName:)();
  a1[3] = v2;
  a1[4] = &off_283AE4CC0;
  *a1 = result;
  return result;
}

uint64_t sub_2277BED34()
{
  v1 = *__swift_project_boxed_opaque_existential_1Tm(*(v0 + 16), *(*(v0 + 16) + 24));
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_2277BEDE8;

  return sub_22778A474(3);
}

uint64_t sub_2277BEDE8(uint64_t a1, char a2)
{
  v6 = *(*v3 + 24);
  v7 = *v3;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    v10 = *(v7 + 8);

    return v10(a1, a2 & 1);
  }
}

uint64_t sub_2277BEF3C(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2277AA94C;

  return v9(a1, a2);
}

uint64_t sub_2277BF054(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22779696C;

  return v9(a1, a2);
}

uint64_t sub_2277BF16C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2277AA94C;

  return v11(a1, a2, a3);
}

uint64_t sub_2277BF294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 32);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_22779696C;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_2277BF3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 40);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_2277AA94C;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_2277BF528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = *(a9 + 48);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v9 + 16) = v19;
  *v19 = v9;
  v19[1] = sub_2277AA94C;

  return v21(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t FirstGlanceModality.init(activity:type:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = result;
  *(a3 + 8) = v3;
  return result;
}

uint64_t FirstGlanceModality.hash(into:)()
{
  v1 = *(v0 + 8);
  MEMORY[0x22AA9BBC0](*v0);
  return MEMORY[0x22AA9BBC0](v1);
}

uint64_t FirstGlanceModality.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_2277E2A04();
  MEMORY[0x22AA9BBC0](v1);
  MEMORY[0x22AA9BBC0](v2);
  return sub_2277E2A44();
}

uint64_t sub_2277BF784()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_2277E2A04();
  MEMORY[0x22AA9BBC0](v1);
  MEMORY[0x22AA9BBC0](v2);
  return sub_2277E2A44();
}

uint64_t sub_2277BF7E4()
{
  v1 = *(v0 + 8);
  MEMORY[0x22AA9BBC0](*v0);
  return MEMORY[0x22AA9BBC0](v1);
}

uint64_t sub_2277BF824()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_2277E2A04();
  MEMORY[0x22AA9BBC0](v1);
  MEMORY[0x22AA9BBC0](v2);
  return sub_2277E2A44();
}

unint64_t sub_2277BF8B0()
{
  result = qword_27D7CF058;
  if (!qword_27D7CF058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CF058);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FirstGlanceModality(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for FirstGlanceModality(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

id _s15FitnessCoaching19PauseRingsLocalizerC14localizedTitleSSyF_0()
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v1 = result;
    [result isStandalonePhoneFitnessMode];

    type metadata accessor for XPCListener();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = [objc_opt_self() bundleForClass_];
    v4 = sub_2277E2414();
    v5 = sub_2277E2414();
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    v7 = sub_2277E2434();
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _s15FitnessCoaching19PauseRingsLocalizerC13localizedBody7forTypeSSAA0cd12NotificationI0O_tF_0()
{
  type metadata accessor for XPCListener();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_2277E2414();
  v3 = sub_2277E2414();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = sub_2277E2434();
  return v5;
}

const char *FitnessCoachingFeatures.feature.getter()
{
  v1 = "PauseRings";
  if (*v0 != 1)
  {
    v1 = "CoachingUpdates";
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return "Maritime";
  }
}

uint64_t FitnessCoachingFeatures.hashValue.getter()
{
  v1 = *v0;
  sub_2277E2A04();
  MEMORY[0x22AA9BBC0](v1);
  return sub_2277E2A44();
}

unint64_t sub_2277BFD78()
{
  result = qword_27D7CF060;
  if (!qword_27D7CF060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CF060);
  }

  return result;
}

const char *sub_2277BFDE0()
{
  v1 = "PauseRings";
  if (*v0 != 1)
  {
    v1 = "CoachingUpdates";
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return "Maritime";
  }
}

uint64_t sub_2277BFE38()
{
  sub_2277E2A04();
  sub_2277E2484();

  return sub_2277E2A44();
}

uint64_t sub_2277BFF84(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 2u)
  {
    v4 = 0x80000002277E89A0;
    v5 = 0x80000002277E89D0;
    v6 = 0xD00000000000001ALL;
    if (a1 == 1)
    {
      v6 = 0x676E696863616F43;
      v5 = 0xEC00000065746144;
    }

    v7 = a1 == 0;
  }

  else
  {
    if (a1 <= 4u)
    {
      if (a1 == 3)
      {
        v2 = 0x7472617453796144;
        v3 = 0xEE0074657366664FLL;
      }

      else
      {
        v3 = 0x80000002277E8A00;
        v2 = 0xD000000000000019;
      }

      goto LABEL_15;
    }

    v4 = 0x80000002277E8A20;
    v5 = 0x80000002277E8A40;
    v6 = 0xD000000000000011;
    v7 = a1 == 5;
  }

  if (v7)
  {
    v2 = 0xD000000000000017;
  }

  else
  {
    v2 = v6;
  }

  if (v7)
  {
    v3 = v4;
  }

  else
  {
    v3 = v5;
  }

LABEL_15:
  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v9 = 0x676E696863616F43;
      }

      else
      {
        v9 = 0xD00000000000001ALL;
      }

      if (a2 == 1)
      {
        v8 = 0xEC00000065746144;
      }

      else
      {
        v8 = 0x80000002277E89D0;
      }

      if (v2 != v9)
      {
        goto LABEL_40;
      }

      goto LABEL_38;
    }

    v10 = "BiomeFirstPickupEnabled";
    goto LABEL_32;
  }

  if (a2 <= 4u)
  {
    if (a2 == 3)
    {
      v8 = 0xEE0074657366664FLL;
      if (v2 != 0x7472617453796144)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v8 = 0x80000002277E8A00;
      if (v2 != 0xD000000000000019)
      {
        goto LABEL_40;
      }
    }

    goto LABEL_38;
  }

  if (a2 == 5)
  {
    v10 = "FirstGlanceValidEndHour";
LABEL_32:
    v8 = (v10 - 32) | 0x8000000000000000;
    if (v2 != 0xD000000000000017)
    {
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  v8 = 0x80000002277E8A40;
  if (v2 != 0xD000000000000011)
  {
LABEL_40:
    v11 = sub_2277E2984();
    goto LABEL_41;
  }

LABEL_38:
  if (v3 != v8)
  {
    goto LABEL_40;
  }

  v11 = 1;
LABEL_41:

  return v11 & 1;
}

unint64_t UserDefaultsKeys.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x676E696863616F43;
    if (v1 != 1)
    {
      v5 = 0xD00000000000001ALL;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0xD000000000000017;
    }
  }

  else
  {
    v2 = 0xD000000000000011;
    if (v1 == 5)
    {
      v2 = 0xD000000000000017;
    }

    v3 = 0xD000000000000019;
    if (v1 == 3)
    {
      v3 = 0x7472617453796144;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

FitnessCoaching::UserDefaultsKeys_optional __swiftcall UserDefaultsKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2277E2924();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_2277C030C()
{
  result = qword_27D7CF068;
  if (!qword_27D7CF068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CF068);
  }

  return result;
}

uint64_t sub_2277C036C()
{
  *v0;
  sub_2277E2484();
}

void sub_2277C04AC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xEC00000065746144;
    v9 = 0x676E696863616F43;
    if (v2 != 1)
    {
      v9 = 0xD00000000000001ALL;
      v8 = 0x80000002277E89D0;
    }

    v10 = v2 == 0;
    if (*v1)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0xD000000000000017;
    }

    if (v10)
    {
      v8 = 0x80000002277E89A0;
    }

    *a1 = v11;
    a1[1] = v8;
  }

  else
  {
    v3 = 0x80000002277E8A20;
    v4 = 0xD000000000000011;
    if (v2 == 5)
    {
      v4 = 0xD000000000000017;
    }

    else
    {
      v3 = 0x80000002277E8A40;
    }

    v5 = 0xEE0074657366664FLL;
    v6 = 0xD000000000000019;
    if (v2 == 3)
    {
      v6 = 0x7472617453796144;
    }

    else
    {
      v5 = 0x80000002277E8A00;
    }

    if (*v1 <= 4u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (*v1 <= 4u)
    {
      v3 = v5;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

uint64_t getEnumTagSinglePayload for UserDefaultsKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UserDefaultsKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2277C06FC(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  return MEMORY[0x2822009F8](sub_2277C0720, v2, 0);
}

uint64_t sub_2277C0720()
{
  v1 = v0[20];
  v2 = sub_2277B9C34();
  v0[21] = v2;
  v3 = v2;
  v0[10] = v0[19];
  v4 = sub_2277E1E04();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_2277E1DF4();
  v7 = sub_2277E1DE4();
  v9 = v8;
  v0[22] = v7;
  v0[23] = v8;

  if (v3)
  {
    v11 = v0[18];
    swift_unknownObjectRetain();
    v12 = sub_2277E1F24();
    v0[24] = v12;
    v0[2] = v0;
    v0[3] = sub_2277C093C;
    v13 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CF070, &qword_2277E6B58);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_2277C14CC;
    v0[13] = &block_descriptor_12;
    v0[14] = v13;
    [v3 transportMessage:v11 data:v12 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    sub_22778E130(v7, v9);
    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_2277C093C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 200) = v3;
  v4 = *(v1 + 160);
  if (v3)
  {
    v5 = sub_2277C0AE8;
  }

  else
  {
    v5 = sub_2277C0A5C;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2277C0A5C()
{
  v1 = v0[23];
  v2 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  swift_unknownObjectRelease();
  sub_22778E130(v3, v1);
  swift_unknownObjectRelease();

  v5 = v0[1];

  return v5();
}

uint64_t sub_2277C0AE8()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[22];
  v4 = v0[23];
  v5 = v0[21];
  swift_willThrow();
  swift_unknownObjectRelease();
  sub_22778E130(v3, v4);
  swift_unknownObjectRelease();

  v6 = v0[25];
  v7 = v0[1];

  return v7();
}

uint64_t sub_2277C0B84(uint64_t a1, uint64_t a2)
{
  v3[19] = a1;
  v3[20] = v2;
  v3[18] = a2;
  return MEMORY[0x2822009F8](sub_2277C0BA8, v2, 0);
}

uint64_t sub_2277C0BA8()
{
  v1 = v0[20];
  v2 = sub_2277B9C34();
  v0[21] = v2;
  v3 = v2;
  v4 = off_283AE4E58(&type metadata for AchievementNotificationContent);
  v0[22] = v4;
  v0[23] = v5;
  if (v3)
  {
    v7 = v0[19];
    swift_unknownObjectRetain();
    v8 = sub_2277E1F24();
    v0[24] = v8;
    v0[2] = v0;
    v0[3] = sub_2277C093C;
    v9 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CF070, &qword_2277E6B58);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_2277C14CC;
    v0[13] = &block_descriptor_8;
    v0[14] = v9;
    [v3 transportMessage:v7 data:v8 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    sub_22778E130(v4, v5);
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_2277C0D9C(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE8A0, &qword_2277E3A08);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t AdminClient.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for XPCClient();
  swift_allocObject();
  result = XPCClient.init(machServiceName:)();
  a1[3] = v2;
  a1[4] = &off_283AE4CC0;
  *a1 = result;
  return result;
}

uint64_t sub_2277C0F18()
{
  v1 = __swift_project_boxed_opaque_existential_1Tm(*(v0 + 144), *(*(v0 + 144) + 24));
  v2 = *v1;
  *(v0 + 152) = *v1;

  return MEMORY[0x2822009F8](sub_2277C0F88, v2, 0);
}

uint64_t sub_2277C0F88()
{
  v1 = v0[19];
  v2 = sub_2277B9C34();
  v0[20] = v2;
  if (v2)
  {
    v4 = v2;
    swift_unknownObjectRetain();
    v5 = sub_2277E1F24();
    v0[21] = v5;
    v0[2] = v0;
    v0[3] = sub_2277C1124;
    v6 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CF070, &qword_2277E6B58);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_2277C14CC;
    v0[13] = &block_descriptor_3;
    v0[14] = v6;
    [v4 transportMessage:102 data:v5 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_2277C1124()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 176) = v3;
  v4 = *(v1 + 152);
  if (v3)
  {
    v5 = sub_2277C12B4;
  }

  else
  {
    v5 = sub_2277C1244;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2277C1244()
{
  v1 = *(v0 + 160);

  swift_unknownObjectRelease_n();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2277C12B4()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  swift_willThrow();
  swift_unknownObjectRelease_n();

  v4 = v0[22];
  v5 = v0[1];

  return v5();
}

uint64_t AdminClient.updateFirstPickupOffset(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2277C136C, 0, 0);
}

uint64_t sub_2277C136C()
{
  if (qword_27D7CE7C8 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_2277E2374();
  __swift_project_value_buffer(v2, qword_27D7CEB28);
  v3._countAndFlagsBits = 0xD00000000000005DLL;
  v3._object = 0x80000002277E9930;
  v4._object = 0x80000002277E9990;
  v4._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *__swift_project_boxed_opaque_existential_1Tm(v1, v1[3]);
  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = sub_227789DC4;
  v7 = v0[2];

  return sub_2277C06FC(101, v7);
}

uint64_t FirstGlanceWeeklySummaryProtobuf.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  GlanceWeeklySummaryProtobuf = type metadata accessor for FirstGlanceWeeklySummaryProtobuf();
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v3 = a1 + *(GlanceWeeklySummaryProtobuf + 56);
  return sub_2277E20F4();
}

uint64_t type metadata accessor for FirstGlanceWeeklySummaryProtobuf()
{
  result = qword_27D7CF0A0;
  if (!qword_27D7CF0A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FirstGlanceWeeklySummaryProtobuf.energyBurnTotals.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t FirstGlanceWeeklySummaryProtobuf.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FirstGlanceWeeklySummaryProtobuf() + 56);
  v4 = sub_2277E2104();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FirstGlanceWeeklySummaryProtobuf.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FirstGlanceWeeklySummaryProtobuf() + 56);
  v4 = sub_2277E2104();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_2277C18D4()
{
  v0 = sub_2277E2344();
  __swift_allocate_value_buffer(v0, qword_27D7CF078);
  __swift_project_value_buffer(v0, qword_27D7CF078);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE988, &unk_2277E3C30);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE990, &unk_2277E4180) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_2277E6BC0;
  v4 = v26 + v3;
  v5 = v26 + v3 + v1[14];
  *(v26 + v3) = 1;
  *v5 = "energyBurnTotals";
  *(v5 + 8) = 16;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_2277E2324();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v26 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "moveGoalAchievedCount";
  *(v9 + 8) = 21;
  *(v9 + 16) = 2;
  v8();
  v10 = (v26 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "mostRecentMoveGoal";
  *(v11 + 1) = 18;
  v11[16] = 2;
  v8();
  v12 = (v26 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "totalBriskMinutes";
  *(v13 + 1) = 17;
  v13[16] = 2;
  v8();
  v14 = (v26 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "totalDistance";
  *(v15 + 1) = 13;
  v15[16] = 2;
  v8();
  v16 = (v26 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "totalFlightsClimbed";
  *(v17 + 1) = 19;
  v17[16] = 2;
  v8();
  v18 = (v26 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "totalMoveValue";
  *(v19 + 1) = 14;
  v19[16] = 2;
  v8();
  v20 = (v26 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "totalPushCount";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v8();
  v22 = v26 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "totalStepCount";
  *(v22 + 8) = 14;
  *(v22 + 16) = 2;
  v8();
  v23 = (v26 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "wheelchairUse";
  *(v24 + 1) = 13;
  v24[16] = 2;
  v8();
  return sub_2277E2334();
}

uint64_t static FirstGlanceWeeklySummaryProtobuf._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D7CE818 != -1)
  {
    swift_once();
  }

  v2 = sub_2277E2344();
  v3 = __swift_project_value_buffer(v2, qword_27D7CF078);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t FirstGlanceWeeklySummaryProtobuf.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_2277E2164();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result > 5)
    {
      if (result <= 7)
      {
        if (result == 6)
        {
          goto LABEL_2;
        }

LABEL_20:
        sub_2277E21E4();
      }

      else if (result == 8 || result == 9 || result == 10)
      {
LABEL_2:
        sub_2277E21B4();
      }
    }

    else
    {
      if (result > 2)
      {
        goto LABEL_20;
      }

      if (result == 1)
      {
        sub_2277E21C4();
      }

      else if (result == 2)
      {
        goto LABEL_2;
      }
    }
  }
}

uint64_t FirstGlanceWeeklySummaryProtobuf.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (result = sub_2277E2284(), !v1))
  {
    if (!*(v0 + 8) || (result = sub_2277E22D4(), !v1))
    {
      if (*(v0 + 16) == 0.0 || (result = sub_2277E22E4(), !v1))
      {
        if (*(v0 + 24) == 0.0 || (result = sub_2277E22E4(), !v1))
        {
          if (*(v0 + 32) == 0.0 || (result = sub_2277E22E4(), !v1))
          {
            if (!*(v0 + 40) || (result = sub_2277E22D4(), !v1))
            {
              if (*(v0 + 48) == 0.0 || (result = sub_2277E22E4(), !v1))
              {
                if (!*(v0 + 56) || (result = sub_2277E22D4(), !v1))
                {
                  if (!*(v0 + 60) || (result = sub_2277E22D4(), !v1))
                  {
                    if (!*(v0 + 64) || (result = sub_2277E22D4(), !v1))
                    {
                      v3 = v0 + *(type metadata accessor for FirstGlanceWeeklySummaryProtobuf() + 56);
                      return sub_2277E20E4();
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

  return result;
}

uint64_t FirstGlanceWeeklySummaryProtobuf.hashValue.getter()
{
  sub_2277E2A04();
  type metadata accessor for FirstGlanceWeeklySummaryProtobuf();
  sub_2277C2830(&qword_27D7CF090, type metadata accessor for FirstGlanceWeeklySummaryProtobuf);
  sub_2277E23F4();
  return sub_2277E2A44();
}

uint64_t sub_2277C20C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  v2 = a2 + *(a1 + 56);
  return sub_2277E20F4();
}

uint64_t sub_2277C2124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = sub_2277E2104();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2277C2198(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  v5 = sub_2277E2104();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_2277C220C(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 56);
  return result;
}

uint64_t sub_2277C2260(uint64_t a1, uint64_t a2)
{
  v4 = sub_2277C2830(&qword_27D7CF0B8, type metadata accessor for FirstGlanceWeeklySummaryProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2277C22DC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D7CE818 != -1)
  {
    swift_once();
  }

  v2 = sub_2277E2344();
  v3 = __swift_project_value_buffer(v2, qword_27D7CF078);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2277C2384(uint64_t a1)
{
  v2 = sub_2277C2830(&qword_27D7CEC38, type metadata accessor for FirstGlanceWeeklySummaryProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2277C23F0()
{
  sub_2277C2830(&qword_27D7CEC38, type metadata accessor for FirstGlanceWeeklySummaryProtobuf);

  return sub_2277E2264();
}

uint64_t _s15FitnessCoaching32FirstGlanceWeeklySummaryProtobufV2eeoiySbAC_ACtFZ_0(uint64_t result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
LABEL_10:
    if (*(result + 8) == *(a2 + 2) && *(result + 16) == *(a2 + 2) && *(result + 24) == *(a2 + 3) && *(result + 32) == *(a2 + 4) && *(result + 40) == *(a2 + 10) && *(result + 48) == *(a2 + 6) && *(result + 56) == *(a2 + 14) && *(result + 60) == *(a2 + 15) && *(result + 64) == *(a2 + 16))
    {
      v8 = *(type metadata accessor for FirstGlanceWeeklySummaryProtobuf() + 56);
      sub_2277E2104();
      sub_2277C2830(&qword_27D7CE980, MEMORY[0x277D216C8]);
      return sub_2277E2404() & 1;
    }

    return 0;
  }

  v6 = (v2 + 32);
  v7 = (v3 + 32);
  while (v4)
  {
    if (*v6 != *v7)
    {
      return 0;
    }

    ++v6;
    ++v7;
    if (!--v4)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_2277C2734()
{
  sub_2277C27E0();
  if (v0 <= 0x3F)
  {
    sub_2277E2104();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2277C27E0()
{
  if (!qword_27D7CF0B0)
  {
    v0 = sub_2277E25A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27D7CF0B0);
    }
  }
}

uint64_t sub_2277C2830(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t AchievementNotificationClient.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for XPCClient();
  swift_allocObject();
  result = XPCClient.init(machServiceName:)();
  a1[3] = v2;
  a1[4] = &off_283AE4CC0;
  *a1 = result;
  return result;
}

uint64_t AchievementNotificationClient.postAchievementNotification(content:)(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_2277C294C, 0, 0);
}

uint64_t sub_2277C294C()
{
  v1 = *__swift_project_boxed_opaque_existential_1Tm(*(v0 + 16), *(*(v0 + 16) + 24));
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_227789DC4;
  v3 = *(v0 + 24);

  return sub_2277C0B84(6, v3);
}

id WeeklySummaryInfoProvider.init(healthStore:)@<X0>(id a1@<X0>, id *a2@<X8>)
{
  a2[3] = &type metadata for ActivityDataQuery;
  a2[4] = &protocol witness table for ActivityDataQuery;
  *a2 = a1;
  a2[5] = a1;
  return a1;
}

uint64_t WeeklySummaryInfoProvider.init(activityDataQuery:healthStore:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_2277C2A64(a1, a3);
  *(a3 + 40) = a2;
  return result;
}

uint64_t sub_2277C2A64(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t WeeklySummaryInfoProvider.makeWeeklySummaryInfo(date:calendar:)(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_2277E1FA4();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v7 = sub_2277E2044();
  v3[10] = v7;
  v8 = *(v7 - 8);
  v3[11] = v8;
  v9 = *(v8 + 64) + 15;
  v3[12] = swift_task_alloc();
  v10 = sub_2277E1E84();
  v3[13] = v10;
  v11 = *(v10 - 8);
  v3[14] = v11;
  v12 = *(v11 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v13 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2277C2C3C, 0, 0);
}

uint64_t sub_2277C2C3C()
{
  v27 = *MEMORY[0x277D85DE8];
  v1 = v0[16];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[4];
  v9 = [objc_opt_self() hk_gregorianCalendar];
  sub_2277E1FE4();

  Date.intervalForWeeklySummary(calendar:)(v2, v1);
  (*(v3 + 8))(v2, v5);
  sub_2277E1E44();
  v10 = sub_2277E1F94();
  (*(v7 + 8))(v4, v6);
  v11 = v0[15];
  if (v10 == 1)
  {
    v13 = v0[8];
    v12 = v0[9];
    v14 = v0[6];
    v15 = v0[7];
    v16 = v0[4];
    v17 = v0[16];
    sub_2277E1E64();
    (*(v15 + 16))(v13, v16, v14);
    sub_2277E1E54();
  }

  else
  {
    (*(v0[14] + 16))(v0[15], v0[16], v0[13]);
  }

  v18 = v0[5];
  v19 = v18[3];
  v20 = v18[4];
  __swift_project_boxed_opaque_existential_1Tm(v18, v19);
  v26 = (*(v20 + 16) + **(v20 + 16));
  v21 = *(*(v20 + 16) + 4);
  v22 = swift_task_alloc();
  v0[17] = v22;
  *v22 = v0;
  v22[1] = sub_2277C2EB4;
  v23 = v0[15];
  v24 = *MEMORY[0x277D85DE8];

  return v26(v23, v19, v20);
}

uint64_t sub_2277C2EB4(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = *(*v2 + 136);
  v9 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v5 = sub_2277C3258;
  }

  else
  {
    v5 = sub_2277C2FF4;
  }

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2277C2FF4()
{
  v28 = *MEMORY[0x277D85DE8];
  v1 = *(v0[5] + 40);
  v0[2] = 0;
  v2 = [v1 wheelchairUseWithError_];
  v3 = v0[2];
  v4 = v0[18];
  v5 = v0[15];
  v6 = v0[16];
  v7 = v0[13];
  v8 = v0[14];
  if (v2)
  {
    v9 = v2;
    v25 = v0[12];
    v26 = v0[9];
    v27 = v0[8];
    v10 = v0[3];
    v11 = v3;
    v12 = [v9 wheelchairUse];

    v13 = type metadata accessor for WeeklySummaryInfo();
    (*(v8 + 16))(&v10[v13[5]], v6, v7);
    v14 = *(v8 + 8);
    v14(v5, v7);
    v14(v6, v7);
    *v10 = v4;
    *&v10[v13[6]] = MEMORY[0x277D84F90];
    *&v10[v13[7]] = v12;
  }

  else
  {
    v17 = v3;

    sub_2277E1F14();

    swift_willThrow();
    v18 = *(v8 + 8);
    v18(v5, v7);
    v18(v6, v7);
    v20 = v0[15];
    v19 = v0[16];
    v21 = v0[12];
    v23 = v0[8];
    v22 = v0[9];
  }

  v15 = v0[1];
  v16 = *MEMORY[0x277D85DE8];

  return v15();
}

uint64_t sub_2277C3258()
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = v0[16];
  v2 = v0[13];
  v3 = *(v0[14] + 8);
  v3(v0[15], v2);
  v3(v1, v2);
  v4 = v0[19];
  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[12];
  v9 = v0[8];
  v8 = v0[9];

  v10 = v0[1];
  v11 = *MEMORY[0x277D85DE8];

  return v10();
}

uint64_t sub_2277C3350(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22779696C;

  return WeeklySummaryInfoProvider.makeWeeklySummaryInfo(date:calendar:)(a1, a2);
}

uint64_t dispatch thunk of WeeklySummaryInfoProviding.makeWeeklySummaryInfo(date:calendar:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 8);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_22779696C;

  return v15(a1, a2, a3, a4, a5);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2277C3550(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2277C3598(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t FirstGlanceContentProtobuf.activitySharingFriendsListData.getter()
{
  v1 = *v0;
  sub_2277905C0(*v0, *(v0 + 8));
  return v1;
}

uint64_t FirstGlanceContentProtobuf.activitySharingFriendsListData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_22778E130(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t FirstGlanceContentProtobuf.types.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t FirstGlanceContentProtobuf.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FirstGlanceContentProtobuf() + 32);
  v4 = sub_2277E2104();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for FirstGlanceContentProtobuf()
{
  result = qword_27D7CF0E8;
  if (!qword_27D7CF0E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FirstGlanceContentProtobuf.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FirstGlanceContentProtobuf() + 32);
  v4 = sub_2277E2104();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FirstGlanceContentProtobuf.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_2277E4B40;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
  *(a1 + 32) = 0;
  v1 = a1 + *(type metadata accessor for FirstGlanceContentProtobuf() + 32);
  return sub_2277E20F4();
}

uint64_t sub_2277C3930()
{
  v0 = sub_2277E2344();
  __swift_allocate_value_buffer(v0, qword_27D7CF0C0);
  __swift_project_value_buffer(v0, qword_27D7CF0C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE988, &unk_2277E3C30);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE990, &unk_2277E4180) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2277E3A50;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "activitySharingFriendsListData";
  *(v6 + 8) = 30;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2277E2324();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "experienceType";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "types";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "pregnancyState";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  return sub_2277E2334();
}

uint64_t static FirstGlanceContentProtobuf._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D7CE820 != -1)
  {
    swift_once();
  }

  v2 = sub_2277E2344();
  v3 = __swift_project_value_buffer(v2, qword_27D7CF0C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t FirstGlanceContentProtobuf.decodeMessage<A>(decoder:)()
{
  result = sub_2277E2164();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          type metadata accessor for FirstGlanceTypeProtobuf(0);
          sub_2277C4630(&qword_27D7CEE40, type metadata accessor for FirstGlanceTypeProtobuf);
          sub_2277E2204();
          goto LABEL_5;
        }

        if (result == 4)
        {
          goto LABEL_13;
        }
      }

      else
      {
        if (result != 1)
        {
          if (result != 2)
          {
            goto LABEL_5;
          }

LABEL_13:
          sub_2277E21B4();
          goto LABEL_5;
        }

        sub_2277E21A4();
      }

LABEL_5:
      result = sub_2277E2164();
    }
  }

  return result;
}

uint64_t FirstGlanceContentProtobuf.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
    goto LABEL_8;
  }

  if (v4)
  {
    v5 = v2;
    v6 = v2 >> 32;
LABEL_8:
    if (v5 == v6)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if ((v3 & 0xFF000000000000) == 0)
  {
    goto LABEL_10;
  }

LABEL_9:
  result = sub_2277E22C4();
  if (v1)
  {
    return result;
  }

LABEL_10:
  if (!*(v0 + 16) || (result = sub_2277E22D4(), !v1))
  {
    if (*(*(v0 + 24) + 16))
    {
      type metadata accessor for FirstGlanceTypeProtobuf(0);
      sub_2277C4630(&qword_27D7CEE40, type metadata accessor for FirstGlanceTypeProtobuf);
      result = sub_2277E2304();
      if (v1)
      {
        return result;
      }

      if (!*(v0 + 32))
      {
        goto LABEL_18;
      }
    }

    else if (!*(v0 + 32))
    {
LABEL_18:
      v8 = v0 + *(type metadata accessor for FirstGlanceContentProtobuf() + 32);
      return sub_2277E20E4();
    }

    result = sub_2277E22D4();
    if (v1)
    {
      return result;
    }

    goto LABEL_18;
  }

  return result;
}

uint64_t FirstGlanceContentProtobuf.hashValue.getter()
{
  sub_2277E2A04();
  type metadata accessor for FirstGlanceContentProtobuf();
  sub_2277C4630(&qword_27D7CF0D8, type metadata accessor for FirstGlanceContentProtobuf);
  sub_2277E23F4();
  return sub_2277E2A44();
}

uint64_t sub_2277C3F6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_2277E4B40;
  *(a2 + 16) = 0;
  *(a2 + 24) = MEMORY[0x277D84F90];
  *(a2 + 32) = 0;
  v2 = a2 + *(a1 + 32);
  return sub_2277E20F4();
}

uint64_t sub_2277C3FC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_2277E2104();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2277C403C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_2277E2104();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_2277C40B0(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t sub_2277C4104(uint64_t a1, uint64_t a2)
{
  v4 = sub_2277C4630(&qword_27D7CF100, type metadata accessor for FirstGlanceContentProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2277C4180@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D7CE820 != -1)
  {
    swift_once();
  }

  v2 = sub_2277E2344();
  v3 = __swift_project_value_buffer(v2, qword_27D7CF0C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2277C4228(uint64_t a1)
{
  v2 = sub_2277C4630(&qword_27D7CEEF0, type metadata accessor for FirstGlanceContentProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2277C4294()
{
  sub_2277C4630(&qword_27D7CEEF0, type metadata accessor for FirstGlanceContentProtobuf);

  return sub_2277E2264();
}

uint64_t _s15FitnessCoaching26FirstGlanceContentProtobufV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_227790458(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0 || *(a1 + 16) != *(a2 + 16) || (sub_2277D69EC(*(a1 + 24), *(a2 + 24)) & 1) == 0 || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v4 = *(type metadata accessor for FirstGlanceContentProtobuf() + 32);
  sub_2277E2104();
  sub_2277C4630(&qword_27D7CE980, MEMORY[0x277D216C8]);
  return sub_2277E2404() & 1;
}

void sub_2277C453C()
{
  sub_2277C45D8();
  if (v0 <= 0x3F)
  {
    sub_2277E2104();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2277C45D8()
{
  if (!qword_27D7CF0F8)
  {
    type metadata accessor for FirstGlanceTypeProtobuf(255);
    v0 = sub_2277E25A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27D7CF0F8);
    }
  }
}

uint64_t sub_2277C4630(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::String __swiftcall Platform.appBundle()()
{
  v1 = v0;
  if (v0 >= 2u)
  {
    v2 = 0xD00000000000001CLL;
  }

  else
  {
    v2 = 0xD000000000000011;
  }

  if (v1 >= 2)
  {
    v3 = "pes";
  }

  else
  {
    v3 = "com.apple.ActivityMonitorApp";
  }

  v4 = (v3 | 0x8000000000000000);
  result._object = v4;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t TransportError.hashValue.getter()
{
  v1 = *v0;
  sub_2277E2A04();
  MEMORY[0x22AA9BBC0](v1);
  return sub_2277E2A44();
}

unint64_t sub_2277C47C0()
{
  result = qword_27D7CF108;
  if (!qword_27D7CF108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CF108);
  }

  return result;
}

uint64_t PauseRingsNotificationType.hashValue.getter()
{
  sub_2277E2A04();
  MEMORY[0x22AA9BBC0](0);
  return sub_2277E2A44();
}

unint64_t sub_2277C489C()
{
  result = qword_27D7CF110;
  if (!qword_27D7CF110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CF110);
  }

  return result;
}

void sub_2277C4900()
{

  v7 = sub_2277CAEA8(v0);
  sub_2277CA140(&v7);
  v1 = v7;
  if ((v7 & 0x8000000000000000) == 0 && (v7 & 0x4000000000000000) == 0)
  {
    v2 = *(v7 + 16);
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_11:

    return;
  }

  v2 = sub_2277E28E4();
  if (!v2)
  {
    goto LABEL_11;
  }

LABEL_4:
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
    goto LABEL_13;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
LABEL_13:
    v5 = MEMORY[0x22AA9B9D0](v4, v1);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v4 < *(v1 + 16))
  {
    v5 = *(v1 + 8 * v4 + 32);
LABEL_9:
    v6 = v5;

    HKActivitySummary.moveGoal.getter();

    return;
  }

  __break(1u);

  __break(1u);
}

id FirstGlanceLocalizer.init(unitManager:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_22778E6C8(0, &qword_2813BC518, 0x277D09C78);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  *a2 = result;
  a2[1] = a1;
  return result;
}

uint64_t sub_2277C4B80(uint64_t a1, char a2)
{
  v5 = 0x5F54495F5045454BLL;
  GlanceType = type metadata accessor for FirstGlanceType();
  v7 = *(*(GlanceType - 8) + 64);
  MEMORY[0x28223BE20](GlanceType);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v2;
  sub_22778E0CC(a1, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = type metadata accessor for FirstGlanceType;
  if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload > 11)
    {
      if ((EnumCaseMultiPayload - 12) < 2)
      {
        return 0xD000000000000012;
      }

      if (EnumCaseMultiPayload == 14)
      {
        return 0x49525F5941444F54;
      }

      return 0x50555F5941444F54;
    }

    if ((EnumCaseMultiPayload - 8) >= 3)
    {
      return v5;
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload > 3)
  {
    if ((EnumCaseMultiPayload - 4) >= 2)
    {
      goto LABEL_18;
    }

LABEL_13:
    sub_2277CB828(v9, type metadata accessor for FirstGlanceType);
    v15 = v14;
    v12 = sub_2277C4E58(a1, a2 & 1, 0);
    *&v15 = 0x4144524554534559;
    *(&v15 + 1) = 0xEF53474E49525F59;
    MEMORY[0x22AA9B650](v12);

    return v15;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_2277CB828(v9, type metadata accessor for FirstGlanceType);
      return 0xD000000000000014;
    }

LABEL_18:
    sub_2277CB828(v9, type metadata accessor for FirstGlanceType);
    return v5;
  }

  if (EnumCaseMultiPayload)
  {
    v11 = type metadata accessor for WeeklySummaryInfo;
  }

  sub_2277CB828(v9, v11);
  if (a2)
  {
    return 0xD000000000000019;
  }

  else
  {
    return 0x535F594C4B454557;
  }
}

uint64_t sub_2277C4E58(uint64_t a1, char a2, char a3)
{
  GlanceType = type metadata accessor for FirstGlanceType();
  v7 = *(*(GlanceType - 8) + 64);
  MEMORY[0x28223BE20](GlanceType);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22778E0CC(a1, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x54524154535FLL;
  v12 = type metadata accessor for FirstGlanceType;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v12 = type metadata accessor for WeeklySummaryInfo;
      goto LABEL_2;
    case 4:
      sub_2277CB828(v9, type metadata accessor for FirstGlanceType);
      return 0x4F4C435F4C4C415FLL;
    case 5:
      sub_2277CB828(v9, type metadata accessor for FirstGlanceType);
      return 0x454445454358455FLL;
    case 8:
      sub_2277CB828(v9, type metadata accessor for FirstGlanceType);
      v13 = 0xD00000000000001ELL;
      if (a2)
      {
        v13 = 0xD000000000000029;
      }

      if (a3)
      {
        return v13;
      }

      else
      {
        return 1145131871;
      }

    case 9:
      sub_2277CB828(v9, type metadata accessor for FirstGlanceType);
      v14 = 0x4C435F454E4F4E5FLL;
      if (a2)
      {
        v14 = 0xD000000000000017;
      }

      v15 = 0xD00000000000001ELL;
      if (a2)
      {
        v15 = 0xD000000000000029;
      }

      if (a3)
      {
        return v15;
      }

      else
      {
        return v14;
      }

    case 10:
      sub_2277CB828(v9, type metadata accessor for FirstGlanceType);
      return 0x41445F545345425FLL;
    case 11:
    case 14:
    case 15:
      return 0;
    case 12:
      return result;
    case 13:
      return 1145980255;
    default:
LABEL_2:
      sub_2277CB828(v9, v12);
      return 0;
  }
}

unint64_t sub_2277C5148(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = 0x454D4D4F4345525FLL;
  }

  else
  {
    v3 = 0;
  }

  if (a2)
  {
    v4 = 0xEF4E4F495441444ELL;
  }

  else
  {
    v4 = 0xE000000000000000;
  }

  if (a1 == 2)
  {
    MEMORY[0x22AA9B650](v3, v4);

    MEMORY[0x22AA9B650](1313426783, 0xE400000000000000);
  }

  else
  {
    v5 = [*(v2 + 8) userActiveEnergyBurnedUnit];
    MEMORY[0x22AA9B650](v3, v4);

    MEMORY[0x22AA9B650](95, 0xE100000000000000);

    v6 = [v5 unitString];
    sub_2277E2434();

    v7 = sub_2277E2454();
    v9 = v8;

    MEMORY[0x22AA9B650](v7, v9);
  }

  return 0xD000000000000027;
}

void sub_2277C530C(uint64_t a1, double a2)
{
  if (a1 == 2)
  {
    if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
      goto LABEL_11;
    }

    if (a2 <= -9.22337204e18)
    {
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    if (a2 < 9.22337204e18)
    {
      return;
    }

    __break(1u);
  }

  v4 = [*(v2 + 8) userActiveEnergyBurnedUnit];
  v5 = [objc_opt_self() kilocalorieUnit];
  [v5 _valueByConvertingValue_toUnit_];
  v7 = v6;
  v8 = v6;

  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
  }
}

BOOL sub_2277C5430(void *a1)
{
  v2 = [a1 activityMoveMode];
  v3 = &selRef__moveMinutesCompletionPercentage;
  if (v2 != 2)
  {
    v3 = &selRef__activeEnergyCompletionPercentage;
  }

  [a1 *v3];
  v5 = v4;
  [a1 _exerciseTimeCompletionPercentage];
  v7 = 2;
  if (v5 < 1.0)
  {
    v7 = 1;
  }

  if (v6 >= 1.0)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5 >= 1.0;
  }

  [a1 _standHoursCompletionPercentage];
  if (v9 < 1.0)
  {
    return v8;
  }

  else
  {
    return v8 + 1;
  }
}

unint64_t sub_2277C54D0(uint64_t a1, uint64_t a2, char a3)
{
  GlanceType = type metadata accessor for FirstGlanceType();
  v7 = *(*(GlanceType - 8) + 64);
  MEMORY[0x28223BE20](GlanceType);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22778E0CC(a1, v9);
  LODWORD(a1) = swift_getEnumCaseMultiPayload();
  sub_2277CB828(v9, type metadata accessor for FirstGlanceType);
  result = 0;
  if (a1 == 4)
  {
    v11 = 0x4F4C435F454E4F5FLL;
    v12 = 0x4F4C435F4F57545FLL;
    if (a2 != 2)
    {
      v12 = 0;
    }

    if (a2 != 1)
    {
      v11 = v12;
    }

    if (a3)
    {
      return 0xD000000000000016;
    }

    else
    {
      return v11;
    }
  }

  return result;
}

uint64_t sub_2277C5614(uint64_t a1, void *a2, char a3, char a4)
{
  GlanceType = type metadata accessor for FirstGlanceType();
  v9 = *(*(GlanceType - 8) + 64);
  MEMORY[0x28223BE20](GlanceType);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a2 activityMoveMode];
  v13 = &selRef__moveMinutesCompletionPercentage;
  if (v12 != 2)
  {
    v13 = &selRef__activeEnergyCompletionPercentage;
  }

  [a2 *v13];
  v15 = v14;
  [a2 _exerciseTimeCompletionPercentage];
  v17 = v16;
  [a2 _standHoursCompletionPercentage];
  v19 = v18;
  sub_22778E0CC(a1, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_2277CB828(v11, type metadata accessor for FirstGlanceType);
  if (EnumCaseMultiPayload == 8)
  {
    if ((a4 & 1) == 0)
    {
      if (v15 <= 0.5)
      {
        return 0x45564F4D5FLL;
      }

      if ((a3 & 1) == 0)
      {
        if (v17 <= 0.5)
        {
          return 0x534943524558455FLL;
        }

        if (v19 <= 0.5)
        {
          return 0x444E4154535FLL;
        }
      }
    }

    return 0;
  }

  if (EnumCaseMultiPayload != 5)
  {
    return 0;
  }

  if ((a3 & 1) == 0)
  {
    v22 = [a2 appleExerciseTime];
    v23 = [objc_opt_self() minuteUnit];
    [v22 doubleValueForUnit_];
    v25 = v24;

    if (v25 >= 100.0 || v17 >= 2.0)
    {
      return 0xD000000000000014;
    }
  }

  if (v15 >= 1.75)
  {
    return 0xD000000000000010;
  }

  if (v15 < 1.5)
  {
    if (v15 >= 1.25)
    {
      return 0xD000000000000010;
    }

    return 0;
  }

  return 0xD000000000000010;
}

BOOL sub_2277C58DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2277E1E24();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return 0;
  }

  v14[0] = a1;
  v14[1] = a2;
  sub_2277E1E14();
  sub_22779ADE8();
  v9 = sub_2277E2794();
  v11 = v10;
  (*(v5 + 8))(v8, v4);

  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = v9 & 0xFFFFFFFFFFFFLL;
  }

  return v12 != 0;
}

void *sub_2277C5A04(char a1, char a2)
{
  if (a1)
  {
    result = &unk_283AE3918;
  }

  else
  {
    result = &unk_283AE3958;
  }

  if (a2)
  {
    v4 = result[2];
    v5 = MEMORY[0x277D84F90];
    if (v4)
    {
      v12 = result;
      v16 = MEMORY[0x277D84F90];
      v6 = a1;
      sub_2277DDCB8(0, v4, 0);
      v5 = v16;
      if (v6)
      {
        v7 = &unk_283AE3918;
      }

      else
      {
        v7 = &unk_283AE3958;
      }

      v8 = (v7 + 40);
      do
      {
        v13 = *(v8 - 1);
        v15 = *v8;
        swift_bridgeObjectRetain_n();
        MEMORY[0x22AA9B650](0x48434C454548575FLL, 0xEB00000000524941);

        v10 = *(v16 + 16);
        v9 = *(v16 + 24);
        if (v10 >= v9 >> 1)
        {
          sub_2277DDCB8((v9 > 1), v10 + 1, 1);
        }

        *(v16 + 16) = v10 + 1;
        v11 = v16 + 16 * v10;
        *(v11 + 32) = v13;
        *(v11 + 40) = v15;
        v8 += 2;
        --v4;
      }

      while (v4);
      result = v12;
    }

    v14 = result;
    sub_2277CADB4(v5);
    return v14;
  }

  return result;
}

NSObject *sub_2277C5B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7)
{
  v54[2] = a4;
  v57 = a5;
  v58 = a7;
  v54[3] = a6;
  GlanceType = type metadata accessor for FirstGlanceType();
  v12 = *(*(GlanceType - 8) + 64);
  v13 = MEMORY[0x28223BE20](GlanceType);
  v15 = v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v54 - v16;
  v18 = *v7;
  v19 = v7[1];
  swift_storeEnumTagMultiPayload();
  GlanceTypeO2eeoiySbAC_ACtFZ_0 = _s15FitnessCoaching15FirstGlanceTypeO2eeoiySbAC_ACtFZ_0(a1, v17);
  sub_2277CB828(v17, type metadata accessor for FirstGlanceType);
  if ((GlanceTypeO2eeoiySbAC_ACtFZ_0 & 1) == 0)
  {
    swift_storeEnumTagMultiPayload();
    v21 = _s15FitnessCoaching15FirstGlanceTypeO2eeoiySbAC_ACtFZ_0(a1, v17);
    sub_2277CB828(v17, type metadata accessor for FirstGlanceType);
    if ((v21 & 1) == 0)
    {
      if (qword_2813BC738 != -1)
      {
        swift_once();
      }

      v23 = sub_2277E2374();
      __swift_project_value_buffer(v23, qword_2813BC740);
      v24 = sub_2277E2354();
      v25 = sub_2277E26F4();
      if (!os_log_type_enabled(v24, v25))
      {
        v27 = 1;
        goto LABEL_29;
      }

      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_227786000, v24, v25, "Invalid type for first glance localization", v26, 2u);
      v27 = 1;
      goto LABEL_26;
    }
  }

  sub_22778E0CC(a1, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 14 && EnumCaseMultiPayload != 15)
  {
    sub_2277CB828(v15, type metadata accessor for FirstGlanceType);
  }

  v55 = v18;
  v56 = v19;
  v28 = sub_2277C58DC(a2, a3);
  v55 = v18;
  v56 = v19;
  sub_2277C5A04(v28, v57 & 1);
  v29 = FILocalizationTableForExperienceType();
  v30 = sub_2277E2414();

  v31 = sub_2277E2544();

  v32 = sub_2277E2414();

  v33 = FIRandomStringWithKeyAndPossibleSuffixesWithTableName();

  if (!v33)
  {
    if (qword_2813BC738 != -1)
    {
      swift_once();
    }

    v48 = sub_2277E2374();
    __swift_project_value_buffer(v48, qword_2813BC740);
    v24 = sub_2277E2354();
    v49 = sub_2277E26F4();
    if (os_log_type_enabled(v24, v49))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      v50 = "Unable to localized first glance for daily update";
LABEL_25:
      _os_log_impl(&dword_227786000, v24, v49, v50, v26, 2u);
      v27 = 0;
LABEL_26:
      MEMORY[0x22AA9C370](v26, -1, -1);
LABEL_29:

      sub_2277CB780();
      swift_allocError();
      *v52 = v27;
      swift_willThrow();
      return v24;
    }

LABEL_27:
    v27 = 0;
    goto LABEL_29;
  }

  v34 = sub_2277E2434();
  v36 = v35;

  if ((v58 & 1) == 0)
  {
    v55 = v34;
    v56 = v36;

    MEMORY[0x22AA9B650](32, 0xE100000000000000);

    v38 = v55;
    v37 = v56;
    v55 = v18;
    v56 = v19;
    sub_2277C61D0();
    v40 = v39;
    v42 = v41;
    v55 = v38;
    v56 = v37;

    MEMORY[0x22AA9B650](v40, v42);

    v34 = v55;
    v36 = v56;
  }

  v43 = sub_2277E1F74();
  v44 = FILocalizedDayName();

  if (!v44)
  {

    if (qword_2813BC738 != -1)
    {
      swift_once();
    }

    v51 = sub_2277E2374();
    __swift_project_value_buffer(v51, qword_2813BC740);
    v24 = sub_2277E2354();
    v49 = sub_2277E26F4();
    if (os_log_type_enabled(v24, v49))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      v50 = "Unable to localized day name for first glance for daily update";
      goto LABEL_25;
    }

    goto LABEL_27;
  }

  v45 = sub_2277E2434();
  v47 = v46;

  v55 = v34;
  v56 = v36;
  v54[6] = 0x6D616E2D7961643CLL;
  v54[7] = 0xEA00000000003E65;
  v54[4] = v45;
  v54[5] = v47;
  sub_22779ADE8();
  v24 = sub_2277E27A4();

  return v24;
}

void sub_2277C61D0()
{
  sub_22778E6C8(0, &qword_2813BC518, 0x277D09C78);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_2277E2414();
  v3 = *MEMORY[0x277D09520];
  v4 = FIRandomStringForPrefixWithTableName();

  if (v4)
  {
    sub_2277E2434();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2277C62A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a4;
  v39 = a5;
  v40 = a3;
  v37 = a1;
  GlanceType = type metadata accessor for FirstGlanceType();
  v8 = *(*(GlanceType - 8) + 64);
  MEMORY[0x28223BE20](GlanceType);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v12 = *(a2 + 8);
  v14 = *v5;
  v13 = v5[1];
  v43 = 0xD00000000000002ALL;
  v44 = 0x80000002277E9D00;
  v15 = [v11 workoutActivityType];
  v41 = v14;
  v42 = v13;
  v16 = sub_2277C673C(v15, v12);
  if (v17)
  {
    MEMORY[0x22AA9B650](v16);

    v18 = v40;
    v19 = v38;
    goto LABEL_16;
  }

  if (v15 > 45)
  {
    if (v15 != 46)
    {
      v19 = v38;
      if (v15 == 52)
      {
        v20 = 0xE800000000000000;
        v21 = 0x474E494B4C41575FLL;
        goto LABEL_15;
      }

      if (v15 == 57)
      {
        v20 = 0xE500000000000000;
        v21 = 0x41474F595FLL;
LABEL_15:
        MEMORY[0x22AA9B650](v21, v20);

        v18 = v40;
        goto LABEL_16;
      }

      goto LABEL_26;
    }

    v20 = 0xE900000000000047;
    v21 = 0x4E494D4D4957535FLL;
LABEL_14:
    v19 = v38;
    goto LABEL_15;
  }

  if (v15 == 13)
  {
    v20 = 0xE800000000000000;
    v21 = 0x474E494C4359435FLL;
    goto LABEL_14;
  }

  v19 = v38;
  if (v15 == 37)
  {
    v20 = 0xE800000000000000;
    v21 = 0x474E494E4E55525FLL;
    goto LABEL_15;
  }

LABEL_26:
  sub_22778E0CC(v37, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_2277CB828(v10, type metadata accessor for FirstGlanceType);
  if (EnumCaseMultiPayload == 6)
  {
    v34 = 0xE500000000000000;
    v35 = 0x545345425FLL;
    v18 = v40;
  }

  else
  {
    v18 = v40;
    if (EnumCaseMultiPayload == 7)
    {
      v34 = 0xE800000000000000;
      v35 = 0x545345474E4F4C5FLL;
    }

    else
    {
      v35 = 0;
      v34 = 0xE000000000000000;
    }
  }

  v41 = 0xD00000000000002ALL;
  v42 = 0x80000002277E9D00;
  MEMORY[0x22AA9B650](v35, v34);

  v43 = v41;
  v44 = v42;
LABEL_16:
  v41 = v14;
  v42 = v13;
  if (sub_2277C58DC(v18, v19))
  {
    v41 = &unk_283AE38B8;
    sub_2277CADB4(&unk_283AE38E8);
  }

  v22 = FILocalizationTableForExperienceType();
  v23 = sub_2277E2414();
  v24 = sub_2277E2544();

  v25 = sub_2277E2414();

  v26 = FIRandomStringWithKeyAndPossibleSuffixesWithTableName();

  if (v26)
  {
    v27 = sub_2277E2434();
  }

  else
  {
    if (qword_2813BC738 != -1)
    {
      swift_once();
    }

    v28 = sub_2277E2374();
    __swift_project_value_buffer(v28, qword_2813BC740);
    v29 = sub_2277E2354();
    v27 = sub_2277E26F4();
    if (os_log_type_enabled(v29, v27))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_227786000, v29, v27, "Unable to localized first glance for daily update", v30, 2u);
      MEMORY[0x22AA9C370](v30, -1, -1);
    }

    sub_2277CB780();
    swift_allocError();
    *v31 = 0;
    swift_willThrow();
  }

  return v27;
}

uint64_t sub_2277C673C(uint64_t a1, double a2)
{
  if (a2 <= 0.6)
  {
    return 0;
  }

  result = 0;
  if (a1 <= 51)
  {
    if (a1 == 13)
    {
      v5 = 0x494C4359435FLL;
    }

    else
    {
      if (a1 != 37)
      {
        return result;
      }

      v5 = 0x494E4E55525FLL;
    }
  }

  else
  {
    if (a1 != 52)
    {
      if (a1 == 57)
      {
        v4 = 0x41474F595FLL;
      }

      else
      {
        if (a1 != 63)
        {
          return result;
        }

        v4 = 0x544949485FLL;
      }

      goto LABEL_15;
    }

    v5 = 0x494B4C41575FLL;
  }

  v4 = v5 & 0xFFFFFFFFFFFFLL | 0x474E000000000000;
LABEL_15:
  v6 = v4;

  MEMORY[0x22AA9B650](0x4F4D5F474E49525FLL, 0xEE00544E454D4556);

  return v6;
}

uint64_t *sub_2277C6864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 3)
  {
    sub_2277CB780();
    swift_allocError();
    *v5 = 0;
    return swift_willThrow();
  }

  else
  {
    v8 = *(a1 + 16);
    v7 = *(a1 + 24);
    v9 = *(a1 + 32);
    v10 = v4[1];
    v12 = *a1;
    v11 = *(a1 + 8);
    v18 = *v4;
    v19 = v10;
    v13 = v12;
    v14 = v11;
    v15 = v8;
    v16 = v7;
    v17 = v9;
    if (v11 >> 62)
    {
      return sub_2277C6964(&v13, v11 >> 62 != 1, a2, a3);
    }

    else
    {
      return sub_2277CB39C(&v13);
    }
  }
}

uint64_t *sub_2277C6964(char **a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = a1[2];
  v10 = a1[3];
  v11 = a1[4];
  v12 = *v4;
  v13 = v4[1];
  v48 = *v4;
  v49 = v13;
  if (a2)
  {
    v14 = 0xD00000000000002FLL;
  }

  else
  {
    v14 = 0xD000000000000029;
  }

  v50 = 0x80000002277E9FE0;
  if (a2)
  {
    v15 = 0x80000002277EA010;
  }

  else
  {
    v15 = 0x80000002277E9FE0;
  }

  v43 = v7;
  v41 = v8;
  LOBYTE(v44) = v8;
  v45 = v9;
  v46 = v10;
  v40 = v11;
  v47 = v11;
  v16 = sub_2277C6E58(&v43);
  v18 = v17;
  v43 = v14;
  v44 = v15;

  MEMORY[0x22AA9B650](v16, v18);

  v43 = v12;
  v44 = v13;
  if (sub_2277C58DC(a3, a4))
  {
    v43 = &unk_283AE3988;
    sub_2277CADB4(&unk_283AE39B8);
  }

  v19 = *MEMORY[0x277D09520];
  v20 = sub_2277E2414();

  v21 = sub_2277E2544();

  v22 = sub_2277E2414();

  v23 = FIRandomStringWithKeyAndPossibleSuffixesWithTableName();

  if (!v23)
  {
    if (qword_2813BC738 != -1)
    {
      swift_once();
    }

    v31 = sub_2277E2374();
    __swift_project_value_buffer(v31, qword_2813BC740);
    v32 = sub_2277E2354();
    v24 = sub_2277E26F4();
    if (os_log_type_enabled(v32, v24))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_227786000, v32, v24, "Unable to localized workout distance summation", v33, 2u);
      MEMORY[0x22AA9C370](v33, -1, -1);
    }

    goto LABEL_25;
  }

  v24 = sub_2277E2434();
  v26 = v25;

  if ((v7 - 13) > 0x3A)
  {
LABEL_24:

LABEL_25:
    sub_2277CB780();
    swift_allocError();
    *v34 = 0;
    swift_willThrow();
    return v24;
  }

  v39 = v24;
  if (((1 << (v7 - 13)) & 0x600008001000000) == 0)
  {
    if (v7 == 13)
    {
      v27 = &selRef_userDistanceCyclingHKUnit;
      goto LABEL_13;
    }

    goto LABEL_24;
  }

  v27 = &selRef_userDistanceWalkingRunningHKUnit;
LABEL_13:
  v28 = [v13 *v27];
  v48 = v12;
  v49 = v13;
  v43 = v7;
  LOBYTE(v44) = v41;
  v45 = v9;
  v46 = v10;
  v47 = v40;
  v24 = &v48;
  v29 = v50;
  sub_2277C6FA8(&v43, v28, 0xD000000000000029, v50);
  if (!v42)
  {
    v43 = v12;
    v44 = v13;
    v30 = sub_2277C7260(v28, 0xD000000000000029, v29);
    v43 = v39;
    v44 = v26;
    v48 = 0x636E61747369643CLL;
    v49 = 0xEA00000000003E65;
    v50 = v30;
    sub_22779ADE8();
    v36 = sub_2277E27A4();
    v38 = v37;

    v43 = v36;
    v44 = v38;
    v48 = 0x636E61747369643CLL;
    v49 = 0xEF3E74696E752D65;
    v24 = sub_2277E27A4();
  }

  return v24;
}

uint64_t sub_2277C6E58(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 > 69)
  {
    if ((v1 - 70) < 2)
    {
      return 0x48434C454548575FLL;
    }
  }

  else
  {
    switch(v1)
    {
      case 13:
        return 0x474E494C4359435FLL;
      case 37:
        return 0x474E494E4E55525FLL;
      case 52:
        return 0x474E494B4C41575FLL;
    }
  }

  sub_2277E2814();
  MEMORY[0x22AA9B650](0xD00000000000001BLL, 0x80000002277E9FC0);
  type metadata accessor for HKWorkoutActivityType(0);
  sub_2277E28C4();
  result = sub_2277E28D4();
  __break(1u);
  return result;
}

uint64_t sub_2277C6FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  [v4[1] distanceInDistanceUnit:FIDistanceUnitForHKUnit() forDistanceInMeters:*(a1 + 24)];
  v9 = v8;
  sub_22778E6C8(0, &qword_2813BC508, 0x277D82BB8);
  v10 = objc_opt_self();
  v11 = [v10 mileUnit];
  v12 = sub_2277E2754();

  if (v12)
  {
    v24 = a4;

    MEMORY[0x22AA9B650](0x53454C494D5FLL, 0xE600000000000000);
    v13 = sub_2277E2414();
    v14 = [v7 localizedStringForKey:v13 value:0 table:{*MEMORY[0x277D09520], a3, v24}];
LABEL_5:
    v17 = v14;

    sub_2277E2434();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CF180, &qword_2277E7240);
    v18 = swift_allocObject();
    v19 = MEMORY[0x277D839F8];
    *(v18 + 16) = xmmword_2277E3E40;
    v20 = MEMORY[0x277D83A80];
    *(v18 + 56) = v19;
    *(v18 + 64) = v20;
    *(v18 + 32) = v9;
    v21 = sub_2277E2424();

    return v21;
  }

  v15 = [v10 meterUnitWithMetricPrefix_];
  v16 = sub_2277E2754();

  if (v16)
  {
    v25 = a4;

    MEMORY[0x22AA9B650](0x54454D4F4C494B5FLL, 0xEB00000000535245);
    v13 = sub_2277E2414();
    v14 = [v7 localizedStringForKey:v13 value:0 table:{*MEMORY[0x277D09520], a3, v25}];
    goto LABEL_5;
  }

  sub_2277CB780();
  swift_allocError();
  *v23 = 0;
  return swift_willThrow();
}

uint64_t sub_2277C7260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  sub_22778E6C8(0, &qword_2813BC508, 0x277D82BB8);
  v7 = objc_opt_self();
  v8 = [v7 mileUnit];
  v9 = sub_2277E2754();

  if (v9)
  {
    v18 = a3;

    MEMORY[0x22AA9B650](0x555F53454C494D5FLL, 0xEB0000000054494ELL);
    v10 = sub_2277E2414();

    v11 = [v6 localizedStringForKey:v10 value:0 table:{*MEMORY[0x277D09520], a2, v18}];
LABEL_5:
    v14 = v11;

    v15 = sub_2277E2434();
    return v15;
  }

  v12 = [v7 meterUnitWithMetricPrefix_];
  v13 = sub_2277E2754();

  if (v13)
  {
    v19 = a3;

    MEMORY[0x22AA9B650](0xD000000000000010, 0x80000002277EA040);
    v10 = sub_2277E2414();

    v11 = [v6 localizedStringForKey:v10 value:0 table:{*MEMORY[0x277D09520], a2, v19}];
    goto LABEL_5;
  }

  sub_2277CB780();
  swift_allocError();
  *v17 = 0;
  return swift_willThrow();
}

uint64_t FirstGlanceLocalizer.localizedBody(type:activityMoveMode:firstName:date:isStandalone:isWheelchairUser:experienceType:goalRecommendationAllowed:shouldUseEncouragingTone:pregnancyState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, unint64_t a8, char a9, char a10, uint64_t a11)
{
  v51 = a8;
  LODWORD(v49) = a6;
  v50 = a5;
  GlanceType = type metadata accessor for FirstGlanceType();
  v18 = *(*(GlanceType - 8) + 64);
  MEMORY[0x28223BE20](GlanceType);
  v20 = (&v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *v11;
  v21 = v11[1];
  sub_22778E0CC(a1, v20);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v52 = v22;
    v53 = v21;
    FirstGlanceLocalizer.localizedBody(type:activityMoveMode:firstName:date:isStandalone:isWheelchairUser:experienceType:goalRecommendationAllowed:shouldUseEncouragingTone:)(a1, a2, a3, a4, v50, v49 & 1, a7 & 1, v51, a9 & 1, a10 & 1);
    v30 = v35;
    sub_2277CB828(v20, type metadata accessor for FirstGlanceType);
    return v30;
  }

  v47 = a3;
  v23 = a4;
  v48 = a7;
  v24 = a2;
  v26 = *v20;
  v25 = v20[1];
  v28 = v20[2];
  v27 = v20[3];
  v49 = v21;
  v50 = v27;
  v29 = objc_allocWithZone(MEMORY[0x277CE8CE0]);
  v30 = sub_2277E1F24();
  v31 = [v29 initWithData_];

  if (!v31)
  {
    sub_2277CB780();
    swift_allocError();
    *v36 = 0;
    swift_willThrow();
    sub_22778E130(v26, v25);
    goto LABEL_14;
  }

  v45 = v28;
  v46 = v25;
  v32 = [objc_allocWithZone(MEMORY[0x277CE8CB0]) initWithCodable_];
  v33 = [objc_allocWithZone(MEMORY[0x277CE8CB8]) init];
  if (v23)
  {
    v34 = sub_2277E2414();
  }

  else
  {
    v34 = 0;
  }

  [v33 setName_];

  [v33 setWheelchairUser_];
  [v33 setActivityMoveMode_];
  v54 = &unk_283AE9E28;
  v37 = v49;
  v38 = swift_dynamicCastObjCProtocolConditional();
  if (v38)
  {
    v39 = v37;
  }

  v40 = v26;
  [v33 setAchUnitManager_];
  swift_unknownObjectRelease();
  [v33 setIsPregnant_];
  v41 = sub_2277E2414();
  if (v51 < 4)
  {
    v30 = v41;
    v42 = [v33 localizedStringForKey:v41 withAchievement:v32 fitnessExperienceType:qword_2277E72D8[v51]];

    if (v42)
    {
      v30 = sub_2277E2434();

      sub_22778E130(v40, v46);

      return v30;
    }

    sub_2277CB780();
    swift_allocError();
    *v43 = 0;
    swift_willThrow();
    sub_22778E130(v40, v46);

LABEL_14:

    return v30;
  }

  result = sub_2277E28D4();
  __break(1u);
  return result;
}

void FirstGlanceLocalizer.localizedBody(type:activityMoveMode:firstName:date:isStandalone:isWheelchairUser:experienceType:goalRecommendationAllowed:shouldUseEncouragingTone:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, unsigned __int8 a9, unsigned __int8 a10)
{
  v348 = a8;
  v343 = a7;
  v347 = a6;
  v340 = a5;
  v345 = a4;
  v344 = a3;
  v342 = a2;
  LODWORD(v346) = a10;
  LODWORD(v339) = a9;
  v338 = sub_2277E1FA4();
  v337 = *(v338 - 8);
  v12 = *(v337 + 64);
  v13 = MEMORY[0x28223BE20](v338);
  v334 = &v329 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v333 = &v329 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v332 = &v329 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v331 = &v329 - v20;
  MEMORY[0x28223BE20](v19);
  v330 = &v329 - v21;
  v22 = type metadata accessor for WeeklySummaryInfo();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v336 = (&v329 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  GlanceType = type metadata accessor for FirstGlanceType();
  v26 = *(*(GlanceType - 8) + 64);
  v27 = MEMORY[0x28223BE20](GlanceType);
  v335 = &v329 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v329 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v329 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v329 - v36;
  v38 = MEMORY[0x28223BE20](v35);
  v40 = &v329 - v39;
  MEMORY[0x28223BE20](v38);
  v42 = (&v329 - v41);
  v43 = *v10;
  v44 = v10[1];
  v349 = v43;
  v45 = a1;
  sub_22778E0CC(a1, &v329 - v41);
  v341 = GlanceType;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v130 = v42;
      v131 = v336;
      sub_22778E184(v130, v336);
      v132 = *v131;
      sub_2277C4900();
      v134 = v133;
      v346 = sub_2277CB0E0(v132);
      v135 = v349;
      *&v354[0] = v349;
      *(&v354[0] + 1) = v44;
      v136 = v44;
      v137 = v342;
      v138 = sub_2277C5148(v342, v347 & v339 & 1);
      v140 = v139;
      v141 = FILocalizationTableForExperienceType();
      v142 = sub_2277E2414();
      v143 = FIRandomStringForPrefixWithTableName();

      if (v143)
      {

        sub_2277E2434();

        *&v354[0] = v135;
        *(&v354[0] + 1) = v136;
        sub_2277C530C(v137, v134);
        v145 = v144;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CF180, &qword_2277E7240);
        v146 = swift_allocObject();
        *(v146 + 16) = xmmword_2277E4B50;
        v147 = MEMORY[0x277D83B88];
        v148 = MEMORY[0x277D83C10];
        *(v146 + 56) = MEMORY[0x277D83B88];
        *(v146 + 64) = v148;
        *(v146 + 32) = v346;
        *(v146 + 96) = v147;
        *(v146 + 104) = v148;
        *(v146 + 72) = v145;
        sub_2277E2444();

        sub_2277CB828(v131, type metadata accessor for WeeklySummaryInfo);
      }

      else
      {
        if (qword_2813BC738 != -1)
        {
          swift_once();
        }

        v249 = sub_2277E2374();
        __swift_project_value_buffer(v249, qword_2813BC740);

        v250 = sub_2277E2354();
        v251 = sub_2277E26F4();

        if (os_log_type_enabled(v250, v251))
        {
          v252 = swift_slowAlloc();
          v253 = swift_slowAlloc();
          *&v354[0] = v253;
          *v252 = 136315138;
          v254 = sub_22779A830(v138, v140, v354);

          *(v252 + 4) = v254;
          _os_log_impl(&dword_227786000, v250, v251, "Unable to localize first glance for weekly summary: %s)", v252, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v253);
          MEMORY[0x22AA9C370](v253, -1, -1);
          MEMORY[0x22AA9C370](v252, -1, -1);
        }

        else
        {
        }

        v327 = v336;
        sub_2277CB780();
        swift_allocError();
        *v328 = 0;
        swift_willThrow();
        sub_2277CB828(v327, type metadata accessor for WeeklySummaryInfo);
      }

      return;
    case 2u:
      v97 = v44;
      v99 = *v42;
      v98 = v42[1];
      v101 = v42[2];
      v100 = v42[3];
      v102 = objc_allocWithZone(MEMORY[0x277CE8CE0]);
      v103 = sub_2277E1F24();
      v104 = [v102 initWithData_];

      if (!v104)
      {
        goto LABEL_58;
      }

      v349 = v100;
      v105 = [objc_allocWithZone(MEMORY[0x277CE8CB0]) initWithCodable_];
      v106 = [objc_allocWithZone(MEMORY[0x277CE8CB8]) init];
      if (v345)
      {
        v107 = sub_2277E2414();
      }

      else
      {
        v107 = 0;
      }

      v303 = v348;
      [v106 setName_];

      [v106 setWheelchairUser_];
      [v106 setActivityMoveMode_];
      v352 = &unk_283AE9E28;
      v304 = swift_dynamicCastObjCProtocolConditional();
      if (v304)
      {
        v305 = v97;
      }

      [v106 setAchUnitManager_];
      swift_unknownObjectRelease();
      v306 = sub_2277E2414();
      if (v303 >= 4)
      {
        goto LABEL_153;
      }

      goto LABEL_124;
    case 3u:
      v108 = v44;
      v99 = *v42;
      v98 = v42[1];
      v110 = v42[2];
      v109 = v42[3];
      v111 = objc_allocWithZone(MEMORY[0x277CE8CE0]);
      v112 = sub_2277E1F24();
      v104 = [v111 initWithData_];

      if (v104)
      {
        v349 = v109;
        v105 = [objc_allocWithZone(MEMORY[0x277CE8CB0]) initWithCodable_];
        v106 = [objc_allocWithZone(MEMORY[0x277CE8CB8]) init];
        if (v345)
        {
          v113 = sub_2277E2414();
        }

        else
        {
          v113 = 0;
        }

        v303 = v348;
        [v106 setName_];

        [v106 setWheelchairUser_];
        [v106 setActivityMoveMode_];
        v353 = &unk_283AE9E28;
        v307 = swift_dynamicCastObjCProtocolConditional();
        if (v307)
        {
          v308 = v108;
        }

        [v106 setAchUnitManager_];
        swift_unknownObjectRelease();
        v306 = sub_2277E2414();
        if (v303 >= 4)
        {
LABEL_153:
          sub_2277E28D4();
          __break(1u);
        }

        else
        {
LABEL_124:
          v309 = v306;
          v310 = [v106 localizedStringForKey:v306 withAchievement:v105 fitnessExperienceType:qword_2277E72D8[v303]];

          if (v310)
          {
            sub_2277E2434();

            sub_22778E130(v99, v98);
          }

          else
          {
            sub_2277CB780();
            swift_allocError();
            *v311 = 0;
            swift_willThrow();
            sub_22778E130(v99, v98);
          }
        }
      }

      else
      {
LABEL_58:
        sub_2277CB780();
        swift_allocError();
        *v219 = 0;
        swift_willThrow();
        sub_22778E130(v99, v98);
      }

      return;
    case 4u:
      v53 = *v42;
      v54 = v349;
      *&v354[0] = v349;
      *(&v354[0] + 1) = v44;
      v55 = v347;
      v56 = sub_2277C4E58(a1, v347 & 1, v346 & 1);
      v58 = v57;
      *&v354[0] = v54;
      *(&v354[0] + 1) = v44;
      v59 = sub_2277C5430(v53);
      *&v354[0] = v54;
      *(&v354[0] + 1) = v44;
      v342 = v44;
      v60 = v55 & 1;
      v61 = a1;
      v336 = v59;
      v62 = sub_2277C54D0(a1, v59, v60);
      if (v63)
      {
        v64 = v62;
        v65 = v63;

        v56 = v64;
        v58 = v65;
      }

      v66 = v349;
      v67 = v342;
      *&v354[0] = v349;
      *(&v354[0] + 1) = v342;
      v339 = v53;
      v68 = sub_2277C5614(v61, v53, v347 & 1, v346 & 1);
      v340 = v61;
      v70 = v69;
      *&v354[0] = 0xD000000000000028;
      *(&v354[0] + 1) = 0x80000002277E9CA0;
      MEMORY[0x22AA9B650](v56, v58);

      MEMORY[0x22AA9B650](v68, v70);

      *&v354[0] = v66;
      *(&v354[0] + 1) = v67;
      v71 = sub_2277C58DC(v344, v345);
      *&v354[0] = v66;
      *(&v354[0] + 1) = v67;
      sub_2277C5A04(v71, v343 & 1);
      v72 = FILocalizationTableForExperienceType();
      v73 = sub_2277E2414();

      v74 = MEMORY[0x277D837D0];
      v75 = sub_2277E2544();

      v76 = sub_2277E2414();

      v77 = FIRandomStringWithKeyAndPossibleSuffixesWithTableName();

      if (!v77)
      {
        goto LABEL_59;
      }

      v78 = sub_2277E2434();
      v80 = v79;

      sub_22778E0CC(v340, v40);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        if (v347)
        {
          v81 = 1;
        }

        else
        {
          v81 = 3;
        }

        sub_2277CB828(v40, type metadata accessor for FirstGlanceType);
        v82 = 0;
        v83 = 0xE000000000000000;
        v84 = v339;
        if (v336 == v81 && v348 != 1 && (v346 & 1) == 0)
        {
          *&v354[0] = v349;
          *(&v354[0] + 1) = v342;
          sub_2277C61D0();
          *&v354[0] = 32;
          *(&v354[0] + 1) = 0xE100000000000000;
          MEMORY[0x22AA9B650]();

          v83 = *(&v354[0] + 1);
          v82 = *&v354[0];
        }
      }

      else
      {
        sub_2277CB828(v40, type metadata accessor for FirstGlanceType);
        v82 = 0;
        v83 = 0xE000000000000000;
        v84 = v339;
      }

      *&v354[0] = v78;
      *(&v354[0] + 1) = v80;

      MEMORY[0x22AA9B650](v82, v83);

      v276 = v354[0];
      v277 = [v84 _startDate];
      if (v277)
      {
        v278 = v330;
        v279 = v277;
        sub_2277E1F84();

        v280 = sub_2277E1F74();
        (*(v337 + 8))(v278, v338);
      }

      else
      {
        v280 = 0;
      }

      v298 = FILocalizedDayName();

      if (!v298)
      {
        goto LABEL_131;
      }

      v299 = sub_2277E2434();
      v301 = v300;

      v354[0] = v276;
      v356 = 0x6D616E2D7961643CLL;
      v357 = 0xEA00000000003E65;
      v350 = 16421;
      v351 = 0xE200000000000000;
      sub_22779ADE8();
      sub_2277E27A4();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CF180, &qword_2277E7240);
      v302 = swift_allocObject();
      *(v302 + 16) = xmmword_2277E3E40;
      *(v302 + 56) = v74;
      *(v302 + 64) = sub_2277CB7D4();
      *(v302 + 32) = v299;
      *(v302 + 40) = v301;
      sub_2277E2424();

      goto LABEL_141;
    case 5u:
      v149 = *v42;
      v150 = v349;
      *&v354[0] = v349;
      *(&v354[0] + 1) = v44;
      v151 = v347;
      v152 = sub_2277C4E58(a1, v347 & 1, v346 & 1);
      v154 = v153;
      *&v354[0] = v150;
      *(&v354[0] + 1) = v44;
      v155 = sub_2277C5430(v149);
      *&v354[0] = v150;
      *(&v354[0] + 1) = v44;
      v342 = v44;
      v156 = v151 & 1;
      v157 = a1;
      v336 = v155;
      v158 = sub_2277C54D0(a1, v155, v156);
      if (v159)
      {
        v160 = v158;
        v161 = v159;

        v152 = v160;
        v154 = v161;
      }

      v162 = v349;
      v163 = v342;
      *&v354[0] = v349;
      *(&v354[0] + 1) = v342;
      v339 = v149;
      v164 = sub_2277C5614(v157, v149, v347 & 1, v346 & 1);
      v340 = v157;
      v166 = v165;
      *&v354[0] = 0xD000000000000028;
      *(&v354[0] + 1) = 0x80000002277E9CA0;
      MEMORY[0x22AA9B650](v152, v154);

      MEMORY[0x22AA9B650](v164, v166);

      *&v354[0] = v162;
      *(&v354[0] + 1) = v163;
      v167 = sub_2277C58DC(v344, v345);
      *&v354[0] = v162;
      *(&v354[0] + 1) = v163;
      sub_2277C5A04(v167, v343 & 1);
      v168 = FILocalizationTableForExperienceType();
      v169 = sub_2277E2414();

      v170 = MEMORY[0x277D837D0];
      v171 = sub_2277E2544();

      v172 = sub_2277E2414();

      v173 = FIRandomStringWithKeyAndPossibleSuffixesWithTableName();

      if (v173)
      {
        v174 = sub_2277E2434();
        v176 = v175;

        sub_22778E0CC(v340, v37);
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          if (v347)
          {
            v177 = 1;
          }

          else
          {
            v177 = 3;
          }

          sub_2277CB828(v37, type metadata accessor for FirstGlanceType);
          v178 = 0;
          v179 = 0xE000000000000000;
          v84 = v339;
          if (v336 == v177 && v348 != 1 && (v346 & 1) == 0)
          {
            *&v354[0] = v349;
            *(&v354[0] + 1) = v342;
            sub_2277C61D0();
            *&v354[0] = 32;
            *(&v354[0] + 1) = 0xE100000000000000;
            MEMORY[0x22AA9B650]();

            v179 = *(&v354[0] + 1);
            v178 = *&v354[0];
          }
        }

        else
        {
          sub_2277CB828(v37, type metadata accessor for FirstGlanceType);
          v178 = 0;
          v179 = 0xE000000000000000;
          v84 = v339;
        }

        *&v354[0] = v174;
        *(&v354[0] + 1) = v176;

        MEMORY[0x22AA9B650](v178, v179);

        v287 = v354[0];
        v288 = [v84 _startDate];
        if (v288)
        {
          v289 = v331;
          v290 = v288;
          sub_2277E1F84();

          v291 = sub_2277E1F74();
          (*(v337 + 8))(v289, v338);
        }

        else
        {
          v291 = 0;
        }

        v312 = FILocalizedDayName();

        if (v312)
        {
          v313 = sub_2277E2434();
          v315 = v314;

          v354[0] = v287;
          v356 = 0x6D616E2D7961643CLL;
          v357 = 0xEA00000000003E65;
          v350 = 16421;
          v351 = 0xE200000000000000;
          sub_22779ADE8();
          sub_2277E27A4();

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CF180, &qword_2277E7240);
          v316 = swift_allocObject();
          *(v316 + 16) = xmmword_2277E3E40;
          *(v316 + 56) = v170;
          *(v316 + 64) = sub_2277CB7D4();
          *(v316 + 32) = v313;
          *(v316 + 40) = v315;
          sub_2277E2424();

          return;
        }

LABEL_131:

        if (qword_2813BC738 != -1)
        {
          swift_once();
        }

        v317 = sub_2277E2374();
        __swift_project_value_buffer(v317, qword_2813BC740);
        v221 = sub_2277E2354();
        v222 = sub_2277E26F4();
        if (os_log_type_enabled(v221, v222))
        {
          v224 = swift_slowAlloc();
          *v224 = 0;
          v225 = "Unable to localized day name for first glance";
          goto LABEL_135;
        }
      }

      else
      {
LABEL_59:
        if (qword_2813BC738 != -1)
        {
          swift_once();
        }

        v220 = sub_2277E2374();
        __swift_project_value_buffer(v220, qword_2813BC740);
        v221 = sub_2277E2354();
        v222 = sub_2277E26F4();
        v223 = os_log_type_enabled(v221, v222);
        v84 = v339;
        if (v223)
        {
          v224 = swift_slowAlloc();
          *v224 = 0;
          v225 = "Unable to localized first glance for yesterday rings";
LABEL_135:
          _os_log_impl(&dword_227786000, v221, v222, v225, v224, 2u);
          MEMORY[0x22AA9C370](v224, -1, -1);
        }
      }

      sub_2277CB780();
      swift_allocError();
      *v318 = 0;
      swift_willThrow();

      return;
    case 6u:
    case 7u:
      v46 = v42[1];
      v47 = *v42;
      *&v354[0] = v349;
      *(&v354[0] + 1) = v44;
      v356 = v47;
      v357 = v46;
      sub_2277C62A8(a1, &v356, v344, v345, v348);
      goto LABEL_3;
    case 8u:
      v209 = *v42;
      v210 = v349;
      *&v354[0] = v349;
      *(&v354[0] + 1) = v44;
      v211 = v347;
      v340 = sub_2277C4E58(a1, v347 & 1, v346 & 1);
      v213 = v212;
      *&v354[0] = v210;
      *(&v354[0] + 1) = v44;
      v339 = v209;
      v214 = sub_2277C5430(v209);
      *&v354[0] = v210;
      *(&v354[0] + 1) = v44;
      v342 = v44;
      v336 = v214;
      v215 = sub_2277C54D0(a1, v214, v211 & 1);
      if (v216)
      {
        v217 = v215;
        v218 = v216;

        v213 = v218;
      }

      else
      {
        v217 = v340;
      }

      v255 = v342;
      *&v354[0] = v210;
      *(&v354[0] + 1) = v342;
      v340 = a1;
      v256 = sub_2277C5614(a1, v339, v347 & 1, v346 & 1);
      v258 = v257;
      *&v354[0] = 0xD000000000000028;
      *(&v354[0] + 1) = 0x80000002277E9CA0;
      MEMORY[0x22AA9B650](v217, v213);

      MEMORY[0x22AA9B650](v256, v258);

      *&v354[0] = v210;
      *(&v354[0] + 1) = v255;
      v259 = sub_2277C58DC(v344, v345);
      *&v354[0] = v210;
      *(&v354[0] + 1) = v255;
      sub_2277C5A04(v259, v343 & 1);
      v260 = FILocalizationTableForExperienceType();
      v261 = sub_2277E2414();

      v198 = MEMORY[0x277D837D0];
      v262 = sub_2277E2544();

      v263 = sub_2277E2414();

      v264 = FIRandomStringWithKeyAndPossibleSuffixesWithTableName();

      if (!v264)
      {
        goto LABEL_91;
      }

      v265 = sub_2277E2434();
      v267 = v266;

      sub_22778E0CC(v340, v34);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        if (v347)
        {
          v268 = 1;
        }

        else
        {
          v268 = 3;
        }

        sub_2277CB828(v34, type metadata accessor for FirstGlanceType);
        v269 = 0;
        v270 = 0xE000000000000000;
        if (v336 == v268 && v348 != 1 && (v346 & 1) == 0)
        {
          *&v354[0] = v349;
          *(&v354[0] + 1) = v342;
          sub_2277C61D0();
          *&v354[0] = 32;
          *(&v354[0] + 1) = 0xE100000000000000;
          MEMORY[0x22AA9B650]();

          v270 = *(&v354[0] + 1);
          v269 = *&v354[0];
        }
      }

      else
      {
        sub_2277CB828(v34, type metadata accessor for FirstGlanceType);
        v269 = 0;
        v270 = 0xE000000000000000;
      }

      *&v354[0] = v265;
      *(&v354[0] + 1) = v267;

      MEMORY[0x22AA9B650](v269, v270);

      v281 = *(&v354[0] + 1);
      v282 = *&v354[0];
      v295 = [v339 _startDate];
      if (v295)
      {
        v296 = v332;
        v297 = v295;
        sub_2277E1F84();

        v286 = sub_2277E1F74();
        (*(v337 + 8))(v296, v338);
      }

      else
      {
        v286 = 0;
      }

      goto LABEL_139;
    case 9u:
      v85 = *v42;
      v86 = v349;
      *&v354[0] = v349;
      *(&v354[0] + 1) = v44;
      v87 = v347;
      v340 = sub_2277C4E58(v45, v347 & 1, v346 & 1);
      v89 = v88;
      *&v354[0] = v86;
      *(&v354[0] + 1) = v44;
      v339 = v85;
      v90 = sub_2277C5430(v85);
      *&v354[0] = v86;
      *(&v354[0] + 1) = v44;
      v342 = v44;
      v91 = sub_2277C54D0(v45, v90, v87 & 1);
      v336 = v90;
      if (v92)
      {
        v93 = v91;
        v94 = v92;

        v95 = v93;
        v89 = v94;
        v96 = v345;
      }

      else
      {
        v96 = v345;
        v95 = v340;
      }

      v226 = v349;
      v227 = v342;
      *&v354[0] = v349;
      *(&v354[0] + 1) = v342;
      v340 = v45;
      v228 = sub_2277C5614(v45, v339, v347 & 1, v346 & 1);
      v230 = v229;
      *&v354[0] = 0xD000000000000028;
      *(&v354[0] + 1) = 0x80000002277E9CA0;
      MEMORY[0x22AA9B650](v95, v89);

      MEMORY[0x22AA9B650](v228, v230);

      *&v354[0] = v226;
      *(&v354[0] + 1) = v227;
      v231 = sub_2277C58DC(v344, v96);
      *&v354[0] = v226;
      *(&v354[0] + 1) = v227;
      sub_2277C5A04(v231, v343 & 1);
      v232 = FILocalizationTableForExperienceType();
      v233 = sub_2277E2414();

      v198 = MEMORY[0x277D837D0];
      v234 = sub_2277E2544();

      v235 = sub_2277E2414();

      v236 = FIRandomStringWithKeyAndPossibleSuffixesWithTableName();

      if (!v236)
      {
        goto LABEL_91;
      }

      v237 = sub_2277E2434();
      v239 = v238;

      sub_22778E0CC(v340, v31);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        if (v347)
        {
          v240 = 1;
        }

        else
        {
          v240 = 3;
        }

        sub_2277CB828(v31, type metadata accessor for FirstGlanceType);
        v241 = 0;
        v242 = 0xE000000000000000;
        if (v336 == v240 && v348 != 1 && (v346 & 1) == 0)
        {
          *&v354[0] = v349;
          *(&v354[0] + 1) = v342;
          sub_2277C61D0();
          *&v354[0] = 32;
          *(&v354[0] + 1) = 0xE100000000000000;
          MEMORY[0x22AA9B650]();

          v242 = *(&v354[0] + 1);
          v241 = *&v354[0];
        }
      }

      else
      {
        sub_2277CB828(v31, type metadata accessor for FirstGlanceType);
        v241 = 0;
        v242 = 0xE000000000000000;
      }

      *&v354[0] = v237;
      *(&v354[0] + 1) = v239;

      MEMORY[0x22AA9B650](v241, v242);

      v281 = *(&v354[0] + 1);
      v282 = *&v354[0];
      v283 = [v339 _startDate];
      if (v283)
      {
        v284 = v333;
        v285 = v283;
        sub_2277E1F84();

        v286 = sub_2277E1F74();
        (*(v337 + 8))(v284, v338);
      }

      else
      {
        v286 = 0;
      }

      goto LABEL_139;
    case 0xAu:
      v180 = *v42;
      v181 = v349;
      *&v354[0] = v349;
      *(&v354[0] + 1) = v44;
      v182 = v347;
      v183 = sub_2277C4E58(v45, v347 & 1, v346 & 1);
      v185 = v184;
      *&v354[0] = v181;
      *(&v354[0] + 1) = v44;
      v339 = v180;
      v186 = sub_2277C5430(v180);
      *&v354[0] = v181;
      *(&v354[0] + 1) = v44;
      v342 = v44;
      v336 = v186;
      v187 = sub_2277C54D0(v45, v186, v182 & 1);
      if (v188)
      {
        v189 = v187;
        v190 = v188;

        v183 = v189;
        v185 = v190;
      }

      v191 = v342;
      *&v354[0] = v181;
      *(&v354[0] + 1) = v342;
      v192 = sub_2277C5614(v45, v339, v347 & 1, v346 & 1);
      v340 = v45;
      v194 = v193;
      *&v354[0] = 0xD000000000000028;
      *(&v354[0] + 1) = 0x80000002277E9CA0;
      MEMORY[0x22AA9B650](v183, v185);

      MEMORY[0x22AA9B650](v192, v194);

      *&v354[0] = v181;
      *(&v354[0] + 1) = v191;
      v195 = sub_2277C58DC(v344, v345);
      *&v354[0] = v181;
      *(&v354[0] + 1) = v191;
      sub_2277C5A04(v195, v343 & 1);
      v196 = FILocalizationTableForExperienceType();
      v197 = sub_2277E2414();

      v198 = MEMORY[0x277D837D0];
      v199 = sub_2277E2544();

      v200 = sub_2277E2414();

      v201 = FIRandomStringWithKeyAndPossibleSuffixesWithTableName();

      if (!v201)
      {
LABEL_91:
        if (qword_2813BC738 != -1)
        {
          swift_once();
        }

        v271 = sub_2277E2374();
        __swift_project_value_buffer(v271, qword_2813BC740);
        v272 = sub_2277E2354();
        v273 = sub_2277E26F4();
        if (!os_log_type_enabled(v272, v273))
        {
          goto LABEL_147;
        }

        v274 = swift_slowAlloc();
        *v274 = 0;
        v275 = "Unable to localized first glance for yesterday rings";
        goto LABEL_146;
      }

      v202 = sub_2277E2434();
      v204 = v203;

      v205 = v335;
      sub_22778E0CC(v340, v335);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        if (v347)
        {
          v206 = 1;
        }

        else
        {
          v206 = 3;
        }

        sub_2277CB828(v205, type metadata accessor for FirstGlanceType);
        v207 = 0;
        v208 = 0xE000000000000000;
        if (v336 == v206 && v348 != 1 && (v346 & 1) == 0)
        {
          *&v354[0] = v349;
          *(&v354[0] + 1) = v342;
          sub_2277C61D0();
          *&v354[0] = 32;
          *(&v354[0] + 1) = 0xE100000000000000;
          MEMORY[0x22AA9B650]();

          v208 = *(&v354[0] + 1);
          v207 = *&v354[0];
        }
      }

      else
      {
        sub_2277CB828(v205, type metadata accessor for FirstGlanceType);
        v207 = 0;
        v208 = 0xE000000000000000;
      }

      *&v354[0] = v202;
      *(&v354[0] + 1) = v204;

      MEMORY[0x22AA9B650](v207, v208);

      v281 = *(&v354[0] + 1);
      v282 = *&v354[0];
      v292 = [v339 _startDate];
      if (v292)
      {
        v293 = v334;
        v294 = v292;
        sub_2277E1F84();

        v286 = sub_2277E1F74();
        (*(v337 + 8))(v293, v338);
      }

      else
      {
        v286 = 0;
      }

LABEL_139:
      v319 = FILocalizedDayName();

      if (!v319)
      {

        if (qword_2813BC738 != -1)
        {
          swift_once();
        }

        v324 = sub_2277E2374();
        __swift_project_value_buffer(v324, qword_2813BC740);
        v272 = sub_2277E2354();
        v273 = sub_2277E26F4();
        if (!os_log_type_enabled(v272, v273))
        {
          goto LABEL_147;
        }

        v274 = swift_slowAlloc();
        *v274 = 0;
        v275 = "Unable to localized day name for first glance";
LABEL_146:
        _os_log_impl(&dword_227786000, v272, v273, v275, v274, 2u);
        MEMORY[0x22AA9C370](v274, -1, -1);
LABEL_147:

        sub_2277CB780();
        swift_allocError();
        *v325 = 0;
        swift_willThrow();

        return;
      }

      v320 = sub_2277E2434();
      v322 = v321;

      *&v354[0] = v282;
      *(&v354[0] + 1) = v281;
      v356 = 0x6D616E2D7961643CLL;
      v357 = 0xEA00000000003E65;
      v350 = 16421;
      v351 = 0xE200000000000000;
      sub_22779ADE8();
      sub_2277E27A4();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CF180, &qword_2277E7240);
      v323 = swift_allocObject();
      *(v323 + 16) = xmmword_2277E3E40;
      *(v323 + 56) = v198;
      *(v323 + 64) = sub_2277CB7D4();
      *(v323 + 32) = v320;
      *(v323 + 40) = v322;
      sub_2277E2424();

LABEL_141:

      return;
    case 0xBu:
      v51 = v42[4];
      v356 = v349;
      v357 = v44;
      v52 = *(v42 + 1);
      v354[0] = *v42;
      v354[1] = v52;
      v355 = v51;
      sub_2277C6864(v354, v344, v345, v348);
      return;
    case 0xCu:
    case 0xDu:
      if (qword_2813BC738 != -1)
      {
        swift_once();
      }

      v48 = sub_2277E2374();
      __swift_project_value_buffer(v48, qword_2813BC740);
      v47 = sub_2277E2354();
      v49 = sub_2277E2704();
      if (os_log_type_enabled(v47, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_227786000, v47, v49, "Localizing body with unsupported type", v50, 2u);
        MEMORY[0x22AA9C370](v50, -1, -1);
      }

LABEL_3:

      return;
    case 0xEu:
    case 0xFu:
      *&v354[0] = v349;
      *(&v354[0] + 1) = v44;
      sub_2277C5B5C(a1, v344, v345, v340, v343 & 1, v348, v346 & 1);
      return;
    default:
      v114 = *v42;
      v346 = v42[1];
      v115 = *(v42 + 2);
      v116 = v349;
      *&v354[0] = v349;
      *(&v354[0] + 1) = v44;
      v117 = v44;
      v118 = v342;
      v119 = sub_2277C5148(v342, v347 & v339 & 1);
      v121 = v120;
      v122 = FILocalizationTableForExperienceType();
      v123 = sub_2277E2414();
      v124 = FIRandomStringForPrefixWithTableName();

      if (v124)
      {

        sub_2277E2434();

        *&v354[0] = v116;
        *(&v354[0] + 1) = v117;
        sub_2277C530C(v118, v115);
        v126 = v125;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CF180, &qword_2277E7240);
        v127 = swift_allocObject();
        *(v127 + 16) = xmmword_2277E4B50;
        v128 = MEMORY[0x277D83B88];
        v129 = MEMORY[0x277D83C10];
        *(v127 + 56) = MEMORY[0x277D83B88];
        *(v127 + 64) = v129;
        *(v127 + 32) = v346;
        *(v127 + 96) = v128;
        *(v127 + 104) = v129;
        *(v127 + 72) = v126;
        sub_2277E2444();
      }

      else
      {
        if (qword_2813BC738 != -1)
        {
          swift_once();
        }

        v243 = sub_2277E2374();
        __swift_project_value_buffer(v243, qword_2813BC740);

        v244 = sub_2277E2354();
        v245 = sub_2277E26F4();

        if (os_log_type_enabled(v244, v245))
        {
          v246 = swift_slowAlloc();
          v247 = swift_slowAlloc();
          *&v354[0] = v247;
          *v246 = 136315138;
          v248 = sub_22779A830(v119, v121, v354);

          *(v246 + 4) = v248;
          _os_log_impl(&dword_227786000, v244, v245, "Unable to localize first glance for weekly summary: %s)", v246, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v247);
          MEMORY[0x22AA9C370](v247, -1, -1);
          MEMORY[0x22AA9C370](v246, -1, -1);
        }

        else
        {
        }

        sub_2277CB780();
        swift_allocError();
        *v326 = 0;
        swift_willThrow();
      }

      return;
  }
}

void *sub_2277CA0B8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CF020, "HP");
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_2277CA140(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_2277CB0CC(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_2277CA1BC(v6);
  return sub_2277E2854();
}

void sub_2277CA1BC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_2277E2944();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22778E6C8(0, &qword_2813BC548, 0x277CCCFB0);
        v6 = sub_2277E2584();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_2277CA3C8(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_2277CA2D0(0, v2, 1, a1);
  }
}

void sub_2277CA2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v17 = v7;
    v18 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = v8;
      v11 = v9;
      v12 = [v10 _activitySummaryIndex];
      v13 = [v11 _activitySummaryIndex];

      if (v12 >= v13)
      {
LABEL_4:
        ++v4;
        v6 = v18 + 8;
        v7 = v17 - 1;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v14 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v14;
      v6 -= 8;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_2277CA3C8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_90:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_2277CADA0(v8);
    }

    v91 = *(v8 + 2);
    if (v91 >= 2)
    {
      while (*a3)
      {
        v92 = v8;
        v8 = (v91 - 1);
        v93 = *&v92[16 * v91];
        v94 = *&v92[16 * v91 + 24];
        sub_2277CAA30((*a3 + 8 * v93), (*a3 + 8 * *&v92[16 * v91 + 16]), (*a3 + 8 * v94), v7);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v94 < v93)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = sub_2277CADA0(v92);
        }

        if (v91 - 2 >= *(v92 + 2))
        {
          goto LABEL_116;
        }

        v95 = &v92[16 * v91];
        *v95 = v93;
        *(v95 + 1) = v94;
        sub_2277CAD14(v91 - 1);
        v8 = v92;
        v91 = *(v92 + 2);
        if (v91 <= 1)
        {
          goto LABEL_100;
        }
      }

      goto LABEL_126;
    }

LABEL_100:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v101 = v5;
      v97 = 8 * v9;
      v10 = (*a3 + 8 * v9);
      v12 = *v10;
      v11 = v10 + 2;
      v13 = *(*a3 + 8 * v7);
      v14 = v12;
      v106 = [v13 _activitySummaryIndex];
      v104 = [v14 _activitySummaryIndex];

      v99 = v9;
      v15 = v9 + 2;
      while (v6 != v15)
      {
        v16 = *(v11 - 1);
        v17 = *v11;
        v18 = v16;
        v19 = v8;
        v20 = [v17 _activitySummaryIndex];
        v7 = [v18 _activitySummaryIndex];

        v21 = v20 < v7;
        v8 = v19;
        v22 = !v21;
        ++v15;
        ++v11;
        if ((((v106 < v104) ^ v22) & 1) == 0)
        {
          v6 = v15 - 1;
          break;
        }
      }

      v9 = v99;
      v5 = v101;
      v23 = v97;
      if (v106 < v104)
      {
        if (v6 < v99)
        {
          goto LABEL_119;
        }

        if (v99 < v6)
        {
          v24 = 8 * v6 - 8;
          v25 = v6;
          v26 = v99;
          do
          {
            if (v26 != --v25)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v27 = *(v28 + v23);
              *(v28 + v23) = *(v28 + v24);
              *(v28 + v24) = v27;
            }

            ++v26;
            v24 -= 8;
            v23 += 8;
          }

          while (v26 < v25);
        }
      }

      v7 = v6;
    }

    v29 = a3[1];
    if (v7 < v29)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        v30 = (v9 + a4);
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v30 >= v29)
        {
          v30 = a3[1];
        }

        if (v30 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v30)
        {
          break;
        }
      }
    }

LABEL_39:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_2277B5EF0(0, *(v8 + 2) + 1, 1, v8);
    }

    v45 = *(v8 + 2);
    v44 = *(v8 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      v8 = sub_2277B5EF0((v44 > 1), v45 + 1, 1, v8);
    }

    *(v8 + 2) = v46;
    v47 = &v8[16 * v45];
    *(v47 + 4) = v9;
    *(v47 + 5) = v7;
    v48 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v8 + 4);
          v51 = *(v8 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_59:
          if (v53)
          {
            goto LABEL_106;
          }

          v66 = &v8[16 * v46];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_109;
          }

          v72 = &v8[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_113;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        v76 = &v8[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_73:
        if (v71)
        {
          goto LABEL_108;
        }

        v79 = &v8[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_111;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_80:
        v87 = v49 - 1;
        if (v49 - 1 >= v46)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v88 = *&v8[16 * v87 + 32];
        v89 = *&v8[16 * v49 + 40];
        sub_2277CAA30((*a3 + 8 * v88), (*a3 + 8 * *&v8[16 * v49 + 32]), (*a3 + 8 * v89), v48);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v89 < v88)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_2277CADA0(v8);
        }

        if (v87 >= *(v8 + 2))
        {
          goto LABEL_103;
        }

        v90 = &v8[16 * v87];
        *(v90 + 4) = v88;
        *(v90 + 5) = v89;
        sub_2277CAD14(v49);
        v46 = *(v8 + 2);
        if (v46 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v8[16 * v46 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_104;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_105;
      }

      v61 = &v8[16 * v46];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_107;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_110;
      }

      if (v65 >= v57)
      {
        v83 = &v8[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_114;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_90;
    }
  }

  v98 = v8;
  v100 = v9;
  v102 = v5;
  v31 = *a3;
  v32 = *a3 + 8 * v7 - 8;
  v33 = v9 - v7;
  v105 = v30;
LABEL_32:
  v107 = v7;
  v34 = *(v31 + 8 * v7);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    v37 = *v36;
    v38 = v34;
    v39 = v37;
    v40 = [v38 _activitySummaryIndex];
    v41 = [v39 _activitySummaryIndex];

    if (v40 >= v41)
    {
LABEL_31:
      v7 = v107 + 1;
      v32 += 8;
      --v33;
      if ((v107 + 1) != v105)
      {
        goto LABEL_32;
      }

      v7 = v105;
      v9 = v100;
      v5 = v102;
      v8 = v98;
      goto LABEL_39;
    }

    if (!v31)
    {
      break;
    }

    v42 = *v36;
    v34 = *(v36 + 8);
    *v36 = v34;
    *(v36 + 8) = v42;
    v36 -= 8;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
}

uint64_t sub_2277CAA30(char *__dst, void **a2, id *a3, char *__src)
{
  v4 = a3;
  v5 = __dst;
  v6 = a2 - __dst;
  v7 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v7 = a2 - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    if (__src != a2 || &a2[v11] <= __src)
    {
      v23 = a2;
      v24 = __src;
      memmove(__src, a2, 8 * v11);
      __src = v24;
      a2 = v23;
    }

    v41 = __src;
    v14 = &__src[8 * v11];
    if (v9 < 8)
    {
      v13 = __src;
    }

    else
    {
      v13 = __src;
      if (a2 > v5)
      {
        v38 = v5;
LABEL_27:
        v39 = a2;
        v25 = a2 - 1;
        --v4;
        v26 = v14;
        do
        {
          v27 = v14;
          v28 = v4 + 1;
          v29 = *--v26;
          v30 = v25;
          v31 = *v25;
          v32 = v29;
          v33 = v31;
          v34 = [v32 _activitySummaryIndex];
          v35 = [v33 _activitySummaryIndex];

          if (v34 < v35)
          {
            if (v28 != v39)
            {
              *v4 = *v30;
            }

            v13 = v41;
            v14 = v27;
            if (v27 <= v41 || (a2 = v30, v30 <= v38))
            {
              a2 = v30;
              goto LABEL_40;
            }

            goto LABEL_27;
          }

          if (v28 != v27)
          {
            *v4 = *v26;
          }

          --v4;
          v14 = v26;
          v13 = v41;
          v25 = v30;
        }

        while (v26 > v41);
        v14 = v26;
        a2 = v39;
      }
    }
  }

  else
  {
    v12 = a2;
    v13 = __src;
    if (__src != __dst || &__dst[8 * v8] <= __src)
    {
      memmove(__src, __dst, 8 * v8);
    }

    v14 = &v13[v8];
    if (v6 < 8)
    {
      a2 = v5;
    }

    else
    {
      v40 = &v13[v8];
      if (v12 < v4)
      {
        v15 = v12;
        while (1)
        {
          v16 = *v13;
          v17 = *v15;
          v18 = v16;
          v19 = [v17 _activitySummaryIndex];
          v20 = [v18 _activitySummaryIndex];

          if (v19 >= v20)
          {
            break;
          }

          v21 = v15;
          v22 = v5 == v15++;
          if (!v22)
          {
            goto LABEL_17;
          }

LABEL_18:
          ++v5;
          if (v13 >= v40 || v15 >= v4)
          {
            goto LABEL_20;
          }
        }

        v21 = v13;
        v22 = v5 == v13++;
        if (v22)
        {
          goto LABEL_18;
        }

LABEL_17:
        *v5 = *v21;
        goto LABEL_18;
      }

LABEL_20:
      a2 = v5;
      v14 = v40;
    }
  }

LABEL_40:
  v36 = v14 - v13 + (v14 - v13 < 0 ? 7uLL : 0);
  if (a2 != v13 || a2 >= (v13 + (v36 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, v13, 8 * (v36 >> 3));
  }

  return 1;
}

uint64_t sub_2277CAD14(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2277CADA0(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_2277CADB4(uint64_t result)
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
  v7 = *v1;
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

  result = sub_2277B5FF4(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

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

uint64_t sub_2277CAEA8(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_2277E28E4();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_2277CA0B8(v3, 0);
  sub_2277CAF3C((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_2277CAF3C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2277E28E4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2277E28E4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2277CB9D4();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEC60, &qword_2277E51B0);
            v9 = sub_227792C7C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_22778E6C8(0, &qword_2813BC548, 0x277CCCFB0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2277CB0E0(unint64_t a1)
{

  v26 = sub_2277CAEA8(v2);
  sub_2277CA140(&v26);
  v3 = v26;
  if ((v26 & 0x8000000000000000) == 0 && (v26 & 0x4000000000000000) == 0)
  {
    v4 = *(v26 + 16);
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_11:

    v9 = 0.0;
LABEL_12:
    v26 = MEMORY[0x277D84F90];
    if (a1 >> 62)
    {
LABEL_31:
      v10 = sub_2277E28E4();
      if (v10)
      {
LABEL_14:
        v11 = 0;
        do
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v12 = MEMORY[0x22AA9B9D0](v11, a1);
          }

          else
          {
            if (v11 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_30;
            }

            v12 = *(a1 + 8 * v11 + 32);
          }

          v13 = v12;
          v14 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            __break(1u);
LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

          v15 = [v12 activityMoveMode];
          v16 = &selRef_appleMoveTime;
          if (v15 == 2)
          {
            v17 = &selRef_minuteUnit;
          }

          else
          {
            v16 = &selRef_activeEnergyBurned;
            v17 = &selRef_kilocalorieUnit;
          }

          v18 = [v13 *v16];
          v19 = [objc_opt_self() *v17];
          [v18 doubleValueForUnit_];
          v21 = v20;

          if (v9 > v21)
          {
          }

          else
          {
            sub_2277E2844();
            v22 = *(v26 + 16);
            sub_2277E2874();
            sub_2277E2884();
            sub_2277E2854();
          }

          ++v11;
        }

        while (v14 != v10);
        v23 = v26;
        if ((v26 & 0x8000000000000000) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_36;
      }
    }

    else
    {
      v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
        goto LABEL_14;
      }
    }

    v23 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) == 0)
    {
LABEL_33:
      if ((v23 & 0x4000000000000000) == 0)
      {
        v24 = *(v23 + 16);
LABEL_35:

        return v24;
      }
    }

LABEL_36:
    v24 = sub_2277E28E4();
    goto LABEL_35;
  }

  v4 = sub_2277E28E4();
  if (!v4)
  {
    goto LABEL_11;
  }

LABEL_4:
  v5 = __OFSUB__(v4, 1);
  v6 = v4 - 1;
  if (v5)
  {
    __break(1u);
    goto LABEL_38;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_38:
    v7 = MEMORY[0x22AA9B9D0](v6, v3);
    goto LABEL_9;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v6 < *(v3 + 16))
  {
    v7 = *(v3 + 8 * v6 + 32);
LABEL_9:
    v8 = v7;

    v9 = HKActivitySummary.moveGoal.getter();

    goto LABEL_12;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_2277CB39C(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 32);
  v24 = *v1;
  v29 = *v1;
  v25 = v2;
  LOBYTE(v26) = v3;
  v27 = *(a1 + 16);
  v28 = v4;
  v5 = sub_2277C6E58(&v25);
  v25 = 0xD000000000000026;
  v26 = 0x80000002277E9F60;
  MEMORY[0x22AA9B650](v5);

  v6 = 0xE700000000000000;
  v7 = 0x524F4F444E495FLL;
  if (v3 != 1)
  {
    v7 = 0x524F4F4454554F5FLL;
    v6 = 0xE800000000000000;
  }

  if (v3)
  {
    v8 = v7;
  }

  else
  {
    v8 = v3;
  }

  if (v3)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  MEMORY[0x22AA9B650](v8, v9);

  v10 = *MEMORY[0x277D09520];
  v11 = sub_2277E2414();

  v12 = FIRandomKeyForPrefixWithTableName();

  if (v12)
  {
    v13 = [v24 localizedStringForKey:v12 value:0 table:v10];

    sub_2277E2434();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CF180, &qword_2277E7240);
    v14 = swift_allocObject();
    v15 = MEMORY[0x277D83B88];
    *(v14 + 16) = xmmword_2277E3E40;
    v16 = MEMORY[0x277D83C10];
    *(v14 + 56) = v15;
    *(v14 + 64) = v16;
    *(v14 + 32) = v4;
    v17 = sub_2277E2424();

    return v17;
  }

  else
  {
    if (qword_2813BC738 != -1)
    {
      swift_once();
    }

    v19 = sub_2277E2374();
    __swift_project_value_buffer(v19, qword_2813BC740);
    v20 = sub_2277E2354();
    v21 = sub_2277E26F4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_227786000, v20, v21, "Unable to localized for workout count summation", v22, 2u);
      MEMORY[0x22AA9C370](v22, -1, -1);
    }

    sub_2277CB780();
    swift_allocError();
    *v23 = 0;
    return swift_willThrow();
  }
}

void _s15FitnessCoaching20FirstGlanceLocalizerV14localizedTitle4type12isStandalone14experienceTypeSSAA0cdL0O_SbSo012FIExperienceL0VtF_0(uint64_t a1, char a2)
{
  v7 = *v2;
  v3 = sub_2277C4B80(a1, a2);
  MEMORY[0x22AA9B650](v3);
  v4 = sub_2277E2414();
  v5 = *MEMORY[0x277D09520];
  v6 = FIRandomStringForPrefixWithTableName();

  if (v6)
  {

    sub_2277E2434();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_2277CB780()
{
  result = qword_27D7CF118;
  if (!qword_27D7CF118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CF118);
  }

  return result;
}

unint64_t sub_2277CB7D4()
{
  result = qword_2813BC580;
  if (!qword_2813BC580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BC580);
  }

  return result;
}

uint64_t sub_2277CB828(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2277CB940(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2277CB988(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2277CB9D4()
{
  result = qword_27D7CF188;
  if (!qword_27D7CF188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7CEC60, &qword_2277E51B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CF188);
  }

  return result;
}

uint64_t *sub_2277CBA38(uint64_t a1)
{
  GlanceModalityProtobuf = type metadata accessor for FirstGlanceModalityProtobuf();
  v5 = *(*(GlanceModalityProtobuf - 8) + 64);
  MEMORY[0x28223BE20](GlanceModalityProtobuf);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 8);
  v12 = *v1;
  v13 = v8;
  v9 = sub_2277CF608();
  v10 = &v12;
  (*(v9 + 32))(a1, v9);
  if (!v2)
  {
    sub_2277CF4F8(&qword_27D7CE930, type metadata accessor for FirstGlanceModalityProtobuf);
    v10 = sub_2277E2244();
    sub_2277CF5A8(v7, type metadata accessor for FirstGlanceModalityProtobuf);
  }

  return v10;
}

uint64_t TransportProtobufSerializable.transportData()(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v12 - v9;
  (*(a2 + 32))(a1, a2);
  if (!v3)
  {
    swift_getAssociatedConformanceWitness();
    v2 = sub_2277E2244();
    (*(v7 + 8))(v10, AssociatedTypeWitness);
  }

  return v2;
}

uint64_t sub_2277CBD1C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_2277E2124();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  GlanceTypeProtobuf = type metadata accessor for FirstGlanceTypeProtobuf(0);
  v10 = *(*(GlanceTypeProtobuf - 8) + 64);
  v11 = MEMORY[0x28223BE20](GlanceTypeProtobuf);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v18 - v14;
  if (a2 >> 60 == 15)
  {
    sub_227791024();
    swift_allocError();
    *v16 = 1;
    return swift_willThrow();
  }

  else
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_2277905C0(a1, a2);
    sub_2277E2114();
    sub_2277CF4F8(&qword_27D7CEE40, type metadata accessor for FirstGlanceTypeProtobuf);
    sub_2277E2234();
    if (!v3)
    {
      sub_2277CF540(v15, v13, type metadata accessor for FirstGlanceTypeProtobuf);
      FirstGlanceType.init(_:)(v13, a3);
      sub_2277CF5A8(v15, type metadata accessor for FirstGlanceTypeProtobuf);
    }

    return sub_2277945BC(a1, a2);
  }
}

uint64_t sub_2277CBF40@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_2277E2124();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = type metadata accessor for WeeklySummaryInfoProtobuf();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v18 - v14;
  if (a2 >> 60 == 15)
  {
    sub_227791024();
    swift_allocError();
    *v16 = 1;
    return swift_willThrow();
  }

  else
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_2277905C0(a1, a2);
    sub_2277E2114();
    sub_2277CF4F8(&qword_27D7CEC98, type metadata accessor for WeeklySummaryInfoProtobuf);
    sub_2277E2234();
    if (!v3)
    {
      sub_2277CF540(v15, v13, type metadata accessor for WeeklySummaryInfoProtobuf);
      WeeklySummaryInfo.init(_:)(v13, a3);
      sub_2277CF5A8(v15, type metadata accessor for WeeklySummaryInfoProtobuf);
    }

    return sub_2277945BC(a1, a2);
  }
}

uint64_t sub_2277CC164@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_2277E2124();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  GlanceContentProtobuf = type metadata accessor for FirstGlanceContentProtobuf();
  v10 = *(*(GlanceContentProtobuf - 8) + 64);
  v11 = MEMORY[0x28223BE20](GlanceContentProtobuf);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  if (a2 >> 60 == 15)
  {
    sub_227791024();
    swift_allocError();
    *v16 = 1;
    return swift_willThrow();
  }

  else
  {
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    sub_2277905C0(a1, a2);
    sub_2277E2114();
    sub_2277CF4F8(&qword_27D7CEEF0, type metadata accessor for FirstGlanceContentProtobuf);
    sub_2277E2234();
    if (v3)
    {
      return sub_2277945BC(a1, a2);
    }

    else
    {
      sub_2277CF540(v15, v13, type metadata accessor for FirstGlanceContentProtobuf);
      FirstGlanceContent.init(_:)(v13, &v20);
      sub_2277CF5A8(v15, type metadata accessor for FirstGlanceContentProtobuf);
      result = sub_2277945BC(a1, a2);
      v18 = v22;
      v19 = v21;
      *a3 = v20;
      *(a3 + 16) = v19;
      *(a3 + 32) = v18;
    }
  }

  return result;
}

uint64_t sub_2277CC3AC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_2277E2124();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  GlanceModalityProtobuf = type metadata accessor for FirstGlanceModalityProtobuf();
  v10 = *(*(GlanceModalityProtobuf - 8) + 64);
  v11 = MEMORY[0x28223BE20](GlanceModalityProtobuf);
  v13 = (v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v15 = v19 - v14;
  if (a2 >> 60 == 15)
  {
    sub_227791024();
    swift_allocError();
    *v16 = 1;
    return swift_willThrow();
  }

  else
  {
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    sub_2277905C0(a1, a2);
    sub_2277E2114();
    sub_2277CF4F8(&qword_27D7CE930, type metadata accessor for FirstGlanceModalityProtobuf);
    sub_2277E2234();
    if (v3)
    {
      return sub_2277945BC(a1, a2);
    }

    else
    {
      sub_2277CF540(v15, v13, type metadata accessor for FirstGlanceModalityProtobuf);
      FirstGlanceModality.init(_:)(v13, v19);
      sub_2277CF5A8(v15, type metadata accessor for FirstGlanceModalityProtobuf);
      result = sub_2277945BC(a1, a2);
      v18 = BYTE8(v19[0]);
      *a3 = *&v19[0];
      *(a3 + 8) = v18;
    }
  }

  return result;
}

uint64_t sub_2277CC5F4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = sub_2277E2124();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  GlanceModalityTypeProtobuf = type metadata accessor for FirstGlanceModalityTypeProtobuf();
  v10 = *(*(GlanceModalityTypeProtobuf - 8) + 64);
  v11 = MEMORY[0x28223BE20](GlanceModalityTypeProtobuf);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v20 - v14;
  if (a2 >> 60 == 15)
  {
    sub_227791024();
    swift_allocError();
    *v16 = 1;
    return swift_willThrow();
  }

  else
  {
    v21 = 0;
    memset(v20, 0, sizeof(v20));
    sub_2277905C0(a1, a2);
    sub_2277E2114();
    sub_2277CF4F8(&qword_27D7CEA40, type metadata accessor for FirstGlanceModalityTypeProtobuf);
    sub_2277E2234();
    if (v3)
    {
      return sub_2277945BC(a1, a2);
    }

    else
    {
      sub_2277CF540(v15, v13, type metadata accessor for FirstGlanceModalityTypeProtobuf);
      if (v13[8] == 1)
      {
        v18 = *v13;
        sub_2277945BC(a1, a2);
        sub_2277CF5A8(v13, type metadata accessor for FirstGlanceModalityTypeProtobuf);
        result = sub_2277CF5A8(v15, type metadata accessor for FirstGlanceModalityTypeProtobuf);
        *a3 = v18;
      }

      else
      {
        sub_227791024();
        swift_allocError();
        *v19 = 3;
        swift_willThrow();
        sub_2277945BC(a1, a2);
        sub_2277CF5A8(v13, type metadata accessor for FirstGlanceModalityTypeProtobuf);
        return sub_2277CF5A8(v15, type metadata accessor for FirstGlanceModalityTypeProtobuf);
      }
    }
  }

  return result;
}

uint64_t sub_2277CC8A4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_2277E2124();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  GlanceWeeklySummaryProtobuf = type metadata accessor for FirstGlanceWeeklySummaryProtobuf();
  v10 = *(*(GlanceWeeklySummaryProtobuf - 8) + 64);
  v11 = MEMORY[0x28223BE20](GlanceWeeklySummaryProtobuf);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v26 - v14;
  if (a2 >> 60 == 15)
  {
    sub_227791024();
    swift_allocError();
    *v16 = 1;
    return swift_willThrow();
  }

  else
  {
    v27 = 0;
    memset(&v26[1], 0, 32);
    sub_2277905C0(a1, a2);
    sub_2277E2114();
    sub_2277CF4F8(&qword_27D7CEC38, type metadata accessor for FirstGlanceWeeklySummaryProtobuf);
    sub_2277E2234();
    result = sub_2277945BC(a1, a2);
    if (!v3)
    {
      sub_2277CF3E8(v15, v13, type metadata accessor for FirstGlanceWeeklySummaryProtobuf);
      v18 = *v13;
      v19 = *(v13 + 2);
      v26[0] = *(v13 + 1);
      v20 = *(v13 + 4);
      v21 = *(v13 + 10);
      v22 = *(v13 + 6);
      v23 = *(v13 + 14);

      v24 = *(v13 + 60);
      result = sub_2277CF5A8(v13, type metadata accessor for FirstGlanceWeeklySummaryProtobuf);
      *&v25 = v24;
      *(&v25 + 1) = SHIDWORD(v24);
      *a3 = v18;
      *(a3 + 8) = v19;
      *(a3 + 16) = v26[0];
      *(a3 + 32) = v20;
      *(a3 + 40) = v21;
      *(a3 + 48) = v22;
      *(a3 + 56) = v23;
      *(a3 + 64) = v25;
    }
  }

  return result;
}

uint64_t sub_2277CCB14@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_2277E2124();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  GlanceAchievementInfoProtobuf = type metadata accessor for FirstGlanceAchievementInfoProtobuf();
  v10 = *(*(GlanceAchievementInfoProtobuf - 8) + 64);
  v11 = MEMORY[0x28223BE20](GlanceAchievementInfoProtobuf);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v23 - v14;
  if (a2 >> 60 == 15)
  {
    sub_227791024();
    swift_allocError();
    *v16 = 1;
    return swift_willThrow();
  }

  else
  {
    v24 = 0;
    memset(v23, 0, sizeof(v23));
    sub_2277905C0(a1, a2);
    sub_2277E2114();
    sub_2277CF4F8(&qword_27D7CEED0, type metadata accessor for FirstGlanceAchievementInfoProtobuf);
    sub_2277E2234();
    result = sub_2277945BC(a1, a2);
    if (!v3)
    {
      sub_2277CF3E8(v15, v13, type metadata accessor for FirstGlanceAchievementInfoProtobuf);
      v18 = *v13;
      v19 = *(v13 + 1);
      v21 = *(v13 + 2);
      v20 = *(v13 + 3);
      v22 = v13[32];
      sub_2277905C0(*v13, v19);

      result = sub_2277CF5A8(v13, type metadata accessor for FirstGlanceAchievementInfoProtobuf);
      *a3 = v18;
      *(a3 + 8) = v19;
      *(a3 + 16) = v21;
      *(a3 + 24) = v20;
      *(a3 + 32) = v22;
    }
  }

  return result;
}

uint64_t sub_2277CCD50@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_2277E2124();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  GlanceWorkoutSummationProtobuf = type metadata accessor for FirstGlanceWorkoutSummationProtobuf();
  v10 = *(*(GlanceWorkoutSummationProtobuf - 8) + 64);
  v11 = MEMORY[0x28223BE20](GlanceWorkoutSummationProtobuf);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  if (a2 >> 60 == 15)
  {
    sub_227791024();
    swift_allocError();
    *v16 = 1;
    return swift_willThrow();
  }

  else
  {
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    sub_2277905C0(a1, a2);
    sub_2277E2114();
    sub_2277CF4F8(&qword_27D7CE948, type metadata accessor for FirstGlanceWorkoutSummationProtobuf);
    sub_2277E2234();
    if (v3)
    {
      return sub_2277945BC(a1, a2);
    }

    else
    {
      sub_2277CF540(v15, v13, type metadata accessor for FirstGlanceWorkoutSummationProtobuf);
      FirstGlanceWorkoutSummation.init(_:)(v13, &v20);
      sub_2277CF5A8(v15, type metadata accessor for FirstGlanceWorkoutSummationProtobuf);
      result = sub_2277945BC(a1, a2);
      v18 = BYTE8(v20);
      v19 = v22;
      *a3 = v20;
      *(a3 + 8) = v18;
      *(a3 + 16) = v21;
      *(a3 + 32) = v19;
    }
  }

  return result;
}

uint64_t sub_2277CCFA8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_2277E2124();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  GlanceYesterdayWorkoutProtobuf = type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf();
  v10 = *(*(GlanceYesterdayWorkoutProtobuf - 8) + 64);
  v11 = MEMORY[0x28223BE20](GlanceYesterdayWorkoutProtobuf);
  v13 = (v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v15 = v24 - v14;
  if (a2 >> 60 == 15)
  {
    sub_227791024();
    swift_allocError();
    *v16 = 1;
    return swift_willThrow();
  }

  else
  {
    v25 = 0;
    memset(v24, 0, sizeof(v24));
    sub_2277AA8E8(a1, a2);
    sub_2277905C0(a1, a2);
    sub_2277E2114();
    sub_2277CF4F8(&qword_27D7CEBA0, type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf);
    sub_2277E2234();
    if (v3)
    {
      sub_2277945BC(a1, a2);
      return sub_2277945BC(a1, a2);
    }

    else
    {
      sub_2277CF540(v15, v13, type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf);
      v18 = *v13;
      v19 = v13[1];
      sub_22778E6C8(0, &qword_27D7CECB0, 0x277CCAAC8);
      sub_22778E6C8(0, &qword_2813BC500, 0x277CCDBE8);
      v20 = sub_2277E2734();
      if (v20)
      {
        v22 = v20;
        sub_2277945BC(a1, a2);
        sub_2277945BC(a1, a2);
        sub_2277CF5A8(v15, type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf);
        v23 = v13[2];
        result = sub_2277CF5A8(v13, type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf);
        *a3 = v22;
        a3[1] = v23;
      }

      else
      {
        sub_227791024();
        swift_allocError();
        *v21 = 3;
        swift_willThrow();
        sub_2277945BC(a1, a2);
        sub_2277945BC(a1, a2);
        sub_2277CF5A8(v15, type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf);
        return sub_2277CF5A8(v13, type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf);
      }
    }
  }

  return result;
}

uint64_t sub_2277CD2F8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_2277E2124();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = type metadata accessor for AchievementNotificationContentProtobuf();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v15 = v25 - v14;
  if (a2 >> 60 == 15)
  {
    sub_227791024();
    swift_allocError();
    *v16 = 1;
    return swift_willThrow();
  }

  else
  {
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    sub_2277AA8E8(a1, a2);
    sub_2277905C0(a1, a2);
    sub_2277E2114();
    sub_2277CF4F8(&qword_2813BC810, type metadata accessor for AchievementNotificationContentProtobuf);
    sub_2277E2234();
    if (v3)
    {
      sub_2277945BC(a1, a2);
      return sub_2277945BC(a1, a2);
    }

    else
    {
      v27 = a3;
      sub_2277CF540(v15, v13, type metadata accessor for AchievementNotificationContentProtobuf);
      v18 = *v13;
      v19 = v13[1];
      v20 = objc_allocWithZone(MEMORY[0x277CE8CE0]);
      sub_2277905C0(v18, v19);
      v21 = sub_2277E1F24();
      sub_22778E130(v18, v19);
      v22 = [v20 initWithData_];

      if (v22)
      {
        v23 = [objc_allocWithZone(MEMORY[0x277CE8CB0]) initWithCodable_];

        sub_2277945BC(a1, a2);
        sub_2277945BC(a1, a2);
        sub_2277CF5A8(v13, type metadata accessor for AchievementNotificationContentProtobuf);
        result = sub_2277CF5A8(v15, type metadata accessor for AchievementNotificationContentProtobuf);
        *v27 = v23;
      }

      else
      {
        sub_227791024();
        swift_allocError();
        *v24 = 3;
        swift_willThrow();
        sub_2277945BC(a1, a2);
        sub_2277945BC(a1, a2);
        sub_2277CF5A8(v13, type metadata accessor for AchievementNotificationContentProtobuf);
        return sub_2277CF5A8(v15, type metadata accessor for AchievementNotificationContentProtobuf);
      }
    }
  }

  return result;
}

uint64_t sub_2277CD658@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_2277E2124();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  GlanceWorkoutSummationTypeProtobuf = type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf();
  v10 = *(*(GlanceWorkoutSummationTypeProtobuf - 8) + 64);
  v11 = MEMORY[0x28223BE20](GlanceWorkoutSummationTypeProtobuf);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  if (a2 >> 60 == 15)
  {
    sub_227791024();
    swift_allocError();
    *v16 = 1;
    return swift_willThrow();
  }

  else
  {
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    sub_2277905C0(a1, a2);
    sub_2277E2114();
    sub_2277CF4F8(&qword_27D7CEED8, type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf);
    sub_2277E2234();
    if (v3)
    {
      return sub_2277945BC(a1, a2);
    }

    else
    {
      sub_2277CF540(v15, v13, type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf);
      FirstGlanceWorkoutSummationType.init(_:)(v13, &v20);
      sub_2277CF5A8(v15, type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf);
      result = sub_2277945BC(a1, a2);
      v18 = v22;
      v19 = v21;
      *a3 = v20;
      *(a3 + 16) = v19;
      *(a3 + 32) = v18;
    }
  }

  return result;
}

unint64_t sub_2277CD8A0(uint64_t a1, unint64_t a2)
{
  v5 = sub_2277E2124();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for WalkSuggestionProtobuf();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v18 - v12;
  if (a2 >> 60 == 15)
  {
    sub_227791024();
    swift_allocError();
    *v14 = 1;
    swift_willThrow();
  }

  else
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_2277905C0(a1, a2);
    sub_2277E2114();
    sub_2277CF4F8(&qword_27D7CF1A8, type metadata accessor for WalkSuggestionProtobuf);
    sub_2277E2234();
    if (v2)
    {
      sub_2277945BC(a1, a2);
    }

    else
    {
      sub_2277CF540(v13, v11, type metadata accessor for WalkSuggestionProtobuf);
      if (v11[8] == 1)
      {
        v15 = *v11;
        sub_2277945BC(a1, a2);
        if (v15)
        {
          sub_2277CF5A8(v13, type metadata accessor for WalkSuggestionProtobuf);
          a2 = *(v11 + 3);
          sub_2277CF5A8(v11, type metadata accessor for WalkSuggestionProtobuf);
        }

        else
        {
          sub_2277CF5A8(v11, type metadata accessor for WalkSuggestionProtobuf);
          sub_2277CF5A8(v13, type metadata accessor for WalkSuggestionProtobuf);
          return 0;
        }
      }

      else
      {
        sub_227791024();
        swift_allocError();
        *v16 = 3;
        swift_willThrow();
        sub_2277945BC(a1, a2);
        a2 = type metadata accessor for WalkSuggestionProtobuf;
        sub_2277CF5A8(v11, type metadata accessor for WalkSuggestionProtobuf);
        sub_2277CF5A8(v13, type metadata accessor for WalkSuggestionProtobuf);
      }
    }
  }

  return a2;
}

uint64_t TransportProtobufSerializable.init(transportData:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24[2] = a5;
  v10 = sub_2277E2124();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v28 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(*(AssociatedTypeWitness - 8) + 64);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v19 = v24 - v18;
  if (a2 >> 60 == 15)
  {
    sub_227791024();
    swift_allocError();
    *v20 = 1;
    return swift_willThrow();
  }

  else
  {
    v24[0] = v17;
    v24[1] = v5;
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    sub_2277905C0(a1, a2);
    swift_getAssociatedConformanceWitness();
    sub_2277E2114();
    v22 = v24[3];
    sub_2277E2234();
    if (!v22)
    {
      v23 = v24[0];
      (*(v24[0] + 16))(v16, v19, AssociatedTypeWitness);
      (*(a4 + 40))(v16, v28, a4);
      (*(v23 + 8))(v19, AssociatedTypeWitness);
    }

    return sub_2277945BC(a1, a2);
  }
}

char *sub_2277CDE10(uint64_t a1)
{
  GlanceModalityTypeProtobuf = type metadata accessor for FirstGlanceModalityTypeProtobuf();
  v5 = *(*(GlanceModalityTypeProtobuf - 8) + 64);
  MEMORY[0x28223BE20](GlanceModalityTypeProtobuf);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v8 = sub_2277CF4A4();
  v9 = &v12;
  (*(v8 + 32))(a1, v8);
  if (!v2)
  {
    sub_2277CF4F8(&qword_27D7CEA40, type metadata accessor for FirstGlanceModalityTypeProtobuf);
    v9 = sub_2277E2244();
    sub_2277CF5A8(v7, type metadata accessor for FirstGlanceModalityTypeProtobuf);
  }

  return v9;
}

uint64_t sub_2277CDF6C(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  WitnessTable = swift_getWitnessTable();
  return TransportProtobufSerializable.transportData()(a1, WitnessTable);
}

uint64_t sub_2277CDFD0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = *(a4 - 8);
  WitnessTable = swift_getWitnessTable();
  return TransportProtobufSerializable.init(transportData:)(a1, a2, a3, WitnessTable, a5);
}

_OWORD *sub_2277CE054(uint64_t a1)
{
  GlanceWeeklySummaryProtobuf = type metadata accessor for FirstGlanceWeeklySummaryProtobuf();
  v5 = *(*(GlanceWeeklySummaryProtobuf - 8) + 64);
  MEMORY[0x28223BE20](GlanceWeeklySummaryProtobuf);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1[3];
  v13[2] = v1[2];
  v13[3] = v8;
  v13[4] = v1[4];
  v9 = v1[1];
  v13[0] = *v1;
  v13[1] = v9;
  v10 = sub_2277CF450();
  v11 = v13;
  (*(v10 + 32))(a1, v10);
  if (!v2)
  {
    sub_2277CF4F8(&qword_27D7CEC38, type metadata accessor for FirstGlanceWeeklySummaryProtobuf);
    v11 = sub_2277E2244();
    sub_2277CF5A8(v7, type metadata accessor for FirstGlanceWeeklySummaryProtobuf);
  }

  return v11;
}

uint64_t sub_2277CE1C4()
{
  v2 = type metadata accessor for WeeklySummaryInfoProtobuf();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  WeeklySummaryInfo.protobuf()();
  if (!v1)
  {
    sub_2277CF4F8(&qword_27D7CEC98, type metadata accessor for WeeklySummaryInfoProtobuf);
    v0 = sub_2277E2244();
    sub_2277CF5A8(v5, type metadata accessor for WeeklySummaryInfoProtobuf);
  }

  return v0;
}

uint64_t *sub_2277CE2EC(uint64_t a1)
{
  GlanceWorkoutSummationProtobuf = type metadata accessor for FirstGlanceWorkoutSummationProtobuf();
  v5 = *(*(GlanceWorkoutSummationProtobuf - 8) + 64);
  MEMORY[0x28223BE20](GlanceWorkoutSummationProtobuf);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 8);
  v9 = v1[4];
  v14 = *v1;
  v15 = v8;
  v16 = *(v1 + 1);
  v17 = v9;
  v10 = sub_2277CF394();
  v11 = &v14;
  (*(v10 + 32))(a1, v10);
  if (!v2)
  {
    sub_2277CF4F8(&qword_27D7CE948, type metadata accessor for FirstGlanceWorkoutSummationProtobuf);
    v11 = sub_2277E2244();
    sub_2277CF5A8(v7, type metadata accessor for FirstGlanceWorkoutSummationProtobuf);
  }

  return v11;
}

_OWORD *sub_2277CE464(uint64_t a1)
{
  GlanceContentProtobuf = type metadata accessor for FirstGlanceContentProtobuf();
  v5 = *(*(GlanceContentProtobuf - 8) + 64);
  MEMORY[0x28223BE20](GlanceContentProtobuf);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 32);
  v9 = *(v1 + 16);
  v13[0] = *v1;
  v13[1] = v9;
  v14 = v8;
  v10 = sub_2277CF340();
  v11 = v13;
  (*(v10 + 32))(a1, v10);
  if (!v2)
  {
    sub_2277CF4F8(&qword_27D7CEEF0, type metadata accessor for FirstGlanceContentProtobuf);
    v11 = sub_2277E2244();
    sub_2277CF5A8(v7, type metadata accessor for FirstGlanceContentProtobuf);
  }

  return v11;
}

_OWORD *sub_2277CE5CC(uint64_t a1)
{
  GlanceWorkoutSummationTypeProtobuf = type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf();
  v5 = *(*(GlanceWorkoutSummationTypeProtobuf - 8) + 64);
  MEMORY[0x28223BE20](GlanceWorkoutSummationTypeProtobuf);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 32);
  v9 = *(v1 + 16);
  v13[0] = *v1;
  v13[1] = v9;
  v14 = v8;
  v10 = sub_2277CF2EC();
  v11 = v13;
  (*(v10 + 32))(a1, v10);
  if (!v2)
  {
    sub_2277CF4F8(&qword_27D7CEED8, type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf);
    v11 = sub_2277E2244();
    sub_2277CF5A8(v7, type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf);
  }

  return v11;
}

uint64_t *sub_2277CE734(uint64_t a1)
{
  v4 = type metadata accessor for AchievementNotificationContentProtobuf();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v8 = sub_2277CF298();
  v9 = &v12;
  (*(v8 + 32))(a1, v8);
  if (!v2)
  {
    sub_2277CF4F8(&qword_2813BC810, type metadata accessor for AchievementNotificationContentProtobuf);
    v9 = sub_2277E2244();
    sub_2277CF5A8(v7, type metadata accessor for AchievementNotificationContentProtobuf);
  }

  return v9;
}

uint64_t *sub_2277CE8E0(uint64_t a1)
{
  v4 = type metadata accessor for WalkSuggestionProtobuf();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 8);
  v12 = *v1;
  v13 = v8;
  v9 = sub_2277CF244();
  v10 = &v12;
  (*(v9 + 32))(a1, v9);
  if (!v2)
  {
    sub_2277CF4F8(&qword_27D7CF1A8, type metadata accessor for WalkSuggestionProtobuf);
    v10 = sub_2277E2244();
    sub_2277CF5A8(v7, type metadata accessor for WalkSuggestionProtobuf);
  }

  return v10;
}

uint64_t (*sub_2277CEA30@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>))()
{
  result = sub_2277CEF64(a1, a2);
  if (!v3)
  {
    *a3 = result;
    *(a3 + 8) = v6 & 1;
  }

  return result;
}

void *sub_2277CEA64(uint64_t a1)
{
  GlanceYesterdayWorkoutProtobuf = type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf();
  v5 = *(*(GlanceYesterdayWorkoutProtobuf - 8) + 64);
  MEMORY[0x28223BE20](GlanceYesterdayWorkoutProtobuf);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1[1];
  v12[0] = *v1;
  v12[1] = v8;
  v9 = sub_2277CEF10();
  v10 = v12;
  (*(v9 + 32))(a1, v9);
  if (!v2)
  {
    sub_2277CF4F8(&qword_27D7CEBA0, type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf);
    v10 = sub_2277E2244();
    sub_2277CF5A8(v7, type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf);
  }

  return v10;
}