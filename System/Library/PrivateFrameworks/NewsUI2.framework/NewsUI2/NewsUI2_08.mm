uint64_t sub_2187946CC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_218794704()
{
  v1 = *(type metadata accessor for EngagementEvent() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v3 = sub_219BE05A4();
      goto LABEL_17;
    case 1u:
      v3 = sub_219BE0154();
      goto LABEL_17;
    case 2u:
      v3 = sub_219BDFB64();
      goto LABEL_17;
    case 3u:
      v3 = sub_219BDFBD4();
      goto LABEL_17;
    case 4u:
      v3 = sub_219BDFC94();
      goto LABEL_17;
    case 5u:
      v3 = sub_219BDF514();
      goto LABEL_17;
    case 6u:
    case 7u:

      break;
    case 8u:
      v3 = sub_219BE0234();
      goto LABEL_17;
    case 9u:
      v3 = sub_219BDFAB4();
      goto LABEL_17;
    case 0xAu:
      v3 = sub_219BE01B4();
      goto LABEL_17;
    case 0xBu:
      v3 = sub_219BDFAF4();
      goto LABEL_17;
    case 0xCu:
      v3 = sub_219BE14C4();
      goto LABEL_17;
    case 0xDu:
      v3 = sub_219BDFF34();
      goto LABEL_17;
    case 0xEu:
      v3 = sub_219BDFC44();
      goto LABEL_17;
    case 0xFu:
      v3 = sub_219BDF934();
LABEL_17:
      (*(*(v3 - 8) + 8))(v0 + v2, v3);
      break;
    default:
      break;
  }

  return swift_deallocObject();
}

