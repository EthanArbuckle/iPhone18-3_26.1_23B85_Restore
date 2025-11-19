uint64_t sub_1AB080C6C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 88);
  if (*(v0 + 152))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 128);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 168);

  return MEMORY[0x1EEE6BDD0](v0, 288, 7);
}

uint64_t ClientBuildTypeFieldProvider.addTimeSensitiveMetricsFields(into:using:)(void *a1)
{
  v3 = *v1;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v4);
  v6 = (*(v5 + 24))(v4, v5);
  v7 = v6;
  if (!v3)
  {

LABEL_9:
    if (qword_1EB4354B8 != -1)
    {
      swift_once();
    }

    v12 = 0xE500000000000000;
    v13 = 0x6775626564;
    v14 = 0xE400000000000000;
    v15 = 1684366707;
    if (byte_1EB4354C0 != 2)
    {
      v15 = 0x69746375646F7270;
      v14 = 0xEA00000000006E6FLL;
    }

    if (byte_1EB4354C0)
    {
      v13 = 0x6C616E7265746E69;
      v12 = 0xE800000000000000;
    }

    if (byte_1EB4354C0 <= 1u)
    {
      v16 = v13;
    }

    else
    {
      v16 = v15;
    }

    if (byte_1EB4354C0 > 1u)
    {
      v12 = v14;
    }

    v21[3] = MEMORY[0x1E69E6158];
    v21[0] = v16;
    v21[1] = v12;
    v17 = a1[3];
    v18 = a1[4];
    __swift_mutable_project_boxed_opaque_existential_1(a1, v17);
    (*(v18 + 16))(v21, 0x7542746E65696C63, 0xEF65707954646C69, v17, v18);
    return __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  if (!*(v6 + 16))
  {
  }

  v8 = sub_1AB014DB4(0x707954746E657665, 0xE900000000000065);
  if ((v9 & 1) == 0)
  {
  }

  sub_1AB0165C4(*(v7 + 56) + 32 * v8, v21);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

  v10 = sub_1AB05CF1C(v19, v20, v3);

  if (v10)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1AB080F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v6 = sub_1AB014DB4(a1, a2);
    if (v7)
    {
      sub_1AB0165C4(*(a3 + 56) + 32 * v6, &v30);
      sub_1AB014B78(&v30, v35);
      sub_1AB0165C4(v35, &v30);
      v8 = MEMORY[0x1E69E6158];
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v35);
        return v33[0];
      }

      if (qword_1ED4D1FC0 != -1)
      {
        swift_once();
      }

      v10 = qword_1ED4D1FC8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1AB4D47F0;
      v34 = sub_1AB0168A8(0, 27, 0, MEMORY[0x1E69E7CC0]);
      v12._object = 0x80000001AB501040;
      v12._countAndFlagsBits = 0xD00000000000001ALL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v12);
      v33[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437DE0);
      v33[0] = a1;
      v33[1] = a2;
      sub_1AB01522C(v33, v29);
      v30 = 0u;
      v31 = 0u;

      sub_1AB0169C4(v29, &v30);
      v32 = 1;
      v13 = v34;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1AB0168A8(0, *(v13 + 2) + 1, 1, v13);
        v34 = v13;
      }

      v15 = *(v13 + 2);
      v14 = *(v13 + 3);
      if (v15 >= v14 >> 1)
      {
        v13 = sub_1AB0168A8((v14 > 1), v15 + 1, 1, v13);
      }

      *(v13 + 2) = v15 + 1;
      v16 = &v13[40 * v15];
      v17 = v30;
      v18 = v31;
      v16[64] = v32;
      *(v16 + 2) = v17;
      *(v16 + 3) = v18;
      v34 = v13;
      sub_1AB014AC0(v33, &unk_1EB437E60);
      v19._countAndFlagsBits = 0;
      v19._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v19);
      *(v11 + 32) = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1AB4D4720;
      *(&v31 + 1) = v8;
      *&v30 = 0xD000000000000027;
      *(&v30 + 1) = 0x80000001AB501060;
      *(v20 + 48) = 0u;
      *(v20 + 32) = 0u;
      sub_1AB0169C4(&v30, v20 + 32);
      *(v20 + 64) = 0;
      *(v11 + 40) = v20;
      v21 = sub_1AB461094();
      if (os_log_type_enabled(v10, v21))
      {
        if (qword_1EB4359F8 != -1)
        {
          swift_once();
        }

        v22 = off_1EB435A00;
        os_unfair_lock_lock(off_1EB435A00 + 5);
        os_unfair_lock_opaque_low = LOBYTE(v22[4]._os_unfair_lock_opaque);
        os_unfair_lock_unlock(v22 + 5);
        if (os_unfair_lock_opaque_low == 2)
        {
          LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
        }

        v24 = swift_allocObject();
        *(v24 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
        *&v30 = v11;
        *(&v30 + 1) = sub_1AB0223E4;
        *&v31 = v24;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
        sub_1AB016A34();
        v25 = sub_1AB460484();
        v27 = v26;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_1AB4D4720;
        *(v28 + 56) = v8;
        *(v28 + 64) = sub_1AB016854();
        *(v28 + 32) = v25;
        *(v28 + 40) = v27;
        sub_1AB45FF14();
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v35);
    }
  }

  return 0;
}

double sub_1AB0813F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A400);
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A408);
  v1 = swift_allocObject();
  result = 0.0;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v0 + 16) = v1;
  off_1ED4D0818 = v0;
  return result;
}

uint64_t sub_1AB081468()
{
  v0 = sub_1AB4601F4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v14 = v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1AB4601C4();
  v2 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1AB461114();
  v5 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AB4610E4();
  MEMORY[0x1EEE9AC00](v8);
  v11[0] = sub_1AB016760(0, &qword_1ED4D2060);
  v11[1] = "metricsNotificationsEnabled";
  v15 = MEMORY[0x1E69E7CC0];
  sub_1AB0204A8(&qword_1ED4D1F50, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439770);
  sub_1AB01561C(&qword_1ED4D1F68, &unk_1EB439770);
  sub_1AB4614E4();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8098], v12);
  v9 = v13;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E7FA0], v13);
  sub_1AB461164();
  (*(v2 + 8))(v4, v9);
  _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  result = sub_1AB461154();
  qword_1ED4D0CE8 = result;
  return result;
}

uint64_t sub_1AB0817B0()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB43D4E0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  qword_1EB4354A8 = result;
  return result;
}

uint64_t sub_1AB081838(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, char a5, uint64_t a6)
{
  v35 = sub_1AB4601C4();
  v12 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v34 - v16;
  if (qword_1ED4D0CE0 != -1)
  {
    swift_once();
  }

  dispatch_suspend(qword_1ED4D0CE8);
  sub_1AB01494C(a1, &v45);
  sub_1AB0800C4(a2, &v36);
  v18 = swift_allocObject();
  sub_1AB0149B0(&v45, v18 + 16);
  v19 = v42;
  *(v18 + 152) = v41;
  *(v18 + 168) = v19;
  v20 = v44;
  *(v18 + 184) = v43;
  *(v18 + 200) = v20;
  v21 = v38[1];
  *(v18 + 88) = v38[0];
  *(v18 + 104) = v21;
  v22 = v40;
  *(v18 + 120) = v39;
  *(v18 + 136) = v22;
  v23 = v37;
  *(v18 + 56) = v36;
  *(v18 + 72) = v23;
  v24 = a3[1];
  *(v18 + 216) = *a3;
  *(v18 + 232) = v24;
  *(v18 + 248) = a3[2];
  *(v18 + 264) = a4;
  *(v18 + 272) = a5 & 1;
  v25 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  v27 = MEMORY[0x1E69E7CC0];
  *(v25 + 16) = v26;
  *(v25 + 24) = v27;
  *(v25 + 32) = 0;
  *(v25 + 40) = 0;
  v28 = sub_1AB460BE4();
  (*(*(v28 - 8) + 56))(v17, 1, 1, v28);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = &unk_1AB4D4EC0;
  v29[5] = v18;
  v29[6] = v25;
  sub_1AB081D90(a3, &v36);

  sub_1AB39BBA8(0, 0, v17, &unk_1AB4D4EC8, v29);

  v30 = sub_1AB016760(0, &qword_1ED4D2060);
  v31 = v35;
  (*(v12 + 104))(v14, *MEMORY[0x1E69E7FA0], v35);
  swift_retain_n();
  v32 = sub_1AB461164();
  (*(v12 + 8))(v14, v31);
  v46 = v30;
  v47 = &protocol witness table for OS_dispatch_queue;
  *&v45 = v32;
  *&v36 = sub_1AB1606CC;
  *(&v36 + 1) = a6;
  *&v37 = sub_1AB1606D8;
  *(&v37 + 1) = a6;
  sub_1AB01494C(&v45, v38);
  BYTE8(v39) = 0;
  swift_retain_n();
  sub_1AB0800FC(&v36);

  sub_1AB014AC0(&v36, &unk_1EB437970);
  return __swift_destroy_boxed_opaque_existential_1Tm(&v45);
}

uint64_t sub_1AB081CB0()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 88);
  if (*(v0 + 152))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 128);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 168);

  return MEMORY[0x1EEE6BDD0](v0, 273, 7);
}

uint64_t sub_1AB081D48()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AB081DEC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 40) = v7;
  *v7 = v6;
  v7[1] = sub_1AB398FC8;

  return v9(v6 + 16);
}

uint64_t sub_1AB081EE0(uint64_t a1)
{
  v4 = *(v1 + 264);
  v5 = *(v1 + 272);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1AB027460;

  return sub_1AB082078(a1, v1 + 16, v1 + 56, v1 + 216, v4, v5);
}

uint64_t sub_1AB081F9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1AB027460;

  return sub_1AB081DEC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1AB082078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 281) = a6;
  *(v6 + 808) = a5;
  *(v6 + 800) = a4;
  *(v6 + 792) = a3;
  *(v6 + 784) = a2;
  *(v6 + 776) = a1;
  if (qword_1ED4D09A8 != -1)
  {
    swift_once();
  }

  type metadata accessor for MetricsPipeline.CallingOutActor();
  sub_1AB0204A8(&qword_1ED4D09A0, type metadata accessor for MetricsPipeline.CallingOutActor);
  v8 = sub_1AB460AE4();
  *(v6 + 816) = v8;
  *(v6 + 824) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1AB082A90, v8, v7);
}

uint64_t sub_1AB082180()
{
  v0 = sub_1AB461114();
  v24 = *(v0 - 8);
  v25 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v23 = v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1AB4610E4();
  MEMORY[0x1EEE9AC00](v22);
  v21 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1AB4601F4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v19 - v8;
  v10 = sub_1AB4601C4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MetricsPipeline.CallingOutActor();
  v14 = swift_allocObject();
  v19[2] = "E92215CallingOutActor";
  v20 = v14;
  sub_1AB016760(0, &qword_1ED4D2060);
  (*(v11 + 104))(v13, *MEMORY[0x1E69E7FA0], v10);
  v19[1] = sub_1AB461164();
  (*(v11 + 8))(v13, v10);
  _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  type metadata accessor for _DispatchQueueExecutor();
  v15 = swift_allocObject();
  (*(v4 + 16))(v7, v9, v3);
  v26 = MEMORY[0x1E69E7CC0];
  sub_1AB0204A8(&qword_1ED4D1F50, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439770);
  sub_1AB01561C(&qword_1ED4D1F68, &unk_1EB439770);
  sub_1AB4614E4();
  (*(v24 + 104))(v23, *MEMORY[0x1E69E8098], v25);
  v16 = sub_1AB461154();
  result = (*(v4 + 8))(v9, v3);
  *(v15 + 16) = v16;
  v18 = v20;
  *(v20 + 16) = v15;
  qword_1ED4D09B0 = v18;
  return result;
}

uint64_t sub_1AB0825DC()
{
  v1 = *(v0 + 16);
  sub_1AB0204A8(&qword_1ED4D0848, type metadata accessor for _DispatchQueueExecutor);
  return v1;
}

uint64_t sub_1AB082680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = *v4;
  v7 = sub_1AB01CAD8(qword_1ED4D0850, a2, type metadata accessor for _DispatchQueueExecutor);

  return a4(a1, v6, v7);
}

uint64_t _DispatchQueueExecutor.enqueue(_:)(uint64_t a1)
{
  v3 = sub_1AB4601B4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1AB4601F4();
  v7 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *(v1 + 16);
  v11 = sub_1AB01CAD8(&qword_1ED4D0848, v10, type metadata accessor for _DispatchQueueExecutor);
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = v1;
  v12[4] = v11;
  aBlock[4] = sub_1AB082A84;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AB01D528;
  aBlock[3] = &block_descriptor_24;
  v13 = _Block_copy(aBlock);
  _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  v17 = MEMORY[0x1E69E7CC0];
  sub_1AB01CAD8(&qword_1ED4D2050, 255, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438540);
  sub_1AB01CB68(&qword_1ED4D1FB0, &qword_1EB438540);
  sub_1AB4614E4();
  MEMORY[0x1AC59C480](0, v9, v6, v13);
  _Block_release(v13);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v16);
}

uint64_t sub_1AB082A90()
{
  v1 = v0[100];
  sub_1AB01494C(v0[98], (v0 + 56));
  v0[104] = *(v1 + 32);
  v0[105] = *(v1 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1AB082B10, 0, 0);
}

uint64_t sub_1AB082B10()
{
  v1 = v0[101];
  v2 = v0[99];
  v3 = *(v2 + 24);
  v0[90] = *(v2 + 16);
  v0[91] = v3;
  v0[94] = v1;

  v4 = swift_task_alloc();
  v0[106] = v4;
  *v4 = v0;
  v4[1] = sub_1AB0D3DF4;
  v5 = v0[105];
  v6 = v0[104];

  return sub_1AB082BDC(v6, v5, (v0 + 56), v0 + 94);
}

uint64_t sub_1AB082BDC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(v5 + 592) = a3;
  *(v5 + 584) = a2;
  *(v5 + 576) = a1;
  *(v5 + 600) = *a4;
  *(v5 + 608) = *v4;
  return MEMORY[0x1EEE6DFA0](sub_1AB082C14, 0, 0);
}

uint64_t sub_1AB082C14()
{
  v1 = v0 + 328;
  v2 = *(v0 + 576);
  v3 = *(v2 + 32);
  *(v0 + 321) = v3;
  v4 = 1 << v3;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v2 + 56);

  v8 = 0;
  if (v6)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_8:
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_68:
      __break(1u);
      return result;
    }

    if (v10 >= (((1 << *(v0 + 321)) + 63) >> 6))
    {
      v43 = *(v0 + 616);

      v44 = *(v43 + 32);
      *(v0 + 322) = v44;
      v45 = 1 << v44;
      if (v45 < 64)
      {
        v46 = ~(-1 << v45);
      }

      else
      {
        v46 = -1;
      }

      v47 = v46 & *(v43 + 64);

      v48 = 0;
      while (v47)
      {
        v49 = *(v0 + 616);
LABEL_46:
        v54 = __clz(__rbit64(v47));
        v47 &= v47 - 1;
        v55 = v54 | (v48 << 6);
        v56 = (*(v49 + 48) + 16 * v55);
        v57 = *v56;
        v58 = v56[1];
        sub_1AB01494C(*(v49 + 56) + 40 * v55, v0 + 208);
        *(v0 + 72) = v57;
        *(v0 + 80) = v58;
        sub_1AB0149B0((v0 + 208), v0 + 88);

LABEL_47:
        *(v0 + 664) = v48;
        *(v0 + 656) = v47;
        v59 = *(v0 + 88);
        *(v0 + 16) = *(v0 + 72);
        *(v0 + 32) = v59;
        *(v0 + 48) = *(v0 + 104);
        *(v0 + 64) = *(v0 + 120);
        v60 = *(v0 + 24);
        if (!v60)
        {

          v81 = *(v0 + 8);

          return v81();
        }

        v61 = *(v0 + 584);
        v62 = *(v0 + 16);
        sub_1AB0149B0((v0 + 32), v0 + 248);
        if (!*(v61 + 16) || (v63 = *(v0 + 584), sub_1AB4620A4(), sub_1AB460684(), v64 = sub_1AB462104(), v65 = -1 << *(v63 + 32), v66 = v64 & ~v65, ((*(v63 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v66) & 1) == 0))
        {
LABEL_59:
          v71 = *(v0 + 600);

          v72 = *(v0 + 272);
          v73 = *(v0 + 280);
          __swift_project_boxed_opaque_existential_1Tm((v0 + 248), v72);
          *(v0 + 568) = v71;
          v82 = (*(v73 + 16) + **(v73 + 16));
          v74 = swift_task_alloc();
          *(v0 + 672) = v74;
          *v74 = v0;
          v74[1] = sub_1AB08480C;
          v75 = *(v0 + 592);
          v76 = v0 + 568;
          goto LABEL_60;
        }

        v67 = ~v65;
        v68 = *(v0 + 584);
        while (1)
        {
          v69 = (*(v68 + 48) + 16 * v66);
          v70 = *v69 == v62 && v69[1] == v60;
          if (v70 || (sub_1AB461DA4() & 1) != 0)
          {
            break;
          }

          v68 = *(v0 + 584);
          v66 = (v66 + 1) & v67;
          if (((*(v68 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v66) & 1) == 0)
          {
            goto LABEL_59;
          }
        }

        result = __swift_destroy_boxed_opaque_existential_1Tm(v0 + 248);
      }

      v50 = ((1 << *(v0 + 322)) + 63) >> 6;
      if (v50 <= (v48 + 1))
      {
        v51 = v48 + 1;
      }

      else
      {
        v51 = ((1 << *(v0 + 322)) + 63) >> 6;
      }

      v52 = v51 - 1;
      while (1)
      {
        v53 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          goto LABEL_68;
        }

        if (v53 >= v50)
        {
          v47 = 0;
          *(v0 + 120) = 0;
          *(v0 + 104) = 0u;
          *(v0 + 88) = 0u;
          v48 = v52;
          *(v0 + 72) = 0u;
          goto LABEL_47;
        }

        v49 = *(v0 + 616);
        v47 = *(v49 + 8 * v53 + 64);
        ++v48;
        if (v47)
        {
          v48 = v53;
          goto LABEL_46;
        }
      }
    }

    v9 = *(v0 + 576);
    v6 = *(v9 + 8 * v10 + 56);
    ++v8;
  }

  while (!v6);
  v8 = v10;
  while (1)
  {
    *(v0 + 632) = v8;
    *(v0 + 624) = v6;
    v11 = (*(v9 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v6)))));
    v13 = *v11;
    v12 = v11[1];
    v14 = *(*(v0 + 608) + 16);

    if (v14)
    {
      v15 = sub_1AB0370A8(v13, v12);
      if (v16)
      {
        break;
      }
    }

    if (qword_1ED4D1FC0 != -1)
    {
      swift_once();
    }

    v17 = qword_1ED4D1FC8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1AB4D4720;
    v19 = sub_1AB0168A8(0, 47, 0, MEMORY[0x1E69E7CC0]);
    if (("er for request: " & 0x2F00000000000000) != 0x2000000000000000)
    {
      *(v0 + 432) = MEMORY[0x1E69E6158];
      *(v0 + 408) = 0xD00000000000002DLL;
      *(v0 + 416) = 0x80000001AB5008D0;
      *(v0 + 288) = 0u;
      *(v0 + 304) = 0u;
      sub_1AB0169C4(v0 + 408, v0 + 288);
      *(v0 + 320) = 0;
      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      if (v21 >= v20 >> 1)
      {
        v19 = sub_1AB0168A8((v20 > 1), v21 + 1, 1, v19);
      }

      *(v19 + 2) = v21 + 1;
      v22 = &v19[40 * v21];
      v23 = *(v0 + 288);
      v24 = *(v0 + 304);
      v22[64] = *(v0 + 320);
      *(v22 + 2) = v23;
      *(v22 + 3) = v24;
      v1 = v0 + 328;
    }

    *(v0 + 464) = &type metadata for MetricsFieldInclusionRequest;
    *(v0 + 440) = v13;
    *(v0 + 448) = v12;
    sub_1AB01522C(v0 + 440, v0 + 472);
    *v1 = 0u;
    *(v1 + 16) = 0u;
    sub_1AB0169C4(v0 + 472, v1);
    *(v0 + 360) = 1;
    v26 = *(v19 + 2);
    v25 = *(v19 + 3);
    if (v26 >= v25 >> 1)
    {
      v19 = sub_1AB0168A8((v25 > 1), v26 + 1, 1, v19);
    }

    *(v19 + 2) = v26 + 1;
    v27 = &v19[40 * v26];
    v28 = *v1;
    v29 = *(v1 + 16);
    v27[64] = *(v1 + 32);
    *(v27 + 2) = v28;
    *(v27 + 3) = v29;
    sub_1AB014AC0(v0 + 440, &unk_1EB437E60);
    *(v0 + 528) = MEMORY[0x1E69E6158];
    *(v0 + 504) = 96;
    *(v0 + 512) = 0xE100000000000000;
    *(v0 + 368) = 0u;
    *(v0 + 384) = 0u;
    sub_1AB0169C4(v0 + 504, v0 + 368);
    *(v0 + 400) = 0;
    v31 = *(v19 + 2);
    v30 = *(v19 + 3);
    if (v31 >= v30 >> 1)
    {
      v19 = sub_1AB0168A8((v30 > 1), v31 + 1, 1, v19);
    }

    v6 &= v6 - 1;
    *(v19 + 2) = v31 + 1;
    v32 = &v19[40 * v31];
    v33 = *(v0 + 368);
    v34 = *(v0 + 384);
    v32[64] = *(v0 + 400);
    *(v32 + 2) = v33;
    *(v32 + 3) = v34;
    *(v18 + 32) = v19;
    v35 = sub_1AB461074();
    if (os_log_type_enabled(v17, v35))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v36 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v36[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v36 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v38 = swift_allocObject();
      *(v38 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *(v0 + 536) = v18;
      *(v0 + 544) = sub_1AB0223E4;
      *(v0 + 552) = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v39 = sub_1AB460484();
      v41 = v40;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_1AB4D4720;
      *(v42 + 56) = MEMORY[0x1E69E6158];
      *(v42 + 64) = sub_1AB016854();
      *(v42 + 32) = v39;
      *(v42 + 40) = v41;
      sub_1AB45FF14();

      if (!v6)
      {
        goto LABEL_8;
      }
    }

    else
    {

      if (!v6)
      {
        goto LABEL_8;
      }
    }

LABEL_7:
    v9 = *(v0 + 576);
  }

  v77 = *(v0 + 608);
  v78 = *(v0 + 600);
  v79 = v15;

  sub_1AB01494C(*(v77 + 56) + 40 * v79, v0 + 168);
  sub_1AB0149B0((v0 + 168), v0 + 128);
  v72 = *(v0 + 152);
  v73 = *(v0 + 160);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 128), v72);
  *(v0 + 560) = v78;
  v82 = (*(v73 + 16) + **(v73 + 16));
  v80 = swift_task_alloc();
  *(v0 + 640) = v80;
  *v80 = v0;
  v80[1] = sub_1AB0839B8;
  v75 = *(v0 + 592);
  v76 = v0 + 560;
LABEL_60:

  return v82(v75, v76, v72, v73);
}

uint64_t sub_1AB083590(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1AB027460;

  return sub_1AB083624(a1);
}

uint64_t sub_1AB083624(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1AB083644, 0, 0);
}

uint64_t sub_1AB083644()
{
  v27 = v0;
  v1 = v0[8];
  v2 = v0[9];
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v3);
  v5 = (*(v4 + 24))(v3, v4);
  v6 = v5;
  if (!*v2)
  {

    goto LABEL_9;
  }

  if (!*(v5 + 16) || (v7 = sub_1AB014DB4(0x707954746E657665, 0xE900000000000065), (v8 & 1) == 0) || (sub_1AB0165C4(*(v6 + 56) + 32 * v7, (v0 + 2)), (swift_dynamicCast() & 1) == 0))
  {
LABEL_15:

    goto LABEL_16;
  }

  v9 = sub_1AB07EF00(v0[6]);

  if (v9)
  {
LABEL_9:
    v10 = v0[9];
    v11 = v10[4];
    v12 = v10[5];
    __swift_project_boxed_opaque_existential_1Tm(v10 + 1, v11);
    (*(v12 + 8))(&v25, v11, v12);
    v13 = v25;
    if (v25)
    {
      v14 = [v25 ams_DSID];

      if (v14)
      {
        v15 = v0[8];
        v0[5] = sub_1AB083ACC();
        v0[2] = v14;
        v17 = v1[3];
        v16 = v1[4];
        __swift_mutable_project_boxed_opaque_existential_1(v15, v17);
        v18 = *(v16 + 16);
        v19 = v14;
        v18(v0 + 2, 1682535268, 0xE400000000000000, v17, v16);

        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
        goto LABEL_16;
      }
    }

    if (qword_1ED4D1FC0 != -1)
    {
      swift_once();
    }

    v20 = qword_1ED4D1FC8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1AB4D4720;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1AB4D4720;
    v0[5] = MEMORY[0x1E69E6158];
    v0[2] = 0xD00000000000001FLL;
    v0[3] = 0x80000001AB506D50;
    *(v22 + 48) = 0u;
    *(v22 + 32) = 0u;
    sub_1AB0169C4((v0 + 2), v22 + 32);
    *(v22 + 64) = 0;
    *(v21 + 32) = v22;
    v25 = v20;
    v26 = 0;
    OSLogger.log(contentsOf:withLevel:)(v21, &v26);
    goto LABEL_15;
  }

