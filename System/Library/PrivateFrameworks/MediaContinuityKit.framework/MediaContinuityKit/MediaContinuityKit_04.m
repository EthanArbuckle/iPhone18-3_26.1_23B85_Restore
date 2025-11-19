uint64_t sub_2584BB2A0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930980, &unk_25853ACF0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = v16 - v6;
  v8 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_internalEventMonitorTask;
  if (*(v1 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_internalEventMonitorTask))
  {
    v9 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_internalEventMonitorTask);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
    sub_25853374C();
  }

  v10 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_internalEventStreamContinuation;
  (*(v3 + 16))(v7, v1 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_internalEventStreamContinuation, v2);
  v16[1] = 0;
  sub_2585337FC();
  v11 = *(v3 + 8);
  v11(v7, v2);

  sub_258465168(v1 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_internalEventStream, &unk_27F930970, &unk_25853ACE0);
  v11((v1 + v10), v2);
  v12 = *(v1 + v8);

  sub_258465168(v1 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_eventStream, &unk_27F930DA0, &unk_25853BD00);
  sub_258465168(v1 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_eventStreamContinuation, &unk_27F930990, &unk_25853AD00);
  sub_258465168(v1 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_transitionContinuation, &unk_27F930DB0, &qword_258536390);
  sub_258465168(v1 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_stopTransitionContinuation, &unk_27F930DB0, &qword_258536390);
  v13 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_logger;
  v14 = sub_258532A4C();
  (*(*(v14 - 8) + 8))(v1 + v13, v14);
  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_2584BB514()
{
  sub_2584BB2A0();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for AVConferenceBackedAudioStream()
{
  result = qword_27F930898;
  if (!qword_27F930898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_2584BB594(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 112);
  v7[0] = 0;
  if ([v3 configure:a1 error:v7])
  {
    result = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_2585328BC();

    result = swift_willThrow();
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2584BB674()
{
  sub_2584A7894(319, &qword_27F9308A8, &qword_27F9308B0, &unk_25853AC38);
  if (v1 <= 0x3F)
  {
    v12 = *(v0 - 8) + 64;
    sub_2584BB8BC();
    if (v3 <= 0x3F)
    {
      v13 = *(v2 - 8) + 64;
      sub_2584A7894(319, &qword_27F9308C8, &qword_27F9308D0, &qword_25853AC60);
      if (v5 <= 0x3F)
      {
        v14 = *(v4 - 8) + 64;
        sub_2584A7894(319, &qword_27F9308D8, &unk_27F9308E0, &qword_25853AC68);
        if (v7 <= 0x3F)
        {
          v15 = *(v6 - 8) + 64;
          sub_2584A7894(319, &qword_27F92FE88, &qword_27F9308F0, &qword_25853AC70);
          if (v9 <= 0x3F)
          {
            v16 = *(v8 - 8) + 64;
            v10 = sub_258532A4C();
            if (v11 <= 0x3F)
            {
              v17 = *(v10 - 8) + 64;
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_2584BB8BC()
{
  if (!qword_27F9308B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9308C0, &qword_258537580);
    v0 = sub_25853380C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9308B8);
    }
  }
}

id sub_2584BB940()
{
  result = [*(v0 + 112) configuration];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void sub_2584BB980(uint64_t a1, uint64_t a2, void *a3, char a4, void *a5)
{
  v7 = a3;

  v8 = a5;
  sub_2584BBFC8(a4, a5);
}

uint64_t sub_2584BBA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9309A0, &unk_25853AD10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v12 - v9;
  v12[1] = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930980, &unk_25853ACF0);
  sub_2585337EC();

  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_2584BBBB4(uint64_t a1)
{
  result = sub_2584BBC3C(&qword_27F930958);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2584BBBF8(uint64_t a1)
{
  result = sub_2584BBC3C(&unk_27F930960);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2584BBC3C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AVConferenceBackedAudioStream();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2584BBC80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930970, &unk_25853ACE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2584BBCF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931360, &unk_25853CD10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_2584BBD60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = sub_2585329BC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = 0;
  if (v8(a1, 1, v6) != 1)
  {
    v9 = sub_25853295C();
    (*(v7 + 8))(a1, v6);
  }

  if (v8(a2, 1, v6) == 1)
  {
    v10 = 0;
    if (a3)
    {
LABEL_5:
      v11 = sub_25853336C();

      goto LABEL_8;
    }
  }

  else
  {
    v10 = sub_25853295C();
    (*(v7 + 8))(a2, v6);
    if (a3)
    {
      goto LABEL_5;
    }
  }

  v11 = 0;
LABEL_8:
  v18[0] = 0;
  v12 = [v17 initWithRTPNWConnectionClientID:v9 rtcpNWConnectionClientID:v10 options:v11 error:v18];

  if (v12)
  {
    v13 = v18[0];
  }

  else
  {
    v14 = v18[0];
    sub_2585328BC();

    swift_willThrow();
  }

  v15 = *MEMORY[0x277D85DE8];
  return v12;
}

unint64_t sub_2584BBF74()
{
  result = qword_27F930DC0;
  if (!qword_27F930DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930DC0);
  }

  return result;
}

uint64_t sub_2584BBFC8(char a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930980, &unk_25853ACF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9309A0, &unk_25853AD10);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = v19 - v15;
  result = (*(v6 + 16))(v10, v2 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_internalEventStreamContinuation, v5);
  if (a1)
  {
    a2 = 3;
LABEL_5:
    v19[1] = a2;
    sub_2585337EC();
    (*(v6 + 8))(v10, v5);
    return (*(v12 + 8))(v16, v11);
  }

  if (a2)
  {
    v18 = a2;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

unint64_t sub_2584BC1D0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_258533EEC();
  sub_2585334AC();
  v6 = sub_258533F2C();

  return sub_2584BC2D0(a1, a2, v6);
}

unint64_t sub_2584BC248(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_258533B0C();

  return sub_2584BC388(a1, v5);
}

unint64_t sub_2584BC28C(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_258533EDC();

  return sub_2584BC450(a1, v4);
}

unint64_t sub_2584BC2D0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_258533E2C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2584BC388(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2584BC778(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x259C81B60](v9, a1);
      sub_2584BC6D0(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_2584BC450(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2584BC4E0(uint64_t a1)
{
  result = a1 & ~(-1 << *(v1 + 32));
  v3 = *(v1 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 64) >> result;
  return result;
}

unint64_t sub_2584BC524()
{
  v1 = *(v0 + 40);
  sub_258533EEC();
  sub_2585334AC();
  v2 = sub_258533F2C();
  return sub_2584BC4E0(v2);
}

uint64_t sub_2584BC58C()
{
  v0 = [objc_opt_self() getDaemonProcessInfo];
  v1 = sub_25853337C();

  v2 = *MEMORY[0x277CE55D8];
  v6 = sub_25853342C();
  sub_258533B2C();
  if (*(v1 + 16) && (v3 = sub_2584BC248(v7), (v4 & 1) != 0))
  {
    sub_258472C68(*(v1 + 56) + 32 * v3, v8);
    sub_2584BC6D0(v7);

    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {

    sub_2584BC6D0(v7);
  }

  sub_2584BC724();
  swift_allocError();
  return swift_willThrow();
}

unint64_t sub_2584BC724()
{
  result = qword_27F9309A8;
  if (!qword_27F9309A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9309A8);
  }

  return result;
}

unint64_t sub_2584BC7E4(uint64_t a1)
{
  result = sub_2584BC724();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2584BC810()
{
  result = qword_27F9309B0;
  if (!qword_27F9309B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9309B0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18MediaContinuityKit018AVConferenceBackedA11StreamEventO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2584BC87C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2584BC8D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

void *sub_2584BC92C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_2584BC95C(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_258472CF8;

  return sub_2584BCA18(a1, a2);
}

uint64_t sub_2584BCA18(uint64_t a1, char a2)
{
  *(v3 + 352) = a2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930990, &unk_25853AD00) - 8) + 64) + 15;
  *(v3 + 176) = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DA0, &unk_25853BD00) - 8) + 64) + 15;
  *(v3 + 184) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9309B8, &qword_25853AF00);
  *(v3 + 192) = v6;
  v7 = *(v6 - 8);
  *(v3 + 200) = v7;
  v8 = *(v7 + 64) + 15;
  *(v3 + 208) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F9308E0, &qword_25853AC68);
  *(v3 + 216) = v9;
  v10 = *(v9 - 8);
  *(v3 + 224) = v10;
  v11 = *(v10 + 64) + 15;
  *(v3 + 232) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390) - 8) + 64) + 15;
  *(v3 + 240) = swift_task_alloc();
  *(v3 + 248) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930970, &unk_25853ACE0) - 8) + 64) + 15;
  *(v3 + 256) = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308B0, &unk_25853AC38);
  *(v3 + 264) = v14;
  v15 = *(v14 - 8);
  *(v3 + 272) = v15;
  v16 = *(v15 + 64) + 15;
  *(v3 + 280) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584BCCA4, v2, 0);
}

uint64_t sub_2584BCCA4()
{
  v52 = v0;
  v1 = *(v0 + 168);
  *(v0 + 288) = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_logger;

  v2 = sub_258532A2C();
  v3 = sub_2585338BC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 168);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v51 = v6;
    *v5 = 136315138;
    *(v0 + 152) = v4;
    type metadata accessor for AVConferenceBackedAudioStream();

    v7 = sub_25853347C();
    v9 = sub_2584713B0(v7, v8, &v51);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_25845E000, v2, v3, "%s starting", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x259C82900](v6, -1, -1);
    MEMORY[0x259C82900](v5, -1, -1);
  }

  v10 = *(v0 + 264);
  v11 = *(v0 + 272);
  v12 = *(v0 + 256);
  v13 = *(v0 + 168);
  v14 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_internalEventStream;
  swift_beginAccess();
  sub_2584AC3B8(v13 + v14, v12, &unk_27F930970, &unk_25853ACE0);
  if ((*(v11 + 48))(v12, 1, v10) == 1)
  {
    sub_258465168(*(v0 + 256), &unk_27F930970, &unk_25853ACE0);
    sub_2584BBF74();
    swift_allocError();
    *v15 = 2;
    swift_willThrow();
LABEL_15:
    v41 = *(v0 + 280);
    v43 = *(v0 + 248);
    v42 = *(v0 + 256);
    v45 = *(v0 + 232);
    v44 = *(v0 + 240);
    v46 = *(v0 + 208);
    v48 = *(v0 + 176);
    v47 = *(v0 + 184);

    v49 = *(v0 + 8);

    return v49();
  }

  v16 = *(v0 + 248);
  v17 = *(v0 + 168);
  (*(*(v0 + 272) + 32))(*(v0 + 280), *(v0 + 256), *(v0 + 264));
  v18 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_transitionContinuation;
  swift_beginAccess();
  sub_2584AC3B8(v17 + v18, v16, &unk_27F930DB0, &qword_258536390);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v20 = *(*(v19 - 8) + 48);
  LODWORD(v18) = v20(v16, 1, v19);
  sub_258465168(v16, &unk_27F930DB0, &qword_258536390);
  if (v18 != 1 || (v21 = *(v0 + 240), v22 = *(v0 + 168), v23 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_stopTransitionContinuation, swift_beginAccess(), sub_2584AC3B8(v22 + v23, v21, &unk_27F930DB0, &qword_258536390), v24 = v20(v21, 1, v19), sub_258465168(v21, &unk_27F930DB0, &qword_258536390), v24 != 1))
  {
    v27 = *(v0 + 280);
    goto LABEL_14;
  }

  v25 = *(v0 + 168);
  v26 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_internalEventMonitorTask;
  *(v0 + 296) = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_internalEventMonitorTask;
  v27 = *(v0 + 280);
  if (*(v25 + v26))
  {
LABEL_14:
    v38 = *(v0 + 264);
    v39 = *(v0 + 272);
    sub_2584BBF74();
    swift_allocError();
    *v40 = 0;
    swift_willThrow();
    (*(v39 + 8))(v27, v38);
    goto LABEL_15;
  }

  v28 = *(v0 + 352);
  sub_2584C3540(*(v0 + 280), &unk_28698E958, &unk_28698E980, &unk_25853AF10, &OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_internalEventMonitorTask);
  if (v28 == 1)
  {
    v29 = *(v0 + 168);
    v30 = *(v29 + 112);
    v31 = [v30 direction];
    *(v29 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_cachedStreamDirection) = v31;
    [v30 setDirection_];
  }

  v32 = *(v0 + 168);
  v33 = sub_2584C6294(&qword_27F930958, type metadata accessor for AVConferenceBackedAudioStream);
  v34 = *(MEMORY[0x277D85A40] + 4);
  v35 = swift_task_alloc();
  *(v0 + 304) = v35;
  *v35 = v0;
  v35[1] = sub_2584BD250;
  v36 = *(v0 + 168);
  v37 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v35, v32, v33, 0xD000000000000010, 0x8000000258540EE0, sub_2584C60E0, v36, v37);
}

uint64_t sub_2584BD250()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v4 = *v1;
  *(*v1 + 312) = v0;

  v5 = *(v2 + 168);
  if (v0)
  {
    v6 = sub_2584BD818;
  }

  else
  {
    v6 = sub_2584BD37C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2584BD37C()
{
  v46 = v0;
  if (*(v0 + 352) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 320) = v1;
    *v1 = v0;
    v1[1] = sub_2584BDAB0;
    v2 = *(v0 + 168);

    return sub_2584C0448();
  }

  else
  {
    v5 = *(v0 + 224);
    v4 = *(v0 + 232);
    v6 = *(v0 + 208);
    v41 = *(v0 + 216);
    v43 = *(v0 + 288);
    v8 = *(v0 + 192);
    v7 = *(v0 + 200);
    v9 = *(v0 + 176);
    v10 = *(v0 + 184);
    v12 = *(v0 + 160);
    v11 = *(v0 + 168);
    (*(v7 + 104))(v6, *MEMORY[0x277D858A0], v8);
    sub_2585337BC();
    (*(v7 + 8))(v6, v8);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308D0, &qword_25853AC60);
    v14 = *(v13 - 8);
    (*(v14 + 16))(v10, v12, v13);
    (*(v14 + 56))(v10, 0, 1, v13);
    v15 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_eventStream;
    swift_beginAccess();
    sub_2584AC5D0(v10, v11 + v15, &unk_27F930DA0, &unk_25853BD00);
    swift_endAccess();
    (*(v5 + 16))(v9, v4, v41);
    (*(v5 + 56))(v9, 0, 1, v41);
    v16 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_eventStreamContinuation;
    swift_beginAccess();
    sub_2584AC5D0(v9, v11 + v16, &unk_27F930990, &unk_25853AD00);
    swift_endAccess();

    v17 = sub_258532A2C();
    v18 = sub_2585338BC();

    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 272);
    v21 = *(v0 + 280);
    v22 = *(v0 + 264);
    v23 = *(v0 + 224);
    v24 = *(v0 + 232);
    v25 = *(v0 + 216);
    if (v19)
    {
      v42 = *(v0 + 232);
      v26 = *(v0 + 168);
      v44 = *(v0 + 264);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v45 = v28;
      *v27 = 136315138;
      *(v0 + 144) = v26;
      type metadata accessor for AVConferenceBackedAudioStream();

      v29 = sub_25853347C();
      v31 = sub_2584713B0(v29, v30, &v45);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_25845E000, v17, v18, "%s started", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x259C82900](v28, -1, -1);
      MEMORY[0x259C82900](v27, -1, -1);

      (*(v23 + 8))(v42, v25);
      (*(v20 + 8))(v21, v44);
    }

    else
    {

      (*(v23 + 8))(v24, v25);
      (*(v20 + 8))(v21, v22);
    }

    v32 = *(v0 + 280);
    v33 = *(v0 + 248);
    v34 = *(v0 + 256);
    v36 = *(v0 + 232);
    v35 = *(v0 + 240);
    v37 = *(v0 + 208);
    v39 = *(v0 + 176);
    v38 = *(v0 + 184);

    v40 = *(v0 + 8);

    return v40();
  }
}

uint64_t sub_2584BD818()
{
  v33 = v0;
  v1 = v0[39];
  v2 = v0[36];
  v3 = v0[21];

  v4 = v1;
  v5 = sub_258532A2C();
  v6 = sub_2585338CC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[21];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v32 = v10;
    *v8 = 136315394;
    v0[17] = v7;
    type metadata accessor for AVConferenceBackedAudioStream();

    v11 = sub_25853347C();
    v13 = sub_2584713B0(v11, v12, &v32);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2112;
    v14 = v1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v15;
    *v9 = v15;
    _os_log_impl(&dword_25845E000, v5, v6, "%s failed to start with error:%@", v8, 0x16u);
    sub_258465168(v9, &qword_27F92FBC0, &qword_258537930);
    MEMORY[0x259C82900](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x259C82900](v10, -1, -1);
    MEMORY[0x259C82900](v8, -1, -1);
  }

  v16 = v0[37];
  v18 = v0[34];
  v17 = v0[35];
  v19 = v0[33];
  v20 = v0[21];
  [*(v20 + 112) setDirection_];
  v21 = *(v20 + v16);
  *(v20 + v16) = 0;

  swift_willThrow();
  (*(v18 + 8))(v17, v19);
  v22 = v0[35];
  v24 = v0[31];
  v23 = v0[32];
  v26 = v0[29];
  v25 = v0[30];
  v27 = v0[26];
  v29 = v0[22];
  v28 = v0[23];

  v30 = v0[1];

  return v30();
}

uint64_t sub_2584BDAB0()
{
  v2 = *(*v1 + 320);
  v3 = *v1;
  v3[41] = v0;

  if (v0)
  {
    v4 = swift_task_alloc();
    v3[42] = v4;
    *v4 = v3;
    v4[1] = sub_2584BE074;
    v5 = v3[21];

    return sub_2584C1A98();
  }

  else
  {
    v7 = v3[21];

    return MEMORY[0x2822009F8](sub_2584BDC38, v7, 0);
  }
}

uint64_t sub_2584BDC38()
{
  v47 = v0;
  [*(v0[21] + 112) setDirection_];
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[26];
  v42 = v0[27];
  v44 = v0[36];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[22];
  v7 = v0[23];
  v9 = v0[20];
  v8 = v0[21];
  (*(v4 + 104))(v3, *MEMORY[0x277D858A0], v5);
  sub_2585337BC();
  (*(v4 + 8))(v3, v5);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308D0, &qword_25853AC60);
  v11 = *(v10 - 8);
  (*(v11 + 16))(v7, v9, v10);
  (*(v11 + 56))(v7, 0, 1, v10);
  v12 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_eventStream;
  swift_beginAccess();
  sub_2584AC5D0(v7, v8 + v12, &unk_27F930DA0, &unk_25853BD00);
  swift_endAccess();
  (*(v2 + 16))(v6, v1, v42);
  (*(v2 + 56))(v6, 0, 1, v42);
  v13 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_eventStreamContinuation;
  swift_beginAccess();
  sub_2584AC5D0(v6, v8 + v13, &unk_27F930990, &unk_25853AD00);
  swift_endAccess();

  v14 = sub_258532A2C();
  v15 = sub_2585338BC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = v0[34];
    v43 = v0[33];
    v45 = v0[35];
    v17 = v0[28];
    v40 = v0[27];
    v41 = v0[29];
    v18 = v0[21];
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v46 = v20;
    *v19 = 136315138;
    v0[18] = v18;
    type metadata accessor for AVConferenceBackedAudioStream();

    v21 = sub_25853347C();
    v23 = sub_2584713B0(v21, v22, &v46);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_25845E000, v14, v15, "%s started", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x259C82900](v20, -1, -1);
    MEMORY[0x259C82900](v19, -1, -1);

    (*(v17 + 8))(v41, v40);
    (*(v16 + 8))(v45, v43);
  }

  else
  {
    v25 = v0[34];
    v24 = v0[35];
    v26 = v0[33];
    v28 = v0[28];
    v27 = v0[29];
    v29 = v0[27];

    (*(v28 + 8))(v27, v29);
    (*(v25 + 8))(v24, v26);
  }

  v30 = v0[35];
  v31 = v0[31];
  v32 = v0[32];
  v34 = v0[29];
  v33 = v0[30];
  v35 = v0[26];
  v37 = v0[22];
  v36 = v0[23];

  v38 = v0[1];

  return v38();
}

uint64_t sub_2584BE074()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v4 = *v1;
  *(*v1 + 344) = v0;

  v5 = *(v2 + 168);
  if (v0)
  {
    v6 = sub_2584BE440;
  }

  else
  {
    v6 = sub_2584BE1A0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2584BE1A0()
{
  v34 = v0;
  v1 = v0[41];
  swift_willThrow();
  v2 = v0[41];
  v3 = v0[36];
  v4 = v0[21];

  v5 = v2;
  v6 = sub_258532A2C();
  v7 = sub_2585338CC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[21];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v33 = v11;
    *v9 = 136315394;
    v0[17] = v8;
    type metadata accessor for AVConferenceBackedAudioStream();

    v12 = sub_25853347C();
    v14 = sub_2584713B0(v12, v13, &v33);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    v15 = v2;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v16;
    *v10 = v16;
    _os_log_impl(&dword_25845E000, v6, v7, "%s failed to start with error:%@", v9, 0x16u);
    sub_258465168(v10, &qword_27F92FBC0, &qword_258537930);
    MEMORY[0x259C82900](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x259C82900](v11, -1, -1);
    MEMORY[0x259C82900](v9, -1, -1);
  }

  v17 = v0[37];
  v19 = v0[34];
  v18 = v0[35];
  v20 = v0[33];
  v21 = v0[21];
  [*(v21 + 112) setDirection_];
  v22 = *(v21 + v17);
  *(v21 + v17) = 0;

  swift_willThrow();
  (*(v19 + 8))(v18, v20);
  v23 = v0[35];
  v25 = v0[31];
  v24 = v0[32];
  v27 = v0[29];
  v26 = v0[30];
  v28 = v0[26];
  v30 = v0[22];
  v29 = v0[23];

  v31 = v0[1];

  return v31();
}

uint64_t sub_2584BE440()
{
  v33 = v0;

  v1 = *(v0 + 344);
  v2 = *(v0 + 288);
  v3 = *(v0 + 168);

  v4 = v1;
  v5 = sub_258532A2C();
  v6 = sub_2585338CC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 168);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v32 = v10;
    *v8 = 136315394;
    *(v0 + 136) = v7;
    type metadata accessor for AVConferenceBackedAudioStream();

    v11 = sub_25853347C();
    v13 = sub_2584713B0(v11, v12, &v32);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2112;
    v14 = v1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v15;
    *v9 = v15;
    _os_log_impl(&dword_25845E000, v5, v6, "%s failed to start with error:%@", v8, 0x16u);
    sub_258465168(v9, &qword_27F92FBC0, &qword_258537930);
    MEMORY[0x259C82900](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x259C82900](v10, -1, -1);
    MEMORY[0x259C82900](v8, -1, -1);
  }

  v16 = *(v0 + 296);
  v18 = *(v0 + 272);
  v17 = *(v0 + 280);
  v19 = *(v0 + 264);
  v20 = *(v0 + 168);
  [*(v20 + 112) setDirection_];
  v21 = *(v20 + v16);
  *(v20 + v16) = 0;

  swift_willThrow();
  (*(v18 + 8))(v17, v19);
  v22 = *(v0 + 280);
  v24 = *(v0 + 248);
  v23 = *(v0 + 256);
  v26 = *(v0 + 232);
  v25 = *(v0 + 240);
  v27 = *(v0 + 208);
  v29 = *(v0 + 176);
  v28 = *(v0 + 184);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_2584BE6E0(uint64_t a1, char a2)
{
  *(v3 + 352) = a2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930990, &unk_25853AD00) - 8) + 64) + 15;
  *(v3 + 176) = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DA0, &unk_25853BD00) - 8) + 64) + 15;
  *(v3 + 184) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9309B8, &qword_25853AF00);
  *(v3 + 192) = v6;
  v7 = *(v6 - 8);
  *(v3 + 200) = v7;
  v8 = *(v7 + 64) + 15;
  *(v3 + 208) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F9308E0, &qword_25853AC68);
  *(v3 + 216) = v9;
  v10 = *(v9 - 8);
  *(v3 + 224) = v10;
  v11 = *(v10 + 64) + 15;
  *(v3 + 232) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390) - 8) + 64) + 15;
  *(v3 + 240) = swift_task_alloc();
  *(v3 + 248) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930970, &unk_25853ACE0) - 8) + 64) + 15;
  *(v3 + 256) = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308B0, &unk_25853AC38);
  *(v3 + 264) = v14;
  v15 = *(v14 - 8);
  *(v3 + 272) = v15;
  v16 = *(v15 + 64) + 15;
  *(v3 + 280) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584BE96C, v2, 0);
}