void *sub_218794A00(void *result, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  v5 = result[2];
  v6 = *v4;
  v7 = *(*v4 + 16);
  v8 = v7 + v5;
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v8 <= v6[3] >> 1)
  {
    if (v12[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v7 <= v8)
  {
    v16 = v7 + v5;
  }

  else
  {
    v16 = v7;
  }

  result = sub_2186CB07C(result, v16, 1, v6, a2, a3, a4);
  v6 = result;
  if (!v12[2])
  {
LABEL_13:

    if (!v5)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v6[3] >> 1) - v6[2] < v5)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_2186C709C(0, a3);
  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_14:
    *v4 = v6;
    return result;
  }

  v13 = v6[2];
  v14 = __OFADD__(v13, v5);
  v15 = v13 + v5;
  if (!v14)
  {
    v6[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_218794B30()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_218794B80()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_218794BD0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for LocalNewsChannelService();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218794C24(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EE1810);
  result = sub_219BE1E34();
  if (v23)
  {
    v2 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
    MEMORY[0x28223BE20](v2);
    v4 = (&v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v5 + 16))(v4);
    v6 = *v4;
    v7 = type metadata accessor for LocalNewsChannelService();
    v20 = v7;
    v21 = &off_282A6E848;
    v19[0] = v6;
    v8 = type metadata accessor for WidgetLocalNewsChannelService();
    v9 = objc_allocWithZone(v8);
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
    MEMORY[0x28223BE20](v10);
    v12 = (&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12);
    v14 = *v12;
    v18[3] = v7;
    v18[4] = &off_282A6E848;
    v18[0] = v14;
    sub_218718690(v18, v9 + OBJC_IVAR____TtC7NewsUI229WidgetLocalNewsChannelService_localNewsChannelService);
    v17.receiver = v9;
    v17.super_class = v8;
    v15 = objc_msgSendSuper2(&v17, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v18);
    __swift_destroy_boxed_opaque_existential_1(v19);
    __swift_destroy_boxed_opaque_existential_1(v22);
    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_218794E94()
{
  v0 = objc_allocWithZone(sub_219BDCF74());

  return [v0 init];
}

uint64_t _s7NewsUI211AppDelegateC11application_30willFinishLaunchingWithOptionsSbSo13UIApplicationC_SDySo0k6LaunchJ3KeyaypGSgtF_0()
{
  v0 = sub_219BED174();
  v25 = *(v0 - 8);
  v26 = v0;
  MEMORY[0x28223BE20](v0);
  v23 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_219BED1D4();
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v21 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_219BF5184();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE2C14();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186C6E00(aBlock);
  __swift_project_boxed_opaque_existential_1(aBlock, v28);
  sub_219BE0184();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v12 = result;
  __swift_destroy_boxed_opaque_existential_1(aBlock);
  v13 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v20 = v12;
  sub_219BE0174();

  sub_2186C6E00(aBlock);
  __swift_project_boxed_opaque_existential_1(aBlock, v28);
  sub_219BE27C4();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_destroy_boxed_opaque_existential_1(aBlock);
  sub_21879D6A4(MEMORY[0x277D84F90]);
  (*(v8 + 104))(v10, *MEMORY[0x277D6CE40], v7);
  sub_219BE27A4();

  (*(v8 + 8))(v10, v7);
  sub_2186C6E00(aBlock);
  __swift_project_boxed_opaque_existential_1(aBlock, v28);
  sub_219BE2A24();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_destroy_boxed_opaque_existential_1(aBlock);
  sub_2186C6E00(aBlock);
  __swift_project_boxed_opaque_existential_1(aBlock, v28);
  sub_2186C709C(0, &unk_280EE61A0);
  result = sub_219BE1E34();
  if (!v31[3])
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_2186C70F8(v31, &qword_280EE6198, &unk_280EE61A0, MEMORY[0x277D34868]);
  __swift_destroy_boxed_opaque_existential_1(aBlock);
  sub_219BDAE54();
  sub_2186C7168();
  sub_219BDAE34();

  sub_219BDAE44();
  sub_219BF5164();
  v14 = *(v4 + 8);
  v14(v6, v3);
  sub_219BDAE44();
  sub_219BF5174();
  v14(v6, v3);
  sub_219BDADF4();
  sub_219BDADE4();

  sub_219BE3334();

  sub_219BDADB4();

  __swift_destroy_boxed_opaque_existential_1(aBlock);
  sub_2186C6E00(aBlock);
  __swift_project_boxed_opaque_existential_1(aBlock, v28);
  type metadata accessor for TopStoriesFinishedLoadingObserver();
  result = sub_219BE1E24();
  if (result)
  {

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    sub_2186C6148(0, &qword_280E8E3B0);
    v15 = MEMORY[0x21CECD490](9);
    v29 = nullsub_1;
    v30 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_218793E0C;
    v28 = &block_descriptor_39;
    v16 = _Block_copy(aBlock);
    v17 = v21;
    sub_219BED1A4();
    v31[0] = MEMORY[0x277D84F90];
    sub_2187A5670(&qword_280E927E0, MEMORY[0x277D85198]);
    sub_21874E6B8(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_21874EB68();
    v18 = v23;
    v19 = v26;
    sub_219BF7164();
    MEMORY[0x21CECD460](0, v17, v18, v16);
    _Block_release(v16);

    (*(v25 + 8))(v18, v19);
    (*(v22 + 8))(v17, v24);
    return 1;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_21879568C(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for MagazineFeedServiceContextFactory();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_218718690(a2, v7);
    v6 = swift_allocObject();
    sub_2186CB1F0(v7, v6 + 16);
    *(v6 + 56) = v5;
    type metadata accessor for MagazineFeedServiceConfigFetcher();
    sub_2186F7934();

    sub_219BEFFA4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2187957A8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2187957E8(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C6148(0, &unk_280E8E5E0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C6148(0, &qword_280E8E6C0);
  result = sub_219BE1E24();
  if (result)
  {
    v7 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_218718690(a2, v11);
    v8 = swift_allocObject();
    sub_2186CB1F0(v11, (v8 + 2));
    v8[7] = v5;
    v8[8] = v6;
    v8[9] = v7;
    sub_2186F7B28();
    sub_218795A1C();
    swift_unknownObjectRetain();
    v9 = v6;
    v10 = v7;
    sub_219BEFFA4();
    swift_unknownObjectRelease();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2187959CC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_218795A50(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218718690(a2, v5);
  v3 = swift_allocObject();
  sub_2186CB1F0(v5, v3 + 16);
  sub_2187006BC();
  sub_21872F630(&unk_280E926F8, sub_2187006BC);
  sub_219BEFFA4();
}

uint64_t sub_218795B40()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_218795B7C(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218718690(a2, v5);
  v3 = swift_allocObject();
  sub_2186CB1F0(v5, v3 + 16);
  sub_2187144E0();
  sub_218795E10(&qword_280E926E8, sub_2187144E0);
  sub_219BEFFA4();
}

uint64_t sub_218795C6C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_218795CA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218795CF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218795D38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218795D80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218795DC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218795E10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218795E58(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v2 = type metadata accessor for UserIDValidationStartupTask();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5[3] = v2;
    v5[4] = sub_2187960B4();
    v5[0] = v4;
    sub_219BE2794();
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218795F14()
{
  type metadata accessor for UserIDValidationStartupTask();
  sub_219BE2904();
}

uint64_t sub_218795F74(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218735F3C();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE5390);
  result = sub_219BE1E34();
  if (!v8)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (v5)
  {
    type metadata accessor for UserIDValidationStartupTask();
    v4 = swift_allocObject();
    v4[2] = v3;
    sub_21875F93C(&v7, (v4 + 3));
    v4[8] = v5;
    v4[9] = v6;
    return v4;
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_2187960B4()
{
  result = qword_280EB5CC8[0];
  if (!qword_280EB5CC8[0])
  {
    type metadata accessor for UserIDValidationStartupTask();
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EB5CC8);
  }

  return result;
}

uint64_t sub_21879610C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D6CE30];
  v3 = sub_219BE2C14();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_218796184()
{
  v0 = type metadata accessor for DeleteWebDataStartupTask();
  v1 = swift_allocObject();
  v3[3] = v0;
  v3[4] = sub_21871D3B8(&qword_280EC2330, type metadata accessor for DeleteWebDataStartupTask);
  v3[0] = v1;
  sub_219BE2794();
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t sub_218796248(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186D6710(0, &qword_280EC5430);
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    v4 = NewsCoreUserDefaults();
    v5 = type metadata accessor for CarPlayAvailabilityStartupTask();
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    *(v6 + 24) = v4;
    v7[3] = v5;
    v7[4] = sub_21871D3B8(&unk_280EAD4F8, type metadata accessor for CarPlayAvailabilityStartupTask);
    v7[0] = v6;
    sub_219BE2794();
    return __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218796374(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v2 = type metadata accessor for AppIntentsAppDependencyStartupTask();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5[3] = v2;
    v5[4] = sub_2186D5C5C(&qword_280EE3290, type metadata accessor for AppIntentsAppDependencyStartupTask);
    v5[0] = v4;
    sub_219BE2794();
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21879643C(uint64_t a1)
{
  sub_219BDADF4();
  v2 = sub_219BDADE4();
  sub_218718690(a1, v8);
  type metadata accessor for AppIntentsAppDependencyStartupTask();
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtC7NewsUI234AppIntentsAppDependencyStartupTask_executionPhase;
  v5 = *MEMORY[0x277D6CE38];
  v6 = sub_219BE2C14();
  (*(*(v6 - 8) + 104))(v3 + v4, v5, v6);
  *(v3 + OBJC_IVAR____TtC7NewsUI234AppIntentsAppDependencyStartupTask_appDependencyManager) = v2;
  sub_2186CB1F0(v8, v3 + OBJC_IVAR____TtC7NewsUI234AppIntentsAppDependencyStartupTask_resolver);
  return v3;
}

uint64_t sub_21879651C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI234AppIntentsAppDependencyStartupTask_executionPhase;
  v5 = sub_219BE2C14();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_218796598(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &qword_280ED02F0);
  result = sub_219BE1E34();
  if (!v34)
  {
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C6148(0, &qword_280E8DE40);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, qword_280EAB320);
  result = sub_219BE1E34();
  if (!v32)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186D6710(0, &qword_280E8DD80);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186D6710(0, &qword_280E8E270);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186D6710(0, &qword_280EC5430);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = result;
  v28 = v5;
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186D6710(0, &qword_280E8DC20);
  result = sub_219BE1E24();
  if (result)
  {
    v9 = result;
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v33, v34);
    v27 = &v27;
    MEMORY[0x28223BE20](v10);
    v12 = (&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12);
    v14 = *v12;
    v15 = type metadata accessor for ShortcutService();
    v30[3] = v15;
    v30[4] = &off_282A3DCA0;
    v30[0] = v14;
    v16 = type metadata accessor for ShortcutsStartupTask();
    v17 = swift_allocObject();
    v18 = __swift_mutable_project_boxed_opaque_existential_1(v30, v15);
    MEMORY[0x28223BE20](v18);
    v20 = (&v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v21 + 16))(v20);
    v22 = *v20;
    v23 = (v17 + OBJC_IVAR____TtC7NewsUI220ShortcutsStartupTask_shortcutService);
    v23[3] = v15;
    v23[4] = &off_282A3DCA0;
    *v23 = v22;
    v24 = OBJC_IVAR____TtC7NewsUI220ShortcutsStartupTask_executionPhase;
    v25 = *MEMORY[0x277D6CE30];
    v26 = sub_219BE2C14();
    (*(*(v26 - 8) + 104))(v17 + v24, v25, v26);
    *(v17 + OBJC_IVAR____TtC7NewsUI220ShortcutsStartupTask_subscriptionController) = v28;
    sub_2186CB1F0(&v31, v17 + OBJC_IVAR____TtC7NewsUI220ShortcutsStartupTask_shortcutsOnboardingManager);
    *(v17 + OBJC_IVAR____TtC7NewsUI220ShortcutsStartupTask_configurationManager) = v6;
    *(v17 + OBJC_IVAR____TtC7NewsUI220ShortcutsStartupTask_feedPersonalizing) = v7;
    *(v17 + OBJC_IVAR____TtC7NewsUI220ShortcutsStartupTask_featureAvailability) = v8;
    *(v17 + OBJC_IVAR____TtC7NewsUI220ShortcutsStartupTask_bundleSubscriptionManager) = v9;
    __swift_destroy_boxed_opaque_existential_1(v30);
    __swift_destroy_boxed_opaque_existential_1(v33);
    v34 = v16;
    v35 = sub_2186D5C5C(&unk_280ECD120, type metadata accessor for ShortcutsStartupTask);
    v33[0] = v17;
    sub_219BE2794();
    return __swift_destroy_boxed_opaque_existential_1(v33);
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for ShortcutsStartupTask()
{
  result = qword_280ECD110;
  if (!qword_280ECD110)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218796AE0()
{
  result = sub_219BE2C14();
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

uint64_t sub_218796B98@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI220ShortcutsStartupTask_executionPhase;
  v5 = sub_219BE2C14();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_218796C14(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, qword_280EA87C0);
  result = sub_219BE1E34();
  if (v12)
  {
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_2186C709C(0, qword_280EB6AF0);
    result = sub_219BE1E34();
    if (v10)
    {
      v4 = type metadata accessor for SportsTopicNotificationStartupTask();
      v5 = swift_allocObject();
      v6 = OBJC_IVAR____TtC7NewsUI234SportsTopicNotificationStartupTask_executionPhase;
      v7 = *MEMORY[0x277D6CE30];
      v8 = sub_219BE2C14();
      (*(*(v8 - 8) + 104))(v5 + v6, v7, v8);
      sub_2186CB1F0(&v11, v5 + OBJC_IVAR____TtC7NewsUI234SportsTopicNotificationStartupTask_pushNotificationDataManager);
      sub_2186CB1F0(&v9, v5 + OBJC_IVAR____TtC7NewsUI234SportsTopicNotificationStartupTask_sportsOnboardingManager);
      v12 = v4;
      v13 = sub_2186D5C5C(qword_280E9E810, type metadata accessor for SportsTopicNotificationStartupTask);
      *&v11 = v5;
      sub_219BE2794();
      return __swift_destroy_boxed_opaque_existential_1(&v11);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for SportsTopicNotificationStartupTask()
{
  result = qword_280E9E7F8;
  if (!qword_280E9E7F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218796E30()
{
  result = sub_219BE2C14();
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

uint64_t sub_218796ECC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI234SportsTopicNotificationStartupTask_executionPhase;
  v5 = sub_219BE2C14();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_218796F48(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280E90100);
  result = sub_219BE1E34();
  if (!v26)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280E90030);
  result = sub_219BE1E34();
  if (!v23)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = type metadata accessor for ResetPuzzleProgressStartupTask();
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC7NewsUI230ResetPuzzleProgressStartupTask_executionPhase;
  v7 = *MEMORY[0x277D6CE30];
  v8 = sub_219BE2C14();
  (*(*(v8 - 8) + 104))(v5 + v6, v7, v8);
  sub_2186CB1F0(&v25, v5 + OBJC_IVAR____TtC7NewsUI230ResetPuzzleProgressStartupTask_puzzleHistoryService);
  sub_2186CB1F0(&v22, v5 + OBJC_IVAR____TtC7NewsUI230ResetPuzzleProgressStartupTask_puzzleStatsStateStore);
  v26 = v4;
  v27 = sub_2186D5C5C(&qword_280EAB858, type metadata accessor for ResetPuzzleProgressStartupTask);
  *&v25 = v5;

  sub_219BE2794();
  __swift_destroy_boxed_opaque_existential_1(&v25);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, qword_280ED0990);
  result = sub_219BE1E34();
  if (v26)
  {
    v9 = __swift_mutable_project_boxed_opaque_existential_1(&v25, v26);
    MEMORY[0x28223BE20](v9);
    v11 = (&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = *v11;
    v14 = type metadata accessor for PuzzlePrewarmer();
    v23 = v14;
    v24 = &off_282A6F8D0;
    *&v22 = v13;
    v15 = type metadata accessor for PuzzlePrewarmStartupTask();
    v16 = swift_allocObject();
    v17 = __swift_mutable_project_boxed_opaque_existential_1(&v22, v14);
    MEMORY[0x28223BE20](v17);
    v19 = (&v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19);
    v21 = *v19;
    v16[5] = v14;
    v16[6] = &off_282A6F8D0;
    v16[2] = v21;
    __swift_destroy_boxed_opaque_existential_1(&v22);
    __swift_destroy_boxed_opaque_existential_1(&v25);
    v26 = v15;
    v27 = sub_2186D5C5C(qword_280EC0AE8, type metadata accessor for PuzzlePrewarmStartupTask);
    *&v25 = v16;
    sub_219BE2794();

    return __swift_destroy_boxed_opaque_existential_1(&v25);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for ResetPuzzleProgressStartupTask()
{
  result = qword_280EAB840;
  if (!qword_280EAB840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2187973B0()
{
  result = sub_219BE2C14();
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

uint64_t sub_21879744C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI230ResetPuzzleProgressStartupTask_executionPhase;
  v5 = sub_219BE2C14();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_2187974C8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8DDD0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186CFDE4(0, &unk_280EE73A0);
  result = sub_219BE1E34();
  if (!v22)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186CFDE4(0, &unk_280E90100);
  result = sub_219BE1E34();
  if (!v20)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186CFDE4(0, &unk_280E90500);
  result = sub_219BE1E34();
  if (!v18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186CFDE4(0, &unk_280E901D0);
  result = sub_219BE1E34();
  if (v16)
  {
    v9 = type metadata accessor for PuzzlePrewarmer();
    v10 = objc_allocWithZone(v9);
    *&v10[OBJC_IVAR____TtC7NewsUI215PuzzlePrewarmer_configurationManager] = v5;
    *&v10[OBJC_IVAR____TtC7NewsUI215PuzzlePrewarmer_networkReachability] = v6;
    *&v10[OBJC_IVAR____TtC7NewsUI215PuzzlePrewarmer_bundleSubscriptionManager] = v7;
    *&v10[OBJC_IVAR____TtC7NewsUI215PuzzlePrewarmer_featureAvailability] = v8;
    sub_218718690(v17, &v10[OBJC_IVAR____TtC7NewsUI215PuzzlePrewarmer_puzzleService]);
    sub_218718690(v19, &v10[OBJC_IVAR____TtC7NewsUI215PuzzlePrewarmer_puzzleHistoryService]);
    sub_218718690(v15, &v10[OBJC_IVAR____TtC7NewsUI215PuzzlePrewarmer_puzzleStatsService]);
    v14.receiver = v10;
    v14.super_class = v9;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v11 = objc_msgSendSuper2(&v14, sel_init);
    __swift_project_boxed_opaque_existential_1(v21, v22);
    sub_2187978DC();
    v12 = v11;
    sub_219BE29A4();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v13);
    __swift_destroy_boxed_opaque_existential_1(v15);
    __swift_destroy_boxed_opaque_existential_1(v17);
    __swift_destroy_boxed_opaque_existential_1(v19);
    result = __swift_destroy_boxed_opaque_existential_1(v21);
    a2[3] = v9;
    a2[4] = &off_282A6F8D0;
    *a2 = v12;
    return result;
  }

LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_2187978DC()
{
  result = qword_280EDA010;
  if (!qword_280EDA010)
  {
    type metadata accessor for PuzzlePrewarmer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EDA010);
  }

  return result;
}

uint64_t sub_218797958(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186D6710(0, &qword_280EC5430);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280E90370);
  result = sub_219BE1E34();
  if (!v15)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C6148(0, &qword_280E8E740);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280E927D0);
  result = sub_219BE1E34();
  if (!v13)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C6148(0, &qword_280E8E890);
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    v7 = type metadata accessor for RecipeBoxInitialImportStartupTask();
    v8 = swift_allocObject();
    v9 = OBJC_IVAR____TtC7NewsUI233RecipeBoxInitialImportStartupTask_executionPhase;
    v10 = *MEMORY[0x277D6CE30];
    v11 = sub_219BE2C14();
    (*(*(v11 - 8) + 104))(v8 + v9, v10, v11);
    *(v8 + OBJC_IVAR____TtC7NewsUI233RecipeBoxInitialImportStartupTask_featureAvailability) = v4;
    sub_2186CB1F0(&v14, v8 + OBJC_IVAR____TtC7NewsUI233RecipeBoxInitialImportStartupTask_headlineService);
    *(v8 + OBJC_IVAR____TtC7NewsUI233RecipeBoxInitialImportStartupTask_readingList) = v5;
    sub_2186CB1F0(&v12, v8 + OBJC_IVAR____TtC7NewsUI233RecipeBoxInitialImportStartupTask_recipeBox);
    *(v8 + OBJC_IVAR____TtC7NewsUI233RecipeBoxInitialImportStartupTask_userInfo) = v6;
    v15 = v7;
    v16 = sub_2186D5C5C(&qword_280EA22C0, type metadata accessor for RecipeBoxInitialImportStartupTask);
    *&v14 = v8;
    sub_219BE2794();
    return __swift_destroy_boxed_opaque_existential_1(&v14);
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for RecipeBoxInitialImportStartupTask()
{
  result = qword_280EA22B0;
  if (!qword_280EA22B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218797C70()
{
  result = sub_219BE2C14();
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

uint64_t sub_218797D24@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI233RecipeBoxInitialImportStartupTask_executionPhase;
  v5 = sub_219BE2C14();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_218797DA0(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280E927D0);
  result = sub_219BE1E34();
  if (!v14)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &qword_280EB75E0);
  result = sub_219BE1E34();
  if (!v11)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186D6710(0, &qword_280EC5430);
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for RecipeBoxSearchStartupTask();
    v6 = swift_allocObject();
    v7 = OBJC_IVAR____TtC7NewsUI226RecipeBoxSearchStartupTask_executionPhase;
    v8 = *MEMORY[0x277D6CE30];
    v9 = sub_219BE2C14();
    (*(*(v9 - 8) + 104))(v6 + v7, v8, v9);
    sub_2186CB1F0(&v13, v6 + OBJC_IVAR____TtC7NewsUI226RecipeBoxSearchStartupTask_recipeBox);
    v10 = (v6 + OBJC_IVAR____TtC7NewsUI226RecipeBoxSearchStartupTask_recipeBoxSearchDatabase);
    *v10 = v11;
    v10[1] = v12;
    *(v6 + OBJC_IVAR____TtC7NewsUI226RecipeBoxSearchStartupTask_featureAvailability) = v4;
    v14 = v5;
    v15 = sub_2186D5C5C(&qword_280EBA7C8, type metadata accessor for RecipeBoxSearchStartupTask);
    *&v13 = v6;
    sub_219BE2794();
    return __swift_destroy_boxed_opaque_existential_1(&v13);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_218797FC4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187981CC(0, &unk_280EE7230, qword_280EC0798, &protocol descriptor for RecipeBoxSearchStoreType, MEMORY[0x277D6CEE8]);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9E00);
  result = sub_219BE1E34();
  if (!v13)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90620);
  result = sub_219BE1E34();
  if (v11)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280E900D0);
    sub_219BE1E34();
    type metadata accessor for RecipeBoxSearchDatabase();
    v6 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v6 + 112) = v5;
    sub_2186CB1F0(&v12, v6 + 120);
    sub_2186CB1F0(&v10, v6 + 160);
    *(v6 + 200) = v7;
    *(v6 + 216) = v8;
    *(v6 + 232) = v9;
    result = sub_218701B9C(&qword_280EC3CE0, type metadata accessor for RecipeBoxSearchDatabase);
    *a2 = v6;
    a2[1] = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_2187981CC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2186C709C(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_218798238()
{
  v0 = sub_219BE2DF4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RecipeBoxViewController();
  sub_219BE2904();

  sub_2186C709C(0, &qword_280ED08D8);
  sub_219BE2914();

  sub_2186C709C(0, &qword_280ED08E0);
  sub_219BE2914();
  type metadata accessor for RecipeBoxRouter();
  sub_219BE19C4();

  sub_2186C709C(0, qword_280EBD508);
  sub_219BE2914();

  sub_2186C709C(0, qword_280EC3CF0);
  sub_219BE2914();

  sub_2186C709C(0, qword_280ECD9A0);
  sub_219BE2914();

  sub_2186C709C(0, &qword_280EC0A28);
  sub_219BE2914();

  sub_2186C709C(0, &qword_280EE9E00);
  sub_219BE2914();

  sub_2186C709C(0, &qword_280EAB878);
  sub_219BE2914();

  sub_2186C709C(0, &qword_280EAB880);
  sub_219BE2914();

  sub_218799258();
  sub_219BE2904();

  type metadata accessor for RecipeBoxBlueprintModifierFactory();
  sub_219BE2904();

  sub_2186C709C(0, &qword_280EB75D0);
  sub_219BE2914();

  sub_218799CB8();
  sub_219BE2904();
  sub_219BE19D4();

  sub_21879A74C();
  sub_219BE2904();
  sub_219BE19D4();

  sub_21879A984(0, &unk_280EE40F8, sub_21879A13C, sub_21879A474, MEMORY[0x277D6E7C8]);
  sub_219BE2904();

  sub_219BE9C54();
  sub_219BE2904();

  sub_218799D74();
  sub_219BE2904();

  sub_21879A184(0, &qword_280EE4190, sub_21879A890, sub_21879A4A8, MEMORY[0x277D6E7B0]);
  sub_219BE2904();

  sub_21879A13C(0);
  sub_219BE2904();

  type metadata accessor for RecipeBoxBlueprintLayoutBuilder();
  sub_219BE2904();

  sub_21879AA04();
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE8E74();
  sub_219BE2904();

  sub_218799E80();
  sub_219BE2904();

  sub_2186C709C(0, &qword_280EE3DE0);
  sub_219BE2914();
  sub_219BE95A4();
  sub_219BE19C4();

  sub_21879AAE0(0, &qword_280EE44C0, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D6E608]);
  sub_219BE2904();

  sub_218799FFC();
  sub_219BE2904();
  sub_219BE19D4();

  sub_21879A59C();
  sub_219BE2904();
  sub_219BE19D4();

  sub_21879A68C();
  sub_219BE2904();

  type metadata accessor for RecipeBoxBlueprintViewCellProvider();
  sub_219BE2904();
  sub_219BE19D4();

  type metadata accessor for RecipeBoxBlueprintViewSupplementaryViewProvider();
  sub_219BE2904();

  sub_21879A984(0, &unk_280EE4878, sub_218799E80, sub_21879A718, MEMORY[0x277D6E068]);
  sub_219BE2904();

  sub_21879AC90();
  sub_219BE2904();

  sub_21879A984(0, &unk_280EE4640, sub_218799258, sub_21879A440, MEMORY[0x277D6E388]);
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE70E4();
  sub_219BE2904();

  sub_21879AD4C();
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE8A54();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C709C(0, &unk_280EE3C80);
  sub_219BE2914();

  sub_219BE9534();
  sub_219BE2904();

  sub_219BE9564();
  sub_219BE2904();

  sub_2187981CC(0, &unk_280EE7230, qword_280EC0798, &protocol descriptor for RecipeBoxSearchStoreType, MEMORY[0x277D6CEE8]);
  sub_219BE2904();
  v4 = *(v1 + 104);
  v4(v3, *MEMORY[0x277D6CF10], v0);
  sub_219BE19F4();

  v5 = *(v1 + 8);
  v5(v3, v0);
  type metadata accessor for RecipeBoxEngagementState();
  sub_219BE2904();
  v4(v3, *MEMORY[0x277D6CF00], v0);
  sub_219BE19F4();

  v5(v3, v0);
  sub_21879AE2C();
  sub_219BE2904();

  sub_21879AF3C();
  sub_219BE2904();
}

void sub_218799164(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for RecipeBoxSectionDescriptor();
    v8[1] = type metadata accessor for RecipeBoxModel(255);
    v8[2] = sub_218701B9C(qword_280EBA6F0, type metadata accessor for RecipeBoxSectionDescriptor);
    v8[3] = sub_218701B9C(&qword_280EDBED0, type metadata accessor for RecipeBoxModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218799258()
{
  if (!qword_280EE5490)
  {
    type metadata accessor for RecipeBoxSectionDescriptor();
    type metadata accessor for RecipeBoxModel(255);
    sub_218985F8C(qword_280EBA6F0, type metadata accessor for RecipeBoxSectionDescriptor);
    sub_218985F8C(&qword_280EDBED0, type metadata accessor for RecipeBoxModel);
    v0 = sub_219BE6FA4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE5490);
    }
  }
}

uint64_t type metadata accessor for RecipeBoxSectionDescriptor()
{
  result = qword_280EBA6E0;
  if (!qword_280EBA6E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218799390()
{
  result = sub_218799404();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for RecipeListRecipeBoxFeedGroup();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

ValueMetadata *sub_218799404()
{
  result = qword_280EDFA30;
  if (!qword_280EDFA30)
  {
    result = &type metadata for TitleModel;
    atomic_store(&type metadata for TitleModel, &qword_280EDFA30);
  }

  return result;
}

uint64_t type metadata accessor for RecipeListRecipeBoxFeedGroup()
{
  result = qword_280EE3088;
  if (!qword_280EE3088)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218799480()
{
  sub_219BED8D4();
  if (v0 <= 0x3F)
  {
    sub_218799754(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_218799514(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_218799578(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_219BF5B14();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2187995D4(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_2186C6148(255, a3);
    v4 = sub_219BF5B14();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21879962C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_218799690(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_219BF5B14();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2187996EC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2186C6148(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_218799788()
{
  result = qword_280E8DA30;
  if (!qword_280E8DA30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E8DA30);
  }

  return result;
}

void sub_2187997F4()
{
  sub_219BEEC14();
  if (v0 <= 0x3F)
  {
    sub_2187998B0();
    if (v1 <= 0x3F)
    {
      sub_218799AB4();
      if (v2 <= 0x3F)
      {
        sub_2186EB308();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_2187998B0()
{
  if (!qword_280E8F9D8)
  {
    type metadata accessor for RecipeBoxGapLocation(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8F9D8);
    }
  }
}

void sub_21879991C()
{
  if (!qword_280E909D8)
  {
    type metadata accessor for RecipeBoxFeedServiceConfig();
    sub_218799A6C(&qword_280EBA8B0, type metadata accessor for RecipeBoxFeedServiceConfig);
    v0 = sub_219BF0F94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E909D8);
    }
  }
}

void sub_2187999B0()
{
  sub_218799A24();
  if (v0 <= 0x3F)
  {
    sub_21879991C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_218799A24()
{
  if (!qword_280E8EE28)
  {
    sub_2186D0BA8();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8EE28);
    }
  }
}

uint64_t sub_218799A6C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_218799AB4()
{
  if (!qword_280ECDC08[0])
  {
    type metadata accessor for RecipeBoxGapLocation(255);
    sub_219BF1584();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_280ECDC08);
    }
  }
}

void sub_218799CB8()
{
  if (!qword_280EE55B8)
  {
    sub_218799258();
    sub_218799D74();
    sub_21879A440();
    sub_218701B9C(&unk_280EE52A0, sub_218799D74);
    v0 = sub_219BE6F54();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE55B8);
    }
  }
}

void sub_218799D74()
{
  if (!qword_280EE5298)
  {
    type metadata accessor for RecipeBoxSectionDescriptor();
    type metadata accessor for RecipeBoxModel(255);
    sub_218799E80();
    sub_218701B9C(qword_280EBA6F0, type metadata accessor for RecipeBoxSectionDescriptor);
    sub_218701B9C(&qword_280EDBED0, type metadata accessor for RecipeBoxModel);
    sub_21879A718();
    v0 = sub_219BE72E4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE5298);
    }
  }
}

void sub_218799E80()
{
  if (!qword_280EE4ED0)
  {
    sub_2186C6148(255, &qword_280E8E4C0);
    sub_218799FFC();
    sub_21879A59C();
    sub_21879A68C();
    type metadata accessor for RecipeBoxViewController();
    sub_218701B9C(&qword_280EE3EC0, sub_218799FFC);
    sub_218701B9C(&qword_280EE4348, sub_21879A59C);
    sub_218701B9C(&unk_280EE3D60, sub_21879A68C);
    v0 = sub_219BE7BE4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE4ED0);
    }
  }
}

void sub_218799FFC()
{
  if (!qword_280EE3EB8)
  {
    sub_218799258();
    sub_21879A13C(255);
    type metadata accessor for RecipeBoxBlueprintViewCellProvider();
    type metadata accessor for RecipeBoxBlueprintViewSupplementaryViewProvider();
    sub_21879A440();
    sub_21879A474();
    sub_218701B9C(&qword_280E9F7C0, type metadata accessor for RecipeBoxBlueprintViewCellProvider);
    sub_218701B9C(qword_280EE1FC8, type metadata accessor for RecipeBoxBlueprintViewSupplementaryViewProvider);
    sub_21879A4A8();
    v0 = sub_219BE9B94();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE3EB8);
    }
  }
}

void sub_21879A184(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, void *))
{
  if (!*a2)
  {
    v12[0] = &type metadata for RecipeBoxLayoutSectionDescriptor;
    v12[1] = type metadata accessor for RecipeBoxLayoutModel();
    v12[2] = a3();
    v12[3] = a4();
    v10 = a5(a1, v12);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t type metadata accessor for RecipeBoxLayoutModel()
{
  result = qword_280ECDB00;
  if (!qword_280ECDB00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21879A270(uint64_t a1)
{
  sub_21879A328();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v5 = sub_219BEF974();
    v3 = v5;
    if (v6 <= 0x3F)
    {
      *(*(a1 - 8) + 84) = *(*(v5 - 8) + 84);
      return 0;
    }
  }

  return v3;
}

void sub_21879A328()
{
  if (!qword_280E912A8)
  {
    v0 = sub_219BEF974();
    if (!v1)
    {
      atomic_store(v0, &qword_280E912A8);
    }
  }
}

unint64_t sub_21879A370()
{
  result = qword_280EA5240[0];
  if (!qword_280EA5240[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EA5240);
  }

  return result;
}

uint64_t sub_21879A510(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RecipeBoxLayoutModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21879A554(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_21879A59C()
{
  if (!qword_280EE4340)
  {
    sub_218799258();
    sub_21879A13C(255);
    type metadata accessor for RecipeBoxViewController();
    sub_21879A440();
    sub_21879A474();
    sub_218701B9C(qword_280EC3C18, type metadata accessor for RecipeBoxViewController);
    sub_21879A4A8();
    v0 = sub_219BE9794();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE4340);
    }
  }
}

void sub_21879A68C()
{
  if (!qword_280EE3D58)
  {
    sub_218799258();
    sub_21879A13C(255);
    sub_21879A440();
    sub_21879A474();
    v0 = sub_219BE9F34();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE3D58);
    }
  }
}

void sub_21879A74C()
{
  if (!qword_280EE3B50)
  {
    sub_21879A13C(255);
    type metadata accessor for RecipeBoxBlueprintLayoutBuilder();
    sub_21879A184(255, &qword_280EE4190, sub_21879A890, sub_21879A4A8, MEMORY[0x277D6E7B0]);
    sub_21879A474();
    sub_218701B9C(qword_280EA8640, type metadata accessor for RecipeBoxBlueprintLayoutBuilder);
    sub_21879A8E8();
    v0 = sub_219BEA4A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE3B50);
    }
  }
}

unint64_t sub_21879A890()
{
  result = qword_280EA5238;
  if (!qword_280EA5238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA5238);
  }

  return result;
}

unint64_t sub_21879A8E8()
{
  result = qword_280EE4198;
  if (!qword_280EE4198)
  {
    sub_21879A184(255, &qword_280EE4190, sub_21879A890, sub_21879A4A8, MEMORY[0x277D6E7B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE4198);
  }

  return result;
}

void sub_21879A984(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_21879AA04()
{
  if (!qword_280EE49F0)
  {
    sub_218799258();
    sub_218799E80();
    type metadata accessor for RecipeBoxViewController();
    sub_21879A440();
    sub_21879A718();
    sub_218701B9C(qword_280EC3C18, type metadata accessor for RecipeBoxViewController);
    v0 = sub_219BE8774();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE49F0);
    }
  }
}

void sub_21879AAE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_21879AB4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_21879ABB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_21879AC24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_21879AC90()
{
  if (!qword_280E918C0)
  {
    type metadata accessor for RecipeBoxFeedServiceConfig();
    sub_218799258();
    sub_218701B9C(&qword_280EBA8B0, type metadata accessor for RecipeBoxFeedServiceConfig);
    sub_21879A440();
    v0 = sub_219BEEB44();
    if (!v1)
    {
      atomic_store(v0, &qword_280E918C0);
    }
  }
}

void sub_21879AD4C()
{
  if (!qword_280EE4020)
  {
    sub_218799E80();
    sub_218799258();
    sub_21879A718();
    sub_218701B9C(&unk_280EE54A0, sub_218799258);
    v0 = sub_219BE9AD4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE4020);
    }
  }
}

void sub_21879AE2C()
{
  if (!qword_280EE8C90)
  {
    sub_21879A13C(255);
    sub_21879A474();
    sub_218701B9C(qword_280ECDB58, type metadata accessor for RecipeBoxLayoutModel);
    sub_218701B9C(&qword_280ECDB50, type metadata accessor for RecipeBoxLayoutModel);
    sub_218701B9C(&qword_280ECDB30, type metadata accessor for RecipeBoxLayoutModel);
    v0 = sub_219BDE304();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE8C90);
    }
  }
}

void sub_21879AF3C()
{
  if (!qword_280EE8A28)
  {
    type metadata accessor for RecipeBoxSectionDescriptor();
    type metadata accessor for RecipeBoxModel(255);
    type metadata accessor for RecipeBoxLayoutModel();
    sub_218701B9C(qword_280EBA6F0, type metadata accessor for RecipeBoxSectionDescriptor);
    sub_218701B9C(&qword_280EDBED0, type metadata accessor for RecipeBoxModel);
    sub_21879A370();
    sub_21879A3C4();
    v0 = sub_219BDEBF4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE8A28);
    }
  }
}

uint64_t sub_21879B064(void *a1)
{
  v2 = sub_219BE1BF4();
  MEMORY[0x28223BE20](v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21879B28C(0, &unk_280EE7268, MEMORY[0x277D6C980], MEMORY[0x277D6CEE8]);
  result = sub_219BE1DE4();
  if (result)
  {
    sub_218701B9C(&qword_280EE7E70, MEMORY[0x277D6CA70]);
    sub_21879B28C(0, &qword_280E8F610, MEMORY[0x277D6CA70], MEMORY[0x277D83940]);
    sub_218711654();

    sub_219BF7164();
    sub_2187981CC(0, &unk_280EE7230, qword_280EC0798, &protocol descriptor for RecipeBoxSearchStoreType, MEMORY[0x277D6CEE8]);
    swift_allocObject();
    v4 = sub_219BE2D14();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21879B28C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_21879B32C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21879B374(uint64_t a1, uint64_t a2)
{
  result = sub_21879B32C(&qword_280EC3CE8, a2, type metadata accessor for RecipeBoxSearchDatabase);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for RecipeBoxSearchStartupTask()
{
  result = qword_280EBA7B0;
  if (!qword_280EBA7B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21879B418()
{
  result = sub_219BE2C14();
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

uint64_t sub_21879B4C4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI226RecipeBoxSearchStartupTask_executionPhase;
  v5 = sub_219BE2C14();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_21879B540(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for FoodHubSetupStartupTask();
  MEMORY[0x28223BE20](v3);
  v5 = &v15[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186D6710(0, &qword_280EC5430);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C6148(0, &qword_280E8E350);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v9 = result;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C6148(0, &qword_280E8E6A0);
  result = sub_219BE1E24();
  if (result)
  {
    v10 = result;
    v11 = *MEMORY[0x277D6CE30];
    v12 = sub_219BE2C14();
    (*(*(v12 - 8) + 104))(v5, v11, v12);
    *&v5[v3[5]] = v7;
    *&v5[v3[6]] = v8;
    *&v5[v3[7]] = v9;
    *&v5[v3[8]] = v10;
    v15[3] = v3;
    v15[4] = sub_2186D5C5C(&qword_280EC4F80, type metadata accessor for FoodHubSetupStartupTask);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
    sub_21876FD58(v5, boxed_opaque_existential_1, type metadata accessor for FoodHubSetupStartupTask);
    sub_219BE2794();
    sub_21876FDC0(v5, type metadata accessor for FoodHubSetupStartupTask);
    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for FoodHubSetupStartupTask()
{
  result = qword_280EC4F68;
  if (!qword_280EC4F68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21879B834()
{
  result = sub_219BE2C14();
  if (v1 <= 0x3F)
  {
    result = sub_2186D6710(319, &qword_280E8DCA0);
    if (v2 <= 0x3F)
    {
      result = sub_2186D6710(319, &qword_280EC5430);
      if (v3 <= 0x3F)
      {
        result = sub_2186C6148(319, &qword_280E8E350);
        if (v4 <= 0x3F)
        {
          result = sub_2186C6148(319, &qword_280E8E6A0);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_21879B940@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_219BE2C14();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_21879B9A8()
{
  v0 = type metadata accessor for TipKitStartupTask();
  v1 = swift_allocObject();
  v2 = OBJC_IVAR____TtC7NewsUI217TipKitStartupTask_executionPhase;
  v3 = *MEMORY[0x277D6CE38];
  v4 = sub_219BE2C14();
  (*(*(v4 - 8) + 104))(v1 + v2, v3, v4);
  v6[3] = v0;
  v6[4] = sub_2186D5C5C(&qword_280ED48E8, type metadata accessor for TipKitStartupTask);
  v6[0] = v1;
  sub_219BE2794();
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t type metadata accessor for TipKitStartupTask()
{
  result = qword_280ED48D0;
  if (!qword_280ED48D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21879BAEC()
{
  result = sub_219BE2C14();
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

uint64_t sub_21879BB7C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI217TipKitStartupTask_executionPhase;
  v5 = sub_219BE2C14();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_21879BBF8(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, qword_280E99B90);
  result = sub_219BE1E34();
  if (v11)
  {
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_2186C6148(0, &qword_280E8E890);
    result = sub_219BE1E24();
    if (result)
    {
      v4 = result;
      v5 = type metadata accessor for DemoStartupTask();
      v6 = swift_allocObject();
      v7 = OBJC_IVAR____TtC7NewsUI215DemoStartupTask_executionPhase;
      v8 = *MEMORY[0x277D6CE40];
      v9 = sub_219BE2C14();
      (*(*(v9 - 8) + 104))(v6 + v7, v8, v9);
      sub_2186CB1F0(&v10, v6 + OBJC_IVAR____TtC7NewsUI215DemoStartupTask_engagementTriggerStateStore);
      *(v6 + OBJC_IVAR____TtC7NewsUI215DemoStartupTask_userInfo) = v4;
      v11 = v5;
      v12 = sub_2186D5C5C(&qword_280EDAA30, type metadata accessor for DemoStartupTask);
      *&v10 = v6;
      sub_219BE2794();
      return __swift_destroy_boxed_opaque_existential_1(&v10);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for DemoStartupTask()
{
  result = qword_280EDAA20;
  if (!qword_280EDAA20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21879BDFC()
{
  result = sub_219BE2C14();
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

uint64_t sub_21879BEA4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI215DemoStartupTask_executionPhase;
  v5 = sub_219BE2C14();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_21879BF20(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v2 = type metadata accessor for OptimizedStorageStartupTask();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5[3] = v2;
    v5[4] = sub_2186D560C(qword_280EB7BA8, type metadata accessor for OptimizedStorageStartupTask);
    v5[0] = v4;
    sub_219BE2794();
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21879C010@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D6CE38];
  v3 = sub_219BE2C14();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_21879C084(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, qword_280EBAF28);
  result = sub_219BE1E34();
  if (v8)
  {
    sub_2186C709C(0, &unk_280EE7A70);
    if (swift_dynamicCast())
    {
      sub_2186CB1F0(v6, v9);
      sub_219BE2794();
      __swift_destroy_boxed_opaque_existential_1(v9);
    }

    else
    {
      v7 = 0;
      memset(v6, 0, sizeof(v6));
      sub_218CF6EB8(v6, &unk_27CC23768, &unk_280EE7A70);
    }

    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v4 = type metadata accessor for UserNotificationBadgeAuthorizationFixer();
    result = sub_219BE1E24();
    if (result)
    {
      v5 = result;
      v9[3] = v4;
      v9[4] = sub_21871D29C(qword_280E967A0, type metadata accessor for UserNotificationBadgeAuthorizationFixer);
      v9[0] = v5;

      sub_219BE2794();

      return __swift_destroy_boxed_opaque_existential_1(v9);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21879C23C()
{
  sub_2186C709C(0, qword_280EBAF28);
  sub_219BE2914();

  sub_2186C709C(0, &qword_280E95F48);
  sub_219BE2914();

  type metadata accessor for UserNotificationBadgeAuthorizationFixer();
  sub_219BE2904();

  sub_2186C709C(0, &unk_280E9AD50);
  sub_219BE2914();
}

uint64_t sub_21879C398()
{
  type metadata accessor for AMSNotificationHandler();
  sub_219BE2904();

  type metadata accessor for ArticleNotificationResponseHandler();
  sub_219BE2904();

  type metadata accessor for EndOfTrackNotificationResponseHandler();
  sub_219BE2904();

  type metadata accessor for IssueNotificationResponseHandler();
  sub_219BE2904();

  type metadata accessor for PuzzleStreakNotificationResponseHandler();
  sub_219BE2904();

  type metadata accessor for RemoteNotificationArrivalHandler();
  sub_219BE2904();

  type metadata accessor for SupportNotificationResponseHandler();
  sub_219BE2904();

  type metadata accessor for URLNotificationResponseHandler();
  sub_219BE2904();

  type metadata accessor for UserNotificationsOpenSettingsHandler();
  sub_219BE2904();
}

uint64_t sub_21879C708(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_219BE2904();
}

uint64_t sub_21879C7D4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E9AD50);
  result = sub_219BE1E34();
  if (v25)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
    MEMORY[0x28223BE20](v4);
    v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for NotificationCategoriesRegisterer();
    v22 = v9;
    v23 = &off_282A60510;
    v21[0] = v8;
    v10 = type metadata accessor for NotificationRegisterer();
    v11 = objc_allocWithZone(v10);
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
    MEMORY[0x28223BE20](v12);
    v14 = (&v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v20[3] = v9;
    v20[4] = &off_282A60510;
    v20[0] = v16;
    sub_218718690(v20, v11 + OBJC_IVAR____TtC7NewsUI222NotificationRegisterer_categoriesRegisterer);
    v19.receiver = v11;
    v19.super_class = v10;
    v17 = objc_msgSendSuper2(&v19, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v20);
    __swift_destroy_boxed_opaque_existential_1(v21);
    result = __swift_destroy_boxed_opaque_existential_1(v24);
    a2[3] = v10;
    a2[4] = &off_282A47650;
    *a2 = v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21879CA38@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EC4290);
  result = sub_219BE1E34();
  if (v7)
  {
    v4 = type metadata accessor for NotificationCategoriesRegisterer();
    v5 = swift_allocObject();
    result = sub_2186CB1F0(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_282A60510;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21879CB38(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E95F48);
  result = sub_219BE1E34();
  v2 = v6;
  if (v6)
  {
    type metadata accessor for UserNotificationBadgeAuthorizationFixer();
    v3 = swift_allocObject();
    v4 = v7;
    __swift_project_boxed_opaque_existential_1(v5, v6);
    *(v3 + 16) = (*(v4 + 8))(v2, v4);
    __swift_destroy_boxed_opaque_existential_1(v5);
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21879CC08(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EC4290);
  result = sub_219BE1E34();
  if (v3)
  {
    sub_2186CB1F0(&v2, v4);
    sub_2186C709C(0, &qword_280E95F48);
    return swift_dynamicCast();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21879CCD8(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &qword_280EA6BB0);
  result = sub_219BE1E34();
  if (!v39)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, qword_280EB9630);
  result = sub_219BE1E34();
  if (!v37)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v29[3] = a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &qword_280EE6520);
  result = sub_219BE1E34();
  if (v35)
  {
    v5 = __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
    v29[2] = v29;
    MEMORY[0x28223BE20](v5);
    v7 = (v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7);
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v36, v37);
    v29[1] = v29;
    MEMORY[0x28223BE20](v9);
    v11 = (v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = *v7;
    v14 = *v11;
    v15 = type metadata accessor for EngagementUpsellOfferManager(0);
    v33[3] = v15;
    v33[4] = &off_282A5DA78;
    v33[0] = v13;
    v16 = type metadata accessor for AppReviewRequestManager();
    v32 = &off_282A5C1B0;
    v31 = v16;
    v30[0] = v14;
    v17 = type metadata accessor for EngagementStartupTask();
    v18 = swift_allocObject();
    v19 = __swift_mutable_project_boxed_opaque_existential_1(v33, v15);
    MEMORY[0x28223BE20](v19);
    v21 = (v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v22 + 16))(v21);
    v23 = __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
    MEMORY[0x28223BE20](v23);
    v25 = (v29 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v26 + 16))(v25);
    v27 = *v21;
    v28 = *v25;
    v18[5] = v15;
    v18[6] = &off_282A5DA78;
    v18[7] = v28;
    v18[2] = v27;
    v18[10] = v16;
    v18[11] = &off_282A5C1B0;
    sub_2186CB1F0(&v34, (v18 + 12));
    __swift_destroy_boxed_opaque_existential_1(v30);
    __swift_destroy_boxed_opaque_existential_1(v33);
    __swift_destroy_boxed_opaque_existential_1(v36);
    __swift_destroy_boxed_opaque_existential_1(v38);
    v39 = v17;
    v40 = sub_21875A3B0(&unk_280ECB378, type metadata accessor for EngagementStartupTask);
    v38[0] = v18;
    sub_219BE2794();
    return __swift_destroy_boxed_opaque_existential_1(v38);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_21879D1F0()
{
  v0 = type metadata accessor for SportsManagementStartupTask();
  v1 = swift_allocObject();
  v3[3] = v0;
  v3[4] = sub_21879D2B0(&qword_280EB6C60, type metadata accessor for SportsManagementStartupTask);
  v3[0] = v1;
  sub_219BE2794();
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t sub_21879D2B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21879D2FC(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v2 = type metadata accessor for TransactionObserverStartupTask();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5[3] = v2;
    v5[4] = sub_21871C950(&qword_280EAA260, type metadata accessor for TransactionObserverStartupTask);
    v5[0] = v4;
    sub_219BE2794();
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21879D3C4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for NoOpPaymentTransactionObserver();
  result = sub_219BE1E24();
  if (result)
  {
    v2 = result;
    type metadata accessor for TransactionObserverStartupTask();
    result = swift_allocObject();
    *(result + 16) = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_21879D434()
{
  v0 = objc_allocWithZone(type metadata accessor for NoOpPaymentTransactionObserver());

  return [v0 init];
}

uint64_t sub_21879D4AC(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v2 = type metadata accessor for AudioPlaylistSweeper();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5[3] = v2;
    v5[4] = sub_21870788C(&unk_280ECF330, type metadata accessor for AudioPlaylistSweeper);
    v5[0] = v4;
    sub_219BE2794();
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21879D574(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280E927D0);
  result = sub_219BE1E34();
  if (v4)
  {
    sub_2186CB1F0(&v3, v5);
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    sub_219BED2A4();
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21879D638(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_21879D6A4(uint64_t a1)
{
  sub_21879D638(0, &qword_280EE72B0, MEMORY[0x277D6CEA0]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_2194B78E0();
    v8 = sub_219BF75B4();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_218819864(v10, v6, &qword_280EE72B0, MEMORY[0x277D6CEA0], MEMORY[0x277D84F70] + 8, sub_21879D638);
      result = sub_21931F1F0(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_219BE2CB4();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      result = sub_218751558(&v6[v9], (v8[7] + 32 * v14));
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

uint64_t sub_21879D8D0()
{
  sub_21879D924();
  swift_allocObject();
  return sub_219BE30B4();
}

void sub_21879D924()
{
  if (!qword_280EE6900)
  {
    v0 = sub_219BE3114();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE6900);
    }
  }
}

uint64_t sub_21879D980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_219BED174();
  v22 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_219BED1D4();
  v13 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  sub_2186C6148(0, &qword_280E8E3B0);

  v17 = sub_219BF66A4();
  v18 = swift_allocObject();
  v18[2] = a5;
  v18[3] = sub_2187A913C;
  v18[4] = v16;
  v18[5] = a3;
  v18[6] = a4;
  aBlock[4] = sub_218820434;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_23;
  v19 = _Block_copy(aBlock);

  sub_219BED1A4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21879DD50(&qword_280E927E0, 255, MEMORY[0x277D85198]);
  sub_21879DD98();
  sub_21879DD50(&qword_280E8EFA0, 255, sub_21879DD98);
  sub_219BF7164();
  MEMORY[0x21CECD460](0, v15, v12, v19);
  _Block_release(v19);

  (*(v22 + 8))(v12, v10);
  return (*(v13 + 8))(v15, v21);
}

uint64_t sub_21879DCD0()
{

  return swift_deallocObject();
}

uint64_t sub_21879DD08()
{

  return swift_deallocObject();
}

uint64_t sub_21879DD50(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_21879DD98()
{
  if (!qword_280E8EFB0)
  {
    sub_219BED174();
    v0 = sub_219BF5B14();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8EFB0);
    }
  }
}

uint64_t sub_21879DE14()
{
  v1 = sub_219BDB1E4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [*(v0 + 16) narrativeAudio];
  if (qword_280E8D808 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_2186F20D4();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_219C09BA0;
  *&v16[0] = 0;
  *(&v16[0] + 1) = 0xE000000000000000;
  if (v5)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v5)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x21CECC330](v7, v8);

  v9 = v16[0];
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_2186FC3BC();
  *(v6 + 32) = v9;
  sub_219BE5314();

  v10 = *(v0 + 24);
  v11 = sub_219BF53D4();
  [v10 setBool:v5 forKey:v11];

  v12 = [objc_opt_self() defaultCenter];
  if (qword_280EAD508 != -1)
  {
    swift_once();
  }

  memset(v16, 0, sizeof(v16));
  v13 = qword_280EAD510;
  sub_219BDB1B4();
  v14 = sub_219BDB194();
  (*(v2 + 8))(v4, v1);
  [v12 postNotification_];

  sub_21879D924();
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_21879E0F0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_219BF5414();
  }

  sub_2186C66AC();
  result = sub_219BF6F54();
  qword_280F61710 = result;
  return result;
}

uint64_t sub_21879E1C0()
{
  result = sub_219BF53D4();
  qword_280EAD510 = result;
  return result;
}

uint64_t sub_21879E1F8()
{
  sub_21879D924();
  swift_allocObject();
  swift_weakInit();
  return sub_219BE2FC4();
}

uint64_t sub_21879E26C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21879E2C0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_280EE99C8 != -1)
    {
      swift_once();
    }

    type metadata accessor for DemoStartupTask();
    sub_21879E844();
    sub_219BDC7D4();
    if (v8)
    {
      if (qword_27CC08590 != -1)
      {
        swift_once();
      }

      v2 = sub_219BE5434();
      __swift_project_value_buffer(v2, qword_27CCD8A80);
      v3 = sub_219BE5414();
      v4 = sub_219BF6214();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&dword_2186C1000, v3, v4, "DemoStartupTask running startup task for foodDemo", v5, 2u);
        MEMORY[0x21CECF960](v5, -1, -1);
      }

      v6 = *(v1 + OBJC_IVAR____TtC7NewsUI215DemoStartupTask_engagementTriggerStateStore + 24);
      v7 = *(v1 + OBJC_IVAR____TtC7NewsUI215DemoStartupTask_engagementTriggerStateStore + 32);
      __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7NewsUI215DemoStartupTask_engagementTriggerStateStore), v6);
      (*(v7 + 16))(v6, v7);
      [*(v1 + OBJC_IVAR____TtC7NewsUI215DemoStartupTask_userInfo) resetRecipeBoxInitialImport];
    }
  }

  return result;
}

uint64_t sub_21879E498()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v10[15] = 0;
  sub_21879E66C();
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_280EE99D0 = result;
  return result;
}

void sub_21879E66C()
{
  if (!qword_280EE9098)
  {
    sub_21879E6C8();
    v0 = sub_219BDC9E4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE9098);
    }
  }
}

unint64_t sub_21879E6C8()
{
  result = qword_280EE92A8;
  if (!qword_280EE92A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE92A8);
  }

  return result;
}

uint64_t *sub_21879E71C@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_21879E73C()
{
  result = qword_280EE92B8;
  if (!qword_280EE92B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE92B8);
  }

  return result;
}

uint64_t sub_21879E790(uint64_t a1)
{
  v2 = sub_21879E7E4();
  v3 = MEMORY[0x277D6D120];

  return MEMORY[0x2821D2A20](a1, v2, v3);
}

unint64_t sub_21879E7E4()
{
  result = qword_280EE92B0;
  if (!qword_280EE92B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE92B0);
  }

  return result;
}

unint64_t sub_21879E844()
{
  result = qword_280EDAA38;
  if (!qword_280EDAA38)
  {
    type metadata accessor for DemoStartupTask();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EDAA38);
  }

  return result;
}

uint64_t sub_21879E89C()
{
  __swift_project_boxed_opaque_existential_1((*v0 + OBJC_IVAR____TtC7NewsUI222NotificationRegisterer_categoriesRegisterer), *(*v0 + OBJC_IVAR____TtC7NewsUI222NotificationRegisterer_categoriesRegisterer + 24));
  sub_21879E8F4();
  sub_21879D924();
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_21879E8F4()
{
  sub_218725F94();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C5F9C0;
  *(inited + 32) = sub_21879EA6C();
  *(inited + 40) = sub_21879EF90();
  v2 = *MEMORY[0x277D30A50];
  sub_21879EF44();
  v3 = v2;
  v4 = sub_219BF5904();
  v5 = sub_219BF5904();
  v6 = [objc_opt_self() categoryWithIdentifier:v3 actions:v4 intentIdentifiers:v5 options:4];

  *(inited + 48) = v6;
  *(inited + 56) = sub_21879F1E4();
  *(inited + 64) = sub_21879F430();
  sub_21879F680(inited);
  v8 = v7;
  swift_setDeallocating();
  swift_arrayDestroy();
  v9 = v0[5];
  v10 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v9);
  (*(v10 + 120))(v8, v9, v10);
}

id sub_21879EA6C()
{
  v23 = MEMORY[0x277D84F90];
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  if ((*(v2 + 8))(v1, v2))
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = [objc_opt_self() bundleForClass_];
    sub_219BDB5E4();

    v5 = sub_219BF53D4();
    v6 = [objc_opt_self() iconWithSystemImageName_];

    v7 = sub_219BF53D4();
    v8 = sub_219BF53D4();

    v9 = [objc_opt_self() actionWithIdentifier:v7 title:v8 options:4 icon:v6];

    MEMORY[0x21CECC690]();
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_219BF5A14();
    }

    sub_219BF5A54();
  }

  type metadata accessor for Localized();
  v10 = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  v12 = sub_219BF53D4();
  v13 = [objc_opt_self() iconWithSystemImageName_];

  v14 = sub_219BF53D4();
  v15 = sub_219BF53D4();

  v16 = [objc_opt_self() actionWithIdentifier:v14 title:v15 options:0 icon:v13];

  MEMORY[0x21CECC690]();
  if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_219BF5A14();
  }

  sub_219BF5A54();
  v17 = *MEMORY[0x277D30A28];
  sub_21879EF44();
  v18 = v17;
  v19 = sub_219BF5904();

  v20 = sub_219BF5904();
  v21 = [objc_opt_self() categoryWithIdentifier:v18 actions:v19 intentIdentifiers:v20 options:4];

  return v21;
}

id sub_21879EEC8()
{
  v0 = [objc_opt_self() currentNotificationCenter];
  v1 = [v0 supportsContentExtensions];

  return v1;
}

unint64_t sub_21879EF44()
{
  result = qword_280E8E190;
  if (!qword_280E8E190)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E8E190);
  }

  return result;
}

id sub_21879EF90()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  v2 = sub_219BF53D4();
  v3 = [objc_opt_self() iconWithSystemImageName_];

  v4 = sub_219BF53D4();
  v5 = sub_219BF53D4();

  v6 = [objc_opt_self() actionWithIdentifier:v4 title:v5 options:4 icon:v3];

  v7 = *MEMORY[0x277D30A30];
  sub_218725F94();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_219C146A0;
  *(v8 + 32) = v6;
  sub_21879EF44();
  v9 = v7;
  v10 = v6;
  v11 = sub_219BF5904();

  v12 = sub_219BF5904();
  v13 = [objc_opt_self() categoryWithIdentifier:v9 actions:v11 intentIdentifiers:v12 options:4];

  return v13;
}

id sub_21879F1E4()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  v2 = sub_219BF53D4();
  v3 = [objc_opt_self() iconWithSystemImageName_];

  v4 = sub_219BF53D4();
  v5 = sub_219BF53D4();

  v6 = [objc_opt_self() actionWithIdentifier:v4 title:v5 options:4 icon:v3];

  v7 = *MEMORY[0x277D30A40];
  sub_218725F94();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_219C146A0;
  *(v8 + 32) = v6;
  sub_21879EF44();
  v9 = v7;
  v10 = v6;
  v11 = sub_219BF5904();

  v12 = sub_219BF5904();
  v13 = [objc_opt_self() categoryWithIdentifier:v9 actions:v11 intentIdentifiers:v12 options:4];

  return v13;
}

id sub_21879F430()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  v2 = sub_219BF53D4();
  v3 = [objc_opt_self() iconWithSystemImageName_];

  v4 = sub_219BF53D4();
  v5 = sub_219BF53D4();

  v6 = [objc_opt_self() actionWithIdentifier:v4 title:v5 options:4 icon:v3];

  v7 = *MEMORY[0x277D30A60];
  sub_218725F94();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_219C146A0;
  *(v8 + 32) = v6;
  sub_21879EF44();
  v9 = v7;
  v10 = v6;
  v11 = sub_219BF5904();

  v12 = sub_219BF5904();
  v13 = [objc_opt_self() categoryWithIdentifier:v9 actions:v11 intentIdentifiers:v12 options:4];

  return v13;
}

void sub_21879F680(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_219BF7214())
    {
LABEL_3:
      sub_21879F984(0, &unk_280E8D600, &qword_280E8DFB0, 0x277CE1F98, &qword_280E8DFA0);
      v3 = sub_219BF72E4();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_219BF7214();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = MEMORY[0x21CECE0F0](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_219BF6DC4();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_2186C6148(0, &qword_280E8DFB0);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_219BF6DD4();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_219BF6DC4();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_2186C6148(0, &qword_280E8DFB0);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_219BF6DD4();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_21879F984(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_2186C6148(255, a3);
    sub_21879FA10(a5, a3);
    v8 = sub_219BF72F4();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_21879FA10(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_2186C6148(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_21879FA60()
{
  v0 = [objc_opt_self() currentNotificationCenter];
  sub_2186C6148(0, &qword_280E8DFB0);
  sub_21879FB14();
  v1 = sub_219BF5D34();
  [v0 setNotificationCategories_];
}

unint64_t sub_21879FB14()
{
  result = qword_280E8DFA0;
  if (!qword_280E8DFA0)
  {
    sub_2186C6148(255, &qword_280E8DFB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8DFA0);
  }

  return result;
}

uint64_t sub_21879FB7C()
{
  sub_21879D924();
  swift_allocObject();
  return sub_219BE30B4();
}

uint64_t sub_21879FBD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_219BE1F84();
  v9 = swift_allocObject();
  v9[2] = a5;
  v9[3] = sub_2187A913C;
  v9[4] = v8;

  sub_219BE1F74();
}

uint64_t sub_21879FCAC()
{

  return swift_deallocObject();
}

uint64_t sub_21879FCE4()
{

  return swift_deallocObject();
}

uint64_t sub_21879FD24()
{
  if (qword_280EE98D8 != -1)
  {
    swift_once();
  }

  sub_21879FFB0(&qword_280EB6C68);
  sub_219BDCA54();
  sub_21879D924();
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_21879FDE4()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC944();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D0A8]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v8[15] = 0;
  sub_2186C6588(0, &qword_280EE9078);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_280EE98E0 = result;
  return result;
}

uint64_t sub_21879FFB0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SportsManagementStartupTask();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2187A0030(void *a1, uint64_t (*a2)(uint64_t))
{
  v4 = sub_219BE3514();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1 + 12, a1[15]);
  (*(v5 + 104))(v7, *MEMORY[0x277D314F8], v4);
  v8 = sub_219BE3BE4();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    if (qword_280EE60A0 != -1)
    {
      swift_once();
    }

    v9 = sub_219BE5434();
    __swift_project_value_buffer(v9, qword_280F627F0);
    v10 = sub_219BE5414();
    v11 = sub_219BF6214();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2186C1000, v10, v11, "Found active todayFeedMastheadBanner configuration. Refreshing best offer.", v12, 2u);
      MEMORY[0x21CECF960](v12, -1, -1);
    }

    __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);
    sub_2187AC958(0);
  }

  __swift_project_boxed_opaque_existential_1(a1 + 7, a1[10]);
  v13 = off_282A5C1B8;
  type metadata accessor for AppReviewRequestManager();
  v14 = v13();
  return a2(v14);
}

uint64_t sub_2187A0298(uint64_t a1)
{
  v2 = v1;
  v4 = sub_219BE3514();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280EE60A0 != -1)
  {
    swift_once();
  }

  v8 = sub_219BE5434();
  __swift_project_value_buffer(v8, qword_280F627F0);
  (*(v5 + 16))(v7, a1, v4);
  v9 = sub_219BE5414();
  v10 = sub_219BF6214();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v21 = v1;
    v12 = v11;
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136315138;
    sub_2187A0588(&qword_280EE6670, MEMORY[0x277D31550]);
    v14 = sub_219BF7894();
    v16 = v15;
    (*(v5 + 8))(v7, v4);
    v17 = sub_2186D1058(v14, v16, &v22);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_2186C1000, v9, v10, "EngagementUpsellManager: checking active banner configuration for %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x21CECF960](v13, -1, -1);
    v18 = v12;
    v2 = v21;
    MEMORY[0x21CECF960](v18, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  if (sub_2187A0618(0, v2, a1))
  {
    v19 = 1;
  }

  else
  {
    v19 = sub_2187A0618(1, v2, a1);
  }

  return v19 & 1;
}

uint64_t sub_2187A0540(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2187A0588(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2187A05D0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2187A0618(char a1, uint64_t a2, uint64_t a3)
{
  v6 = MEMORY[0x277D315F8];
  sub_2187A0934(0, &qword_280EE6638, MEMORY[0x277D315F8]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - v8;
  sub_2187A0934(0, &qword_280EE65F8, MEMORY[0x277D31700]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v22 - v11;
  v13 = type metadata accessor for EngagementUpsellTriggerStateResult(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((a2 + 72), *(a2 + 96));
  sub_2187A0AEC(a1 & 1, a3, v15);
  sub_2187AC68C(v15, v9, &qword_280EE6638, v6);
  v16 = sub_219BE3754();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v9, 1, v16) == 1)
  {
    sub_2187AC7E8(v15, type metadata accessor for EngagementUpsellTriggerStateResult);
    sub_2187AC898(v9, &qword_280EE6638, MEMORY[0x277D315F8]);
    v18 = sub_219BE3864();
    (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
LABEL_4:
    v20 = 0;
    goto LABEL_5;
  }

  sub_219BE36E4();
  sub_2187AC7E8(v15, type metadata accessor for EngagementUpsellTriggerStateResult);
  (*(v17 + 8))(v9, v16);
  v19 = sub_219BE3864();
  v20 = 1;
  if ((*(*(v19 - 8) + 48))(v12, 1, v19) == 1)
  {
    goto LABEL_4;
  }

LABEL_5:
  sub_2187AC898(v12, &qword_280EE65F8, MEMORY[0x277D31700]);
  return v20;
}

void sub_2187A0934(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2187A09DC()
{
  sub_2187A09A8(319);
  if (v0 <= 0x3F)
  {
    sub_2186DEEA0(319, &qword_280E8F860);
    if (v1 <= 0x3F)
    {
      sub_218768188(319, &qword_280E8F558, sub_2187A0AB8, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2187A0AEC@<X0>(int a1@<W0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v98 = a2;
  v97 = a1;
  v5 = sub_219BE3B54();
  v89 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_219BE3BA4();
  v8 = *(v100 - 8);
  v9 = MEMORY[0x28223BE20](v100);
  v86 = v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v88 = v79 - v11;
  sub_2187A1504(0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v96 = v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v101 = v79 - v15;
  v16 = sub_219BE3754();
  v103 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v105 = v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v93 = v79 - v19;
  sub_218768188(0, &qword_280E8F930, sub_2187A1538, MEMORY[0x277D83D88]);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v102 = (v79 - v24);
  sub_21875A120(0);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = v3;
  swift_getObjectType();
  sub_219BE3934();
  v28 = sub_219BE3684();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_2187A3C6C(v27, sub_21875A120);
    (*(v103 + 56))(a3, 1, 1, v16);
    result = type metadata accessor for EngagementUpsellTriggerStateResult(0);
    v31 = 0;
    v32 = &a3[*(result + 20)];
    v33 = (result + 24);
    *v32 = 0;
    *(v32 + 1) = 0;
LABEL_29:
    *&a3[*v33] = v31;
  }

  else
  {
    v106 = v16;
    v84 = v7;
    v83 = v5;
    v85 = a3;
    v34 = sub_219BE3674();
    result = (*(v29 + 8))(v27, v28);
    v35 = 0;
    v37 = v34 + 64;
    v36 = *(v34 + 64);
    v92 = v34;
    v38 = 1 << *(v34 + 32);
    v39 = -1;
    if (v38 < 64)
    {
      v39 = ~(-1 << v38);
    }

    v40 = v39 & v36;
    v41 = (v38 + 63) >> 6;
    v90 = v103 + 16;
    v104 = (v103 + 32);
    v95 = (v8 + 48);
    v82 = (v8 + 32);
    v81 = (v8 + 16);
    v80 = (v8 + 8);
    v94 = (v103 + 8);
    v79[1] = v89 + 32;
    v87 = MEMORY[0x277D84F90];
    v42 = v23;
    v91 = v23;
    while (1)
    {
      v43 = v35;
      v44 = v106;
      if (!v40)
      {
        break;
      }

      while (1)
      {
        v45 = v43;
LABEL_15:
        v48 = __clz(__rbit64(v40));
        v40 &= v40 - 1;
        v49 = v48 | (v45 << 6);
        v50 = v93;
        v51 = (*(v92 + 48) + 16 * v49);
        v53 = *v51;
        v52 = v51[1];
        v54 = v103;
        (*(v103 + 16))(v93, *(v92 + 56) + *(v103 + 72) * v49, v44);
        sub_2187A1538();
        v55 = v44;
        v57 = v56;
        v58 = *(v56 + 48);
        v42 = v91;
        *v91 = v53;
        *(v42 + 8) = v52;
        (*(v54 + 32))(v42 + v58, v50, v55);
        (*(*(v57 - 8) + 56))(v42, 0, 1, v57);

        v47 = v45;
LABEL_16:
        v59 = v102;
        sub_2187A1ED8(v42, v102);
        sub_2187A1538();
        if ((*(*(v57 - 8) + 48))(v59, 1, v57) == 1)
        {

          a3 = v85;
          (*(v103 + 56))(v85, 1, 1, v106);
          result = type metadata accessor for EngagementUpsellTriggerStateResult(0);
          v76 = &a3[*(result + 20)];
          v33 = (result + 24);
          *v76 = 0;
          *(v76 + 1) = 0;
          v31 = v87;
          goto LABEL_29;
        }

        v60 = v59;
        v61 = *v59;
        v62 = v59[1];
        v63 = *(v57 + 48);
        v64 = v105;
        v65 = *v104;
        (*v104)(v105, v60 + v63, v106);
        v66 = v101;
        if (sub_2187A1F6C(v101, v64, v61, v62, v97, v98))
        {
          sub_2187A3C6C(v66, sub_2187A1504);

          a3 = v85;
          v77 = v106;
          v65(v85, v105, v106);
          (*(v103 + 56))(a3, 0, 1, v77);
          result = type metadata accessor for EngagementUpsellTriggerStateResult(0);
          v31 = 0;
          v78 = &a3[*(result + 20)];
          *v78 = v61;
          v78[1] = v62;
          v33 = (result + 24);
          goto LABEL_29;
        }

        v67 = v96;
        sub_2187A3CCC(v66, v96, sub_2187A1504);
        if ((*v95)(v67, 1, v100) != 1)
        {
          break;
        }

        sub_2187A3C6C(v66, sub_2187A1504);
        v44 = v106;
        (*v94)(v105, v106);
        result = sub_2187A3C6C(v67, sub_2187A1504);
        v43 = v47;
        if (!v40)
        {
          goto LABEL_8;
        }
      }

      v69 = v67;
      v70 = v88;
      v71 = v100;
      (*v82)(v88, v69, v100);
      (*v81)(v86, v70, v71);
      sub_219BE3B24();
      v72 = v87;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v72 = sub_2191FA368(0, v72[2] + 1, 1, v72);
      }

      v35 = v47;
      v74 = v72[2];
      v73 = v72[3];
      if (v74 >= v73 >> 1)
      {
        v72 = sub_2191FA368(v73 > 1, v74 + 1, 1, v72);
      }

      (*v80)(v88, v100);
      sub_2187A3C6C(v101, sub_2187A1504);
      (*v94)(v105, v106);
      v72[2] = v74 + 1;
      v75 = (*(v89 + 80) + 32) & ~*(v89 + 80);
      v87 = v72;
      result = (*(v89 + 32))(v72 + v75 + *(v89 + 72) * v74, v84, v83);
    }

LABEL_8:
    if (v41 <= v43 + 1)
    {
      v46 = v43 + 1;
    }

    else
    {
      v46 = v41;
    }

    v47 = v46 - 1;
    while (1)
    {
      v45 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      if (v45 >= v41)
      {
        sub_2187A1538();
        v57 = v68;
        (*(*(v68 - 8) + 56))(v42, 1, 1, v68);
        v40 = 0;
        goto LABEL_16;
      }

      v40 = *(v37 + 8 * v45);
      ++v43;
      if (v40)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_2187A1538()
{
  if (!qword_280E8F938)
  {
    sub_219BE3754();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8F938);
    }
  }
}

uint64_t sub_2187A15A4@<X0>(uint64_t a1@<X8>)
{
  sub_21875A100(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v14[-v7];
  v9 = OBJC_IVAR____TtC7NewsUI225EngagementFeatureSettings____lazy_storage___engagementUpsellConfig;
  swift_beginAccess();
  sub_2187A1798(v1 + v9, v8, sub_21875A100);
  sub_21875A120(0);
  v11 = v10;
  v12 = *(v10 - 8);
  if ((*(v12 + 48))(v8, 1, v10) != 1)
  {
    return sub_218F6F2E0(v8, a1, sub_21875A120);
  }

  sub_21876E2C0(v8, sub_21875A100);
  sub_2187A1800(v1, a1);
  sub_2187A1798(a1, v6, sub_21875A120);
  (*(v12 + 56))(v6, 0, 1, v11);
  swift_beginAccess();
  sub_2187A1E74(v6, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_2187A1798(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2187A1800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC7NewsUI225EngagementFeatureSettings_appConfiguration);
  if (([v3 respondsToSelector_] & 1) != 0 && (v4 = objc_msgSend(v3, sel_smarterMessagingConfig), v5 = objc_msgSend(v4, sel_engagementUpsellConfig), v4, v5) && (v6 = sub_219BF5214(), v5, v7 = sub_2187A1A2C(v6), , v7))
  {

    return MEMORY[0x28218EF40](v7);
  }

  else
  {
    if (qword_280EE60A0 != -1)
    {
      swift_once();
    }

    v8 = sub_219BE5434();
    __swift_project_value_buffer(v8, qword_280F627F0);
    v9 = sub_219BE5414();
    v10 = sub_219BF61F4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2186C1000, v9, v10, "No valid upsell configuration found", v11, 2u);
      MEMORY[0x21CECF960](v11, -1, -1);
    }

    v12 = sub_219BE3684();
    v13 = *(*(v12 - 8) + 56);

    return v13(a2, 1, 1, v12);
  }
}

uint64_t sub_2187A19F4()
{
  sub_219BDE714();
  swift_allocObject();
  return sub_219BDE704();
}

unint64_t sub_2187A1A2C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_2187A1CDC();
    v2 = sub_219BF75B4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_2187A1D40(*(a1 + 48) + 40 * v12, v27);
        sub_2186D1230(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_2187A1D40(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_2186D1230(v25 + 8, v20);
        sub_2187A1D9C(v24);
        v21 = v18;
        sub_218751558(v20, v22);
        v13 = v21;
        sub_218751558(v22, v23);
        sub_218751558(v23, &v21);
        result = sub_21870F700(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_1(v10);
          result = sub_218751558(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_218751558(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_2187A1D9C(v24);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void sub_2187A1CDC()
{
  if (!qword_280E8D068)
  {
    v0 = sub_219BF75C4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8D068);
    }
  }
}

uint64_t sub_2187A1D9C(uint64_t a1)
{
  sub_2187A1E14(0, &qword_280E8D770);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2187A1E14(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_2187A1E74(uint64_t a1, uint64_t a2)
{
  sub_21875A100(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2187A1ED8(uint64_t a1, uint64_t a2)
{
  sub_218768188(0, &qword_280E8F930, sub_2187A1538, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2187A1F6C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, uint64_t a6)
{
  v213 = a5;
  v217 = a3;
  v10 = sub_219BE1AE4();
  MEMORY[0x28223BE20](v10 - 8);
  v207 = &v198 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = type metadata accessor for EngagementUpsellTriggerState(0);
  MEMORY[0x28223BE20](v210);
  v218 = (&v198 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v216 = type metadata accessor for EngagementUpsellTriggerGroupStateKey(0);
  MEMORY[0x28223BE20](v216);
  v14 = (&v198 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_219BE3514();
  v225 = *(v15 - 8);
  v226 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v212 = &v198 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v209 = &v198 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v206 = &v198 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v205 = &v198 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v204 = &v198 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v203 = &v198 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v219 = &v198 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v202 = &v198 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v215 = &v198 - v33;
  MEMORY[0x28223BE20](v32);
  v35 = &v198 - v34;
  sub_2187A3C38(0);
  MEMORY[0x28223BE20](v36 - 8);
  v38 = &v198 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_219BE3864();
  v40 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v42 = &v198 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = a6;
  v220 = a2;
  sub_219BE36E4();
  if ((*(v40 + 48))(v38, 1, v39) == 1)
  {
    sub_2187A3C6C(v38, sub_2187A3C38);
    v43 = sub_219BE3BA4();
    (*(*(v43 - 8) + 56))(a1, 1, 1, v43);
    return 0;
  }

  v199 = v14;
  v44 = v40;
  v45 = *(v40 + 32);
  v221 = v42;
  v208 = v39;
  v45(v42, v38, v39);
  if (qword_280EE60A0 != -1)
  {
    swift_once();
  }

  v46 = sub_219BE5434();
  v47 = __swift_project_value_buffer(v46, qword_280F627F0);
  v49 = v225;
  v48 = v226;
  v222 = *(v225 + 16);
  v223 = v225 + 16;
  v222(v35, v227, v226);

  v211 = v47;
  v50 = sub_219BE5414();
  v51 = sub_219BF6214();

  v52 = os_log_type_enabled(v50, v51);
  v201 = a1;
  v200 = v44;
  if (v52)
  {
    v53 = swift_slowAlloc();
    v54 = v49;
    v55 = swift_slowAlloc();
    v230 = v55;
    *v53 = 136315394;
    sub_2187A0540(&qword_280EE6670, MEMORY[0x277D31550]);
    v56 = sub_219BF7894();
    v58 = v57;
    v214 = *(v54 + 8);
    v214(v35, v226);
    v59 = sub_2186D1058(v56, v58, &v230);
    v48 = v226;

    *(v53 + 4) = v59;
    *(v53 + 12) = 2080;
    v60 = v217;
    *(v53 + 14) = sub_2186D1058(v217, a4, &v230);
    _os_log_impl(&dword_2186C1000, v50, v51, "EngagementUpsellTriggerStateManager: Evaluating trigger %s for type %s", v53, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CECF960](v55, -1, -1);
    v61 = v53;
    v62 = v200;
    MEMORY[0x21CECF960](v61, -1, -1);
  }

  else
  {

    v214 = *(v49 + 8);
    v214(v35, v48);
    v62 = v44;
    v60 = v217;
  }

  v63 = v199;
  v222(v199 + *(v216 + 20), v227, v48);
  *v63 = v60;
  v63[1] = a4;

  v64 = v221;
  v65 = sub_219BE3854();
  v66 = sub_2187A3D68(v65, v63);
  v67 = v208;
  v68 = v215;
  if (v66)
  {
    v222(v215, v227, v48);
    v69 = sub_219BE5414();
    v70 = sub_219BF6214();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v230 = v72;
      *v71 = 136315138;
      sub_2187A0540(&qword_280EE6670, MEMORY[0x277D31550]);
      v73 = sub_219BF7894();
      v74 = v48;
      v75 = v73;
      v77 = v76;
      v214(v68, v74);
      v78 = sub_2186D1058(v75, v77, &v230);

      *(v71 + 4) = v78;
      _os_log_impl(&dword_2186C1000, v69, v70, "EngagementUpsellTriggerStateManager: Received new version for trigger %s. Resetting state", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v72);
      MEMORY[0x21CECF960](v72, -1, -1);
      MEMORY[0x21CECF960](v71, -1, -1);
    }

    else
    {

      v214(v68, v48);
    }

    v79 = sub_219BE3854();
    v80 = v224;
    sub_219BE1AB4();
    v81 = OBJC_IVAR____TtC7NewsUI235EngagementUpsellTriggerStateManager__triggerVersions;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v228 = *(v80 + v81);
    *(v80 + v81) = 0x8000000000000000;
    sub_21948DE18(v79, v63, isUniquelyReferenced_nonNull_native);
    *(v80 + v81) = v228;
    swift_endAccess();
    sub_219BE1AC4();
    v83 = sub_219BE3854();
    v84 = v210;
    v85 = *(v210 + 20);
    v86 = sub_219BDBD34();
    v87 = *(*(v86 - 8) + 56);
    v88 = v218;
    v87(v218 + v85, 1, 1, v86);
    v87(v88 + v84[6], 1, 1, v86);
    v87(v88 + v84[7], 1, 1, v86);
    *v88 = v83;
    *(v88 + v84[8]) = 0;
    v89 = (v80 + OBJC_IVAR____TtC7NewsUI235EngagementUpsellTriggerStateManager_store);
    v90 = *(v80 + OBJC_IVAR____TtC7NewsUI235EngagementUpsellTriggerStateManager_store + 24);
    v91 = *(v80 + OBJC_IVAR____TtC7NewsUI235EngagementUpsellTriggerStateManager_store + 32);
    __swift_project_boxed_opaque_existential_1((v80 + OBJC_IVAR____TtC7NewsUI235EngagementUpsellTriggerStateManager_store), v90);
    (*(v91 + 8))(&v230, v90, v91);
    v92 = v230;
    if (v230)
    {
      v93 = v231;
    }

    else
    {
      v92 = sub_2194AF0A8(MEMORY[0x277D84F90]);
      sub_219BE1AD4();
      sub_219BE1B04();
      swift_allocObject();
      v93 = sub_219BE1AF4();
    }

    v228 = v92;
    v229 = v93;

    v94 = v218;
    sub_21924261C(v63, v218, 0, &v230);

    v95 = v230;
    v96 = v231;
    v97 = v89[3];
    v98 = v89[4];
    __swift_project_boxed_opaque_existential_1(v89, v97);
    v230 = v95;
    v231 = v96;
    v99 = *(v98 + 24);

    v99(&v230, v97, v98);

    sub_2187A3C6C(v94, type metadata accessor for EngagementUpsellTriggerState);
    v62 = v200;
    v64 = v221;
    v48 = v226;
  }

  v100 = v220;
  v101 = sub_2187AAAF4();
  v102 = v219;
  if ((v101 & 1) == 0)
  {
    v114 = v67;
    v115 = v212;
    v222(v212, v227, v48);
    v116 = v48;
    v117 = sub_219BE5414();
    v118 = sub_219BF6214();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      v230 = v120;
      *v119 = 136315138;
      sub_2187A0540(&qword_280EE6670, MEMORY[0x277D31550]);
      v121 = sub_219BF7894();
      v122 = v115;
      v124 = v123;
      v214(v122, v116);
      v125 = sub_2186D1058(v121, v124, &v230);

      *(v119 + 4) = v125;
      _os_log_impl(&dword_2186C1000, v117, v118, "EngagementUpsellTriggerStateManager: skipping [invalid news version] trigger %s", v119, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v120);
      MEMORY[0x21CECF960](v120, -1, -1);
      MEMORY[0x21CECF960](v119, -1, -1);

      sub_2187A3C6C(v63, type metadata accessor for EngagementUpsellTriggerGroupStateKey);
      (*(v62 + 8))(v221, v114);
    }

    else
    {

      v214(v115, v116);
      sub_2187A3C6C(v63, type metadata accessor for EngagementUpsellTriggerGroupStateKey);
      (*(v62 + 8))(v64, v114);
    }

    v138 = MEMORY[0x277D31858];
    goto LABEL_48;
  }

  if ((sub_2187AAF28(v100, v213) & 1) == 0)
  {
    v126 = v67;
    v127 = v209;
    v222(v209, v227, v48);
    v128 = v48;
    v129 = sub_219BE5414();
    v130 = sub_219BF6214();
    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v230 = v132;
      *v131 = 136315138;
      sub_2187A0540(&qword_280EE6670, MEMORY[0x277D31550]);
      v133 = sub_219BF7894();
      v134 = v127;
      v136 = v135;
      v214(v134, v128);
      v137 = sub_2186D1058(v133, v136, &v230);

      *(v131 + 4) = v137;
      _os_log_impl(&dword_2186C1000, v129, v130, "EngagementUpsellTriggerStateManager: skipping [invalid paid eligibility] trigger %s", v131, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v132);
      MEMORY[0x21CECF960](v132, -1, -1);
      MEMORY[0x21CECF960](v131, -1, -1);

      sub_2187A3C6C(v63, type metadata accessor for EngagementUpsellTriggerGroupStateKey);
      (*(v62 + 8))(v221, v126);
    }

    else
    {

      v214(v127, v128);
      sub_2187A3C6C(v63, type metadata accessor for EngagementUpsellTriggerGroupStateKey);
      (*(v62 + 8))(v64, v126);
    }

    v138 = MEMORY[0x277D31868];
    goto LABEL_48;
  }

  if ((sub_2187AB374(v100, v63) & 1) == 0)
  {
    v139 = v206;
    v222(v206, v227, v48);
    v140 = v48;
    v141 = sub_219BE5414();
    v142 = sub_219BF6214();
    if (os_log_type_enabled(v141, v142))
    {
      v143 = v64;
      v144 = swift_slowAlloc();
      v145 = swift_slowAlloc();
      v230 = v145;
      *v144 = 136315138;
      sub_2187A0540(&qword_280EE6670, MEMORY[0x277D31550]);
      v146 = sub_219BF7894();
      v147 = v139;
      v149 = v148;
      v214(v147, v140);
      v150 = sub_2186D1058(v146, v149, &v230);

      *(v144 + 4) = v150;
      _os_log_impl(&dword_2186C1000, v141, v142, "EngagementUpsellTriggerStateManager: skipping [expired] trigger %s", v144, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v145);
      MEMORY[0x21CECF960](v145, -1, -1);
      MEMORY[0x21CECF960](v144, -1, -1);

      sub_2187A3C6C(v63, type metadata accessor for EngagementUpsellTriggerGroupStateKey);
      (*(v62 + 8))(v143, v208);
    }

    else
    {

      v214(v139, v140);
      sub_2187A3C6C(v63, type metadata accessor for EngagementUpsellTriggerGroupStateKey);
      (*(v62 + 8))(v64, v208);
    }

    v138 = MEMORY[0x277D31880];
    goto LABEL_48;
  }

  if (sub_2187AB874(v100, v63))
  {
    v103 = v205;
    v222(v205, v227, v48);
    v104 = sub_219BE5414();
    v105 = sub_219BF6214();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = v64;
      v107 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v230 = v108;
      *v107 = 136315138;
      sub_2187A0540(&qword_280EE6670, MEMORY[0x277D31550]);
      v109 = sub_219BF7894();
      v110 = v103;
      v112 = v111;
      v214(v110, v48);
      v113 = sub_2186D1058(v109, v112, &v230);

      *(v107 + 4) = v113;
      _os_log_impl(&dword_2186C1000, v104, v105, "EngagementUpsellTriggerStateManager: skipping [reached max presentations] trigger %s", v107, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v108);
      MEMORY[0x21CECF960](v108, -1, -1);
      MEMORY[0x21CECF960](v107, -1, -1);

      sub_2187A3C6C(v63, type metadata accessor for EngagementUpsellTriggerGroupStateKey);
      (*(v62 + 8))(v106, v208);
    }

    else
    {

      v214(v103, v48);
      sub_2187A3C6C(v63, type metadata accessor for EngagementUpsellTriggerGroupStateKey);
      (*(v62 + 8))(v64, v208);
    }

    v138 = MEMORY[0x277D31878];
    goto LABEL_48;
  }

  if ((sub_2187ABB48(v100, v63) & 1) == 0)
  {
    v163 = v204;
    v222(v204, v227, v48);
    v164 = sub_219BE5414();
    v165 = sub_219BF6214();
    if (os_log_type_enabled(v164, v165))
    {
      v166 = swift_slowAlloc();
      v167 = v67;
      v168 = swift_slowAlloc();
      v230 = v168;
      *v166 = 136315138;
      sub_2187A0540(&qword_280EE6670, MEMORY[0x277D31550]);
      v169 = sub_219BF7894();
      v170 = v163;
      v172 = v171;
      v214(v170, v48);
      v173 = sub_2186D1058(v169, v172, &v230);

      *(v166 + 4) = v173;
      v174 = "EngagementUpsellTriggerStateManager: skipping [quiescence] trigger %s";
LABEL_45:
      _os_log_impl(&dword_2186C1000, v164, v165, v174, v166, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v168);
      MEMORY[0x21CECF960](v168, -1, -1);
      MEMORY[0x21CECF960](v166, -1, -1);

      sub_2187A3C6C(v63, type metadata accessor for EngagementUpsellTriggerGroupStateKey);
      (*(v62 + 8))(v221, v167);
LABEL_47:
      v138 = MEMORY[0x277D31860];
LABEL_48:
      v180 = *v138;
      v181 = sub_219BE3BA4();
      v182 = *(v181 - 8);
      v183 = v201;
      (*(v182 + 104))(v201, v180, v181);
      (*(v182 + 56))(v183, 0, 1, v181);
      return 0;
    }

LABEL_46:

    v214(v163, v48);
    sub_2187A3C6C(v63, type metadata accessor for EngagementUpsellTriggerGroupStateKey);
    (*(v62 + 8))(v64, v67);
    goto LABEL_47;
  }

  if ((sub_2187AC158(v100, v63) & 1) == 0)
  {
    v163 = v203;
    v222(v203, v227, v48);
    v164 = sub_219BE5414();
    v165 = sub_219BF6214();
    if (os_log_type_enabled(v164, v165))
    {
      v166 = swift_slowAlloc();
      v167 = v67;
      v168 = swift_slowAlloc();
      v230 = v168;
      *v166 = 136315138;
      sub_2187A0540(&qword_280EE6670, MEMORY[0x277D31550]);
      v175 = sub_219BF7894();
      v176 = v163;
      v178 = v177;
      v214(v176, v48);
      v179 = sub_2186D1058(v175, v178, &v230);

      *(v166 + 4) = v179;
      v174 = "EngagementUpsellTriggerStateManager: skipping [engaged quiescence] trigger %s";
      goto LABEL_45;
    }

    goto LABEL_46;
  }

  swift_getObjectType();
  v151 = sub_219BE9B24();
  if (v151 < sub_219BE3704())
  {
    v152 = v226;
    v222(v102, v227, v226);
    v153 = sub_219BE5414();
    v154 = sub_219BF6214();
    if (os_log_type_enabled(v153, v154))
    {
      v155 = swift_slowAlloc();
      v156 = v67;
      v157 = swift_slowAlloc();
      v230 = v157;
      *v155 = 136315138;
      sub_2187A0540(&qword_280EE6670, MEMORY[0x277D31550]);
      v158 = sub_219BF7894();
      v159 = v102;
      v161 = v160;
      v214(v159, v152);
      v162 = sub_2186D1058(v158, v161, &v230);

      *(v155 + 4) = v162;
      _os_log_impl(&dword_2186C1000, v153, v154, "EngagementUpsellTriggerStateManager: skipping [required app launch count] trigger %s", v155, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v157);
      MEMORY[0x21CECF960](v157, -1, -1);
      MEMORY[0x21CECF960](v155, -1, -1);

      sub_2187A3C6C(v63, type metadata accessor for EngagementUpsellTriggerGroupStateKey);
      (*(v62 + 8))(v221, v156);
    }

    else
    {

      v214(v102, v152);
      sub_2187A3C6C(v63, type metadata accessor for EngagementUpsellTriggerGroupStateKey);
      (*(v62 + 8))(v64, v67);
    }

    v138 = MEMORY[0x277D31870];
    goto LABEL_48;
  }

  v185 = v202;
  v186 = v226;
  v222(v202, v227, v226);
  v187 = sub_219BE5414();
  v188 = sub_219BF6214();
  if (os_log_type_enabled(v187, v188))
  {
    v189 = swift_slowAlloc();
    v190 = v67;
    v191 = swift_slowAlloc();
    v230 = v191;
    *v189 = 136315138;
    sub_2187A0540(&qword_280EE6670, MEMORY[0x277D31550]);
    v192 = sub_219BF7894();
    v193 = v185;
    v195 = v194;
    v214(v193, v186);
    v196 = sub_2186D1058(v192, v195, &v230);

    *(v189 + 4) = v196;
    _os_log_impl(&dword_2186C1000, v187, v188, "EngagementUpsellTriggerStateManager: found valid trigger for %s", v189, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v191);
    MEMORY[0x21CECF960](v191, -1, -1);
    MEMORY[0x21CECF960](v189, -1, -1);

    sub_2187A3C6C(v63, type metadata accessor for EngagementUpsellTriggerGroupStateKey);
    (*(v62 + 8))(v221, v190);
  }

  else
  {

    v214(v185, v186);
    sub_2187A3C6C(v63, type metadata accessor for EngagementUpsellTriggerGroupStateKey);
    (*(v62 + 8))(v64, v67);
  }

  v197 = sub_219BE3BA4();
  (*(*(v197 - 8) + 56))(v201, 1, 1, v197);
  return 1;
}

void sub_2187A3B00()
{
  sub_2186DDAC4(319, &qword_280EE9C40, MEMORY[0x277CC9578]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_2187A3BBC()
{
  result = sub_219BE3514();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2187A3C6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2187A3CCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

BOOL sub_2187A3D68(uint64_t a1, uint64_t a2)
{
  sub_2187A3D34(0);
  MEMORY[0x28223BE20](v5);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EngagementUpsellTriggerState(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v2 + OBJC_IVAR____TtC7NewsUI235EngagementUpsellTriggerStateManager_store + 24);
  v13 = *(v2 + OBJC_IVAR____TtC7NewsUI235EngagementUpsellTriggerStateManager_store + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC7NewsUI235EngagementUpsellTriggerStateManager_store), v12);
  v14 = (*(v13 + 8))(&v20, v12, v13);
  v15 = v20;
  if (!v20)
  {
    return 1;
  }

  v19[0] = a1;
  v19[1] = v19;
  v16 = v21;
  v20 = v21;
  MEMORY[0x28223BE20](v14);
  v19[-4] = v15;
  v19[-3] = v16;
  v19[-2] = a2;
  sub_219BE1B04();

  sub_219BE2D34();
  sub_2187A9CC4(v15);

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_2187A3C6C(v7, sub_2187A3D34);
    return 1;
  }

  sub_2187A9E04(v7, v11);
  v18 = *v11;
  sub_2187A3C6C(v11, type metadata accessor for EngagementUpsellTriggerState);
  return v18 < v19[0];
}

uint64_t sub_2187A4000@<X0>(void *a1@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = type metadata accessor for CookingKitExternalTracker();
  result = sub_219BE1E24();
  if (result)
  {
    v7 = result;
    a3[3] = v5;
    result = sub_2187A5050(a2, type metadata accessor for CookingKitExternalTracker);
    a3[4] = result;
    *a3 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2187A40C8()
{
  v1 = v0;
  sub_2186DD1E8(0, &qword_280EE9C40, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v27 - v3;
  v5 = sub_219BE5294();
  if (*(v5 + 16))
  {
    v6 = sub_21870F700(0xD00000000000001DLL, 0x8000000219CEC450);
    if (v7)
    {
      sub_2186D1230(*(v5 + 56) + 32 * v6, v29);
      if (swift_dynamicCast())
      {
        sub_219BDBC74();
        v8 = sub_219BDBD34();
        (*(*(v8 - 8) + 56))(v4, 0, 1, v8);
        v9 = OBJC_IVAR____TtC7NewsUI236QueryNewsPlusEngagementDonorProperty_lastMagazineOpenDate;
        swift_beginAccess();
        sub_218B9E4D4(v4, v1 + v9);
        swift_endAccess();
      }
    }
  }

  if (*(v5 + 16))
  {
    v10 = sub_21870F700(0xD000000000000014, 0x8000000219CEC300);
    if (v11)
    {
      sub_2186D1230(*(v5 + 56) + 32 * v10, v29);
      if ((swift_dynamicCast() & 1) != 0 && v28 <= 3)
      {
        *(v1 + OBJC_IVAR____TtC7NewsUI236QueryNewsPlusEngagementDonorProperty_churnPropensityLevel) = v28;
      }
    }
  }

  if (*(v5 + 16))
  {
    v12 = sub_21870F700(0xD000000000000022, 0x8000000219CEC3E0);
    if (v13)
    {
      sub_2186D1230(*(v5 + 56) + 32 * v12, v29);
      sub_2186D0C48(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
      if (swift_dynamicCast())
      {
        *(v1 + OBJC_IVAR____TtC7NewsUI236QueryNewsPlusEngagementDonorProperty_followedNewsPlusChannelIDs) = v28;
      }
    }
  }

  if (*(v5 + 16))
  {
    v14 = sub_21870F700(0xD000000000000016, 0x8000000219CEC410);
    if (v15)
    {
      sub_2186D1230(*(v5 + 56) + 32 * v14, v29);
      if ((swift_dynamicCast() & 1) != 0 && v28 <= 2)
      {
        *(v1 + OBJC_IVAR____TtC7NewsUI236QueryNewsPlusEngagementDonorProperty_trialEligibility) = v28;
      }
    }
  }

  if (*(v5 + 16))
  {
    v16 = sub_21870F700(0xD000000000000018, 0x8000000219CEC360);
    if (v17)
    {
      sub_2186D1230(*(v5 + 56) + 32 * v16, v29);
      if ((swift_dynamicCast() & 1) != 0 && v28 <= 2)
      {
        *(v1 + OBJC_IVAR____TtC7NewsUI236QueryNewsPlusEngagementDonorProperty_familySharingSetupStatus) = v28;
      }
    }
  }

  if (*(v5 + 16))
  {
    v18 = sub_21870F700(0xD000000000000017, 0x8000000219CEC380);
    if (v19)
    {
      sub_2186D1230(*(v5 + 56) + 32 * v18, v29);
      if (swift_dynamicCast())
      {
        *(v1 + OBJC_IVAR____TtC7NewsUI236QueryNewsPlusEngagementDonorProperty_isFamilySharingEligible) = v28;
      }
    }
  }

  if (*(v5 + 16))
  {
    v20 = sub_21870F700(0xD000000000000018, 0x8000000219CEC3A0);
    if (v21)
    {
      sub_2186D1230(*(v5 + 56) + 32 * v20, v29);
      if (swift_dynamicCast())
      {
        *(v1 + OBJC_IVAR____TtC7NewsUI236QueryNewsPlusEngagementDonorProperty_isFamilySharingOrganizer) = v28;
      }
    }
  }

  if (!*(v5 + 16))
  {
  }

  v22 = sub_21870F700(0xD00000000000001DLL, 0x8000000219CEC430);
  if ((v23 & 1) == 0)
  {
  }

  sub_2186D1230(*(v5 + 56) + 32 * v22, v29);

  result = swift_dynamicCast();
  if (result)
  {
    sub_219BDBC74();
    v25 = sub_219BDBD34();
    (*(*(v25 - 8) + 56))(v4, 0, 1, v25);
    v26 = OBJC_IVAR____TtC7NewsUI236QueryNewsPlusEngagementDonorProperty_lastPuzzlePlayedDate;
    swift_beginAccess();
    sub_218B9E4D4(v4, v1 + v26);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_2187A4650()
{
  v0 = sub_219BE2DF4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CookingKitExternalTracker();
  sub_219BE2904();
  (*(v1 + 104))(v3, *MEMORY[0x277D6CF00], v0);
  sub_219BE19F4();

  (*(v1 + 8))(v3, v0);
  sub_219BE19D4();
}

uint64_t EngagementUpsellTriggerGroupState.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v14 = a2;
  sub_2187A4BE4(0, &qword_280E8C9B8, sub_2187A4C4C, &type metadata for EngagementUpsellTriggerGroupState.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v13 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = sub_219BE1AE4();
  MEMORY[0x28223BE20](v8 - 8);
  sub_219BE1AD4();
  sub_219BE1B04();
  swift_allocObject();
  v9 = sub_219BE1AF4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187A4C4C();
  sub_219BF7B34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v11 = v13;
    v10 = v14;
    sub_2187A4FA4();
    sub_2187A5458();
    sub_219BF7734();
    (*(v11 + 8))(v7, v5);
    *v10 = v15;
    v10[1] = v9;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

void *sub_2187A4A30(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186CFDE4(0, &qword_280EE9E00);
  result = sub_219BE1E34();
  if (v3)
  {
    type metadata accessor for CookingKitExternalTracker();
    swift_allocObject();
    return sub_2187A4AC4(&v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_2187A4AC4(__int128 *a1)
{
  sub_2187A4CA0(0, &qword_280E8D598, sub_2187A4D10);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  v4 = MEMORY[0x277D84F98];
  *(v3 + 16) = MEMORY[0x277D84F98];
  v1[2] = v3;
  sub_2187A4CA0(0, &qword_280E8D590, sub_2187A4E64);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = v4;
  v1[3] = v5;
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = v4;
  v1[4] = v6;
  sub_2187A4F18();
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  v8 = MEMORY[0x277D84F90];
  *(v7 + 16) = MEMORY[0x277D84F90];
  v1[5] = v7;
  sub_219394944();
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 16) = v8;
  v1[6] = v9;
  sub_21875F93C(a1, (v1 + 7));
  return v1;
}

void sub_2187A4BE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_2187A4C4C()
{
  result = qword_280EA3880;
  if (!qword_280EA3880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA3880);
  }

  return result;
}

void sub_2187A4CA0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    type metadata accessor for os_unfair_lock_s(255);
    v4 = sub_219BF73A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2187A4D10()
{
  if (!qword_280E8FC00)
  {
    sub_2187A4DA8(255, &unk_280EE7110, MEMORY[0x277CEAEA8], MEMORY[0x277D6CEF0]);
    v0 = sub_219BF52A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8FC00);
    }
  }
}

void sub_2187A4DA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_2187A4E0C()
{
  result = qword_280EA3870;
  if (!qword_280EA3870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA3870);
  }

  return result;
}

void sub_2187A4E64()
{
  if (!qword_280E8FB80)
  {
    v0 = sub_219BF52A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8FB80);
    }
  }
}

unint64_t sub_2187A4EC4()
{
  result = qword_280EA3878;
  if (!qword_280EA3878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA3878);
  }

  return result;
}

void sub_2187A4F18()
{
  if (!qword_280E8D580)
  {
    sub_2186D0C48(255, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_219BF73A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8D580);
    }
  }
}

void sub_2187A4FA4()
{
  if (!qword_280E8FC40)
  {
    type metadata accessor for EngagementUpsellTriggerGroupStateKey(255);
    type metadata accessor for EngagementUpsellTriggerState(255);
    sub_2187A5098(&qword_280E9BA30, type metadata accessor for EngagementUpsellTriggerGroupStateKey);
    v0 = sub_219BF52A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8FC40);
    }
  }
}

uint64_t sub_2187A5050(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2187A5098(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2187A50E0(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186CFDE4(0, &unk_280EE73A0);
  result = sub_219BE1E34();
  if (v4)
  {
    sub_2186CB1F0(&v3, v5);
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    sub_2187A5050(&qword_280EBF148, type metadata accessor for CookingKitExternalTracker);
    sub_219BE29A4();
    __swift_destroy_boxed_opaque_existential_1(&v3);
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2187A5220(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6110);
  result = sub_219BE1E34();
  if (v7)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2187A53A0();
    result = sub_219BE1E24();
    if (result)
    {
      type metadata accessor for TopStoriesFinishedLoadingObserver();
      v3 = swift_allocObject();
      sub_219BE7B24();
      sub_218718690(v6, v5);
      v4 = swift_allocObject();
      sub_2186CB1F0(v5, v4 + 16);
      sub_219BE2714();

      __swift_destroy_boxed_opaque_existential_1(v6);
      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2187A5368()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

void sub_2187A53A0()
{
  if (!qword_280EE4F80)
  {
    type metadata accessor for TodayModel(255);
    sub_2186EB3E8();
    sub_2186F7D68(&qword_280EDF9E0, type metadata accessor for TodayModel);
    v0 = sub_219BE7B44();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE4F80);
    }
  }
}

unint64_t sub_2187A5458()
{
  result = qword_280E8FC30;
  if (!qword_280E8FC30)
  {
    sub_2187A4FA4();
    sub_2187A5098(&qword_280E9BA20, type metadata accessor for EngagementUpsellTriggerGroupStateKey);
    sub_2187A5098(&qword_280EB4740, type metadata accessor for EngagementUpsellTriggerState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8FC30);
  }

  return result;
}

uint64_t sub_2187A553C()
{
  sub_218731C8C(0, &qword_280EE4F80, MEMORY[0x277D6DC58]);
  swift_allocObject();
  return sub_219BE7B34();
}

_WORD *storeEnumTagSinglePayload for LatestStoriesTodayFeedGroup.CodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_2187A5628(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2187A5670(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2187A56B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2187A5700(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for LatestStoriesTodayFeedGroup.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

uint64_t EngagementUpsellTriggerGroupStateKey.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v22 = sub_219BE3514();
  v19 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187A4BE4(0, &qword_280E8C878, sub_2187A5F7C, &type metadata for EngagementUpsellTriggerGroupStateKey.CodingKeys, MEMORY[0x277D844C8]);
  v23 = v5;
  v21 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v18 - v6;
  v8 = type metadata accessor for EngagementUpsellTriggerGroupStateKey(0);
  MEMORY[0x28223BE20](v8);
  v10 = (v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187A5F7C();
  v11 = v24;
  sub_219BF7B34();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = a1;
  v13 = v21;
  v12 = v22;
  v26 = 0;
  *v10 = sub_219BF76F4();
  v10[1] = v14;
  v18[0] = v10;
  v18[1] = v14;
  v25 = 1;
  sub_2187A5098(&qword_280EE6678, MEMORY[0x277D31550]);
  sub_219BF7734();
  (*(v13 + 8))(v7, v23);
  v15 = *(v8 + 20);
  v16 = v18[0];
  (*(v19 + 32))(v18[0] + v15, v4, v12);
  sub_2187A7970(v16, v20, type metadata accessor for EngagementUpsellTriggerGroupStateKey);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return sub_2187A79D8(v16, type metadata accessor for EngagementUpsellTriggerGroupStateKey);
}

uint64_t sub_2187A5BE8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_219BE2C14();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186C6E00(v16);
  __swift_project_boxed_opaque_existential_1(v16, v17);
  sub_219BE27C4();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  __swift_destroy_boxed_opaque_existential_1(v16);
  if (a1)
  {
    sub_219BF5284();
  }

  (*(v5 + 104))(v7, *MEMORY[0x277D6CE38], v4);
  sub_219BE27A4();

  (*(v5 + 8))(v7, v4);
  sub_2186C6E00(v15);
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  sub_2186C709C(0, &unk_280EE7300);
  result = sub_219BE1E34();
  if (!v14)
  {
    goto LABEL_9;
  }

  sub_2186CB1F0(&v13, v16);
  __swift_destroy_boxed_opaque_existential_1(v15);
  __swift_project_boxed_opaque_existential_1(v16, v17);
  if (a1)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_219BE2CB4();
    sub_2187A5670(&qword_27CC0A758, type metadata accessor for LaunchOptionsKey);
    sub_2187A5670(&qword_27CC1ADA0, MEMORY[0x277D6CEA0]);
    sub_219BF5234();
  }

  sub_219BE2C24();

  v9 = objc_opt_self();
  v10 = [v9 defaultCenter];
  [v10 addObserver:v2 selector:sel_didEnterBackground name:*MEMORY[0x277D76660] object:0];

  v11 = [v9 defaultCenter];
  [v11 addObserver:v2 selector:sel_willEnterForeground name:*MEMORY[0x277D76758] object:0];

  __swift_destroy_boxed_opaque_existential_1(v16);
  return 1;
}

unint64_t sub_2187A5F7C()
{
  result = qword_280E9BA60;
  if (!qword_280E9BA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9BA60);
  }

  return result;
}

uint64_t sub_2187A5FD0()
{
  sub_21870F240(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE30B4();
}

void sub_2187A604C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_2187A60DC()
{
  result = qword_280E9BA50;
  if (!qword_280E9BA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9BA50);
  }

  return result;
}

uint64_t sub_2187A6130()
{
  v1 = sub_219BE15B4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + OBJC_IVAR____TtC7NewsUI234AppIntentsAppDependencyStartupTask_resolver);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI234AppIntentsAppDependencyStartupTask_resolver), *(v0 + OBJC_IVAR____TtC7NewsUI234AppIntentsAppDependencyStartupTask_resolver + 24));
  sub_2186D6710(0, &qword_280EC5430);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v8 = sub_2186C709C(0, &unk_280E90370);
  result = sub_219BE1E34();
  if (!*(&v99 + 1))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v91 = v4;
  v92 = v2;
  sub_2186CB1F0(&v98, v106);
  v9 = [v7 narrativeAudio];
  v90[1] = v7;
  if (!v9)
  {
    sub_219BDADF4();
    v22 = sub_219BDADE4();
    *&v93[0] = 0xD000000000000018;
    *(&v93[0] + 1) = 0x8000000219CF8350;
    sub_219BF72A4();
    sub_218718690(v5, v93);
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    sub_2186CB1F0(v93, v23 + 24);
    sub_2187A7904();
    v25 = v24;

    MEMORY[0x21CEB1B70](&v98, &unk_219C38968, v23, v25);

    sub_2187A783C(&v98);
LABEL_9:
    sub_219BDADF4();
    v26 = sub_219BDADE4();
    v100 = 0;
    v98 = 0u;
    v99 = 0u;
    sub_218718690(v5, v93);
    v27 = swift_allocObject();
    *(v27 + 16) = v26;
    sub_2186CB1F0(v93, v27 + 24);

    MEMORY[0x21CEB1B70](&v98, &unk_219C38978, v27, v8);

    sub_2187A783C(&v98);
    v28 = sub_219BDADE4();
    v100 = 0;
    v98 = 0u;
    v99 = 0u;
    sub_218718690(v5, v93);
    v29 = swift_allocObject();
    *(v29 + 16) = v28;
    sub_2186CB1F0(v93, v29 + 24);
    v30 = sub_2186C709C(0, &qword_280EE9E00);

    MEMORY[0x21CEB1B70](&v98, &unk_219C38988, v29, v30);

    sub_2187A783C(&v98);
    v31 = sub_219BDADE4();
    v100 = 0;
    v98 = 0u;
    v99 = 0u;
    sub_218718690(v5, v93);
    v32 = swift_allocObject();
    *(v32 + 16) = v31;
    sub_2186CB1F0(v93, v32 + 24);
    v33 = sub_2186C709C(0, &qword_280E927A0);

    MEMORY[0x21CEB1B70](&v98, &unk_219C38998, v32, v33);

    sub_2187A783C(&v98);
    v34 = sub_219BDADE4();
    v100 = 0;
    v98 = 0u;
    v99 = 0u;
    sub_218718690(v5, v93);
    v35 = swift_allocObject();
    *(v35 + 16) = v34;
    sub_2186CB1F0(v93, v35 + 24);
    v36 = sub_2186C709C(0, &unk_280E90270);

    MEMORY[0x21CEB1B70](&v98, &unk_219C389A8, v35, v36);

    sub_2187A783C(&v98);
    v37 = sub_219BDADE4();
    v100 = 0;
    v98 = 0u;
    v99 = 0u;
    sub_218718690(v5, v93);
    v38 = swift_allocObject();
    *(v38 + 16) = v37;
    sub_2186CB1F0(v93, v38 + 24);
    sub_2186CF94C();
    v40 = v39;

    MEMORY[0x21CEB1B70](&v98, &unk_219C389B8, v38, v40);

    sub_2187A783C(&v98);
    v41 = sub_219BDADE4();
    v100 = 0;
    v98 = 0u;
    v99 = 0u;
    sub_218718690(v5, v93);
    v42 = swift_allocObject();
    *(v42 + 16) = v41;
    sub_2186CB1F0(v93, v42 + 24);
    v43 = sub_2186C709C(0, &qword_280EE53A0);

    MEMORY[0x21CEB1B70](&v98, &unk_219C389C8, v42, v43);

    sub_2187A783C(&v98);
    v44 = sub_219BDADE4();
    v100 = 0;
    v98 = 0u;
    v99 = 0u;
    sub_218718690(v5, v93);
    v45 = swift_allocObject();
    *(v45 + 16) = v44;
    sub_2186CB1F0(v93, v45 + 24);
    v46 = sub_2186C709C(0, &qword_280EE9F20);

    MEMORY[0x21CEB1B70](&v98, &unk_219C389D8, v45, v46);

    sub_2187A783C(&v98);
    v47 = sub_219BDADE4();
    v100 = 0;
    v98 = 0u;
    v99 = 0u;
    sub_218718690(v5, v93);
    v48 = swift_allocObject();
    *(v48 + 16) = v47;
    sub_2186CB1F0(v93, v48 + 24);
    v49 = sub_2186C709C(0, &unk_280E90620);

    MEMORY[0x21CEB1B70](&v98, &unk_219C389E8, v48, v49);

    sub_2187A783C(&v98);
    v50 = sub_219BDADE4();
    v100 = 0;
    v98 = 0u;
    v99 = 0u;
    sub_218718690(v5, v93);
    v51 = swift_allocObject();
    *(v51 + 16) = v50;
    sub_2186CB1F0(v93, v51 + 24);
    v52 = sub_2186C709C(0, &unk_280E8FE80);

    MEMORY[0x21CEB1B70](&v98, &unk_219C389F8, v51, v52);

    sub_2187A783C(&v98);
    v53 = sub_219BDADE4();
    v100 = 0;
    v98 = 0u;
    v99 = 0u;
    sub_218718690(v5, v93);
    v54 = swift_allocObject();
    *(v54 + 16) = v53;
    sub_2186CB1F0(v93, v54 + 24);
    v55 = sub_2186C709C(0, &unk_280E92648);

    MEMORY[0x21CEB1B70](&v98, &unk_219C38A08, v54, v55);

    sub_2187A783C(&v98);
    v56 = sub_219BDADE4();
    v100 = 0;
    v98 = 0u;
    v99 = 0u;
    sub_218718690(v5, v93);
    v57 = swift_allocObject();
    *(v57 + 16) = v56;
    sub_2186CB1F0(v93, v57 + 24);
    v58 = sub_2186C709C(0, &unk_280E8FE70);

    MEMORY[0x21CEB1B70](&v98, &unk_219C38A18, v57, v58);

    sub_2187A783C(&v98);
    v59 = sub_219BDADE4();
    v100 = 0;
    v98 = 0u;
    v99 = 0u;
    sub_218718690(v5, v93);
    v60 = swift_allocObject();
    *(v60 + 16) = v59;
    sub_2186CB1F0(v93, v60 + 24);
    v61 = sub_2186C709C(0, &qword_280E8FF18);

    MEMORY[0x21CEB1B70](&v98, &unk_219C38A28, v60, v61);

    sub_2187A783C(&v98);
    v62 = sub_219BDADE4();
    v100 = 0;
    v98 = 0u;
    v99 = 0u;
    sub_218718690(v5, v93);
    v63 = swift_allocObject();
    *(v63 + 16) = v62;
    sub_2186CB1F0(v93, v63 + 24);
    v64 = sub_2186C709C(0, &unk_280E8FF50);

    MEMORY[0x21CEB1B70](&v98, &unk_219C38A38, v63, v64);

    sub_2187A783C(&v98);
    v65 = sub_219BDADE4();
    v100 = 0;
    v98 = 0u;
    v99 = 0u;
    sub_218718690(v5, v93);
    v66 = swift_allocObject();
    *(v66 + 16) = v65;
    sub_2186CB1F0(v93, v66 + 24);
    v67 = sub_2186C709C(0, &qword_280E8FD48);

    MEMORY[0x21CEB1B70](&v98, &unk_219C38A48, v66, v67);

    sub_2187A783C(&v98);
    v68 = sub_219BDADE4();
    v100 = 0;
    v98 = 0u;
    v99 = 0u;
    sub_218718690(v5, v93);
    v69 = swift_allocObject();
    *(v69 + 16) = v68;
    sub_2186CB1F0(v93, v69 + 24);
    v70 = sub_2186C709C(0, &qword_280EE8D30);

    MEMORY[0x21CEB1B70](&v98, &unk_219C38A58, v69, v70);

    sub_2187A783C(&v98);
    v71 = sub_219BDADE4();
    v100 = 0;
    v98 = 0u;
    v99 = 0u;
    sub_218718690(v5, v93);
    v72 = swift_allocObject();
    *(v72 + 16) = v71;
    sub_2186CB1F0(v93, v72 + 24);
    v73 = sub_2186C709C(0, &unk_280EE8B88);

    MEMORY[0x21CEB1B70](&v98, &unk_219C38A68, v72, v73);

    sub_2187A783C(&v98);
    v74 = sub_219BDADE4();
    v100 = 0;
    v98 = 0u;
    v99 = 0u;
    sub_218718690(v5, v93);
    v75 = swift_allocObject();
    *(v75 + 16) = v74;
    sub_2186CB1F0(v93, v75 + 24);
    v76 = sub_2186C709C(0, &unk_280E91330);

    MEMORY[0x21CEB1B70](&v98, &unk_219C38A78, v75, v76);

    sub_2187A783C(&v98);
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    sub_219BDD274();
    result = sub_219BE1E24();
    if (result)
    {
      v78 = v91;
      v77 = v92;
      (*(v92 + 104))(v91, *MEMORY[0x277D2F560], v1);
      sub_219BDD0F4();

      (*(v77 + 8))(v78, v1);
      sub_219BDADE4();
      v100 = 0;
      v98 = 0u;
      v99 = 0u;

      sub_219BDADC4();

      sub_2187A783C(&v98);
      v79 = sub_219BDADE4();
      *&v93[0] = 0xD000000000000018;
      *(&v93[0] + 1) = 0x8000000219CF8370;
      sub_219BF72A4();
      sub_218718690(v5, v93);
      v80 = swift_allocObject();
      *(v80 + 16) = v79;
      sub_2186CB1F0(v93, v80 + 24);
      sub_2187A7904();
      v82 = v81;

      MEMORY[0x21CEB1B70](&v98, &unk_219C38A88, v80, v82);

      sub_2187A783C(&v98);
      v83 = sub_219BDADE4();
      *&v93[0] = 0xD000000000000018;
      *(&v93[0] + 1) = 0x8000000219CF8390;
      sub_219BF72A4();
      sub_218718690(v5, v93);
      v84 = swift_allocObject();
      *(v84 + 16) = v83;
      sub_2186CB1F0(v93, v84 + 24);

      MEMORY[0x21CEB1B70](&v98, &unk_219C38A98, v84, v82);

      sub_2187A783C(&v98);
      v85 = sub_219BDADE4();
      *&v93[0] = 0xD00000000000001ALL;
      *(&v93[0] + 1) = 0x8000000219CF83B0;
      sub_219BF72A4();
      sub_218718690(v5, v93);
      v86 = swift_allocObject();
      *(v86 + 16) = v85;
      sub_2186CB1F0(v93, v86 + 24);

      MEMORY[0x21CEB1B70](&v98, &unk_219C38AA8, v86, v82);

      sub_2187A783C(&v98);
      __swift_project_boxed_opaque_existential_1(v5, v5[3]);
      sub_2186D6710(0, &qword_280E8DC20);
      result = sub_219BE1E24();
      if (result)
      {
        v87 = result;
        sub_219BDADE4();
        v100 = 0;
        v98 = 0u;
        v99 = 0u;
        *(swift_allocObject() + 16) = v87;
        swift_unknownObjectRetain();
        sub_219BDADC4();

        sub_2187A783C(&v98);
        __swift_project_boxed_opaque_existential_1(v5, v5[3]);
        sub_21873E5D4();
        result = sub_219BE1E24();
        if (result)
        {
          v88 = result;
          sub_219BDADE4();
          v100 = 0;
          v98 = 0u;
          v99 = 0u;
          *(swift_allocObject() + 16) = v88;
          v89 = v88;
          sub_219BDADC4();

          swift_unknownObjectRelease();

          swift_unknownObjectRelease();

          sub_2187A783C(&v98);
          return __swift_destroy_boxed_opaque_existential_1(v106);
        }

        goto LABEL_17;
      }

LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_218718690(v106, v93);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_2186C709C(0, qword_280ECF740);
  result = sub_219BE1E34();
  v10 = *&v94[0];
  if (!*&v94[0])
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v90[0] = v1;
  v11 = *(&v94[0] + 1);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  v12 = v96;
  if (!v96)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v13 = v97;
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_2186D6710(0, &qword_280E8DC20);
  result = sub_219BE1E24();
  if (result)
  {
    v14 = result;
    sub_2186CB1F0(v93, &v98);
    v101 = v10;
    v102 = v11;
    v103 = v12;
    v104 = v13;
    v105 = v14;
    sub_219BDADF4();
    sub_219BDADE4();
    v95 = 0;
    memset(v94, 0, sizeof(v94));
    sub_2187A77E0(&v98, v93);
    v15 = swift_allocObject();
    v16 = v93[3];
    v15[3] = v93[2];
    v15[4] = v16;
    v15[5] = v93[4];
    v17 = v93[1];
    v15[1] = v93[0];
    v15[2] = v17;
    sub_219BDADC4();

    sub_2187A783C(v94);
    v18 = sub_219BDADE4();
    *&v94[0] = 0xD000000000000018;
    *(&v94[0] + 1) = 0x8000000219CF8350;
    sub_219BF72A4();
    sub_218718690(v5, v94);
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    sub_2186CB1F0(v94, v19 + 24);
    sub_2187A7904();
    v21 = v20;

    MEMORY[0x21CEB1B70](v93, &unk_219C38AC0, v19, v21);

    sub_2187A783C(v93);
    sub_2187A7A38(&v98);
    v1 = v90[0];
    goto LABEL_9;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2187A7674()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2187A76AC()
{

  return swift_deallocObject();
}

uint64_t sub_2187A76E4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t sub_2187A778C()
{
  result = qword_280E9BA58;
  if (!qword_280E9BA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9BA58);
  }

  return result;
}

uint64_t sub_2187A783C(uint64_t a1)
{
  sub_21870F240(0, &unk_280E8D760, MEMORY[0x277D84030], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2187A78BC()
{
  if (*v0)
  {
    return 0x6E656D6563616C70;
  }

  else
  {
    return 0x5472656767697274;
  }
}

void sub_2187A7904()
{
  if (!qword_280E90008)
  {
    sub_2186C709C(255, &unk_280E90010);
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E90008);
    }
  }
}

uint64_t sub_2187A7970(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2187A79D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2187A7A8C()
{
  sub_21879D924();
  swift_allocObject();
  return sub_219BE30B4();
}

uint64_t sub_2187A7AE0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  sub_2186DDAC4(0, &qword_280EE9C40, MEMORY[0x277CC9578]);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v27 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v28 = &v25 - v7;
  MEMORY[0x28223BE20](v6);
  v29 = (&v25 - v8);
  sub_2187A4BE4(0, &qword_280E8CC40, sub_2187A80B4, &type metadata for EngagementUpsellTriggerState.CodingKeys, MEMORY[0x277D844C8]);
  v30 = *(v9 - 8);
  v31 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  v12 = type metadata accessor for EngagementUpsellTriggerState(0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187A80B4();
  v15 = v32;
  sub_219BF7B34();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v29;
  v37 = 0;
  v17 = v31;
  v18 = v14;
  *v14 = sub_219BF7724();
  sub_219BDBD34();
  v36 = 1;
  v32 = sub_2187A5098(&unk_280EE9C70, MEMORY[0x277CC9578]);
  sub_219BF76E4();
  v19 = v12;
  sub_21870EC50(v16, v18 + v12[5], &qword_280EE9C40, MEMORY[0x277CC9578]);
  v35 = 2;
  v29 = v18;
  v20 = v28;
  sub_219BF76E4();
  sub_21870EC50(v20, v29 + v12[6], &qword_280EE9C40, MEMORY[0x277CC9578]);
  v34 = 3;
  v21 = v27;
  sub_219BF76E4();
  v22 = v29;
  sub_21870EC50(v21, v29 + v12[7], &qword_280EE9C40, MEMORY[0x277CC9578]);
  v33 = 4;
  v23 = sub_219BF7724();
  (*(v30 + 8))(v11, v17);
  *(v22 + v19[8]) = v23;
  sub_2187A7970(v22, v26, type metadata accessor for EngagementUpsellTriggerState);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2187A79D8(v22, type metadata accessor for EngagementUpsellTriggerState);
}

unint64_t sub_2187A80B4()
{
  result = qword_280EB4760;
  if (!qword_280EB4760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB4760);
  }

  return result;
}

uint64_t sub_2187A8108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  sub_219BE1F84();
  v11 = swift_allocObject();
  v11[2] = a5;
  v11[3] = sub_2187A913C;
  v11[4] = v10;
  v11[5] = a3;
  v11[6] = a4;

  sub_219BE1F74();
}

uint64_t sub_2187A81F8()
{

  return swift_deallocObject();
}

uint64_t sub_2187A8230()
{

  return swift_deallocObject();
}

uint64_t sub_2187A8278()
{
  sub_21879D924();
  swift_allocObject();
  return sub_219BE30B4();
}

unint64_t sub_2187A82D0()
{
  result = qword_280EB4750;
  if (!qword_280EB4750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB4750);
  }

  return result;
}

void sub_2187A8330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = objc_opt_self();
  v10 = swift_allocObject();
  v10[2] = a5;
  v10[3] = sub_2187A913C;
  v10[4] = v8;
  v12[4] = sub_218DDD970;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_218793E0C;
  v12[3] = &block_descriptor_59;
  v11 = _Block_copy(v12);

  [v9 scheduleLowPriorityBlock_];
  _Block_release(v11);
}

uint64_t sub_2187A8464()
{

  return swift_deallocObject();
}

uint64_t sub_2187A849C()
{

  return swift_deallocObject();
}

unint64_t sub_2187A84EC()
{
  result = qword_280EB4758;
  if (!qword_280EB4758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB4758);
  }

  return result;
}

unint64_t sub_2187A8540()
{
  v1 = *v0;
  v2 = 0x56746E6572727563;
  v3 = 0xD000000000000014;
  v4 = 0xD000000000000017;
  if (v1 != 3)
  {
    v4 = 0xD000000000000015;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000017;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2187A85F8(uint64_t a1, uint64_t (*a2)(uint64_t))
{

  sub_2187A8718(a1, a2);
}

uint64_t storeEnumTagSinglePayload for MagazineGridModelEdit(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2187A8718(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_219BEBBB4();
  v3 = NFInternalBuild();
  if (v3)
  {
    if (qword_280EE99B0 != -1)
    {
      swift_once();
    }

    type metadata accessor for TipKitStartupTask();
    sub_2187A8D18(qword_280ED48F0);
    v3 = sub_219BDC7D4();
    if (v5 == 1)
    {
      sub_219BEBBA4();
      sub_2187A8D18(&qword_27CC144B0);
      v3 = sub_219BDCA54();
    }
  }

  return a2(v3);
}

uint64_t sub_2187A8AA8()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC934();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D090]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v8[15] = 0;
  sub_2186C6588(0, &qword_280EE9078);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_280EE99B8 = result;
  return result;
}

uint64_t sub_2187A8C74()
{
  sub_219BF7AA4();
  sub_219BF5524();
  sub_219BE3514();
  sub_2187A5098(&qword_280EE66A0, MEMORY[0x277D31550]);
  sub_219BF52F4();
  return sub_219BF7AE4();
}

uint64_t sub_2187A8D18(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TipKitStartupTask();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2187A8D64@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  if (*(a1 + 16) && (v5 = sub_2187A9070(a2), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(a1 + 56);
    v9 = type metadata accessor for EngagementUpsellTriggerState(0);
    v16 = *(v9 - 8);
    sub_2187A7970(v8 + *(v16 + 72) * v7, a3, type metadata accessor for EngagementUpsellTriggerState);
    v10 = *(v16 + 56);
    v11 = a3;
    v12 = 0;
    v13 = v9;
  }

  else
  {
    v14 = type metadata accessor for EngagementUpsellTriggerState(0);
    v10 = *(*(v14 - 8) + 56);
    v13 = v14;
    v11 = a3;
    v12 = 1;
  }

  return v10(v11, v12, 1, v13);
}

uint64_t sub_2187A8E90@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for SubscriptionStatusCheckBlocker();
  v3 = swift_allocObject();
  *(v3 + 16) = 1;
  a1[3] = v2;
  result = sub_21871D29C(qword_280EAACE8, type metadata accessor for SubscriptionStatusCheckBlocker);
  a1[4] = result;
  *a1 = v3;
  return result;
}

uint64_t _s7NewsUI236EngagementUpsellTriggerGroupStateKeyV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (v2 || (v3 = 0, (sub_219BF78F4() & 1) != 0))
  {
    type metadata accessor for EngagementUpsellTriggerGroupStateKey(0);
    sub_219BE3514();
    sub_2187A5098(&unk_280EE6680, MEMORY[0x277D31550]);
    sub_219BF5874();
    sub_219BF5874();
    if (v7 == v5 && v8 == v6)
    {
      v3 = 1;
    }

    else
    {
      v3 = sub_219BF78F4();
    }
  }

  return v3 & 1;
}

unint64_t sub_2187A9070(uint64_t *a1)
{
  sub_219BF7AA4();
  sub_219BF5524();
  type metadata accessor for EngagementUpsellTriggerGroupStateKey(0);
  sub_219BE3514();
  sub_2187A958C(&qword_280EE66A0, MEMORY[0x277D31550]);
  sub_219BF52F4();
  v2 = sub_219BF7AE4();

  return sub_2187A916C(a1, v2);
}

unint64_t sub_2187A916C(uint64_t *a1, uint64_t a2)
{
  v16 = type metadata accessor for EngagementUpsellTriggerGroupStateKey(0);
  MEMORY[0x28223BE20](v16);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = v2 + 64;
  v19 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  if (((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return v9;
  }

  v17 = ~v8;
  v10 = *a1;
  v11 = a1[1];
  v12 = *(v5 + 72);
  while (1)
  {
    sub_2187A963C(*(v19 + 48) + v12 * v9, v7, type metadata accessor for EngagementUpsellTriggerGroupStateKey);
    v14 = *v7 == v10 && v7[1] == v11;
    if (!v14 && (sub_219BF78F4() & 1) == 0)
    {
      goto LABEL_4;
    }

    sub_219BE3514();
    sub_2187A958C(&unk_280EE6680, MEMORY[0x277D31550]);
    sub_219BF5874();
    sub_219BF5874();
    if (v22 == v20 && v23 == v21)
    {
      break;
    }

    v13 = sub_219BF78F4();

    if (v13)
    {
      goto LABEL_13;
    }

LABEL_4:
    sub_218751370(v7, type metadata accessor for EngagementUpsellTriggerGroupStateKey);
    v9 = (v9 + 1) & v17;
    if (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return v9;
    }
  }

LABEL_13:
  sub_218751370(v7, type metadata accessor for EngagementUpsellTriggerGroupStateKey);
  return v9;
}

uint64_t sub_2187A93E8(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280EE3F60);
  result = sub_219BE1E34();
  if (v4)
  {
    sub_219BE2C34();
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2187A94B0(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_218715FBC();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_21871D29C(qword_280EBFB68, sub_218715FBC);
    sub_219BE2C34();

    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2187A958C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2187A95D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2187A963C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2187A96A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2187A970C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2187A9774(void *a1)
{
  v2 = objc_opt_self();
  v3 = [v2 sharedApplication];
  v4 = [v2 sharedApplication];
  sub_21870230C(0, &qword_280EC42A0, type metadata accessor for SceneDelegate, type metadata accessor for NotificationScenePicker);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for UserNotificationsOpenSettingsHandler();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EC4290);
  result = sub_219BE1E34();
  if (!v21)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218702688(0, &qword_280EE4460, MEMORY[0x277D6E6E8]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE33B0);
  result = sub_219BE1E34();
  if (!v19)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, qword_280EE0440);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result;
  type metadata accessor for NewsActivitySerializer();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDF9E4();
  result = sub_219BE1E24();
  if (result)
  {
    v11 = result;
    sub_218715FBC();
    v13 = v12;
    v14 = objc_allocWithZone(v12);
    v15 = MEMORY[0x277D85000];
    *(v14 + *((*MEMORY[0x277D85000] & *v14) + 0x98)) = v3;
    *(v14 + *((*v15 & *v14) + 0x60)) = v5;
    *(v14 + *((*v15 & *v14) + 0x68)) = v7;
    sub_218718690(v20, v14 + *((*v15 & *v14) + 0x70));
    *(v14 + *((*v15 & *v14) + 0x78)) = v8;
    sub_218718690(v18, v14 + *((*v15 & *v14) + 0x80));
    *(v14 + *((*v15 & *v14) + 0x88)) = v10;
    *(v14 + *((*v15 & *v14) + 0x90)) = v11;
    v17.receiver = v14;
    v17.super_class = v13;
    v16 = objc_msgSendSuper2(&v17, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v18);
    __swift_destroy_boxed_opaque_existential_1(v20);
    return v16;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_2187A9B68(void *a1, void (*a2)(void))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218702688(0, &qword_280EE5A80, MEMORY[0x277D6D5F0]);
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    a2(0);
    result = swift_allocObject();
    *(result + 16) = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2187A9C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2186DDAC4(0, &qword_280EE9C40, MEMORY[0x277CC9578]);
  v8 = v7;
  v9 = *(*(v7 - 8) + 56);
  v10 = a1 + *(a4 + 20);

  return v9(v10, a2, a2, v8);
}

uint64_t sub_2187A9CC4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2187A9D04()
{
  sub_218702688(0, &qword_280EE4460, MEMORY[0x277D6E6E8]);
  swift_allocObject();
  return sub_219BE96A4();
}

uint64_t sub_2187A9D6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2186DDAC4(0, &qword_280EE9C40, MEMORY[0x277CC9578]);
  v7 = v6;
  v8 = *(*(v6 - 8) + 48);
  v9 = a1 + *(a3 + 20);

  return v8(v9, a2, v7);
}

uint64_t sub_2187A9E04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EngagementUpsellTriggerState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2187A9E68(uint64_t a1, void *a2)
{
  v4 = sub_219BE96C4();
  v40 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v35[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v35[-v8];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280EE6240);
  sub_219BE1E34();
  v10 = MEMORY[0x277D6E6F0];
  v41 = a1;
  if (v42[0])
  {
    if (object_getClass(v42[0]) == _TtC7NewsUI247AppLaunchUpsellNotificationLaunchStatusProvider)
    {
      v11 = v40;
      (*(v40 + 104))(v9, *v10, v4);
      type metadata accessor for AppLaunchUpsellNotificationLaunchStatusProvider();
      sub_21871D29C(&qword_280EE2400, type metadata accessor for AppLaunchUpsellNotificationLaunchStatusProvider);
      sub_219BE9684();
      swift_unknownObjectRelease();
      (*(v11 + 8))(v9, v4);
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for AMSNotificationHandler();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_23;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v13 = type metadata accessor for AMSHandleNotificationDiscerner();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v14 = result;
  v7[3] = v13;
  v7[4] = sub_21871D29C(qword_280EADC80, type metadata accessor for AMSHandleNotificationDiscerner);
  *v7 = v14;
  v15 = *MEMORY[0x277D6E6F8];
  v16 = v40;
  v17 = v40 + 104;
  v38 = *(v40 + 104);
  v38(v7, v15, v4);
  sub_21871D29C(qword_280EC93C8, type metadata accessor for AMSNotificationHandler);
  sub_219BE9684();

  v19 = *(v16 + 8);
  v18 = v16 + 8;
  v39 = v19;
  v19(v7, v4);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ArticleNotificationResponseHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  *v9 = sub_219BF5414();
  v9[1] = v20;
  LODWORD(v37) = *MEMORY[0x277D6E700];
  (v38)(v9);
  sub_21871D29C(qword_280EA1360, type metadata accessor for ArticleNotificationResponseHandler);
  sub_219BE9684();

  v21 = v39;
  v39(v9, v4);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for EndOfTrackNotificationResponseHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  *v9 = sub_219BF5414();
  v9[1] = v22;
  v38(v9, v37, v4);
  sub_21871D29C(qword_280E99C38, type metadata accessor for EndOfTrackNotificationResponseHandler);
  sub_219BE9684();

  v21(v9, v4);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for IssueNotificationResponseHandler();
  result = sub_219BE1E24();
  v40 = v18;
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  *v9 = sub_219BF5414();
  v9[1] = v23;
  v24 = v37;
  v38(v9, v37, v4);
  sub_21871D29C(qword_280EA6520, type metadata accessor for IssueNotificationResponseHandler);
  sub_219BE9684();

  v39(v9, v4);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  *v9 = sub_219BF5414();
  v9[1] = v25;
  v38(v9, v24, v4);
  sub_219BE9684();

  v39(v9, v4);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for PuzzleStreakNotificationResponseHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  *v9 = sub_219BF5414();
  v9[1] = v26;
  v38(v9, v24, v4);
  sub_21871D29C(&qword_280E96C18, type metadata accessor for PuzzleStreakNotificationResponseHandler);
  sub_219BE9684();

  v39(v9, v4);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  *v9 = sub_219BF5414();
  v9[1] = v27;
  v38(v9, v24, v4);
  sub_219BE9684();

  v39(v9, v4);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for RemoteNotificationArrivalHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v36 = *MEMORY[0x277D6E6F0];
  v28 = v38;
  (v38)(v9);
  sub_21871D29C(qword_280EA5150, type metadata accessor for RemoteNotificationArrivalHandler);
  sub_219BE9684();

  v39(v9, v4);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SupportNotificationResponseHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  *v9 = sub_219BF5414();
  v9[1] = v29;
  v28(v9, v24, v4);
  sub_21871D29C(qword_280E9E678, type metadata accessor for SupportNotificationResponseHandler);
  sub_219BE9684();

  v39(v9, v4);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for URLNotificationResponseHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  *v9 = sub_219BF5414();
  v9[1] = v30;
  v28(v9, v24, v4);
  sub_21871D29C(qword_280EAA0C0, type metadata accessor for URLNotificationResponseHandler);
  sub_219BE9684();

  v39(v9, v4);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for RevokeNotificationHandler();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_33:
    __break(1u);
    return result;
  }

  *v9 = sub_219BF5414();
  v9[1] = v31;
  v37 = v17;
  v28(v9, v24, v4);
  sub_21871D29C(qword_280EBD448, type metadata accessor for RevokeNotificationHandler);
  sub_219BE9684();

  v32 = v4;
  v33 = v4;
  v34 = v39;
  v39(v9, v33);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &qword_280EE64C8);
  sub_219BE1E34();
  if (!v42[3])
  {
    return sub_218CF6EB8(v42, &qword_27CC23760, &qword_280EE64C8);
  }

  type metadata accessor for SubscriptionStatusCheckBlocker();
  result = swift_dynamicCast();
  if (result)
  {
    v28(v9, v36, v32);
    sub_21871D29C(&unk_280EAACD8, type metadata accessor for SubscriptionStatusCheckBlocker);
    sub_219BE9684();

    return v34(v9, v32);
  }

  return result;
}

uint64_t sub_2187AAAF4()
{
  sub_2187089D4(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BE3184();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  sub_2187A3CCC(v0 + OBJC_IVAR____TtC7NewsUI235EngagementUpsellTriggerStateManager_appVersion, v3, sub_2187089D4);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_2187A3C6C(v3, sub_2187089D4);
  }

  else
  {
    (*(v5 + 32))(v10, v3, v4);
    sub_219BE36C4();
    sub_2187A0540(&qword_280EE68F0, MEMORY[0x277D6CF38]);
    v11 = sub_219BF5334();
    v12 = *(v5 + 8);
    v12(v8, v4);
    if ((v11 & 1) == 0)
    {
      sub_219BE36B4();
      v14 = sub_219BF5334();
      v12(v8, v4);
      v12(v10, v4);
      v13 = v14 ^ 1;
      return v13 & 1;
    }

    v12(v10, v4);
  }

  v13 = 0;
  return v13 & 1;
}

uint64_t sub_2187AAD8C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E890);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EC4290);
  result = sub_219BE1E34();
  if (!v8)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &unk_280E8E6F0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    type metadata accessor for AMSNotificationHandler();
    v6 = swift_allocObject();
    v6[2] = v3;
    sub_2186CB1F0(&v7, (v6 + 3));
    v6[8] = v4;
    v6[9] = v5;
    return v6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2187AAF28(uint64_t a1, unsigned __int8 a2)
{
  v2 = a2;
  v3 = a2;
  v4 = sub_219BE3BB4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v18 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = v18 - v12;
  if (v3 == 2)
  {
    sub_219BE36D4();
    (*(v5 + 104))(v8, *MEMORY[0x277D318A0], v4);
    sub_2187A0540(&qword_280EE6528, MEMORY[0x277D318B0]);
    sub_219BF5874();
    sub_219BF5874();
    if (v18[2] == v18[0] && v18[3] == v18[1])
    {
      v2 = 1;
    }

    else
    {
      v2 = sub_219BF78F4();
    }

    v15 = *(v5 + 8);
    v15(v8, v4);
    v15(v11, v4);
  }

  else
  {
    sub_219BE36D4();
    v14 = (*(v5 + 88))(v13, v4);
    if (v14 == *MEMORY[0x277D318A8])
    {
      v2 ^= 1u;
    }

    else if (v14 != *MEMORY[0x277D31898])
    {
      if (v14 == *MEMORY[0x277D31890] || v14 == *MEMORY[0x277D318A0])
      {
        v2 = 1;
      }

      else
      {
        (*(v5 + 8))(v13, v4);
        v2 = 0;
      }
    }
  }

  return v2 & 1;
}

id sub_2187AB1D4()
{
  v0 = type metadata accessor for UserNotification.Kind(0);
  MEMORY[0x28223BE20](v0);
  v2 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = [objc_allocWithZone(MEMORY[0x277CEE668]) init];
  v4 = sub_219BF53D4();
  [v3 setEngagementPushTopic_];

  swift_storeEnumTagMultiPayload();
  sub_2187AD818();
  v6 = v5;
  sub_2187ADBD4(v2);
  if (v6)
  {
    v7 = sub_219BF53D4();
  }

  else
  {
    v7 = 0;
  }

  [v3 setUserNotificationExtensionId_];

  v8 = objc_opt_self();
  v9 = v3;
  v10 = [v8 bag];
  v11 = [objc_allocWithZone(MEMORY[0x277CEE670]) initWithConfiguration:v9 bag:v10];

  swift_unknownObjectRelease();
  return v11;
}

uint64_t sub_2187AB374(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v42 = a1;
  sub_2186DCF58();
  MEMORY[0x28223BE20](v3 - 8);
  v45 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BDBD34();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v43 = &v37 - v11;
  MEMORY[0x28223BE20](v10);
  v41 = &v37 - v12;
  sub_2187A3D34(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for EngagementUpsellTriggerState(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v44 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v2 + OBJC_IVAR____TtC7NewsUI235EngagementUpsellTriggerStateManager_store + 24);
  v20 = *(v2 + OBJC_IVAR____TtC7NewsUI235EngagementUpsellTriggerStateManager_store + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC7NewsUI235EngagementUpsellTriggerStateManager_store), v19);
  v21 = (*(v20 + 8))(&v47, v19, v20);
  v22 = v47;
  if (v47)
  {
    v38 = v9;
    v39 = v6;
    v40 = v5;
    v23 = v48;
    v47 = v48;
    MEMORY[0x28223BE20](v21);
    *(&v37 - 4) = v22;
    *(&v37 - 3) = v23;
    *(&v37 - 2) = v46;
    sub_219BE1B04();

    sub_219BE2D34();

    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      sub_2187A9CC4(v22);
      v24 = sub_2187A3D34;
      v25 = v15;
    }

    else
    {
      v27 = v44;
      sub_2187A9E04(v15, v44);
      v28 = v45;
      sub_2187A3CCC(v27 + *(v16 + 20), v45, sub_2186DCF58);
      v30 = v39;
      v29 = v40;
      if ((*(v39 + 48))(v28, 1, v40) != 1)
      {
        v31 = v41;
        (*(v30 + 32))(v41, v28, v29);
        sub_219BE3734();
        v32 = v43;
        sub_219BDBBF4();
        v33 = v38;
        sub_219BDBD24();
        sub_2187A0540(&qword_280EE9C90, MEMORY[0x277CC9578]);
        v34 = sub_219BF5334();
        sub_2187A9CC4(v22);
        v35 = *(v30 + 8);
        v35(v33, v29);
        v35(v32, v29);
        v35(v31, v29);
        sub_2187A3C6C(v27, type metadata accessor for EngagementUpsellTriggerState);
        v26 = v34 ^ 1;
        return v26 & 1;
      }

      sub_2187A3C6C(v27, type metadata accessor for EngagementUpsellTriggerState);
      sub_2187A9CC4(v22);
      v24 = sub_2186DCF58;
      v25 = v28;
    }

    sub_2187A3C6C(v25, v24);
    v26 = 1;
  }

  else
  {
    v26 = 1;
  }

  return v26 & 1;
}

BOOL sub_2187AB874(uint64_t a1, uint64_t a2)
{
  sub_2187A3D34(0);
  MEMORY[0x28223BE20](v5);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EngagementUpsellTriggerState(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v2 + OBJC_IVAR____TtC7NewsUI235EngagementUpsellTriggerStateManager_store + 24);
  v13 = *(v2 + OBJC_IVAR____TtC7NewsUI235EngagementUpsellTriggerStateManager_store + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC7NewsUI235EngagementUpsellTriggerStateManager_store), v12);
  v14 = (*(v13 + 8))(&v21, v12, v13);
  v15 = v21;
  if (!v21)
  {
    return 0;
  }

  v20[0] = a1;
  v20[1] = v20;
  v16 = v22;
  v21 = v22;
  MEMORY[0x28223BE20](v14);
  v20[-4] = v15;
  v20[-3] = v16;
  v20[-2] = a2;
  sub_219BE1B04();

  sub_219BE2D34();

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_2187A9CC4(v15);
    sub_2187A3C6C(v7, sub_2187A3D34);
    return 0;
  }

  sub_2187A9E04(v7, v11);
  v18 = *&v11[*(v8 + 32)];
  v19 = sub_219BE3714();
  sub_2187A9CC4(v15);
  sub_2187A3C6C(v11, type metadata accessor for EngagementUpsellTriggerState);
  return v18 >= v19;
}

void sub_2187ABAFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2187ABB48(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v44 = a1;
  sub_2186DCF58();
  MEMORY[0x28223BE20](v3 - 8);
  v43 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BDBD34();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v42 = &v37 - v11;
  MEMORY[0x28223BE20](v10);
  v45 = &v37 - v12;
  sub_2187A3D34(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for EngagementUpsellTriggerState(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v41 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v2 + OBJC_IVAR____TtC7NewsUI235EngagementUpsellTriggerStateManager_store + 24);
  v20 = *(v2 + OBJC_IVAR____TtC7NewsUI235EngagementUpsellTriggerStateManager_store + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC7NewsUI235EngagementUpsellTriggerStateManager_store), v19);
  v21 = (*(v20 + 8))(&v47, v19, v20);
  v22 = v47;
  if (!v47)
  {
    goto LABEL_4;
  }

  v38 = v9;
  v39 = v6;
  v40 = v5;
  v23 = v48;
  v47 = v48;
  MEMORY[0x28223BE20](v21);
  *(&v37 - 4) = v22;
  *(&v37 - 3) = v23;
  *(&v37 - 2) = v46;
  sub_219BE1B04();

  sub_219BE2D34();

  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_2187A9CC4(v22);
    sub_2187A3C6C(v15, sub_2187A3D34);
LABEL_4:
    v24 = 1;
    return v24 & 1;
  }

  v25 = v41;
  sub_2187A9E04(v15, v41);
  v26 = v43;
  sub_2187A3CCC(v25 + *(v16 + 24), v43, sub_2186DCF58);
  v28 = v39;
  v27 = v40;
  v29 = *(v39 + 48);
  if (v29(v26, 1, v40) == 1)
  {
    v30 = v42;
    sub_219BDBBB4();
    v31 = v29(v26, 1, v27);
    v32 = v38;
    if (v31 != 1)
    {
      sub_2187A3C6C(v26, sub_2186DCF58);
    }
  }

  else
  {
    v30 = v42;
    (*(v28 + 32))(v42, v26, v27);
    v32 = v38;
  }

  sub_219BE36F4();
  v33 = v45;
  sub_219BDBBF4();
  v34 = *(v28 + 8);
  v34(v30, v27);
  sub_219BDBD24();
  sub_2187A0540(&qword_280EE9C90, MEMORY[0x277CC9578]);
  v35 = sub_219BF5334();
  sub_2187A9CC4(v22);
  v34(v32, v27);
  v34(v33, v27);
  sub_2187A3C6C(v25, type metadata accessor for EngagementUpsellTriggerState);
  v24 = v35 ^ 1;
  return v24 & 1;
}

void sub_2187AC05C()
{
  sub_2187ABAFC(319, &qword_280ED7390, type metadata accessor for UserNotification.ArticleData);
  if (v0 <= 0x3F)
  {
    sub_2187ACC2C();
    if (v1 <= 0x3F)
    {
      sub_2187ABAFC(319, qword_280ED7190, type metadata accessor for UserNotification.IssueData);
      if (v2 <= 0x3F)
      {
        sub_2187AD21C();
        if (v3 <= 0x3F)
        {
          sub_2187AD760();
          if (v4 <= 0x3F)
          {
            sub_2187AD7E4();
            if (v5 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2187AC158(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v44 = a1;
  sub_2186DCF58();
  MEMORY[0x28223BE20](v3 - 8);
  v43 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BDBD34();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v42 = &v37 - v11;
  MEMORY[0x28223BE20](v10);
  v45 = &v37 - v12;
  sub_2187A3D34(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for EngagementUpsellTriggerState(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v41 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v2 + OBJC_IVAR____TtC7NewsUI235EngagementUpsellTriggerStateManager_store + 24);
  v20 = *(v2 + OBJC_IVAR____TtC7NewsUI235EngagementUpsellTriggerStateManager_store + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC7NewsUI235EngagementUpsellTriggerStateManager_store), v19);
  v21 = (*(v20 + 8))(&v47, v19, v20);
  v22 = v47;
  if (!v47)
  {
    goto LABEL_4;
  }

  v38 = v9;
  v39 = v6;
  v40 = v5;
  v23 = v48;
  v47 = v48;
  MEMORY[0x28223BE20](v21);
  *(&v37 - 4) = v22;
  *(&v37 - 3) = v23;
  *(&v37 - 2) = v46;
  sub_219BE1B04();

  sub_219BE2D34();

  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_2187A9CC4(v22);
    sub_2187A3C6C(v15, sub_2187A3D34);
LABEL_4:
    v24 = 1;
    return v24 & 1;
  }

  v25 = v41;
  sub_2187A9E04(v15, v41);
  v26 = v43;
  sub_2187A3CCC(v25 + *(v16 + 28), v43, sub_2186DCF58);
  v28 = v39;
  v27 = v40;
  v29 = *(v39 + 48);
  if (v29(v26, 1, v40) == 1)
  {
    v30 = v42;
    sub_219BDBBB4();
    v31 = v29(v26, 1, v27);
    v32 = v38;
    if (v31 != 1)
    {
      sub_2187A3C6C(v26, sub_2186DCF58);
    }
  }

  else
  {
    v30 = v42;
    (*(v28 + 32))(v42, v26, v27);
    v32 = v38;
  }

  sub_219BE3724();
  v33 = v45;
  sub_219BDBBF4();
  v34 = *(v28 + 8);
  v34(v30, v27);
  sub_219BDBD24();
  sub_2187A0540(&qword_280EE9C90, MEMORY[0x277CC9578]);
  v35 = sub_219BF5334();
  sub_2187A9CC4(v22);
  v34(v32, v27);
  v34(v33, v27);
  sub_2187A3C6C(v25, type metadata accessor for EngagementUpsellTriggerState);
  v24 = v35 ^ 1;
  return v24 & 1;
}

uint64_t sub_2187AC68C(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_2187A0934(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_2187AC6F8()
{
  sub_2187AC848(319, &qword_280E8F860, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_2186DDF98(319, &qword_280EE9C40, MEMORY[0x277CC9578]);
    if (v1 <= 0x3F)
    {
      sub_2187AC8F4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2187AC7E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2187AC848(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2187AC898(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2187A0934(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2187AC8F4()
{
  if (!qword_280E8FA10)
  {
    v0 = sub_219BF52A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8FA10);
    }
  }
}

void sub_2187AC958(char a1)
{
  v2 = v1;
  swift_getObjectType();
  if (qword_280EE60A0 != -1)
  {
    swift_once();
  }

  v4 = sub_219BE5434();
  __swift_project_value_buffer(v4, qword_280F627F0);
  v5 = sub_219BE5414();
  v6 = sub_219BF6214();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2186C1000, v5, v6, "EngagementUpsellOfferManager refreshing offer state", v7, 2u);
    MEMORY[0x21CECF960](v7, -1, -1);
  }

  if (sub_2187ACC98() & 1) == 0 || (a1)
  {
    v10 = *(v2 + OBJC_IVAR____TtC7NewsUI228EngagementUpsellOfferManager_store + 24);
    v11 = *(v2 + OBJC_IVAR____TtC7NewsUI228EngagementUpsellOfferManager_store + 32);
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC7NewsUI228EngagementUpsellOfferManager_store), v10);
    v12 = (*(v11 + 16))(v10, v11);
    MEMORY[0x28223BE20](v12);
    sub_219BE3204();
    sub_2186C6148(0, &qword_280E8E3B0);
    v13 = sub_219BF66A4();
    sub_219BE2F94();

    v14 = sub_219BE2E54();
    sub_219BE2FD4();
  }

  else
  {
    v15 = sub_219BE5414();
    v8 = sub_219BF6214();
    if (os_log_type_enabled(v15, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2186C1000, v15, v8, "Valid offer state. Refresh not needed.", v9, 2u);
      MEMORY[0x21CECF960](v9, -1, -1);
    }
  }
}

void sub_2187ACC2C()
{
  if (!qword_280EE9D80)
  {
    sub_219BDB954();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280EE9D80);
    }
  }
}

uint64_t sub_2187ACC98()
{
  sub_21876CFD0(0, qword_280EBB760, type metadata accessor for EngagementUpsellOfferEntry);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v26 - v2;
  v4 = type metadata accessor for EngagementUpsellOfferEntry(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + OBJC_IVAR____TtC7NewsUI228EngagementUpsellOfferManager_store + 24);
  v9 = *(v0 + OBJC_IVAR____TtC7NewsUI228EngagementUpsellOfferManager_store + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI228EngagementUpsellOfferManager_store), v8);
  (*(v9 + 8))(v8, v9);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_2190ED25C(v3, qword_280EBB760, type metadata accessor for EngagementUpsellOfferEntry);
    return 0;
  }

  sub_2187AE8BC(v3, v7);
  v10 = v7[1];
  v11 = [*(v0 + OBJC_IVAR____TtC7NewsUI228EngagementUpsellOfferManager_bundleSubscriptionManager) cachedSubscription];
  if (objc_getAssociatedObject(v11, v11 + 1))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  v30 = v28;
  v31 = v29;
  if (!*(&v29 + 1))
  {
    sub_218806FD0(&v30);
    goto LABEL_11;
  }

  sub_2186C6148(0, &qword_280E8DA20);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v12 = 0;
    v14 = 0;
    goto LABEL_12;
  }

  v12 = v27;
  v13 = [v27 integerValue];
  if (v13 == -1)
  {

    if (v10)
    {
      goto LABEL_24;
    }

LABEL_30:
    sub_2187AE6C0(v7, type metadata accessor for EngagementUpsellOfferEntry);
    return 0;
  }

  v14 = v13;
LABEL_12:
  if (objc_getAssociatedObject(v11, ~v14))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  v30 = v28;
  v31 = v29;
  if (*(&v29 + 1))
  {
    sub_2186C6148(0, &qword_280E8DA20);
    if (swift_dynamicCast())
    {
      v15 = v27;
      v16 = [v15 integerValue];

      v17 = ((v16 ^ v14) & 1) == 0;
      goto LABEL_20;
    }
  }

  else
  {
    sub_218806FD0(&v30);
  }

  v17 = (v14 & 1) == 0;
LABEL_20:
  v18 = v17;
  if (((v10 ^ v18) & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_24:
  sub_219BDBC64();
  v20 = v19;
  if (v19 < -86400.0)
  {
    if (qword_280EE60A0 != -1)
    {
      swift_once();
    }

    v21 = sub_219BE5434();
    __swift_project_value_buffer(v21, qword_280F627F0);
    v22 = sub_219BE5414();
    v23 = sub_219BF6214();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      *(v24 + 4) = -v20;
      _os_log_impl(&dword_2186C1000, v22, v23, "Stored offer has expired [%f secs.]", v24, 0xCu);
      MEMORY[0x21CECF960](v24, -1, -1);
    }

    goto LABEL_30;
  }

  sub_2187AE6C0(v7, type metadata accessor for EngagementUpsellOfferEntry);
  return 1;
}

void sub_2187AD154()
{
  sub_2187AC848(319, &qword_280E8F2E8, &type metadata for UserNotification.IssueData.Issue, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_219BDBD34();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2187AD21C()
{
  result = qword_280E8F870;
  if (!qword_280E8F870)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_280E8F870);
  }

  return result;
}

uint64_t EngagementUpsellOfferEntry.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v22 = sub_219BDBD34();
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21876CFD0(0, qword_280EBED90, type metadata accessor for EngagementUpsellBestOffer);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  sub_2187AD6F8(0, &qword_280E8CD08, sub_2187AD790, &type metadata for EngagementUpsellOfferEntry.CodingKeys, MEMORY[0x277D844C8]);
  v25 = v7;
  v23 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = type metadata accessor for EngagementUpsellOfferEntry(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187AD790();
  v26 = v9;
  v13 = v27;
  sub_219BF7B34();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v23;
  v15 = v24;
  v31 = 0;
  *v12 = sub_219BF7704() & 1;
  v30 = 1;
  v16 = sub_219BF7704();
  v27 = v12;
  v12[1] = v16 & 1;
  type metadata accessor for EngagementUpsellBestOffer(0);
  v29 = 2;
  sub_2187ADD20(&unk_280EBEDE0, type metadata accessor for EngagementUpsellBestOffer);
  sub_219BF76E4();
  sub_2187AE720(v6, &v27[*(v10 + 24)]);
  v28 = 3;
  sub_2187ADD20(&unk_280EE9C70, MEMORY[0x277CC9578]);
  v17 = v22;
  sub_219BF7734();
  (*(v14 + 8))(v26, v25);
  v18 = v27;
  (*(v20 + 32))(&v27[*(v10 + 28)], v15, v17);
  sub_2187AE658(v18, v21, type metadata accessor for EngagementUpsellOfferEntry);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2187AE6C0(v18, type metadata accessor for EngagementUpsellOfferEntry);
}

void sub_2187AD6F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

ValueMetadata *sub_2187AD760()
{
  result = qword_280ED7398;
  if (!qword_280ED7398)
  {
    result = &type metadata for UserNotification.RevokeData;
    atomic_store(&type metadata for UserNotification.RevokeData, &qword_280ED7398);
  }

  return result;
}

unint64_t sub_2187AD790()
{
  result = qword_280EBB7C8[0];
  if (!qword_280EBB7C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EBB7C8);
  }

  return result;
}

ValueMetadata *sub_2187AD7E4()
{
  result = qword_280ED7240[0];
  if (!qword_280ED7240[0])
  {
    result = &type metadata for UserNotification.PuzzleStreakData;
    atomic_store(&type metadata for UserNotification.PuzzleStreakData, qword_280ED7240);
  }

  return result;
}

uint64_t sub_2187AD818()
{
  v1 = v0;
  v2 = type metadata accessor for UserNotification.IssueData(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UserNotification.Kind(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187ADB6C(v1, v7, type metadata accessor for UserNotification.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        sub_2187ACC2C();

        v11 = sub_219BF5414();
        v13 = sub_219BDB954();
        (*(*(v13 - 8) + 8))(v7, v13);
      }

      else
      {
        v11 = sub_219BF5414();
        sub_219657A18(v7, type metadata accessor for UserNotification.ArticleData);
      }

      return v11;
    }

    if (EnumCaseMultiPayload == 2)
    {
      sub_2196579B0(v7, v4, type metadata accessor for UserNotification.IssueData);
      v12 = sub_219BF5414();
      sub_219657A18(v4, type metadata accessor for UserNotification.IssueData);
      return v12;
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {

      return sub_219BF5414();
    }

LABEL_12:
    sub_219657A18(v7, type metadata accessor for UserNotification.Kind);
    return sub_219BF5414();
  }

  if (EnumCaseMultiPayload == 6)
  {
    return sub_219BF5414();
  }

  v9 = EnumCaseMultiPayload;
  result = 0;
  if (v9 == 7)
  {
    return sub_219BF5414();
  }

  return result;
}

unint64_t sub_2187ADB18()
{
  result = qword_280EBB7B8;
  if (!qword_280EBB7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBB7B8);
  }

  return result;
}

uint64_t sub_2187ADB6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2187ADBD4(uint64_t a1)
{
  v2 = type metadata accessor for UserNotification.Kind(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2187ADC34()
{
  result = qword_280EBB7C0;
  if (!qword_280EBB7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBB7C0);
  }

  return result;
}

unint64_t sub_2187ADC88()
{
  v1 = 0x456C616972547369;
  v2 = 0x6566664F74736562;
  if (*v0 != 2)
  {
    v2 = 0x616470557473616CLL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2187ADD20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t storeEnumTagSinglePayload for MagazineGridModelSort(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for MagazineGridModelSort(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_2187ADEC0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v26 = sub_219BE4144();
  v22 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v25 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BE4944();
  v23 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187AD6F8(0, &qword_280E8CD68, sub_2187AE3A4, &type metadata for EngagementUpsellBestOffer.CodingKeys, MEMORY[0x277D844C8]);
  v28 = v6;
  v24 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - v7;
  v9 = type metadata accessor for EngagementUpsellBestOffer(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187AE3A4();
  v29 = v8;
  v12 = v30;
  sub_219BF7B34();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v24;
  v13 = v25;
  v30 = v11;
  v15 = v26;
  v33 = 0;
  sub_2187ADD20(&qword_280EE61C0, MEMORY[0x277D353E0]);
  sub_219BF7734();
  v16 = *(v23 + 32);
  v17 = v27;
  v27 = v4;
  v16(v30, v17, v4);
  v32 = 1;
  sub_2187ADD20(&qword_280EE63F8, MEMORY[0x277D34FA0]);
  sub_219BF7734();
  (*(v22 + 32))(&v30[*(v9 + 20)], v13, v15);
  v31 = 2;
  v18 = sub_219BF7704();
  (*(v14 + 8))(v29, v28);
  v19 = v30;
  v30[*(v9 + 24)] = v18 & 1;
  sub_2187AE658(v19, v21, type metadata accessor for EngagementUpsellBestOffer);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2187AE6C0(v19, type metadata accessor for EngagementUpsellBestOffer);
}

unint64_t sub_2187AE3A4()
{
  result = qword_280EBEE10[0];
  if (!qword_280EBEE10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EBEE10);
  }

  return result;
}

unint64_t sub_2187AE3FC()
{
  result = qword_280EBEDF8;
  if (!qword_280EBEDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBEDF8);
  }

  return result;
}

unint64_t sub_2187AE454()
{
  result = qword_280EBEE00;
  if (!qword_280EBEE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBEE00);
  }

  return result;
}

uint64_t sub_2187AE4A8()
{
  v1 = 0x63536C6C65737075;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x707954726566666FLL;
  }
}

uint64_t storeEnumTagSinglePayload for NotificationSetting(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for NotificationSetting(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_2187AE658(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2187AE6C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2187AE720(uint64_t a1, uint64_t a2)
{
  sub_21876CFD0(0, qword_280EBED90, type metadata accessor for EngagementUpsellBestOffer);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2187AE7B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_219BE4944();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_219BE4144();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_2187AE8BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EngagementUpsellOfferEntry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2187AE934(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_21876CFD0(0, qword_280EBED90, type metadata accessor for EngagementUpsellBestOffer);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = &a1[*(a3 + 24)];

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = sub_219BDBD34();
      v16 = *(*(v15 - 8) + 48);
      v17 = &a1[*(a3 + 28)];

      return v16(v17, a2, v15);
    }
  }
}

uint64_t sub_2187AEA74()
{

  sub_219BE2E94();
}

id sub_2187AEAC8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &unk_280E8E6F0);
  result = sub_219BE1E24();
  if (result)
  {
    v2 = result;
    v3 = type metadata accessor for AMSHandleNotificationDiscerner();
    v4 = objc_allocWithZone(v3);
    *&v4[OBJC_IVAR____TtC7NewsUI230AMSHandleNotificationDiscerner_pushHandler] = v2;
    v5.receiver = v4;
    v5.super_class = v3;
    return objc_msgSendSuper2(&v5, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_2187AEB68(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (!v8)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_21871D29C(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
  sub_219BE6AE4();
  swift_allocObject();
  v4 = sub_219BE6AC4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &unk_280E8E5E0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &unk_280E8E6D0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (result)
  {
    v7 = result;
    type metadata accessor for ArticleNotificationResponseHandler();
    result = swift_allocObject();
    result[2] = v3;
    result[3] = v4;
    result[4] = v5;
    result[5] = v6;
    result[6] = v7;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_2187AEDF8()
{
  type metadata accessor for EndOfTrackNotificationResponseHandler();

  return swift_allocObject();
}

uint64_t sub_2187AEE5C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E6C0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90580);
  result = sub_219BE1E34();
  if (!v9)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EBDA70);
  result = sub_219BE1E34();
  if (!v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &unk_280E8E6F0);
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    type metadata accessor for RemoteNotificationArrivalHandler();
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    sub_2186CB1F0(&v8, v5 + 24);
    sub_2186CB1F0(&v6, v5 + 64);
    *(v5 + 104) = v4;
    return v5;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2187AF014(void *a1, unint64_t *a2, uint64_t a3, void (*a4)(void), void (*a5)(_BYTE *, uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, a2);
  result = sub_219BE1E34();
  if (v11)
  {
    a4(0);
    v9 = swift_allocObject();
    a5(v10, v9 + 16);
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2187AF150@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = type metadata accessor for NotificationAppExtensionCommunicator();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    a2[3] = v3;
    result = sub_21871D29C(&unk_280E9AD68, type metadata accessor for NotificationAppExtensionCommunicator);
    a2[4] = result;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t NotificationAppExtensionCommunicator.communicate(sessionData:)(uint64_t a1)
{
  v63 = sub_219BE0BA4();
  v59 = *(v63 - 8);
  v2 = MEMORY[0x28223BE20](v63);
  v58 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v60 = &v58 - v4;
  v67 = sub_219BDEF24();
  v62 = *(v67 - 8);
  v5 = MEMORY[0x28223BE20](v67);
  v61 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v64 = &v58 - v7;
  v69 = sub_219BE1404();
  v66 = *(v69 - 8);
  v8 = MEMORY[0x28223BE20](v69);
  v65 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v58 - v10;
  v12 = sub_219BDF204();
  v68 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v58 - v16;
  v18 = sub_219BDB024();
  MEMORY[0x28223BE20](v18 - 8);
  v19 = sub_219BE14F4();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v58 - v24;
  sub_218718690(a1, v71);
  sub_2186CFDE4(0, &qword_280EE8F50);
  if (swift_dynamicCast())
  {
    (*(v20 + 32))(v23, v25, v19);
    v26 = *(v70 + OBJC_IVAR____TtC7NewsUI236NotificationAppExtensionCommunicator_sharedDefaults);
    sub_219BDB084();
    swift_allocObject();
    sub_219BDB074();
    sub_219BDB014();
    sub_219BDB034();
    sub_2187AFC94(&qword_280EE7FF0, MEMORY[0x277D2F370]);
    v34 = sub_219BDB064();
    v36 = v35;

    v37 = sub_219BDB9E4();
    sub_2186C6190(v34, v36);
    v38 = sub_219BF53D4();
    [v26 setObject:v37 forKey:v38];
    swift_unknownObjectRelease();

    (*(v20 + 8))(v23, v19);
  }

  else
  {
    v27 = v70;
    if (!swift_dynamicCast())
    {
      v30 = v69;
      if (swift_dynamicCast())
      {
        v32 = v65;
        v31 = v66;
        (*(v66 + 32))(v65, v11, v30);
        v33 = *(v27 + OBJC_IVAR____TtC7NewsUI236NotificationAppExtensionCommunicator_sharedDefaults);
        sub_219BDB084();
        swift_allocObject();
        sub_219BDB074();
        sub_219BDB014();
        sub_219BDB034();
        sub_2187AFC94(&qword_280EE8040, MEMORY[0x277D2F248]);
        v46 = sub_219BDB064();
        v48 = v47;

        v49 = sub_219BDB9E4();
        sub_2186C6190(v46, v48);
      }

      else
      {
        v39 = v64;
        v30 = v67;
        if (swift_dynamicCast())
        {
          v32 = v61;
          v31 = v62;
          (*(v62 + 32))(v61, v39, v30);
          v33 = *(v27 + OBJC_IVAR____TtC7NewsUI236NotificationAppExtensionCommunicator_sharedDefaults);
          sub_219BDB084();
          swift_allocObject();
          sub_219BDB074();
          sub_219BDB014();
          sub_219BDB034();
          sub_2187AFC94(&qword_280EE8918, MEMORY[0x277D2D770]);
          v50 = sub_219BDB064();
          v52 = v51;

          v49 = sub_219BDB9E4();
          sub_2186C6190(v50, v52);
        }

        else
        {
          v45 = v60;
          v30 = v63;
          if (!swift_dynamicCast())
          {
            return __swift_destroy_boxed_opaque_existential_1(v71);
          }

          v32 = v58;
          v31 = v59;
          (*(v59 + 32))(v58, v45, v30);
          v33 = *(v27 + OBJC_IVAR____TtC7NewsUI236NotificationAppExtensionCommunicator_sharedDefaults);
          sub_219BDB084();
          swift_allocObject();
          sub_219BDB074();
          sub_219BDB014();
          sub_219BDB034();
          sub_2187AFC94(&qword_280EE8210, MEMORY[0x277D2EB78]);
          v53 = sub_219BDB064();
          v55 = v54;

          v49 = sub_219BDB9E4();
          sub_2186C6190(v53, v55);
        }
      }

      v56 = sub_219BF53D4();
      [v33 setObject:v49 forKey:v56];
      swift_unknownObjectRelease();

      (*(v31 + 8))(v32, v30);
      return __swift_destroy_boxed_opaque_existential_1(v71);
    }

    v28 = v68;
    (*(v68 + 32))(v15, v17, v12);
    v29 = *(v27 + OBJC_IVAR____TtC7NewsUI236NotificationAppExtensionCommunicator_sharedDefaults);
    sub_219BDB084();
    swift_allocObject();
    sub_219BDB074();
    sub_219BDB014();
    sub_219BDB034();
    sub_2187AFC94(&qword_280EE8818, MEMORY[0x277D2D980]);
    v40 = sub_219BDB064();
    v42 = v41;

    v43 = sub_219BDB9E4();
    sub_2186C6190(v40, v42);
    v44 = sub_219BF53D4();
    [v29 setObject:v43 forKey:v44];
    swift_unknownObjectRelease();

    (*(v28 + 8))(v15, v12);
  }

  return __swift_destroy_boxed_opaque_existential_1(v71);
}