LABEL_16:
  v23 = v0[1];

  return v23();
}

id sub_1AB08397C@<X0>(void *a1@<X8>)
{
  result = [*v1 ams_activeiTunesAccount];
  *a1 = result;
  return result;
}

uint64_t sub_1AB0839B8()
{
  *(*v1 + 648) = v0;

  if (v0)
  {
    v2 = sub_1AB18E53C;
  }

  else
  {
    v2 = sub_1AB083B64;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

unint64_t sub_1AB083ACC()
{
  result = qword_1ED4D1940;
  if (!qword_1ED4D1940)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED4D1940);
  }

  return result;
}

__CFString *JEGestaltGetProductType()
{
  v0 = MGGetStringAnswer();
  v1 = v0;
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v2 = @"Unknown";
  }

  v3 = v2;

  return v2;
}

uint64_t sub_1AB083B64()
{
  v1 = v0 + 328;
  result = __swift_destroy_boxed_opaque_existential_1Tm(v0 + 128);
  v3 = (*(v0 + 624) - 1) & *(v0 + 624);
  v4 = *(v0 + 632);
  v5 = "er for request: " & 0x2F00000000000000;
  if (v3)
  {
    goto LABEL_4;
  }

  do
  {
LABEL_5:
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_65:
      __break(1u);
      return result;
    }

    if (v7 >= (((1 << *(v0 + 321)) + 63) >> 6))
    {
      v40 = *(v0 + 616);

      v41 = *(v40 + 32);
      *(v0 + 322) = v41;
      v42 = 1 << v41;
      if (v42 < 64)
      {
        v43 = ~(-1 << v42);
      }

      else
      {
        v43 = -1;
      }

      v44 = v43 & *(v40 + 64);

      v45 = 0;
      while (v44)
      {
        v46 = *(v0 + 616);
LABEL_43:
        v51 = __clz(__rbit64(v44));
        v44 &= v44 - 1;
        v52 = v51 | (v45 << 6);
        v53 = (*(v46 + 48) + 16 * v52);
        v54 = *v53;
        v55 = v53[1];
        sub_1AB01494C(*(v46 + 56) + 40 * v52, v0 + 208);
        *(v0 + 72) = v54;
        *(v0 + 80) = v55;
        sub_1AB0149B0((v0 + 208), v0 + 88);

LABEL_44:
        *(v0 + 664) = v45;
        *(v0 + 656) = v44;
        v56 = *(v0 + 88);
        *(v0 + 16) = *(v0 + 72);
        *(v0 + 32) = v56;
        *(v0 + 48) = *(v0 + 104);
        *(v0 + 64) = *(v0 + 120);
        v57 = *(v0 + 24);
        if (!v57)
        {

          v78 = *(v0 + 8);

          return v78();
        }

        v58 = *(v0 + 584);
        v59 = *(v0 + 16);
        sub_1AB0149B0((v0 + 32), v0 + 248);
        if (!*(v58 + 16) || (v60 = *(v0 + 584), sub_1AB4620A4(), sub_1AB460684(), v61 = sub_1AB462104(), v62 = -1 << *(v60 + 32), v63 = v61 & ~v62, ((*(v60 + ((v63 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v63) & 1) == 0))
        {
LABEL_56:
          v68 = *(v0 + 600);

          v69 = *(v0 + 272);
          v70 = *(v0 + 280);
          __swift_project_boxed_opaque_existential_1Tm((v0 + 248), v69);
          *(v0 + 568) = v68;
          osloga = (*(v70 + 16) + **(v70 + 16));
          v71 = swift_task_alloc();
          *(v0 + 672) = v71;
          *v71 = v0;
          v71[1] = sub_1AB08480C;
          v72 = *(v0 + 592);
          v73 = v0 + 568;
          goto LABEL_57;
        }

        v64 = ~v62;
        v65 = *(v0 + 584);
        while (1)
        {
          v66 = (*(v65 + 48) + 16 * v63);
          v67 = *v66 == v59 && v66[1] == v57;
          if (v67 || (sub_1AB461DA4() & 1) != 0)
          {
            break;
          }

          v65 = *(v0 + 584);
          v63 = (v63 + 1) & v64;
          if (((*(v65 + ((v63 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v63) & 1) == 0)
          {
            goto LABEL_56;
          }
        }

        result = __swift_destroy_boxed_opaque_existential_1Tm(v0 + 248);
      }

      v47 = ((1 << *(v0 + 322)) + 63) >> 6;
      if (v47 <= (v45 + 1))
      {
        v48 = v45 + 1;
      }

      else
      {
        v48 = ((1 << *(v0 + 322)) + 63) >> 6;
      }

      v49 = v48 - 1;
      while (1)
      {
        v50 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
          goto LABEL_65;
        }

        if (v50 >= v47)
        {
          v44 = 0;
          *(v0 + 120) = 0;
          *(v0 + 104) = 0u;
          *(v0 + 88) = 0u;
          v45 = v49;
          *(v0 + 72) = 0u;
          goto LABEL_44;
        }

        v46 = *(v0 + 616);
        v44 = *(v46 + 8 * v50 + 64);
        ++v45;
        if (v44)
        {
          v45 = v50;
          goto LABEL_43;
        }
      }
    }

    v6 = *(v0 + 576);
    v3 = *(v6 + 8 * v7 + 56);
    ++v4;
  }

  while (!v3);
  v4 = v7;
  while (1)
  {
    *(v0 + 632) = v4;
    *(v0 + 624) = v3;
    v8 = (*(v6 + 48) + ((v4 << 10) | (16 * __clz(__rbit64(v3)))));
    v10 = *v8;
    v9 = v8[1];
    v11 = *(*(v0 + 608) + 16);

    if (v11)
    {
      v12 = sub_1AB0370A8(v10, v9);
      if (v13)
      {
        break;
      }
    }

    if (qword_1ED4D1FC0 != -1)
    {
      swift_once();
    }

    oslog = qword_1ED4D1FC8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1AB4D4720;
    v15 = sub_1AB0168A8(0, 47, 0, MEMORY[0x1E69E7CC0]);
    if (v5 != 0x2000000000000000)
    {
      v16 = v5;
      *(v0 + 432) = MEMORY[0x1E69E6158];
      *(v0 + 408) = 0xD00000000000002DLL;
      *(v0 + 416) = 0x80000001AB5008D0;
      *(v0 + 288) = 0u;
      *(v0 + 304) = 0u;
      sub_1AB0169C4(v0 + 408, v0 + 288);
      *(v0 + 320) = 0;
      v18 = *(v15 + 2);
      v17 = *(v15 + 3);
      if (v18 >= v17 >> 1)
      {
        v15 = sub_1AB0168A8((v17 > 1), v18 + 1, 1, v15);
      }

      *(v15 + 2) = v18 + 1;
      v19 = &v15[40 * v18];
      v20 = *(v0 + 288);
      v21 = *(v0 + 304);
      v19[64] = *(v0 + 320);
      *(v19 + 2) = v20;
      *(v19 + 3) = v21;
      v5 = v16;
      v1 = v0 + 328;
    }

    *(v0 + 464) = &type metadata for MetricsFieldInclusionRequest;
    *(v0 + 440) = v10;
    *(v0 + 448) = v9;
    sub_1AB01522C(v0 + 440, v0 + 472);
    *v1 = 0u;
    *(v1 + 16) = 0u;
    sub_1AB0169C4(v0 + 472, v1);
    *(v0 + 360) = 1;
    v23 = *(v15 + 2);
    v22 = *(v15 + 3);
    if (v23 >= v22 >> 1)
    {
      v15 = sub_1AB0168A8((v22 > 1), v23 + 1, 1, v15);
    }

    *(v15 + 2) = v23 + 1;
    v24 = &v15[40 * v23];
    v25 = *v1;
    v26 = *(v1 + 16);
    v24[64] = *(v1 + 32);
    *(v24 + 2) = v25;
    *(v24 + 3) = v26;
    sub_1AB014AC0(v0 + 440, &unk_1EB437E60);
    *(v0 + 528) = MEMORY[0x1E69E6158];
    *(v0 + 504) = 96;
    *(v0 + 512) = 0xE100000000000000;
    *(v0 + 368) = 0u;
    *(v0 + 384) = 0u;
    sub_1AB0169C4(v0 + 504, v0 + 368);
    *(v0 + 400) = 0;
    v28 = *(v15 + 2);
    v27 = *(v15 + 3);
    if (v28 >= v27 >> 1)
    {
      v15 = sub_1AB0168A8((v27 > 1), v28 + 1, 1, v15);
    }

    v3 &= v3 - 1;
    *(v15 + 2) = v28 + 1;
    v29 = &v15[40 * v28];
    v30 = *(v0 + 368);
    v31 = *(v0 + 384);
    v29[64] = *(v0 + 400);
    *(v29 + 2) = v30;
    *(v29 + 3) = v31;
    *(v14 + 32) = v15;
    v32 = sub_1AB461074();
    if (os_log_type_enabled(oslog, v32))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v33 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v33[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v33 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v35 = swift_allocObject();
      *(v35 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *(v0 + 536) = v14;
      *(v0 + 544) = sub_1AB0223E4;
      *(v0 + 552) = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v36 = sub_1AB460484();
      v38 = v37;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_1AB4D4720;
      *(v39 + 56) = MEMORY[0x1E69E6158];
      *(v39 + 64) = sub_1AB016854();
      *(v39 + 32) = v36;
      *(v39 + 40) = v38;
      sub_1AB45FF14();

      if (!v3)
      {
        goto LABEL_5;
      }
    }

    else
    {

      if (!v3)
      {
        goto LABEL_5;
      }
    }

LABEL_4:
    v6 = *(v0 + 576);
  }

  v74 = *(v0 + 608);
  v75 = *(v0 + 600);
  v76 = v12;

  sub_1AB01494C(*(v74 + 56) + 40 * v76, v0 + 168);
  sub_1AB0149B0((v0 + 168), v0 + 128);
  v69 = *(v0 + 152);
  v70 = *(v0 + 160);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 128), v69);
  *(v0 + 560) = v75;
  osloga = (*(v70 + 16) + **(v70 + 16));
  v77 = swift_task_alloc();
  *(v0 + 640) = v77;
  *v77 = v0;
  v77[1] = sub_1AB0839B8;
  v72 = *(v0 + 592);
  v73 = v0 + 560;
LABEL_57:

  return (osloga)(v72, v73, v69, v70);
}

uint64_t sub_1AB0844C4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v4;
  v5 = *(v2 + 24);
  *(v3 + 16) = *v2;
  *(v3 + 24) = *(v2 + 8);
  *(v3 + 40) = v5;
  return MEMORY[0x1EEE6DFA0](sub_1AB084784, 0, 0);
}

uint64_t ScreenMetricsFieldsProvider.addMetricsFields(into:using:)(void *a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = *(v1 + 3);
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v8);
  v10 = (*(v9 + 24))(v8, v9);
  v11 = v10;
  if (v4 == 0.0)
  {

LABEL_9:
    if (v6 > 0.0 && v5 > 0.0)
    {
      v16 = MEMORY[0x1E69E7DE0];
      v25 = MEMORY[0x1E69E7DE0];
      v24[0] = v7;
      v17 = a1[3];
      v18 = a1[4];
      __swift_mutable_project_boxed_opaque_existential_1(a1, v17);
      (*(v18 + 16))(v24, 0x7461526C65786970, 0xEA00000000006F69, v17, v18);
      result = __swift_destroy_boxed_opaque_existential_1Tm(v24);
      if (!v2)
      {
        v25 = v16;
        *v24 = v6;
        v19 = a1[3];
        v20 = a1[4];
        __swift_mutable_project_boxed_opaque_existential_1(a1, v19);
        (*(v20 + 16))(v24, 0x65486E6565726373, 0xEC00000074686769, v19, v20);
        __swift_destroy_boxed_opaque_existential_1Tm(v24);
        v25 = v16;
        *v24 = v5;
        v21 = a1[3];
        v22 = a1[4];
        __swift_mutable_project_boxed_opaque_existential_1(a1, v21);
        (*(v22 + 16))(v24, 0x69576E6565726373, 0xEB00000000687464, v21, v22);
        return __swift_destroy_boxed_opaque_existential_1Tm(v24);
      }
    }

    return result;
  }

  if (!*(v10 + 16))
  {
  }

  v12 = sub_1AB014DB4(0x707954746E657665, 0xE900000000000065);
  if ((v13 & 1) == 0)
  {
  }

  sub_1AB0165C4(*(v11 + 56) + 32 * v12, v24);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

  v14 = sub_1AB07EF00(v23);

  if (v14)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1AB084784()
{
  ScreenMetricsFieldsProvider.addMetricsFields(into:using:)(*(v0 + 48));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB08480C()
{
  *(*v1 + 680) = v0;

  if (v0)
  {
    v2 = sub_1AB18E5A8;
  }

  else
  {
    v2 = sub_1AB084920;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB084920()
{
  result = __swift_destroy_boxed_opaque_existential_1Tm(v0 + 248);
  v2 = *(v0 + 664);
  v3 = *(v0 + 656);
  while (v3)
  {
    v4 = *(v0 + 616);
LABEL_13:
    v9 = __clz(__rbit64(v3));
    v3 &= v3 - 1;
    v10 = v9 | (v2 << 6);
    v11 = (*(v4 + 48) + 16 * v10);
    v12 = *v11;
    v13 = v11[1];
    sub_1AB01494C(*(v4 + 56) + 40 * v10, v0 + 208);
    *(v0 + 72) = v12;
    *(v0 + 80) = v13;
    sub_1AB0149B0((v0 + 208), v0 + 88);

LABEL_14:
    *(v0 + 664) = v2;
    *(v0 + 656) = v3;
    v14 = *(v0 + 88);
    *(v0 + 16) = *(v0 + 72);
    *(v0 + 32) = v14;
    *(v0 + 48) = *(v0 + 104);
    *(v0 + 64) = *(v0 + 120);
    v15 = *(v0 + 24);
    if (!v15)
    {

      v31 = *(v0 + 8);

      return v31();
    }

    v16 = *(v0 + 584);
    v17 = *(v0 + 16);
    sub_1AB0149B0((v0 + 32), v0 + 248);
    if (!*(v16 + 16) || (v18 = *(v0 + 584), sub_1AB4620A4(), sub_1AB460684(), v19 = sub_1AB462104(), v20 = -1 << *(v18 + 32), v21 = v19 & ~v20, ((*(v18 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v21) & 1) == 0))
    {
LABEL_26:
      v26 = *(v0 + 600);

      v27 = *(v0 + 272);
      v28 = *(v0 + 280);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 248), v27);
      *(v0 + 568) = v26;
      v32 = (*(v28 + 16) + **(v28 + 16));
      v29 = swift_task_alloc();
      *(v0 + 672) = v29;
      *v29 = v0;
      v29[1] = sub_1AB08480C;
      v30 = *(v0 + 592);

      return v32(v30, v0 + 568, v27, v28);
    }

    v22 = ~v20;
    v23 = *(v0 + 584);
    while (1)
    {
      v24 = (*(v23 + 48) + 16 * v21);
      v25 = *v24 == v17 && v24[1] == v15;
      if (v25 || (sub_1AB461DA4() & 1) != 0)
      {
        break;
      }

      v23 = *(v0 + 584);
      v21 = (v21 + 1) & v22;
      if (((*(v23 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v21) & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    result = __swift_destroy_boxed_opaque_existential_1Tm(v0 + 248);
  }

  v5 = ((1 << *(v0 + 322)) + 63) >> 6;
  if (v5 <= (v2 + 1))
  {
    v6 = v2 + 1;
  }

  else
  {
    v6 = ((1 << *(v0 + 322)) + 63) >> 6;
  }

  v7 = v6 - 1;
  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= v5)
    {
      v3 = 0;
      *(v0 + 120) = 0;
      *(v0 + 104) = 0u;
      *(v0 + 88) = 0u;
      v2 = v7;
      *(v0 + 72) = 0u;
      goto LABEL_14;
    }

    v4 = *(v0 + 616);
    v3 = *(v4 + 8 * v8 + 64);
    ++v2;
    if (v3)
    {
      v2 = v8;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB084CA0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1AB084FA0, 0, 0);
}

uint64_t SystemInfoMetricsFieldsProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  v3 = MEMORY[0x1E69E6158];
  v33 = MEMORY[0x1E69E6158];
  v31 = 5459817;
  v32 = 0xE300000000000000;
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 16))(&v31, 29551, 0xE200000000000000, v4, v5);
  result = __swift_destroy_boxed_opaque_existential_1Tm(&v31);
  if (!v1)
  {
    v7 = JEGestaltGetDeviceClass();
    v8 = sub_1AB460544();
    v10 = v9;

    v33 = v3;
    v31 = v8;
    v32 = v10;
    v11 = *(a1 + 24);
    v12 = *(a1 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a1, v11);
    (*(v12 + 16))(&v31, 0x6572617764726168, 0xEE00796C696D6146, v11, v12);
    __swift_destroy_boxed_opaque_existential_1Tm(&v31);
    v13 = JEGestaltGetProductType();
    v14 = sub_1AB460544();
    v16 = v15;

    v33 = v3;
    v31 = v14;
    v32 = v16;
    v17 = *(a1 + 24);
    v18 = *(a1 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a1, v17);
    (*(v18 + 16))(&v31, 0x6572617764726168, 0xED00006C65646F4DLL, v17, v18);
    __swift_destroy_boxed_opaque_existential_1Tm(&v31);
    v19 = JEGestaltGetBuildVersion();
    v20 = sub_1AB460544();
    v22 = v21;

    v33 = v3;
    v31 = v20;
    v32 = v22;
    v23 = *(a1 + 24);
    v24 = *(a1 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a1, v23);
    (*(v24 + 16))(&v31, 0x4E646C697542736FLL, 0xED00007265626D75, v23, v24);
    __swift_destroy_boxed_opaque_existential_1Tm(&v31);
    v25 = JEGestaltGetSystemVersion();
    v26 = sub_1AB460544();
    v28 = v27;

    v33 = v3;
    v31 = v26;
    v32 = v28;
    v29 = *(a1 + 24);
    v30 = *(a1 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a1, v29);
    (*(v30 + 16))(&v31, 0x6F6973726556736FLL, 0xE90000000000006ELL, v29, v30);
    return __swift_destroy_boxed_opaque_existential_1Tm(&v31);
  }

  return result;
}

uint64_t sub_1AB084FA0()
{
  SystemInfoMetricsFieldsProvider.addMetricsFields(into:using:)(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

__CFString *JEGestaltGetDeviceClass()
{
  v0 = MGGetStringAnswer();
  v1 = v0;
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v2 = @"Unknown";
  }

  v3 = v2;

  return v2;
}

id JEGestaltGetSystemVersion()
{
  v4 = 0uLL;
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = v0;
  if (v0)
  {
    [v0 operatingSystemVersion];
  }

  else
  {
    v4 = 0uLL;
  }

  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld.%ld.%ld", v4, 0];

  return v2;
}

uint64_t sub_1AB08511C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1AB027460;

  return AppVersionFieldProvider.addExpensiveMetricsFields(into:using:)(a1);
}

uint64_t AppVersionFieldProvider.addExpensiveMetricsFields(into:using:)(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 120) = a1;
  *(v2 + 128) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1AB0851D4, 0, 0);
}

uint64_t sub_1AB0851D4()
{
  v26 = v0;
  v1 = [*(v0 + 128) infoDictionary];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1AB4602F4();

    if (*(v3 + 16))
    {
      v4 = sub_1AB014DB4(0xD00000000000001ALL, 0x80000001AB505D50);
      if (v5)
      {
        v6 = *(v0 + 120);
        sub_1AB0165C4(*(v3 + 56) + 32 * v4, v0 + 56);

        sub_1AB014B78((v0 + 56), (v0 + 16));
        v7 = *(v6 + 24);
        v8 = *(v6 + 32);
        __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
        (*(v8 + 16))(v0 + 16, 0x6973726556707061, 0xEA00000000006E6FLL, v7, v8);
        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
        goto LABEL_13;
      }
    }
  }

  if (qword_1ED4D1FC0 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AB4D47F0;
  v24 = sub_1AB0168A8(0, 46, 0, MEMORY[0x1E69E7CC0]);
  v11._countAndFlagsBits = 0xD00000000000002DLL;
  v11._object = 0x80000001AB505D00;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  *(v0 + 80) = sub_1AB0A96EC();
  *(v0 + 56) = v9;
  sub_1AB01522C(v0 + 56, v0 + 88);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  v12 = v9;
  sub_1AB0169C4(v0 + 88, v0 + 16);
  *(v0 + 48) = 1;
  v13 = v24;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_1AB0168A8(0, *(v24 + 2) + 1, 1, v24);
  }

  v14 = MEMORY[0x1E69E6158];
  v16 = *(v13 + 2);
  v15 = *(v13 + 3);
  if (v16 >= v15 >> 1)
  {
    v13 = sub_1AB0168A8((v15 > 1), v16 + 1, 1, v13);
  }

  *(v13 + 2) = v16 + 1;
  v17 = &v13[40 * v16];
  v18 = *(v0 + 16);
  v19 = *(v0 + 32);
  v17[64] = *(v0 + 48);
  *(v17 + 2) = v18;
  *(v17 + 3) = v19;
  sub_1AB0167A8(v0 + 56);
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v20);
  *(v10 + 32) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1AB4D4720;
  *(v0 + 40) = v14;
  *(v0 + 16) = 0xD000000000000017;
  *(v0 + 24) = 0x80000001AB505D30;
  *(v21 + 48) = 0u;
  *(v21 + 32) = 0u;
  sub_1AB0169C4(v0 + 16, v21 + 32);
  *(v21 + 64) = 0;
  *(v10 + 40) = v21;
  v25 = 0;
  OSLogger.log(contentsOf:withLevel:)(v10, &v25);

LABEL_13:
  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1AB085568(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3[3] = a1;
  v3[4] = v4;
  v3[2] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1AB085594, 0, 0);
}

uint64_t sub_1AB085594()
{
  CapacityMetricsFieldsProvider.addMetricsFields(into:using:)(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t CapacityMetricsFieldsProvider.addMetricsFields(into:using:)(void *a1)
{
  v4 = *v1;
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v5);
  v7 = (*(v6 + 24))(v5, v6);
  v8 = v7;
  if (!v4)
  {

LABEL_9:
    v13 = JEGestaltGetTotalSystemCapacity();
    v14 = [v13 integerValue];

    v15 = MEMORY[0x1E69E6530];
    v36 = MEMORY[0x1E69E6530];
    v35[0] = v14;
    v16 = a1[3];
    v17 = a1[4];
    __swift_mutable_project_boxed_opaque_existential_1(a1, v16);
    (*(v17 + 16))(v35, 0x7974696361706163, 0xEE006D6574737953, v16, v17);
    result = __swift_destroy_boxed_opaque_existential_1Tm(v35);
    if (!v2)
    {
      v18 = JEGestaltGetTotalSystemAvailable();
      v19 = [v18 integerValue];

      v36 = v15;
      v35[0] = v19;
      v20 = a1[3];
      v21 = a1[4];
      __swift_mutable_project_boxed_opaque_existential_1(a1, v20);
      (*(v21 + 16))(v35, 0xD000000000000017, 0x80000001AB509B50, v20, v21);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      v22 = JEGestaltGetTotalDataCapacity();
      v23 = [v22 integerValue];

      v36 = v15;
      v35[0] = v23;
      v24 = a1[3];
      v25 = a1[4];
      __swift_mutable_project_boxed_opaque_existential_1(a1, v24);
      (*(v25 + 16))(v35, 0x7974696361706163, 0xEC00000061746144, v24, v25);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      v26 = JEGestaltGetTotalDataAvailable();
      v27 = [v26 integerValue];

      v36 = v15;
      v35[0] = v27;
      v28 = a1[3];
      v29 = a1[4];
      __swift_mutable_project_boxed_opaque_existential_1(a1, v28);
      (*(v29 + 16))(v35, 0xD000000000000015, 0x80000001AB509B70, v28, v29);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      v30 = JEGestaltGetTotalDiskCapacity();
      v31 = [v30 integerValue];

      v36 = v15;
      v35[0] = v31;
      v32 = a1[3];
      v33 = a1[4];
      __swift_mutable_project_boxed_opaque_existential_1(a1, v32);
      (*(v33 + 16))(v35, 0x7974696361706163, 0xEC0000006B736944, v32, v33);
      return __swift_destroy_boxed_opaque_existential_1Tm(v35);
    }

    return result;
  }

  if (!*(v7 + 16))
  {
  }

  v9 = sub_1AB014DB4(0x707954746E657665, 0xE900000000000065);
  if ((v10 & 1) == 0)
  {
  }

  sub_1AB0165C4(*(v8 + 56) + 32 * v9, v35);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

  v11 = sub_1AB07EF00(v34);

  if (v11)
  {
    goto LABEL_9;
  }

  return result;
}

void *JEGestaltGetTotalSystemCapacity()
{
  v0 = JEGestaltDiskUsageForKey(*MEMORY[0x1E69E5138]);
  v1 = v0;
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v2 = &unk_1F2027100;
  }

  v3 = v2;

  return v2;
}