uint64_t sub_2584BE96C()
{
  v52 = v0;
  v1 = *(v0 + 168);
  *(v0 + 288) = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_logger;

  v2 = sub_258532A2C();
  v3 = sub_2585338BC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 168);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v51 = v6;
    *v5 = 136315138;
    *(v0 + 152) = v4;
    type metadata accessor for AVConferenceBackedVideoStream();

    v7 = sub_25853347C();
    v9 = sub_2584713B0(v7, v8, &v51);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_25845E000, v2, v3, "%s starting", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x259C82900](v6, -1, -1);
    MEMORY[0x259C82900](v5, -1, -1);
  }

  v10 = *(v0 + 264);
  v11 = *(v0 + 272);
  v12 = *(v0 + 256);
  v13 = *(v0 + 168);
  v14 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_internalEventStream;
  swift_beginAccess();
  sub_2584AC3B8(v13 + v14, v12, &unk_27F930970, &unk_25853ACE0);
  if ((*(v11 + 48))(v12, 1, v10) == 1)
  {
    sub_258465168(*(v0 + 256), &unk_27F930970, &unk_25853ACE0);
    sub_2584BBF74();
    swift_allocError();
    *v15 = 2;
    swift_willThrow();
LABEL_15:
    v41 = *(v0 + 280);
    v43 = *(v0 + 248);
    v42 = *(v0 + 256);
    v45 = *(v0 + 232);
    v44 = *(v0 + 240);
    v46 = *(v0 + 208);
    v48 = *(v0 + 176);
    v47 = *(v0 + 184);

    v49 = *(v0 + 8);

    return v49();
  }

  v16 = *(v0 + 248);
  v17 = *(v0 + 168);
  (*(*(v0 + 272) + 32))(*(v0 + 280), *(v0 + 256), *(v0 + 264));
  v18 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_transitionContinuation;
  swift_beginAccess();
  sub_2584AC3B8(v17 + v18, v16, &unk_27F930DB0, &qword_258536390);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v20 = *(*(v19 - 8) + 48);
  LODWORD(v18) = v20(v16, 1, v19);
  sub_258465168(v16, &unk_27F930DB0, &qword_258536390);
  if (v18 != 1 || (v21 = *(v0 + 240), v22 = *(v0 + 168), v23 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_stopTransitionContinuation, swift_beginAccess(), sub_2584AC3B8(v22 + v23, v21, &unk_27F930DB0, &qword_258536390), v24 = v20(v21, 1, v19), sub_258465168(v21, &unk_27F930DB0, &qword_258536390), v24 != 1))
  {
    v27 = *(v0 + 280);
    goto LABEL_14;
  }

  v25 = *(v0 + 168);
  v26 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_internalEventMonitorTask;
  *(v0 + 296) = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_internalEventMonitorTask;
  v27 = *(v0 + 280);
  if (*(v25 + v26))
  {
LABEL_14:
    v38 = *(v0 + 264);
    v39 = *(v0 + 272);
    sub_2584BBF74();
    swift_allocError();
    *v40 = 0;
    swift_willThrow();
    (*(v39 + 8))(v27, v38);
    goto LABEL_15;
  }

  v28 = *(v0 + 352);
  sub_2584C3540(*(v0 + 280), &unk_28698E9A8, &unk_28698E9D0, &unk_25853AF78, &OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_internalEventMonitorTask);
  if (v28 == 1)
  {
    v29 = *(v0 + 168);
    v30 = *(v29 + 112);
    v31 = [v30 direction];
    *(v29 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_cachedStreamDirection) = v31;
    [v30 setDirection_];
  }

  v32 = *(v0 + 168);
  v33 = sub_2584C6294(&qword_27F9309D0, type metadata accessor for AVConferenceBackedVideoStream);
  v34 = *(MEMORY[0x277D85A40] + 4);
  v35 = swift_task_alloc();
  *(v0 + 304) = v35;
  *v35 = v0;
  v35[1] = sub_2584BEF18;
  v36 = *(v0 + 168);
  v37 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v35, v32, v33, 0xD000000000000010, 0x8000000258540EE0, sub_2584C6360, v36, v37);
}

uint64_t sub_2584BEF18()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v4 = *v1;
  *(*v1 + 312) = v0;

  v5 = *(v2 + 168);
  if (v0)
  {
    v6 = sub_2584BF4E0;
  }

  else
  {
    v6 = sub_2584BF044;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2584BF044()
{
  v46 = v0;
  if (*(v0 + 352) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 320) = v1;
    *v1 = v0;
    v1[1] = sub_2584BF778;
    v2 = *(v0 + 168);

    return sub_2584C0ADC();
  }

  else
  {
    v5 = *(v0 + 224);
    v4 = *(v0 + 232);
    v6 = *(v0 + 208);
    v41 = *(v0 + 216);
    v43 = *(v0 + 288);
    v8 = *(v0 + 192);
    v7 = *(v0 + 200);
    v9 = *(v0 + 176);
    v10 = *(v0 + 184);
    v12 = *(v0 + 160);
    v11 = *(v0 + 168);
    (*(v7 + 104))(v6, *MEMORY[0x277D858A0], v8);
    sub_2585337BC();
    (*(v7 + 8))(v6, v8);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308D0, &qword_25853AC60);
    v14 = *(v13 - 8);
    (*(v14 + 16))(v10, v12, v13);
    (*(v14 + 56))(v10, 0, 1, v13);
    v15 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_eventStream;
    swift_beginAccess();
    sub_2584AC5D0(v10, v11 + v15, &unk_27F930DA0, &unk_25853BD00);
    swift_endAccess();
    (*(v5 + 16))(v9, v4, v41);
    (*(v5 + 56))(v9, 0, 1, v41);
    v16 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_eventStreamContinuation;
    swift_beginAccess();
    sub_2584AC5D0(v9, v11 + v16, &unk_27F930990, &unk_25853AD00);
    swift_endAccess();

    v17 = sub_258532A2C();
    v18 = sub_2585338BC();

    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 272);
    v21 = *(v0 + 280);
    v22 = *(v0 + 264);
    v23 = *(v0 + 224);
    v24 = *(v0 + 232);
    v25 = *(v0 + 216);
    if (v19)
    {
      v42 = *(v0 + 232);
      v26 = *(v0 + 168);
      v44 = *(v0 + 264);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v45 = v28;
      *v27 = 136315138;
      *(v0 + 144) = v26;
      type metadata accessor for AVConferenceBackedVideoStream();

      v29 = sub_25853347C();
      v31 = sub_2584713B0(v29, v30, &v45);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_25845E000, v17, v18, "%s started", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x259C82900](v28, -1, -1);
      MEMORY[0x259C82900](v27, -1, -1);

      (*(v23 + 8))(v42, v25);
      (*(v20 + 8))(v21, v44);
    }

    else
    {

      (*(v23 + 8))(v24, v25);
      (*(v20 + 8))(v21, v22);
    }

    v32 = *(v0 + 280);
    v33 = *(v0 + 248);
    v34 = *(v0 + 256);
    v36 = *(v0 + 232);
    v35 = *(v0 + 240);
    v37 = *(v0 + 208);
    v39 = *(v0 + 176);
    v38 = *(v0 + 184);

    v40 = *(v0 + 8);

    return v40();
  }
}

uint64_t sub_2584BF4E0()
{
  v33 = v0;
  v1 = v0[39];
  v2 = v0[36];
  v3 = v0[21];

  v4 = v1;
  v5 = sub_258532A2C();
  v6 = sub_2585338CC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[21];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v32 = v10;
    *v8 = 136315394;
    v0[17] = v7;
    type metadata accessor for AVConferenceBackedVideoStream();

    v11 = sub_25853347C();
    v13 = sub_2584713B0(v11, v12, &v32);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2112;
    v14 = v1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v15;
    *v9 = v15;
    _os_log_impl(&dword_25845E000, v5, v6, "%s failed to start with error:%@", v8, 0x16u);
    sub_258465168(v9, &qword_27F92FBC0, &qword_258537930);
    MEMORY[0x259C82900](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x259C82900](v10, -1, -1);
    MEMORY[0x259C82900](v8, -1, -1);
  }

  v16 = v0[37];
  v18 = v0[34];
  v17 = v0[35];
  v19 = v0[33];
  v20 = v0[21];
  [*(v20 + 112) setDirection_];
  v21 = *(v20 + v16);
  *(v20 + v16) = 0;

  swift_willThrow();
  (*(v18 + 8))(v17, v19);
  v22 = v0[35];
  v24 = v0[31];
  v23 = v0[32];
  v26 = v0[29];
  v25 = v0[30];
  v27 = v0[26];
  v29 = v0[22];
  v28 = v0[23];

  v30 = v0[1];

  return v30();
}

uint64_t sub_2584BF778()
{
  v2 = *(*v1 + 320);
  v3 = *v1;
  v3[41] = v0;

  if (v0)
  {
    v4 = swift_task_alloc();
    v3[42] = v4;
    *v4 = v3;
    v4[1] = sub_2584BFD3C;
    v5 = v3[21];

    return sub_2584C2518();
  }

  else
  {
    v7 = v3[21];

    return MEMORY[0x2822009F8](sub_2584BF900, v7, 0);
  }
}

uint64_t sub_2584BF900()
{
  v47 = v0;
  [*(v0[21] + 112) setDirection_];
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[26];
  v42 = v0[27];
  v44 = v0[36];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[22];
  v7 = v0[23];
  v9 = v0[20];
  v8 = v0[21];
  (*(v4 + 104))(v3, *MEMORY[0x277D858A0], v5);
  sub_2585337BC();
  (*(v4 + 8))(v3, v5);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308D0, &qword_25853AC60);
  v11 = *(v10 - 8);
  (*(v11 + 16))(v7, v9, v10);
  (*(v11 + 56))(v7, 0, 1, v10);
  v12 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_eventStream;
  swift_beginAccess();
  sub_2584AC5D0(v7, v8 + v12, &unk_27F930DA0, &unk_25853BD00);
  swift_endAccess();
  (*(v2 + 16))(v6, v1, v42);
  (*(v2 + 56))(v6, 0, 1, v42);
  v13 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_eventStreamContinuation;
  swift_beginAccess();
  sub_2584AC5D0(v6, v8 + v13, &unk_27F930990, &unk_25853AD00);
  swift_endAccess();

  v14 = sub_258532A2C();
  v15 = sub_2585338BC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = v0[34];
    v43 = v0[33];
    v45 = v0[35];
    v17 = v0[28];
    v40 = v0[27];
    v41 = v0[29];
    v18 = v0[21];
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v46 = v20;
    *v19 = 136315138;
    v0[18] = v18;
    type metadata accessor for AVConferenceBackedVideoStream();

    v21 = sub_25853347C();
    v23 = sub_2584713B0(v21, v22, &v46);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_25845E000, v14, v15, "%s started", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x259C82900](v20, -1, -1);
    MEMORY[0x259C82900](v19, -1, -1);

    (*(v17 + 8))(v41, v40);
    (*(v16 + 8))(v45, v43);
  }

  else
  {
    v25 = v0[34];
    v24 = v0[35];
    v26 = v0[33];
    v28 = v0[28];
    v27 = v0[29];
    v29 = v0[27];

    (*(v28 + 8))(v27, v29);
    (*(v25 + 8))(v24, v26);
  }

  v30 = v0[35];
  v31 = v0[31];
  v32 = v0[32];
  v34 = v0[29];
  v33 = v0[30];
  v35 = v0[26];
  v37 = v0[22];
  v36 = v0[23];

  v38 = v0[1];

  return v38();
}

uint64_t sub_2584BFD3C()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v4 = *v1;
  *(*v1 + 344) = v0;

  v5 = *(v2 + 168);
  if (v0)
  {
    v6 = sub_2584C0108;
  }

  else
  {
    v6 = sub_2584BFE68;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2584BFE68()
{
  v34 = v0;
  v1 = v0[41];
  swift_willThrow();
  v2 = v0[41];
  v3 = v0[36];
  v4 = v0[21];

  v5 = v2;
  v6 = sub_258532A2C();
  v7 = sub_2585338CC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[21];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v33 = v11;
    *v9 = 136315394;
    v0[17] = v8;
    type metadata accessor for AVConferenceBackedVideoStream();

    v12 = sub_25853347C();
    v14 = sub_2584713B0(v12, v13, &v33);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    v15 = v2;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v16;
    *v10 = v16;
    _os_log_impl(&dword_25845E000, v6, v7, "%s failed to start with error:%@", v9, 0x16u);
    sub_258465168(v10, &qword_27F92FBC0, &qword_258537930);
    MEMORY[0x259C82900](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x259C82900](v11, -1, -1);
    MEMORY[0x259C82900](v9, -1, -1);
  }

  v17 = v0[37];
  v19 = v0[34];
  v18 = v0[35];
  v20 = v0[33];
  v21 = v0[21];
  [*(v21 + 112) setDirection_];
  v22 = *(v21 + v17);
  *(v21 + v17) = 0;

  swift_willThrow();
  (*(v19 + 8))(v18, v20);
  v23 = v0[35];
  v25 = v0[31];
  v24 = v0[32];
  v27 = v0[29];
  v26 = v0[30];
  v28 = v0[26];
  v30 = v0[22];
  v29 = v0[23];

  v31 = v0[1];

  return v31();
}

uint64_t sub_2584C0108()
{
  v33 = v0;

  v1 = *(v0 + 344);
  v2 = *(v0 + 288);
  v3 = *(v0 + 168);

  v4 = v1;
  v5 = sub_258532A2C();
  v6 = sub_2585338CC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 168);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v32 = v10;
    *v8 = 136315394;
    *(v0 + 136) = v7;
    type metadata accessor for AVConferenceBackedVideoStream();

    v11 = sub_25853347C();
    v13 = sub_2584713B0(v11, v12, &v32);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2112;
    v14 = v1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v15;
    *v9 = v15;
    _os_log_impl(&dword_25845E000, v5, v6, "%s failed to start with error:%@", v8, 0x16u);
    sub_258465168(v9, &qword_27F92FBC0, &qword_258537930);
    MEMORY[0x259C82900](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x259C82900](v10, -1, -1);
    MEMORY[0x259C82900](v8, -1, -1);
  }

  v16 = *(v0 + 296);
  v18 = *(v0 + 272);
  v17 = *(v0 + 280);
  v19 = *(v0 + 264);
  v20 = *(v0 + 168);
  [*(v20 + 112) setDirection_];
  v21 = *(v20 + v16);
  *(v20 + v16) = 0;

  swift_willThrow();
  (*(v18 + 8))(v17, v19);
  v22 = *(v0 + 280);
  v24 = *(v0 + 248);
  v23 = *(v0 + 256);
  v26 = *(v0 + 232);
  v25 = *(v0 + 240);
  v27 = *(v0 + 208);
  v29 = *(v0 + 176);
  v28 = *(v0 + 184);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_2584C03A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258472CF8;

  return sub_2584C0448();
}

uint64_t sub_2584C0448()
{
  v1[11] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390) - 8) + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930970, &unk_25853ACE0) - 8) + 64) + 15;
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584C0528, v0, 0);
}

uint64_t sub_2584C0528()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_internalEventStream;
  swift_beginAccess();
  sub_2584AC3B8(v2 + v3, v1, &unk_27F930970, &unk_25853ACE0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308B0, &unk_25853AC38);
  LODWORD(v2) = (*(*(v4 - 8) + 48))(v1, 1, v4);
  sub_258465168(v1, &unk_27F930970, &unk_25853ACE0);
  if (v2 == 1)
  {
    v5 = 2;
LABEL_9:
    sub_2584BBF74();
    swift_allocError();
    *v21 = v5;
    swift_willThrow();
    v23 = v0[13];
    v22 = v0[14];
    v24 = v0[12];

    v25 = v0[1];

    return v25();
  }

  v6 = v0[13];
  v7 = v0[11];
  v8 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_transitionContinuation;
  swift_beginAccess();
  sub_2584AC3B8(v7 + v8, v6, &unk_27F930DB0, &qword_258536390);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v10 = *(*(v9 - 8) + 48);
  LODWORD(v8) = v10(v6, 1, v9);
  sub_258465168(v6, &unk_27F930DB0, &qword_258536390);
  if (v8 != 1 || (v12 = v0[11], v11 = v0[12], v13 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_stopTransitionContinuation, swift_beginAccess(), sub_2584AC3B8(v12 + v13, v11, &unk_27F930DB0, &qword_258536390), v14 = v10(v11, 1, v9), sub_258465168(v11, &unk_27F930DB0, &qword_258536390), v14 != 1))
  {
    v5 = 0;
    goto LABEL_9;
  }

  v15 = v0[11];
  v16 = sub_2584C6294(&qword_27F930958, type metadata accessor for AVConferenceBackedAudioStream);
  v17 = *(MEMORY[0x277D85A40] + 4);
  v18 = swift_task_alloc();
  v0[15] = v18;
  *v18 = v0;
  v18[1] = sub_2584C08B8;
  v19 = v0[11];
  v20 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v18, v15, v16, 0x29286573756170, 0xE700000000000000, sub_2584C60B4, v19, v20);
}

uint64_t sub_2584C08B8()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  v5 = *(v2 + 88);
  if (v0)
  {
    v6 = sub_2584C0A5C;
  }

  else
  {
    v6 = sub_2584C09E4;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2584C09E4()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2584C0A5C()
{
  v1 = v0[16];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2584C0ADC()
{
  v1[11] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390) - 8) + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930970, &unk_25853ACE0) - 8) + 64) + 15;
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584C0BBC, v0, 0);
}

uint64_t sub_2584C0BBC()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_internalEventStream;
  swift_beginAccess();
  sub_2584AC3B8(v2 + v3, v1, &unk_27F930970, &unk_25853ACE0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308B0, &unk_25853AC38);
  LODWORD(v2) = (*(*(v4 - 8) + 48))(v1, 1, v4);
  sub_258465168(v1, &unk_27F930970, &unk_25853ACE0);
  if (v2 == 1)
  {
    v5 = 2;
LABEL_9:
    sub_2584BBF74();
    swift_allocError();
    *v21 = v5;
    swift_willThrow();
    v23 = v0[13];
    v22 = v0[14];
    v24 = v0[12];

    v25 = v0[1];

    return v25();
  }

  v6 = v0[13];
  v7 = v0[11];
  v8 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_transitionContinuation;
  swift_beginAccess();
  sub_2584AC3B8(v7 + v8, v6, &unk_27F930DB0, &qword_258536390);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v10 = *(*(v9 - 8) + 48);
  LODWORD(v8) = v10(v6, 1, v9);
  sub_258465168(v6, &unk_27F930DB0, &qword_258536390);
  if (v8 != 1 || (v12 = v0[11], v11 = v0[12], v13 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_stopTransitionContinuation, swift_beginAccess(), sub_2584AC3B8(v12 + v13, v11, &unk_27F930DB0, &qword_258536390), v14 = v10(v11, 1, v9), sub_258465168(v11, &unk_27F930DB0, &qword_258536390), v14 != 1))
  {
    v5 = 0;
    goto LABEL_9;
  }

  v15 = v0[11];
  v16 = sub_2584C6294(&qword_27F9309D0, type metadata accessor for AVConferenceBackedVideoStream);
  v17 = *(MEMORY[0x277D85A40] + 4);
  v18 = swift_task_alloc();
  v0[15] = v18;
  *v18 = v0;
  v18[1] = sub_2584C0F4C;
  v19 = v0[11];
  v20 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v18, v15, v16, 0x29286573756170, 0xE700000000000000, sub_2584C6334, v19, v20);
}

uint64_t sub_2584C0F4C()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  v5 = *(v2 + 88);
  if (v0)
  {
    v6 = sub_2584C6634;
  }

  else
  {
    v6 = sub_2584C663C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2584C1078()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258472CF8;

  return sub_2584C1118();
}

uint64_t sub_2584C1118()
{
  v1[11] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390) - 8) + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930970, &unk_25853ACE0) - 8) + 64) + 15;
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584C11F8, v0, 0);
}

uint64_t sub_2584C11F8()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_internalEventStream;
  swift_beginAccess();
  sub_2584AC3B8(v2 + v3, v1, &unk_27F930970, &unk_25853ACE0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308B0, &unk_25853AC38);
  LODWORD(v2) = (*(*(v4 - 8) + 48))(v1, 1, v4);
  sub_258465168(v1, &unk_27F930970, &unk_25853ACE0);
  if (v2 == 1)
  {
    v5 = 2;
LABEL_9:
    sub_2584BBF74();
    swift_allocError();
    *v21 = v5;
    swift_willThrow();
    v23 = v0[13];
    v22 = v0[14];
    v24 = v0[12];

    v25 = v0[1];

    return v25();
  }

  v6 = v0[13];
  v7 = v0[11];
  v8 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_transitionContinuation;
  swift_beginAccess();
  sub_2584AC3B8(v7 + v8, v6, &unk_27F930DB0, &qword_258536390);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v10 = *(*(v9 - 8) + 48);
  LODWORD(v8) = v10(v6, 1, v9);
  sub_258465168(v6, &unk_27F930DB0, &qword_258536390);
  if (v8 != 1 || (v12 = v0[11], v11 = v0[12], v13 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_stopTransitionContinuation, swift_beginAccess(), sub_2584AC3B8(v12 + v13, v11, &unk_27F930DB0, &qword_258536390), v14 = v10(v11, 1, v9), sub_258465168(v11, &unk_27F930DB0, &qword_258536390), v14 != 1))
  {
    v5 = 0;
    goto LABEL_9;
  }

  v15 = v0[11];
  v16 = sub_2584C6294(&qword_27F930958, type metadata accessor for AVConferenceBackedAudioStream);
  v17 = *(MEMORY[0x277D85A40] + 4);
  v18 = swift_task_alloc();
  v0[15] = v18;
  *v18 = v0;
  v18[1] = sub_2584C0F4C;
  v19 = v0[11];
  v20 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v18, v15, v16, 0x2928656D75736572, 0xE800000000000000, sub_2584C6088, v19, v20);
}

uint64_t sub_2584C1588()
{
  v1[11] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390) - 8) + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930970, &unk_25853ACE0) - 8) + 64) + 15;
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584C1668, v0, 0);
}