id JEGestaltDiskUsageForKey(uint64_t a1)
{
  v2 = MGCopyAnswer();
  v3 = [v2 objectForKey:a1];

  return v3;
}

void *JEGestaltGetTotalSystemAvailable()
{
  v0 = JEGestaltDiskUsageForKey(*MEMORY[0x1E69E5130]);
  v1 = v0;
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v2 = &unk_1F2027100;
  }

  v3 = v2;

  return v2;
}

void *JEGestaltGetTotalDataCapacity()
{
  v0 = JEGestaltDiskUsageForKey(*MEMORY[0x1E69E5120]);
  v1 = v0;
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v2 = &unk_1F2027100;
  }

  v3 = v2;

  return v2;
}

void *JEGestaltGetTotalDataAvailable()
{
  v0 = JEGestaltDiskUsageForKey(*MEMORY[0x1E69E5118]);
  v1 = v0;
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v2 = &unk_1F2027100;
  }

  v3 = v2;

  return v2;
}

void *JEGestaltGetTotalDiskCapacity()
{
  v0 = JEGestaltDiskUsageForKey(*MEMORY[0x1E69E5128]);
  v1 = v0;
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v2 = &unk_1F2027118;
  }

  v3 = v2;

  return v2;
}

uint64_t sub_1AB085C04(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AB027460;

  return sub_1AB085CA0(a1, v6, v4);
}

uint64_t sub_1AB085CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 64) = a1;
  *(v3 + 72) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1AB085CC0, 0, 0);
}

uint64_t sub_1AB085CC0()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v3);
  v5 = (*(v4 + 24))(v3, v4);
  v6 = v5;
  if (!v2)
  {

LABEL_9:
    v10 = v0[8];
    v0[5] = MEMORY[0x1E69E6158];
    v0[2] = 7628138;
    v0[3] = 0xE300000000000000;
    v12 = v1[3];
    v11 = v1[4];
    __swift_mutable_project_boxed_opaque_existential_1(v10, v12);
    (*(v11 + 16))(v0 + 2, 0x654D646E65537078, 0xEC000000646F6874, v12, v11);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
    goto LABEL_10;
  }

  if (!*(v5 + 16) || (v7 = sub_1AB014DB4(0x707954746E657665, 0xE900000000000065), (v8 & 1) == 0) || (sub_1AB0165C4(*(v6 + 56) + 32 * v7, (v0 + 2)), (swift_dynamicCast() & 1) == 0))
  {

    goto LABEL_10;
  }

  v9 = sub_1AB07EF00(v0[6]);

  if (v9)
  {
    goto LABEL_9;
  }

LABEL_10:
  v13 = v0[1];

  return v13();
}

uint64_t sub_1AB085E98(uint64_t a1, uint64_t *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AB027460;

  return XPSamplingFieldsProvider.addExpensiveMetricsFields(into:using:)(a1, a2);
}

uint64_t sub_1AB085F3C(uint64_t a1, uint64_t *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AB027460;

  return sub_1AB085FE0(a1, a2);
}

uint64_t sub_1AB085FE0(uint64_t a1, uint64_t *a2)
{
  v3[55] = a1;
  v3[56] = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439498);
  v3[57] = v5;
  v3[58] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *a2;
  v3[59] = v6;
  v3[60] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1AB0860B4, 0, 0);
}

uint64_t sub_1AB0860B4()
{
  v32 = v0;
  v1 = *(v0 + 440);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  v4 = (*(v3 + 24))(v2, v3);
  sub_1AB028F9C(&unk_1F1FF3348);
  sub_1AB0360C8(&unk_1F1FF3368);
  if (!*(v4 + 16) || (v5 = sub_1AB014DB4(0x707954746E657665, 0xE900000000000065), (v6 & 1) == 0) || (sub_1AB0165C4(*(v4 + 56) + 32 * v5, v0 + 224), (swift_dynamicCast() & 1) == 0))
  {

    goto LABEL_9;
  }

  v7 = sub_1AB07EF00(*(v0 + 408));

  if ((v7 & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = *(v0 + 448);
  v10 = v1[3];
  v9 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(*(v0 + 440), v10);
  v11 = (*(v9 + 24))(v10, v9);
  v12 = *v8;
  *(v0 + 488) = *v8;
  v13 = v8[1];
  *(v0 + 496) = v13;
  if (*(v11 + 16))
  {
    v14 = sub_1AB014DB4(v12, v13);
    if (v15)
    {
      sub_1AB0165C4(*(v11 + 56) + 32 * v14, v0 + 256);

      sub_1AB0167A8(v0 + 256);
      goto LABEL_9;
    }
  }

  v18 = *(v0 + 480);

  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  sub_1AB0167A8(v0 + 256);
  v19 = sub_1AB1A5BB8(0xD00000000000002BLL, 0x80000001AB502C30, v18);
  if (v19 != 2 && (v19 & 1) != 0)
  {
LABEL_9:

    v16 = *(v0 + 8);

    return v16();
  }

  v21 = *(v0 + 464);
  v20 = *(v0 + 472);
  v23 = *(v0 + 448);
  v22 = *(v0 + 456);
  v24 = v23[7];
  v25 = v23[8];
  __swift_project_boxed_opaque_existential_1Tm(v23 + 4, v24);
  (*(v25 + 8))(&v31, v24, v25);
  v26 = v31;
  v27 = objc_opt_self();
  v28 = sub_1AB460514();
  v29 = [v27 identifierStoreWithAccount:v26 bagNamespace:v28 bag:v23[9]];
  *(v0 + 504) = v29;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 424;
  *(v0 + 24) = sub_1AB26772C;
  swift_continuation_init();
  *(v0 + 136) = v22;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 112));
  sub_1AB267EF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0);
  sub_1AB460AF4();
  (*(v21 + 32))(boxed_opaque_existential_0, v20, v22);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1AB267E48;
  *(v0 + 104) = &block_descriptor_17;
  [v29 resultWithCompletion_];
  (*(v21 + 8))(boxed_opaque_existential_0, v22);

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1AB0864FC(uint64_t a1, uint64_t *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AB027460;

  return sub_1AB0865A0(a1, a2);
}

uint64_t sub_1AB0865A0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3[10] = a1;
  v3[11] = v4;
  v5 = v2[1];
  v3[12] = *v2;
  v3[13] = v5;
  return MEMORY[0x1EEE6DFA0](sub_1AB0865CC, 0, 0);
}

uint64_t sub_1AB0865CC()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1Tm(v2, v3);
  v5 = (*(v4 + 24))(v3, v4);
  LOBYTE(v1) = sub_1AB08675C(v5, v1);

  if (v1)
  {
    v6 = v0[11];
    v0[9] = v0[13];
    swift_unknownObjectRetain();
    v7 = sub_1AB080F70(0xD000000000000019, 0x80000001AB4FF760, v6);
    v9 = v8;
    v0[14] = v8;
    v10 = swift_task_alloc();
    v0[15] = v10;
    *v10 = v0;
    v10[1] = sub_1AB1DCB3C;

    return sub_1AB086D7C(0xD00000000000001DLL, 0x80000001AB502480, v7, v9);
  }

  else
  {
    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1AB08675C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a1 + 16) && (v3 = sub_1AB014DB4(0x707954746E657665, 0xE900000000000065), (v4 & 1) != 0) && (sub_1AB0165C4(*(a1 + 56) + 32 * v3, v8), (swift_dynamicCast() & 1) != 0))
    {
      v5 = sub_1AB07EF00(v7);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5 & 1;
}

uint64_t sub_1AB08681C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1AB027460;

  return sub_1AB0868B0(a1);
}

uint64_t sub_1AB0868B0(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1AB0868D0, 0, 0);
}

uint64_t sub_1AB0868D0()
{
  v23 = v0;
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v3);
  v5 = (*(v4 + 24))(v3, v4);
  v6 = v5;
  if (!*v2)
  {

LABEL_9:
    v10 = *(v0 + 72);
    v11 = v10[4];
    v12 = v10[5];
    __swift_project_boxed_opaque_existential_1Tm(v10 + 1, v11);
    (*(v12 + 8))(v22, v11, v12);
    v13 = v22[0];
    if (v22[0] && (v14 = [v22[0] ams_DSID], v13, v14))
    {
      v15 = [v14 integerValue];

      v16 = v15 != 0;
    }

    else
    {
      v16 = 0;
    }

    v17 = *(v0 + 64);
    *(v0 + 40) = MEMORY[0x1E69E6370];
    *(v0 + 16) = v16;
    v19 = v1[3];
    v18 = v1[4];
    __swift_mutable_project_boxed_opaque_existential_1(v17, v19);
    (*(v18 + 16))(v0 + 16, 0x64656E6769537369, 0xEA00000000006E49, v19, v18);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
    goto LABEL_14;
  }

  if (!*(v5 + 16) || (v7 = sub_1AB014DB4(0x707954746E657665, 0xE900000000000065), (v8 & 1) == 0) || (sub_1AB0165C4(*(v6 + 56) + 32 * v7, v0 + 16), (swift_dynamicCast() & 1) == 0))
  {

    goto LABEL_14;
  }

  v9 = sub_1AB07EF00(*(v0 + 48));

  if (v9)
  {
    goto LABEL_9;
  }

LABEL_14:
  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1AB086B24(uint64_t a1, uint64_t *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AB027460;

  return sub_1AB086BC8(a1, a2);
}

uint64_t sub_1AB086BC8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3[19] = a1;
  v3[20] = v4;
  v5 = v2[1];
  v3[21] = *v2;
  v3[22] = v5;
  return MEMORY[0x1EEE6DFA0](sub_1AB086BF4, 0, 0);
}

uint64_t sub_1AB086BF4()
{
  v1 = v0[21];
  v2 = v0[19];
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1Tm(v2, v3);
  v5 = (*(v4 + 24))(v3, v4);
  LOBYTE(v1) = sub_1AB08675C(v5, v1);

  if (v1)
  {
    v6 = v0[20];
    v0[18] = v0[22];
    swift_unknownObjectRetain();
    v7 = sub_1AB080F70(0xD000000000000019, 0x80000001AB4FF760, v6);
    v9 = v8;
    v0[23] = v8;
    v10 = swift_task_alloc();
    v0[24] = v10;
    *v10 = v0;
    v10[1] = sub_1AB0D0A04;

    return sub_1AB086D7C(0x7165724674736F70, 0xED000079636E6575, v7, v9);
  }

  else
  {
    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1AB086D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a3;
  v5[8] = a4;
  v5[5] = a1;
  v5[6] = a2;
  v5[9] = *v4;
  return MEMORY[0x1EEE6DFA0](sub_1AB086DA8, 0, 0);
}

uint64_t sub_1AB086DA8()
{
  v1 = v0[9];
  if (v0[8])
  {
    v2 = v0[6];
    v3 = v0[5];
    MEMORY[0x1AC59BA20](v0[7]);
    MEMORY[0x1AC59BA20](47, 0xE100000000000000);
    MEMORY[0x1AC59BA20](v3, v2);
    v4 = sub_1AB460514();

    v5 = [v1 integerForKey_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4386C0);
    v6 = swift_allocObject();
    v0[10] = v6;
    v6[2] = v5;
    v6[3] = sub_1AB0D08A8;
    v6[4] = 0;
    v7 = swift_task_alloc();
    v0[11] = v7;
    *v7 = v0;
    v8 = sub_1AB0D05F0;
  }

  else
  {
    MEMORY[0x1AC59BA20](v0[5], v0[6]);
    v9 = sub_1AB460514();

    v10 = [v1 integerForKey_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4386C0);
    v6 = swift_allocObject();
    v0[12] = v6;
    v6[2] = v10;
    v6[3] = sub_1AB0D08A8;
    v6[4] = 0;
    v7 = swift_task_alloc();
    v0[13] = v7;
    *v7 = v0;
    v8 = sub_1AB0D08D8;
  }

  v7[1] = v8;

  return sub_1AB087008(v6);
}

uint64_t sub_1AB087028()
{
  *(v0 + 296) = (*(**(v0 + 288) + 88))();

  return MEMORY[0x1EEE6DFA0](sub_1AB0870B4, 0, 0);
}

uint64_t sub_1AB0870B4()
{
  v1 = v0 + 2;
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_1AB0D049C;
  v0[10] = swift_continuation_init();
  v2 = (v0 + 10);
  *(v2 + 72) = 1;
  sub_1AB087180(v2);
  sub_1AB014AC0(v2, &unk_1EB439940);

  return MEMORY[0x1EEE6DEC8](v1);
}

void sub_1AB087180(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  if (*(v1 + 33) > 1u)
  {
    if (*(v1 + 33) == 2)
    {
      v15 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AA33C(v4);
      v16 = v4;
      v17 = v5;
      v18 = 2;
    }

    else
    {
      v19 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AA33C(v4);
      v16 = v4;
      v17 = v5;
      v18 = 3;
    }

    sub_1AB06DD90(v16, v17, v18);
  }

  else if (*(v1 + 33))
  {
    os_unfair_lock_unlock(v3 + 4);
    sub_1AB0D0084(v4, v5 & 1);
  }

  else
  {
    sub_1AB014A58(a1, v20, &unk_1EB439940);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1AB087338(0, v4[2] + 1, 1, v4);
    }

    v7 = v4[2];
    v6 = v4[3];
    if (v7 >= v6 >> 1)
    {
      v4 = sub_1AB087338((v6 > 1), v7 + 1, 1, v4);
    }

    v4[2] = v7 + 1;
    v8 = &v4[10 * v7];
    v8[2] = v20[0];
    v9 = v20[1];
    v10 = v20[2];
    v11 = v21[0];
    *(v8 + 89) = *(v21 + 9);
    v8[4] = v10;
    v8[5] = v11;
    v8[3] = v9;
    v12 = *(v1 + 24);
    *(v1 + 24) = v4;
    v13 = *(v1 + 33);
    v14 = *(v1 + 32);
    *(v1 + 32) = 0;
    sub_1AB06DD90(v12, v14, v13);
    os_unfair_lock_unlock(v3 + 4);
  }
}

uint64_t sub_1AB08735C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_1AB16E9E0;
  }

  else
  {
    v2 = sub_1AB08746C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB08746C()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 192);

  return v1(v2);
}

uint64_t sub_1AB0874E0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_1AB16ED6C;
  }

  else
  {
    *(v4 + 88) = a1;
    v5 = sub_1AB0876AC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_1AB087608(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB436D20);
    sub_1AB460B04();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB436D20);
    sub_1AB460B14();
  }
}

uint64_t sub_1AB0876AC()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  v7 = *(v0 + 16);
  v8 = *(v0 + 96);
  v9 = [*(v0 + 64) initWithConfiguration_];

  LOBYTE(v14) = v8;
  v10 = v9;
  v11 = sub_1AB087834(v7, v6);
  sub_1AB0877D0(v5, v4, v3, v2, v8);
  [v10 setProtocolHandler_];
  swift_unknownObjectRelease();
  [v10 setResponseDecoder_];

  v12 = *(v0 + 8);

  return v12(v10);
}

uint64_t sub_1AB0877D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 1)
  {
  }

  else if (!a5)
  {
  }

  return result;
}