uint64_t sub_2584C1668()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_internalEventStream;
  swift_beginAccess();
  sub_2584AC3B8(v2 + v3, v1, &unk_27F930970, &unk_25853ACE0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308B0, &unk_25853AC38);
  LODWORD(v2) = (*(*(v4 - 8) + 48))(v1, 1, v4);
  sub_258465168(v1, &unk_27F930970, &unk_25853ACE0);
  if (v2 == 1)
  {
    v5 = 2;
LABEL_9:
    sub_2584BBF74();
    swift_allocError();
    *v21 = v5;
    swift_willThrow();
    v23 = v0[13];
    v22 = v0[14];
    v24 = v0[12];

    v25 = v0[1];

    return v25();
  }

  v6 = v0[13];
  v7 = v0[11];
  v8 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_transitionContinuation;
  swift_beginAccess();
  sub_2584AC3B8(v7 + v8, v6, &unk_27F930DB0, &qword_258536390);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v10 = *(*(v9 - 8) + 48);
  LODWORD(v8) = v10(v6, 1, v9);
  sub_258465168(v6, &unk_27F930DB0, &qword_258536390);
  if (v8 != 1 || (v12 = v0[11], v11 = v0[12], v13 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_stopTransitionContinuation, swift_beginAccess(), sub_2584AC3B8(v12 + v13, v11, &unk_27F930DB0, &qword_258536390), v14 = v10(v11, 1, v9), sub_258465168(v11, &unk_27F930DB0, &qword_258536390), v14 != 1))
  {
    v5 = 0;
    goto LABEL_9;
  }

  v15 = v0[11];
  v16 = sub_2584C6294(&qword_27F9309D0, type metadata accessor for AVConferenceBackedVideoStream);
  v17 = *(MEMORY[0x277D85A40] + 4);
  v18 = swift_task_alloc();
  v0[15] = v18;
  *v18 = v0;
  v18[1] = sub_2584C0F4C;
  v19 = v0[11];
  v20 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v18, v15, v16, 0x2928656D75736572, 0xE800000000000000, sub_2584C6308, v19, v20);
}

uint64_t sub_2584C19F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258464F5C;

  return sub_2584C1A98();
}

uint64_t sub_2584C1A98()
{
  v1[17] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v1[18] = v2;
  v3 = *(v2 - 8);
  v1[19] = v3;
  v4 = *(v3 + 64) + 15;
  v1[20] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390) - 8) + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930970, &unk_25853ACE0) - 8) + 64) + 15;
  v1[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584C1BEC, v0, 0);
}

uint64_t sub_2584C1BEC()
{
  v49 = v0;
  v1 = v0[17];
  v0[25] = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_logger;

  v2 = sub_258532A2C();
  v3 = sub_2585338BC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[17];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v48 = v6;
    *v5 = 136315138;
    v0[16] = v4;
    type metadata accessor for AVConferenceBackedAudioStream();

    v7 = sub_25853347C();
    v9 = sub_2584713B0(v7, v8, &v48);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_25845E000, v2, v3, "%s stopping", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x259C82900](v6, -1, -1);
    MEMORY[0x259C82900](v5, -1, -1);
  }

  v10 = v0[24];
  v11 = v0[17];
  v12 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_internalEventStream;
  swift_beginAccess();
  sub_2584AC3B8(v11 + v12, v10, &unk_27F930970, &unk_25853ACE0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308B0, &unk_25853AC38);
  LODWORD(v11) = (*(*(v13 - 8) + 48))(v10, 1, v13);
  sub_258465168(v10, &unk_27F930970, &unk_25853ACE0);
  if (v11 == 1)
  {
    sub_2584BBF74();
    swift_allocError();
    *v14 = 2;
LABEL_11:
    swift_willThrow();
    v31 = v0[23];
    v30 = v0[24];
    v33 = v0[21];
    v32 = v0[22];
    v34 = v0[20];

    v35 = v0[1];

    return v35();
  }

  v15 = v0[23];
  v16 = v0[18];
  v17 = v0[19];
  v18 = v0[17];
  v19 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_stopTransitionContinuation;
  swift_beginAccess();
  sub_2584AC3B8(v18 + v19, v15, &unk_27F930DB0, &qword_258536390);
  v20 = *(v17 + 48);
  LODWORD(v16) = v20(v15, 1, v16);
  sub_258465168(v15, &unk_27F930DB0, &qword_258536390);
  if (v16 != 1)
  {
    sub_2584BBF74();
    swift_allocError();
    goto LABEL_10;
  }

  v21 = *(v0[17] + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_internalEventMonitorTask);
  sub_2584BBF74();
  v23 = swift_allocError();
  if (!v21)
  {
LABEL_10:
    *v22 = 0;
    goto LABEL_11;
  }

  v24 = v0[22];
  v26 = v0[17];
  v25 = v0[18];
  *v22 = 1;
  v27 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_transitionContinuation;
  swift_beginAccess();
  sub_2584AC3B8(v26 + v27, v24, &unk_27F930DB0, &qword_258536390);
  v28 = v20(v24, 1, v25);
  v29 = v0[22];
  if (v28 == 1)
  {
    sub_258465168(v0[22], &unk_27F930DB0, &qword_258536390);
  }

  else
  {
    v37 = v0[20];
    v38 = v0[21];
    v39 = v0[18];
    v40 = v0[19];
    (*(v40 + 32))(v37, v0[22], v39);
    v0[15] = v23;
    v41 = v23;
    sub_25853363C();
    (*(v40 + 8))(v37, v39);
    (*(v40 + 56))(v38, 1, 1, v39);
    swift_beginAccess();
    sub_2584AC5D0(v38, v26 + v27, &unk_27F930DB0, &qword_258536390);
    swift_endAccess();
  }

  v42 = v0[17];

  v43 = sub_2584C6294(&qword_27F930958, type metadata accessor for AVConferenceBackedAudioStream);
  v44 = *(MEMORY[0x277D85A40] + 4);
  v45 = swift_task_alloc();
  v0[26] = v45;
  *v45 = v0;
  v45[1] = sub_2584C21A8;
  v46 = v0[17];
  v47 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v45, v42, v43, 0x2928706F7473, 0xE600000000000000, sub_2584C5DC0, v46, v47);
}

uint64_t sub_2584C21A8()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = v0;

  v5 = *(v2 + 136);
  if (v0)
  {
    v6 = sub_2584C247C;
  }

  else
  {
    v6 = sub_2584C22D4;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2584C22D4()
{
  v19 = v0;
  v1 = v0[25];
  v2 = v0[17];

  v3 = sub_258532A2C();
  v4 = sub_2585338BC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[17];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    v0[14] = v5;
    type metadata accessor for AVConferenceBackedAudioStream();

    v8 = sub_25853347C();
    v10 = sub_2584713B0(v8, v9, &v18);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_25845E000, v3, v4, "%s stopped", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x259C82900](v7, -1, -1);
    MEMORY[0x259C82900](v6, -1, -1);
  }

  v12 = v0[23];
  v11 = v0[24];
  v14 = v0[21];
  v13 = v0[22];
  v15 = v0[20];

  v16 = v0[1];

  return v16();
}

uint64_t sub_2584C247C()
{
  v1 = v0[27];
  v3 = v0[23];
  v2 = v0[24];
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[20];

  v7 = v0[1];

  return v7();
}

uint64_t sub_2584C2518()
{
  v1[17] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v1[18] = v2;
  v3 = *(v2 - 8);
  v1[19] = v3;
  v4 = *(v3 + 64) + 15;
  v1[20] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390) - 8) + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930970, &unk_25853ACE0) - 8) + 64) + 15;
  v1[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584C266C, v0, 0);
}

uint64_t sub_2584C266C()
{
  v49 = v0;
  v1 = v0[17];
  v0[25] = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_logger;

  v2 = sub_258532A2C();
  v3 = sub_2585338BC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[17];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v48 = v6;
    *v5 = 136315138;
    v0[16] = v4;
    type metadata accessor for AVConferenceBackedVideoStream();

    v7 = sub_25853347C();
    v9 = sub_2584713B0(v7, v8, &v48);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_25845E000, v2, v3, "%s stopping", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x259C82900](v6, -1, -1);
    MEMORY[0x259C82900](v5, -1, -1);
  }

  v10 = v0[24];
  v11 = v0[17];
  v12 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_internalEventStream;
  swift_beginAccess();
  sub_2584AC3B8(v11 + v12, v10, &unk_27F930970, &unk_25853ACE0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308B0, &unk_25853AC38);
  LODWORD(v11) = (*(*(v13 - 8) + 48))(v10, 1, v13);
  sub_258465168(v10, &unk_27F930970, &unk_25853ACE0);
  if (v11 == 1)
  {
    sub_2584BBF74();
    swift_allocError();
    *v14 = 2;
LABEL_11:
    swift_willThrow();
    v31 = v0[23];
    v30 = v0[24];
    v33 = v0[21];
    v32 = v0[22];
    v34 = v0[20];

    v35 = v0[1];

    return v35();
  }

  v15 = v0[23];
  v16 = v0[18];
  v17 = v0[19];
  v18 = v0[17];
  v19 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_stopTransitionContinuation;
  swift_beginAccess();
  sub_2584AC3B8(v18 + v19, v15, &unk_27F930DB0, &qword_258536390);
  v20 = *(v17 + 48);
  LODWORD(v16) = v20(v15, 1, v16);
  sub_258465168(v15, &unk_27F930DB0, &qword_258536390);
  if (v16 != 1)
  {
    sub_2584BBF74();
    swift_allocError();
    goto LABEL_10;
  }

  v21 = *(v0[17] + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_internalEventMonitorTask);
  sub_2584BBF74();
  v23 = swift_allocError();
  if (!v21)
  {
LABEL_10:
    *v22 = 0;
    goto LABEL_11;
  }

  v24 = v0[22];
  v26 = v0[17];
  v25 = v0[18];
  *v22 = 1;
  v27 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_transitionContinuation;
  swift_beginAccess();
  sub_2584AC3B8(v26 + v27, v24, &unk_27F930DB0, &qword_258536390);
  v28 = v20(v24, 1, v25);
  v29 = v0[22];
  if (v28 == 1)
  {
    sub_258465168(v0[22], &unk_27F930DB0, &qword_258536390);
  }

  else
  {
    v37 = v0[20];
    v38 = v0[21];
    v39 = v0[18];
    v40 = v0[19];
    (*(v40 + 32))(v37, v0[22], v39);
    v0[15] = v23;
    v41 = v23;
    sub_25853363C();
    (*(v40 + 8))(v37, v39);
    (*(v40 + 56))(v38, 1, 1, v39);
    swift_beginAccess();
    sub_2584AC5D0(v38, v26 + v27, &unk_27F930DB0, &qword_258536390);
    swift_endAccess();
  }

  v42 = v0[17];

  v43 = sub_2584C6294(&qword_27F9309D0, type metadata accessor for AVConferenceBackedVideoStream);
  v44 = *(MEMORY[0x277D85A40] + 4);
  v45 = swift_task_alloc();
  v0[26] = v45;
  *v45 = v0;
  v45[1] = sub_2584C2C28;
  v46 = v0[17];
  v47 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v45, v42, v43, 0x2928706F7473, 0xE600000000000000, sub_2584C62DC, v46, v47);
}

uint64_t sub_2584C2C28()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = v0;

  v5 = *(v2 + 136);
  if (v0)
  {
    v6 = sub_2584C6638;
  }

  else
  {
    v6 = sub_2584C2D54;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2584C2D54()
{
  v19 = v0;
  v1 = v0[25];
  v2 = v0[17];

  v3 = sub_258532A2C();
  v4 = sub_2585338BC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[17];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    v0[14] = v5;
    type metadata accessor for AVConferenceBackedVideoStream();

    v8 = sub_25853347C();
    v10 = sub_2584713B0(v8, v9, &v18);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_25845E000, v3, v4, "%s stopped", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x259C82900](v7, -1, -1);
    MEMORY[0x259C82900](v6, -1, -1);
  }

  v12 = v0[23];
  v11 = v0[24];
  v14 = v0[21];
  v13 = v0[22];
  v15 = v0[20];

  v16 = v0[1];

  return v16();
}

uint64_t sub_2584C2EFC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2584C2F1C, v1, 0);
}

uint64_t sub_2584C2F1C()
{
  sub_2584BB594(v0[2], v0[3]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_2584C2F98()
{
  if (*v0 >= 2u)
  {
    return 14;
  }

  else
  {
    return 4;
  }
}

uint64_t sub_2584C2FB0(void *a1, uint64_t *a2, uint64_t *a3)
{
  v31 = a1;
  v32 = a3;
  v5 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DA0, &unk_25853BD00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930990, &unk_25853AD00);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11 - 8, v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v31 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F9308E0, &qword_25853AC68);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v31 - v24;
  v26 = *a2;
  swift_beginAccess();
  sub_2584AC3B8(v5 + v26, v19, &unk_27F930990, &unk_25853AD00);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_258465168(v19, &unk_27F930990, &unk_25853AD00);
  }

  else
  {
    (*(v21 + 32))(v25, v19, v20);
    v33 = v31;
    v27 = v31;
    sub_2585337FC();
    (*(v21 + 8))(v25, v20);
  }

  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308D0, &qword_25853AC60);
  (*(*(v28 - 8) + 56))(v10, 1, 1, v28);
  v29 = *v32;
  swift_beginAccess();
  sub_2584AC5D0(v10, v5 + v29, &unk_27F930DA0, &unk_25853BD00);
  swift_endAccess();
  (*(v21 + 56))(v16, 1, 1, v20);
  swift_beginAccess();
  sub_2584AC5D0(v16, v5 + v26, &unk_27F930990, &unk_25853AD00);
  return swift_endAccess();
}

uint64_t sub_2584C32EC(uint64_t *a1)
{
  v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v21[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v21[-v17];
  v19 = *a1;
  swift_beginAccess();
  sub_2584AC3B8(v3 + v19, v12, &unk_27F930DB0, &qword_258536390);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_258465168(v12, &unk_27F930DB0, &qword_258536390);
  }

  (*(v14 + 32))(v18, v12, v13);
  sub_25853364C();
  (*(v14 + 8))(v18, v13);
  (*(v14 + 56))(v9, 1, 1, v13);
  swift_beginAccess();
  sub_2584AC5D0(v9, v3 + v19, &unk_27F930DB0, &qword_258536390);
  return swift_endAccess();
}

uint64_t sub_2584C3540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v27 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308B0, &unk_25853AC38);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v18 = &v26 - v17;
  v19 = sub_25853368C();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  v20 = swift_allocObject();
  swift_weakInit();
  (*(v9 + 16))(v13, a1, v8);
  v21 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  (*(v9 + 32))(v22 + v21, v13, v8);
  *(v22 + ((v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = v20;
  v23 = sub_258476C88(0, 0, v18, a4, v22);
  v24 = *(v5 + *v27);
  *(v5 + *v27) = v23;
}

uint64_t sub_2584C3768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930970, &unk_25853ACE0) - 8) + 64) + 15;
  v5[22] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390) - 8) + 64) + 15;
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v5[25] = v8;
  v9 = *(v8 - 8);
  v5[26] = v9;
  v10 = *(v9 + 64) + 15;
  v5[27] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9309C0, &qword_25853AF18);
  v5[28] = v11;
  v12 = *(v11 - 8);
  v5[29] = v12;
  v13 = *(v12 + 64) + 15;
  v5[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584C3918, 0, 0);
}

uint64_t sub_2584C3918()
{
  v1 = v0[30];
  v2 = v0[20];
  v3 = v0[21];
  v0[31] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308B0, &unk_25853AC38);
  sub_2585336FC();
  swift_beginAccess();
  v4 = *(MEMORY[0x277D858B8] + 4);
  v5 = swift_task_alloc();
  v0[32] = v5;
  *v5 = v0;
  v5[1] = sub_2584C3A08;
  v6 = v0[30];
  v7 = v0[28];

  return MEMORY[0x2822005A8](v0 + 17, 0, 0, v7, v0 + 18);
}

uint64_t sub_2584C3A08()
{
  v2 = *(*v1 + 256);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_2584C3C54;
  }

  else
  {
    v3 = sub_2584C3B18;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2584C3B18()
{
  v1 = v0[17];
  v0[33] = v1;
  if (v1 == 4)
  {
    (*(v0[29] + 8))(v0[30], v0[28]);
LABEL_9:
    v4 = v0[30];
    v5 = v0[27];
    v7 = v0[23];
    v6 = v0[24];
    v8 = v0[22];

    v9 = v0[1];

    return v9();
  }

  if ((sub_25853376C() & 1) != 0 || (v2 = v0[21], Strong = swift_weakLoadStrong(), (v0[36] = Strong) == 0))
  {
    (*(v0[29] + 8))(v0[30], v0[28]);
    sub_2584C6274(v1);
    goto LABEL_9;
  }

  return MEMORY[0x2822009F8](sub_2584C4008, Strong, 0);
}

uint64_t sub_2584C3C54()
{
  v1 = v0[21];
  (*(v0[29] + 8))(v0[30], v0[28]);
  v2 = v0[18];
  v0[34] = v2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[35] = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_2584C3D78, Strong, 0);
  }

  else
  {

    v4 = v0[30];
    v5 = v0[27];
    v7 = v0[23];
    v6 = v0[24];
    v8 = v0[22];

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_2584C3D78()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 200);
  v3 = *(v0 + 208);
  v4 = *(v0 + 192);
  sub_2584C2FB0(*(v0 + 272), &OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_eventStreamContinuation, &OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_eventStream);
  v5 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_transitionContinuation;
  swift_beginAccess();
  sub_2584AC3B8(v1 + v5, v4, &unk_27F930DB0, &qword_258536390);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_258465168(*(v0 + 192), &unk_27F930DB0, &qword_258536390);
  }

  else
  {
    v6 = *(v0 + 272);
    v8 = *(v0 + 208);
    v7 = *(v0 + 216);
    v9 = *(v0 + 200);
    v10 = *(v0 + 184);
    (*(v8 + 32))(v7, *(v0 + 192), v9);
    *(v0 + 152) = v6;
    v11 = v6;
    sub_25853363C();
    (*(v8 + 8))(v7, v9);
    (*(v8 + 56))(v10, 1, 1, v9);
    swift_beginAccess();
    sub_2584AC5D0(v10, v1 + v5, &unk_27F930DB0, &qword_258536390);
    swift_endAccess();
  }

  v12 = *(v0 + 280);
  v13 = *(v0 + 248);
  v14 = *(v0 + 176);
  sub_2584C32EC(&OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_stopTransitionContinuation);
  (*(*(v13 - 8) + 56))(v14, 1, 1, v13);
  v15 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_internalEventStream;
  swift_beginAccess();
  sub_2584AC5D0(v14, v12 + v15, &unk_27F930970, &unk_25853ACE0);
  swift_endAccess();
  v16 = *(v12 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_internalEventMonitorTask);
  *(v12 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_internalEventMonitorTask) = 0;

  return MEMORY[0x2822009F8](sub_2584C41D0, 0, 0);
}

uint64_t sub_2584C4008()
{
  v1 = *(v0 + 288);
  *(v0 + 296) = sub_2584C4CE0(*(v0 + 264)) & 1;

  return MEMORY[0x2822009F8](sub_2584C407C, 0, 0);
}

uint64_t sub_2584C407C()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 288);
  sub_2584C6274(*(v0 + 264));

  if (v1)
  {
    (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
    v3 = *(v0 + 240);
    v4 = *(v0 + 216);
    v6 = *(v0 + 184);
    v5 = *(v0 + 192);
    v7 = *(v0 + 176);

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = *(MEMORY[0x277D858B8] + 4);
    v11 = swift_task_alloc();
    *(v0 + 256) = v11;
    *v11 = v0;
    v11[1] = sub_2584C3A08;
    v12 = *(v0 + 240);
    v13 = *(v0 + 224);

    return MEMORY[0x2822005A8](v0 + 136, 0, 0, v13, v0 + 144);
  }
}

uint64_t sub_2584C41D0()
{
  v2 = v0[34];
  v1 = v0[35];

  v3 = v0[30];
  v4 = v0[27];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[22];

  v8 = v0[1];

  return v8();
}

uint64_t sub_2584C4278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930970, &unk_25853ACE0) - 8) + 64) + 15;
  v5[22] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390) - 8) + 64) + 15;
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v5[25] = v8;
  v9 = *(v8 - 8);
  v5[26] = v9;
  v10 = *(v9 + 64) + 15;
  v5[27] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9309C0, &qword_25853AF18);
  v5[28] = v11;
  v12 = *(v11 - 8);
  v5[29] = v12;
  v13 = *(v12 + 64) + 15;
  v5[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584C4428, 0, 0);
}

uint64_t sub_2584C4428()
{
  v1 = v0[30];
  v2 = v0[20];
  v3 = v0[21];
  v0[31] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308B0, &unk_25853AC38);
  sub_2585336FC();
  swift_beginAccess();
  v4 = *(MEMORY[0x277D858B8] + 4);
  v5 = swift_task_alloc();
  v0[32] = v5;
  *v5 = v0;
  v5[1] = sub_2584C4518;
  v6 = v0[30];
  v7 = v0[28];

  return MEMORY[0x2822005A8](v0 + 17, 0, 0, v7, v0 + 18);
}

uint64_t sub_2584C4518()
{
  v2 = *(*v1 + 256);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_2584C4764;
  }

  else
  {
    v3 = sub_2584C4628;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2584C4628()
{
  v1 = v0[17];
  v0[33] = v1;
  if (v1 == 4)
  {
    (*(v0[29] + 8))(v0[30], v0[28]);
LABEL_9:
    v4 = v0[30];
    v5 = v0[27];
    v7 = v0[23];
    v6 = v0[24];
    v8 = v0[22];

    v9 = v0[1];

    return v9();
  }

  if ((sub_25853376C() & 1) != 0 || (v2 = v0[21], Strong = swift_weakLoadStrong(), (v0[36] = Strong) == 0))
  {
    (*(v0[29] + 8))(v0[30], v0[28]);
    sub_2584C6274(v1);
    goto LABEL_9;
  }

  return MEMORY[0x2822009F8](sub_2584C4B18, Strong, 0);
}

uint64_t sub_2584C4764()
{
  v1 = v0[21];
  (*(v0[29] + 8))(v0[30], v0[28]);
  v2 = v0[18];
  v0[34] = v2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[35] = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_2584C4888, Strong, 0);
  }

  else
  {

    v4 = v0[30];
    v5 = v0[27];
    v7 = v0[23];
    v6 = v0[24];
    v8 = v0[22];

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_2584C4888()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 200);
  v3 = *(v0 + 208);
  v4 = *(v0 + 192);
  sub_2584C2FB0(*(v0 + 272), &OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_eventStreamContinuation, &OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_eventStream);
  v5 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_transitionContinuation;
  swift_beginAccess();
  sub_2584AC3B8(v1 + v5, v4, &unk_27F930DB0, &qword_258536390);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_258465168(*(v0 + 192), &unk_27F930DB0, &qword_258536390);
  }

  else
  {
    v6 = *(v0 + 272);
    v8 = *(v0 + 208);
    v7 = *(v0 + 216);
    v9 = *(v0 + 200);
    v10 = *(v0 + 184);
    (*(v8 + 32))(v7, *(v0 + 192), v9);
    *(v0 + 152) = v6;
    v11 = v6;
    sub_25853363C();
    (*(v8 + 8))(v7, v9);
    (*(v8 + 56))(v10, 1, 1, v9);
    swift_beginAccess();
    sub_2584AC5D0(v10, v1 + v5, &unk_27F930DB0, &qword_258536390);
    swift_endAccess();
  }

  v12 = *(v0 + 280);
  v13 = *(v0 + 248);
  v14 = *(v0 + 176);
  sub_2584C32EC(&OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_stopTransitionContinuation);
  (*(*(v13 - 8) + 56))(v14, 1, 1, v13);
  v15 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_internalEventStream;
  swift_beginAccess();
  sub_2584AC5D0(v14, v12 + v15, &unk_27F930970, &unk_25853ACE0);
  swift_endAccess();
  v16 = *(v12 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_internalEventMonitorTask);
  *(v12 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_internalEventMonitorTask) = 0;

  return MEMORY[0x2822009F8](sub_2584C6640, 0, 0);
}

uint64_t sub_2584C4B18()
{
  v1 = *(v0 + 288);
  *(v0 + 296) = sub_2584C549C(*(v0 + 264)) & 1;

  return MEMORY[0x2822009F8](sub_2584C4B8C, 0, 0);
}

uint64_t sub_2584C4B8C()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 288);
  sub_2584C6274(*(v0 + 264));

  if (v1)
  {
    (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
    v3 = *(v0 + 240);
    v4 = *(v0 + 216);
    v6 = *(v0 + 184);
    v5 = *(v0 + 192);
    v7 = *(v0 + 176);

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = *(MEMORY[0x277D858B8] + 4);
    v11 = swift_task_alloc();
    *(v0 + 256) = v11;
    *v11 = v0;
    v11[1] = sub_2584C4518;
    v12 = *(v0 + 240);
    v13 = *(v0 + 224);

    return MEMORY[0x2822005A8](v0 + 136, 0, 0, v13, v0 + 144);
  }
}

uint64_t sub_2584C4CE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9309C8, qword_25853AF20);
  v74 = *(v2 - 8);
  v75 = v2;
  v3 = *(v74 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v73 = &v72 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390);
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8, v8);
  v72 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v76 = &v72 - v13;
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v72 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v77 = *(v17 - 8);
  v78 = v17;
  v18 = *(v77 + 64);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v72 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930990, &unk_25853AD00);
  v27 = *(*(v26 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v26 - 8, v28);
  v31 = &v72 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v32);
  v34 = &v72 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F9308E0, &qword_25853AC68);
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  v39 = MEMORY[0x28223BE20](v35, v38);
  v41 = &v72 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39, v42);
  v44 = &v72 - v43;
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v62 = v79;
      sub_2584C2FB0(0, &OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_eventStreamContinuation, &OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_eventStream);
      sub_2584C32EC(&OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_stopTransitionContinuation);
      v63 = *(v62 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_internalEventMonitorTask);
      *(v62 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_internalEventMonitorTask) = 0;

      return 1;
    }

    if (a1 == 3)
    {
      v50 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_transitionContinuation;
      v51 = v79;
      swift_beginAccess();
      sub_2584AC3B8(v51 + v50, v16, &unk_27F930DB0, &qword_258536390);
      v53 = v77;
      v52 = v78;
      if ((*(v77 + 48))(v16, 1, v78) == 1)
      {
        v47 = &unk_27F930DB0;
        v48 = &qword_258536390;
        v49 = v16;
        goto LABEL_14;
      }

      (*(v53 + 32))(v25, v16, v52);
      v70 = v79;
      sub_25853364C();
      (*(v53 + 8))(v25, v52);
      v67 = v76;
      (*(v53 + 56))(v76, 1, 1, v52);
      swift_beginAccess();
      v68 = v70 + v50;
LABEL_19:
      sub_2584AC5D0(v67, v68, &unk_27F930DB0, &qword_258536390);
      swift_endAccess();
      return 0;
    }

LABEL_10:
    v54 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_transitionContinuation;
    v55 = v79;
    swift_beginAccess();
    v56 = v55 + v54;
    v57 = v72;
    sub_2584AC3B8(v56, v72, &unk_27F930DB0, &qword_258536390);
    v59 = v77;
    v58 = v78;
    if ((*(v77 + 48))(v57, 1, v78) == 1)
    {
      v47 = &unk_27F930DB0;
      v48 = &qword_258536390;
      v49 = v57;
      goto LABEL_14;
    }

    (*(v59 + 32))(v22, v57, v58);
    v80 = a1;
    v65 = a1;
    v66 = v79;
    sub_25853363C();
    (*(v59 + 8))(v22, v58);
    v67 = v76;
    (*(v59 + 56))(v76, 1, 1, v58);
    swift_beginAccess();
    v68 = v66 + v54;
    goto LABEL_19;
  }

  if (!a1)
  {
    v60 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_eventStreamContinuation;
    v61 = v79;
    swift_beginAccess();
    sub_2584AC3B8(v61 + v60, v34, &unk_27F930990, &unk_25853AD00);
    if ((*(v36 + 48))(v34, 1, v35) != 1)
    {
      (*(v36 + 32))(v44, v34, v35);
      LOBYTE(v80) = 0;
      v71 = v73;
      sub_2585337EC();
      (*(v74 + 8))(v71, v75);
      (*(v36 + 8))(v44, v35);
      return 0;
    }

    v47 = &unk_27F930990;
    v48 = &unk_25853AD00;
    v49 = v34;
    goto LABEL_14;
  }

  if (a1 != 1)
  {
    goto LABEL_10;
  }

  v45 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedAudioStream_eventStreamContinuation;
  v46 = v79;
  swift_beginAccess();
  sub_2584AC3B8(v46 + v45, v31, &unk_27F930990, &unk_25853AD00);
  if ((*(v36 + 48))(v31, 1, v35) != 1)
  {
    (*(v36 + 32))(v41, v31, v35);
    LOBYTE(v80) = 1;
    v69 = v73;
    sub_2585337EC();
    (*(v74 + 8))(v69, v75);
    (*(v36 + 8))(v41, v35);
    return 0;
  }

  v47 = &unk_27F930990;
  v48 = &unk_25853AD00;
  v49 = v31;
LABEL_14:
  sub_258465168(v49, v47, v48);
  return 0;
}

uint64_t sub_2584C549C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9309C8, qword_25853AF20);
  v74 = *(v2 - 8);
  v75 = v2;
  v3 = *(v74 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v73 = &v72 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390);
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8, v8);
  v72 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v76 = &v72 - v13;
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v72 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v77 = *(v17 - 8);
  v78 = v17;
  v18 = *(v77 + 64);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v72 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930990, &unk_25853AD00);
  v27 = *(*(v26 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v26 - 8, v28);
  v31 = &v72 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v32);
  v34 = &v72 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F9308E0, &qword_25853AC68);
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  v39 = MEMORY[0x28223BE20](v35, v38);
  v41 = &v72 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39, v42);
  v44 = &v72 - v43;
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v62 = v79;
      sub_2584C2FB0(0, &OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_eventStreamContinuation, &OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_eventStream);
      sub_2584C32EC(&OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_stopTransitionContinuation);
      v63 = *(v62 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_internalEventMonitorTask);
      *(v62 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_internalEventMonitorTask) = 0;

      return 1;
    }

    if (a1 == 3)
    {
      v50 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_transitionContinuation;
      v51 = v79;
      swift_beginAccess();
      sub_2584AC3B8(v51 + v50, v16, &unk_27F930DB0, &qword_258536390);
      v53 = v77;
      v52 = v78;
      if ((*(v77 + 48))(v16, 1, v78) == 1)
      {
        v47 = &unk_27F930DB0;
        v48 = &qword_258536390;
        v49 = v16;
        goto LABEL_14;
      }

      (*(v53 + 32))(v25, v16, v52);
      v70 = v79;
      sub_25853364C();
      (*(v53 + 8))(v25, v52);
      v67 = v76;
      (*(v53 + 56))(v76, 1, 1, v52);
      swift_beginAccess();
      v68 = v70 + v50;
LABEL_19:
      sub_2584AC5D0(v67, v68, &unk_27F930DB0, &qword_258536390);
      swift_endAccess();
      return 0;
    }

LABEL_10:
    v54 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_transitionContinuation;
    v55 = v79;
    swift_beginAccess();
    v56 = v55 + v54;
    v57 = v72;
    sub_2584AC3B8(v56, v72, &unk_27F930DB0, &qword_258536390);
    v59 = v77;
    v58 = v78;
    if ((*(v77 + 48))(v57, 1, v78) == 1)
    {
      v47 = &unk_27F930DB0;
      v48 = &qword_258536390;
      v49 = v57;
      goto LABEL_14;
    }

    (*(v59 + 32))(v22, v57, v58);
    v80 = a1;
    v65 = a1;
    v66 = v79;
    sub_25853363C();
    (*(v59 + 8))(v22, v58);
    v67 = v76;
    (*(v59 + 56))(v76, 1, 1, v58);
    swift_beginAccess();
    v68 = v66 + v54;
    goto LABEL_19;
  }

  if (!a1)
  {
    v60 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_eventStreamContinuation;
    v61 = v79;
    swift_beginAccess();
    sub_2584AC3B8(v61 + v60, v34, &unk_27F930990, &unk_25853AD00);
    if ((*(v36 + 48))(v34, 1, v35) != 1)
    {
      (*(v36 + 32))(v44, v34, v35);
      LOBYTE(v80) = 0;
      v71 = v73;
      sub_2585337EC();
      (*(v74 + 8))(v71, v75);
      (*(v36 + 8))(v44, v35);
      return 0;
    }

    v47 = &unk_27F930990;
    v48 = &unk_25853AD00;
    v49 = v34;
    goto LABEL_14;
  }

  if (a1 != 1)
  {
    goto LABEL_10;
  }

  v45 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_eventStreamContinuation;
  v46 = v79;
  swift_beginAccess();
  sub_2584AC3B8(v46 + v45, v31, &unk_27F930990, &unk_25853AD00);
  if ((*(v36 + 48))(v31, 1, v35) != 1)
  {
    (*(v36 + 32))(v41, v31, v35);
    LOBYTE(v80) = 1;
    v69 = v73;
    sub_2585337EC();
    (*(v74 + 8))(v69, v75);
    (*(v36 + 8))(v41, v35);
    return 0;
  }

  v47 = &unk_27F930990;
  v48 = &unk_25853AD00;
  v49 = v31;
LABEL_14:
  sub_258465168(v49, v47, v48);
  return 0;
}

id sub_2584C5C58(uint64_t a1, uint64_t a2, uint64_t *a3, SEL *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v17 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v14 = *(v13 - 8);
  (*(v14 + 16))(v12, a1, v13);
  (*(v14 + 56))(v12, 0, 1, v13);
  v15 = *a3;
  swift_beginAccess();
  sub_2584AC5D0(v12, a2 + v15, &unk_27F930DB0, &qword_258536390);
  swift_endAccess();
  return [*(a2 + 112) *a4];
}

uint64_t sub_2584C5DEC(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_258472CF8;

  return sub_2584BE6E0(a1, a2);
}

uint64_t sub_2584C5EA8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258472CF8;

  return sub_2584C0ADC();
}

uint64_t sub_2584C5F48()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258472CF8;

  return sub_2584C1588();
}

uint64_t sub_2584C5FE8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258472CF8;

  return sub_2584C2518();
}

uint64_t sub_2584C610C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2584C6148(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308B0, &unk_25853AC38) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_258464F5C;

  return sub_2584C3768(a1, v6, v7, v1 + v5, v8);
}

void sub_2584C6274(id a1)
{
  if (a1 != 4)
  {
    sub_2584C6284(a1);
  }
}

void sub_2584C6284(id a1)
{
  if (a1 >= 4)
  {
  }
}

uint64_t sub_2584C6294(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_21Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308B0, &unk_25853AC38);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2584C6470(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308B0, &unk_25853AC38) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_258472CF8;

  return sub_2584C4278(a1, v6, v7, v1 + v5, v8);
}

unint64_t sub_2584C65AC(uint64_t a1)
{
  result = sub_2584BBF74();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2584C65D8()
{
  result = qword_27F9309D8;
  if (!qword_27F9309D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9309D8);
  }

  return result;
}

id CoexServerXPCListener.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CoexServerXPCListener.init()()
{
  v1 = v0;
  v2 = objc_allocWithZone(MEMORY[0x277CCAE98]);
  v3 = sub_25853341C();
  v4 = [v2 initWithMachServiceName_];

  *&v1[OBJC_IVAR____TtC18MediaContinuityKit21CoexServerXPCListener_coexListener] = v4;
  v5 = type metadata accessor for CoexSessionManager();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC18MediaContinuityKit21CoexServerXPCListener_coexManager] = sub_2584CA2B8();
  v9.receiver = v1;
  v9.super_class = type metadata accessor for CoexServerXPCListener();
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_2584C684C()
{
  if (qword_27F92F900 != -1)
  {
    swift_once();
  }

  v1 = sub_258532A4C();
  __swift_project_value_buffer(v1, qword_27F93D050);
  v2 = sub_258532A2C();
  v3 = sub_2585338EC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_25845E000, v2, v3, "Activating the Coex Manager", v4, 2u);
    MEMORY[0x259C82900](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  v6 = *(v5 + OBJC_IVAR____TtC18MediaContinuityKit21CoexServerXPCListener_coexManager);
  *(v0 + 24) = v6;

  return MEMORY[0x2822009F8](sub_2584C6978, v6, 0);
}

uint64_t sub_2584C6978()
{
  v1 = *(v0 + 24);
  sub_2584C99B8();

  return MEMORY[0x2822009F8](sub_2584C69E0, 0, 0);
}

uint64_t sub_2584C69E0()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC18MediaContinuityKit21CoexServerXPCListener_coexListener);
  [v1 setDelegate_];
  [v1 resume];
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2584C6A88()
{
  if (qword_27F92F900 != -1)
  {
    swift_once();
  }

  v1 = sub_258532A4C();
  __swift_project_value_buffer(v1, qword_27F93D050);
  v2 = sub_258532A2C();
  v3 = sub_2585338EC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_25845E000, v2, v3, "Invalidating the Coex Manager", v4, 2u);
    MEMORY[0x259C82900](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  v6 = *(v5 + OBJC_IVAR____TtC18MediaContinuityKit21CoexServerXPCListener_coexManager);
  *(v0 + 24) = v6;

  return MEMORY[0x2822009F8](sub_2584C6BB4, v6, 0);
}

uint64_t sub_2584C6BB4()
{
  v1 = *(v0 + 24);
  sub_2584C9CDC();

  return MEMORY[0x2822009F8](sub_2584C6C1C, 0, 0);
}

uint64_t sub_2584C6C1C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC18MediaContinuityKit21CoexServerXPCListener_coexListener);
  [v1 suspend];
  [v1 invalidate];
  v2 = *(v0 + 8);

  return v2();
}

id CoexServerXPCListener.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoexServerXPCListener();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2584C6D24(void *a1)
{
  v2 = v1;
  if (qword_27F92F900 != -1)
  {
    swift_once();
  }

  v4 = sub_258532A4C();
  __swift_project_value_buffer(v4, qword_27F93D050);
  v5 = sub_258532A2C();
  v6 = sub_2585338EC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_25845E000, v5, v6, "New coex client request", v7, 2u);
    MEMORY[0x259C82900](v7, -1, -1);
  }

  sub_2584C7B28();
  v8 = *(v2 + OBJC_IVAR____TtC18MediaContinuityKit21CoexServerXPCListener_coexListener);
  if ((sub_2585339EC() & 1) == 0)
  {
    v11 = sub_258532A2C();
    v12 = sub_2585338CC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_25845E000, v11, v12, "Unknown coex listener", v13, 2u);
      MEMORY[0x259C82900](v13, -1, -1);
    }

    return 0;
  }

  v9 = sub_25853341C();
  v10 = [a1 valueForEntitlement_];

  if (v10)
  {
    sub_258533A5C();
    swift_unknownObjectRelease();
  }

  else
  {
    aBlock = 0u;
    v37 = 0u;
  }

  v40[0] = aBlock;
  v40[1] = v37;
  sub_2584C7B74(v40, &aBlock);
  if (!*(&v37 + 1))
  {
    sub_258467FD8(&aBlock);
LABEL_19:
    v30 = sub_258532A2C();
    v31 = sub_2585338CC();
    if (!os_log_type_enabled(v30, v31))
    {
LABEL_22:

      sub_258467FD8(v40);
      return 0;
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = "Failed entitlement check";
LABEL_21:
    _os_log_impl(&dword_25845E000, v30, v31, v33, v32, 2u);
    MEMORY[0x259C82900](v32, -1, -1);
    goto LABEL_22;
  }

  if (!swift_dynamicCast() || (v35 & 1) == 0)
  {
    goto LABEL_19;
  }

  v14 = objc_opt_self();
  v15 = [v14 interfaceWithProtocol_];
  [a1 setRemoteObjectInterface_];

  v38 = sub_2584C7404;
  v39 = 0;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v37 = sub_2584D170C;
  *(&v37 + 1) = &block_descriptor_0;
  v16 = _Block_copy(&aBlock);
  [a1 setInterruptionHandler_];
  _Block_release(v16);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = sub_2584C7C34;
  v39 = v17;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v37 = sub_2584D170C;
  *(&v37 + 1) = &block_descriptor_7;
  v18 = _Block_copy(&aBlock);

  [a1 setInvalidationHandler_];
  _Block_release(v18);
  v19 = [a1 remoteObjectProxy];
  sub_258533A5C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930A68, &qword_25853B118);
  if (!swift_dynamicCast())
  {
    v30 = sub_258532A2C();
    v31 = sub_2585338CC();
    if (!os_log_type_enabled(v30, v31))
    {
      goto LABEL_22;
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = "Invalid coex client proxy";
    goto LABEL_21;
  }

  v20 = *(v2 + OBJC_IVAR____TtC18MediaContinuityKit21CoexServerXPCListener_coexManager);
  swift_unknownObjectRetain();

  v21 = [a1 processIdentifier];
  type metadata accessor for CoreOSBackedDaemonTransaction();
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  v23 = sub_2584C7C3C(v35, v20, v21, v22);
  v24 = [v14 interfaceWithProtocol_];
  sub_258473C6C();
  v25 = sub_25853386C();

  [v24 setClasses:v25 forSelector:sel_startWithUuid_config_completionHandler_ argumentIndex:1 ofReply:0];

  sub_258473C6C();
  v26 = sub_25853386C();

  [v24 setClasses:v26 forSelector:sel_startSuspendedWithUuid_config_completionHandler_ argumentIndex:1 ofReply:0];

  [a1 setExportedInterface_];
  [a1 setExportedObject_];
  v27 = sub_258532A2C();
  v28 = sub_2585338EC();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_25845E000, v27, v28, "New coex client created", v29, 2u);
    MEMORY[0x259C82900](v29, -1, -1);
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  sub_258467FD8(v40);
  return 1;
}

void sub_2584C7404()
{
  if (qword_27F92F900 != -1)
  {
    swift_once();
  }

  v0 = sub_258532A4C();
  __swift_project_value_buffer(v0, qword_27F93D050);
  oslog = sub_258532A2C();
  v1 = sub_2585338AC();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_25845E000, oslog, v1, "interruptionHandler called", v2, 2u);
    MEMORY[0x259C82900](v2, -1, -1);
  }
}

void sub_2584C74EC()
{
  if (qword_27F92F900 != -1)
  {
    swift_once();
  }

  v0 = sub_258532A4C();
  __swift_project_value_buffer(v0, qword_27F93D050);
  v1 = sub_258532A2C();
  v2 = sub_2585338CC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_25845E000, v1, v2, "XPC connection invalidated", v3, 2u);
    MEMORY[0x259C82900](v3, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if ([Strong exportedObject])
    {
      sub_258533A5C();
      swift_unknownObjectRelease();
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }

    v13[0] = v11;
    v13[1] = v12;
    if (*(&v12 + 1))
    {
      type metadata accessor for CoexSessionXPCServerProxy();
      if (swift_dynamicCast())
      {
        if (*&v10[OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_coexSession])
        {
          __swift_project_boxed_opaque_existential_1(&v10[OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_coexManager], *&v10[OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_coexManager + 24]);
          v6 = off_28698ED98[0];
          type metadata accessor for CoexSessionManager();

          v6(v7);

          v8 = __swift_project_boxed_opaque_existential_1(&v10[OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_daemonTransaction], *&v10[OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_daemonTransaction + 24]);
          v9 = *(*v8 + 16);
          *(*v8 + 16) = 0;

          swift_unknownObjectRelease();
          return;
        }
      }
    }

    else
    {

      sub_258467FD8(v13);
    }
  }
}

Swift::Bool __swiftcall CoexServerXPCListener.listener(_:shouldAcceptNewConnection:)(NSXPCListener _, NSXPCConnection shouldAcceptNewConnection)
{
  if (qword_27F92F900 != -1)
  {
    swift_once();
  }

  v3 = sub_258532A4C();
  __swift_project_value_buffer(v3, qword_27F93D050);
  v4 = sub_258532A2C();
  v5 = sub_2585338EC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_25845E000, v4, v5, "New coex client connection", v6, 2u);
    MEMORY[0x259C82900](v6, -1, -1);
  }

  v7 = sub_2584C6D24(shouldAcceptNewConnection.super.isa);
  [(objc_class *)shouldAcceptNewConnection.super.isa resume];
  return v7 & 1;
}

uint64_t dispatch thunk of CoexServerXPCListener.activate()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x60);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_258472CF8;

  return v6();
}

uint64_t dispatch thunk of CoexServerXPCListener.invalidate()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x68);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_258464F5C;

  return v6();
}

unint64_t sub_2584C7B28()
{
  result = qword_27F930A58;
  if (!qword_27F930A58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F930A58);
  }

  return result;
}

uint64_t sub_2584C7B74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FD80, &unk_25853F3F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2584C7BFC()
{
  MEMORY[0x259C829D0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_2584C7C3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for CoexSessionManager();
  v34[3] = v8;
  v34[4] = &off_28698ED70;
  v34[0] = a2;
  v9 = type metadata accessor for CoreOSBackedDaemonTransaction();
  v32 = v9;
  v33 = &off_28698F5B0;
  v31[0] = a4;
  v10 = type metadata accessor for CoexSessionXPCServerProxy();
  v11 = objc_allocWithZone(v10);
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v34, v8);
  v13 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v12, v12);
  v15 = (&v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = v32;
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v18, v18);
  v21 = (&v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = *v15;
  v24 = *v21;
  v30[3] = v8;
  v30[4] = &off_28698ED70;
  v29[4] = &off_28698F5B0;
  v30[0] = v23;
  v29[3] = v9;
  v29[0] = v24;
  *&v11[OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_coexSession] = 0;
  *&v11[OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_processIdentifier] = a3;
  *&v11[OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_delegate] = a1;
  sub_258464C30(v30, &v11[OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_coexManager]);
  sub_258464C30(v29, &v11[OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_daemonTransaction]);
  v28.receiver = v11;
  v28.super_class = v10;
  v25 = objc_msgSendSuper2(&v28, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v29);
  __swift_destroy_boxed_opaque_existential_1Tm(v30);
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  __swift_destroy_boxed_opaque_existential_1Tm(v34);
  return v25;
}

uint64_t sub_2584C7EC4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x64657472617473;
  if (v2 != 1)
  {
    v5 = 0x65646E6570737573;
    v4 = 0xE900000000000064;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x646570706F7473;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0x64657472617473;
  if (*a2 != 1)
  {
    v8 = 0x65646E6570737573;
    v3 = 0xE900000000000064;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x646570706F7473;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_258533E2C();
  }

  return v11 & 1;
}

uint64_t sub_2584C7FCC()
{
  v1 = *v0;
  sub_258533EEC();
  sub_2585334AC();

  return sub_258533F2C();
}

uint64_t sub_2584C8074()
{
  *v0;
  *v0;
  sub_2585334AC();
}