id sub_1AB087834(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  v4 = v2[1];
  v7 = v3[2];
  v6 = v3[3];
  v8 = *(v3 + 32);
  if (v8)
  {
    if (v8 == 1)
    {
      return (v5)();
    }

    else if (v7 | v4 | v5 | v6)
    {
      return [objc_allocWithZone(MEMORY[0x1E698CB78]) init];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (v6)
    {
      v11 = objc_allocWithZone(MEMORY[0x1E698C9E8]);
      v12 = sub_1AB460514();
      v13 = sub_1AB460514();
      v14 = [v11 initWithClientIdentifier:v12 keychainAccessGroup:v13 bag:a2];
    }

    else
    {
      v15 = objc_allocWithZone(MEMORY[0x1E698C9E8]);
      v16 = sub_1AB460514();
      v14 = [v15 initWithClientIdentifier:v16 bag:a2];
    }

    v17 = [objc_allocWithZone(MEMORY[0x1E698C9B8]) initWithTokenService_];

    return v17;
  }
}

void *_s9JetEngine23AMSMetricsEventRecorderC3bag12defaultTopicAcA3BagV_SStcfC_0(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = [objc_opt_self() ams_sharedAccountStore];
  v17 = sub_1AB016760(0, &qword_1ED4D1F60);
  v18 = &protocol witness table for ACAccountStore;
  *&v16 = v6;
  type metadata accessor for AMSMetricsEventRecorder();
  v7 = swift_allocObject();
  v7[12] = 0;
  v7[13] = 0;
  v8 = [v5 profile];
  sub_1AB460544();

  v9 = [v5 profileVersion];
  sub_1AB460544();

  v10 = objc_allocWithZone(MEMORY[0x1E698CA00]);
  v11 = sub_1AB460514();

  v12 = [v10 initWithContainerID:v11 bag:v5];

  v13 = AMSMetrics.withRemoteInspection.getter();
  v7[2] = v13;
  v14 = [objc_allocWithZone(MEMORY[0x1E698C8D8]) initWithBag_];
  swift_unknownObjectRelease();
  v7[3] = v14;
  v7[4] = a2;
  v7[5] = a3;
  v7[11] = MEMORY[0x1E69E7CD0];
  sub_1AB0149B0(&v16, (v7 + 6));
  return v7;
}

void *sub_1AB087B48(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AB087C0C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t JSStack.__allocating_init(prerequisites:virtualMachine:)(uint64_t a1, void *a2)
{
  memset(v6, 0, sizeof(v6));
  v4 = swift_allocObject();
  JSStack.init(prerequisites:sentryConfiguration:virtualMachine:)(a1, v6, a2);
  return v4;
}

void sub_1AB087D40(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(v5 + 16);
  os_unfair_lock_lock(v8 + 4);
  swift_beginAccess();
  if (*(v5 + 32) == 3)
  {
    os_unfair_lock_unlock(v8 + 4);
  }

  else if (*(v5 + 32))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v9 = *(v5 + 24);
    *(v5 + 24) = a1;
    *(v5 + 32) = 1;
    v25 = a1;
    os_unfair_lock_unlock(v8 + 4);
    v10 = v9[2];
    if (v10)
    {
      v22 = v9;
      v23 = a2;
      v11 = (v9 + 4);
      do
      {
        sub_1AB014A58(v11, v32, a2);
        sub_1AB014A58(v32, v29, a2);
        v13 = v29[0];
        if (v31)
        {
          **(*(v29[0] + 64) + 40) = v25;
          v12 = v25;
          swift_continuation_throwingResume();
          sub_1AB014AC0(v32, a2);
        }

        else
        {
          v14 = v29[1];

          sub_1AB0149B0(&v30, v26);
          v16 = v27;
          v15 = v28;
          __swift_project_boxed_opaque_existential_1Tm(v26, v27);
          v17 = swift_allocObject();
          v17[2] = v13;
          v17[3] = v14;
          v17[4] = v25;
          v18 = *(v15 + 8);
          v19 = v25;

          v20 = v15;
          a2 = v23;
          v18(a5, v17, v16, v20);

          sub_1AB014AC0(v32, v23);
          __swift_destroy_boxed_opaque_existential_1Tm(v26);
        }

        v11 += 80;
        --v10;
      }

      while (v10);
      v21 = v22;
    }

    else
    {
      v21 = v9;
    }

    sub_1AB0171C8(v21, 0);
  }
}

id sub_1AB087FF4()
{
  v0 = [objc_opt_self() currentThread];
  v1 = [v0 threadDictionary];
  v2 = sub_1AB460514();
  v3 = [v1 objectForKeyedSubscript_];

  if (v3)
  {
    sub_1AB461494();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {

    goto LABEL_15;
  }

  sub_1AB016760(0, &qword_1EB435730);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return 0;
  }

  if ([v5 nonretainedObjectValue])
  {
    sub_1AB461494();

    swift_unknownObjectRelease();
  }

  else
  {

    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
LABEL_15:
    sub_1AB0167A8(&v8);
    return 0;
  }

  type metadata accessor for RunLoopWorkerThread();
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void JSPromise.init(in:executor:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, JSValue *a4@<X8>)
{
  v8 = [a1 globalObject];
  if (!v8)
  {
    __break(1u);
    goto LABEL_10;
  }

  v9 = v8;
  v10 = sub_1AB460514();
  v11 = [v9 valueForProperty_];

  if (!v11)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v28[3] = &type metadata for JSStrongReference;
  v28[4] = &protocol witness table for JSStrongReference;
  v28[0] = v11;
  v12 = v11;
  JSConstructable.init(_:)(v28, &v23);
  if (!*(&v24 + 1))
  {
    sub_1AB014AC0(&v23, &qword_1EB43A7D0);
    sub_1AB0C3EF0();
    swift_allocError();
    LOBYTE(v28[0]) = 1;
    v27 = 1;
    *v22 = 0xD000000000000031;
    *(v22 + 8) = 0x80000001AB5089D0;
    *(v22 + 16) = 0;
    *(v22 + 24) = 1;
    *(v22 + 32) = 0;
    *(v22 + 40) = 1;
    *(v22 + 48) = 0u;
    *(v22 + 64) = 0u;
    *(v22 + 80) = 0u;
    *(v22 + 96) = 0;
    swift_willThrow();

    return;
  }

  v29[0] = v23;
  v29[1] = v24;
  v30 = v25;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1AB088840;
  *(v14 + 24) = v13;
  v25 = sub_1AB054C14;
  v26 = v14;
  *&v23 = MEMORY[0x1E69E9820];
  *(&v23 + 1) = 1107296256;
  *&v24 = sub_1AB054BC4;
  *(&v24 + 1) = &block_descriptor_28;
  v15 = _Block_copy(&v23);

  v16 = [objc_opt_self() valueWithObject:v15 inContext:a1];
  if (!v16)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v17 = v16;
  _Block_release(v15);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436BF0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1AB4D4720;
  *(v18 + 56) = sub_1AB054C38();
  *(v18 + 32) = v17;
  v19 = v17;
  v20.super.isa = JSConstructable.makeObject(withArguments:)(v18).super.isa;
  sub_1AB088B0C(v29);

  if (!v21)
  {
    a4->super.isa = v20.super.isa;
  }
}

uint64_t sub_1AB0884F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id JSConstructable.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v4);
  v6 = (*(v5 + 8))(v4, v5);
  if (v6)
  {
    v7 = v6;
    result = [v6 context];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v9 = result;
    v10 = [result JSGlobalContextRef];

    v11 = [v7 JSValueRef];
    if (JSValueGetType(v10, v11) == kJSTypeObject)
    {
      IsConstructor = JSObjectIsConstructor(v10, v11);

      if (IsConstructor)
      {
        sub_1AB01494C(a1, v14);
        v13 = v14[1];
        *a2 = v14[0];
        *(a2 + 16) = v13;
        *(a2 + 32) = v15;
        return __swift_destroy_boxed_opaque_existential_1Tm(a1);
      }
    }

    else
    {
    }
  }

  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

JSValue __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> JSConstructable.makeObject(withArguments:)(Swift::OpaquePointer withArguments)
{
  __swift_project_boxed_opaque_existential_1Tm(v1, v1[3]);
  v3.super.isa = JSReference.unwrap()().super.isa;
  if (v4)
  {
    return withArguments._rawValue;
  }

  isa = v3.super.isa;
  result.super.isa = [(objc_class *)v3.super.isa context];
  if (result.super.isa)
  {
    v7 = result.super.isa;
    v8 = sub_1AB460934();
    withArguments._rawValue = [(objc_class *)isa constructWithArguments:v8];

    if (withArguments._rawValue)
    {
      v9 = [(objc_class *)v7 exception];
      if (!v9)
      {

        return withArguments._rawValue;
      }

      v10 = v9;
      [(objc_class *)v7 setException:0];
      sub_1AB0C3EF0();
      swift_allocError();
      v12 = v11;
      v13 = v10;
      JSError.init(_:)(v13, v12);
      swift_willThrow();

      v7 = isa;
    }

    else
    {
      sub_1AB0C3EF0();
      swift_allocError();
      *v14 = 0xD00000000000001ALL;
      *(v14 + 8) = 0x80000001AB5059C0;
      *(v14 + 16) = 0;
      *(v14 + 24) = 1;
      *(v14 + 32) = 0;
      *(v14 + 40) = 1;
      *(v14 + 48) = 0u;
      *(v14 + 64) = 0u;
      *(v14 + 80) = 0u;
      *(v14 + 96) = 0;
      swift_willThrow();
      withArguments._rawValue = isa;
    }

    return withArguments._rawValue;
  }

  __break(1u);
  return result;
}

id sub_1AB08885C(id result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, _OWORD *, __int128 *))
{
  v7 = result;
  v8 = a3 & 0xC000000000000001;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x1AC59C990](0, a3);
  }

  else
  {
    if (!*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_20;
    }

    v9 = *(a3 + 32);
  }

  *(&v19 + 1) = &type metadata for JSStrongReference;
  v20 = &protocol witness table for JSStrongReference;
  *&v18 = v9;
  v10 = v9;
  result = JSCallable.init(_:)(&v18, &v21);
  if (!*(&v22 + 1))
  {
    sub_1AB014AC0(&v21, &qword_1EB438A30);
    sub_1AB0C3EF0();
    swift_allocError();
    v7 = v12;
    v13 = v10;
    JSError.init(badValue:expected:)(v13, 0x6E6F6974636E7546, 0xE800000000000000, v7);
    swift_willThrow();

    return v7;
  }

  v24[0] = v21;
  v24[1] = v22;
  v25 = v23;
  if (!v8)
  {
    if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v11 = *(a3 + 40);
      goto LABEL_10;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v11 = MEMORY[0x1AC59C990](1, a3);
LABEL_10:
  v17[3] = &type metadata for JSStrongReference;
  v17[4] = &protocol witness table for JSStrongReference;
  v17[0] = v11;
  v14 = v11;
  JSCallable.init(_:)(v17, &v18);
  if (!*(&v19 + 1))
  {
    sub_1AB014AC0(&v18, &qword_1EB438A30);
    sub_1AB0C3EF0();
    swift_allocError();
    v7 = v15;
    v16 = v14;
    JSError.init(badValue:expected:)(v16, 0x6E6F6974636E7546, 0xE800000000000000, v7);
    swift_willThrow();

    goto LABEL_14;
  }

  v21 = v18;
  v22 = v19;
  v23 = v20;
  a4(v7, v24, &v21);
  if (v4)
  {
    JSPromiseLogExecutorError()();
    swift_willThrow();

    sub_1AB087F9C(&v21);
LABEL_14:
    sub_1AB087F9C(v24);
    return v7;
  }

  result = [objc_opt_self() valueWithUndefinedInContext_];
  if (result)
  {
    v7 = result;

    sub_1AB087F9C(&v21);
    sub_1AB087F9C(v24);
    return v7;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t Promise<A>.withDependenciesSatisfied.getter@<X0>(void *a1@<X8>)
{
  sub_1AB088BE8();
  v3 = v2;
  v5 = v4;
  a1[3] = type metadata accessor for DependentObjectGraphBuilder();
  a1[4] = &off_1F200A3D8;
  *a1 = v3;
  a1[1] = v5;
}

uint64_t storeEnumTagSinglePayload for JetPackAsset.Policy.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1AB088CB8(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 80);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - v5;
  v7(*v4);
  (*(*(*(v2 + 16) - 8) + 56))(v6, 0, 1);
  Promise.resolve(_:)(v6);
  return (*(v3 + 8))(v6, v2);
}

JSValue __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> JSCallable.call(against:withArguments:)(JSValue against, Swift::OpaquePointer withArguments)
{
  v4 = __swift_project_boxed_opaque_existential_1Tm(v2, v2[3]);
  v5.super.isa = JSReference.unwrap()().super.isa;
  if (v6)
  {
    return v4;
  }

  isa = v5.super.isa;
  result.super.isa = [(objc_class *)v5.super.isa context];
  if (result.super.isa)
  {
    v9 = result.super.isa;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436BF0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1AB4D4720;
    *(v10 + 56) = sub_1AB054C38();
    *(v10 + 32) = against;
    v11 = against.super.isa;

    sub_1AB088FAC(v12);
    v13._countAndFlagsBits = 1819042147;
    v13._object = 0xE400000000000000;
    v4 = JSValue.call(method:withArguments:)(v13, v10).super.isa;

    if (v14 || (v15 = [(objc_class *)v9 exception]) == 0)
    {
    }

    else
    {
      v16 = v15;
      [(objc_class *)v9 setException:0];
      sub_1AB0C3EF0();
      swift_allocError();
      v18 = v17;
      v19 = v16;
      JSError.init(_:)(v19, v18);
      swift_willThrow();
    }

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB088FAC(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1AB05303C(result, v10, 1, v3);
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

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_1AB0890D8(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 context];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 JSGlobalContextRef];

    JSONString = JSValueCreateJSONString(v6, [a1 JSValueRef], 0, 0);
    if (JSONString)
    {
      v8 = JSONString;
      sub_1AB0891D4(JSONString, a2);
      JSStringRelease(v8);
    }

    else
    {
      sub_1AB0C3EF0();
      swift_allocError();
      JSError.init(badValue:expected:)(a1, 1313821514, 0xE400000000000000, v9);
      swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AB0891D4@<X0>(OpaqueJSString *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1AB45F7A4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  CharactersPtr = JSStringGetCharactersPtr(a1);
  if (CharactersPtr)
  {
    v9 = CharactersPtr;
    Length = JSStringGetLength(a1);
    if ((Length + 0x4000000000000000) >= 0)
    {
      v11 = 2 * Length;
      (*(v5 + 104))(v7, *MEMORY[0x1E6969010], v4);
      v12 = sub_1AB0895B4(v9, v11, v7);
      v14 = v13;
      sub_1AB0898D0(v12, v13, a2);
      return sub_1AB017254(v12, v14);
    }

    __break(1u);
    goto LABEL_13;
  }

  if (qword_1EB435660 != -1)
  {
LABEL_13:
    swift_once();
  }

  v16 = qword_1EB435668;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v17 = swift_allocObject();
  v28 = xmmword_1AB4D4720;
  *(v17 + 16) = xmmword_1AB4D4720;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
  v18 = swift_allocObject();
  *(v18 + 16) = v28;
  v19 = MEMORY[0x1E69E6158];
  v32 = MEMORY[0x1E69E6158];
  v29 = 0xD000000000000026;
  v30 = 0x80000001AB4FF3D0;
  *(v18 + 48) = 0u;
  *(v18 + 32) = 0u;
  sub_1AB0169C4(&v29, v18 + 32);
  *(v18 + 64) = 0;
  *(v17 + 32) = v18;
  v20 = sub_1AB461094();
  if (os_log_type_enabled(v16, v20))
  {
    if (qword_1EB4359F8 != -1)
    {
      swift_once();
    }

    v21 = off_1EB435A00;
    os_unfair_lock_lock(off_1EB435A00 + 5);
    os_unfair_lock_opaque_low = LOBYTE(v21[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v21 + 5);
    if (os_unfair_lock_opaque_low == 2)
    {
      LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
    }

    v23 = swift_allocObject();
    *(v23 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
    v29 = v17;
    v30 = sub_1AB01A8D8;
    v31 = v23;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
    sub_1AB016A34();
    v24 = sub_1AB460484();
    v26 = v25;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
    v27 = swift_allocObject();
    *(v27 + 16) = v28;
    *(v27 + 56) = v19;
    *(v27 + 64) = sub_1AB016854();
    *(v27 + 32) = v24;
    *(v27 + 40) = v26;
    sub_1AB45FF14();
  }

  return sub_1AB0898D0(0, 0xC000000000000000, a2);
}

uint64_t sub_1AB0895B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AB45F7A4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1AB45F794();
  if (a2)
  {
    sub_1AB45F464();
    swift_allocObject();

    v10 = sub_1AB45F3F4();
    (*(v7 + 16))(v9, a3, v6);
    if ((*(v7 + 88))(v9, v6) == *MEMORY[0x1E6969010])
    {
      v11 = sub_1AB45F454();
      *v12 |= 0x8000000000000000;
      v11(v16, 0);
    }

    else
    {
      (*(v7 + 8))(v9, v6);
    }

    v14 = sub_1AB0897EC(v10, a2);
  }

  else
  {
    v13 = sub_1AB45F794();
    v13(a1, 0);

    v14 = 0;
  }

  (*(v7 + 8))(a3, v6);
  return v14;
}

uint64_t sub_1AB0897EC(uint64_t result, uint64_t a2)
{
  if (!a2)
  {

    return 0;
  }

  if (a2 > 14)
  {
    if (a2 < 0x7FFFFFFF)
    {
      return a2 << 32;
    }

    sub_1AB45F7E4();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = a2;
    return result;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = sub_1AB45F414();
  if (v3)
  {
    result = sub_1AB45F444();
    if (!__OFSUB__(0, result))
    {
      v3 -= result;
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_10:
  v4 = sub_1AB45F434();
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  v6 = &v3[v5];
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_1AB0683DC(v3, v7);

  return v8;
}

uint64_t sub_1AB0898D0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  if (qword_1EB4356D0 != -1)
  {
    swift_once();
  }

  if (sub_1AB0672FC(qword_1EB46C2A0, *algn_1EB46C2A8, a1, a2))
  {
    v6 = [objc_allocWithZone(MEMORY[0x1E695DF20]) init];
    v7 = &unk_1ED4D1BA0;
LABEL_9:
    v17 = sub_1AB016760(0, v7);
    *&v16 = v6;
LABEL_10:
    sub_1AB014B78(&v16, v18);
    sub_1AB0165C4(v18, &v16);
    a3[3] = &type metadata for FoundationValue;
    a3[4] = &off_1F1FFB5A8;
    v8 = swift_allocObject();
    *a3 = v8;
    sub_1AB014B78(&v16, (v8 + 16));
    return __swift_destroy_boxed_opaque_existential_1Tm(v18);
  }

  if (qword_1EB4356D8 != -1)
  {
    swift_once();
  }

  if (sub_1AB0672FC(qword_1EB46C248, unk_1EB46C250, a1, a2))
  {
    v6 = [objc_allocWithZone(MEMORY[0x1E695DEC8]) init];
    v7 = &qword_1ED4D0BE0;
    goto LABEL_9;
  }

  v10 = objc_opt_self();
  v11 = sub_1AB45F834();
  v15 = 0;
  v12 = [v10 JSONObjectWithData:v11 options:4 error:&v15];

  v13 = v15;
  if (v12)
  {
    sub_1AB461494();
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v14 = v13;
  sub_1AB45F594();

  return swift_willThrow();
}

uint64_t sub_1AB089B30()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

JSValue __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> JSCallable.call(withArguments:)(Swift::OpaquePointer withArguments)
{
  __swift_project_boxed_opaque_existential_1Tm(v1, v1[3]);
  v3.super.isa = JSReference.unwrap()().super.isa;
  if (v4)
  {
    return withArguments._rawValue;
  }

  isa = v3.super.isa;
  result.super.isa = [(objc_class *)v3.super.isa context];
  if (result.super.isa)
  {
    v7 = result.super.isa;
    v8 = sub_1AB460934();
    withArguments._rawValue = [(objc_class *)isa callWithArguments:v8];

    if (withArguments._rawValue)
    {
      v9 = [(objc_class *)v7 exception];
      if (!v9)
      {

        return withArguments._rawValue;
      }

      v10 = v9;
      [(objc_class *)v7 setException:0];
      sub_1AB0C3EF0();
      swift_allocError();
      v12 = v11;
      v13 = v10;
      JSError.init(_:)(v13, v12);
      swift_willThrow();

      v7 = isa;
    }

    else
    {
      sub_1AB0C3EF0();
      swift_allocError();
      *v14 = 0xD000000000000017;
      *(v14 + 8) = 0x80000001AB5058E0;
      *(v14 + 16) = 0;
      *(v14 + 24) = 1;
      *(v14 + 32) = 0;
      *(v14 + 40) = 1;
      *(v14 + 48) = 0u;
      *(v14 + 64) = 0u;
      *(v14 + 80) = 0u;
      *(v14 + 96) = 0;
      swift_willThrow();
      withArguments._rawValue = isa;
    }

    return withArguments._rawValue;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB089D68(uint64_t *a1, int a2)
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

void sub_1AB089DC0(void *a1, uint64_t a2)
{
  v3 = *(*a2 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v7 - v5;
  swift_getErrorValue();
  if (sub_1AB044DF8(v7[1]))
  {
    (*(*(*(v3 + 16) - 8) + 56))(v6, 1, 1);
    Promise.resolve(_:)(v6);
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    Promise.reject(_:)(a1);
  }
}

JSValue __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> JSValue.call(method:withArguments:)(Swift::String method, Swift::OpaquePointer withArguments)
{
  object = method._object;
  countAndFlagsBits = method._countAndFlagsBits;
  result.super.isa = [v2 context];
  if (result.super.isa)
  {
    isa = result.super.isa;
    v7 = sub_1AB460514();
    v8 = sub_1AB460934();
    v9 = [v2 invokeMethod:v7 withArguments:v8];

    if (v9)
    {
      v10 = [(objc_class *)isa exception];
      if (v10)
      {
        v11 = v10;
        [(objc_class *)isa setException:0];
        sub_1AB0C3EF0();
        swift_allocError();
        v13 = v12;
        v14 = v11;
        JSError.init(_:)(v14, v13);
        swift_willThrow();

        isa = v9;
      }
    }

    else
    {
      sub_1AB4615D4();

      MEMORY[0x1AC59BA20](countAndFlagsBits, object);
      MEMORY[0x1AC59BA20](96, 0xE100000000000000);
      sub_1AB0C3EF0();
      swift_allocError();
      *v15 = 0xD000000000000019;
      *(v15 + 8) = 0x80000001AB50E200;
      *(v15 + 16) = 0;
      *(v15 + 24) = 1;
      *(v15 + 32) = 0;
      *(v15 + 40) = 1;
      *(v15 + 48) = 0u;
      *(v15 + 64) = 0u;
      *(v15 + 80) = 0u;
      *(v15 + 96) = 0;
      swift_willThrow();
    }

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1AB08A40C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3();
  if (!v3)
  {
    sub_1AB460544();
    v4 = sub_1AB460514();

    v3 = v4;
  }

  return v3;
}

__CFString *JEGestaltGetBuildVersion()
{
  v0 = MGGetStringAnswer();
  v1 = v0;
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v2 = @"Unknown";
  }

  v3 = v2;

  return v2;
}

id static JSContext.requiredCurrent.getter()
{
  result = [objc_opt_self() currentContext];
  if (!result)
  {
    result = sub_1AB461884();
    __break(1u);
  }

  return result;
}

__CFString *JEGestaltGetDeviceModel()
{
  v0 = MGGetStringAnswer();
  if ([(__CFString *)v0 isEqualToString:@"iPod"])
  {

    v0 = @"iPod touch";
  }

  if (v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = @"Unknown";
  }

  v2 = v1;

  return v1;
}

uint64_t sub_1AB08A604()
{
  v0 = sub_1AB45F9E4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB45F9D4();
  v4 = sub_1AB45F9C4();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  v7 = MEMORY[0x1E69E6158];
  v17[3] = MEMORY[0x1E69E6158];
  v17[0] = v4;
  v17[1] = v6;
  v8 = [objc_opt_self() currentContext];
  if (v8)
  {
    v9 = v8;
    v10 = __swift_project_boxed_opaque_existential_1Tm(v17, v7);
    v11 = *(v7 - 8);
    MEMORY[0x1EEE9AC00](v10);
    v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v13);
    v14 = sub_1AB461D84();
    (*(v11 + 8))(v13, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    v15 = [objc_opt_self() valueWithObject:v14 inContext:v9];
    swift_unknownObjectRelease();

    if (v15)
    {
      return v15;
    }

    __break(1u);
  }

  result = sub_1AB461884();
  __break(1u);
  return result;
}

uint64_t sub_1AB08A8AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AB460544();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Preferences.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_1AB461354();
  v61 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v59 - v15;
  v17 = *(a5 + 8);
  *(&v71 + 1) = a3;
  v72 = v17;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v70);
  v19 = *(a3 - 8);
  v63 = *(v19 + 16);
  v62 = v19 + 16;
  v63(boxed_opaque_existential_0, a1, a3);
  v20 = *(a4 + 8);
  v64 = a2;
  v65 = v6;
  v20(&v68, &v70, a2, a4);
  if (MetatypeMetadata)
  {
    sub_1AB014B78(&v68, v73);
    __swift_destroy_boxed_opaque_existential_1Tm(&v70);
    (*(a5 + 32))(v73, a3, a5);
    v21 = *(AssociatedTypeWitness - 8);
    if ((*(v21 + 48))(v16, 1, AssociatedTypeWitness) == 1)
    {
      v60 = AssociatedTypeWitness;
      (*(v61 + 8))(v16, v14);
      if (qword_1EB435D40 != -1)
      {
        swift_once();
      }

      v22 = qword_1EB43A248;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1AB4D47F0;
      v67 = sub_1AB0168A8(0, 16, 0, MEMORY[0x1E69E7CC0]);
      v24._countAndFlagsBits = 0x6F662065756C6156;
      v24._object = 0xEA00000000002072;
      LogMessage.StringInterpolation.appendLiteral(_:)(v24);
      MetatypeMetadata = a3;
      v25 = __swift_allocate_boxed_opaque_existential_0(&v68);
      v63(v25, a1, a3);
      sub_1AB01522C(&v68, v66);
      v70 = 0u;
      v71 = 0u;
      sub_1AB0169C4(v66, &v70);
      LOBYTE(v72) = 0;
      v26 = v67;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1AB0168A8(0, *(v26 + 2) + 1, 1, v26);
      }

      v28 = *(v26 + 2);
      v27 = *(v26 + 3);
      if (v28 >= v27 >> 1)
      {
        v26 = sub_1AB0168A8((v27 > 1), v28 + 1, 1, v26);
      }

      *(v26 + 2) = v28 + 1;
      v29 = &v26[40 * v28];
      v30 = v70;
      v31 = v71;
      v29[64] = v72;
      *(v29 + 2) = v30;
      *(v29 + 3) = v31;
      v67 = v26;
      sub_1AB0167A8(&v68);
      v32._countAndFlagsBits = 544106784;
      v32._object = 0xE400000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v32);
      MetatypeMetadata = v64;
      *&v68 = v65;
      sub_1AB01522C(&v68, v66);
      v70 = 0u;
      v71 = 0u;
      swift_unknownObjectRetain();
      sub_1AB0169C4(v66, &v70);
      LOBYTE(v72) = 0;
      v33 = v67;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1AB0168A8(0, *(v33 + 2) + 1, 1, v33);
        v67 = v33;
      }

      v35 = *(v33 + 2);
      v34 = *(v33 + 3);
      if (v35 >= v34 >> 1)
      {
        v33 = sub_1AB0168A8((v34 > 1), v35 + 1, 1, v33);
      }

      *(v33 + 2) = v35 + 1;
      v36 = &v33[40 * v35];
      v37 = v70;
      v38 = v71;
      v36[64] = v72;
      *(v36 + 2) = v37;
      *(v36 + 3) = v38;
      v67 = v33;
      sub_1AB0167A8(&v68);
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v39);
      *(v23 + 32) = v67;
      v67 = sub_1AB0168A8(0, 22, 0, MEMORY[0x1E69E7CC0]);
      v40._object = 0x80000001AB500010;
      v40._countAndFlagsBits = 0xD000000000000015;
      LogMessage.StringInterpolation.appendLiteral(_:)(v40);
      v41 = v60;
      MetatypeMetadata = swift_getMetatypeMetadata();
      *&v68 = v41;
      sub_1AB01522C(&v68, v66);
      v70 = 0u;
      v71 = 0u;
      sub_1AB0169C4(v66, &v70);
      LOBYTE(v72) = 0;
      v42 = v67;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_1AB0168A8(0, *(v42 + 2) + 1, 1, v42);
      }

      v44 = *(v42 + 2);
      v43 = *(v42 + 3);
      if (v44 >= v43 >> 1)
      {
        v42 = sub_1AB0168A8((v43 > 1), v44 + 1, 1, v42);
      }

      *(v42 + 2) = v44 + 1;
      v45 = &v42[40 * v44];
      v46 = v70;
      v47 = v71;
      v45[64] = v72;
      *(v45 + 2) = v46;
      *(v45 + 3) = v47;
      v67 = v42;
      sub_1AB0167A8(&v68);
      v48._countAndFlagsBits = 0;
      v48._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v48);
      *(v23 + 40) = v67;
      v49 = sub_1AB461094();
      if (os_log_type_enabled(v22, v49))
      {
        if (qword_1EB4359F8 != -1)
        {
          swift_once();
        }

        v50 = off_1EB435A00;
        os_unfair_lock_lock(off_1EB435A00 + 5);
        os_unfair_lock_opaque_low = LOBYTE(v50[4]._os_unfair_lock_opaque);
        os_unfair_lock_unlock(v50 + 5);
        if (os_unfair_lock_opaque_low == 2)
        {
          LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
        }

        v52 = swift_allocObject();
        *(v52 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
        *&v70 = v23;
        *(&v70 + 1) = sub_1AB0223E4;
        *&v71 = v52;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
        sub_1AB016A34();
        v53 = sub_1AB460484();
        v55 = v54;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
        v56 = swift_allocObject();
        *(v56 + 16) = xmmword_1AB4D4720;
        *(v56 + 56) = MEMORY[0x1E69E6158];
        *(v56 + 64) = sub_1AB016854();
        *(v56 + 32) = v53;
        *(v56 + 40) = v55;
        sub_1AB45FF14();
      }

      v58 = v60;
      __swift_destroy_boxed_opaque_existential_1Tm(v73);
      return (*(v21 + 56))(a6, 1, 1, v58);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v73);
      (*(v21 + 32))(a6, v16, AssociatedTypeWitness);
      return (*(v21 + 56))(a6, 0, 1, AssociatedTypeWitness);
    }
  }

  else
  {
    sub_1AB0167A8(&v68);
    __swift_destroy_boxed_opaque_existential_1Tm(&v70);
    return (*(*(AssociatedTypeWitness - 8) + 56))(a6, 1, 1, AssociatedTypeWitness);
  }
}

void sub_1AB08B0D0()
{
  sub_1AB018EB8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for JetPackResourceBundleDiskLocation();
    if (v1 <= 0x3F)
    {
      sub_1AB018E60();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1AB08B16C()
{
  result = sub_1AB45F764();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1AB08B204()
{
  sub_1AB45F764();
  if (v0 <= 0x3F)
  {
    sub_1AB0556A4();
    if (v1 <= 0x3F)
    {
      sub_1AB08B2A0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1AB08B2A0()
{
  if (!qword_1EB4334A8)
  {
    v0 = sub_1AB4603C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4334A8);
    }
  }
}

JetEngine::JSPromise_optional __swiftcall JSPromise.init(_:)(JSValue a1)
{
  isa = a1.super.isa;
  v3 = v1;
  v4 = [(objc_class *)a1.super.isa context];
  if (!v4)
  {
    __break(1u);
    goto LABEL_15;
  }

  v6 = v4;
  v7 = [v4 globalObject];

  if (!v7)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = sub_1AB460514();
  v9 = [v7 valueForProperty_];

  if (!v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v4 = [v9 context];
  if (!v4)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = v4;
  v11 = [v4 JSGlobalContextRef];

  v12 = [v9 JSValueRef];
  if (JSValueGetType(v11, v12) != kJSTypeObject || !JSObjectIsConstructor(v11, v12))
  {
    if (qword_1EB435D90 != -1)
    {
      swift_once();
    }

    v14 = qword_1EB46C308;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1AB4D4720;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1AB4D4720;
    v18[3] = MEMORY[0x1E69E6158];
    v18[0] = 0xD000000000000031;
    v18[1] = 0x80000001AB5089D0;
    *(v16 + 48) = 0u;
    *(v16 + 32) = 0u;
    sub_1AB0169C4(v18, v16 + 32);
    *(v16 + 64) = 0;
    *(v15 + 32) = v16;
    v18[0] = v14;
    v17 = 0;
    OSLogger.log(contentsOf:withLevel:)(v15, &v17);

    goto LABEL_12;
  }

  v13 = [(objc_class *)isa isInstanceOf:v9];

  if (!v13)
  {

LABEL_12:
    isa = 0;
  }

  *v3 = isa;
LABEL_18:
  result.value.value.super.isa = v4;
  result.is_nil = v5;
  return result;
}

void sub_1AB08B57C(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  swift_retain_n();

  v3 = JSPromise.then(perform:orCatchError:)(sub_1AB08BCAC, v2, sub_1AB0C3CA4, v2);
}

uint64_t sub_1AB08B678()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

Class JSPromise.then(perform:orCatchError:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436BF0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AB4D47F0;
  result = [v8 context];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v11 = result;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v28 = sub_1AB088B60;
  v29 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = sub_1AB054BC4;
  v27 = &block_descriptor_13_0;
  v13 = _Block_copy(&aBlock);

  v14 = objc_opt_self();
  result = [v14 valueWithObject:v13 inContext:v11];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v15 = result;
  _Block_release(v13);

  v16 = sub_1AB054C38();
  *(v9 + 56) = v16;
  *(v9 + 32) = v15;
  result = [v8 context];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v17 = result;
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  v28 = sub_1AB088B60;
  v29 = v18;
  aBlock = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = sub_1AB054BC4;
  v27 = &block_descriptor_20_0;
  v19 = _Block_copy(&aBlock);

  result = [v14 valueWithObject:v19 inContext:v17];
  if (result)
  {
    v20 = result;
    _Block_release(v19);

    *(v9 + 88) = v16;
    *(v9 + 64) = v20;
    v21._countAndFlagsBits = 1852139636;
    v21._object = 0xE400000000000000;
    isa = JSValue.call(method:withArguments:)(v21, v9).super.isa;

    return isa;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_1AB08B96C(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(v5 + 16);
  os_unfair_lock_lock(v8 + 4);
  swift_beginAccess();
  if (*(v5 + 32) == 3)
  {
    os_unfair_lock_unlock(v8 + 4);
  }

  else if (*(v5 + 32))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v9 = *(v5 + 24);
    *(v5 + 24) = a1;
    *(v5 + 32) = 1;
    v24 = a1;
    os_unfair_lock_unlock(v8 + 4);
    v21 = v9;
    v10 = v9[2];
    if (v10)
    {
      v11 = (v9 + 4);
      v22 = a2;
      do
      {
        sub_1AB014A58(v11, v31, a2);
        sub_1AB014A58(v31, v28, a2);
        v13 = v28[0];
        if (v30)
        {
          **(*(v28[0] + 64) + 40) = v24;
          v12 = v24;
          swift_continuation_throwingResume();
          sub_1AB014AC0(v31, a2);
        }

        else
        {
          v14 = v28[1];

          sub_1AB0149B0(&v29, v25);
          v16 = v26;
          v15 = v27;
          __swift_project_boxed_opaque_existential_1Tm(v25, v26);
          v17 = swift_allocObject();
          v17[2] = v13;
          v17[3] = v14;
          v17[4] = v24;
          v18 = *(v15 + 8);
          v19 = v24;

          v20 = v15;
          a2 = v22;
          v18(a5, v17, v16, v20);

          sub_1AB014AC0(v31, v22);
          __swift_destroy_boxed_opaque_existential_1Tm(v25);
        }

        v11 += 80;
        --v10;
      }

      while (v10);
    }

    sub_1AB0171C8(v21, 0);
  }
}

uint64_t type metadata accessor for JSResponse()
{
  result = qword_1ED4D1858;
  if (!qword_1ED4D1858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t JSConditionalReference.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_1AB08BCC8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a3 >> 62)
  {
    v10 = a3;
    result = sub_1AB4618F4();
    a3 = v10;
    if (result)
    {
LABEL_3:
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1AC59C990](0, a3);
      }

      else
      {
        if (!*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

        v7 = *(a3 + 32);
      }

      v8 = v7;
      swift_beginAccess();
      if (*(a4 + 16))
      {

        sub_1AB08BBE8(v8);
      }

      swift_beginAccess();
      *(a4 + 16) = 0;

      result = [objc_opt_self() valueWithUndefinedInContext_];
      if (result)
      {
        v9 = result;

        return v9;
      }

      goto LABEL_18;
    }
  }

  else
  {
    result = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }
  }

  swift_beginAccess();
  if (*(a4 + 16))
  {
    v11 = objc_opt_self();

    result = [v11 valueWithUndefinedInContext_];
    if (!result)
    {
LABEL_20:
      __break(1u);
      return result;
    }

    v12 = result;
    sub_1AB08BBE8(result);
  }

  swift_beginAccess();
  *(a4 + 16) = 0;

  result = [objc_opt_self() valueWithUndefinedInContext_];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  return result;
}

uint64_t objectdestroy_88Tm()
{
  v1 = type metadata accessor for JSResponse();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = *(v1 + 20);
  v6 = sub_1AB45F244();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3 + v5, v6);
  v8 = v0 + v3 + *(v1 + 24);
  if (*(v8 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + v3 + *(v1 + 24));
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437770);
  v7(v8 + *(v9 + 28), v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t JSResponse.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for JSResponse() + 24);

  return sub_1AB08C08C(v3, a1);
}

uint64_t sub_1AB08C08C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437770);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AB08C130(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

JSValue __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> JSSource.evaluate(against:in:)(JSValue_optional against, JSContext in)
{
  v3 = *&against.is_nil;
  isa = against.value.super.isa;
  exception[1] = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v30 - v6;
  v8 = sub_1AB45F764();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1AB08C510(*v2, v2[1]);
  v13 = type metadata accessor for JSSource();
  sub_1AB03BC60(v2 + *(v13 + 20), v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1AB014AC0(v7, &unk_1EB4395B0);
    v14 = 0;
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    v15 = sub_1AB45F5D4();
    v14 = sub_1AB08C510(v15, v16);

    (*(v9 + 8))(v11, v8);
  }

  exception[0] = 0;
  v17 = JSEvaluateScript([(objc_class *)v3 JSGlobalContextRef], v12, [(objc_class *)isa JSValueRef], v14, 0, exception);
  if (v17)
  {
    result.super.isa = [objc_opt_self() valueWithJSValueRef:v17 inContext:v3];
    if (result.super.isa)
    {
      v3 = result.super.isa;
      if (v14)
      {
        JSStringRelease(v14);
      }

LABEL_14:
      JSStringRelease(v12);
      return v3;
    }

    __break(1u);
  }

  else
  {
    v19 = exception[0];
    sub_1AB0C3EF0();
    v20 = swift_allocError();
    v22 = v21;
    result.super.isa = [objc_opt_self() valueWithJSValueRef:v19 inContext:v3];
    if (result.super.isa)
    {
      v23 = result.super.isa;
      v24 = [(objc_class *)v3 exceptionHandler];
      if (v24)
      {
        v30[1] = v20;
        v25 = v12;
        v26 = v22;
        v27 = v24[2];
        v28 = v24;
        v29 = v23;
        v27(v28, v3, v29);
        v22 = v26;
        v12 = v25;
        _Block_release(v28);
      }

      JSError.init(_:)(v23, v22);
      swift_willThrow();
      if (v14)
      {
        JSStringRelease(v14);
      }

      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB08C510(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = a1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
LABEL_6:
      v6[0] = v4;
      v6[1] = v3 & 0xFFFFFFFFFFFFFFLL;
      result = JSStringCreateWithUTF8CString(v6);
      if (!result)
      {
        __break(1u);
      }

      return result;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      result = JSStringCreateWithUTF8CString(((a2 & 0xFFFFFFFFFFFFFFFLL) + 32));
      if (result)
      {
        return result;
      }

      __break(1u);
      goto LABEL_6;
    }
  }

  result = sub_1AB4615C4();
  if (!v2)
  {
    return v6[3];
  }

  return result;
}

void *JetEngineBootstrap.init(bagProfile:process:bagSpy:protocolHandler:)@<X0>(__int128 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, void *a6@<X8>)
{
  v9 = *(a1 + 2);
  v10 = *(a1 + 3);
  v31 = a5[1];
  v29 = *a1;
  v30 = *a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439A20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AB4D4180;
  *(inited + 64) = &type metadata for Bag.Profile;
  v12 = swift_allocObject();
  *(inited + 40) = v12;
  *(v12 + 16) = v29;
  *(v12 + 32) = v9;
  *(v12 + 40) = v10;
  *(inited + 32) = &type metadata for Bag.Profile;
  v13 = sub_1AB016760(0, &unk_1ED4D1398);
  *(inited + 104) = v13;
  *(inited + 72) = v13;
  *(inited + 80) = a2;
  v14 = qword_1EB4343E0;
  v15 = a2;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = sub_1AB45FD64();
  v17 = __swift_project_value_buffer(v16, qword_1EB46C1D8);
  *(inited + 144) = v16;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 120));
  (*(*(v16 - 8) + 16))(boxed_opaque_existential_0, v17, v16);
  *(inited + 112) = v16;
  if (a3)
  {
    v19 = swift_allocObject();
    *(v19 + 16) = a3;
    *(v19 + 24) = a4;
    v20 = sub_1AB144A38;
  }

  else
  {
    v20 = 0;
    v19 = 0;
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436570);
  *(inited + 184) = v21;
  *(inited + 160) = v20;
  *(inited + 168) = v19;
  *(inited + 152) = v21;
  *(inited + 224) = &type metadata for JetEngineBootstrap.URLProtocolHandler;
  v22 = swift_allocObject();
  *(inited + 200) = v22;
  *(v22 + 16) = v30;
  *(v22 + 32) = v31;
  *(inited + 192) = &type metadata for JetEngineBootstrap.URLProtocolHandler;
  v23 = objc_opt_self();
  sub_1AB04B604(a3);
  v24 = [v23 ams_sharedAccountStore];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436578);
  *(inited + 264) = v25;
  v26 = swift_allocObject();
  *(inited + 240) = v26;
  v26[5] = sub_1AB016760(0, &qword_1ED4D1F60);
  v26[6] = &protocol witness table for ACAccountStore;
  v26[2] = v24;
  *(inited + 232) = v25;
  v27 = sub_1AB014B20();
  v33 = MEMORY[0x1AC59B670](6, &type metadata for OpaqueMetatype, MEMORY[0x1E69E7CA0] + 8, v27);
  sub_1AB014B88(inited);
  sub_1AB0177B8(a3);

  swift_setDeallocating();
  swift_arrayDestroy();
  type metadata accessor for BaseObjectGraph();
  result = swift_allocObject();
  result[3] = 0xD000000000000020;
  result[4] = 0x80000001AB4FEE60;
  result[2] = v33;
  *a6 = result;
  return result;
}

uint64_t sub_1AB08C908()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AB08C948()
{
  if (*(v0 + 24) >= 2uLL)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AB08C990()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AB08C9C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void *sub_1AB08CA04(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t JetEngineBootstrap.start()()
{
  v1 = *v0;

  sub_1AB08CCFC(sub_1AB08D330, 0, v1, MEMORY[0x1E69E7CC0], v31);

  v2 = v31[4];
  __swift_project_boxed_opaque_existential_1Tm(v31, v31[3]);
  AsyncObjectGraphBuilder.withDependenciesSatisfied.getter(v2, v28);
  v3 = v29;
  v4 = v30;
  __swift_project_boxed_opaque_existential_1Tm(v28, v29);
  v5 = sub_1AB016760(0, &qword_1ED4D1050);
  (*(v4 + 8))(v25, v5, sub_1AB0903B8, 0, v5, v3, v4);
  v6 = v26;
  v7 = v27;
  __swift_project_boxed_opaque_existential_1Tm(v25, v26);
  v8 = sub_1AB016760(0, &qword_1ED4D1F60);
  AsyncObjectGraphBuilder.satisfying<A>(_:with:)(v8, sub_1AB090598, 0, v6, v8, v7);
  v10 = v23;
  v9 = v24;
  __swift_project_boxed_opaque_existential_1Tm(v22, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436580);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1AB4D4180;
  *(v11 + 32) = &type metadata for Bag;
  *(v11 + 40) = v5;
  *(v11 + 48) = sub_1AB016760(0, &unk_1ED4D1398);
  *(v11 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436578);
  *(v11 + 64) = v8;
  *(v11 + 72) = &type metadata for AsyncObjectGraphMetrics;
  v18 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436588);
  v13 = sub_1AB01561C(&qword_1EB432D38, &qword_1EB436588);
  AsyncObjectGraphBuilder.subtracting<A>(allDependenciesExcept:)(&v18, v10, v12, v9, v13, v19);

  v14 = v20;
  v15 = v21;
  __swift_project_boxed_opaque_existential_1Tm(v19, v20);
  v16 = (*(v15 + 16))(v14, v15);
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  return v16;
}

uint64_t sub_1AB08CCFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1AB093F9C;
  *(v11 + 24) = v10;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a4 = sub_1AB01E644(0, a4[2] + 1, 1, a4);
  }

  v13 = a4[2];
  v12 = a4[3];
  if (v13 >= v12 >> 1)
  {
    a4 = sub_1AB01E644((v12 > 1), v13 + 1, 1, a4);
  }

  a4[2] = v13 + 1;
  v14 = &a4[2 * v13];
  v14[4] = sub_1AB01F814;
  v14[5] = v11;
  a5[3] = &type metadata for StandaloneObjectGraphBuilder;
  a5[4] = &off_1F2004B90;

  *a5 = a3;
  a5[1] = a4;
  return result;
}

uint64_t sub_1AB08CE4C(uint64_t *a1, void (*a2)(uint64_t *))
{
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v17 = a1;
  type metadata accessor for BaseObjectGraph();

  swift_task_localValuePush();
  v4 = sub_1AB01DBA0(a1[2]);
  swift_task_localValuePop();
  if (v4 && (v5 = swift_conformsToProtocol2()) != 0)
  {
    v6 = *(v5 + 8);

    v6();
    sub_1AB0318FC();
    sub_1AB460184();
    v7 = sub_1AB460154();
    v8 = *(v4 + 48);

    os_unfair_lock_lock((v8 + 20));
    v9 = *(v8 + 16);
    os_unfair_lock_unlock((v8 + 20));

    if (v9 == 1)
    {

      sub_1AB460124();
    }

    sub_1AB3858E0(v7);

    sub_1AB460164();
  }

  else
  {
    v7 = 0;
  }

  swift_task_localValuePush();
  a2(a1);
  swift_task_localValuePop();
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = v4;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  v24 = &type metadata for SyncTaskScheduler;
  v25 = &protocol witness table for SyncTaskScheduler;
  v17 = sub_1AB0901C0;
  v18 = v10;
  v19 = sub_1AB158098;
  v20 = v11;
  sub_1AB01494C(v23, v21);
  v22 = 0;
  swift_retain_n();

  sub_1AB08E9F8(&v17);

  sub_1AB014AC0(&v17, &unk_1EB4397E0);
  __swift_destroy_boxed_opaque_existential_1Tm(v23);
  v24 = &type metadata for SyncTaskScheduler;
  v25 = &protocol witness table for SyncTaskScheduler;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436900);
  v12 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v14 = MEMORY[0x1E69E7CC0];
  *(v12 + 16) = v13;
  *(v12 + 24) = v14;
  *(v12 + 64) = 0;
  v15 = swift_allocObject();
  v15[2] = sub_1AB09038C;
  v15[3] = 0;
  v15[4] = v12;
  v17 = sub_1AB090380;
  v18 = v15;
  v19 = sub_1AB1580A0;
  v20 = v12;
  sub_1AB01494C(v23, v21);
  v22 = 0;
  swift_retain_n();

  sub_1AB08E9F8(&v17);

  sub_1AB014AC0(&v17, &unk_1EB4397E0);
  __swift_destroy_boxed_opaque_existential_1Tm(v23);
  return v12;
}

uint64_t sub_1AB08D244()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AB08D284()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AB08D2BC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AB08D2FC@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  return result;
}

uint64_t sub_1AB08D330(uint64_t a1)
{
  v2 = sub_1AB45FD64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v11 = a1;
  type metadata accessor for BaseObjectGraph();

  swift_task_localValuePush();
  sub_1AB08D5A8(*(a1 + 16), v12);
  swift_task_localValuePop();
  if (v12[1])
  {
    v11 = a1;

    swift_task_localValuePush();
    v6 = sub_1AB0466F8(*(a1 + 16));
    swift_task_localValuePop();
    if (v6)
    {
      sub_1AB08DA18(v5);
      v7 = static Bag.fetchBag(forProfile:as:usingPolicy:)(v12, v6, v5);

      (*(v3 + 8))(v5, v2);

      v12[0] = a1;

      swift_task_localValuePush();
      v8 = sub_1AB08E530(*(a1 + 16));
      swift_task_localValuePop();
      if (!v8)
      {
        return v7;
      }

      if (v8 != 1)
      {
        v12[0] = v7;
        v8(v12);
        sub_1AB1580A8(v8);
        return v7;
      }

      sub_1AB144AF4();
    }

    else
    {
      sub_1AB1453B4();
    }
  }

  else
  {
    sub_1AB158004(v12[0], 0);
    sub_1AB145A20();
  }

  result = sub_1AB461884();
  __break(1u);
  return result;
}

uint64_t sub_1AB08D5A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_1AB016558(&type metadata for Bag.Profile), (v5 & 1) != 0))
  {
    sub_1AB0165C4(*(a1 + 56) + 32 * v4, v15);
    sub_1AB014B78(v15, &v16);
    sub_1AB0165C4(&v16, v15);
    if (swift_dynamicCast())
    {
      *a2 = v12;
      *(a2 + 16) = v13;
      *(a2 + 24) = v14;
LABEL_25:
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      return __swift_destroy_boxed_opaque_existential_1Tm(&v16);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4368E0);
    if (swift_dynamicCast())
    {
      sub_1AB1310F8(a2);

      goto LABEL_25;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4368E8);
    if (swift_dynamicCast())
    {

      sub_1AB417DEC("JetEngine/DependencyDictionary.swift", 36, 2, 231, v12);

      sub_1AB132B64(a2);

      goto LABEL_25;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365B0);
    if (swift_dynamicCast())
    {
      sub_1AB417E04("JetEngine/DependencyDictionary.swift", 36, 2, 239, v12, *(&v12 + 1));
      swift_unknownObjectRelease();
      *a2 = 0u;
      *(a2 + 16) = 0u;
      goto LABEL_25;
    }
  }

  else
  {
    if (qword_1ED4D19F0 != -1)
    {
      swift_once();
    }

    v6 = off_1ED4D19F8;
    v7 = *(off_1ED4D19F8 + 2);
    v8 = off_1ED4D19F8 + 32;

    if (v7)
    {
      v9 = 0;
      while (1)
      {
        v15[0] = *&v8[16 * v9];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4368F0);
        if (swift_dynamicCast())
        {
          if (v16)
          {
            break;
          }
        }

        if (v7 == ++v9)
        {
          goto LABEL_13;
        }
      }

      v7 = v9;
    }