uint64_t sub_2584C8108()
{
  v1 = *v0;
  sub_258533EEC();
  sub_2585334AC();

  return sub_258533F2C();
}

uint64_t sub_2584C81AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2584C9590();
  *a2 = result;
  return result;
}

void sub_2584C81DC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x64657472617473;
  if (v2 != 1)
  {
    v5 = 0x65646E6570737573;
    v4 = 0xE900000000000064;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x646570706F7473;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2584C8260()
{
  v16 = v0;
  if (qword_27F92F900 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_258532A4C();
  v0[3] = __swift_project_value_buffer(v2, qword_27F93D050);

  v3 = sub_258532A2C();
  v4 = sub_2585338EC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    sub_258533B8C();

    strcpy(v15, "CoexSession=[");
    HIWORD(v15[1]) = -4864;
    sub_2585329BC();
    sub_2584C9548(&qword_27F92FE48, MEMORY[0x277CC95F0]);
    v8 = sub_258533DFC();
    MEMORY[0x259C81500](v8);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v9 = sub_2584713B0(v15[0], v15[1], &v14);

    *(v6 + 4) = v9;
    _os_log_impl(&dword_25845E000, v3, v4, "%s Coex session suspending", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x259C82900](v7, -1, -1);
    MEMORY[0x259C82900](v6, -1, -1);
  }

  v10 = *(MEMORY[0x277D859E0] + 4);
  v11 = swift_task_alloc();
  v0[4] = v11;
  *v11 = v0;
  v11[1] = sub_2584C852C;
  v12 = v0[2];

  return MEMORY[0x2822007B8]();
}

uint64_t sub_2584C852C()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2584C8628, 0, 0);
}

uint64_t sub_2584C8628()
{
  v14 = v0;
  v2 = v0[2];
  v1 = v0[3];

  v3 = sub_258532A2C();
  v4 = sub_2585338EC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    sub_258533B8C();

    strcpy(v13, "CoexSession=[");
    HIWORD(v13[1]) = -4864;
    sub_2585329BC();
    sub_2584C9548(&qword_27F92FE48, MEMORY[0x277CC95F0]);
    v8 = sub_258533DFC();
    MEMORY[0x259C81500](v8);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v9 = sub_2584713B0(v13[0], v13[1], &v12);

    *(v6 + 4) = v9;
    _os_log_impl(&dword_25845E000, v3, v4, "%s Coex session suspended", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x259C82900](v7, -1, -1);
    MEMORY[0x259C82900](v6, -1, -1);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_2584C884C()
{
  v16 = v0;
  if (qword_27F92F900 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_258532A4C();
  v0[3] = __swift_project_value_buffer(v2, qword_27F93D050);

  v3 = sub_258532A2C();
  v4 = sub_2585338EC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    sub_258533B8C();

    strcpy(v15, "CoexSession=[");
    HIWORD(v15[1]) = -4864;
    sub_2585329BC();
    sub_2584C9548(&qword_27F92FE48, MEMORY[0x277CC95F0]);
    v8 = sub_258533DFC();
    MEMORY[0x259C81500](v8);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v9 = sub_2584713B0(v15[0], v15[1], &v14);

    *(v6 + 4) = v9;
    _os_log_impl(&dword_25845E000, v3, v4, "%s Coex session resuming", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x259C82900](v7, -1, -1);
    MEMORY[0x259C82900](v6, -1, -1);
  }

  v10 = *(MEMORY[0x277D859E0] + 4);
  v11 = swift_task_alloc();
  v0[4] = v11;
  *v11 = v0;
  v11[1] = sub_2584C8B20;
  v12 = v0[2];

  return MEMORY[0x2822007B8]();
}

uint64_t sub_2584C8B20()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2584C8C1C, 0, 0);
}

uint64_t sub_2584C8C1C()
{
  v14 = v0;
  v2 = v0[2];
  v1 = v0[3];

  v3 = sub_258532A2C();
  v4 = sub_2585338EC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    sub_258533B8C();

    strcpy(v13, "CoexSession=[");
    HIWORD(v13[1]) = -4864;
    sub_2585329BC();
    sub_2584C9548(&qword_27F92FE48, MEMORY[0x277CC95F0]);
    v8 = sub_258533DFC();
    MEMORY[0x259C81500](v8);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v9 = sub_2584713B0(v13[0], v13[1], &v12);

    *(v6 + 4) = v9;
    _os_log_impl(&dword_25845E000, v3, v4, "%s Coex session resumed", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x259C82900](v7, -1, -1);
    MEMORY[0x259C82900](v6, -1, -1);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_2584C8E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930570, &qword_258538220);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = aBlock - v14;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return sub_25853364C();
  }

  v17 = Strong;
  (*(v11 + 16))(v15, a1, v10);
  v18 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v19 = swift_allocObject();
  (*(v11 + 32))(v19 + v18, v15, v10);
  aBlock[4] = a4;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2584D170C;
  aBlock[3] = a5;
  v20 = _Block_copy(aBlock);

  [v17 *a6];
  _Block_release(v20);
  return swift_unknownObjectRelease();
}

uint64_t sub_2584C8FF8()
{
  v1 = OBJC_IVAR____TtC18MediaContinuityKit11CoexSession_uuid;
  v2 = sub_2585329BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_258471C08(v0 + OBJC_IVAR____TtC18MediaContinuityKit11CoexSession_delegate);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for CoexSession()
{
  result = qword_27F930A78;
  if (!qword_27F930A78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2584C9108()
{
  result = sub_2585329BC();
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

unint64_t sub_2584C91DC()
{
  result = qword_27F930A88;
  if (!qword_27F930A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930A88);
  }

  return result;
}

uint64_t sub_2584C9230()
{
  v1 = *v0;
  sub_258533B8C();

  strcpy(v4, "CoexSession=[");
  sub_2585329BC();
  sub_2584C9548(&qword_27F92FE48, MEMORY[0x277CC95F0]);
  v2 = sub_258533DFC();
  MEMORY[0x259C81500](v2);

  MEMORY[0x259C81500](93, 0xE100000000000000);
  return v4[0];
}

uint64_t sub_2584C9320()
{
  v1 = *v0;
  sub_258533EEC();
  sub_2585329BC();
  sub_2584C9548(&qword_27F92FE58, MEMORY[0x277CC95F0]);
  sub_2585333BC();
  return sub_258533F2C();
}

uint64_t sub_2584C93C0()
{
  v1 = *v0;
  sub_2585329BC();
  sub_2584C9548(&qword_27F92FE58, MEMORY[0x277CC95F0]);
  return sub_2585333BC();
}

uint64_t sub_2584C9448()
{
  sub_258533EEC();
  v1 = *v0;
  sub_2585329BC();
  sub_2584C9548(&qword_27F92FE58, MEMORY[0x277CC95F0]);
  sub_2585333BC();
  return sub_258533F2C();
}

uint64_t sub_2584C94E4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_25853296C();
}

uint64_t sub_2584C9548(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2584C9590()
{
  v0 = sub_258533CEC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930570, &qword_258538220);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2584C9720()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930570, &qword_258538220) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_25853364C();
}

uint64_t sub_2584C979C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if ((result & 0xC000000000000001) != 0)
  {
    sub_258533ABC();
    type metadata accessor for CoexSession();
    sub_2584D1630(&qword_27F930B10, type metadata accessor for CoexSession);
    sub_25853389C();
    result = v10;
    v3 = v11;
    v5 = v12;
    v4 = v13;
    v6 = v14;
  }

  else
  {
    v4 = 0;
    v7 = -1;
    v8 = -1 << *(result + 32);
    v3 = result + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v7 = ~(-1 << v9);
    }

    v6 = v7 & *(result + 56);
  }

  *a2 = result;
  a2[1] = v3;
  a2[2] = v5;
  a2[3] = v4;
  a2[4] = v6;
  a2[5] = 0;
  return result;
}

void sub_2584C9888()
{
  if ((*v0 & 0x8000000000000000) != 0)
  {
    if (sub_258533AEC())
    {
      type metadata accessor for CoexSession();
      swift_dynamicCast();
      if (v10)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v1 = v0[3];
    v2 = v0[4];
    if (!v2)
    {
      v4 = (v0[2] + 64) >> 6;
      if (v4 <= v1 + 1)
      {
        v5 = v1 + 1;
      }

      else
      {
        v5 = (v0[2] + 64) >> 6;
      }

      v6 = v5 - 1;
      while (1)
      {
        v3 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          break;
        }

        if (v3 >= v4)
        {
          v8 = 0;
          v7 = 0;
          goto LABEL_15;
        }

        v2 = *(v0[1] + 8 * v3);
        ++v1;
        if (v2)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
      return;
    }

    v3 = v0[3];
LABEL_14:
    v7 = (v2 - 1) & v2;
    v8 = *(*(*v0 + 48) + ((v3 << 9) | (8 * __clz(__rbit64(v2)))));

    v6 = v3;
LABEL_15:
    v0[3] = v6;
    v0[4] = v7;
    if (v8)
    {
LABEL_16:
      v9 = v0[5];
      if (!__OFADD__(v9, 1))
      {
        v0[5] = v9 + 1;
        return;
      }

      goto LABEL_21;
    }
  }
}

void sub_2584C99B8()
{
  v1 = v0;
  v2 = 0xEB0000000064657ALL;
  v3 = OBJC_IVAR____TtC18MediaContinuityKit18CoexSessionManager_state;
  if (*(v0 + OBJC_IVAR____TtC18MediaContinuityKit18CoexSessionManager_state))
  {
    v4 = 0x6574617669746361;
    v5 = sub_258533E2C();

    if ((v5 & 1) == 0)
    {
      if (qword_27F92F900 != -1)
      {
        swift_once();
      }

      v6 = sub_258532A4C();
      __swift_project_value_buffer(v6, qword_27F93D050);

      oslog = sub_258532A2C();
      v7 = sub_2585338CC();

      if (os_log_type_enabled(oslog, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v17 = v9;
        *v8 = 136315138;
        if (*(v1 + v3))
        {
          if (*(v1 + v3) == 1)
          {
            v2 = 0xE900000000000064;
          }

          else
          {
            v4 = 0x6164696C61766E69;
            v2 = 0xEB00000000646574;
          }
        }

        else
        {
          v4 = 0x696C616974696E69;
        }

        v15 = sub_2584713B0(v4, v2, &v17);

        *(v8 + 4) = v15;
        _os_log_impl(&dword_25845E000, oslog, v7, "Invalid state=%s", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v9);
        MEMORY[0x259C82900](v9, -1, -1);
        MEMORY[0x259C82900](v8, -1, -1);
      }

      return;
    }
  }

  else
  {
  }

  if (qword_27F92F900 != -1)
  {
    swift_once();
  }

  v10 = sub_258532A4C();
  __swift_project_value_buffer(v10, qword_27F93D050);
  v11 = sub_258532A2C();
  v12 = sub_2585338EC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_25845E000, v11, v12, "Activate the Coex Manager", v13, 2u);
    MEMORY[0x259C82900](v13, -1, -1);
  }

  *(v1 + v3) = 1;
  v14 = v1 + OBJC_IVAR____TtC18MediaContinuityKit18CoexSessionManager_eventStream;

  sub_2584CA9CC(v14);
}

uint64_t sub_2584C9CDC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18MediaContinuityKit18CoexSessionManager_state;
  if (*(v0 + OBJC_IVAR____TtC18MediaContinuityKit18CoexSessionManager_state) && *(v0 + OBJC_IVAR____TtC18MediaContinuityKit18CoexSessionManager_state) != 1)
  {
  }

  else
  {
    v3 = sub_258533E2C();

    if ((v3 & 1) == 0)
    {
      if (qword_27F92F900 != -1)
      {
        swift_once();
      }

      v5 = sub_258532A4C();
      __swift_project_value_buffer(v5, qword_27F93D050);
      v6 = sub_258532A2C();
      v7 = sub_2585338EC();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_25845E000, v6, v7, "Invalidating the Coex Manager", v8, 2u);
        MEMORY[0x259C82900](v8, -1, -1);
      }

      *(v1 + v2) = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930AF0, &qword_25853B4D0);
      result = sub_2585337FC();
      if (*(v1 + OBJC_IVAR____TtC18MediaContinuityKit18CoexSessionManager_eventHandler))
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
        sub_25853374C();
      }
    }
  }

  return result;
}

uint64_t sub_2584C9F00()
{
  if (*v0 >= 3u)
  {
    return 9;
  }

  else
  {
    return 4;
  }
}

uint64_t sub_2584C9F18(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEB00000000646574;
  v3 = *a1;
  v4 = 0x6574617669746361;
  v5 = 0xE900000000000064;
  if (v3 != 1)
  {
    v4 = 0x6164696C61766E69;
    v5 = 0xEB00000000646574;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x696C616974696E69;
  }

  if (v3)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEB0000000064657ALL;
  }

  v8 = 0x6574617669746361;
  if (*a2 == 1)
  {
    v2 = 0xE900000000000064;
  }

  else
  {
    v8 = 0x6164696C61766E69;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x696C616974696E69;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0xEB0000000064657ALL;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_258533E2C();
  }

  return v11 & 1;
}

uint64_t sub_2584CA024()
{
  v1 = *v0;
  sub_258533EEC();
  sub_2585334AC();

  return sub_258533F2C();
}

uint64_t sub_2584CA0D4()
{
  *v0;
  *v0;
  sub_2585334AC();
}

uint64_t sub_2584CA170()
{
  v1 = *v0;
  sub_258533EEC();
  sub_2585334AC();

  return sub_258533F2C();
}

uint64_t sub_2584CA21C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2584D0F08();
  *a2 = result;
  return result;
}

void sub_2584CA24C(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000064;
  v3 = 0x6574617669746361;
  if (*v1 != 1)
  {
    v3 = 0x6164696C61766E69;
    v2 = 0xEB00000000646574;
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x696C616974696E69;
  }

  if (*v1)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0xEB0000000064657ALL;
  }

  *a1 = v4;
  a1[1] = v5;
}

uint64_t sub_2584CA2B8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930B20, &qword_25853B520);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930AF0, &qword_25853B4D0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930AF8, &unk_25853B4D8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v21 - v17;
  swift_defaultActor_initialize();
  *(v0 + OBJC_IVAR____TtC18MediaContinuityKit18CoexSessionManager_eventHandler) = 0;
  if (MEMORY[0x277D84F90] >> 62 && sub_258533ACC())
  {
    v19 = sub_2584D0C7C(MEMORY[0x277D84F90]);
  }

  else
  {
    v19 = MEMORY[0x277D84FA0];
  }

  *(v0 + OBJC_IVAR____TtC18MediaContinuityKit18CoexSessionManager_coexSessions) = v19;
  *(v0 + OBJC_IVAR____TtC18MediaContinuityKit18CoexSessionManager_state) = 0;
  (*(v2 + 104))(v6, *MEMORY[0x277D858A0], v1);
  sub_2585337BC();
  (*(v2 + 8))(v6, v1);
  (*(v14 + 32))(v0 + OBJC_IVAR____TtC18MediaContinuityKit18CoexSessionManager_eventStream, v18, v13);
  (*(v8 + 32))(v0 + OBJC_IVAR____TtC18MediaContinuityKit18CoexSessionManager_eventStreamContinuation, v12, v7);
  return v0;
}

uint64_t sub_2584CA584()
{
  v1 = OBJC_IVAR____TtC18MediaContinuityKit18CoexSessionManager_eventStreamContinuation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930AF0, &qword_25853B4D0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC18MediaContinuityKit18CoexSessionManager_eventStream;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930AF8, &unk_25853B4D8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC18MediaContinuityKit18CoexSessionManager_eventHandler);

  v6 = *(v0 + OBJC_IVAR____TtC18MediaContinuityKit18CoexSessionManager_coexSessions);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for CoexSessionManager()
{
  result = qword_27F930AC0;
  if (!qword_27F930AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2584CA6C8()
{
  sub_2584CA7F4(319, &qword_27F930AD0, MEMORY[0x277D858B0]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_2584CA7F4(319, &qword_27F930AD8, MEMORY[0x277D858D8]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_2584CA7F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t, void))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9308C0, &qword_258537580);
    v7 = a3(a1, &type metadata for CoexSessionManager.Events, v6, MEMORY[0x277D84950]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2584CA88C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 24))
  {
    return (*a1 + 125);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2584CA8E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t sub_2584CA978()
{
  result = qword_27F930AE0;
  if (!qword_27F930AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930AE0);
  }

  return result;
}

uint64_t sub_2584CA9CC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930AF8, &unk_25853B4D8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v21 - v12;
  v14 = sub_25853368C();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  swift_weakInit();
  (*(v4 + 16))(v8, a1, v3);
  v16 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  (*(v4 + 32))(v17 + v16, v8, v3);
  *(v17 + ((v5 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;
  v18 = sub_258476C88(0, 0, v13, &unk_25853B4F0, v17);
  v19 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit18CoexSessionManager_eventHandler);
  *(v1 + OBJC_IVAR____TtC18MediaContinuityKit18CoexSessionManager_eventHandler) = v18;
}

uint64_t sub_2584CABF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930AE8, &qword_25853B4C8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = v15 - v11;
  v13 = *v3;
  v15[1] = a1 | 0x8000000000000000;
  v15[2] = a2;
  v15[3] = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930AF0, &qword_25853B4D0);
  sub_2585337EC();
  return (*(v8 + 8))(v12, v7);
}

uint64_t sub_2584CAD28(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930AE8, &qword_25853B4C8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v11 - v7;
  v9 = *v1;
  v11[2] = 0;
  v11[3] = 0;
  v11[1] = a1 | 0xC000000000000000;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930AF0, &qword_25853B4D0);
  sub_2585337EC();
  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_2584CAE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930B00, &qword_25853B4F8);
  v5[11] = v6;
  v7 = *(v6 - 8);
  v5[12] = v7;
  v8 = *(v7 + 64) + 15;
  v5[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584CAF0C, 0, 0);
}

uint64_t sub_2584CAF0C()
{
  v1 = v0[13];
  v2 = v0[9];
  v3 = v0[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930AF8, &unk_25853B4D8);
  sub_2585336FC();
  swift_beginAccess();
  v4 = *(MEMORY[0x277D858B8] + 4);
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_2584CAFF8;
  v6 = v0[13];
  v7 = v0[11];

  return MEMORY[0x2822005A8](v0 + 5, 0, 0, v7, v0 + 8);
}

uint64_t sub_2584CAFF8()
{
  v2 = *(*v1 + 112);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_2584CB9D0;
  }

  else
  {
    v3 = sub_2584CB108;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2584CB108()
{
  v2 = v0[5];
  v1 = v0[6];
  v0[15] = v2;
  v0[16] = v1;
  v0[17] = v0[7];
  if ((~v2 & 0xF000000000000007) == 0)
  {
    (*(v0[12] + 8))(v0[13], v0[11]);
LABEL_9:
    v5 = v0[13];

    v6 = v0[1];

    return v6();
  }

  if ((sub_25853376C() & 1) != 0 || (v3 = v0[10], Strong = swift_weakLoadStrong(), (v0[18] = Strong) == 0))
  {
    (*(v0[12] + 8))(v0[13], v0[11]);
    sub_2584D119C(v2);
    goto LABEL_9;
  }

  return MEMORY[0x2822009F8](sub_2584CB22C, Strong, 0);
}

uint64_t sub_2584CB22C()
{
  v1 = v0[15];
  v2 = v1 >> 62;
  if ((v1 >> 62) > 1)
  {
    if (v2 == 2)
    {
      v6 = swift_task_alloc();
      v0[21] = v6;
      *v6 = v0;
      v7 = sub_2584CB528;
    }

    else
    {
      v6 = swift_task_alloc();
      v0[23] = v6;
      *v6 = v0;
      v7 = sub_2584CB654;
    }

    v6[1] = v7;
    v11 = v0[18];

    return sub_2584CCA5C(v1 & 0x3FFFFFFFFFFFFFFFLL);
  }

  else if (v2)
  {
    v9 = v0[17];
    v8 = v0[18];
    v10 = v0[16];
    sub_2584CC638(v1 & 0x3FFFFFFFFFFFFFFFLL);
    v10(1, 0);

    return MEMORY[0x2822009F8](sub_2584CB7F4, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v0[19] = v3;
    *v3 = v0;
    v3[1] = sub_2584CB3FC;
    v4 = v0[18];

    return sub_2584CBA50(v1);
  }
}

uint64_t sub_2584CB3FC()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = *(v2 + 144);
  if (v0)
  {
    v6 = sub_2584CB75C;
  }

  else
  {
    v6 = sub_2584D1708;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2584CB528()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 144);
  if (v0)
  {
    v6 = sub_2584CB938;
  }

  else
  {
    v6 = sub_2584CB8C4;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2584CB654()
{
  v2 = *(*v1 + 184);
  v4 = *v1;

  if (v0)
  {
  }

  return MEMORY[0x2822009F8](sub_2584CB7F4, 0, 0);
}

uint64_t sub_2584CB75C()
{
  v1 = v0[20];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v1;
  v3(0, v1);

  return MEMORY[0x2822009F8](sub_2584CB7F4, 0, 0);
}

uint64_t sub_2584CB7F4()
{
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];

  sub_2584D119C(v4);
  v5 = *(MEMORY[0x277D858B8] + 4);
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_2584CAFF8;
  v7 = v0[13];
  v8 = v0[11];

  return MEMORY[0x2822005A8](v0 + 5, 0, 0, v8, v0 + 8);
}

uint64_t sub_2584CB8C4()
{
  v1 = *(v0 + 136);
  (*(v0 + 128))(1, 0);

  return MEMORY[0x2822009F8](sub_2584CB7F4, 0, 0);
}

uint64_t sub_2584CB938()
{
  v1 = v0[22];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v1;
  v3(0, v1);

  return MEMORY[0x2822009F8](sub_2584CB7F4, 0, 0);
}

uint64_t sub_2584CB9D0()
{
  (*(v0[12] + 8))(v0[13], v0[11]);
  v1 = v0[8];

  v2 = v0[1];

  return v2();
}

uint64_t sub_2584CBA50(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_2584CBA70, v1, 0);
}

uint64_t sub_2584CBA70()
{
  v31 = v0;
  if (qword_27F92F900 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_258532A4C();
  v0[7] = __swift_project_value_buffer(v2, qword_27F93D050);

  v3 = sub_258532A2C();
  v4 = sub_2585338EC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[5];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v29 = v7;
    *v6 = 136315138;
    sub_258533B8C();

    strcpy(v30, "CoexSession=[");
    HIWORD(v30[1]) = -4864;
    sub_2585329BC();
    sub_2584D1630(&qword_27F92FE48, MEMORY[0x277CC95F0]);
    v8 = sub_258533DFC();
    MEMORY[0x259C81500](v8);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v9 = sub_2584713B0(v30[0], v30[1], &v29);

    *(v6 + 4) = v9;
    _os_log_impl(&dword_25845E000, v3, v4, "%s Coex session starting ...", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x259C82900](v7, -1, -1);
    MEMORY[0x259C82900](v6, -1, -1);
  }

  v10 = v0[6];
  v11 = sub_2584CD468(v0[5]);
  v0[8] = v11;
  if (v11 >> 62)
  {
    result = sub_258533ACC();
    v0[9] = result;
    if (result)
    {
LABEL_11:
      if (result < 1)
      {
        __break(1u);
      }

      else
      {
        v0[10] = 0;
        v13 = v0[8];
        if ((v13 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x259C81BF0](0);
        }

        else
        {
          v14 = *(v13 + 32);
        }

        v0[11] = v14;
        v15 = swift_task_alloc();
        v0[12] = v15;
        *v15 = v0;
        v15[1] = sub_2584CC1E4;

        return sub_2584C8240();
      }

      return result;
    }
  }

  else
  {
    result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[9] = result;
    if (result)
    {
      goto LABEL_11;
    }
  }

  v17 = v0[7];
  v16 = v0[8];
  v19 = v0[5];
  v18 = v0[6];

  *(v19 + OBJC_IVAR____TtC18MediaContinuityKit11CoexSession_state) = 1;
  swift_beginAccess();

  sub_2584CED10(v30, v19);
  swift_endAccess();

  v20 = sub_258532A2C();
  v21 = sub_2585338EC();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = v0[5];
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v29 = v24;
    v30[0] = 0;
    *v23 = 136315138;
    v30[1] = 0xE000000000000000;
    sub_258533B8C();

    strcpy(v30, "CoexSession=[");
    HIWORD(v30[1]) = -4864;
    sub_2585329BC();
    sub_2584D1630(&qword_27F92FE48, MEMORY[0x277CC95F0]);
    v25 = sub_258533DFC();
    MEMORY[0x259C81500](v25);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v26 = sub_2584713B0(v30[0], v30[1], &v29);

    *(v23 + 4) = v26;
    _os_log_impl(&dword_25845E000, v20, v21, "%s Coex session started", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x259C82900](v24, -1, -1);
    MEMORY[0x259C82900](v23, -1, -1);
  }

  v27 = v0[6];
  sub_2584CE3C4();
  v28 = v0[1];

  return v28();
}