LABEL_13:
    v10 = v6[2];
    if (v7 == v10)
    {

      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (v7 >= v10)
    {
      __break(1u);
    }

    else
    {
      v15[0] = *&v8[16 * v7];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4368F0);
      if ((swift_dynamicCast() & 1) != 0 && v16)
      {

        return sub_1AB01D05C(a1, v16, *(&v16 + 1), a2);
      }
    }

    __break(1u);
  }

  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
  __swift_project_boxed_opaque_existential_1Tm(&v16, v17);
  sub_1AB461D64();
  MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
  MEMORY[0x1AC59BA20](0x656C69666F7250, 0xE700000000000000);
  MEMORY[0x1AC59BA20](0xD000000000000016, 0x80000001AB4FEF10);
  result = sub_1AB461884();
  __break(1u);
  return result;
}

uint64_t sub_1AB08DA18@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436908);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v9 - v4;
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v9[1] = v1;
  type metadata accessor for BaseObjectGraph();

  swift_task_localValuePush();
  sub_1AB08DBE4(*(v1 + 16), v5);
  swift_task_localValuePop();
  v6 = sub_1AB45FD64();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    return (*(v7 + 32))(a1, v5, v6);
  }

  sub_1AB014AC0(v5, &qword_1EB436908);
  sub_1AB144F54();
  result = sub_1AB461884();
  __break(1u);
  return result;
}

uint64_t sub_1AB08DBE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1AB45FD64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) && (v8 = sub_1AB016558(v4), (v9 & 1) != 0))
  {
    sub_1AB0165C4(*(a1 + 56) + 32 * v8, v24);
    sub_1AB014B78(v24, &v25);
    sub_1AB0165C4(&v25, v24);
    if (swift_dynamicCast())
    {
      (*(v5 + 32))(a2, v7, v4);
LABEL_22:
      (*(v5 + 56))(a2, 0, 1, v4);
LABEL_27:
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      return __swift_destroy_boxed_opaque_existential_1Tm(&v25);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436910);
    if (swift_dynamicCast())
    {
      sub_1AB1323C0(MEMORY[0x1E698CBF8], sub_1AB135D8C);

      goto LABEL_22;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436918);
    if (swift_dynamicCast())
    {
      v18 = v22;

      sub_1AB417E44("JetEngine/DependencyDictionary.swift", 36, 2, 231, v18);

      sub_1AB133E44(MEMORY[0x1E698CBF8], sub_1AB148A98);
      (*(v5 + 56))(a2, 0, 1, v4);

      goto LABEL_27;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365B0);
    if (swift_dynamicCast())
    {
      sub_1AB4186F8("JetEngine/DependencyDictionary.swift", 36, 2, 239, v22, v23);
      swift_unknownObjectRelease();
      (*(v5 + 56))(a2, 1, 1, v4);
      goto LABEL_27;
    }
  }

  else
  {
    if (qword_1ED4D19F0 != -1)
    {
      swift_once();
    }

    v10 = off_1ED4D19F8;
    v11 = *(off_1ED4D19F8 + 2);
    v12 = off_1ED4D19F8 + 32;

    if (v11)
    {
      v19 = v5;
      v20 = a2;
      v21 = v4;
      v13 = 0;
      while (1)
      {
        v24[0] = *&v12[16 * v13];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436920);
        if (swift_dynamicCast())
        {
          if (v25)
          {
            break;
          }
        }

        if (v11 == ++v13)
        {
          goto LABEL_13;
        }
      }

      v11 = v13;
LABEL_13:
      a2 = v20;
      v4 = v21;
      v5 = v19;
    }

    v14 = v10[2];
    if (v11 == v14)
    {

      return (*(v5 + 56))(a2, 1, 1, v4);
    }

    if (v11 >= v14)
    {
      __break(1u);
    }

    else
    {
      v24[0] = *&v12[16 * v11];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436920);
      if (swift_dynamicCast())
      {
        v16 = v25;
        if (v25)
        {
          v17 = *(&v25 + 1);

          return sub_1AB01D05C(a1, v16, v17, a2);
        }
      }
    }

    __break(1u);
  }

  v22 = 0;
  v23 = 0xE000000000000000;
  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
  __swift_project_boxed_opaque_existential_1Tm(&v25, v26);
  sub_1AB461D64();
  MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
  MEMORY[0x1AC59BA20](0x7963696C6F50, 0xE600000000000000);
  MEMORY[0x1AC59BA20](0xD000000000000016, 0x80000001AB4FEF10);
  result = sub_1AB461884();
  __break(1u);
  return result;
}

uint64_t static Bag.fetchBag(forProfile:as:usingPolicy:)(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v32 - v7;
  Configuration = type metadata accessor for Bag.FetchConfiguration();
  v10 = *(Configuration - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](Configuration);
  v13 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - v14;
  v17 = *a1;
  v16 = a1[1];
  v18 = a1[2];
  *(v13 + 3) = a1[3];
  *(v13 + 4) = 0;
  *v13 = v17;
  *(v13 + 1) = v16;
  *(v13 + 2) = v18;
  v13[40] = 0;
  v19 = qword_1EB4343E0;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = sub_1AB45FD64();
  v21 = __swift_project_value_buffer(v20, qword_1EB46C1D8);
  v22 = *(v20 - 8);
  (*(v22 + 16))(&v13[*(Configuration + 28)], v21, v20);
  *(v13 + 4) = a2;
  sub_1AB043888(v13, v15);
  v15[40] = 0;
  v23 = a2;
  sub_1AB0438EC(v13, type metadata accessor for Bag.FetchConfiguration);
  (*(v22 + 24))(&v15[*(Configuration + 28)], a3, v20);
  sub_1AB043888(v15, v13);
  v24 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v25 = swift_allocObject();
  sub_1AB04394C(v13, v25 + v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43BC80);
  v26 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  v28 = MEMORY[0x1E69E7CC0];
  *(v26 + 16) = v27;
  *(v26 + 24) = v28;
  *(v26 + 32) = 0;
  v29 = sub_1AB460BE4();
  (*(*(v29 - 8) + 56))(v8, 1, 1, v29);
  v30 = swift_allocObject();
  v30[2] = 0;
  v30[3] = 0;
  v30[4] = &unk_1AB4F0A80;
  v30[5] = v25;
  v30[6] = v26;

  sub_1AB39BBA8(0, 0, v8, &unk_1AB4F0A90, v30);

  sub_1AB0438EC(v15, type metadata accessor for Bag.FetchConfiguration);
  return v26;
}

uint64_t sub_1AB08E530(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436570);
  if (*(a1 + 16) && (v3 = sub_1AB016558(v2), (v4 & 1) != 0))
  {
    sub_1AB0165C4(*(a1 + 56) + 32 * v3, v14);
    sub_1AB014B78(v14, &v15);
    sub_1AB0165C4(&v15, v14);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      __swift_destroy_boxed_opaque_existential_1Tm(&v15);
      return v13;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4368B0);
    if (swift_dynamicCast())
    {
      v11 = sub_1AB130F34();

      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      __swift_destroy_boxed_opaque_existential_1Tm(&v15);
      return v11;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4368B8);
    if (swift_dynamicCast())
    {

      sub_1AB418F6C("JetEngine/DependencyDictionary.swift", 36, 2, 231, v13);

      v12 = sub_1AB132988();

      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      __swift_destroy_boxed_opaque_existential_1Tm(&v15);
      return v12;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365B0);
    if (swift_dynamicCast())
    {
      sub_1AB419844("JetEngine/DependencyDictionary.swift", 36, 2, 239, v13);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      __swift_destroy_boxed_opaque_existential_1Tm(&v15);
      return 1;
    }
  }

  else
  {
    if (qword_1ED4D19F0 != -1)
    {
      swift_once();
    }

    v6 = off_1ED4D19F8;
    v7 = *(off_1ED4D19F8 + 2);
    v8 = off_1ED4D19F8 + 32;

    if (v7)
    {
      v9 = 0;
      while (1)
      {
        v14[0] = *&v8[16 * v9];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4368C0);
        if (swift_dynamicCast())
        {
          if (v15)
          {
            break;
          }
        }

        if (v7 == ++v9)
        {
          goto LABEL_13;
        }
      }

      v7 = v9;
    }

LABEL_13:
    v10 = v6[2];
    if (v7 == v10)
    {

      return 1;
    }

    if (v7 >= v10)
    {
      __break(1u);
    }

    else
    {
      v14[0] = *&v8[16 * v7];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4368C0);
      if ((swift_dynamicCast() & 1) != 0 && v15)
      {

        sub_1AB01D05C(a1, v15, *(&v15 + 1), &v15);
        return v15;
      }
    }

    __break(1u);
  }

  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
  __swift_project_boxed_opaque_existential_1Tm(&v15, v16);
  sub_1AB461D64();
  MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
  MEMORY[0x1AC59BA20](0xD00000000000001ELL, 0x80000001AB4FF310);
  MEMORY[0x1AC59BA20](0xD000000000000016, 0x80000001AB4FEF10);
  result = sub_1AB461884();
  __break(1u);
  return result;
}

void sub_1AB08E9F8(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    if (*(v1 + 32) == 2)
    {
      v14 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AA21C(v4);
      v15 = MEMORY[0x1E69E7D60];
      v16 = v4;
      v17 = 2;
    }

    else
    {
      v18 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AA21C(v4);
      v15 = MEMORY[0x1E69E7D60];
      v16 = v4;
      v17 = 3;
    }

    goto LABEL_12;
  }

  if (*(v1 + 32))
  {
    swift_unknownObjectRetain();
    os_unfair_lock_unlock(v3 + 4);
    sub_1AB436020(v4);
    v15 = MEMORY[0x1E69E7D60];
    v16 = v4;
    v17 = 1;
LABEL_12:
    sub_1AB025694(v16, v17, v15);
    return;
  }

  sub_1AB014A58(a1, v22, &unk_1EB4397E0);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1AB08EBFC(0, v4[2] + 1, 1, v4);
  }

  v5 = v4[2];
  v6 = v4[3];
  v7 = v5 + 1;
  if (v5 >= v6 >> 1)
  {
    v19 = v4;
    v20 = v4[2];
    v21 = sub_1AB08EBFC((v6 > 1), v5 + 1, 1, v19);
    v5 = v20;
    v4 = v21;
  }

  v4[2] = v7;
  v8 = &v4[10 * v5];
  v8[2] = v22[0];
  v9 = v22[1];
  v10 = v22[2];
  v11 = v23[0];
  *(v8 + 89) = *(v23 + 9);
  v8[4] = v10;
  v8[5] = v11;
  v8[3] = v9;
  v12 = *(v1 + 24);
  *(v1 + 24) = v4;
  v13 = *(v1 + 32);
  *(v1 + 32) = 0;
  sub_1AB025694(v12, v13, MEMORY[0x1E69E7D60]);
  os_unfair_lock_unlock(v3 + 4);
}

uint64_t AsyncObjectGraphBuilder.subtracting<A>(allDependenciesExcept:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = *(a3 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v23 = (*(v14 + 16))(v15, v14);
  (*(v12 + 16))(&v24[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
  v16 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a2;
  *(v17 + 3) = a3;
  *(v17 + 4) = a4;
  *(v17 + 5) = a5;
  (*(v12 + 32))(&v17[v16], &v24[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  v27 = &type metadata for SyncTaskScheduler;
  v28 = &protocol witness table for SyncTaskScheduler;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439760);
  v18 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v20 = MEMORY[0x1E69E7CC0];
  *(v18 + 16) = v19;
  *(v18 + 24) = v20;
  *(v18 + 32) = 0;
  v21 = swift_allocObject();
  v21[2] = sub_1AB093FB0;
  v21[3] = v17;
  v21[4] = v18;
  v24[0] = sub_1AB093FA4;
  v24[1] = v21;
  v24[2] = sub_1AB199764;
  v24[3] = v18;
  sub_1AB01494C(v26, v25);
  v25[40] = 0;
  swift_retain_n();

  sub_1AB040C28(v24);

  sub_1AB014AC0(v24, &unk_1EB43D1D0);
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437680);
  a6[3] = result;
  a6[4] = &off_1F200A3D8;
  *a6 = v18;
  a6[1] = v20;
  return result;
}

uint64_t sub_1AB08EED4()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1AB08EF54()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AB08EF94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1AB027554;

  return sub_1AB0439B0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1AB08F070(uint64_t a1)
{
  v4 = *(type metadata accessor for Bag.FetchConfiguration() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1AB027554;

  return sub_1AB043AA4(a1, v1 + v5);
}

uint64_t sub_1AB08F14C()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_1AB39AD50;
  }

  else
  {
    v2 = sub_1AB08F260;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB08F260()
{
  super_class = v0[12].super_class;
  sub_1AB01494C(&v0[1], &v0[3].super_class);
  v2 = v0[14].super_class;
  v3 = v0[13].super_class;
  if (super_class)
  {
    v4 = v0[12].super_class;

    v24 = v4;
    v21 = v4;
  }

  else
  {
    v5 = objc_opt_self();

    v21 = [v5 currentProcess];
    v24 = 0;
    v2 = v0[14].super_class;
    v3 = v0[13].super_class;
  }

  receiver = v0[14].receiver;
  v7 = v0[13].receiver;
  v8 = v0[12].receiver;
  v9 = v0[10].super_class;
  v10 = v0[9].receiver;
  v19 = v0[8].super_class;
  v20 = v0[9].super_class;
  v22 = v0[7].receiver;
  v23 = v0[10].receiver;
  v11 = type metadata accessor for AMSKitAMSBag();
  v12 = objc_allocWithZone(v11);
  *&v12[OBJC_IVAR____TtC9JetEngine12AMSKitAMSBag____lazy_storage___amsBag] = 0;
  sub_1AB01494C(&v0[3].super_class, &v12[OBJC_IVAR____TtC9JetEngine12AMSKitAMSBag_amsKitBag]);
  v13 = &v12[OBJC_IVAR____TtC9JetEngine12AMSKitAMSBag_profile];
  *v13 = v7;
  *(v13 + 1) = v3;
  v14 = &v12[OBJC_IVAR____TtC9JetEngine12AMSKitAMSBag_profileVersion];
  *v14 = receiver;
  *(v14 + 1) = v2;
  *&v12[OBJC_IVAR____TtC9JetEngine12AMSKitAMSBag_processInfo] = v21;
  v0[6].receiver = v12;
  v0[6].super_class = v11;
  v15 = v24;
  v16 = objc_msgSendSuper2(v0 + 6, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(&v0[3].super_class);
  __swift_destroy_boxed_opaque_existential_1Tm(&v0[1]);
  v10[1](v20, v19);
  (*(v9 + 1))(v8, v23);
  *v22 = v16;

  v17 = v0->super_class;

  return v17();
}

uint64_t sub_1AB08F4CC()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1AB39A41C;
  }

  else
  {
    v2 = sub_1AB08F5E0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB08F5E0()
{
  v1 = v0[2];
  v2 = v0[3];
  swift_getObjectType();
  sub_1AB08F65C(v1, v2);
  swift_unknownObjectRelease();
  v3 = v0[1];

  return v3();
}

void sub_1AB08F65C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  if (*(a2 + 32) == 3)
  {
    os_unfair_lock_unlock(v3 + 4);
  }

  else if (*(a2 + 32))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v4 = *(a2 + 24);
    *(a2 + 24) = a1;
    *(a2 + 32) = 1;
    swift_unknownObjectRetain();
    os_unfair_lock_unlock(v3 + 4);
    v13 = v4;
    v5 = v4[2];
    if (v5)
    {
      v6 = (v4 + 4);
      do
      {
        sub_1AB08F8AC(v6, v21);
        sub_1AB08F8AC(v21, v18);
        v7 = v18[0];
        if (v20)
        {
          **(*(v18[0] + 64) + 40) = a1;
          swift_unknownObjectRetain();
          swift_continuation_throwingResume();
          sub_1AB08F91C(v21);
        }

        else
        {
          v8 = v18[1];

          sub_1AB0149B0(&v19, v15);
          v10 = v16;
          v9 = v17;
          __swift_project_boxed_opaque_existential_1Tm(v15, v16);
          v11 = swift_allocObject();
          v11[2] = v7;
          v11[3] = v8;
          v11[4] = a1;
          v12 = *(v9 + 8);
          swift_unknownObjectRetain();

          v12(sub_1AB182594, v11, v10, v9);

          sub_1AB08F91C(v21);
          __swift_destroy_boxed_opaque_existential_1Tm(v15);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }

    sub_1AB08F984(v13, 0);
  }
}

uint64_t sub_1AB08F8AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437750);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AB08F91C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437750);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AB08F984(void *a1, unsigned __int8 a2)
{
  if (a2 > 1u)
  {
    if (a2 == 2 || a2 == 3)
    {
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
  }
}

uint64_t sub_1AB08F9BC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 352) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_1AB39AA08;
  }

  else
  {
    *(v1 + 360) = *(v1 + 288);
    v3 = sub_1AB08FAE0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1AB08FAE0()
{
  if ((*(v0 + 217) & 1) != 0 || *(*(v0 + 312) + 40) == 1)
  {
    v1 = *(v0 + 360);
    v2 = *(v0 + 304);

    *v2 = v1;

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v9 = *(v0 + 360);
    v6 = *(v0 + 328);
    v5 = *(v0 + 336);
    v7 = *(v0 + 320);
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 296;
    *(v0 + 88) = sub_1AB39AA74;
    swift_continuation_init();
    *(v0 + 280) = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 256));
    sub_1AB016760(0, &qword_1EB434430);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0);
    sub_1AB460AF4();
    (*(v6 + 32))(boxed_opaque_existential_0, v5, v7);
    *(v0 + 224) = MEMORY[0x1E69E9820];
    *(v0 + 232) = 1107296256;
    *(v0 + 240) = sub_1AB0944A4;
    *(v0 + 248) = &block_descriptor_42;
    [v9 createSnapshotWithCompletion_];
    (*(v6 + 8))(boxed_opaque_existential_0, v7);

    return MEMORY[0x1EEE6DEC8](v0 + 80);
  }
}

uint64_t sub_1AB08FD24()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1AB398C04;
  }

  else
  {
    v2 = sub_1AB08FE38;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB08FE38()
{
  sub_1AB08FEA0(*(v0 + 16));
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

void sub_1AB08FEA0(uint64_t a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  if (*(v1 + 32) == 3)
  {
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (*(v1 + 32))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v3 = *(v1 + 24);
    sub_1AB090188(v3, 0);
    *(v1 + 24) = a1;
    *(v1 + 32) = 1;
    swift_unknownObjectRetain();
    sub_1AB023D0C(v3, 0, MEMORY[0x1E69E7D60]);
    os_unfair_lock_unlock(v2 + 4);
    v4 = v3[2];
    if (v4)
    {
      v16 = v3;
      v5 = (v3 + 4);
      v6 = &unk_1EB4397E0;
      do
      {
        sub_1AB014A58(v5, v24, v6);
        sub_1AB014A58(v24, v21, v6);
        v7 = v21[0];
        if (v23)
        {
          **(*(v21[0] + 64) + 40) = a1;
          swift_unknownObjectRetain();
          swift_continuation_throwingResume();
          sub_1AB014AC0(v24, v6);
        }

        else
        {
          v8 = v21[1];

          sub_1AB0149B0(&v22, v18);
          v10 = v19;
          v9 = v20;
          __swift_project_boxed_opaque_existential_1Tm(v18, v19);
          v11 = swift_allocObject();
          v11[2] = v7;
          v11[3] = v8;
          v11[4] = a1;
          v12 = v6;
          v13 = *(v9 + 8);
          swift_unknownObjectRetain();

          v13(sub_1AB017C7C, v11, v10, v9);
          v6 = v12;

          sub_1AB014AC0(v24, v12);
          __swift_destroy_boxed_opaque_existential_1Tm(v18);
        }

        v5 += 80;
        --v4;
      }

      while (v4);
      v14 = MEMORY[0x1E69E7D60];
      v15 = v16;
    }

    else
    {
      v14 = MEMORY[0x1E69E7D60];
      v15 = v3;
    }

    sub_1AB023D0C(v15, 0, v14);
  }
}

id sub_1AB090188(id result, unsigned __int8 a2)
{
  if (a2 > 1u)
  {
    if (a2 == 2 || a2 == 3)
    {
      return result;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      return swift_unknownObjectRetain();
    }
  }

  else
  {
  }

  return result;
}

uint64_t sub_1AB0901C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AB460134();
  v6 = *(v5 - 8);
  result = MEMORY[0x1EEE9AC00](v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    (*(v6 + 104))(v9, *MEMORY[0x1E6977AC8], v5);
    sub_1AB460174();
    result = (*(v6 + 8))(v9, v5);
  }

  if (a3)
  {
    v11 = &type metadata for Bag;
    return StartUpPerformanceEvent.record(checkpoint:)(&v11);
  }

  return result;
}

uint64_t sub_1AB0902E4(uint64_t *a1, void (*a2)(void *__return_ptr, uint64_t *))
{
  v4 = *a1;
  a2(v3, &v4);
  sub_1AB022A14(v3);
  return sub_1AB01667C(v3);
}

uint64_t sub_1AB09038C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  a2[4] = &type metadata for Bag;
  *a2 = &type metadata for Bag;
  a2[1] = v2;
  return swift_unknownObjectRetain();
}

uint64_t sub_1AB0903B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4368F8);
  v5 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = MEMORY[0x1E69E7CC0];
  *(v5 + 16) = v6;
  *(v5 + 24) = v7;
  *(v5 + 32) = 0;
  v8 = sub_1AB460BE4();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_1AB4D4648;
  v9[5] = a1;
  v9[6] = v5;
  swift_retain_n();

  sub_1AB39BBA8(0, 0, v4, &unk_1AB4D4660, v9);

  return v5;
}

uint64_t sub_1AB090550()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

id sub_1AB090598@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  type metadata accessor for BaseObjectGraph();

  swift_task_localValuePush();
  v4 = sub_1AB048608(*(a1 + 16));
  result = swift_task_localValuePop();
  if (!v4)
  {
    result = [objc_opt_self() ams_sharedAccountStore];
    v4 = result;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1AB090670(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1AB027460;

  return sub_1AB09074C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1AB09074C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 32) = v7;
  *v7 = v6;
  v7[1] = sub_1AB09317C;

  return v9(v6 + 16);
}

uint64_t sub_1AB090840(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1AB027460;

  return sub_1AB0908DC(a1, v1);
}

uint64_t sub_1AB0908DC(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  v3 = swift_task_alloc();
  v2[14] = v3;
  *v3 = v2;
  v3[1] = sub_1AB091548;

  return sub_1AB090984();
}

uint64_t sub_1AB0909A4()
{
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v0[3] = v0[4];
  v1 = swift_task_alloc();
  v0[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439550);
  *v1 = v0;
  v1[1] = sub_1AB091410;
  v2 = v0[4];

  return MEMORY[0x1EEE6DE98](v0 + 2, v0 + 3, &unk_1AB4E37E0, v2, 0, 0, 0xD00000000000001FLL, 0x80000001AB4FEE90);
}

uint64_t sub_1AB090AE4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1AB027554;

  return sub_1AB090B94(a1, v1);
}

uint64_t sub_1AB090B94(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB090BB4, 0, 0);
}

uint64_t sub_1AB090BB4()
{
  v1 = *(*(v0 + 24) + 16);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1AB09129C;

  return sub_1AB090C60(v1);
}

uint64_t sub_1AB090C60(uint64_t a1)
{
  *(v1 + 216) = a1;
  *(v1 + 224) = sub_1AB016760(0, &unk_1ED4D1398);

  return MEMORY[0x1EEE6DFA0](sub_1AB090CE0, 0, 0);
}

uint64_t sub_1AB090CE0()
{
  if (!*(*(v0 + 216) + 16) || (v1 = sub_1AB016558(*(v0 + 224)), (v2 & 1) == 0))
  {
    if (qword_1ED4D19F0 != -1)
    {
      swift_once();
    }

    v5 = off_1ED4D19F8;
    v6 = *(off_1ED4D19F8 + 2);

    if (!v6)
    {
      goto LABEL_16;
    }

    v7 = 0;
    while (1)
    {
      *(v0 + 128) = v5[v7 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4368D8);
      result = swift_dynamicCast();
      if (result)
      {
        if (*(v0 + 112))
        {
          break;
        }
      }

      if (v6 == ++v7)
      {
        v7 = v6;
        break;
      }
    }

    v9 = *(v5 + 2);
    if (v7 == v9)
    {
LABEL_16:

      v4 = 0;
      goto LABEL_17;
    }

    if (v7 >= v9)
    {
      __break(1u);
    }

    else
    {
      *(v0 + 160) = v5[v7 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4368D8);
      result = swift_dynamicCast();
      if (result)
      {
        v11 = *(v0 + 144);
        if (v11)
        {
          v12 = *(v0 + 152);

          v13 = swift_task_alloc();
          *(v0 + 232) = v13;
          *v13 = v0;
          v13[1] = sub_1AB343AC4;
          v14 = *(v0 + 216);
          v15 = *(v0 + 224);

          return sub_1AB0AB648(v0 + 176, v11, v14, v15, v11, v12);
        }
      }
    }

    __break(1u);
    return result;
  }

  sub_1AB0165C4(*(*(v0 + 216) + 56) + 32 * v1, v0 + 48);
  sub_1AB014B78((v0 + 48), (v0 + 16));
  sub_1AB0165C4(v0 + 16, v0 + 80);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 184);
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 80);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
    v4 = v3;
LABEL_17:
    v10 = *(v0 + 8);

    return v10(v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4368C8);
  if (swift_dynamicCast())
  {
    v16 = sub_1AB1310D0();

    *(v0 + 176) = v16;
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 80);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
    v4 = v16;
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4368D0);
  if (swift_dynamicCast())
  {
    v3 = sub_1AB132B28();

    *(v0 + 176) = v3;
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B100);
  if (swift_dynamicCast())
  {
    *(v0 + 240) = *(v0 + 208);
    v17 = swift_task_alloc();
    *(v0 + 248) = v17;
    *v17 = v0;
    v17[1] = sub_1AB32A0D4;

    return sub_1AB33DCE4();
  }

  else
  {
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 16), *(v0 + 40));
    sub_1AB461D64();
    MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
    v18 = sub_1AB462314();
    MEMORY[0x1AC59BA20](v18);

    MEMORY[0x1AC59BA20](0xD000000000000016, 0x80000001AB4FEF10);
    return sub_1AB461884();
  }
}

uint64_t sub_1AB09129C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 40) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1AB09140C, 0, 0);
  }
}

uint64_t sub_1AB091410()
{
  v2 = *v1;
  v2[6] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB28EE60, 0, 0);
  }

  else
  {
    v3 = v2[2];
    v4 = v2[1];

    return v4(v3);
  }
}

uint64_t sub_1AB091548(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 120) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB09167C, 0, 0);
  }
}

uint64_t sub_1AB09167C()
{
  if (*(v0 + 120))
  {
    v1 = swift_task_alloc();
    *(v0 + 128) = v1;
    *v1 = v0;
    v1[1] = sub_1AB0922AC;

    return sub_1AB091780(v0 + 88);
  }

  else
  {
    sub_1AB1453B4();
    return sub_1AB461884();
  }
}

uint64_t sub_1AB091780(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1AB0917A0, 0, 0);
}

uint64_t sub_1AB0917A0()
{
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v0[3] = v0[5];
  v1 = swift_task_alloc();
  v0[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439520);
  *v1 = v0;
  v1[1] = sub_1AB0920D8;
  v2 = v0[5];

  return MEMORY[0x1EEE6DE98](v0 + 2, v0 + 3, &unk_1AB4E36D0, v2, 0, 0, 0xD00000000000001FLL, 0x80000001AB4FEE90);
}

uint64_t sub_1AB0918E0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1AB027554;

  return sub_1AB09197C(a1, v1);
}

uint64_t sub_1AB09197C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB09199C, 0, 0);
}

uint64_t sub_1AB09199C()
{
  v1 = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1AB091FE0;
  v3 = v0[2];

  return sub_1AB091A50(v3, v1);
}

uint64_t sub_1AB091A50(uint64_t a1, uint64_t a2)
{
  *(v2 + 208) = a1;
  *(v2 + 216) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB091A70, 0, 0);
}

uint64_t sub_1AB091A70()
{
  if (!*(*(v0 + 216) + 16) || (v1 = sub_1AB016558(&type metadata for Bag), (v2 & 1) == 0))
  {
    if (qword_1ED4D19F0 != -1)
    {
      swift_once();
    }

    v3 = off_1ED4D19F8;
    v4 = *(off_1ED4D19F8 + 2);

    if (!v4)
    {
      goto LABEL_15;
    }

    v5 = 0;
    while (1)
    {
      *(v0 + 128) = v3[v5 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436878);
      result = swift_dynamicCast();
      if (result)
      {
        if (*(v0 + 112))
        {
          break;
        }
      }

      if (v4 == ++v5)
      {
        v5 = v4;
        break;
      }
    }

    v7 = *(v3 + 2);
    if (v5 == v7)
    {
LABEL_15:
      v8 = *(v0 + 208);

      *v8 = 0;
LABEL_25:
      v14 = *(v0 + 8);

      return v14();
    }

    if (v5 >= v7)
    {
      __break(1u);
    }

    else
    {
      *(v0 + 160) = v3[v5 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436878);
      result = swift_dynamicCast();
      if (result)
      {
        v9 = *(v0 + 144);
        if (v9)
        {
          v10 = *(v0 + 152);

          v11 = swift_task_alloc();
          *(v0 + 224) = v11;
          *v11 = v0;
          v11[1] = sub_1AB329DE4;
          v12 = *(v0 + 208);
          v13 = *(v0 + 216);

          return sub_1AB0AB648(v12, v9, v13, &type metadata for Bag, v9, v10);
        }
      }
    }

    __break(1u);
    return result;
  }

  sub_1AB0165C4(*(*(v0 + 216) + 56) + 32 * v1, v0 + 48);
  sub_1AB014B78((v0 + 48), (v0 + 16));
  sub_1AB0165C4(v0 + 16, v0 + 80);
  if (swift_dynamicCast())
  {
    **(v0 + 208) = *(v0 + 176);
LABEL_24:
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 80);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436868);
  if (swift_dynamicCast())
  {
    sub_1AB131420(*(v0 + 208));

    goto LABEL_24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436870);
  if (swift_dynamicCast())
  {
    sub_1AB132E6C(*(v0 + 208));

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 80);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B068);
  if (swift_dynamicCast())
  {
    *(v0 + 232) = *(v0 + 200);
    v15 = swift_task_alloc();
    *(v0 + 240) = v15;
    *v15 = v0;
    v15[1] = sub_1AB329ED8;
    v16 = *(v0 + 208);

    return sub_1AB33D96C(v16);
  }

  else
  {
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 16), *(v0 + 40));
    sub_1AB461D64();
    MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1AC59BA20](6775106, 0xE300000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000016, 0x80000001AB4FEF10);
    return sub_1AB461884();
  }
}

uint64_t sub_1AB091FE4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1AB0920D8()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1AB267F44;
  }

  else
  {
    v2 = sub_1AB0921EC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB0921EC()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    **(v0 + 32) = v1;
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    sub_1AB1462E0();
    return sub_1AB461884();
  }
}