uint64_t sub_2584CC1E4()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2584CC2F4, v2, 0);
}

uint64_t sub_2584CC2F4()
{
  v23 = v0;
  v1 = v0[9];
  v2 = v0[10] + 1;
  *(v0[11] + OBJC_IVAR____TtC18MediaContinuityKit11CoexSession_state) = 2;

  if (v2 == v1)
  {
    v4 = v0[7];
    v3 = v0[8];
    v6 = v0[5];
    v5 = v0[6];

    *(v6 + OBJC_IVAR____TtC18MediaContinuityKit11CoexSession_state) = 1;
    swift_beginAccess();

    sub_2584CED10(v22, v6);
    swift_endAccess();

    v7 = sub_258532A2C();
    v8 = sub_2585338EC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[5];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v21 = v11;
      v22[0] = 0;
      *v10 = 136315138;
      v22[1] = 0xE000000000000000;
      sub_258533B8C();

      strcpy(v22, "CoexSession=[");
      HIWORD(v22[1]) = -4864;
      sub_2585329BC();
      sub_2584D1630(&qword_27F92FE48, MEMORY[0x277CC95F0]);
      v12 = sub_258533DFC();
      MEMORY[0x259C81500](v12);

      MEMORY[0x259C81500](93, 0xE100000000000000);
      v13 = sub_2584713B0(v22[0], v22[1], &v21);

      *(v10 + 4) = v13;
      _os_log_impl(&dword_25845E000, v7, v8, "%s Coex session started", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x259C82900](v11, -1, -1);
      MEMORY[0x259C82900](v10, -1, -1);
    }

    v14 = v0[6];
    sub_2584CE3C4();
    v15 = v0[1];

    return v15();
  }

  else
  {
    v17 = v0[10] + 1;
    v0[10] = v17;
    v18 = v0[8];
    if ((v18 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x259C81BF0]();
    }

    else
    {
      v19 = *(v18 + 8 * v17 + 32);
    }

    v0[11] = v19;
    v20 = swift_task_alloc();
    v0[12] = v20;
    *v20 = v0;
    v20[1] = sub_2584CC1E4;

    return sub_2584C8240();
  }
}

uint64_t sub_2584CC638(uint64_t a1)
{
  if (qword_27F92F900 != -1)
  {
    swift_once();
  }

  v2 = sub_258532A4C();
  __swift_project_value_buffer(v2, qword_27F93D050);

  v3 = sub_258532A2C();
  v4 = sub_2585338EC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315138;
    sub_258533B8C();

    strcpy(v16, "CoexSession=[");
    HIWORD(v16[1]) = -4864;
    sub_2585329BC();
    sub_2584D1630(&qword_27F92FE48, MEMORY[0x277CC95F0]);
    v7 = sub_258533DFC();
    MEMORY[0x259C81500](v7);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v8 = sub_2584713B0(v16[0], v16[1], &v17);

    *(v5 + 4) = v8;
    _os_log_impl(&dword_25845E000, v3, v4, "%s Coex session start suspended ...", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x259C82900](v6, -1, -1);
    MEMORY[0x259C82900](v5, -1, -1);
  }

  swift_beginAccess();

  sub_2584CED10(&v17, a1);
  swift_endAccess();

  *(a1 + OBJC_IVAR____TtC18MediaContinuityKit11CoexSession_state) = 2;

  v9 = sub_258532A2C();
  v10 = sub_2585338EC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315138;
    sub_258533B8C();

    strcpy(v16, "CoexSession=[");
    HIWORD(v16[1]) = -4864;
    sub_2585329BC();
    sub_2584D1630(&qword_27F92FE48, MEMORY[0x277CC95F0]);
    v13 = sub_258533DFC();
    MEMORY[0x259C81500](v13);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v14 = sub_2584713B0(v16[0], v16[1], &v17);

    *(v11 + 4) = v14;
    _os_log_impl(&dword_25845E000, v9, v10, "%s Coex session started", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x259C82900](v12, -1, -1);
    MEMORY[0x259C82900](v11, -1, -1);
  }

  return sub_2584CE3C4();
}

uint64_t sub_2584CCA5C(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x2822009F8](sub_2584CCA7C, v1, 0);
}

uint64_t sub_2584CCA7C()
{
  v37 = v0;
  if (qword_27F92F900 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = sub_258532A4C();
  v0[10] = __swift_project_value_buffer(v2, qword_27F93D050);

  v3 = sub_258532A2C();
  v4 = sub_2585338EC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[8];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v35 = v7;
    *v6 = 136315138;
    sub_258533B8C();

    strcpy(v36, "CoexSession=[");
    HIWORD(v36[1]) = -4864;
    sub_2585329BC();
    sub_2584D1630(&qword_27F92FE48, MEMORY[0x277CC95F0]);
    v8 = sub_258533DFC();
    MEMORY[0x259C81500](v8);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v9 = sub_2584713B0(v36[0], v36[1], &v35);

    *(v6 + 4) = v9;
    _os_log_impl(&dword_25845E000, v3, v4, "%s Coex session stopping ...", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x259C82900](v7, -1, -1);
    MEMORY[0x259C82900](v6, -1, -1);
  }

  v10 = v0[8];
  v11 = v0[9];
  v12 = OBJC_IVAR____TtC18MediaContinuityKit18CoexSessionManager_coexSessions;
  swift_beginAccess();
  v13 = *(v11 + v12);

  LOBYTE(v10) = sub_2584CE824(v10, v13);

  if (v10)
  {
    v15 = v0[8];
    v14 = v0[9];
    *(v15 + OBJC_IVAR____TtC18MediaContinuityKit11CoexSession_state) = 0;
    swift_beginAccess();
    sub_2584D06A8();
    swift_endAccess();

    v16 = *(*(v15 + OBJC_IVAR____TtC18MediaContinuityKit11CoexSession_config) + OBJC_IVAR___MediaContinuityCoexSessionConfig_remoteDeviceID + 8);

    v17 = sub_2584D12D8();
    v0[11] = v17;

    if (v17 >> 62)
    {
      result = sub_258533ACC();
      v0[12] = result;
      if (result)
      {
LABEL_8:
        if (result < 1)
        {
          __break(1u);
        }

        else
        {
          v0[13] = 0;
          v19 = v0[11];
          if ((v19 & 0xC000000000000001) != 0)
          {
            v20 = MEMORY[0x259C81BF0](0);
          }

          else
          {
            v20 = *(v19 + 32);
          }

          v0[14] = v20;
          v23 = swift_task_alloc();
          v0[15] = v23;
          *v23 = v0;
          v23[1] = sub_2584CD068;

          return sub_2584C882C();
        }

        return result;
      }
    }

    else
    {
      result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v0[12] = result;
      if (result)
      {
        goto LABEL_8;
      }
    }

    v25 = v0[10];
    v24 = v0[11];
    v26 = v0[8];

    v27 = sub_258532A2C();
    v28 = sub_2585338EC();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = v0[8];
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v35 = v31;
      v36[0] = 0;
      *v30 = 136315138;
      v36[1] = 0xE000000000000000;
      sub_258533B8C();

      strcpy(v36, "CoexSession=[");
      HIWORD(v36[1]) = -4864;
      sub_2585329BC();
      sub_2584D1630(&qword_27F92FE48, MEMORY[0x277CC95F0]);
      v32 = sub_258533DFC();
      MEMORY[0x259C81500](v32);

      MEMORY[0x259C81500](93, 0xE100000000000000);
      v33 = sub_2584713B0(v36[0], v36[1], &v35);

      *(v30 + 4) = v33;
      _os_log_impl(&dword_25845E000, v27, v28, "%s Coex session stopped", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x259C82900](v31, -1, -1);
      MEMORY[0x259C82900](v30, -1, -1);
    }

    v34 = v0[9];
    sub_2584CE3C4();
    v22 = v0[1];
  }

  else
  {
    sub_2584D1284();
    swift_allocError();
    *v21 = 1;
    swift_willThrow();
    v22 = v0[1];
  }

  return v22();
}

uint64_t sub_2584CD068()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2584CD178, v2, 0);
}

uint64_t sub_2584CD178()
{
  v22 = v0;
  v1 = v0[12];
  v2 = v0[13] + 1;
  *(v0[14] + OBJC_IVAR____TtC18MediaContinuityKit11CoexSession_state) = 1;

  if (v2 == v1)
  {
    v4 = v0[10];
    v3 = v0[11];
    v5 = v0[8];

    v6 = sub_258532A2C();
    v7 = sub_2585338EC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = v0[8];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v20 = v10;
      *v9 = 136315138;
      sub_258533B8C();

      strcpy(v21, "CoexSession=[");
      HIWORD(v21[1]) = -4864;
      sub_2585329BC();
      sub_2584D1630(&qword_27F92FE48, MEMORY[0x277CC95F0]);
      v11 = sub_258533DFC();
      MEMORY[0x259C81500](v11);

      MEMORY[0x259C81500](93, 0xE100000000000000);
      v12 = sub_2584713B0(v21[0], v21[1], &v20);

      *(v9 + 4) = v12;
      _os_log_impl(&dword_25845E000, v6, v7, "%s Coex session stopped", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x259C82900](v10, -1, -1);
      MEMORY[0x259C82900](v9, -1, -1);
    }

    v13 = v0[9];
    sub_2584CE3C4();
    v14 = v0[1];

    return v14();
  }

  else
  {
    v16 = v0[13] + 1;
    v0[13] = v16;
    v17 = v0[11];
    if ((v17 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x259C81BF0]();
    }

    else
    {
      v18 = *(v17 + 8 * v16 + 32);
    }

    v0[14] = v18;
    v19 = swift_task_alloc();
    v0[15] = v19;
    *v19 = v0;
    v19[1] = sub_2584CD068;

    return sub_2584C882C();
  }
}

NSObject *sub_2584CD468(uint64_t a1)
{
  v145[12] = *MEMORY[0x277D85DE8];
  v4 = sub_2585329BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v134 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = MEMORY[0x277D84F90];
  v10 = OBJC_IVAR____TtC18MediaContinuityKit18CoexSessionManager_coexSessions;
  swift_beginAccess();
  v11 = *(&v1->isa + v10);

  v12 = sub_2584CE824(a1, v11);

  if (v12)
  {
    sub_2584D1284();
    swift_allocError();
    *v13 = 0;
LABEL_10:
    swift_willThrow();
    goto LABEL_176;
  }

  if (*(a1 + OBJC_IVAR____TtC18MediaContinuityKit11CoexSession_state))
  {
    v14 = sub_258533E2C();

    if ((v14 & 1) == 0)
    {
      sub_2584D1284();
      swift_allocError();
      *v20 = 2;
      goto LABEL_10;
    }
  }

  else
  {
  }

  v135 = v5;
  v138 = a1;
  v15 = *(&v1->isa + v10);
  v134 = v9;
  v139 = v2;
  if ((v15 & 0xC000000000000001) != 0)
  {

    sub_258533ABC();
    v1 = type metadata accessor for CoexSession();
    sub_2584D1630(&qword_27F930B10, type metadata accessor for CoexSession);
    sub_25853389C();
    v15 = v145[7];
    v16 = v145[8];
    v17 = v145[9];
    v18 = v145[10];
    v19 = v145[11];
  }

  else
  {
    v21 = -1 << *(v15 + 32);
    v16 = v15 + 56;
    v17 = ~v21;
    v22 = -v21;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v19 = v23 & *(v15 + 56);

    v18 = 0;
  }

  v136 = v4;
  v140 = v17;
  v24 = (v17 + 64) >> 6;
  v141 = MEMORY[0x277D84F90];
  v137 = &v144;
  v142 = v15;
LABEL_16:
  v25 = v18;
  v26 = v19;
  if ((v15 & 0x8000000000000000) == 0)
  {
    do
    {
      v29 = v25;
      v30 = v26;
      v18 = v25;
      if (!v26)
      {
        while (1)
        {
          v18 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            break;
          }

          if (v18 >= v24)
          {
            goto LABEL_174;
          }

          v30 = *(v16 + 8 * v18);
          ++v29;
          if (v30)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
        goto LABEL_182;
      }

LABEL_24:
      v19 = (v30 - 1) & v30;
      v28 = *(*(v15 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v30)))));

      if (!v28)
      {
        goto LABEL_174;
      }

LABEL_25:
      if (*(v28 + OBJC_IVAR____TtC18MediaContinuityKit11CoexSession_state))
      {
        if (*(v28 + OBJC_IVAR____TtC18MediaContinuityKit11CoexSession_state) != 2)
        {

LABEL_33:
          v32 = OBJC_IVAR____TtC18MediaContinuityKit11CoexSession_config;
          v33 = *(v28 + OBJC_IVAR____TtC18MediaContinuityKit11CoexSession_config) + OBJC_IVAR___MediaContinuityCoexSessionConfig_usage;
          v35 = *v33;
          v34 = *(v33 + 8);
          v37 = *(v33 + 16);
          v36 = *(v33 + 24);
          v38 = *(v33 + 32);
          v39 = *(v138 + OBJC_IVAR____TtC18MediaContinuityKit11CoexSession_config);
          v40 = (v39 + OBJC_IVAR___MediaContinuityCoexSessionConfig_usage);
          v41 = *(v39 + OBJC_IVAR___MediaContinuityCoexSessionConfig_usage);
          v42 = *(v39 + OBJC_IVAR___MediaContinuityCoexSessionConfig_usage + 8);
          v44 = *(v39 + OBJC_IVAR___MediaContinuityCoexSessionConfig_usage + 16);
          v43 = *(v39 + OBJC_IVAR___MediaContinuityCoexSessionConfig_usage + 24);
          v45 = *(v39 + OBJC_IVAR___MediaContinuityCoexSessionConfig_usage + 32);
          if (*(v33 + 33) != 1)
          {
            if (*(v39 + OBJC_IVAR___MediaContinuityCoexSessionConfig_usage + 33))
            {
              if (v44 | v42 | v41 | v43)
              {
                v62 = 0;
              }

              else
              {
                v62 = v45 == 0;
              }

              if (v62)
              {
                goto LABEL_167;
              }

LABEL_94:
              *(v39 + OBJC_IVAR___MediaContinuityCoexSessionConfig_usage + 32);
              goto LABEL_167;
            }

            if (v38)
            {
              if ((v45 & 1) == 0)
              {
                goto LABEL_167;
              }
            }

            else
            {
              if (v45)
              {
                goto LABEL_167;
              }

              v69 = 0;
              v70 = v143;
              v143[0] = *v33;
              v143[1] = v34;
              v143[2] = v37;
              v143[3] = v36;
              v145[0] = v41;
              v145[1] = v42;
              v145[2] = v44;
              v145[3] = v43;
              while (1)
              {
                if (v70)
                {
                  if (v70 == v137)
                  {
                    v71 = 0;
                    v72 = 1;
                    v70 = v137;
                  }

                  else
                  {
                    v72 = 0;
                    isa_low = LOBYTE(v70->isa);
                    v70 = (v70 + 1);
                    v71 = isa_low;
                  }
                }

                else
                {
                  v71 = 0;
                  v72 = 1;
                }

                if (v69 == 32)
                {
                  break;
                }

                if (!v72)
                {
                  v74 = *(v145 + v69++);
                  if (v71 == v74)
                  {
                    continue;
                  }
                }

                goto LABEL_167;
              }

              if ((v72 & 1) == 0)
              {
                goto LABEL_167;
              }
            }

            goto LABEL_184;
          }

          v46 = v37 | v34;
          if (v46 | v35 | v36)
          {
            v47 = 0;
          }

          else
          {
            v47 = v38 == 0;
          }

          if (v47)
          {
            if (!*(v39 + OBJC_IVAR___MediaContinuityCoexSessionConfig_usage + 33))
            {
              goto LABEL_167;
            }

            if (v44 | v42 | v41 | v43)
            {
              v63 = 0;
            }

            else
            {
              v63 = v45 == 0;
            }

            if (!v63)
            {
              goto LABEL_94;
            }

            goto LABEL_184;
          }

          v48 = v46 | v36;
          if (*(v33 + 32))
          {
            v49 = 0;
          }

          else
          {
            v49 = v35 == 1;
          }

          if (v49 && v48 == 0)
          {
            if (!*(v39 + OBJC_IVAR___MediaContinuityCoexSessionConfig_usage + 33))
            {
              goto LABEL_167;
            }

            v64 = v44 | v42;
            if (!(v64 | v41 | v43) && v45 == 0)
            {
              goto LABEL_167;
            }

            v66 = v64 | v43;
            v67 = !*(v39 + OBJC_IVAR___MediaContinuityCoexSessionConfig_usage + 32) && v41 == 1;
            if (!v67 || v66 != 0)
            {
              goto LABEL_167;
            }

            goto LABEL_184;
          }

          if (*(v33 + 32))
          {
            v51 = 0;
          }

          else
          {
            v51 = v35 == 2;
          }

          if (v51 && v48 == 0)
          {
            if (!*(v39 + OBJC_IVAR___MediaContinuityCoexSessionConfig_usage + 33))
            {
              goto LABEL_167;
            }

            v75 = v44 | v42;
            if (!(v75 | v41 | v43) && v45 == 0)
            {
              goto LABEL_167;
            }

            v77 = v75 | v43;
            v78 = !*(v39 + OBJC_IVAR___MediaContinuityCoexSessionConfig_usage + 32) && v41 == 1;
            v79 = v78 && v77 == 0;
            v80 = !v79 && v45 == 0;
            v81 = v80 && v41 == 2;
            if (!v81 || v77 != 0)
            {
              goto LABEL_167;
            }

LABEL_184:

            if (*(v28 + OBJC_IVAR____TtC18MediaContinuityKit11CoexSession_pid) == *(v138 + OBJC_IVAR____TtC18MediaContinuityKit11CoexSession_pid) && ((v121 = (*(v28 + v32) + OBJC_IVAR___MediaContinuityCoexSessionConfig_remoteDeviceID), *v121 == *(v39 + OBJC_IVAR___MediaContinuityCoexSessionConfig_remoteDeviceID)) ? (v122 = v121[1] == *(v39 + OBJC_IVAR___MediaContinuityCoexSessionConfig_remoteDeviceID + 8)) : (v122 = 0), v122 || (sub_258533E2C() & 1) != 0))
            {

              v1 = MEMORY[0x277D84F90];
            }

            else
            {
              if (qword_27F92F900 != -1)
              {
                swift_once();
              }

              v123 = sub_258532A4C();
              __swift_project_value_buffer(v123, qword_27F93D050);

              v124 = sub_258532A2C();
              v125 = sub_2585338CC();

              if (os_log_type_enabled(v124, v125))
              {
                v126 = swift_slowAlloc();
                v141 = swift_slowAlloc();
                v145[0] = v141;
                *v126 = 136315394;
                v143[0] = 0;
                v143[1] = 0xE000000000000000;
                v139 = v124;
                sub_258533B8C();

                strcpy(v143, "CoexSession=[");
                HIWORD(v143[1]) = -4864;
                sub_2584D1630(&qword_27F92FE48, MEMORY[0x277CC95F0]);
                LODWORD(v137) = v125;
                v127 = sub_258533DFC();
                MEMORY[0x259C81500](v127);

                MEMORY[0x259C81500](93, 0xE100000000000000);
                v128 = sub_2584713B0(v143[0], v143[1], v145);

                *(v126 + 4) = v128;
                *(v126 + 12) = 2080;
                v143[0] = 0;
                v143[1] = 0xE000000000000000;

                sub_258533B8C();

                strcpy(v143, "CoexSession=[");
                HIWORD(v143[1]) = -4864;
                v129 = sub_258533DFC();
                MEMORY[0x259C81500](v129);

                MEMORY[0x259C81500](93, 0xE100000000000000);

                v130 = sub_2584713B0(v143[0], v143[1], v145);

                *(v126 + 14) = v130;
                v131 = v139;
                _os_log_impl(&dword_25845E000, v139, v137, "%s Coex session start blocked by session=%s", v126, 0x16u);
                v132 = v141;
                swift_arrayDestroy();
                MEMORY[0x259C82900](v132, -1, -1);
                MEMORY[0x259C82900](v126, -1, -1);
              }

              else
              {
              }

              v1 = v142;
              sub_2584D1284();
              swift_allocError();
              *v133 = 3;
              swift_willThrow();
            }

            goto LABEL_175;
          }

          if (*(v33 + 32))
          {
            v53 = 0;
          }

          else
          {
            v53 = v35 == 3;
          }

          if (v53 && v48 == 0)
          {
            if (*(v39 + OBJC_IVAR___MediaContinuityCoexSessionConfig_usage + 33))
            {
              v83 = v44 | v42;
              if (v83 | v41 | v43 || v45 != 0)
              {
                v85 = v83 | v43;
                v86 = !*(v39 + OBJC_IVAR___MediaContinuityCoexSessionConfig_usage + 32) && v41 == 1;
                if (!v86 || v85 != 0)
                {
                  if (*(v39 + OBJC_IVAR___MediaContinuityCoexSessionConfig_usage + 32) || (v41 == 2 ? (v88 = v85 == 0) : (v88 = 0), !v88))
                  {
                    if (!*(v39 + OBJC_IVAR___MediaContinuityCoexSessionConfig_usage + 32) && v41 == 3 && !v85)
                    {
                      goto LABEL_184;
                    }
                  }
                }
              }
            }
          }

          else if (*(v39 + OBJC_IVAR___MediaContinuityCoexSessionConfig_usage + 33))
          {
            v55 = v44 | v42;
            if (v55 | v41 | v43 || v45 != 0)
            {
              v57 = v55 | v43;
              v58 = !*(v39 + OBJC_IVAR___MediaContinuityCoexSessionConfig_usage + 32) && v41 == 1;
              if (!v58 || v57 != 0)
              {
                if (*(v39 + OBJC_IVAR___MediaContinuityCoexSessionConfig_usage + 32) || (v41 == 2 ? (v60 = v57 == 0) : (v60 = 0), !v60))
                {
                  if (*(v39 + OBJC_IVAR___MediaContinuityCoexSessionConfig_usage + 32))
                  {
                    goto LABEL_184;
                  }

                  if (v41 != 3 || v57 != 0)
                  {
                    goto LABEL_184;
                  }
                }
              }
            }
          }

LABEL_167:
          v89 = *(v40 + 33);
          if (v89 == 1)
          {
            v90 = *(v40 + 32);
            v92 = v40[2];
            v91 = v40[3];
            v94 = *v40;
            v93 = v40[1];
          }

          v15 = v142;
          if (*(v33 + 33) != 1 || (v95 = *(v33 + 32), v97 = *(v33 + 16), v96 = *(v33 + 24), v99 = *v33, v98 = *(v33 + 8), v89))
          {

            if (qword_27F92F900 != -1)
            {
              swift_once();
            }

            v104 = sub_258532A4C();
            __swift_project_value_buffer(v104, qword_27F93D050);

            v1 = sub_258532A2C();
            v105 = sub_2585338CC();

            if (os_log_type_enabled(v1, v105))
            {
              v106 = swift_slowAlloc();
              v141 = v106;
              v139 = swift_slowAlloc();
              v145[0] = v139;
              *v106 = 136315394;
              v143[0] = 0;
              v143[1] = 0xE000000000000000;
              v137 = v1;
              sub_258533B8C();

              strcpy(v143, "CoexSession=[");
              HIWORD(v143[1]) = -4864;
              sub_2584D1630(&qword_27F92FE48, MEMORY[0x277CC95F0]);
              v107 = v136;
              v108 = sub_258533DFC();
              MEMORY[0x259C81500](v108);

              MEMORY[0x259C81500](93, 0xE100000000000000);
              v109 = sub_2584713B0(v143[0], v143[1], v145);

              v110 = v141;
              *(v141 + 4) = v109;
              *(v110 + 12) = 2080;
              v111 = v135;
              v112 = v134;
              (*(v135 + 16))(v134, v28 + OBJC_IVAR____TtC18MediaContinuityKit11CoexSession_uuid, v107);
              v113 = sub_258533DFC();
              LODWORD(v138) = v105;
              v114 = v113;
              v116 = v115;
              (*(v111 + 8))(v112, v107);
              v117 = sub_2584713B0(v114, v116, v145);

              v118 = v141;
              *(v141 + 14) = v117;
              v119 = v137;
              _os_log_impl(&dword_25845E000, v137, v138, "%s Coex session start blocked by session=%s", v118, 0x16u);
              v1 = v139;
              swift_arrayDestroy();
              MEMORY[0x259C82900](v1, -1, -1);
              MEMORY[0x259C82900](v118, -1, -1);

LABEL_183:
              sub_2584D1284();
              swift_allocError();
              *v120 = 3;
              swift_willThrow();

              goto LABEL_175;
            }

LABEL_182:

            goto LABEL_183;
          }

          v1 = &v144;
          MEMORY[0x259C81600](v100);
          if (*((v144 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v144 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v101 = *((v144 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_2585335FC();
          }

          sub_25853361C();

          v141 = v144;
          goto LABEL_16;
        }

        v1 = 0xE900000000000064;
      }

      else
      {
        v1 = 0xE700000000000000;
      }

      v31 = sub_258533E2C();

      if (v31)
      {
        goto LABEL_33;
      }

      v25 = v18;
      v26 = v19;
      v15 = v142;
    }

    while ((v142 & 0x8000000000000000) == 0);
  }

  v27 = sub_258533AEC();
  if (v27)
  {
    v145[0] = v27;
    type metadata accessor for CoexSession();
    swift_dynamicCast();
    v28 = v143[0];
    v18 = v25;
    v19 = v26;
    if (v143[0])
    {
      goto LABEL_25;
    }
  }

LABEL_174:
  v1 = v141;
LABEL_175:
  sub_2584D127C();
LABEL_176:
  v102 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_2584CE3C4()
{
  v1 = v0;
  if (qword_27F92F900 != -1)
  {
LABEL_22:
    swift_once();
  }

  v2 = sub_258532A4C();
  __swift_project_value_buffer(v2, qword_27F93D050);

  v3 = sub_258532A2C();
  v4 = sub_2585338EC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    v6 = OBJC_IVAR____TtC18MediaContinuityKit18CoexSessionManager_coexSessions;
    swift_beginAccess();
    v7 = *(v1 + v6);
    if ((v7 & 0xC000000000000001) != 0)
    {

      v8 = sub_258533ACC();
    }

    else
    {
      v8 = *(v7 + 16);
    }

    *(v5 + 4) = v8;

    _os_log_impl(&dword_25845E000, v3, v4, "+ Session count: %ld", v5, 0xCu);
    MEMORY[0x259C82900](v5, -1, -1);
  }

  else
  {
  }

  v9 = OBJC_IVAR____TtC18MediaContinuityKit18CoexSessionManager_coexSessions;
  swift_beginAccess();
  v10 = *(v1 + v9);

  sub_2584C979C(v11, &v30);
  sub_2584C9888();
  if (v13)
  {
    v14 = v12;
    v1 = v13;
    do
    {

      v17 = sub_258532A2C();
      v18 = sub_2585338EC();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v29 = v20;
        *v19 = 134218498;
        if (__OFADD__(v14, 1))
        {
          __break(1u);
          goto LABEL_22;
        }

        v21 = v20;
        *(v19 + 4) = v14 + 1;
        *(v19 + 12) = 2080;

        sub_258533B8C();

        strcpy(v28, "CoexSession=[");
        HIWORD(v28[1]) = -4864;
        sub_2585329BC();
        sub_2584D1630(&qword_27F92FE48, MEMORY[0x277CC95F0]);
        v22 = sub_258533DFC();
        MEMORY[0x259C81500](v22);

        MEMORY[0x259C81500](93, 0xE100000000000000);

        v23 = sub_2584713B0(v28[0], v28[1], &v29);

        *(v19 + 14) = v23;
        *(v19 + 22) = 2080;
        if (*(v1 + OBJC_IVAR____TtC18MediaContinuityKit11CoexSession_state))
        {
          if (*(v1 + OBJC_IVAR____TtC18MediaContinuityKit11CoexSession_state) == 1)
          {
            v24 = 0xE700000000000000;
            v25 = 0x64657472617473;
          }

          else
          {
            v24 = 0xE900000000000064;
            v25 = 0x65646E6570737573;
          }
        }

        else
        {
          v24 = 0xE700000000000000;
          v25 = 0x646570706F7473;
        }

        v26 = sub_2584713B0(v25, v24, &v29);

        *(v19 + 24) = v26;
        _os_log_impl(&dword_25845E000, v17, v18, "+ %ld. %s state=%s", v19, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x259C82900](v21, -1, -1);
        MEMORY[0x259C82900](v19, -1, -1);
      }

      else
      {
      }

      sub_2584C9888();
      v14 = v15;
      v1 = v16;
    }

    while (v16);
  }

  return sub_2584D127C();
}