uint64_t sub_1AB0922AC()
{
  v2 = *v1;
  *(v2 + 136) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB12B9EC, 0, 0);
  }

  else
  {
    *(v2 + 144) = *(v2 + 88);
    v3 = swift_task_alloc();
    *(v2 + 152) = v3;
    *v3 = v2;
    v3[1] = sub_1AB092EC8;

    return (sub_1AB09244C)(v2 + 56);
  }
}

uint64_t sub_1AB09244C(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1AB09246C, 0, 0);
}

uint64_t sub_1AB09246C()
{
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v0[6] = v0[8];
  v1 = swift_task_alloc();
  v0[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439548);
  *v1 = v0;
  v1[1] = sub_1AB092CE0;
  v2 = v0[8];

  return MEMORY[0x1EEE6DE98](v0 + 2, v0 + 6, &unk_1AB4E37C0, v2, 0, 0, 0xD00000000000001FLL, 0x80000001AB4FEE90);
}

uint64_t sub_1AB0925AC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1AB027554;

  return sub_1AB092648(a1, v1);
}

uint64_t sub_1AB092648(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB092668, 0, 0);
}

uint64_t sub_1AB092668()
{
  v1 = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1AB091FE0;
  v3 = v0[2];

  return sub_1AB092CA8(v3, v1);
}

uint64_t sub_1AB09271C()
{
  if (!*(*(v0 + 240) + 16) || (v1 = sub_1AB016558(&type metadata for JetEngineBootstrap.URLProtocolHandler), (v2 & 1) == 0))
  {
    if (qword_1ED4D19F0 != -1)
    {
      swift_once();
    }

    v5 = off_1ED4D19F8;
    v6 = *(off_1ED4D19F8 + 2);

    if (!v6)
    {
      goto LABEL_15;
    }

    v7 = 0;
    while (1)
    {
      *(v0 + 160) = v5[v7 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4368A8);
      result = swift_dynamicCast();
      if (result)
      {
        if (*(v0 + 144))
        {
          break;
        }
      }

      if (v6 == ++v7)
      {
        v7 = v6;
        break;
      }
    }

    v9 = *(v5 + 2);
    if (v7 == v9)
    {
LABEL_15:
      v10 = *(v0 + 232);

      *v10 = xmmword_1AB4D41A0;
      *(v10 + 16) = 0;
      *(v10 + 24) = 0;
LABEL_25:
      v16 = *(v0 + 8);

      return v16();
    }

    if (v7 >= v9)
    {
      __break(1u);
    }

    else
    {
      *(v0 + 192) = v5[v7 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4368A8);
      result = swift_dynamicCast();
      if (result)
      {
        v11 = *(v0 + 176);
        if (v11)
        {
          v12 = *(v0 + 184);

          v13 = swift_task_alloc();
          *(v0 + 248) = v13;
          *v13 = v0;
          v13[1] = sub_1AB329AF4;
          v14 = *(v0 + 232);
          v15 = *(v0 + 240);

          return sub_1AB0AB648(v14, v11, v15, &type metadata for JetEngineBootstrap.URLProtocolHandler, v11, v12);
        }
      }
    }

    __break(1u);
    return result;
  }

  sub_1AB0165C4(*(*(v0 + 240) + 56) + 32 * v1, v0 + 48);
  sub_1AB014B78((v0 + 48), (v0 + 16));
  sub_1AB0165C4(v0 + 16, v0 + 80);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 232);
    v4 = *(v0 + 128);
    *v3 = *(v0 + 112);
    v3[1] = v4;
LABEL_24:
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 80);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436898);
  if (swift_dynamicCast())
  {
    sub_1AB13128C(*(v0 + 232));

    goto LABEL_24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4368A0);
  if (swift_dynamicCast())
  {
    sub_1AB132CE8(*(v0 + 232));

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 80);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B0F0);
  if (swift_dynamicCast())
  {
    *(v0 + 256) = *(v0 + 224);
    v17 = swift_task_alloc();
    *(v0 + 264) = v17;
    *v17 = v0;
    v17[1] = sub_1AB329BE8;
    v18 = *(v0 + 232);

    return sub_1AB33D5F4(v18);
  }

  else
  {
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 16), *(v0 + 40));
    sub_1AB461D64();
    MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000012, 0x80000001AB50A200);
    MEMORY[0x1AC59BA20](0xD000000000000016, 0x80000001AB4FEF10);
    return sub_1AB461884();
  }
}

uint64_t sub_1AB092CA8(uint64_t a1, uint64_t a2)
{
  *(v2 + 232) = a1;
  *(v2 + 240) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB09271C, 0, 0);
}

uint64_t get_enum_tag_for_layout_string_9JetEngine0aB9BootstrapV18URLProtocolHandlerO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1AB092CE0()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1AB267F5C;
  }

  else
  {
    v2 = sub_1AB092DF4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB092DF4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  if (v2 == 2)
  {
    sub_1AB157FD4(v1, 2uLL);
    sub_1AB145E80();
    return sub_1AB461884();
  }

  else
  {
    v6 = v0[7];
    *v6 = v1;
    v6[1] = v2;
    v6[2] = v3;
    v6[3] = v4;
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1AB092EC8()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = *(v2 + 120);
    swift_unknownObjectRelease();

    v4 = sub_1AB12BA04;
  }

  else
  {
    v4 = sub_1AB092FEC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1AB092FEC()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 0;
      v3 = 0;
      v4 = 2;
      v5 = 1;
      v1 = 0;
    }

    else
    {
      v2 = *(v0 + 72);
      v3 = *(v0 + 80);
      v5 = *(v0 + 56);

      sub_1AB093AF0(v5, v1);
      v4 = 0;
    }
  }

  else
  {
    v4 = 2;
    v5 = 0;
    v2 = 0;
    v3 = 0;
  }

  v6 = *(v0 + 120);
  sub_1AB016760(0, &qword_1ED4D1050);
  *(v0 + 16) = v5;
  *(v0 + 24) = v1;
  *(v0 + 32) = v2;
  *(v0 + 40) = v3;
  *(v0 + 48) = v4;
  v7 = swift_task_alloc();
  *(v0 + 168) = v7;
  *v7 = v0;
  v7[1] = sub_1AB093CF0;
  v8 = *(v0 + 144);

  return sub_1AB04E6F0(v6, v8, v0 + 16);
}

uint64_t sub_1AB09317C()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1AB398C74;
  }

  else
  {
    v2 = sub_1AB093E54;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB0932CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  v6 = *a1;
  v7 = sub_1AB093290(a2, a3, a4);
  swift_beginAccess();
  v9 = *(v6 + 24);
  v8 = *(v6 + 32);
  swift_beginAccess();
  *(v7 + 24) = v9;
  *(v7 + 32) = v8;

  *a5 = v7;
  return result;
}

uint64_t sub_1AB09336C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a6;
  v27 = a7;
  v25 = a5;
  v23 = a4;
  v28 = *v7;
  v11 = sub_1AB461604();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = sub_1AB461804();
  v24 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v23 - v16;
  v31 = v7[2];

  v23(a1, a2, a3);
  MEMORY[0x1AC59BB90](a2, a3);
  swift_getWitnessTable();
  sub_1AB461984();
  (*(v12 + 8))(v14, v11);
  swift_getWitnessTable();
  sub_1AB0273A8();
  v18 = sub_1AB460894();
  v20 = v19;
  (*(v24 + 8))(v17, v15);
  swift_beginAccess();
  v21 = v7[4];
  v29 = v7[3];
  v30 = v21;

  MEMORY[0x1AC59BA20](v26, v27);
  MEMORY[0x1AC59BA20](v18, v20);

  MEMORY[0x1AC59BA20](93, 0xE100000000000000);
  return (*(v28 + 96))(v29, v30, &v31);
}

uint64_t JSStack.__allocating_init(asPartOf:virtualMachine:configuration:customPrerequisites:)(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 1);
  v6 = *(a3 + 8);
  v7 = *(a3 + 16);
  LOBYTE(v13) = *a3;
  BYTE1(v13) = v5;
  *(&v13 + 1) = v6;
  v14 = v7;
  v8 = sub_1AB0456A0(a1, &v13);

  sub_1AB0177B8(v6);
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  *&v13 = a1;
  type metadata accessor for BaseObjectGraph();

  swift_task_localValuePush();
  sub_1AB0472B0(*(a1 + 16), &v13);
  swift_task_localValuePop();
  v12[0] = a1;

  swift_task_localValuePush();
  sub_1AB047758(*(a1 + 16), v12);
  swift_task_localValuePop();
  swift_allocObject();
  sub_1AB047C28(v8, 25, &v13, a2, v12);
  v10 = v9;

  return v10;
}

uint64_t sub_1AB0939F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1AB027460;

  return sub_1AB0968F4(a1, v4, v5, v7, v6);
}

uint64_t sub_1AB093AF0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

id sub_1AB093B98(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = sub_1AB460514();
  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](0xD000000000000020, 0x80000001AB5068A0);
  type metadata accessor for AMSBagKey(0);
  sub_1AB461824();
  v6 = sub_1AB460514();

  v7 = AMSError();

  v8 = sub_1AB45F584();
  v9 = [v4 failingBagValueWithKey:a1 valueType:a2 error:v8];

  return v9;
}

uint64_t sub_1AB093CF0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  *(*v2 + 176) = v1;

  swift_unknownObjectRelease();

  if (v1)
  {
    v6 = sub_1AB12B9D4;
  }

  else
  {
    *(v4 + 184) = a1;
    v6 = sub_1AB093158;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1AB093E54()
{
  v1 = *(v0 + 16);
  sub_1AB03C4C4(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1AB093EBC(uint64_t *a1, void (*a2)(uint64_t *__return_ptr, uint64_t *))
{
  v4 = *a1;
  a2(&v3, &v4);
  sub_1AB023A18(v3);
}

uint64_t DependencyDictionary.remove<A>(allDependenciesExcept:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_1AB461604();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v42 - v9;
  v11 = sub_1AB461804();
  MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1AC59BB90](a2, a3);
  swift_getWitnessTable();
  sub_1AB461984();
  v12 = *(v8 + 8);
  v42 = v4;
  v12(v10, v7);
  sub_1AB014B20();
  swift_getWitnessTable();
  v13 = sub_1AB460E94();
  v14 = v13;
  v15 = *v4;
  v16 = *v4 + 64;
  v17 = 1 << *(*v4 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(*v4 + 64);
  v20 = (v17 + 63) >> 6;
  v21 = v13 + 56;

  v23 = 0;
  v43 = v15;
  while (1)
  {
    v24 = v23;
    if (!v19)
    {
      break;
    }

    v25 = v23;
LABEL_17:
    v27 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v28 = v27 | (v25 << 6);
    v29 = *(*(v15 + 48) + 8 * v28);
    sub_1AB0165C4(*(v15 + 56) + 32 * v28, v47);
    *&v44 = v29;
    sub_1AB014B78(v47, (&v44 + 8));
    v23 = v25;
LABEL_18:
    v48[0] = v44;
    v48[1] = v45;
    v49 = v46;
    v30 = v44;
    if (!v44)
    {
    }

    if (*(v14 + 16) && (sub_1AB4620A4(), MEMORY[0x1AC59D3F0](v30), v31 = sub_1AB462104(), v32 = -1 << *(v14 + 32), v33 = v31 & ~v32, ((*(v21 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) != 0))
    {
      v34 = ~v32;
      while (*(*(v14 + 48) + 8 * v33) != v30)
      {
        v33 = (v33 + 1) & v34;
        if (((*(v21 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
LABEL_24:
      v35 = sub_1AB016558(v30);
      if (v36)
      {
        v37 = v35;
        v38 = v15;
        v39 = v42;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = *v39;
        *&v47[0] = *v39;
        *v39 = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1AB01A034();
          v41 = *&v47[0];
        }

        sub_1AB014B78((*(v41 + 56) + 32 * v37), &v44);
        sub_1AB0951B0(v37, v41);

        v43 = v41;
        *v39 = v41;
        v15 = v38;
      }

      else
      {
        v44 = 0u;
        v45 = 0u;
      }

      sub_1AB014AC0(&v44, &unk_1EB437E60);
    }

    result = __swift_destroy_boxed_opaque_existential_1Tm(v48 + 8);
  }

  if (v20 <= v23 + 1)
  {
    v26 = v23 + 1;
  }

  else
  {
    v26 = v20;
  }

  v23 = v26 - 1;
  while (1)
  {
    v25 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v25 >= v20)
    {
      v19 = 0;
      v46 = 0;
      v44 = 0u;
      v45 = 0u;
      goto LABEL_18;
    }

    v19 = *(v16 + 8 * v25);
    ++v24;
    if (v19)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB09440C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AB09445C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

void sub_1AB0944A4(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43BC90);
    sub_1AB460B04();
  }

  else if (a2)
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43BC90);
    sub_1AB460B14();
  }

  else
  {
    __break(1u);
  }
}

id JSValue.string.getter()
{
  if (![v0 isString])
  {
    return 0;
  }

  result = [v0 toString];
  if (result)
  {
    v2 = result;
    v3 = sub_1AB460544();

    return v3;
  }

  return result;
}

uint64_t sub_1AB0945D0(uint64_t a1)
{
  sub_1AB014A58(v1, v13, &qword_1EB439BB0);
  v3 = v13[0];
  if (v15)
  {
    **(*(v13[0] + 64) + 40) = a1;

    return swift_continuation_throwingResume();
  }

  else
  {
    v5 = v13[1];

    sub_1AB0149B0(&v14, v10);
    v6 = v11;
    v7 = v12;
    __swift_project_boxed_opaque_existential_1Tm(v10, v11);
    v8 = swift_allocObject();
    v8[2] = v3;
    v8[3] = v5;
    v8[4] = a1;
    v9 = *(v7 + 8);

    v9(sub_1AB017C7C, v8, v6, v7);

    return __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }
}

uint64_t sub_1AB094728(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1AB45F024();
  v10 = [a2 requestByEncodingRequest:v9 parameters:0];

  sub_1AB0C1A90(v10);
  v11 = swift_allocObject();
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = a1;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  v17 = &type metadata for SyncTaskScheduler;
  v18 = &protocol witness table for SyncTaskScheduler;
  v14[0] = sub_1AB09C670;
  v14[1] = v11;
  v14[2] = sub_1AB396C0C;
  v14[3] = v12;
  sub_1AB01494C(v16, v15);
  v15[40] = 0;
  sub_1AB04B604(a4);

  sub_1AB0C1FD4(v14);

  sub_1AB014AC0(v14, &unk_1EB437760);
  return __swift_destroy_boxed_opaque_existential_1Tm(v16);
}

uint64_t sub_1AB094894()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AB0948E4(uint64_t a1)
{
  v36 = sub_1AB45FF04();
  v2 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v34 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439598);
  result = sub_1AB461904();
  v5 = 0;
  v37 = a1;
  v8 = *(a1 + 64);
  v7 = a1 + 64;
  v6 = v8;
  v9 = 1 << *(v7 - 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v35 = v2;
  v31 = v2 + 8;
  v32 = v2 + 16;
  v30 = result + 64;
  v33 = result;
  if (v11)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v11));
      v38 = (v11 - 1) & v11;
LABEL_10:
      v16 = v13 | (v5 << 6);
      v39 = 16 * v16;
      v17 = v36;
      v18 = *(v37 + 56);
      v19 = (*(v37 + 48) + 16 * v16);
      v20 = v19[1];
      v40 = *v19;
      v21 = v34;
      v22 = v35;
      (*(v35 + 16))(v34, v18 + *(v35 + 72) * v16, v36);

      v24 = sub_1AB094B50(v23);
      (*(v22 + 8))(v21, v17);
      *(v30 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = v33;
      v25 = (*(v33 + 48) + v39);
      *v25 = v40;
      v25[1] = v20;
      *(*(result + 56) + 8 * v16) = v24;
      v26 = *(result + 16);
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        break;
      }

      *(result + 16) = v28;
      v11 = v38;
      if (!v38)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v12)
      {
        return result;
      }

      v15 = *(v7 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v38 = (v15 - 1) & v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1AB094B50()
{
  v1 = sub_1AB45FCA4();
  v47 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1AB45FF04();
  v5 = *(v4 - 8);
  v48 = v4;
  v49 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AB45FE94();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v46 - v13;
  sub_1AB45FEC4();
  sub_1AB45FE84();
  v15 = sub_1AB45FE74();
  v16 = *(v9 + 8);
  v16(v12, v8);
  v16(v14, v8);
  if (v15)
  {
    return [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  if (sub_1AB45FEA4() != 2)
  {
    return sub_1AB460AD4();
  }

  sub_1AB45FE64();
  if ((v18 & 1) == 0)
  {
    return sub_1AB460EA4();
  }

  sub_1AB45FEE4();
  if ((v19 & 1) == 0)
  {
    return sub_1AB460DE4();
  }

  sub_1AB45FEF4();
  if (v20)
  {
    v21 = sub_1AB460514();
LABEL_8:
    v22 = v21;

    return v22;
  }

  v23 = sub_1AB45FEB4();
  if (v24 >> 60 == 15)
  {
    v25 = sub_1AB45FE54();
    if (v25)
    {
      sub_1AB0948E4(v25);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439590);
      v26 = sub_1AB4602D4();

      return v26;
    }

    else
    {
      v30 = sub_1AB45FED4();
      if (v30)
      {
        v31 = *(v30 + 16);
        if (v31)
        {
          v50[0] = MEMORY[0x1E69E7CC0];
          v32 = v30;
          sub_1AB461754();
          v33 = v49 + 16;
          v49 = *(v49 + 16);
          v34 = *(v33 + 64);
          v47 = v32;
          v35 = v32 + ((v34 + 32) & ~v34);
          v36 = *(v33 + 56);
          v37 = v48;
          do
          {
            v38 = (v49)(v7, v35, v37);
            sub_1AB094B50(v38);
            (*(v33 - 8))(v7, v37);
            sub_1AB461724();
            sub_1AB461764();
            sub_1AB461774();
            sub_1AB461734();
            v35 += v36;
            --v31;
          }

          while (v31);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439590);
        v21 = sub_1AB460934();
        goto LABEL_8;
      }

      sub_1AB45FC84();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395A0);
      sub_1AB45FC74();
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_1AB4D4190;
      v40 = v48;
      v51 = v48;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v50);
      v42 = *(v49 + 16);
      v49 += 16;
      v42(boxed_opaque_existential_0, v0, v40);
      v43 = AMSLogKey();
      if (v43)
      {
        v46[1] = v39;
        v44 = v43;
        sub_1AB460544();
      }

      sub_1AB45FC64();

      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      sub_1AB45FC44();
      v51 = v40;
      v45 = __swift_allocate_boxed_opaque_existential_0(v50);
      v42(v45, v0, v40);
      sub_1AB45FC54();
      sub_1AB014AC0(v50, &unk_1EB437E60);
      sub_1AB45FC94();

      (*(v47 + 8))(v3, v1);
      return 0;
    }
  }

  else
  {
    v27 = v23;
    v28 = v24;
    v29 = sub_1AB45F834();
    sub_1AB03BD58(v27, v28);
    return v29;
  }
}

uint64_t type metadata accessor for NetRequest()
{
  result = qword_1EB435360;
  if (!qword_1EB435360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AB0951B0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AB461504() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_1AB4620A4();
      MEMORY[0x1AC59D3F0](v10);
      result = sub_1AB462104();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 8 * v3);
        v14 = (v12 + 8 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for OpaqueMetatype(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OpaqueMetatype(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1AB0953D4@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436960);
  result = sub_1AB4605E4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static SentryConfiguration.defaultEventRecorder(bag:)@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v6 = *a1;
  swift_unknownObjectRetain();
  v3 = _s9JetEngine23AMSMetricsEventRecorderC3bag12defaultTopicAcA3BagV_SStcfC_0(&v6, 0, 0xE000000000000000);
  v4 = v3[12];
  v3[12] = sub_1AB2BEE00;
  v3[13] = 0;
  sub_1AB0177B8(v4);
  result = type metadata accessor for AMSMetricsEventRecorder();
  a2[3] = result;
  a2[4] = &protocol witness table for AMSMetricsEventRecorder;
  *a2 = v3;
  return result;
}

id sub_1AB0954BC()
{

  v0 = sub_1AB460514();

  return v0;
}

uint64_t SentryConfiguration.init(eventRecorder:projectName:topic:javascriptVersion:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  result = sub_1AB0149B0(a1, a8);
  a8[5] = a2;
  a8[6] = a3;
  a8[7] = a4;
  a8[8] = a5;
  a8[9] = a6;
  a8[10] = a7;
  a8[12] = 0;
  a8[13] = 0;
  a8[11] = 0;
  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1AB09562C(uint64_t *a1)
{
  v2 = sub_1AB4601B4();
  v22 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1AB4601F4();
  v20 = *(v5 - 8);
  v21 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AB4601C4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BED8);
  v13 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v15 = MEMORY[0x1E69E7CC0];
  *(v13 + 16) = v14;
  *(v13 + 24) = v15;
  *(v13 + 32) = 0;
  sub_1AB016760(0, &qword_1ED4D2060);
  (*(v9 + 104))(v11, *MEMORY[0x1E69E7F90], v8);
  v16 = sub_1AB461164();
  (*(v9 + 8))(v11, v8);
  v17 = swift_allocObject();
  *(v17 + 16) = v12;
  *(v17 + 24) = v13;
  aBlock[4] = sub_1AB095AA0;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AB01D528;
  aBlock[3] = &block_descriptor_46;
  v18 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1AB016500();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438540);
  sub_1AB01561C(&qword_1ED4D1FB0, &qword_1EB438540);
  sub_1AB4614E4();
  MEMORY[0x1AC59C480](0, v7, v4, v18);
  _Block_release(v18);

  (*(v22 + 8))(v4, v2);
  (*(v20 + 8))(v7, v21);

  return v13;
}

uint64_t sub_1AB095A10()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t get_enum_tag_for_layout_string_9JetEngine20AppleServicesEncoderV5FixUp33_D1F9EBCC2E6C3460EC9AA7A40AAFC34DLLVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1AB095AA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_1AB460BE4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  swift_unknownObjectRetain();

  sub_1AB2313A4(0, 0, v6, &unk_1AB4F2B90, v8);
}

uint64_t sub_1AB095BC0()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AB095C08@<X0>(id a1@<X1>, char *a2@<X0>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v10 = *a2;
  v11 = a2[1];
  v12 = *(a2 + 1);
  v13 = *(a2 + 2);
  v14 = *a3;
  if (![a1 protocolHandler])
  {
    sub_1AB0177B8(v12);
    goto LABEL_7;
  }

  obj = a5;
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (!v15)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      *&v55 = v14;
      v26 = objc_opt_self();
      swift_unknownObjectRetain();
      v27 = [v26 ams_sharedAccountStore];
      *&v57 = sub_1AB016760(0, &qword_1ED4D1F60);
      *(&v57 + 1) = &protocol witness table for ACAccountStore;
      *(&v55 + 1) = v27;
      v58 = [objc_opt_self() currentProcess];
      LOWORD(v59) = 1;
      v60 = 0;
      v61 = 0;
      *(&v59 + 1) = 0;
      sub_1AB095A68(&v55, &v62);
      __swift_assign_boxed_opaque_existential_1(&v62 + 1, a4);
      sub_1AB0938C8(&v55);
      sub_1AB095A68(&v62, &v55);
      objc_storeStrong(&v58, obj);
      sub_1AB0938C8(&v62);
      sub_1AB095A68(&v55, &v62);
      LOBYTE(v66) = v10;
      sub_1AB0938C8(&v55);
      BYTE1(v66) = v11;
      v57 = v64;
      v58 = v65;
      v55 = v62;
      v56 = v63;
      v59 = v66;
      if (v12)
      {
        v20 = v13;
      }

      else
      {
        v20 = 0;
      }

      goto LABEL_12;
    }

    sub_1AB0177B8(v12);
    if (qword_1EB435660 != -1)
    {
      swift_once();
    }

    v32 = qword_1EB435668;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1AB4D4190;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1AB4D4720;
    *(&v63 + 1) = MEMORY[0x1E69E6158];
    *&v62 = 0xD00000000000003FLL;
    *(&v62 + 1) = 0x80000001AB50CA60;
    *(v34 + 48) = 0u;
    *(v34 + 32) = 0u;
    sub_1AB0169C4(&v62, v34 + 32);
    *(v34 + 64) = 0;
    *(v33 + 32) = v34;
    v69 = sub_1AB0168A8(0, 29, 0, MEMORY[0x1E69E7CC0]);
    v35._countAndFlagsBits = 0x2065687420726F66;
    v35._object = 0xE900000000000060;
    LogMessage.StringInterpolation.appendLiteral(_:)(v35);
    ObjectType = swift_getObjectType();
    *(&v56 + 1) = swift_getMetatypeMetadata();
    *&v55 = ObjectType;
    sub_1AB014A58(&v55, v54, &unk_1EB437E60);
    v62 = 0u;
    v63 = 0u;
    sub_1AB0169C4(v54, &v62);
    LOBYTE(v64) = 0;
    v37 = v69;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = sub_1AB0168A8(0, *(v37 + 2) + 1, 1, v37);
    }

    v39 = *(v37 + 2);
    v38 = *(v37 + 3);
    if (v39 >= v38 >> 1)
    {
      v37 = sub_1AB0168A8((v38 > 1), v39 + 1, 1, v37);
    }

    *(v37 + 2) = v39 + 1;
    v40 = &v37[40 * v39];
    v41 = v62;
    v42 = v63;
    v40[64] = v64;
    *(v40 + 2) = v41;
    *(v40 + 3) = v42;
    v69 = v37;
    sub_1AB014AC0(&v55, &unk_1EB437E60);
    v43._object = 0x80000001AB50CAA0;
    v43._countAndFlagsBits = 0xD000000000000013;
    LogMessage.StringInterpolation.appendLiteral(_:)(v43);
    *(v33 + 40) = v69;
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1AB4D4720;
    *(&v63 + 1) = MEMORY[0x1E69E6158];
    *&v62 = 0xD000000000000042;
    *(&v62 + 1) = 0x80000001AB50CAC0;
    *(v44 + 48) = 0u;
    *(v44 + 32) = 0u;
    sub_1AB0169C4(&v62, v44 + 32);
    *(v44 + 64) = 0;
    *(v33 + 48) = v44;
    v45 = sub_1AB461094();
    if (os_log_type_enabled(v32, v45))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v46 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v46[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v46 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v48 = swift_allocObject();
      *(v48 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v62 = v33;
      *(&v62 + 1) = sub_1AB0223E4;
      *&v63 = v48;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v49 = sub_1AB460484();
      v51 = v50;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_1AB4D4720;
      *(v52 + 56) = MEMORY[0x1E69E6158];
      *(v52 + 64) = sub_1AB016854();
      *(v52 + 32) = v49;
      *(v52 + 40) = v51;
      sub_1AB45FF14();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    a5 = obj;
LABEL_7:
    *&v62 = v14;
    v21 = sub_1AB09562C(&v62);
    swift_unknownObjectRelease();
    v22 = [a1 session];
    *(&v63 + 1) = &type metadata for URLSessionPreconnecter;
    *&v64 = &protocol witness table for URLSessionPreconnecter;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C300);
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    *(v23 + 32) = 0;
    *&v62 = v22;
    *(&v62 + 1) = v23;
    *(&v64 + 1) = a1;
    a6[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BEE8);
    a6[4] = &off_1F1FF5A70;
    v24 = swift_allocObject();
    *a6 = v24;
    sub_1AB3B4580(&v62, v24 + 16);
    a6[5] = v21;
    sub_1AB3B3244();

    __swift_destroy_boxed_opaque_existential_1Tm(a4);
    return sub_1AB3B45DC(&v62);
  }

  v16 = v15;
  *&v62 = v14;
  v17 = objc_opt_self();
  swift_unknownObjectRetain();
  v18 = [v17 ams_sharedAccountStore];
  *&v64 = sub_1AB016760(0, &qword_1ED4D1F60);
  *(&v64 + 1) = &protocol witness table for ACAccountStore;
  *(&v62 + 1) = v18;
  v65 = [objc_opt_self() currentProcess];
  LOWORD(v66) = 1;
  v67 = 0;
  v68 = 0;
  *(&v66 + 1) = 0;
  sub_1AB095A68(&v62, &v55);
  __swift_assign_boxed_opaque_existential_1(&v55 + 1, a4);
  sub_1AB0938C8(&v62);
  sub_1AB095A68(&v55, &v62);
  objc_storeStrong(&v65, obj);
  sub_1AB0938C8(&v55);
  v19 = [v16 tokenService];
  sub_1AB095A68(&v62, &v55);
  swift_unknownObjectRelease();
  *(&v58 + 1) = v19;
  sub_1AB0938C8(&v62);
  sub_1AB095A68(&v55, &v62);
  LOBYTE(v66) = v10;
  sub_1AB0938C8(&v55);
  BYTE1(v66) = v11;
  v57 = v64;
  v58 = v65;
  v55 = v62;
  v56 = v63;
  v59 = v66;
  if (v12)
  {
    v20 = v13;
  }

  else
  {
    v20 = 0;
  }

LABEL_12:
  sub_1AB0177B8(v67);
  v64 = v57;
  v65 = v58;
  v66 = v59;
  v62 = v55;
  v63 = v56;
  v67 = v12;
  v68 = v20;
  *&v55 = v14;
  v28 = sub_1AB09562C(&v55);
  swift_unknownObjectRelease();
  sub_1AB093920(&v62, &v55);
  v29 = [a1 session];
  v54[3] = &type metadata for URLSessionPreconnecter;
  v54[4] = &protocol witness table for URLSessionPreconnecter;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C300);
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  *(v30 + 32) = 0;
  v54[0] = v29;
  v54[1] = v30;
  v54[5] = a1;
  a6[3] = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB43BEF0);
  a6[4] = &off_1F1FF5A70;
  v31 = swift_allocObject();
  *a6 = v31;
  sub_1AB093920(&v55, v31 + 16);
  sub_1AB093674(v54, v31 + 112);
  a6[5] = v28;
  sub_1AB3B3244();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  sub_1AB0967C0(v54);
  sub_1AB09397C(&v55);
  return sub_1AB09397C(&v62);
}

uint64_t sub_1AB096704()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1AB096744()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);

  swift_unknownObjectRelease();

  if (*(v0 + 96))
  {
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 112);

  return MEMORY[0x1EEE6BDD0](v0, 160, 7);
}

uint64_t sub_1AB09688C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AB0968F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 56) = a4;
  *(v5 + 64) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1AB096914, 0, 0);
}

uint64_t sub_1AB096914()
{
  v16 = v0;
  v1 = *(v0 + 56);
  v2 = sub_1AB460514();
  *(v0 + 72) = v2;
  v3 = sub_1AB428C48(v1, v2);
  if (v3)
  {
    v4 = v3;
    if (qword_1EB435688 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v5 = *(v0 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1AB4D4720;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
    v7 = swift_allocObject();
    v8 = MEMORY[0x1E69E6158];
    *(v7 + 16) = xmmword_1AB4D4720;
    *(v0 + 40) = v8;
    *(v0 + 16) = 0xD000000000000040;
    *(v0 + 24) = 0x80000001AB50CA10;
    *(v7 + 48) = 0u;
    *(v7 + 32) = 0u;
    sub_1AB0169C4(v0 + 16, v7 + 32);
    *(v7 + 64) = 0;
    *(v6 + 32) = v7;
    v15 = 3;
    OSLogger.log(contentsOf:withLevel:)(v6, &v15);

    v9 = *(v0 + 72);
    sub_1AB0978D8(v4);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v12 = [*(v0 + 56) arrayForKey_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4386D8);
    v13 = swift_allocObject();
    *(v0 + 80) = v13;
    v13[2] = v12;
    v13[3] = sub_1AB3E0724;
    v13[4] = 0;
    v14 = swift_task_alloc();
    *(v0 + 88) = v14;
    *v14 = v0;
    v14[1] = sub_1AB0976DC;

    return sub_1AB096FE8(v13);
  }
}

uint64_t sub_1AB096CD8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[11];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1AB027554;

  return sub_1AB096DA0(a1, v4, v5, v6, (v1 + 5), v7);
}

uint64_t sub_1AB096DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v6[21] = a4;
  v7 = sub_1AB45FFD4();
  v6[24] = v7;
  v6[25] = *(v7 - 8);
  v6[26] = swift_task_alloc();
  v8 = sub_1AB45FF84();
  v6[27] = v8;
  v6[28] = *(v8 - 8);
  v6[29] = swift_task_alloc();
  v9 = sub_1AB45F764();
  v6[30] = v9;
  v6[31] = *(v9 - 8);
  v6[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB096F1C, 0, 0);
}

uint64_t sub_1AB096F1C()
{
  v1 = v0 + 2;
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_1AB097B74;
  v0[10] = swift_continuation_init();
  v2 = (v0 + 10);
  *(v2 + 72) = 1;
  sub_1AB097094(v2);
  sub_1AB014AC0(v2, &qword_1EB439BB0);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1AB097008()
{
  *(v0 + 296) = (*(**(v0 + 288) + 88))();

  return MEMORY[0x1EEE6DFA0](sub_1AB097298, 0, 0);
}

void sub_1AB097094(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    if (*(v1 + 32) == 2)
    {
      v14 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AAD8C(v4);
      v15 = MEMORY[0x1E69E7CF8];
      v16 = v4;
      v17 = 2;
    }

    else
    {
      v18 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AAD8C(v4);
      v15 = MEMORY[0x1E69E7CF8];
      v16 = v4;
      v17 = 3;
    }

    goto LABEL_12;
  }

  if (*(v1 + 32))
  {

    os_unfair_lock_unlock(v3 + 4);
    sub_1AB0945D0(v4);
    v15 = MEMORY[0x1E69E7CF8];
    v16 = v4;
    v17 = 1;
LABEL_12:
    sub_1AB025694(v16, v17, v15);
    return;
  }

  sub_1AB014A58(a1, v22, &qword_1EB439BB0);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1AB09372C(0, v4[2] + 1, 1, v4);
  }

  v5 = v4[2];
  v6 = v4[3];
  v7 = v5 + 1;
  if (v5 >= v6 >> 1)
  {
    v19 = v4;
    v20 = v4[2];
    v21 = sub_1AB09372C((v6 > 1), v5 + 1, 1, v19);
    v5 = v20;
    v4 = v21;
  }

  v4[2] = v7;
  v8 = &v4[10 * v5];
  v8[2] = v22[0];
  v9 = v22[1];
  v10 = v22[2];
  v11 = v23[0];
  *(v8 + 89) = *(v23 + 9);
  v8[4] = v10;
  v8[5] = v11;
  v8[3] = v9;
  v12 = *(v1 + 24);
  *(v1 + 24) = v4;
  v13 = *(v1 + 32);
  *(v1 + 32) = 0;
  sub_1AB025694(v12, v13, MEMORY[0x1E69E7CF8]);
  os_unfair_lock_unlock(v3 + 4);
}

uint64_t sub_1AB097298()
{
  v1 = v0 + 2;
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_1AB09758C;
  v0[10] = swift_continuation_init();
  v2 = (v0 + 10);
  *(v2 + 72) = 1;
  sub_1AB097364(v2);
  sub_1AB014AC0(v2, &unk_1EB437720);

  return MEMORY[0x1EEE6DEC8](v1);
}

void sub_1AB097364(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    if (*(v1 + 32) == 2)
    {
      v14 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AACFC(v4);
      v15 = MEMORY[0x1E69E7CF8];
      v16 = v4;
      v17 = 2;
    }

    else
    {
      v18 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AACFC(v4);
      v15 = MEMORY[0x1E69E7CF8];
      v16 = v4;
      v17 = 3;
    }

    goto LABEL_12;
  }

  if (*(v1 + 32))
  {

    os_unfair_lock_unlock(v3 + 4);
    sub_1AB43A000(v4);
    v15 = MEMORY[0x1E69E7CF8];
    v16 = v4;
    v17 = 1;
LABEL_12:
    sub_1AB025694(v16, v17, v15);
    return;
  }

  sub_1AB014A58(a1, v22, &unk_1EB437720);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1AB097568(0, v4[2] + 1, 1, v4);
  }

  v5 = v4[2];
  v6 = v4[3];
  v7 = v5 + 1;
  if (v5 >= v6 >> 1)
  {
    v19 = v4;
    v20 = v4[2];
    v21 = sub_1AB097568((v6 > 1), v5 + 1, 1, v19);
    v5 = v20;
    v4 = v21;
  }

  v4[2] = v7;
  v8 = &v4[10 * v5];
  v8[2] = v22[0];
  v9 = v22[1];
  v10 = v22[2];
  v11 = v23[0];
  *(v8 + 89) = *(v23 + 9);
  v8[4] = v10;
  v8[5] = v11;
  v8[3] = v9;
  v12 = *(v1 + 24);
  *(v1 + 24) = v4;
  v13 = *(v1 + 32);
  *(v1 + 32) = 0;
  sub_1AB025694(v12, v13, MEMORY[0x1E69E7CF8]);
  os_unfair_lock_unlock(v3 + 4);
}

uint64_t sub_1AB09758C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 304) = v3;
  if (v3)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](sub_1AB255EA0, 0, 0);
  }

  else
  {

    v4 = *(v1 + 160);
    v5 = *(v2 + 8);

    return v5(v4);
  }
}

uint64_t sub_1AB0976DC(uint64_t a1)
{
  *(*v1 + 96) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1AB0977FC, 0, 0);
}

uint64_t sub_1AB0977FC()
{
  if (!v0[12] || (v1 = sub_1AB3B28D4(v0[12]), , !v1) || (v2 = v0[9], v3 = sub_1AB24FAF4(v1), , v4 = sub_1AB4285C4(v3, v2), , !v4))
  {

    v4 = MEMORY[0x1E69E7CC0];
  }

  v5 = v0[9];
  sub_1AB0978D8(v4);

  v6 = v0[1];

  return v6();
}

void sub_1AB097908(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(v5 + 16);
  os_unfair_lock_lock(v7 + 4);
  swift_beginAccess();
  if (*(v5 + 32) == 3)
  {
    os_unfair_lock_unlock(v7 + 4);
  }

  else if (*(v5 + 32))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v8 = *(v5 + 24);
    *(v5 + 24) = a1;
    *(v5 + 32) = 1;

    os_unfair_lock_unlock(v7 + 4);
    v18 = v8;
    v9 = v8[2];
    if (v9)
    {
      v10 = (v8 + 4);
      v19 = a2;
      do
      {
        sub_1AB014A58(v10, v28, a2);
        sub_1AB014A58(v28, v25, a2);
        v11 = v25[0];
        if (v27)
        {
          **(*(v25[0] + 64) + 40) = a1;

          swift_continuation_throwingResume();
          sub_1AB014AC0(v28, a2);
        }

        else
        {
          v12 = v25[1];

          sub_1AB0149B0(&v26, v22);
          v14 = v23;
          v13 = v24;
          __swift_project_boxed_opaque_existential_1Tm(v22, v23);
          v15 = swift_allocObject();
          v15[2] = v11;
          v15[3] = v12;
          v15[4] = a1;
          v16 = *(v13 + 8);

          v17 = v13;
          a2 = v19;
          v16(a5, v15, v14, v17);

          sub_1AB014AC0(v28, v19);
          __swift_destroy_boxed_opaque_existential_1Tm(v22);
        }

        v10 += 80;
        --v9;
      }

      while (v9);
    }

    sub_1AB023D0C(v18, 0, MEMORY[0x1E69E7CF8]);
  }
}

uint64_t sub_1AB097B74()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    swift_willThrow();

    v2 = *(v1 + 8);

    return v2();
  }

  else
  {
    *(*v0 + 264) = *(*v0 + 160);

    return MEMORY[0x1EEE6DFA0](sub_1AB097CF0, 0, 0);
  }
}

uint64_t sub_1AB097CF0()
{
  v1 = v0[33];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[31];
    v4 = v0[22];
    v5 = *(v3 + 16);
    v3 += 16;
    v6 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v27 = *(v3 + 56);
    v28 = v5;
    v7 = (v3 - 8);
    do
    {
      v8 = v0[32];
      v9 = v0[30];
      v10 = v0[22];
      v28(v8, v6, v9);
      v11 = *(v4 + 24);
      v12 = *(v4 + 32);
      __swift_project_boxed_opaque_existential_1Tm(v10, v11);
      (*(v12 + 24))(v8, v11, v12);
      (*v7)(v8, v9);
      v6 += v27;
      --v2;
    }

    while (v2);
  }

  if (qword_1EB435488 != -1)
  {
    swift_once();
  }

  v13 = sub_1AB45FFC4();
  __swift_project_value_buffer(v13, qword_1EB435490);
  v14 = sub_1AB45FFA4();
  sub_1AB45FFF4();
  v15 = sub_1AB461224();
  if (sub_1AB461314())
  {
    v17 = v0[25];
    v16 = v0[26];
    v18 = v0[24];

    sub_1AB460024();

    if ((*(v17 + 88))(v16, v18) == *MEMORY[0x1E69E93E8])
    {
      v19 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[25] + 8))(v0[26], v0[24]);
      v19 = "";
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v14, v15, v21, "PreconnectNet", v19, v20, 2u);
    MEMORY[0x1AC59F020](v20, -1, -1);
  }

  v23 = v0[28];
  v22 = v0[29];
  v24 = v0[27];

  (*(v23 + 8))(v22, v24);

  v25 = v0[1];

  return v25();
}

uint64_t sub_1AB097FB8(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_project_boxed_opaque_existential_1Tm(a1, v5);

  return a3(v7, a2, v3, v5, v6);
}

unint64_t sub_1AB098050()
{
  result = qword_1EB434970[0];
  if (!qword_1EB434970[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB434970);
  }

  return result;
}

uint64_t sub_1AB0980A4()
{
  v1 = *(*v0 + 32);

  return v1;
}

uint64_t sub_1AB0980D8()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 200) = v3;
  if (v3)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](sub_1AB199700, 0, 0);
  }

  else
  {

    v4 = *(v1 + 160);
    v5 = *(v2 + 8);

    return v5(v4);
  }
}

uint64_t sub_1AB09822C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

void sub_1AB09829C(uint64_t a1)
{
  v32 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  v28 = *(v2 - 8);
  v27 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v31 = &v25 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437730);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v25 - v8);
  v10 = v1[2];
  os_unfair_lock_lock(v10 + 4);
  v11 = *(*v1 + 96);
  swift_beginAccess();
  sub_1AB014A58(v1 + v11, v9, &unk_1EB437730);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1AB014AC0(v9, &unk_1EB437730);
    os_unfair_lock_unlock(v10 + 4);
    return;
  }

  if (EnumCaseMultiPayload)
  {
    goto LABEL_14;
  }

  v13 = *v9;
  sub_1AB014A58(v32, v6, &unk_1EB4395B0);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_1AB017CC4(v6, v1 + v11, &unk_1EB437730);
  swift_endAccess();
  os_unfair_lock_unlock(v10 + 4);
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = v13 + 32;
    v26 = v13;
    while (v15 < v14)
    {
      sub_1AB014A58(v16, v40, &qword_1EB43BD80);
      sub_1AB014A58(v40, v37, &qword_1EB43BD80);
      v18 = v37[0];
      if (v39)
      {
        v17 = v31;
        sub_1AB014A58(v32, v31, &unk_1EB4395B0);
        sub_1AB017FB8(v17, *(*(v18 + 64) + 40), &unk_1EB4395B0);
        swift_continuation_throwingResume();
      }

      else
      {
        v33 = v37[1];

        sub_1AB0149B0(&v38, v34);
        v30 = v35;
        v19 = v36;
        v29 = __swift_project_boxed_opaque_existential_1Tm(v34, v35);
        v20 = v31;
        sub_1AB014A58(v32, v31, &unk_1EB4395B0);
        v21 = (*(v28 + 80) + 32) & ~*(v28 + 80);
        v22 = swift_allocObject();
        *(v22 + 16) = v18;
        *(v22 + 24) = v33;
        sub_1AB017FB8(v20, v22 + v21, &unk_1EB4395B0);
        v23 = v19;
        v24 = *(v19 + 8);

        v24(sub_1AB43BC08, v22, v30, v23);

        v13 = v26;

        __swift_destroy_boxed_opaque_existential_1Tm(v34);
      }

      ++v15;
      sub_1AB014AC0(v40, &qword_1EB43BD80);
      v14 = *(v13 + 16);
      v16 += 80;
      if (v15 == v14)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_14:
    sub_1AB461884();
    __break(1u);
    return;
  }

LABEL_11:
}

unint64_t sub_1AB098790@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  *&v17 = 0;
  sub_1AB4602E4();
  if (qword_1ED4D0488 != -1)
  {
    swift_once();
  }

  v4 = qword_1ED4D3EA8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AB4D4720;
  v21 = sub_1AB0168A8(0, 53, 0, MEMORY[0x1E69E7CC0]);
  v6._countAndFlagsBits = 0xD00000000000001ELL;
  v6._object = 0x80000001AB50DB70;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  v20[3] = sub_1AB016760(0, qword_1ED4D1BA0);
  v20[0] = a1;
  sub_1AB01522C(v20, v16);
  v17 = 0u;
  v18 = 0u;
  v7 = a1;
  sub_1AB0169C4(v16, &v17);
  v19 = 1;
  v8 = v21;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1AB0168A8(0, *(v8 + 2) + 1, 1, v8);
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1AB0168A8((v9 > 1), v10 + 1, 1, v8);
  }

  *(v8 + 2) = v10 + 1;
  v11 = &v8[40 * v10];
  v12 = v17;
  v13 = v18;
  v11[64] = v19;
  *(v11 + 2) = v12;
  *(v11 + 3) = v13;
  v21 = v8;
  sub_1AB014AC0(v20, &unk_1EB437E60);
  v14._object = 0x80000001AB50DB90;
  v14._countAndFlagsBits = 0xD000000000000016;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  *(v5 + 32) = v21;
  *&v17 = v4;
  LOBYTE(v20[0]) = 0;
  OSLogger.log(contentsOf:withLevel:)(v5, v20);

  result = sub_1AB0BA124(MEMORY[0x1E69E7CC0]);
  *a2 = result;
  return result;
}

void *AppMetricsPresenter.init(pipeline:)(uint64_t a1)
{
  v2 = v1;
  sub_1AB0560F8(a1, v1 + 16);
  *(v1 + 209) = 1;
  v4 = sub_1AB098038(&unk_1F1FF4468);
  sub_1AB098B90(&unk_1F1FF4488);
  *(v1 + 216) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D1B8);
  v5 = swift_allocObject();
  v6 = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  v7 = MEMORY[0x1E69E7CC0];
  *(v5 + 16) = v6;
  *(v5 + 24) = v7;
  v2[28] = v5;
  sub_1AB01494C(a1 + 112, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439C90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B5A0);
  if (swift_dynamicCast())
  {
    sub_1AB1580C0(v14, v17);
    v8 = v18;
    v9 = v19;
    __swift_project_boxed_opaque_existential_1Tm(v17, v18);
    v10 = (*(v9 + 8))(v8, v9);
    v12 = v11;
    sub_1AB056154(a1);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }

  else
  {
    sub_1AB056154(a1);
    memset(v14, 0, sizeof(v14));
    v15 = 0;
    sub_1AB014AC0(v14, &qword_1EB43B5A8);
    v10 = 0;
    v12 = 0;
  }

  v2[29] = v10;
  v2[30] = v12;
  return v2;
}

uint64_t ActionDispatcher.adding<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v9 = v4[1];
  v10 = v4[2];
  *a4 = *v4;
  a4[1] = v9;
  a4[2] = v10;
  v11 = v10;

  return ActionDispatcher.add<A>(_:)(a1, a2, a3);
}

uint64_t sub_1AB098C68()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AB098CA4(void *a1, uint64_t a2, void (*a3)(void, double))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v11 - v7;
  a3(*a1, v6);
  v9 = sub_1AB45F764();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  sub_1AB09829C(v8);
  return sub_1AB014AC0(v8, &unk_1EB4395B0);
}

uint64_t sub_1AB098DB8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  if (v2)
  {
    swift_willThrow();

    v3 = sub_1AB3A5718;
  }

  else
  {
    v5 = *(v1 + 240);
    v4 = *(v1 + 248);

    sub_1AB017FB8(v5, v4, &unk_1EB4395B0);
    v3 = sub_1AB098F04;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1AB098F04()
{
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[27];
  sub_1AB014A58(v0[31], v1, &unk_1EB4395B0);
  v4 = *(v3 + 48);
  v5 = 1;
  if (v4(v1, 1, v2) != 1)
  {
    v6 = v0[35];
    v7 = v0[28];
    (*(v0[27] + 32))(v7, v0[29], v0[26]);
    v6(v7);
    (*(v0[27] + 8))(v0[28], v0[26]);
    v5 = 0;
  }

  v8 = v0[32];
  v9 = v0[26];
  v10 = v0[27];
  sub_1AB014AC0(v0[31], &unk_1EB4395B0);
  (*(v10 + 56))(v8, v5, 1, v9);
  if (v4(v8, 1, v9) == 1)
  {
    sub_1AB014AC0(v0[32], &unk_1EB4395B0);
    sub_1AB3AA238();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    (*(v0[27] + 32))(v0[25], v0[32], v0[26]);
  }

  v11 = v0[1];

  return v11();
}