uint64_t sub_2584CE824(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v3 = sub_258533AFC();
  }

  else
  {
    if (!*(a2 + 16))
    {
      goto LABEL_9;
    }

    v4 = *(a2 + 40);
    sub_258533EEC();
    sub_2585329BC();
    sub_2584D1630(&qword_27F92FE58, MEMORY[0x277CC95F0]);
    sub_2585333BC();
    v5 = sub_258533F2C();
    v6 = -1 << *(a2 + 32);
    v7 = v5 & ~v6;
    if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
    {
      v8 = ~v6;
      do
      {
        v9 = *(*(a2 + 48) + 8 * v7);

        v3 = sub_25853296C();

        if (v3)
        {
          break;
        }

        v7 = (v7 + 1) & v8;
      }

      while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
    }

    else
    {
LABEL_9:
      v3 = 0;
    }
  }

  return v3 & 1;
}

uint64_t sub_2584CE9A4(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  do
  {
    if (a3)
    {
      if (a3 == a4)
      {
        v4 = 0;
        v5 = 1;
        a3 = a4;
        if (!a1)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v5 = 0;
        v8 = *a3++;
        v4 = v8;
        if (!a1)
        {
LABEL_10:
          v6 = 0;
          v7 = 1;
          if (v5)
          {
            return v7;
          }

          goto LABEL_13;
        }
      }
    }

    else
    {
      v4 = 0;
      v5 = 1;
      if (!a1)
      {
        goto LABEL_10;
      }
    }

    if (a1 == a2)
    {
      v6 = 0;
      v7 = 1;
      a1 = a2;
      if (v5)
      {
        return v7;
      }
    }

    else
    {
      v7 = 0;
      v9 = *a1++;
      v6 = v9;
      if (v5)
      {
        return v7;
      }
    }

LABEL_13:
    if (v4 != v6)
    {
      LODWORD(v7) = 1;
    }
  }

  while (v7 != 1);
  return 0;
}

uint64_t sub_2584CEA30(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_258532D8C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_2584D1630(&qword_27F930B28, MEMORY[0x277CD8CF0]);
  v37 = a2;
  v14 = sub_2585333AC();
  v15 = v12 + 56;
  v35 = v12 + 56;
  v36 = v12;
  v16 = -1 << *(v12 + 32);
  v17 = v14 & ~v16;
  if ((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v32 = v3;
    v33 = a1;
    v34 = ~v16;
    v31 = v7;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    v22 = (v19 - 8);
    v30[1] = v19 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v23 = v18;
      v18(v11, *(v36 + 48) + v21 * v17, v6);
      sub_2584D1630(&qword_27F930B30, MEMORY[0x277CD8CF0]);
      v24 = sub_25853340C();
      v25 = *v22;
      (*v22)(v11, v6);
      if (v24)
      {
        break;
      }

      v17 = (v17 + 1) & v34;
      v18 = v23;
      if (((*(v35 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        v3 = v32;
        a1 = v33;
        v7 = v31;
        goto LABEL_7;
      }
    }

    v25(v37, v6);
    v23(v33, *(v36 + 48) + v21 * v17, v6);
    return 0;
  }

  else
  {
    v18 = *(v7 + 16);
LABEL_7:
    v26 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v37;
    v18(v11, v37, v6);
    v38 = *v3;
    sub_2584CF8FC(v11, v17, isUniquelyReferenced_nonNull_native);
    *v3 = v38;
    (*(v7 + 32))(a1, v28, v6);
    return 1;
  }
}

uint64_t sub_2584CED10(void *a1, uint64_t a2)
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

    v8 = sub_258533ADC();

    if (v8)
    {

      type metadata accessor for CoexSession();
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
    }

    else
    {
      result = sub_258533ACC();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v20 = sub_2584CEFA8(v7, result + 1);
        v21 = *(v20 + 16);
        if (*(v20 + 24) <= v21)
        {
          sub_2584CF55C(v21 + 1);
        }

        sub_2584CF804(v22, v20);

        *v3 = v20;
        *a1 = a2;
        return 1;
      }
    }
  }

  else
  {
    v10 = *(v6 + 40);
    sub_258533EEC();
    sub_2585329BC();
    sub_2584D1630(&qword_27F92FE58, MEMORY[0x277CC95F0]);
    sub_2585333BC();
    v11 = sub_258533F2C();
    v12 = -1 << *(v6 + 32);
    v13 = v11 & ~v12;
    if ((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
    {
      v14 = ~v12;
      while (1)
      {
        v15 = *(*(v6 + 48) + 8 * v13);

        v16 = sub_25853296C();

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

      *a1 = *(*(v6 + 48) + 8 * v13);

      return 0;
    }

    else
    {
LABEL_11:
      v17 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = *v3;

      sub_2584CFBA0(v19, v13, isUniquelyReferenced_nonNull_native);
      *v3 = v25;
      *a1 = a2;
      return 1;
    }
  }

  return result;
}

uint64_t sub_2584CEFA8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930B08, &qword_25853B518);
    v2 = sub_258533B5C();
    v16 = v2;
    sub_258533ABC();
    if (sub_258533AEC())
    {
      type metadata accessor for CoexSession();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_2584CF55C(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        sub_258533EEC();
        sub_2585329BC();
        sub_2584D1630(&qword_27F92FE58, MEMORY[0x277CC95F0]);
        sub_2585333BC();
        result = sub_258533F2C();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_258533AEC());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_2584CF200(uint64_t a1)
{
  v2 = v1;
  v42 = sub_258532D8C();
  v4 = *(v42 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v42, v6);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930B38, &qword_25853B528);
  result = sub_258533B4C();
  v11 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v37 = v8;
    v12 = 0;
    v13 = (v8 + 56);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v40 = v4 + 4;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48) + v4[9] * (v20 | (v12 << 6));
      v24 = v4[4];
      v38 = v4[9];
      v39 = v24;
      v24(v41, v23, v42);
      v25 = v11;
      v26 = *(v11 + 40);
      sub_2584D1630(&qword_27F930B28, MEMORY[0x277CD8CF0]);
      result = sub_2585333AC();
      v11 = v25;
      v27 = -1 << *(v25 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = v39(*(v25 + 48) + v19 * v38, v41, v42);
      ++*(v25 + 16);
      v8 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v8 + 32);
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    v2 = v36;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_2584CF55C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930B08, &qword_25853B518);
  result = sub_258533B4C();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
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
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_258533EEC();
      sub_2585329BC();
      sub_2584D1630(&qword_27F92FE58, MEMORY[0x277CC95F0]);
      sub_2585333BC();
      result = sub_258533F2C();
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
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
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

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_2584CF804(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_258533EEC();
  sub_2585329BC();
  sub_2584D1630(&qword_27F92FE58, MEMORY[0x277CC95F0]);
  sub_2585333BC();
  sub_258533F2C();
  v5 = -1 << *(a2 + 32);
  result = sub_258533AAC();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_2584CF8FC(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = sub_258532D8C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2584CF200(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_2584CFD7C();
      goto LABEL_12;
    }

    sub_2584D0104(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  sub_2584D1630(&qword_27F930B28, MEMORY[0x277CD8CF0]);
  v16 = sub_2585333AC();
  v17 = v14 + 56;
  v33 = v14;
  v18 = -1 << *(v14 + 32);
  a2 = v16 & ~v18;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v22 = *(v7 + 16);
    v21 = v7 + 16;
    v20 = v22;
    v23 = *(v21 + 56);
    do
    {
      v20(v11, *(v33 + 48) + v23 * a2, v6);
      sub_2584D1630(&qword_27F930B30, MEMORY[0x277CD8CF0]);
      v24 = sub_25853340C();
      (*(v21 - 8))(v11, v6);
      if (v24)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_258533E4C();
  __break(1u);
  return result;
}

uint64_t sub_2584CFBA0(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2584CF55C(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_2584CFFB4();
      goto LABEL_12;
    }

    sub_2584D0420(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_258533EEC();
  sub_2585329BC();
  sub_2584D1630(&qword_27F92FE58, MEMORY[0x277CC95F0]);
  sub_2585333BC();
  result = sub_258533F2C();
  v11 = -1 << *(v9 + 32);
  a2 = result & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for CoexSession();
    do
    {
      v13 = *(*(v9 + 48) + 8 * a2);

      v14 = sub_25853296C();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = v6;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_258533E4C();
  __break(1u);
  return result;
}

void *sub_2584CFD7C()
{
  v1 = v0;
  v2 = sub_258532D8C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930B38, &qword_25853B528);
  v8 = *v0;
  v9 = sub_258533B3C();
  v10 = v9;
  if (*(v8 + 16))
  {
    v24 = v1;
    result = (v9 + 56);
    v12 = v8 + 56;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v12 + 8 * v13)
    {
      result = memmove(result, (v8 + 56), 8 * v13);
    }

    v14 = 0;
    *(v10 + 16) = *(v8 + 16);
    v15 = 1 << *(v8 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v8 + 56);
    v18 = (v15 + 63) >> 6;
    v25 = v3 + 32;
    for (i = v3 + 16; v17; result = (*(v3 + 32))(*(v10 + 48) + v22, v7, v2))
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_14:
      v22 = *(v3 + 72) * (v19 | (v14 << 6));
      (*(v3 + 16))(v7, *(v8 + 48) + v22, v2);
    }

    v20 = v14;
    while (1)
    {
      v14 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v14 >= v18)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v21 = *(v12 + 8 * v14);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v10;
  }

  return result;
}

void *sub_2584CFFB4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930B08, &qword_25853B518);
  v2 = *v0;
  v3 = sub_258533B3C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_2584D0104(uint64_t a1)
{
  v2 = v1;
  v38 = sub_258532D8C();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v38, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930B38, &qword_25853B528);
  v11 = sub_258533B4C();
  result = v9;
  if (*(v9 + 16))
  {
    v33 = v2;
    v13 = 0;
    v14 = v9 + 56;
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 56);
    v18 = (v15 + 63) >> 6;
    v36 = v4 + 16;
    v37 = v4;
    v19 = v11 + 56;
    v34 = (v4 + 32);
    v35 = result;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = *(v37 + 72);
      (*(v37 + 16))(v8, *(result + 48) + v24 * (v21 | (v13 << 6)), v38);
      v25 = *(v11 + 40);
      sub_2584D1630(&qword_27F930B28, MEMORY[0x277CD8CF0]);
      result = sub_2585333AC();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v19 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v19 + 8 * v28);
          if (v32 != -1)
          {
            v20 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v20 = __clz(__rbit64((-1 << v27) & ~*(v19 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v34)(*(v11 + 48) + v20 * v24, v8, v38);
      ++*(v11 + 16);
      result = v35;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v2 = v33;
        goto LABEL_28;
      }

      v23 = *(v14 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_2584D0420(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930B08, &qword_25853B518);
  result = sub_258533B4C();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v28 = v3;
    v7 = 0;
    v8 = v3 + 56;
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
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_258533EEC();
      sub_2585329BC();
      sub_2584D1630(&qword_27F92FE58, MEMORY[0x277CC95F0]);

      sub_2585333BC();
      result = sub_258533F2C();
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
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v28;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v27;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_2584D06A8()
{
  v1 = *v0;
  if ((*v0 & 0xC000000000000001) != 0)
  {
    if (v1 < 0)
    {
      v2 = *v0;
    }

    v3 = *v0;

    v4 = sub_258533AFC();

    if (v4)
    {
      v5 = sub_2584D089C();

      return v5;
    }

    return 0;
  }

  v18 = v0;
  v7 = *(v1 + 40);
  sub_258533EEC();
  sub_2585329BC();
  sub_2584D1630(&qword_27F92FE58, MEMORY[0x277CC95F0]);
  sub_2585333BC();
  v8 = sub_258533F2C();
  v9 = -1 << *(v1 + 32);
  v10 = v8 & ~v9;
  if (((*(v1 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  while (1)
  {
    v12 = *(*(v1 + 48) + 8 * v10);

    v13 = sub_25853296C();

    if (v13)
    {
      break;
    }

    v10 = (v10 + 1) & v11;
    if (((*(v1 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v18;
  v19 = *v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2584CFFB4();
    v16 = v19;
  }

  v17 = *(*(v16 + 48) + 8 * v10);
  sub_2584D0A60(v10);
  result = v17;
  *v18 = v19;
  return result;
}

uint64_t sub_2584D089C()
{
  v1 = v0;
  v2 = *v0;

  v3 = sub_258533ACC();
  v4 = swift_unknownObjectRetain();
  v5 = sub_2584CEFA8(v4, v3);
  v15 = v5;
  v6 = *(v5 + 40);
  sub_258533EEC();
  sub_2585329BC();
  sub_2584D1630(&qword_27F92FE58, MEMORY[0x277CC95F0]);

  sub_2585333BC();
  v7 = sub_258533F2C();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);

      v12 = sub_25853296C();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_2584D0A60(v9);
  result = sub_25853296C();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2584D0A60(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_258533A9C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        sub_258533EEC();
        sub_2585329BC();
        sub_2584D1630(&qword_27F92FE58, MEMORY[0x277CC95F0]);

        sub_2585333BC();
        v13 = sub_258533F2C();

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v14 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v14)
        {
LABEL_11:
          v15 = *(v3 + 48);
          v16 = (v15 + 8 * v2);
          v17 = (v15 + 8 * v6);
          if (v2 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_2584D0C7C(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_258533ACC();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930B08, &qword_25853B518);
      result = sub_258533B6C();
      v3 = result;
      v21 = v1;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_258533ACC();
      v4 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v21 = v1;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    return v3;
  }

LABEL_9:
  v5 = 0;
  v6 = v3 + 56;
  v20 = v4;
  while ((v21 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x259C81BF0](v5, v21);
    v7 = result;
    v8 = __OFADD__(v5++, 1);
    if (v8)
    {
      goto LABEL_25;
    }

LABEL_17:
    v9 = *(v3 + 40);
    sub_258533EEC();
    sub_2585329BC();
    sub_2584D1630(&qword_27F92FE58, MEMORY[0x277CC95F0]);
    sub_2585333BC();
    result = sub_258533F2C();
    v10 = -1 << *(v3 + 32);
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *(v6 + 8 * (v11 >> 6));
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      while (1)
      {
        v16 = *(*(v3 + 48) + 8 * v11);

        v17 = sub_25853296C();

        if (v17)
        {
          break;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v6 + 8 * (v11 >> 6));
        v14 = 1 << v11;
        if (((1 << v11) & v13) == 0)
        {
          v4 = v20;
          goto LABEL_22;
        }
      }

      v4 = v20;
      if (v5 == v20)
      {
        return v3;
      }
    }

    else
    {
LABEL_22:
      *(v6 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v7;
      v18 = *(v3 + 16);
      v8 = __OFADD__(v18, 1);
      v19 = v18 + 1;
      if (v8)
      {
        goto LABEL_26;
      }

      *(v3 + 16) = v19;
      if (v5 == v4)
      {
        return v3;
      }
    }
  }

  if (v5 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_27;
  }

  v7 = *(v21 + 32 + 8 * v5);

  v8 = __OFADD__(v5++, 1);
  if (!v8)
  {
    goto LABEL_17;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2584D0F08()
{
  v0 = sub_258533CEC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2584D0F54()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2584D0F8C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930AF8, &unk_25853B4D8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2584D1070(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930AF8, &unk_25853B4D8) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_258464F5C;

  return sub_2584CAE40(a1, v6, v7, v1 + v5, v8);
}

unint64_t sub_2584D119C(unint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
    return sub_2584D11B0(a1);
  }

  return a1;
}

uint64_t sub_2584D11B0(unint64_t a1)
{
  if ((a1 >> 62) <= 2)
  {
  }
}

uint64_t sub_2584D1214(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FBC0, &qword_258537930);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2584D1284()
{
  result = qword_27F930B18;
  if (!qword_27F930B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930B18);
  }

  return result;
}

uint64_t sub_2584D12D8()
{
  v22 = MEMORY[0x277D84F90];
  v1 = OBJC_IVAR____TtC18MediaContinuityKit18CoexSessionManager_coexSessions;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if ((v2 & 0xC000000000000001) != 0)
  {

    sub_258533ABC();
    type metadata accessor for CoexSession();
    sub_2584D1630(&qword_27F930B10, type metadata accessor for CoexSession);
    result = sub_25853389C();
    v2 = v23;
    v4 = v24;
    v5 = v25;
    v6 = v26;
    v7 = v27;
  }

  else
  {
    v8 = -1 << *(v2 + 32);
    v4 = v2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v2 + 56);

    v6 = 0;
  }

  v11 = MEMORY[0x277D84F90];
  v20 = v2;
  if (v2 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v12 = v6;
  v13 = v7;
  v14 = v6;
  if (v7)
  {
LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v2 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));

    if (v16)
    {
      while (!*(v16 + OBJC_IVAR____TtC18MediaContinuityKit11CoexSession_state) || *(v16 + OBJC_IVAR____TtC18MediaContinuityKit11CoexSession_state) == 2)
      {
        v17 = sub_258533E2C();

        if (v17)
        {

          v11 = MEMORY[0x277D84F90];
          goto LABEL_23;
        }

        MEMORY[0x259C81600](v18);
        if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v19 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_2585335FC();
        }

        sub_25853361C();

        v11 = v22;
        v6 = v14;
        v7 = v15;
        v2 = v20;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (sub_258533AEC())
        {
          type metadata accessor for CoexSession();
          swift_dynamicCast();
          v16 = v21;
          v14 = v6;
          v15 = v7;
          if (v21)
          {
            continue;
          }
        }

        goto LABEL_23;
      }

      v11 = MEMORY[0x277D84F90];
    }

LABEL_23:
    sub_2584D127C();
    return v11;
  }

  else
  {
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= ((v5 + 64) >> 6))
      {
        goto LABEL_23;
      }

      v13 = *(v4 + 8 * v14);
      ++v12;
      if (v13)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2584D1630(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2584D1688(uint64_t a1)
{
  result = sub_2584D1284();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2584D16B4()
{
  result = qword_27F930B40;
  if (!qword_27F930B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930B40);
  }

  return result;
}

uint64_t sub_2584D170C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id sub_2584D1794()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoexSessionXPCServerProxy();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2584D18B8(char *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = *&a1[OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_delegate];
  v16[4] = a5;
  v16[5] = v12;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_2584D170C;
  v16[3] = a6;
  v14 = _Block_copy(v16);
  v15 = a1;

  [v13 *a7];

  _Block_release(v14);
}

uint64_t sub_2584D19BC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v32 = a3;
  v33 = a4;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930AE8, &qword_25853B4C8);
  v8 = *(v34 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v34, v10);
  v12 = &v32 - v11;
  v13 = sub_2585329BC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *__swift_project_boxed_opaque_existential_1(&v4[OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_daemonTransaction], *&v4[OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_daemonTransaction + 24]);
  sub_2584D672C();
  (*(v14 + 16))(v18, a1, v13);
  LODWORD(v19) = *&v5[OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_processIdentifier];
  v20 = type metadata accessor for CoexSession();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v23 + OBJC_IVAR____TtC18MediaContinuityKit11CoexSession_state) = 0;
  (*(v14 + 32))(v23 + OBJC_IVAR____TtC18MediaContinuityKit11CoexSession_uuid, v18, v13);
  *(v23 + OBJC_IVAR____TtC18MediaContinuityKit11CoexSession_config) = a2;
  swift_unknownObjectWeakAssign();
  *(v23 + OBJC_IVAR____TtC18MediaContinuityKit11CoexSession_pid) = v19;
  v24 = *&v5[OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_coexSession];
  *&v5[OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_coexSession] = v23;
  v25 = a2;

  v26 = __swift_project_boxed_opaque_existential_1(&v5[OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_coexManager], *&v5[OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_coexManager + 24]);
  v27 = swift_allocObject();
  v28 = v33;
  v27[2] = v32;
  v27[3] = v28;
  v27[4] = v5;
  v29 = *v26;
  v35 = v23;
  v36 = sub_2584D26CC;
  v37 = v27;

  v30 = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930AF0, &qword_25853B4D0);
  sub_2585337EC();

  return (*(v8 + 8))(v12, v34);
}

void sub_2584D1D08(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_2585328AC();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t sub_2584D1D78(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v32 = a3;
  v33 = a4;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930AE8, &qword_25853B4C8);
  v8 = *(v34 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v34, v10);
  v12 = &v32 - v11;
  v13 = sub_2585329BC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *__swift_project_boxed_opaque_existential_1(&v4[OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_daemonTransaction], *&v4[OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_daemonTransaction + 24]);
  sub_2584D672C();
  (*(v14 + 16))(v18, a1, v13);
  LODWORD(v19) = *&v5[OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_processIdentifier];
  v20 = type metadata accessor for CoexSession();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v23 + OBJC_IVAR____TtC18MediaContinuityKit11CoexSession_state) = 0;
  (*(v14 + 32))(v23 + OBJC_IVAR____TtC18MediaContinuityKit11CoexSession_uuid, v18, v13);
  *(v23 + OBJC_IVAR____TtC18MediaContinuityKit11CoexSession_config) = a2;
  swift_unknownObjectWeakAssign();
  *(v23 + OBJC_IVAR____TtC18MediaContinuityKit11CoexSession_pid) = v19;
  v24 = *&v5[OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_coexSession];
  *&v5[OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_coexSession] = v23;
  v25 = a2;

  v26 = __swift_project_boxed_opaque_existential_1(&v5[OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_coexManager], *&v5[OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_coexManager + 24]);
  v27 = swift_allocObject();
  v28 = v33;
  v27[2] = v32;
  v27[3] = v28;
  v27[4] = v5;
  v29 = *v26;
  v35 = v23 | 0x4000000000000000;
  v36 = sub_2584D25A4;
  v37 = v27;

  v30 = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930AF0, &qword_25853B4D0);
  sub_2585337EC();

  return (*(v8 + 8))(v12, v34);
}

uint64_t sub_2584D20C8(void *a1, uint64_t a2, uint64_t a3, void *a4, const void *a5, uint64_t a6, uint64_t a7, void (*a8)(char *, id, uint64_t, uint64_t))
{
  v13 = sub_2585329BC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = _Block_copy(a5);
  sub_25853297C();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  v21 = a4;
  v22 = a1;
  a8(v18, v21, a7, v20);

  return (*(v14 + 8))(v18, v13);
}

uint64_t sub_2584D228C(char a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  result = a3();
  if ((a1 & 1) == 0)
  {
    v8 = __swift_project_boxed_opaque_existential_1((a5 + OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_daemonTransaction), *(a5 + OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_daemonTransaction + 24));
    v9 = *v8;
    v10 = *(*v8 + 16);
    *(v9 + 16) = 0;

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2584D2308(char *a1, void (**a2)(void, void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = *&a1[OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_coexSession];
  if (v5)
  {
    *&a1[OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_coexSession] = 0;
    __swift_project_boxed_opaque_existential_1(&a1[OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_coexManager], *&a1[OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_coexManager + 24]);
    v6 = swift_allocObject();
    v6[2] = sub_2584D24E4;
    v6[3] = v4;
    v6[4] = a1;
    v7 = off_28698ED90[0];
    _Block_copy(a2);
    type metadata accessor for CoexSessionManager();

    v8 = a1;
    v7(v5, sub_2584D2540, v6);
  }

  else
  {
    sub_2584D24EC();
    v9 = swift_allocError();
    _Block_copy(a2);
    v10 = sub_2585328AC();
    (a2)[2](a2, 0, v10);
  }
}

uint64_t sub_2584D24AC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_2584D24EC()
{
  result = qword_27F930B70;
  if (!qword_27F930B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930B70);
  }

  return result;
}

uint64_t sub_2584D2540()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  (*(v0 + 16))();
  v3 = __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_daemonTransaction), *(v2 + OBJC_IVAR____TtC18MediaContinuityKit25CoexSessionXPCServerProxy_daemonTransaction + 24));
  v4 = *v3;
  v5 = *(*v3 + 16);
  *(v4 + 16) = 0;

  return swift_unknownObjectRelease();
}

uint64_t objectdestroy_7Tm()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2584D2628(uint64_t a1)
{
  result = sub_2584D24EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2584D2654()
{
  result = qword_27F930B78;
  if (!qword_27F930B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930B78);
  }

  return result;
}

uint64_t sub_2584D26F8()
{
  sub_258467E20(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

id sub_2584D275C()
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (*(v0 + 24) != 1)
  {
    sub_2584D29F0();
    swift_allocError();
    *v5 = 1;
LABEL_6:
    result = swift_willThrow();
    goto LABEL_7;
  }

  v1 = *(v0 + 16);
  v2 = sub_25853291C();
  v8[0] = 0;
  v3 = [v1 setAnswer:v2 withError:v8];

  if (!v3)
  {
    v6 = v8[0];
    sub_2585328BC();

    goto LABEL_6;
  }

  result = v8[0];
LABEL_7:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_2584D2858()
{
  v9[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 16);
  v9[0] = 0;
  v2 = [v1 generateMediaStreamInitOptionsWithError_];
  v3 = v9[0];
  if (v2)
  {
    v4 = v2;
    v5 = sub_25853337C();
    v6 = v3;
  }

  else
  {
    v5 = v9[0];
    sub_2585328BC();

    swift_willThrow();
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

id sub_2584D2938()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 16);
  v7[0] = 0;
  v2 = [v1 generateMediaStreamConfigurationWithError_];
  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_2585328BC();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t sub_2584D29F0()
{
  result = qword_27F930B80;
  if (!qword_27F930B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930B80);
  }

  return result;
}

unint64_t sub_2584D2A54(uint64_t a1)
{
  result = sub_2584D29F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2584D2A80()
{
  result = qword_27F930B88;
  if (!qword_27F930B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930B88);
  }

  return result;
}

void sub_2584D2AD4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a2)
  {
    v6 = sub_2584F4738(a2);
  }

  else
  {
    v6 = 0;
  }

  v7 = type metadata accessor for AVConferenceBackedMediaStreamNegotiator();
  v8 = swift_allocObject();
  *(v8 + 24) = 1;
  v9 = objc_allocWithZone(MEMORY[0x277CE5708]);
  v10 = sub_2584D2CF4(a1, v6);
  if (v3)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v8 + 16) = v10;
    v11 = [v10 offer];
    v12 = sub_25853292C();
    v14 = v13;

    *(v8 + 32) = v12;
    *(v8 + 40) = v14;
    a3[3] = v7;
    a3[4] = &off_28698F0E0;
    *a3 = v8;
  }
}

id sub_2584D2BD8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (a3)
  {
    v8 = sub_2584F4738(a3);
  }

  else
  {
    v8 = 0;
  }

  v9 = type metadata accessor for AVConferenceBackedMediaStreamNegotiator();
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;
  objc_allocWithZone(MEMORY[0x277CE5708]);
  sub_2584A7B8C(a1, a2);
  result = sub_2584D2E00(a1, a2, v8);
  if (v4)
  {
    sub_258467E20(a1, a2);
    return swift_deallocPartialClassInstance();
  }

  else
  {
    *(v10 + 16) = result;
    a4[3] = v9;
    a4[4] = &off_28698F0E0;
    *a4 = v10;
  }

  return result;
}

id sub_2584D2CF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v11[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5 = sub_25853336C();
  }

  else
  {
    v5 = 0;
  }

  v11[0] = 0;
  v6 = [v3 initWithMode:a1 options:v5 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_2585328BC();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

id sub_2584D2E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = sub_25853291C();
  if (a3)
  {
    v6 = sub_25853336C();
  }

  else
  {
    v6 = 0;
  }

  v12[0] = 0;
  v7 = [v3 initWithOffer:v5 options:v6 error:v12];

  if (v7)
  {
    v8 = v12[0];
  }

  else
  {
    v9 = v12[0];
    sub_2585328BC();

    swift_willThrow();
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

char *sub_2584D2F4C(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = [objc_allocWithZone(v3) init];
  v7 = objc_allocWithZone(MEMORY[0x277CE5730]);
  v8 = v6;
  v9 = [v7 initWithStreamToken:a1 delegate:v8];
  v10 = *&v8[OBJC_IVAR____TtC18MediaContinuityKit35AVConferenceBackedRemoteVideoClient_remoteVideoClient];
  *&v8[OBJC_IVAR____TtC18MediaContinuityKit35AVConferenceBackedRemoteVideoClient_remoteVideoClient] = v9;
  v11 = v9;

  if (v11)
  {
    [v11 setVideoLayer:a2 forMode:0];
  }

  else
  {
    sub_2584D3A58();
    swift_allocError();
    *v12 = 2;
    swift_willThrow();
  }

  return v8;
}

id sub_2584D3058()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930C58, &unk_25853B9A0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930C40, &qword_25853B990);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930C60, &unk_25853EB20);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v21 - v17;
  *&v0[OBJC_IVAR____TtC18MediaContinuityKit35AVConferenceBackedRemoteVideoClient_remoteVideoClient] = 0;
  v0[OBJC_IVAR____TtC18MediaContinuityKit35AVConferenceBackedRemoteVideoClient_isValid] = 1;
  (*(v2 + 104))(v6, *MEMORY[0x277D858A0], v1);
  sub_2585337BC();
  (*(v2 + 8))(v6, v1);
  (*(v14 + 32))(&v0[OBJC_IVAR____TtC18MediaContinuityKit35AVConferenceBackedRemoteVideoClient_eventStream], v18, v13);
  (*(v8 + 32))(&v0[OBJC_IVAR____TtC18MediaContinuityKit35AVConferenceBackedRemoteVideoClient_eventStreamContinuation], v12, v7);
  v19 = type metadata accessor for AVConferenceBackedRemoteVideoClient();
  v21.receiver = v0;
  v21.super_class = v19;
  return objc_msgSendSuper2(&v21, sel_init);
}

id sub_2584D331C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AVConferenceBackedRemoteVideoClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AVConferenceBackedRemoteVideoClient()
{
  result = qword_27F930BB8;
  if (!qword_27F930BB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2584D347C()
{
  sub_2584D3590(319, &unk_27F930BC8, MEMORY[0x277D858D8]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_2584D3590(319, &qword_27F930BD8, MEMORY[0x277D858B0]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_2584D3590(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t, void))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9308C0, &qword_258537580);
    v7 = a3(a1, &type metadata for RemoteVideoClientEvent, v6, MEMORY[0x277D84950]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2584D360C()
{
  *(*v0 + OBJC_IVAR____TtC18MediaContinuityKit35AVConferenceBackedRemoteVideoClient_isValid) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930C40, &qword_25853B990);
  return sub_2585337FC();
}

uint64_t sub_2584D3680(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930C50, &qword_25853B998);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v14 = a4;
  v15 = 2;
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930C40, &qword_25853B990);
  sub_2585337EC();

  return (*(v7 + 8))(v11, v6);
}

uint64_t sub_2584D3838(void *a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930C50, &qword_25853B998);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v17 - v12;
  v17 = a4;
  v18 = a5;
  v14 = a4;
  v15 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930C40, &qword_25853B990);
  sub_2585337EC();

  return (*(v9 + 8))(v13, v8);
}

char *sub_2584D396C(uint64_t a1, uint64_t a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = objc_allocWithZone(MEMORY[0x277CE5730]);
  v7 = v5;
  v8 = [v6 initWithStreamToken:a1 endpointID:a2 delegate:v7];
  v9 = *&v7[OBJC_IVAR____TtC18MediaContinuityKit35AVConferenceBackedRemoteVideoClient_remoteVideoClient];
  *&v7[OBJC_IVAR____TtC18MediaContinuityKit35AVConferenceBackedRemoteVideoClient_remoteVideoClient] = v8;
  v10 = v8;

  if (v10)
  {
  }

  else
  {
    sub_2584D3A58();
    swift_allocError();
    *v11 = 2;
    swift_willThrow();
  }

  return v7;
}

unint64_t sub_2584D3A58()
{
  result = qword_27F930C48;
  if (!qword_27F930C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930C48);
  }

  return result;
}

unint64_t sub_2584D3ABC(uint64_t a1)
{
  result = sub_2584D3A58();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2584D3AE8()
{
  result = qword_27F930C68;
  if (!qword_27F930C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930C68);
  }

  return result;
}

char *sub_2584D3B60(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *&v1[OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedStreamInput_streamInput] = 0;
  v1[OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedStreamInput_isStarted] = 0;
  v19.receiver = v1;
  v19.super_class = type metadata accessor for AVConferenceBackedStreamInput();
  v3 = objc_msgSendSuper2(&v19, sel_init);
  v4 = qword_27F92F8E0;
  v5 = v3;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = sub_258532A4C();
  __swift_project_value_buffer(v6, qword_27F93CFF0);
  v7 = sub_258532A2C();
  v8 = sub_2585338EC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v5;
    *v10 = v5;
    v11 = v5;
    _os_log_impl(&dword_25845E000, v7, v8, "%@ Initializing stream input", v9, 0xCu);
    sub_2584D1214(v10);
    MEMORY[0x259C82900](v10, -1, -1);
    MEMORY[0x259C82900](v9, -1, -1);
  }

  v18 = 0;
  v12 = [objc_allocWithZone(MEMORY[0x277CE5748]) initWithDelegate:v5 delegateQueue:0 format:a1 options:0 error:&v18];
  v13 = v18;
  if (v12)
  {

    v14 = *&v5[OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedStreamInput_streamInput];
    *&v5[OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedStreamInput_streamInput] = v12;
  }

  else
  {
    v15 = v13;
    sub_2585328BC();

    swift_willThrow();
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

id sub_2584D3D88()
{
  if (qword_27F92F8E0 != -1)
  {
    swift_once();
  }

  v1 = sub_258532A4C();
  __swift_project_value_buffer(v1, qword_27F93CFF0);
  v2 = v0;
  v3 = sub_258532A2C();
  v4 = sub_2585338EC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&dword_25845E000, v3, v4, "%@ Deinitializing stream input", v5, 0xCu);
    sub_2584D1214(v6);
    MEMORY[0x259C82900](v6, -1, -1);
    MEMORY[0x259C82900](v5, -1, -1);
  }

  v9.receiver = v2;
  v9.super_class = type metadata accessor for AVConferenceBackedStreamInput();
  return objc_msgSendSuper2(&v9, sel_dealloc);
}

void sub_2584D3F60(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (*(v1 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedStreamInput_isStarted) == 1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedStreamInput_streamInput);
    if (v2)
    {
      v8[0] = 0;
      v4 = v2;
      if ([v4 pushSampleBuffer:a1 error:v8])
      {
        v5 = v8[0];
      }

      else
      {
        v6 = v8[0];
        sub_2585328BC();

        swift_willThrow();
      }
    }

    else
    {
      sub_2584D421C();
      swift_allocError();
      swift_willThrow();
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_2584D4098()
{
  if (qword_27F92F8E0 != -1)
  {
    swift_once();
  }

  v1 = sub_258532A4C();
  __swift_project_value_buffer(v1, qword_27F93CFF0);
  v2 = v0;
  oslog = sub_258532A2C();
  v3 = sub_2585338CC();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    *(v4 + 4) = v2;
    *v5 = v2;
    v6 = v2;
    _os_log_impl(&dword_25845E000, oslog, v3, "%@ serverDidDie", v4, 0xCu);
    sub_2584D1214(v5);
    MEMORY[0x259C82900](v5, -1, -1);
    MEMORY[0x259C82900](v4, -1, -1);
  }
}

unint64_t sub_2584D421C()
{
  result = qword_27F930CE8;
  if (!qword_27F930CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930CE8);
  }

  return result;
}

unint64_t sub_2584D4280(uint64_t a1)
{
  result = sub_2584D421C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2584D42AC()
{
  result = qword_27F930CF8;
  if (!qword_27F930CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930CF8);
  }

  return result;
}

uint64_t sub_2584D4300(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v88 = a2;
  v89 = a1;
  v102 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930970, &unk_25853ACE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v85 = &v72 - v7;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930D90, &unk_25853BCF0);
  v82 = *(v84 - 8);
  v8 = *(v82 + 64);
  MEMORY[0x28223BE20](v84, v9);
  v11 = &v72 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930980, &unk_25853ACF0);
  v86 = *(v12 - 8);
  v87 = v12;
  v13 = *(v86 + 64);
  MEMORY[0x28223BE20](v12, v14);
  v83 = &v72 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308B0, &unk_25853AC38);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v72 - v20;
  swift_defaultActor_initialize();
  v22 = *(v17 + 56);
  v90 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_internalEventStream;
  v80 = v22;
  v81 = v16;
  v22(&v3[OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_internalEventStream], 1, 1, v16);
  v78 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_internalEventMonitorTask;
  *&v3[OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_internalEventMonitorTask] = 0;
  v23 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_eventStream;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308D0, &qword_25853AC60);
  v25 = *(*(v24 - 8) + 56);
  v79 = v23;
  v25(&v3[v23], 1, 1, v24);
  v26 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_eventStreamContinuation;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F9308E0, &qword_25853AC68);
  v28 = *(*(v27 - 8) + 56);
  v77 = v26;
  v28(&v3[v26], 1, 1, v27);
  v29 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_transitionContinuation;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v31 = *(*(v30 - 8) + 56);
  v76 = v29;
  v31(&v3[v29], 1, 1, v30);
  v75 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_stopTransitionContinuation;
  v31(&v3[OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_stopTransitionContinuation], 1, 1, v30);
  v32 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_logger;
  if (qword_27F92F8E0 != -1)
  {
    swift_once();
  }

  v33 = sub_258532A4C();
  v34 = __swift_project_value_buffer(v33, qword_27F93CFF0);
  v74 = *(v33 - 8);
  v35 = *(v74 + 16);
  v73 = v33;
  v35(&v3[v32], v34, v33);
  *&v3[OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_cachedStreamDirection] = 0;
  v36 = v82;
  v37 = v84;
  (*(v82 + 104))(v11, *MEMORY[0x277D858A0], v84);
  v38 = v83;
  sub_2585337BC();
  (*(v36 + 8))(v11, v37);
  v39 = v85;
  v40 = v21;
  v41 = v81;
  (*(v17 + 32))(v85, v40, v81);
  v80(v39, 0, 1, v41);
  v42 = v90;
  swift_beginAccess();
  sub_2584BBC80(v39, &v3[v42]);
  swift_endAccess();
  v43 = v32;
  v44 = OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_internalEventStreamContinuation;
  v46 = v86;
  v45 = v87;
  (*(v86 + 32))(&v3[OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_internalEventStreamContinuation], v38, v87);
  v47 = v89;
  v93 = sub_25853299C();
  v94 = v48;
  v95 = v49;
  v96 = v50;
  v97 = v51;
  v98 = v52;
  v99 = v53;
  v100 = v54;
  v101 = v55;
  v56 = objc_allocWithZone(MEMORY[0x277CE5758]);
  v57 = sub_25853336C();

  v92 = 0;
  v58 = [v56 initWithNWConnectionClientID:&v93 options:v57 error:&v92];

  v59 = v92;
  if (v58)
  {
    *(v3 + 14) = v58;
    v60 = v59;
    v61 = [v58 streamToken];
    *&v3[OBJC_IVAR____TtC18MediaContinuityKit29AVConferenceBackedVideoStream_streamToken] = v61;
    v62 = type metadata accessor for AVConferenceBackedVideoStream();
    v91.receiver = v3;
    v91.super_class = v62;
    v63 = objc_msgSendSuper2(&v91, sel_init);
    [*(v63 + 112) setDelegate_];
    v64 = sub_2585329BC();
    (*(*(v64 - 8) + 8))(v47, v64);
  }

  else
  {
    v65 = v92;
    sub_2585328BC();

    swift_willThrow();
    v66 = sub_2585329BC();
    (*(*(v66 - 8) + 8))(v47, v66);
    sub_258465168(&v3[v90], &unk_27F930970, &unk_25853ACE0);
    (*(v46 + 8))(&v3[v44], v45);
    v67 = *&v3[v78];

    sub_258465168(&v3[v79], &unk_27F930DA0, &unk_25853BD00);
    sub_258465168(&v3[v77], &unk_27F930990, &unk_25853AD00);
    sub_258465168(&v3[v76], &unk_27F930DB0, &qword_258536390);
    sub_258465168(&v3[v75], &unk_27F930DB0, &qword_258536390);
    (*(v74 + 8))(&v3[v43], v73);
    v63 = type metadata accessor for AVConferenceBackedVideoStream();
    swift_defaultActor_destroy();
    v68 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v69 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  v70 = *MEMORY[0x277D85DE8];
  return v63;
}