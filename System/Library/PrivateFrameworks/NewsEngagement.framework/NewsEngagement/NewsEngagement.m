void sub_25BE5BFA0()
{
  if (!qword_280E77560)
  {
    sub_25BE5BFF8();
    v0 = sub_25BEB4E54();
    if (!v1)
    {
      atomic_store(v0, &qword_280E77560);
    }
  }
}

unint64_t sub_25BE5BFF8()
{
  result = qword_280E77638;
  if (!qword_280E77638)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280E77638);
  }

  return result;
}

unint64_t sub_25BE5C080()
{
  result = qword_280E77600;
  if (!qword_280E77600)
  {
    type metadata accessor for EngagementAssembly();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E77600);
  }

  return result;
}

uint64_t sub_25BE5C0F0()
{
  v0 = sub_25BEB4574();
  v16 = *(v0 - 8);
  v17 = v0;
  MEMORY[0x28223BE20](v0, v1);
  v15 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_25BEB46D4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25BEB4584();
  sub_25BE5C5F4(0, &qword_280E77620);
  sub_25BEB4614();

  v8 = *MEMORY[0x277D6CF00];
  v9 = *(v4 + 104);
  v9(v7, v8, v3);
  sub_25BEB44E4();

  v10 = *(v4 + 8);
  v10(v7, v3);
  sub_25BEB4584();
  sub_25BE5C5F4(0, &qword_280E77628);
  sub_25BEB4614();

  v9(v7, v8, v3);
  sub_25BEB44E4();

  v10(v7, v3);
  sub_25BEB4584();
  sub_25BE5C5F4(0, &qword_280E77630);
  sub_25BEB4614();

  sub_25BEB4584();
  sub_25BE5C5F4(0, &qword_280E77618);
  sub_25BEB4614();

  sub_25BEB4584();
  sub_25BE5C5F4(0, &qword_280E77610);
  sub_25BEB4614();

  sub_25BEB4584();
  sub_25BE5C5F4(0, &qword_280E77608);
  sub_25BEB4614();

  sub_25BEB45A4();
  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  sub_25BEB45E4();
  v12 = v15;
  v11 = v16;
  v13 = v17;
  (*(v16 + 104))(v15, *MEMORY[0x277D6CB30], v17);
  sub_25BEB4624();
  (*(v11 + 8))(v12, v13);
  __swift_destroy_boxed_opaque_existential_0Tm(v18);
  sub_25BEB4594();
  sub_25BEB45F4();
}

uint64_t sub_25BE5C5F4(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

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

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t a1)
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

uint64_t sub_25BE5C6E0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BE5C5F4(0, qword_280E772B8);
  result = sub_25BEB4564();
  v5 = v27;
  if (!v27)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v28;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BE5C5F4(0, &qword_280E77628);
  result = sub_25BEB4564();
  if (!v26)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BE5C5F4(0, qword_280E76F38);
  result = sub_25BEB4564();
  if (v24)
  {
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
    MEMORY[0x28223BE20](v7, v7);
    v9 = (&v20[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9);
    v11 = *v9;
    v21 = type metadata accessor for EngagementInlineDialogViewControllerFactory();
    v22 = &off_286D80248;
    v20[0] = v11;
    v12 = type metadata accessor for EngagementInlineViewManager();
    v13 = objc_allocWithZone(v12);
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    MEMORY[0x28223BE20](v14, v14);
    v16 = (&v20[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16);
    v18 = sub_25BE5D238(v5, v6, v25, *v16, v13);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    result = __swift_destroy_boxed_opaque_existential_0Tm(v23);
    a2[3] = v12;
    a2[4] = &protocol witness table for EngagementInlineViewManager;
    *a2 = v18;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_25BE5C9CC()
{
  if (!qword_280E774F8)
  {
    sub_25BE5CD58();
    v0 = sub_25BEB46A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E774F8);
    }
  }
}

uint64_t sub_25BE5CA30(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v2 = type metadata accessor for EngagementInlineViewStartupTask();
  result = sub_25BEB4554();
  if (result)
  {
    v4 = result;
    v5[3] = v2;
    v5[4] = sub_25BE5D48C();
    v5[0] = v4;
    sub_25BEB45D4();
    return __swift_destroy_boxed_opaque_existential_0Tm(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25BE5CAEC()
{
  v0 = sub_25BEB46D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25BE5C5F4(0, &qword_280E774C0);
  sub_25BEB4614();
  (*(v1 + 104))(v4, *MEMORY[0x277D6CF00], v0);
  sub_25BEB44E4();

  (*(v1 + 8))(v4, v0);
  sub_25BE5C5F4(0, qword_280E76F38);
  sub_25BEB4614();

  type metadata accessor for EngagementInlineViewStartupTask();
  sub_25BEB4604();
}

uint64_t sub_25BE5CCB8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BE5C5F4(0, &qword_280E77620);
  result = sub_25BEB4564();
  if (v4)
  {
    type metadata accessor for EngagementInlineViewStartupTask();
    v2 = swift_allocObject();
    sub_25BE5D044(&v3, v2 + 16);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_25BE5CD58()
{
  result = qword_280E774E0;
  if (!qword_280E774E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E774E0);
  }

  return result;
}

unint64_t sub_25BE5CDB0()
{
  result = qword_280E774D0;
  if (!qword_280E774D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E774D0);
  }

  return result;
}

uint64_t sub_25BE5CE04@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BE5C5F4(0, &qword_280E77610);
  result = sub_25BEB4564();
  if (!v12)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BE5C5F4(0, &qword_280E77618);
  result = sub_25BEB4564();
  if (!v10)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BE5C5F4(0, qword_280E772B8);
  result = sub_25BEB4564();
  if (v7)
  {
    v5 = type metadata accessor for EngagementInlineDialogViewControllerFactory();
    v6 = swift_allocObject();
    *(v6 + 112) = 1937204590;
    *(v6 + 120) = 0xE400000000000000;
    *(v6 + 128) = 2;
    sub_25BE5D044(&v11, v6 + 16);
    result = sub_25BE5D044(&v9, v6 + 56);
    *(v6 + 96) = v7;
    *(v6 + 104) = v8;
    a2[3] = v5;
    a2[4] = &off_286D80248;
    *a2 = v6;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_25BE5CF90@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BE5C5F4(0, qword_280E77010);
  result = sub_25BEB4564();
  if (v7)
  {
    v4 = type metadata accessor for EngagementUpsellRequestFactory();
    v5 = swift_allocObject();
    result = sub_25BE5D044(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_286D7F650;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25BE5D044(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_25BE5D080@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for EngagementDebugRequestFactory();
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F98];
  a1[3] = v2;
  a1[4] = &off_286D80FC8;
  *a1 = result;
  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_25BE5D1A0@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for EngagementBannerLayoutStore();
  v3 = swift_allocObject();
  sub_25BE5C9CC();
  swift_allocObject();
  result = sub_25BEB4694();
  *(v3 + 16) = result;
  a1[3] = v2;
  a1[4] = &protocol witness table for EngagementBannerLayoutStore;
  *a1 = v3;
  return result;
}

id sub_25BE5D238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  ObjectType = swift_getObjectType();
  sub_25BEB4524();
  MEMORY[0x28223BE20]();
  v21[3] = type metadata accessor for EngagementInlineDialogViewControllerFactory();
  v21[4] = &off_286D80248;
  v21[0] = a4;
  v11 = OBJC_IVAR____TtC14NewsEngagement27EngagementInlineViewManager_state;
  type metadata accessor for EngagementInlineViewManager.State();
  v12 = swift_allocObject();
  sub_25BEB4514();
  sub_25BEB4544();
  swift_allocObject();
  v13 = sub_25BEB4534();
  v14 = MEMORY[0x277D84F98];
  v12[2] = v13;
  v12[3] = v14;
  v12[4] = v14;
  *&a5[v11] = v12;
  v15 = &a5[OBJC_IVAR____TtC14NewsEngagement27EngagementInlineViewManager_featureSettings];
  *v15 = a1;
  *(v15 + 1) = a2;
  sub_25BE5D428(a3, &a5[OBJC_IVAR____TtC14NewsEngagement27EngagementInlineViewManager_engagementBannerLayoutStore]);
  sub_25BE5D428(v21, &a5[OBJC_IVAR____TtC14NewsEngagement27EngagementInlineViewManager_inlineDialogViewControllerFactory]);
  v20.receiver = a5;
  v20.super_class = ObjectType;
  swift_unknownObjectRetain();
  v16 = objc_msgSendSuper2(&v20, sel_init);
  swift_getObjectType();
  v17 = *(a2 + 80);
  v18 = v16;
  v17();

  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  __swift_destroy_boxed_opaque_existential_0Tm(v21);
  return v18;
}

uint64_t sub_25BE5D428(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_25BE5D48C()
{
  result = qword_280E77210;
  if (!qword_280E77210)
  {
    type metadata accessor for EngagementInlineViewStartupTask();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E77210);
  }

  return result;
}

uint64_t sub_25BE5D508(void *a1)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_25BE5D568()
{
  v0 = sub_25BEB4464();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_25BEB4454();
  MEMORY[0x28223BE20](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
  v10[15] = 0;
  sub_25BE5D734(0, &qword_280E77500);
  swift_allocObject();
  result = sub_25BEB44D4();
  qword_280E77528 = result;
  return result;
}

void sub_25BE5D734(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_25BEB44C4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_25BE5D784@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D6CE30];
  v3 = sub_25BEB4634();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

unint64_t EngagementUIPlacement.rawValue.getter()
{
  result = 0x6C6576654C707061;
  switch(*v0)
  {
    case 2:
      return 0x73756C507377656ELL;
    case 3:
      return 0xD000000000000010;
    case 4:
      return 0x6261546F69647561;
    case 5:
      return 0xD000000000000010;
    case 6:
      v3 = 0x686372616573;
      return v3 & 0xFFFFFFFFFFFFLL | 0x6154000000000000;
    case 7:
      v3 = 0x7374726F7073;
      return v3 & 0xFFFFFFFFFFFFLL | 0x6154000000000000;
    case 8:
      return 0x5473656C7A7A7570;
    case 9:
      return 0x6C6F46664F706F74;
    case 0xA:
      return 0xD000000000000012;
    case 0xB:
    case 0x1D:
      v2 = 10;
      goto LABEL_27;
    case 0xC:
    case 0x1B:
      v2 = 11;
      goto LABEL_27;
    case 0xD:
      return 0x766153664F706F74;
    case 0xE:
      return 0xD000000000000011;
    case 0xF:
      return 0xD000000000000010;
    case 0x10:
      return 0xD000000000000010;
    case 0x11:
      return 0xD000000000000010;
    case 0x12:
    case 0x13:
    case 0x18:
      return 0xD000000000000017;
    case 0x14:
    case 0x19:
      return 0xD00000000000001CLL;
    case 0x15:
    case 0x1A:
      return 0xD000000000000020;
    case 0x16:
      v2 = 9;
LABEL_27:
      result = v2 | 0xD000000000000010;
      break;
    case 0x17:
      result = 0xD000000000000022;
      break;
    case 0x1C:
      result = 0xD000000000000024;
      break;
    case 0x1E:
      result = 0xD00000000000001FLL;
      break;
    case 0x1F:
      result = 0xD000000000000023;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25BE5DBD8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BE5C5F4(0, qword_280E772B8);
  result = sub_25BEB4564();
  v5 = v23;
  if (v23)
  {
    v6 = v24;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_25BE5C5F4(0, &qword_280E774C0);
    result = sub_25BEB4564();
    if (v22)
    {
      v7 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
      MEMORY[0x28223BE20](v7, v7);
      v9 = (v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v10 + 16))(v9);
      v11 = *v9;
      v12 = type metadata accessor for EngagementEventManager();
      v20[3] = v12;
      v20[4] = &off_286D7F9C8;
      v20[0] = v11;
      v13 = type metadata accessor for EngagementEventHandler();
      v14 = swift_allocObject();
      v15 = __swift_mutable_project_boxed_opaque_existential_1(v20, v12);
      MEMORY[0x28223BE20](v15, v15);
      v17 = (v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v18 + 16))(v17);
      v19 = *v17;
      *(v14 + 72) = v12;
      *(v14 + 80) = &off_286D7F9C8;
      *(v14 + 48) = v19;
      *(v14 + 24) = 0;
      swift_unknownObjectWeakInit();
      *(v14 + 88) = MEMORY[0x277D84F98];
      *(v14 + 96) = 0x4000000000000000;
      *(v14 + 104) = 2;
      *(v14 + 32) = v5;
      *(v14 + 40) = v6;
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      result = __swift_destroy_boxed_opaque_existential_0Tm(v21);
      a2[3] = v13;
      a2[4] = &protocol witness table for EngagementEventHandler;
      *a2 = v14;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25BE5DE90@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_25BE5E094();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25BEB8FA0;
  v5 = type metadata accessor for EngagementEventProvider();
  v6 = [objc_allocWithZone(v5) init];
  *(v4 + 56) = v5;
  *(v4 + 64) = &off_286D802E0;
  *(v4 + 32) = v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BE5C5F4(0, &qword_280E77618);
  result = sub_25BEB4564();
  if (v17)
  {
    v8 = type metadata accessor for EngagementDebugEventProvider();
    v9 = swift_allocObject();
    v10 = MEMORY[0x277D84F98];
    *(v9 + 56) = MEMORY[0x277D84F98];
    sub_25BE5D044(&v16, v9 + 16);
    *(v4 + 96) = v8;
    *(v4 + 104) = &off_286D7FB20;
    *(v4 + 72) = v9;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_25BE5C5F4(0, &qword_280E77610);
    result = sub_25BEB4564();
    if (v17)
    {
      v11 = type metadata accessor for EngagementUpsellEventProvider();
      v12 = objc_allocWithZone(v11);
      *&v12[OBJC_IVAR____TtC14NewsEngagement29EngagementUpsellEventProvider_observersStore] = v10;
      sub_25BE5D428(&v16, &v12[OBJC_IVAR____TtC14NewsEngagement29EngagementUpsellEventProvider_requestFactory]);
      v15.receiver = v12;
      v15.super_class = v11;
      v13 = objc_msgSendSuper2(&v15, sel_init);
      __swift_destroy_boxed_opaque_existential_0Tm(&v16);
      *(v4 + 136) = v11;
      *(v4 + 144) = &off_286D7F570;
      *(v4 + 112) = v13;
      v14 = type metadata accessor for EngagementEventManager();
      result = swift_allocObject();
      *(result + 16) = v4;
      a2[3] = v14;
      a2[4] = &off_286D7F9C8;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_25BE5E094()
{
  if (!qword_280E765F8)
  {
    sub_25BE5C5F4(255, &qword_280E76AB8);
    v0 = sub_25BEB4E54();
    if (!v1)
    {
      atomic_store(v0, &qword_280E765F8);
    }
  }
}

uint64_t sub_25BE5E248(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  swift_beginAccess();
  *(v4 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_25BE5E2D4()
{
  sub_25BEB4F04();
  EngagementUIPlacement.rawValue.getter();
  sub_25BEB48C4();

  return sub_25BEB4F24();
}

uint64_t sub_25BE5E370()
{
  v0 = sub_25BEB4454();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25BEB4444();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25BE5E51C();
  (*(v6 + 104))(v9, *MEMORY[0x277D6D040], v5);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D098], v0);
  result = sub_25BEB44A4();
  qword_280E76E10 = result;
  return result;
}

void sub_25BE5E51C()
{
  if (!qword_280E76DF0)
  {
    sub_25BEB4444();
    sub_25BE5E580();
    v0 = sub_25BEB44C4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E76DF0);
    }
  }
}

unint64_t sub_25BE5E580()
{
  result = qword_280E76DF8;
  if (!qword_280E76DF8)
  {
    sub_25BEB4444();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E76DF8);
  }

  return result;
}

uint64_t sub_25BE5E608(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for EngagementUpsellBannerPropertiesResult()
{
  result = qword_280E770A0;
  if (!qword_280E770A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25BE5E68C()
{
  sub_25BE5E748();
  if (v0 <= 0x3F)
  {
    sub_25BE5E7A0(319, &qword_280E774C8);
    if (v1 <= 0x3F)
    {
      sub_25BE5E7A0(319, &qword_280E76EF0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25BE5E748()
{
  if (!qword_280E77110)
  {
    type metadata accessor for EngagementUpsellBannerProperties(255);
    v0 = sub_25BEB4AE4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E77110);
    }
  }
}

void sub_25BE5E7A0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_25BEB4AE4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t EngagementUpsellBannerPropertiesProviding.bannerProperties(for:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for EngagementUpsellBannerProperties(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  result = type metadata accessor for EngagementUpsellBannerPropertiesResult();
  *(a1 + *(result + 20)) = 11;
  v4 = (a1 + *(result + 24));
  *v4 = 0;
  v4[1] = 0;
  return result;
}

uint64_t sub_25BE5E86C(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_25BE5EA14(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_25BE5E8D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25BE5E954(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    sub_25BE81160(0, &qword_280E77530, MEMORY[0x277CC9260]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

void sub_25BE5EA14(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_25BEB4AE4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_25BE5EA7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    sub_25BE81160(0, &qword_280E77530, MEMORY[0x277CC9260]);
    v10 = v9;
    v11 = *(*(v9 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_25BE5EB54(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_25BE5EA14(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_25BE5EBB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25BE5EC10(uint64_t result)
{
  if (result != 11)
  {
    return sub_25BE60CAC(result);
  }

  return result;
}

uint64_t sub_25BE5EC20(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF4 && *(a1 + 8))
  {
    return (*a1 + 2147483637);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 0xB)
  {
    return (v3 - 10);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BE5EC80@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  sub_25BE5D428(v2 + 16, v28);
  v5 = v29;
  v6 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  v27[0] = v4;
  EngagementRequestFactoryType.createRequest(for:)(v27, v5, *(v6 + 8));
  __swift_destroy_boxed_opaque_existential_0Tm(v28);
  v7 = BYTE8(v31);
  if (BYTE8(v31) != 255 && (BYTE8(v31) & 1) == 0)
  {
    v11 = v31;
    sub_25BE7697C();
    sub_25BE82788(v11, v7);
    v12 = v11;
    v13 = sub_25BEB4AA4();
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    *(v14 + 24) = v4;
    v15 = v32;
    *(v14 + 32) = v31;
    *(v14 + 48) = v15;
    *(v14 + 64) = v33;
    sub_25BE82788(v11, v7);
    sub_25BE94258(&v31, v28);
    type metadata accessor for EngagementInlineDialogViewController();
    sub_25BEB4A84();

    v16 = v28[0];
    sub_25BEB4B54();
    v17 = [v12 userInfo];
    v18 = sub_25BEB4834();

    if (*(v18 + 16) && (v19 = sub_25BE7A95C(v28), (v20 & 1) != 0))
    {
      sub_25BE60ED4(*(v18 + 56) + 32 * v19, v27);
      sub_25BE7B108(v28);

      if (swift_dynamicCast())
      {
        if (v16)
        {
          v21 = v16;
          v22 = sub_25BEB4CD4();

          v23 = 4;
          if (v22 < 4)
          {
            v23 = v22;
          }

          v21[OBJC_IVAR____TtC14NewsEngagement36EngagementInlineDialogViewController_offer] = v23;

          goto LABEL_14;
        }

        goto LABEL_16;
      }
    }

    else
    {

      sub_25BE7B108(v28);
    }

    if (v16)
    {
      v21 = v16;
LABEL_14:
      v24 = objc_allocWithZone(MEMORY[0x277CEE880]);
      v25 = v21;
      v26 = [v24 init];
      [v25 setPreferredAppearance_];
      sub_25BE8065C(v11, v7);
      sub_25BE8065C(v11, v7);

LABEL_17:
      v28[0] = v32;
      sub_25BE5F018(v28, v27, &qword_280E774C8);
      result = sub_25BE5F084(&v31);
      v9 = BYTE8(v32);
      v10 = v28[0];
      *a2 = v16;
      goto LABEL_18;
    }

LABEL_16:
    sub_25BE8065C(v11, v7);
    sub_25BE8065C(v11, v7);
    goto LABEL_17;
  }

  v28[0] = v32;
  sub_25BE5F018(v28, v27, &qword_280E774C8);
  result = sub_25BE5F084(&v31);
  v9 = BYTE8(v32);
  v10 = v28[0];
  *a2 = 0;
LABEL_18:
  *(a2 + 8) = v10;
  *(a2 + 16) = v9;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  return result;
}

uint64_t sub_25BE5F018(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  sub_25BE5E7A0(0, a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_14NewsEngagement0B7RequestOSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BE5F0EC()
{
  v0 = EngagementUIPlacement.rawValue.getter();
  v2 = v1;
  if (v0 == EngagementUIPlacement.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_25BEB4E64();
  }

  return v5 & 1;
}

uint64_t sub_25BE5F18C@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v31 = a2;
  v29 = type metadata accessor for EngagementUpsellBannerProperties;
  sub_25BE5EA14(0, &qword_280E77110, type metadata accessor for EngagementUpsellBannerProperties);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v28 - v7;
  v9 = type metadata accessor for EngagementUpsellBannerProperties(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = (&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = type metadata accessor for EngagementUpsellBannerPropertiesResult();
  MEMORY[0x28223BE20](v30, v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v19 = v3[5];
  v18 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v19);
  v34 = v17;
  (*(v18 + 8))(&v34, v19, v18);
  sub_25BE5E86C(v16, v8, &qword_280E77110, v29);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_25BE5EB54(v8, &qword_280E77110, type metadata accessor for EngagementUpsellBannerProperties);
    v20 = *&v16[*(v30 + 20)];
    sub_25BE5EC10(v20);
    result = sub_25BE5EBB0(v16, type metadata accessor for EngagementUpsellBannerPropertiesResult);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
  }

  else
  {
    sub_25BE8257C(v8, v13);
    sub_25BE81C08(v13, &v32);
    sub_25BE5EBB0(v13, type metadata accessor for EngagementUpsellBannerProperties);
    v22 = v32;
    v25 = v33;
    v26 = &v16[*(v30 + 24)];
    v23 = *v26;
    v24 = *(v26 + 1);

    result = sub_25BE5EBB0(v16, type metadata accessor for EngagementUpsellBannerPropertiesResult);
    v20 = 11;
  }

  v27 = v31;
  *v31 = v22;
  *(v27 + 8) = v25;
  v27[2] = v20;
  *(v27 + 24) = 3;
  v27[4] = v23;
  v27[5] = v24;
  return result;
}

uint64_t get_enum_tag_for_layout_string_14NewsEngagement0B15InlineViewErrorOSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v3 = -1;
  }

  else
  {
    v3 = v2;
  }

  v4 = v3 - 9;
  if (v2 >= 10)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t type metadata accessor for EngagementUpsellTrigger()
{
  result = qword_280E76B90;
  if (!qword_280E76B90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_OWORD *sub_25BE5F500(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_25BE5F510(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_25BE5F578(unsigned __int8 *a1@<X0>, char a2@<W1>, uint8_t *a3@<X8>)
{
  v4 = v3;
  v7 = *a1;
  if (qword_280E76F20 != -1)
  {
    swift_once();
  }

  v8 = sub_25BEB4764();
  __swift_project_value_buffer(v8, qword_280E77F40);
  v9 = sub_25BEB4744();
  v10 = sub_25BEB4A64();
  if (os_log_type_enabled(v9, v10))
  {
    bufa = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *&v59 = v56;
    *bufa = 136315138;
    v58[0] = v7;
    v11 = EngagementUIPlacement.rawValue.getter();
    v13 = v7;
    v14 = a2;
    v15 = a3;
    v16 = sub_25BE60F30(v11, v12, &v59);

    *(bufa + 4) = v16;
    a3 = v15;
    a2 = v14;
    v7 = v13;
    v4 = v3;
    _os_log_impl(&dword_25BE5A000, v9, v10, "Requesting inlineDialogViewController for %s.", bufa, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v56);
    MEMORY[0x25F87FD60](v56, -1, -1);
    MEMORY[0x25F87FD60](bufa, -1, -1);
  }

  if (qword_280E77510 != -1)
  {
    swift_once();
  }

  sub_25BE615A4();
  sub_25BEB4424();
  if (v59)
  {
    if ((v7 - 9) <= 9)
    {
LABEL_15:
      v58[0] = v7;
      sub_25BE5EC80(v58, &v59);
      v28 = *(&v59 + 1);
      v26 = v59;
      v57 = v60;
      if (v59)
      {
        v29 = v59;
        sub_25BE5EC10(v28);

        sub_25BE5FDE0(v28);
      }

      else
      {
        sub_25BE5EC10(*(&v59 + 1));
        if (sub_25BE5FD78())
        {
          if (qword_280E76E48 != -1)
          {
            swift_once();
          }

          sub_25BEB4424();
          if (v59)
          {
            goto LABEL_26;
          }
        }

        if (a2)
        {
LABEL_26:
          buf = a3;
          v32 = *(v4 + 80);
          v33 = *(v4 + 88);
          __swift_project_boxed_opaque_existential_1((v4 + 56), v32);
          v58[0] = v7;
          EngagementRequestFactoryType.createRequest(for:forceEnable:)(v58, a2 & 1, v32, *(v33 + 8));
          v34 = BYTE8(v59);
          if (BYTE8(v59) == 255 || (BYTE8(v59) & 1) != 0)
          {
            sub_25BE5FDE0(v28);

            if (v28 == 11)
            {
              v28 = v60;
              sub_25BE5EC10(v60);
            }

            sub_25BE5F084(&v59);
            v26 = 0;
            a3 = buf;
          }

          else
          {
            v35 = v59;
            sub_25BE7697C();
            v36 = v35;
            v37 = sub_25BEB4AA4();
            v38 = swift_allocObject();
            *(v38 + 16) = v36;
            *(v38 + 24) = v7;
            v39 = v60;
            *(v38 + 32) = v59;
            *(v38 + 48) = v39;
            *(v38 + 64) = v61;
            sub_25BE82788(v35, v34);
            sub_25BE94258(&v59, v58);
            type metadata accessor for EngagementInlineDialogViewController();
            sub_25BEB4A84();

            v26 = *v58;
            if (*v58)
            {
              v40 = objc_allocWithZone(MEMORY[0x277CEE880]);
              v41 = v26;
              v42 = [v40 init];
              [v41 setPreferredAppearance_];
              sub_25BE5FDE0(v28);

              sub_25BE8065C(v35, v34);
              sub_25BE8065C(v35, v34);
            }

            else
            {
              sub_25BE5FDE0(v28);

              sub_25BE8065C(v35, v34);
              sub_25BE8065C(v35, v34);
            }

            a3 = buf;
            if (v28 == 11)
            {
              v28 = v60;
              sub_25BE5EC10(v60);
            }

            sub_25BE5F084(&v59);
          }
        }

        else if (*(v4 + 128))
        {
          sub_25BE7697C();
          v30 = sub_25BEB4AA4();
          v31 = swift_allocObject();
          *(v31 + 16) = v4;
          *(v31 + 24) = v7;
          type metadata accessor for EngagementInlineDialogViewController();

          sub_25BEB4A84();
          sub_25BE5FDE0(v28);

          v26 = v59;
        }

        else
        {
          sub_25BE5FDE0(v28);

          v26 = 0;
          if (v28 == 11)
          {
            v28 = 2;
          }
        }
      }

      v27 = v57;
      goto LABEL_18;
    }

    goto LABEL_11;
  }

  if (((1 << v7) & 0xFFF801FF) != 0)
  {
LABEL_11:
    v17 = sub_25BEB4744();
    v18 = sub_25BEB4A64();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = a3;
      v21 = swift_slowAlloc();
      *&v59 = v21;
      *v19 = 136315138;
      v58[0] = v7;
      v22 = EngagementUIPlacement.rawValue.getter();
      v24 = sub_25BE60F30(v22, v23, &v59);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_25BE5A000, v17, v18, "Placement %s is not of type inline. Returning empty controller.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      v25 = v21;
      a3 = v20;
      MEMORY[0x25F87FD60](v25, -1, -1);
      MEMORY[0x25F87FD60](v19, -1, -1);
    }

    v26 = 0;
    v27 = 0;
    v28 = 7;
    goto LABEL_18;
  }

  if (((1 << v7) & 0x3FE00) != 0)
  {
    goto LABEL_15;
  }

  v43 = *(v4 + 104);
  ObjectType = swift_getObjectType();
  if (((*(v43 + 40))(ObjectType, v43) & 1) == 0)
  {
    goto LABEL_15;
  }

  v45 = sub_25BEB4744();
  v46 = sub_25BEB4A64();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = a3;
    v49 = swift_slowAlloc();
    *&v59 = v49;
    *v47 = 136315138;
    v58[0] = 18;
    v50 = EngagementUIPlacement.rawValue.getter();
    v52 = sub_25BE60F30(v50, v51, &v59);

    *(v47 + 4) = v52;
    _os_log_impl(&dword_25BE5A000, v45, v46, "Placement %s is blocked. Returning empty controller.", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v49);
    v53 = v49;
    a3 = v48;
    MEMORY[0x25F87FD60](v53, -1, -1);
    MEMORY[0x25F87FD60](v47, -1, -1);
  }

  v26 = 0;
  v27 = 0;
  v28 = 5;
LABEL_18:
  *a3 = v26;
  *(a3 + 1) = v28;
  a3[16] = v27;
  *(a3 + 3) = 0;
  *(a3 + 4) = 0;
}

uint64_t sub_25BE5FD3C()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_25BE5FD78()
{
  v1 = *(v0 + 128);
  if (v1 == 2)
  {
    v2 = *(v0 + 104);
    ObjectType = swift_getObjectType();
    LOBYTE(v1) = (*(v2 + 8))(ObjectType, v2);
    *(v0 + 128) = v1 & 1;
  }

  return v1 & 1;
}

uint64_t sub_25BE5FDE0(uint64_t result)
{
  if (result != 11)
  {
    return sub_25BE60EC0(result);
  }

  return result;
}

Swift::Void __swiftcall EngagementInlineViewManager.addPlacement(_:)(NewsEngagement::EngagementUIPlacement a1)
{
  v2 = v1;
  v3 = a1;
  v4 = sub_25BEB47A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25BEB47C4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  v15 = *(v1 + OBJC_IVAR____TtC14NewsEngagement27EngagementInlineViewManager_featureSettings + 8);
  ObjectType = swift_getObjectType();
  v17 = (*(v15 + 64))(ObjectType, v15);
  LOBYTE(v15) = sub_25BE612C0(v14, v17);

  if (v15)
  {
    if (qword_280E76F20 != -1)
    {
      swift_once();
    }

    v20 = sub_25BEB4764();
    __swift_project_value_buffer(v20, qword_280E77F40);
    v21 = sub_25BEB4744();
    v22 = sub_25BEB4A64();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&aBlock = v24;
      *v23 = 136315138;
      LOBYTE(v109[0]) = v14;
      v25 = EngagementUIPlacement.rawValue.getter();
      v27 = sub_25BE60F30(v25, v26, &aBlock);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_25BE5A000, v21, v22, "Ignoring request to add blocked placement: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      MEMORY[0x25F87FD60](v24, -1, -1);
      MEMORY[0x25F87FD60](v23, -1, -1);
    }

    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = swift_allocObject();
    *(v29 + 16) = v28;
    *(v29 + 24) = 4;
    *(v29 + 32) = v14;
    *(v29 + 33) = 0;

    sub_25BEB4734();

    return;
  }

  v101 = v4;
  v102 = v10;
  v98 = v8;
  v99 = v9;
  v100 = v5;
  v30 = *(v1 + OBJC_IVAR____TtC14NewsEngagement27EngagementInlineViewManager_state);
  v109[0] = *(v30 + 16);
  MEMORY[0x28223BE20](v18, v19);
  v96[-2] = v30;
  LOBYTE(v96[-1]) = v14;
  sub_25BEB4544();
  sub_25BE61910(0, &qword_280E770B0, type metadata accessor for EngagementInlineDialogViewController, MEMORY[0x277D83D88]);

  sub_25BEB4644();

  if (aBlock)
  {

    if (qword_280E76F20 != -1)
    {
      swift_once();
    }

    v33 = sub_25BEB4764();
    __swift_project_value_buffer(v33, qword_280E77F40);
    v34 = sub_25BEB4744();
    v35 = sub_25BEB4A54();
    if (!os_log_type_enabled(v34, v35))
    {
      goto LABEL_15;
    }

    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *&aBlock = v37;
    *v36 = 136315138;
    LOBYTE(v109[0]) = v14;
    v38 = EngagementUIPlacement.rawValue.getter();
    v40 = sub_25BE60F30(v38, v39, &aBlock);

    *(v36 + 4) = v40;
    v41 = "Tried to add an already existing placement: %s";
LABEL_14:
    _os_log_impl(&dword_25BE5A000, v34, v35, v41, v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v37);
    MEMORY[0x25F87FD60](v37, -1, -1);
    MEMORY[0x25F87FD60](v36, -1, -1);
LABEL_15:

    return;
  }

  v109[0] = *(v30 + 16);
  MEMORY[0x28223BE20](v31, v32);
  v96[-2] = v30;
  LOBYTE(v96[-1]) = v14;
  sub_25BE61510(0, qword_280E77418, &type metadata for EngagementInlineBannerState, MEMORY[0x277D83D88]);

  sub_25BEB4644();

  if (v104 != 255)
  {
    if (v104 == 2 && aBlock == 0)
    {
      sub_25BE86988(0, 0, 2);
      if (qword_280E76F20 != -1)
      {
        swift_once();
      }

      v42 = sub_25BEB4764();
      __swift_project_value_buffer(v42, qword_280E77F40);
      v34 = sub_25BEB4744();
      v35 = sub_25BEB4A54();
      if (!os_log_type_enabled(v34, v35))
      {
        goto LABEL_15;
      }

      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *&aBlock = v37;
      *v36 = 136315138;
      LOBYTE(v109[0]) = v14;
      v43 = EngagementUIPlacement.rawValue.getter();
      v45 = sub_25BE60F30(v43, v44, &aBlock);

      *(v36 + 4) = v45;
      v41 = "Placement already being added: %s";
      goto LABEL_14;
    }

    sub_25BEB3D50(aBlock, *(&aBlock + 1), v104);
  }

  if (qword_280E76F20 != -1)
  {
    swift_once();
  }

  v46 = sub_25BEB4764();
  v97 = __swift_project_value_buffer(v46, qword_280E77F40);
  v47 = sub_25BEB4744();
  v48 = sub_25BEB4A64();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *&aBlock = v50;
    *v49 = 136315138;
    LOBYTE(v109[0]) = v14;
    v51 = EngagementUIPlacement.rawValue.getter();
    v53 = sub_25BE60F30(v51, v52, &aBlock);

    *(v49 + 4) = v53;
    _os_log_impl(&dword_25BE5A000, v47, v48, "Adding placement: %s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v50);
    MEMORY[0x25F87FD60](v50, -1, -1);
    MEMORY[0x25F87FD60](v49, -1, -1);
  }

  v54 = sub_25BEB4744();
  v55 = sub_25BEB4A44();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *&aBlock = v57;
    *v56 = 136315138;
    LOBYTE(v109[0]) = v14;
    v58 = EngagementUIPlacement.rawValue.getter();
    v60 = sub_25BE60F30(v58, v59, &aBlock);

    *(v56 + 4) = v60;
    _os_log_impl(&dword_25BE5A000, v54, v55, "Fetching dialog view controller for placement: %s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v57);
    MEMORY[0x25F87FD60](v57, -1, -1);
    MEMORY[0x25F87FD60](v56, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC14NewsEngagement27EngagementInlineViewManager_inlineDialogViewControllerFactory), *(v1 + OBJC_IVAR____TtC14NewsEngagement27EngagementInlineViewManager_inlineDialogViewControllerFactory + 24));
  LOBYTE(v109[0]) = v14;
  sub_25BE5F578(v109, 0, &aBlock);
  v61 = aBlock;
  v62 = v106;
  if (*(&aBlock + 1) != 11)
  {
    v63 = v104;
    v64 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v65 = swift_allocObject();
    *(v65 + 16) = v64;
    *(v65 + 24) = *(&v61 + 1);
    *(v65 + 32) = v14;
    *(v65 + 33) = v63;
    sub_25BE5EC10(*(&v61 + 1));
    sub_25BE5EC10(*(&v61 + 1));

    sub_25BEB4734();

    sub_25BE5FDE0(*(&v61 + 1));
  }

  if (v61)
  {
    v96[0] = *(&v61 + 1);
    v66 = v61;
    [v66 setDelegate_];
    sub_25BEB44F4();
    LOBYTE(v109[0]) = v14;
    v109[1] = v66;
    v110 = xmmword_25BEB9720;
    v111 = 2;
    swift_beginAccess();
    v67 = v66;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v108 = *(v30 + 24);
    *(v30 + 24) = 0x8000000000000000;
    sub_25BE85CF4(v109, v14, isUniquelyReferenced_nonNull_native);
    *(v30 + 24) = v108;
    swift_endAccess();
    sub_25BEB4504();
    v69 = v67;
    v70 = sub_25BEB4744();
    v71 = sub_25BEB4A44();

    v72 = os_log_type_enabled(v70, v71);
    v96[1] = v62;
    if (v72)
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      *&aBlock = v97;
      *v73 = 138412546;
      *(v73 + 4) = v69;
      *v74 = v61;
      v75 = v74;
      *(v73 + 12) = 2080;
      LOBYTE(v108) = v14;
      v76 = EngagementUIPlacement.rawValue.getter();
      v78 = v77;
      v79 = v69;
      v80 = sub_25BE60F30(v76, v78, &aBlock);

      *(v73 + 14) = v80;
      _os_log_impl(&dword_25BE5A000, *(&v61 + 1), v71, "Assigned dialog view controller %@ for placement: %s", v73, 0x16u);
      sub_25BE84A0C(v75);
      MEMORY[0x25F87FD60](v75, -1, -1);
      v81 = v97;
      __swift_destroy_boxed_opaque_existential_0Tm(v97);
      MEMORY[0x25F87FD60](v81, -1, -1);
      MEMORY[0x25F87FD60](v73, -1, -1);
    }

    v82 = v102;
    if ((v14 - 9) >= 0xA)
    {
    }

    else
    {
      sub_25BE80458(0, &qword_280E766B0);
      v83 = sub_25BEB4AA4();
      v84 = swift_allocObject();
      *(v84 + 16) = v69;
      v106 = sub_25BEB3CA4;
      v107 = v84;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v104 = sub_25BEAE488;
      v105 = &block_descriptor_5;
      v85 = _Block_copy(&aBlock);
      v86 = v69;

      sub_25BEB47B4();
      *&aBlock = MEMORY[0x277D84F90];
      sub_25BEB3CF8();
      sub_25BE61910(0, &qword_280E76700, MEMORY[0x277D85198], MEMORY[0x277D83940]);
      sub_25BE80500();
      v87 = v98;
      v88 = v101;
      sub_25BEB4B04();
      MEMORY[0x25F87F2C0](0, v13, v87, v85);
      _Block_release(v85);

      (*(v100 + 8))(v87, v88);
      (*(v82 + 8))(v13, v99);
      aBlock = xmmword_25BEB9730;
      LOBYTE(v104) = 2;
      sub_25BEAF5C0(v86, &aBlock);
    }

    sub_25BE5FDE0(v96[0]);
  }

  else
  {
    v89 = sub_25BEB4744();
    v90 = sub_25BEB4A54();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      *&aBlock = v92;
      *v91 = 136315138;
      LOBYTE(v109[0]) = v14;
      v93 = EngagementUIPlacement.rawValue.getter();
      v95 = sub_25BE60F30(v93, v94, &aBlock);

      *(v91 + 4) = v95;
      _os_log_impl(&dword_25BE5A000, v89, v90, "Could not find dialog view controller for placement: %s", v91, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v92);
      MEMORY[0x25F87FD60](v92, -1, -1);
      MEMORY[0x25F87FD60](v91, -1, -1);
    }

    sub_25BE5FDE0(*(&v61 + 1));
  }
}

uint64_t sub_25BE60C34()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25BE60C6C()
{
  MEMORY[0x25F87FDD0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25BE60CAC(uint64_t result)
{
  if ((result - 1) >= 0xA)
  {
  }

  return result;
}

uint64_t sub_25BE60CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;

    v9 = sub_25BE61620();

    v10 = *(v9 + 16);
    if (v10)
    {
      v17 = type metadata accessor for EngagementInlineViewManager();
      v11 = (v9 + 40);
      do
      {
        v12 = *v11;
        ObjectType = swift_getObjectType();
        v22[3] = v17;
        v22[4] = &protocol witness table for EngagementInlineViewManager;
        v21 = a2;
        v22[0] = v8;
        v20 = a3;
        v19 = a4;
        v13 = a3;
        v14 = a4;
        v15 = *(v12 + 24);
        swift_unknownObjectRetain();
        v16 = v8;
        v15(v22, &v21, &v20, &v19, ObjectType, v12);
        a4 = v14;
        a3 = v13;
        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_0Tm(v22);
        v11 += 2;
        --v10;
      }

      while (v10);
    }
  }

  return result;
}

uint64_t objectdestroy_6Tm(void (*a1)(void))
{

  a1(*(v1 + 32));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

uint64_t objectdestroy_6Tm_0()
{

  if ((*(v0 + 24) - 1) >= 0xA)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 34, 7);
}

uint64_t sub_25BE60EC0(uint64_t result)
{
  if ((result - 1) >= 0xA)
  {
  }

  return result;
}

uint64_t sub_25BE60ED4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_25BE60F30(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25BE60FFC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_25BE60ED4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_25BE60FFC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_25BE6F1DC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_25BEB4C04();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_25BE61108()
{
  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  do
  {
    v3 = byte_286D7ED00[v1 + 32];
    if (v3 > 0x1F || ((1 << v3) & 0xFFFC7FFF) == 0)
    {
      v14 = v2;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_25BE75A78(0, *(v2 + 16) + 1, 1);
        v2 = v14;
      }

      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_25BE75A78((v5 > 1), v6 + 1, 1);
        v2 = v14;
      }

      *(v2 + 16) = v6 + 1;
      *(v2 + v6 + 32) = v3;
    }

    ++v1;
  }

  while (v1 != 32);
  v7 = *(v2 + 16);
  if (v7)
  {
    v8 = (v2 + 32);
    do
    {
      v9 = *v8++;
      v10 = v0[5];
      v11 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v10);
      v13 = v9;
      (*(v11 + 8))(&v13, v10, v11);
      --v7;
    }

    while (v7);
  }

  sub_25BE61510(0, &qword_280E774F0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_25BEB46E4();
}

BOOL sub_25BE612C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = a2 + 32;
  do
  {
    v5 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v7 = EngagementUIPlacement.rawValue.getter();
    v9 = v8;
    if (v7 == EngagementUIPlacement.rawValue.getter() && v9 == v10)
    {

      return v5 != 0;
    }

    v4 = sub_25BEB4E64();

    ++v3;
  }

  while ((v4 & 1) == 0);
  return v5 != 0;
}

void sub_25BE6139C(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  swift_beginAccess();
  v6 = *(a1 + 24);
  if (!*(v6 + 16) || (v7 = sub_25BE65758(a2), (v8 & 1) == 0))
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
LABEL_6:
    sub_25BE614B8(v16, 0, v17, v18, v19);
    swift_endAccess();
    v14 = 0;
    goto LABEL_7;
  }

  v9 = (*(v6 + 56) + 40 * v7);
  v10 = *v9;
  v11 = *(v9 + 2);
  v12 = *(v9 + 3);
  v13 = v9[32];
  v14 = *(v9 + 1);
  sub_25BE86988(v11, v12, v13);
  if (!v14)
  {
    v16 = v10;
    v17 = v11;
    v18 = v12;
    v19 = v13;
    goto LABEL_6;
  }

  v15 = v14;
  swift_endAccess();
  sub_25BE614B8(v10, v14, v11, v12, v13);
LABEL_7:
  *a3 = v14;
}

void sub_25BE614B8(uint64_t a1, void *a2, void *a3, uint64_t a4, char a5)
{
  if (a2)
  {

    sub_25BEB3D64(a3, a4, a5);
  }
}

void sub_25BE61510(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_25BE615A4()
{
  result = qword_280E77008;
  if (!qword_280E77008)
  {
    type metadata accessor for EngagementInlineDialogViewControllerFactory();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E77008);
  }

  return result;
}

uint64_t sub_25BE61620()
{
  v1 = v0;
  sub_25BEB44F4();
  swift_beginAccess();
  v2 = *(v0 + 32);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v27 = MEMORY[0x277D84F90];
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
    while (1)
    {
      v9 = v8;
LABEL_16:
      v12 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v13 = v12 | (v9 << 6);
      v14 = *(*(v2 + 48) + 8 * v13);
      sub_25BEADC08(*(v2 + 56) + 16 * v13, v29);
      v31 = v14;
      sub_25BE694D4(v29, v32);
LABEL_17:
      sub_25BE61BD0(&v31, &v33);
      if (!v34[0] && v34[1] == 1)
      {

        sub_25BEB4504();
        return v27;
      }

      v15 = v33;
      sub_25BE694D4(v34, v29);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        break;
      }

      swift_beginAccess();
      v17 = sub_25BE69650(v15);
      if (v18)
      {
        v19 = v17;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v21 = *(v1 + 32);
        *(v1 + 32) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_25BEAD0A8();
        }

        sub_25BE694D4(*(v21 + 56) + 16 * v19, &v28);
        sub_25BE802C8(v19, v21);
        *(v1 + 32) = v21;
      }

      else
      {
        v28 = xmmword_25BEB60D0;
      }

      swift_endAccess();
      sub_25BE69354(&v28, &qword_280E76AB0, &type metadata for EngagementInlineViewManager.Observation);
      result = sub_25BEB4090(v29);
      if (!v5)
      {
        goto LABEL_8;
      }
    }

    v26 = Strong;
    v25 = v30;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_25BE84668(0, v27[2] + 1, 1, v27);
    }

    v23 = v27[2];
    v22 = v27[3];
    if (v23 >= v22 >> 1)
    {
      v27 = sub_25BE84668((v22 > 1), v23 + 1, 1, v27);
    }

    result = sub_25BEB4090(v29);
    v27[2] = v23 + 1;
    v24 = &v27[2 * v23];
    v24[4] = v26;
    v24[5] = v25;
  }

  while (v5);
LABEL_8:
  if (v6 <= v8 + 1)
  {
    v10 = v8 + 1;
  }

  else
  {
    v10 = v6;
  }

  v11 = v10 - 1;
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
      v5 = 0;
      v31 = 0;
      v32[0] = 0;
      v8 = v11;
      v32[1] = 1;
      goto LABEL_17;
    }

    v5 = *(v2 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void sub_25BE61910(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_25BE61974()
{
  if (!qword_280E76F00)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E76F00);
    }
  }
}

uint64_t sub_25BE619D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void sub_25BE61A34(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v6 = *(a1 + 24);
  if (*(v6 + 16) && (v7 = sub_25BE65758(a2), (v8 & 1) != 0))
  {
    v9 = (*(v6 + 56) + 40 * v7);
    v10 = *v9;
    v11 = *(v9 + 2);
    v12 = *(v9 + 3);
    v13 = v9[32];
    v14 = *(v9 + 1);
    sub_25BE86988(v11, v12, v13);
    if (v14)
    {
      sub_25BE86988(v11, v12, v13);
      swift_endAccess();
      sub_25BE614B8(v10, v14, v11, v12, v13);
      *a3 = v11;
      *(a3 + 8) = v12;
      *(a3 + 16) = v13;
      return;
    }

    v15 = v10;
  }

  else
  {
    v15 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

  sub_25BE614B8(v15, 0, v11, v12, v13);
  swift_endAccess();
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = -1;
}

uint64_t sub_25BE61BD0(uint64_t a1, uint64_t a2)
{
  sub_25BE61910(0, &qword_280E76EF8, sub_25BE61974, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_25BE61C64()
{
  if (!qword_280E76F18)
  {
    v0 = sub_25BEB4854();
    if (!v1)
    {
      atomic_store(v0, &qword_280E76F18);
    }
  }
}

void sub_25BE61D10()
{
  sub_25BEB4714();
  if (v0 <= 0x3F)
  {
    sub_25BE5E7A0(319, &qword_280E766D8);
    if (v1 <= 0x3F)
    {
      sub_25BE5E7A0(319, &unk_280E76AC8);
      if (v2 <= 0x3F)
      {
        sub_25BE61E38(319, &qword_280E76718, &type metadata for EngagementUpsellPlacement, MEMORY[0x277D834F8]);
        if (v3 <= 0x3F)
        {
          sub_25BEB4544();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_25BE61E38(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, ValueMetadata *, uint64_t, unint64_t))
{
  if (!*a2)
  {
    v8 = sub_25BE5CD58();
    v9 = a4(a1, &type metadata for EngagementUIPlacement, a3, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

NewsEngagement::EngagementUpsellConfig_optional __swiftcall EngagementUpsellConfig.init(dictionary:)(Swift::OpaquePointer dictionary)
{
  v3 = v1;
  sub_25BE62490();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EngagementUpsellTrigger();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v53 - v15;
  if (!*(dictionary._rawValue + 2) || (v17 = sub_25BE624E8(0x7372656767697274, 0xE800000000000000), (v18 & 1) == 0))
  {

LABEL_24:
    v52 = 0;
LABEL_25:
    *v3 = v52;
    goto LABEL_28;
  }

  sub_25BE60ED4(*(dictionary._rawValue + 7) + 32 * v17, v68);

  sub_25BE61C64();
  v62 = v19;
  v20 = swift_dynamicCast();
  if ((v20 & 1) == 0)
  {
    goto LABEL_24;
  }

  v54 = v16;
  v53 = v13;
  v55 = v3;
  v24 = v66[0] + 64;
  v23 = *(v66[0] + 64);
  v61 = v66[0];
  v25 = 1 << *(v66[0] + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v23;
  v28 = (v25 + 63) >> 6;
  v56 = MEMORY[0x277D84F98];
  v60 = (v9 + 48);
  *&v22 = 136315138;
  v57 = v22;
  v59 = v7;
  v58 = v8;
  v29 = 0;
  while (v27)
  {
    while (1)
    {
      v30 = v29;
LABEL_11:
      v31 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
      v32 = v31 | (v30 << 6);
      v33 = (*(v61 + 48) + 16 * v32);
      v35 = *v33;
      v34 = v33[1];
      sub_25BE60ED4(*(v61 + 56) + 32 * v32, v69);
      v66[0] = v35;
      v66[1] = v34;
      sub_25BE5F500(v69, &v67);
      sub_25BE5F510(v66, v64, sub_25BE62618);
      v36 = v64[0];
      v37 = v64[1];

      __swift_destroy_boxed_opaque_existential_0Tm(&v65);
      sub_25BE5F510(v66, v64, sub_25BE62618);

      if (swift_dynamicCast())
      {
        break;
      }

LABEL_14:
      if (qword_280E76F20 != -1)
      {
        swift_once();
      }

      v39 = sub_25BEB4764();
      __swift_project_value_buffer(v39, qword_280E77F40);

      v40 = sub_25BEB4744();
      v41 = sub_25BEB4A54();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v64[0] = v43;
        *v42 = v57;
        v44 = sub_25BE60F30(v36, v37, v64);

        *(v42 + 4) = v44;
        _os_log_impl(&dword_25BE5A000, v40, v41, "Could not parse %s to an EngagementUpsellTrigger object", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v43);
        v45 = v43;
        v8 = v58;
        MEMORY[0x25F87FD60](v45, -1, -1);
        v46 = v42;
        v7 = v59;
        MEMORY[0x25F87FD60](v46, -1, -1);
      }

      else
      {
      }

      v20 = sub_25BE66810(v66, sub_25BE62618);
      v29 = v30;
      if (!v27)
      {
        goto LABEL_8;
      }
    }

    EngagementUpsellTrigger.init(dictionary:)(v63, v38);
    if ((*v60)(v7, 1, v8) == 1)
    {
      sub_25BE66810(v7, sub_25BE62490);
      goto LABEL_14;
    }

    v47 = v54;
    sub_25BE66EF8(v7, v54);
    v48 = v47;
    v49 = v53;
    sub_25BE5F510(v48, v53, type metadata accessor for EngagementUpsellTrigger);
    v50 = v56;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v64[0] = v50;
    sub_25BE6731C(v49, v36, v37, isUniquelyReferenced_nonNull_native);

    sub_25BE66810(v54, type metadata accessor for EngagementUpsellTrigger);
    v20 = sub_25BE66810(v66, sub_25BE62618);
    v56 = v64[0];
    v29 = v30;
  }

LABEL_8:
  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v30 >= v28)
    {

      v3 = v55;
      v52 = v56;
      goto LABEL_25;
    }

    v27 = *(v24 + 8 * v30);
    ++v29;
    if (v27)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_28:
  result.value.triggers._rawValue = v20;
  result.is_nil = v21;
  return result;
}

void sub_25BE62490()
{
  if (!qword_280E76B38[0])
  {
    type metadata accessor for EngagementUpsellTrigger();
    v0 = sub_25BEB4AE4();
    if (!v1)
    {
      atomic_store(v0, qword_280E76B38);
    }
  }
}

unint64_t sub_25BE624E8(uint64_t a1, uint64_t a2)
{
  sub_25BEB4F04();
  sub_25BEB48C4();
  v4 = sub_25BEB4F24();

  return sub_25BE62560(a1, a2, v4);
}

unint64_t sub_25BE62560(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_25BEB4E64())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void sub_25BE62618()
{
  if (!qword_280E76710)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E76710);
    }
  }
}

uint64_t EngagementUpsellTrigger.init(dictionary:)(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v213[275] = *MEMORY[0x277D85DE8];
  v5 = sub_25BEB4714();
  v201 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5, v6);
  v189 = &v173 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v188 = &v173 - v10;
  v11 = sub_25BEB4524();
  MEMORY[0x28223BE20](v11 - 8, v12);
  v198 = &v173 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for EngagementUpsellTrigger();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v202 = &v173 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x277D83D88];
  sub_25BE63CCC(0, &qword_280E76DE8, MEMORY[0x277D6CF38], MEMORY[0x277D83D88]);
  v21 = MEMORY[0x28223BE20](v19 - 8, v20);
  v199 = &v173 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v197 = &v173 - v25;
  v27 = MEMORY[0x28223BE20](v24, v26);
  v29 = &v173 - v28;
  MEMORY[0x28223BE20](v27, v30);
  v32 = &v173 - v31;
  sub_25BE63CCC(0, qword_280E76B38, type metadata accessor for EngagementUpsellTrigger, v18);
  MEMORY[0x28223BE20](v33 - 8, v34);
  v36 = &v173 - v35;
  v37 = *(v2 + 16);
  v200 = v5;
  if (!v37)
  {
    v204 = 0;
    v196 = 0;
    goto LABEL_20;
  }

  v38 = sub_25BE624E8(0x567377654E6E696DLL, 0xEE006E6F69737265);
  if ((v39 & 1) == 0)
  {
    v196 = 0;
    v204 = 0;
    if (*(v2 + 16))
    {
      goto LABEL_12;
    }

LABEL_20:
    v203 = 0;
    v194 = 0;
LABEL_21:
    v48 = 1.79769313e308;
    goto LABEL_22;
  }

  sub_25BE60ED4(*(v2 + 56) + 32 * v38, v213);
  v40 = swift_dynamicCast();
  v41 = v208[0];
  if (!v40)
  {
    v41 = 0;
  }

  v196 = v41;
  if (v40)
  {
    v42 = v208[1];
  }

  else
  {
    v42 = 0;
  }

  v204 = v42;
  if (!*(v2 + 16))
  {
    goto LABEL_20;
  }

LABEL_12:
  v43 = sub_25BE624E8(0x567377654E78616DLL, 0xEE006E6F69737265);
  if (v44)
  {
    sub_25BE60ED4(*(v2 + 56) + 32 * v43, v213);
    v45 = swift_dynamicCast();
    v46 = v208[0];
    if (!v45)
    {
      v46 = 0;
    }

    v194 = v46;
    if (v45)
    {
      v47 = v208[1];
    }

    else
    {
      v47 = 0;
    }

    v203 = v47;
    if (!*(v2 + 16))
    {
      goto LABEL_21;
    }
  }

  else
  {
    v194 = 0;
    v203 = 0;
    if (!*(v2 + 16))
    {
      goto LABEL_21;
    }
  }

  v58 = sub_25BE624E8(0x6E6F697461727564, 0xE800000000000000);
  if ((v59 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_25BE60ED4(*(v2 + 56) + 32 * v58, v213);
  if (swift_dynamicCast())
  {
    v48 = *v208;
  }

  else
  {
    v48 = 1.79769313e308;
  }

LABEL_22:
  if (!*(v2 + 16))
  {
    v50 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_32:
    v193 = 0;
    v191 = 0;
    v57 = 1;
    v192 = 1;
    goto LABEL_45;
  }

  v49 = sub_25BE624E8(0xD000000000000018, 0x800000025BEBA010);
  v50 = 0x7FFFFFFFFFFFFFFFLL;
  if (v51)
  {
    sub_25BE60ED4(*(v2 + 56) + 32 * v49, v213);
    if (swift_dynamicCast())
    {
      v50 = v208[0];
    }
  }

  if (!*(v2 + 16))
  {
    goto LABEL_32;
  }

  v52 = sub_25BE624E8(0xD000000000000012, 0x800000025BEBA030);
  if (v53)
  {
    sub_25BE60ED4(*(v2 + 56) + 32 * v52, v213);
    v54 = swift_dynamicCast();
    v55 = v208[0];
    if (!v54)
    {
      v55 = 0;
    }

    v193 = v55;
    v56 = v54 ^ 1;
  }

  else
  {
    v193 = 0;
    v56 = 1;
  }

  v192 = v56;
  if (*(v2 + 16) && (v60 = sub_25BE624E8(0xD00000000000001DLL, 0x800000025BEBA050), (v61 & 1) != 0))
  {
    sub_25BE60ED4(*(v2 + 56) + 32 * v60, v213);
    v62 = swift_dynamicCast();
    v63 = v208[0];
    if (!v62)
    {
      v63 = 0;
    }

    v191 = v63;
    v57 = v62 ^ 1;
  }

  else
  {
    v191 = 0;
    v57 = 1;
  }

LABEL_45:
  v190 = v57;
  v64 = *(v2 + 16);
  v195 = v50;
  if (v64)
  {
    v65 = sub_25BE624E8(0x67696C4564696170, 0xEF7974696C696269);
    if (v66)
    {
      sub_25BE60ED4(*(v2 + 56) + 32 * v65, v213);
      if (swift_dynamicCast())
      {
        v67 = v4;
        v68 = v29;
        v69 = v32;
        v184 = v67;
        v70 = v208[0];
        v71 = v208[1];

        v187 = v70;
        v72 = sub_25BEB4CD4();

        if (v72 > 1)
        {
          if (v72 == 2)
          {

            v73 = 2;
          }

          else
          {
            if (v72 != 3)
            {
              goto LABEL_96;
            }

            v73 = 3;
          }
        }

        else
        {
          if (v72)
          {
            if (v72 == 1)
            {

              v73 = 1;
              goto LABEL_102;
            }

LABEL_96:

            if (qword_280E76F20 != -1)
            {
              swift_once();
            }

            v122 = sub_25BEB4764();
            __swift_project_value_buffer(v122, qword_280E77F40);

            v123 = sub_25BEB4744();
            v124 = sub_25BEB4A54();

            if (os_log_type_enabled(v123, v124))
            {
              v125 = swift_slowAlloc();
              v126 = swift_slowAlloc();
              v213[0] = v126;
              *v125 = 136315138;
              v127 = sub_25BE60F30(v187, v71, v213);

              *(v125 + 4) = v127;
              _os_log_impl(&dword_25BE5A000, v123, v124, "Failed parsing EngagementUpsellTrigger: invalid paidEligibility %s", v125, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v126);
              MEMORY[0x25F87FD60](v126, -1, -1);
              MEMORY[0x25F87FD60](v125, -1, -1);
            }

            else
            {
            }

            v78 = v184;
            return (*(v15 + 56))(v78, 1, 1, v14);
          }

          v73 = 0;
        }

LABEL_102:
        v74 = v184;
        v32 = v69;
        v29 = v68;
        if (!*(v2 + 16))
        {
          goto LABEL_103;
        }

        goto LABEL_53;
      }
    }
  }

  v74 = v4;
  v73 = 0;
  if (!*(v2 + 16))
  {
LABEL_103:
    v78 = v74;
    goto LABEL_104;
  }

LABEL_53:
  LODWORD(v187) = v73;
  v75 = sub_25BE624E8(0xD000000000000016, 0x800000025BEB9FB0);
  if (v76)
  {
    sub_25BE60ED4(*(v2 + 56) + 32 * v75, v213);
    if (swift_dynamicCast())
    {
      v77 = v208[0];
    }

    else
    {
      v77 = 0;
    }
  }

  else
  {
    v77 = 0;
  }

  v78 = v74;
  if (!*(v2 + 16))
  {
    goto LABEL_104;
  }

  v185 = v77;
  v79 = sub_25BE624E8(0x6F697469646E6F63, 0xE90000000000006ELL);
  if (v80)
  {
    sub_25BE60ED4(*(v2 + 56) + 32 * v79, v213);
    v81 = swift_dynamicCast();
    if (v81)
    {
      v82 = v208[0];
    }

    else
    {
      v82 = 0;
    }

    if (v81)
    {
      v83 = v208[1];
    }

    else
    {
      v83 = 0;
    }

    if (!*(v2 + 16))
    {
      goto LABEL_104;
    }
  }

  else
  {
    v82 = 0;
    v83 = 0;
    if (!*(v2 + 16))
    {
LABEL_104:

      goto LABEL_105;
    }
  }

  v84 = sub_25BE624E8(0x6E656D6563616C70, 0xEA00000000007374);
  if ((v85 & 1) == 0)
  {
    goto LABEL_104;
  }

  sub_25BE60ED4(*(v2 + 56) + 32 * v84, v213);

  sub_25BE63D30(0, &qword_280E76F18);
  v180 = v86;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_105:

    if (qword_280E76F20 != -1)
    {
LABEL_137:
      swift_once();
    }

    v128 = sub_25BEB4764();
    __swift_project_value_buffer(v128, qword_280E77F40);
    v129 = sub_25BEB4744();
    v130 = sub_25BEB4A54();
    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      *v131 = 0;
      _os_log_impl(&dword_25BE5A000, v129, v130, "Failed parsing EngagementUpsellTrigger: missing placements", v131, 2u);
      MEMORY[0x25F87FD60](v131, -1, -1);
    }

    return (*(v15 + 56))(v78, 1, 1, v14);
  }

  v173 = v82;
  v174 = v15;
  v176 = v36;
  v177 = v83;
  v178 = v14;
  v15 = 0;
  v89 = v208[0] + 64;
  v88 = *(v208[0] + 64);
  v183 = v208[0];
  v184 = v78;
  v90 = 1 << *(v208[0] + 32);
  v91 = -1;
  if (v90 < 64)
  {
    v91 = ~(-1 << v90);
  }

  v92 = v91 & v88;
  v93 = (v90 + 63) >> 6;
  v175 = MEMORY[0x277D84F98];
  v14 = 0x280E76000uLL;
  *&v87 = 136315138;
  v179 = v87;
  v78 = v202;
  v181 = v93;
  v182 = v32;
  v186 = v29;
LABEL_74:
  v94 = v15;
  while (v92)
  {
    v15 = v94;
LABEL_82:
    v95 = __clz(__rbit64(v92));
    v92 &= v92 - 1;
    v96 = v95 | (v15 << 6);
    v97 = (*(v183 + 48) + 16 * v96);
    v99 = *v97;
    v98 = v97[1];
    sub_25BE60ED4(*(v183 + 56) + 32 * v96, v212);
    v210[0] = v99;
    v210[1] = v98;
    sub_25BE5F500(v212, v211);
    sub_25BE5F510(v210, v208, sub_25BE62618);
    v100 = v208[0];
    v101 = v208[1];

    __swift_destroy_boxed_opaque_existential_0Tm(&v208[2]);

    v102._countAndFlagsBits = v100;
    v102._object = v101;
    EngagementUIPlacement.init(rawValue:)(v102);
    v103 = v208[0];
    if (LOBYTE(v208[0]) != 32)
    {
      sub_25BE5F510(v210, &v209, sub_25BE62618);

      if (swift_dynamicCast())
      {
        EngagementUpsellPlacement.init(dictionary:)(v206, v104);
        memcpy(v208, v207, sizeof(v208));
        if (sub_25BE65734(v208) != 1)
        {

          memcpy(v213, v207, 0x898uLL);
          v112 = v175;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v205 = v112;
          sub_25BE657E4(v213, v103, isUniquelyReferenced_nonNull_native);
          sub_25BE66870(v210, sub_25BE62618);
          v175 = v205;
          v78 = v202;
          v93 = v181;
          v32 = v182;
          goto LABEL_74;
        }
      }
    }

    if (*(v14 + 3872) != -1)
    {
      swift_once();
    }

    v105 = sub_25BEB4764();
    __swift_project_value_buffer(v105, qword_280E77F40);

    v106 = sub_25BEB4744();
    v107 = sub_25BEB4A54();

    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v208[0] = v109;
      *v108 = v179;
      v110 = sub_25BE60F30(v100, v101, v208);

      *(v108 + 4) = v110;
      _os_log_impl(&dword_25BE5A000, v106, v107, "Could not parse %s to an EngagementUpsellPlacement object", v108, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v109);
      MEMORY[0x25F87FD60](v109, -1, -1);
      v111 = v108;
      v14 = 0x280E76000;
      MEMORY[0x25F87FD60](v111, -1, -1);
    }

    else
    {
    }

    sub_25BE66870(v210, sub_25BE62618);
    v94 = v15;
    v78 = v202;
    v93 = v181;
    v32 = v182;
  }

  while (1)
  {
    v15 = v94 + 1;
    if (__OFADD__(v94, 1))
    {
      __break(1u);
      goto LABEL_137;
    }

    if (v15 >= v93)
    {
      break;
    }

    v92 = *(v89 + 8 * v15);
    ++v94;
    if (v92)
    {
      goto LABEL_82;
    }
  }

  sub_25BEB4724();
  sub_25BEB4724();
  v114 = *(v178 + 56);
  sub_25BEB4514();
  sub_25BEB4544();
  swift_allocObject();
  *(v78 + v114) = sub_25BEB4534();
  v115 = v197;
  sub_25BE668D0(v32, v197);
  v117 = v200;
  v116 = v201;
  v118 = *(v201 + 48);
  v119 = v118(v115, 1, v200);
  v204 = v118;
  if (v119 == 1)
  {
    v120 = v188;
    sub_25BEB4704();
    v121 = v118(v115, 1, v117);
    v78 = v184;
    v15 = v174;
    if (v121 != 1)
    {
      sub_25BE66964(v115, &qword_280E76DE8, MEMORY[0x277D6CF38]);
    }
  }

  else
  {
    v120 = v188;
    (*(v116 + 32))(v188, v115, v117);
    v78 = v184;
    v15 = v174;
  }

  v133 = *(v116 + 32);
  v133(v202, v120, v117);
  v134 = v199;
  sub_25BE668D0(v186, v199);
  v135 = v204;
  v136 = v204(v134, 1, v117);
  v201 = v116 + 32;
  if (v136 == 1)
  {
    v137 = v189;
    sub_25BEB46F4();
    v138 = v137;
    v139 = v135(v134, 1, v117) == 1;
    v140 = v134;
    v14 = v178;
    if (!v139)
    {
      sub_25BE66964(v140, &qword_280E76DE8, MEMORY[0x277D6CF38]);
    }
  }

  else
  {
    v138 = v189;
    v133(v189, v134, v117);
    v14 = v178;
  }

  v141 = v202;
  v133(&v202[*(v14 + 20)], v138, v117);
  *(v141 + *(v14 + 24)) = v48;
  *(v141 + *(v14 + 28)) = v195;
  *(v141 + *(v14 + 52)) = v175;
  v142 = v141 + *(v14 + 36);
  *v142 = v193;
  *(v142 + 8) = v192;
  v143 = v141 + *(v14 + 32);
  *v143 = v191;
  *(v143 + 8) = v190;
  *(v141 + *(v14 + 40)) = v187;
  *(v141 + *(v14 + 44)) = v185;
  v144 = v177;
  if (!v177)
  {
    v156 = MEMORY[0x277D6CF38];
    sub_25BE66964(v186, &qword_280E76DE8, MEMORY[0x277D6CF38]);
    sub_25BE66964(v32, &qword_280E76DE8, v156);
    *(v141 + *(v14 + 48)) = 0xF000000000000007;
    v153 = v176;
    goto LABEL_121;
  }

  v145 = sub_25BE669D4(v173, v144);
  v147 = v146;
  v148 = objc_opt_self();
  v149 = sub_25BEB4384();
  v208[0] = 0;
  v150 = [v148 JSONObjectWithData:v149 options:8 error:v208];

  v151 = v186;
  if (!v150)
  {
    v158 = v208[0];
    v159 = sub_25BEB42E4();

    swift_willThrow();
    sub_25BE672C8(v145, v147);

LABEL_126:
    v153 = v176;
    v154 = v182;
    goto LABEL_127;
  }

  v152 = v208[0];
  sub_25BEB4AF4();
  swift_unknownObjectRelease();
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_25BE672C8(v145, v147);
    goto LABEL_126;
  }

  sub_25BE67480(v208, v207[0]);
  sub_25BE672C8(v145, v147);
  v153 = v176;
  v154 = v182;
  if ((~v208[0] & 0xF000000000000007) == 0)
  {
LABEL_127:
    *&v202[*(v14 + 48)] = 0xF000000000000007;
    v160 = v177;
    if (qword_280E76F20 != -1)
    {
      swift_once();
    }

    v161 = sub_25BEB4764();
    __swift_project_value_buffer(v161, qword_280E77F40);

    v162 = sub_25BEB4744();
    v163 = sub_25BEB4A54();

    if (os_log_type_enabled(v162, v163))
    {
      v164 = swift_slowAlloc();
      v165 = swift_slowAlloc();
      v208[0] = v165;
      *v164 = v179;
      v166 = v78;
      v167 = sub_25BE60F30(v173, v160, v208);

      *(v164 + 4) = v167;
      v78 = v166;
      v168 = v202;
      _os_log_impl(&dword_25BE5A000, v162, v163, "Failed parsing EngagementUpsellTrigger: invalid condition %s", v164, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v165);
      v169 = v165;
      v153 = v176;
      MEMORY[0x25F87FD60](v169, -1, -1);
      MEMORY[0x25F87FD60](v164, -1, -1);

      v170 = MEMORY[0x277D6CF38];
      sub_25BE66964(v186, &qword_280E76DE8, MEMORY[0x277D6CF38]);
      sub_25BE66964(v182, &qword_280E76DE8, v170);
    }

    else
    {

      v171 = MEMORY[0x277D6CF38];
      sub_25BE66964(v151, &qword_280E76DE8, MEMORY[0x277D6CF38]);
      sub_25BE66964(v154, &qword_280E76DE8, v171);
      v168 = v202;
    }

    sub_25BE66870(v168, type metadata accessor for EngagementUpsellTrigger);
    v157 = 1;
    goto LABEL_133;
  }

  v141 = v202;
  *&v202[*(v14 + 48)] = v208[0];

  v155 = MEMORY[0x277D6CF38];
  sub_25BE66964(v151, &qword_280E76DE8, MEMORY[0x277D6CF38]);
  sub_25BE66964(v154, &qword_280E76DE8, v155);
LABEL_121:
  sub_25BE66EF8(v141, v153);
  v157 = 0;
LABEL_133:
  v172 = *(v15 + 56);
  v172(v153, v157, 1, v14);
  if ((*(v15 + 48))(v153, 1, v14))
  {
    sub_25BE66964(v153, qword_280E76B38, type metadata accessor for EngagementUpsellTrigger);
    return (*(v15 + 56))(v78, 1, 1, v14);
  }

  sub_25BE66EF8(v153, v78);
  return (v172)(v78, 0, 1, v14);
}

void sub_25BE63CCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_25BE63D30(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_25BEB4854();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

NewsEngagement::EngagementUIPlacement_optional __swiftcall EngagementUIPlacement.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25BEB4E74();

  v5 = 0;
  v6 = 14;
  switch(v3)
  {
    case 0:
      goto LABEL_25;
    case 1:
      v5 = 1;
      goto LABEL_25;
    case 2:
      v5 = 2;
      goto LABEL_25;
    case 3:
      v5 = 3;
      goto LABEL_25;
    case 4:
      v5 = 4;
      goto LABEL_25;
    case 5:
      v5 = 5;
      goto LABEL_25;
    case 6:
      v5 = 6;
      goto LABEL_25;
    case 7:
      v5 = 7;
      goto LABEL_25;
    case 8:
      v5 = 8;
      goto LABEL_25;
    case 9:
      v5 = 9;
      goto LABEL_25;
    case 10:
      v5 = 10;
      goto LABEL_25;
    case 11:
      v5 = 11;
      goto LABEL_25;
    case 12:
      v5 = 12;
      goto LABEL_25;
    case 13:
      v5 = 13;
LABEL_25:
      v6 = v5;
      break;
    case 14:
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    default:
      v6 = 32;
      break;
  }

  *v2 = v6;
  return result;
}

void *EngagementUpsellPlacement.init(dictionary:)(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  if (!*(v2 + 16))
  {
    v7 = 0;
    goto LABEL_13;
  }

  v5 = sub_25BE624E8(0x6E6F6973726576, 0xE700000000000000);
  if ((v6 & 1) == 0)
  {
    v7 = 0;
    if (*(v2 + 16))
    {
      goto LABEL_10;
    }

LABEL_13:
    v10 = 0;
    goto LABEL_14;
  }

  sub_25BE60ED4(*(v2 + 56) + 32 * v5, __dst);
  if (swift_dynamicCast())
  {
    v7 = v46[0];
  }

  else
  {
    v7 = 0;
  }

  if (!*(v2 + 16))
  {
    goto LABEL_13;
  }

LABEL_10:
  v8 = sub_25BE624E8(0xD000000000000016, 0x800000025BEB9E20);
  if (v9)
  {
    sub_25BE60ED4(*(v2 + 56) + 32 * v8, v47);
    v10 = swift_dynamicCast() & LOBYTE(__dst[0]);
    if (!*(v2 + 16))
    {
      goto LABEL_14;
    }
  }

  else
  {
    v10 = 0;
    if (!*(v2 + 16))
    {
      goto LABEL_14;
    }
  }

  v18 = sub_25BE624E8(0xD000000000000017, 0x800000025BEB9E40);
  if ((v19 & 1) == 0 || (sub_25BE60ED4(*(v2 + 56) + 32 * v18, &__src[312]), sub_25BE61C64(), (swift_dynamicCast() & 1) == 0))
  {
LABEL_14:
    sub_25BE64BC8(v46);
    if (!*(v2 + 16))
    {
      goto LABEL_33;
    }

    goto LABEL_15;
  }

  EngagementUpsellBanner.init(dictionary:)(v45, *__src);
  memcpy(__dst, v45, 0x138uLL);
  if (sub_25BE65710(__dst) == 1)
  {

    if (qword_280E76F20 != -1)
    {
      swift_once();
    }

    v20 = sub_25BEB4764();
    __swift_project_value_buffer(v20, qword_280E77F40);
    v14 = sub_25BEB4744();
    v15 = sub_25BEB4A54();
    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_77;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = "Failed parsing baseBannerConfiguration";
    goto LABEL_76;
  }

  memcpy(v46, v45, sizeof(v46));
  if (!*(v2 + 16))
  {
LABEL_33:
    sub_25BE64BC8(v45);
    if (!*(v2 + 16))
    {
      goto LABEL_41;
    }

LABEL_34:
    v21 = sub_25BE624E8(0xD00000000000001ALL, 0x800000025BEB9E80);
    if (v22)
    {
      sub_25BE60ED4(*(v2 + 56) + 32 * v21, dictionary);
      sub_25BE61C64();
      if (swift_dynamicCast())
      {
        EngagementUpsellBanner.init(dictionary:)(__src, v42[0]);
        memcpy(__dst, __src, 0x138uLL);
        if (sub_25BE65710(__dst) == 1)
        {

          sub_25BE98694(v45);
          sub_25BE98694(v46);
          if (qword_280E76F20 != -1)
          {
            swift_once();
          }

          v23 = sub_25BEB4764();
          __swift_project_value_buffer(v23, qword_280E77F40);
          v14 = sub_25BEB4744();
          v15 = sub_25BEB4A54();
          if (!os_log_type_enabled(v14, v15))
          {
            goto LABEL_77;
          }

          v16 = swift_slowAlloc();
          *v16 = 0;
          v17 = "Failed parsing savingsBannerConfiguration";
          goto LABEL_76;
        }

        memcpy(&__src[312], __src, 0x138uLL);
        if (!*(v2 + 16))
        {
          goto LABEL_50;
        }

        goto LABEL_42;
      }
    }

LABEL_41:
    sub_25BE64BC8(&__src[312]);
    if (!*(v2 + 16))
    {
      goto LABEL_50;
    }

LABEL_42:
    v24 = sub_25BE624E8(0xD000000000000021, 0x800000025BEB9EA0);
    if (v25)
    {
      sub_25BE60ED4(*(v2 + 56) + 32 * v24, v42);
      sub_25BE61C64();
      if (swift_dynamicCast())
      {
        EngagementUpsellBanner.init(dictionary:)(dictionary, v41[0]);
        memcpy(__dst, dictionary, 0x138uLL);
        if (sub_25BE65710(__dst) == 1)
        {

          sub_25BE98694(&__src[312]);
          sub_25BE98694(v45);
          sub_25BE98694(v46);
          if (qword_280E76F20 != -1)
          {
            swift_once();
          }

          v26 = sub_25BEB4764();
          __swift_project_value_buffer(v26, qword_280E77F40);
          v14 = sub_25BEB4744();
          v15 = sub_25BEB4A54();
          if (!os_log_type_enabled(v14, v15))
          {
            goto LABEL_77;
          }

          v16 = swift_slowAlloc();
          *v16 = 0;
          v17 = "Failed parsing priceReductionBannerConfiguration";
          goto LABEL_76;
        }

        memcpy(__src, dictionary, 0x138uLL);
        if (!*(v2 + 16))
        {
          goto LABEL_59;
        }

        goto LABEL_51;
      }
    }

LABEL_50:
    sub_25BE64BC8(__src);
    if (!*(v2 + 16))
    {
      goto LABEL_59;
    }

LABEL_51:
    v27 = sub_25BE624E8(0xD00000000000001CLL, 0x800000025BEB9ED0);
    if (v28)
    {
      sub_25BE60ED4(*(v2 + 56) + 32 * v27, v41);
      sub_25BE61C64();
      if (swift_dynamicCast())
      {
        EngagementUpsellBanner.init(dictionary:)(v42, v37[0]);
        memcpy(__dst, v42, 0x138uLL);
        if (sub_25BE65710(__dst) == 1)
        {

          sub_25BE98694(__src);
          sub_25BE98694(&__src[312]);
          sub_25BE98694(v45);
          sub_25BE98694(v46);
          if (qword_280E76F20 != -1)
          {
            swift_once();
          }

          v29 = sub_25BEB4764();
          __swift_project_value_buffer(v29, qword_280E77F40);
          v14 = sub_25BEB4744();
          v15 = sub_25BEB4A54();
          if (!os_log_type_enabled(v14, v15))
          {
            goto LABEL_77;
          }

          v16 = swift_slowAlloc();
          *v16 = 0;
          v17 = "Failed parsing bestValueBannerConfiguration";
          goto LABEL_76;
        }

        memcpy(dictionary, v42, sizeof(dictionary));
        if (!*(v2 + 16))
        {
          goto LABEL_68;
        }

        goto LABEL_60;
      }
    }

LABEL_59:
    sub_25BE64BC8(dictionary);
    if (!*(v2 + 16))
    {
      goto LABEL_68;
    }

LABEL_60:
    v30 = sub_25BE624E8(0xD00000000000001DLL, 0x800000025BEB9EF0);
    if (v31)
    {
      sub_25BE60ED4(*(v2 + 56) + 32 * v30, v37);
      sub_25BE61C64();
      if (swift_dynamicCast())
      {
        EngagementUpsellBanner.init(dictionary:)(v41, v40);
        memcpy(__dst, v41, 0x138uLL);
        if (sub_25BE65710(__dst) == 1)
        {

          sub_25BE98694(dictionary);
          sub_25BE98694(__src);
          sub_25BE98694(&__src[312]);
          sub_25BE98694(v45);
          sub_25BE98694(v46);
          if (qword_280E76F20 != -1)
          {
            swift_once();
          }

          v32 = sub_25BEB4764();
          __swift_project_value_buffer(v32, qword_280E77F40);
          v14 = sub_25BEB4744();
          v15 = sub_25BEB4A54();
          if (!os_log_type_enabled(v14, v15))
          {
            goto LABEL_77;
          }

          v16 = swift_slowAlloc();
          *v16 = 0;
          v17 = "Failed parsing suggestionBannerConfiguration";
          goto LABEL_76;
        }

        memcpy(v42, v41, sizeof(v42));
        if (!*(v2 + 16))
        {
          goto LABEL_79;
        }

LABEL_69:
        v33 = sub_25BE624E8(0xD000000000000023, 0x800000025BEB9F10);
        if (v34)
        {
          sub_25BE60ED4(*(v2 + 56) + 32 * v33, &v40);

          sub_25BE61C64();
          if (swift_dynamicCast())
          {
            EngagementUpsellBanner.init(dictionary:)(v37, v37[39]);
            memcpy(__dst, v37, 0x138uLL);
            if (sub_25BE65710(__dst) == 1)
            {
              sub_25BE98694(v42);
              sub_25BE98694(dictionary);
              sub_25BE98694(__src);
              sub_25BE98694(&__src[312]);
              sub_25BE98694(v45);
              sub_25BE98694(v46);
              if (qword_280E76F20 != -1)
              {
                swift_once();
              }

              v35 = sub_25BEB4764();
              __swift_project_value_buffer(v35, qword_280E77F40);
              v14 = sub_25BEB4744();
              v15 = sub_25BEB4A54();
              if (!os_log_type_enabled(v14, v15))
              {
                goto LABEL_77;
              }

              v16 = swift_slowAlloc();
              *v16 = 0;
              v17 = "Failed parsing newsPlusViaOfferBannerConfiguration";
              goto LABEL_76;
            }

            memcpy(v41, v37, sizeof(v41));
LABEL_81:
            memcpy(&v39[7], v46, 0x138uLL);
            memcpy(&__dst[41], v45, 0x138uLL);
            memcpy(&__dst[80], &__src[312], 0x138uLL);
            memcpy(&__dst[119], __src, 0x138uLL);
            memcpy(&__dst[158], dictionary, 0x138uLL);
            memcpy(&__dst[197], v42, 0x138uLL);
            memcpy(&__dst[236], v41, 0x138uLL);
            __dst[0] = v7;
            LOBYTE(__dst[1]) = v10;
            memcpy(&__dst[1] + 1, v39, 0x13FuLL);
            nullsub_1(__dst);
            return memcpy(v4, __dst, 0x898uLL);
          }

LABEL_80:
          sub_25BE64BC8(v41);
          goto LABEL_81;
        }

LABEL_79:

        goto LABEL_80;
      }
    }

LABEL_68:
    sub_25BE64BC8(v42);
    if (!*(v2 + 16))
    {
      goto LABEL_79;
    }

    goto LABEL_69;
  }

LABEL_15:
  v11 = sub_25BE624E8(0xD00000000000001BLL, 0x800000025BEB9E60);
  if ((v12 & 1) == 0)
  {
    goto LABEL_33;
  }

  sub_25BE60ED4(*(v2 + 56) + 32 * v11, __src);
  sub_25BE61C64();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_33;
  }

  EngagementUpsellBanner.init(dictionary:)(&__src[312], dictionary[0]);
  memcpy(__dst, &__src[312], 0x138uLL);
  if (sub_25BE65710(__dst) != 1)
  {
    memcpy(v45, &__src[312], sizeof(v45));
    if (!*(v2 + 16))
    {
      goto LABEL_41;
    }

    goto LABEL_34;
  }

  sub_25BE98694(v46);
  if (qword_280E76F20 != -1)
  {
    swift_once();
  }

  v13 = sub_25BEB4764();
  __swift_project_value_buffer(v13, qword_280E77F40);
  v14 = sub_25BEB4744();
  v15 = sub_25BEB4A54();
  if (!os_log_type_enabled(v14, v15))
  {
    goto LABEL_77;
  }

  v16 = swift_slowAlloc();
  *v16 = 0;
  v17 = "Failed parsing newsPlusBannerConfiguration";
LABEL_76:
  _os_log_impl(&dword_25BE5A000, v14, v15, v17, v16, 2u);
  MEMORY[0x25F87FD60](v16, -1, -1);
LABEL_77:

  sub_25BE689FC(__dst);
  return memcpy(v4, __dst, 0x898uLL);
}

double sub_25BE64BC8(uint64_t a1)
{
  result = 0.0;
  *a1 = xmmword_25BEB60D0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0;
  return result;
}

void __swiftcall EngagementUpsellBanner.init(dictionary:)(NewsEngagement::EngagementUpsellBanner_optional *__return_ptr retstr, Swift::OpaquePointer dictionary)
{
  if (!*(dictionary._rawValue + 2))
  {
    v127 = 0;
    v128 = 0;
    goto LABEL_22;
  }

  v3 = sub_25BE624E8(0x656C746974, 0xE500000000000000);
  if ((v4 & 1) == 0)
  {
    v127 = 0;
    v128 = 0;
    if (*(dictionary._rawValue + 2))
    {
      goto LABEL_13;
    }

LABEL_22:
    v125 = 0;
    v126 = 0;
    goto LABEL_23;
  }

  sub_25BE60ED4(*(dictionary._rawValue + 7) + 32 * v3, __src);
  v5 = swift_dynamicCast();
  if (v5)
  {
    v6 = v131;
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v7 = v132;
  }

  else
  {
    v7 = 0;
  }

  v127 = v7;
  v128 = v6;
  if (!*(dictionary._rawValue + 2))
  {
    goto LABEL_22;
  }

LABEL_13:
  v8 = sub_25BE624E8(0xD000000000000012, 0x800000025BEBA1C0);
  if (v9)
  {
    sub_25BE60ED4(*(dictionary._rawValue + 7) + 32 * v8, __src);
    v10 = swift_dynamicCast();
    if (v10)
    {
      v11 = v131;
    }

    else
    {
      v11 = 0;
    }

    if (v10)
    {
      v12 = v132;
    }

    else
    {
      v12 = 0;
    }

    v125 = v12;
    v126 = v11;
    if (!*(dictionary._rawValue + 2))
    {
LABEL_23:
      v123 = 0;
      v124 = 0;
      if (*(dictionary._rawValue + 2))
      {
        goto LABEL_24;
      }

LABEL_52:
      v121 = 0;
      v122 = 0;
      goto LABEL_53;
    }
  }

  else
  {
    v125 = 0;
    v126 = 0;
    if (!*(dictionary._rawValue + 2))
    {
      goto LABEL_23;
    }
  }

  v23 = sub_25BE624E8(0xD000000000000015, 0x800000025BEBA1E0);
  if ((v24 & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_25BE60ED4(*(dictionary._rawValue + 7) + 32 * v23, __src);
  v25 = swift_dynamicCast();
  if (v25)
  {
    v26 = v131;
  }

  else
  {
    v26 = 0;
  }

  if (v25)
  {
    v27 = v132;
  }

  else
  {
    v27 = 0;
  }

  v123 = v27;
  v124 = v26;
  if (!*(dictionary._rawValue + 2))
  {
    goto LABEL_52;
  }

LABEL_24:
  v13 = sub_25BE624E8(0x627553656C746974, 0xEF64656269726373);
  if ((v14 & 1) == 0)
  {
    v121 = 0;
    v122 = 0;
    if (*(dictionary._rawValue + 2))
    {
      goto LABEL_34;
    }

LABEL_53:
    v119 = 0;
    v120 = 0;
    goto LABEL_54;
  }

  sub_25BE60ED4(*(dictionary._rawValue + 7) + 32 * v13, __src);
  v15 = swift_dynamicCast();
  if (v15)
  {
    v16 = v131;
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    v17 = v132;
  }

  else
  {
    v17 = 0;
  }

  v121 = v17;
  v122 = v16;
  if (!*(dictionary._rawValue + 2))
  {
    goto LABEL_53;
  }

LABEL_34:
  v18 = sub_25BE624E8(2036625250, 0xE400000000000000);
  if (v19)
  {
    sub_25BE60ED4(*(dictionary._rawValue + 7) + 32 * v18, __src);
    v20 = swift_dynamicCast();
    if (v20)
    {
      v21 = v131;
    }

    else
    {
      v21 = 0;
    }

    if (v20)
    {
      v22 = v132;
    }

    else
    {
      v22 = 0;
    }

    v119 = v22;
    v120 = v21;
    if (!*(dictionary._rawValue + 2))
    {
LABEL_54:
      v117 = 0;
      v118 = 0;
      if (*(dictionary._rawValue + 2))
      {
        goto LABEL_55;
      }

LABEL_83:
      v115 = 0;
      v116 = 0;
      goto LABEL_84;
    }
  }

  else
  {
    v119 = 0;
    v120 = 0;
    if (!*(dictionary._rawValue + 2))
    {
      goto LABEL_54;
    }
  }

  v38 = sub_25BE624E8(0xD000000000000011, 0x800000025BEBA200);
  if ((v39 & 1) == 0)
  {
    goto LABEL_54;
  }

  sub_25BE60ED4(*(dictionary._rawValue + 7) + 32 * v38, __src);
  v40 = swift_dynamicCast();
  if (v40)
  {
    v41 = v131;
  }

  else
  {
    v41 = 0;
  }

  if (v40)
  {
    v42 = v132;
  }

  else
  {
    v42 = 0;
  }

  v117 = v42;
  v118 = v41;
  if (!*(dictionary._rawValue + 2))
  {
    goto LABEL_83;
  }

LABEL_55:
  v28 = sub_25BE624E8(0xD000000000000014, 0x800000025BEBA220);
  if ((v29 & 1) == 0)
  {
    v115 = 0;
    v116 = 0;
    if (*(dictionary._rawValue + 2))
    {
      goto LABEL_65;
    }

LABEL_84:
    v113 = 0;
    v114 = 0;
    goto LABEL_85;
  }

  sub_25BE60ED4(*(dictionary._rawValue + 7) + 32 * v28, __src);
  v30 = swift_dynamicCast();
  if (v30)
  {
    v31 = v131;
  }

  else
  {
    v31 = 0;
  }

  if (v30)
  {
    v32 = v132;
  }

  else
  {
    v32 = 0;
  }

  v115 = v32;
  v116 = v31;
  if (!*(dictionary._rawValue + 2))
  {
    goto LABEL_84;
  }

LABEL_65:
  v33 = sub_25BE624E8(0x7362755379646F62, 0xEE00646562697263);
  if (v34)
  {
    sub_25BE60ED4(*(dictionary._rawValue + 7) + 32 * v33, __src);
    v35 = swift_dynamicCast();
    if (v35)
    {
      v36 = v131;
    }

    else
    {
      v36 = 0;
    }

    if (v35)
    {
      v37 = v132;
    }

    else
    {
      v37 = 0;
    }

    v113 = v37;
    v114 = v36;
    if (!*(dictionary._rawValue + 2))
    {
LABEL_85:
      v111 = 0;
      v112 = 0;
      if (*(dictionary._rawValue + 2))
      {
        goto LABEL_86;
      }

LABEL_114:
      v109 = 0;
      v110 = 0;
      goto LABEL_115;
    }
  }

  else
  {
    v113 = 0;
    v114 = 0;
    if (!*(dictionary._rawValue + 2))
    {
      goto LABEL_85;
    }
  }

  v53 = sub_25BE624E8(0x7265746F6F66, 0xE600000000000000);
  if ((v54 & 1) == 0)
  {
    goto LABEL_85;
  }

  sub_25BE60ED4(*(dictionary._rawValue + 7) + 32 * v53, __src);
  v55 = swift_dynamicCast();
  if (v55)
  {
    v56 = v131;
  }

  else
  {
    v56 = 0;
  }

  if (v55)
  {
    v57 = v132;
  }

  else
  {
    v57 = 0;
  }

  v111 = v57;
  v112 = v56;
  if (!*(dictionary._rawValue + 2))
  {
    goto LABEL_114;
  }

LABEL_86:
  v43 = sub_25BE624E8(0xD000000000000013, 0x800000025BEBA240);
  if ((v44 & 1) == 0)
  {
    v109 = 0;
    v110 = 0;
    if (*(dictionary._rawValue + 2))
    {
      goto LABEL_96;
    }

LABEL_115:
    v107 = 0;
    v108 = 0;
    goto LABEL_116;
  }

  sub_25BE60ED4(*(dictionary._rawValue + 7) + 32 * v43, __src);
  v45 = swift_dynamicCast();
  if (v45)
  {
    v46 = v131;
  }

  else
  {
    v46 = 0;
  }

  if (v45)
  {
    v47 = v132;
  }

  else
  {
    v47 = 0;
  }

  v109 = v47;
  v110 = v46;
  if (!*(dictionary._rawValue + 2))
  {
    goto LABEL_115;
  }

LABEL_96:
  v48 = sub_25BE624E8(0xD000000000000016, 0x800000025BEBA260);
  if (v49)
  {
    sub_25BE60ED4(*(dictionary._rawValue + 7) + 32 * v48, __src);
    v50 = swift_dynamicCast();
    if (v50)
    {
      v51 = v131;
    }

    else
    {
      v51 = 0;
    }

    if (v50)
    {
      v52 = v132;
    }

    else
    {
      v52 = 0;
    }

    v107 = v52;
    v108 = v51;
    if (!*(dictionary._rawValue + 2))
    {
LABEL_116:
      v105 = 0;
      v106 = 0;
      if (*(dictionary._rawValue + 2))
      {
        goto LABEL_117;
      }

LABEL_145:
      v103 = 0;
      v104 = 0;
      goto LABEL_146;
    }
  }

  else
  {
    v107 = 0;
    v108 = 0;
    if (!*(dictionary._rawValue + 2))
    {
      goto LABEL_116;
    }
  }

  v68 = sub_25BE624E8(0xD000000000000010, 0x800000025BEBA280);
  if ((v69 & 1) == 0)
  {
    goto LABEL_116;
  }

  sub_25BE60ED4(*(dictionary._rawValue + 7) + 32 * v68, __src);
  v70 = swift_dynamicCast();
  if (v70)
  {
    v71 = v131;
  }

  else
  {
    v71 = 0;
  }

  if (v70)
  {
    v72 = v132;
  }

  else
  {
    v72 = 0;
  }

  v105 = v72;
  v106 = v71;
  if (!*(dictionary._rawValue + 2))
  {
    goto LABEL_145;
  }

LABEL_117:
  v58 = sub_25BE624E8(0x6C72556E6F6369, 0xE700000000000000);
  if ((v59 & 1) == 0)
  {
    v103 = 0;
    v104 = 0;
    if (*(dictionary._rawValue + 2))
    {
      goto LABEL_127;
    }

LABEL_146:
    v101 = 0;
    v102 = 0;
    goto LABEL_147;
  }

  sub_25BE60ED4(*(dictionary._rawValue + 7) + 32 * v58, __src);
  v60 = swift_dynamicCast();
  if (v60)
  {
    v61 = v131;
  }

  else
  {
    v61 = 0;
  }

  if (v60)
  {
    v62 = v132;
  }

  else
  {
    v62 = 0;
  }

  v103 = v62;
  v104 = v61;
  if (!*(dictionary._rawValue + 2))
  {
    goto LABEL_146;
  }

LABEL_127:
  v63 = sub_25BE624E8(0x6E61726165707061, 0xEE006F666E496563);
  if (v64)
  {
    sub_25BE60ED4(*(dictionary._rawValue + 7) + 32 * v63, __src);
    v65 = swift_dynamicCast();
    if (v65)
    {
      v66 = v131;
    }

    else
    {
      v66 = 0;
    }

    if (v65)
    {
      v67 = v132;
    }

    else
    {
      v67 = 0;
    }

    v101 = v67;
    v102 = v66;
    if (!*(dictionary._rawValue + 2))
    {
LABEL_147:
      v73 = 0;
      v74 = 0;
      if (*(dictionary._rawValue + 2))
      {
        goto LABEL_148;
      }

LABEL_176:
      v79 = 0;
      v78 = 0;
      goto LABEL_177;
    }
  }

  else
  {
    v101 = 0;
    v102 = 0;
    if (!*(dictionary._rawValue + 2))
    {
      goto LABEL_147;
    }
  }

  v85 = sub_25BE624E8(0x72556E6F69746361, 0xE90000000000006CLL);
  if ((v86 & 1) == 0)
  {
    goto LABEL_147;
  }

  sub_25BE60ED4(*(dictionary._rawValue + 7) + 32 * v85, __src);
  v87 = swift_dynamicCast();
  if (v87)
  {
    v73 = v131;
  }

  else
  {
    v73 = 0;
  }

  if (v87)
  {
    v74 = v132;
  }

  else
  {
    v74 = 0;
  }

  if (!*(dictionary._rawValue + 2))
  {
    goto LABEL_176;
  }

LABEL_148:
  v75 = sub_25BE624E8(0xD000000000000013, 0x800000025BEBA2A0);
  if ((v76 & 1) == 0)
  {
    v78 = 0;
    v79 = 0;
    if (*(dictionary._rawValue + 2))
    {
      goto LABEL_158;
    }

LABEL_177:
    v84 = 0;
    v83 = 0;
    goto LABEL_178;
  }

  sub_25BE60ED4(*(dictionary._rawValue + 7) + 32 * v75, __src);
  v77 = swift_dynamicCast();
  if (v77)
  {
    v78 = v131;
  }

  else
  {
    v78 = 0;
  }

  if (v77)
  {
    v79 = v132;
  }

  else
  {
    v79 = 0;
  }

  if (!*(dictionary._rawValue + 2))
  {
    goto LABEL_177;
  }

LABEL_158:
  v80 = sub_25BE624E8(0x63417265746F6F66, 0xEF6C72556E6F6974);
  if (v81)
  {
    sub_25BE60ED4(*(dictionary._rawValue + 7) + 32 * v80, __src);
    v82 = swift_dynamicCast();
    if (v82)
    {
      v83 = v131;
    }

    else
    {
      v83 = 0;
    }

    if (v82)
    {
      v84 = v132;
    }

    else
    {
      v84 = 0;
    }

    if (!*(dictionary._rawValue + 2))
    {
LABEL_178:
      v88 = 0;
      v89 = 0;
      if (*(dictionary._rawValue + 2))
      {
        goto LABEL_179;
      }

LABEL_196:
      v91 = 2;
LABEL_197:

      v96 = 0;
      v97 = 0;
      goto LABEL_198;
    }
  }

  else
  {
    v83 = 0;
    v84 = 0;
    if (!*(dictionary._rawValue + 2))
    {
      goto LABEL_178;
    }
  }

  v98 = sub_25BE624E8(0xD000000000000019, 0x800000025BEBA2C0);
  if ((v99 & 1) == 0)
  {
    goto LABEL_178;
  }

  sub_25BE60ED4(*(dictionary._rawValue + 7) + 32 * v98, __src);
  v100 = swift_dynamicCast();
  if (v100)
  {
    v88 = v131;
  }

  else
  {
    v88 = 0;
  }

  if (v100)
  {
    v89 = v132;
  }

  else
  {
    v89 = 0;
  }

  if (!*(dictionary._rawValue + 2))
  {
    goto LABEL_196;
  }

LABEL_179:
  v90 = sub_25BE624E8(0x736F6C43776F6873, 0xEF6E6F7474754265);
  v91 = 2;
  if (v92)
  {
    sub_25BE60ED4(*(dictionary._rawValue + 7) + 32 * v90, __src);
    if (swift_dynamicCast())
    {
      v91 = v131;
    }

    else
    {
      v91 = 2;
    }
  }

  if (!*(dictionary._rawValue + 2))
  {
    goto LABEL_197;
  }

  v93 = sub_25BE624E8(0x745372656E6E6162, 0xEB00000000656C79);
  if ((v94 & 1) == 0)
  {
    goto LABEL_197;
  }

  sub_25BE60ED4(*(dictionary._rawValue + 7) + 32 * v93, &v131);

  v95 = swift_dynamicCast();
  v96 = __src[0];
  v97 = __src[1];
  if (!v95)
  {
    v96 = 0;
    v97 = 0;
  }

LABEL_198:
  __src[0] = v128;
  __src[1] = v127;
  __src[2] = v126;
  __src[3] = v125;
  __src[4] = v124;
  __src[5] = v123;
  __src[6] = v122;
  __src[7] = v121;
  __src[8] = v120;
  __src[9] = v119;
  __src[10] = v118;
  __src[11] = v117;
  __src[12] = v116;
  __src[13] = v115;
  __src[14] = v114;
  __src[15] = v113;
  __src[16] = v112;
  __src[17] = v111;
  __src[18] = v110;
  __src[19] = v109;
  __src[20] = v108;
  __src[21] = v107;
  __src[22] = v106;
  __src[23] = v105;
  __src[24] = v104;
  __src[25] = v103;
  __src[26] = v102;
  __src[27] = v101;
  __src[28] = v73;
  __src[29] = v74;
  __src[30] = v78;
  __src[31] = v79;
  __src[32] = v83;
  __src[33] = v84;
  __src[34] = v88;
  __src[35] = v89;
  LOBYTE(__src[36]) = v91;
  __src[37] = v96;
  __src[38] = v97;
  nullsub_1(__src);
  memcpy(retstr, __src, 0x138uLL);
}

uint64_t sub_25BE65710(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25BE65734(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  v3 = v2 <= 0;
  if (v2 < 0)
  {
    v2 = -1;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_25BE65758(char a1)
{
  sub_25BEB4F04();
  EngagementUIPlacement.rawValue.getter();
  sub_25BEB48C4();

  v2 = sub_25BEB4F24();

  return sub_25BE65908(a1, v2);
}

void *sub_25BE657E4(void *a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_25BE65758(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_25BEAC5D8(v9, v10);
      v9 = v17;
      goto LABEL_8;
    }

    sub_25BE66340(v14, a3 & 1);
    v9 = sub_25BE65758(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_25BEB4E94();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 2200 * v9;

    return sub_25BE85ED0(a1, v20);
  }

  else
  {

    return sub_25BE667A0(v9, a2, a1, v19);
  }
}

unint64_t sub_25BE65908(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xED00007465656853;
      v8 = 0x6C6576654C707061;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xED00007473616F54;
          v8 = 0x6C6576654C707061;
          break;
        case 2:
          v8 = 0x73756C507377656ELL;
          v7 = 0xEF6D657449626154;
          break;
        case 3:
          v8 = 0xD000000000000010;
          v7 = 0x800000025BEB9A70;
          break;
        case 4:
          v8 = 0x6261546F69647561;
          v7 = 0xEC0000006D657449;
          break;
        case 5:
          v8 = 0xD000000000000010;
          v7 = 0x800000025BEB9A90;
          break;
        case 6:
          v9 = 0x686372616573;
          goto LABEL_25;
        case 7:
          v9 = 0x7374726F7073;
LABEL_25:
          v8 = v9 & 0xFFFFFFFFFFFFLL | 0x6154000000000000;
          v7 = 0xED00006D65744962;
          break;
        case 8:
          v8 = 0x5473656C7A7A7570;
          v7 = 0xEE006D6574496261;
          break;
        case 9:
          v8 = 0x6C6F46664F706F74;
          v7 = 0xEE00676E69776F6CLL;
          break;
        case 0xA:
          v8 = 0xD000000000000012;
          v7 = 0x800000025BEB9AE0;
          break;
        case 0xB:
          v8 = 0xD00000000000001ALL;
          v7 = 0x800000025BEB9B00;
          break;
        case 0xC:
          v8 = 0xD00000000000001BLL;
          v7 = 0x800000025BEB9B20;
          break;
        case 0xD:
          v8 = 0x766153664F706F74;
          v7 = 0xEA00000000006465;
          break;
        case 0xE:
          v8 = 0xD000000000000011;
          v7 = 0x800000025BEB9B50;
          break;
        case 0xF:
          v8 = 0xD000000000000010;
          v7 = 0x800000025BEB9B70;
          break;
        case 0x10:
          v8 = 0xD000000000000010;
          v7 = 0x800000025BEB9B90;
          break;
        case 0x11:
          v8 = 0xD000000000000010;
          v7 = 0x800000025BEB9BB0;
          break;
        case 0x12:
          v8 = 0xD000000000000017;
          v7 = 0x800000025BEB9BD0;
          break;
        case 0x13:
          v8 = 0xD000000000000017;
          v7 = 0x800000025BEB9BF0;
          break;
        case 0x14:
          v8 = 0xD00000000000001CLL;
          v7 = 0x800000025BEB9C10;
          break;
        case 0x15:
          v8 = 0xD000000000000020;
          v7 = 0x800000025BEB9C30;
          break;
        case 0x16:
          v8 = 0xD000000000000019;
          v7 = 0x800000025BEB9C60;
          break;
        case 0x17:
          v8 = 0xD000000000000022;
          v7 = 0x800000025BEB9C80;
          break;
        case 0x18:
          v8 = 0xD000000000000017;
          v7 = 0x800000025BEB9CB0;
          break;
        case 0x19:
          v8 = 0xD00000000000001CLL;
          v7 = 0x800000025BEB9CD0;
          break;
        case 0x1A:
          v8 = 0xD000000000000020;
          v7 = 0x800000025BEB9CF0;
          break;
        case 0x1B:
          v8 = 0xD00000000000001BLL;
          v7 = 0x800000025BEB9D20;
          break;
        case 0x1C:
          v8 = 0xD000000000000024;
          v7 = 0x800000025BEB9D40;
          break;
        case 0x1D:
          v8 = 0xD00000000000001ALL;
          v7 = 0x800000025BEB9D70;
          break;
        case 0x1E:
          v8 = 0xD00000000000001FLL;
          v7 = 0x800000025BEB9D90;
          break;
        case 0x1F:
          v8 = 0xD000000000000023;
          v7 = 0x800000025BEB9DB0;
          break;
        default:
          break;
      }

      v10 = 0x6C6576654C707061;
      v11 = 0xED00007465656853;
      switch(a1)
      {
        case 1:
          v11 = 0xED00007473616F54;
          if (v8 == 0x6C6576654C707061)
          {
            goto LABEL_97;
          }

          goto LABEL_98;
        case 2:
          v11 = 0xEF6D657449626154;
          if (v8 != 0x73756C507377656ELL)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 3:
          v11 = 0x800000025BEB9A70;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 4:
          v11 = 0xEC0000006D657449;
          if (v8 != 0x6261546F69647561)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 5:
          v11 = 0x800000025BEB9A90;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 6:
          v14 = 0x686372616573;
          goto LABEL_76;
        case 7:
          v14 = 0x7374726F7073;
LABEL_76:
          v11 = 0xED00006D65744962;
          if (v8 != (v14 & 0xFFFFFFFFFFFFLL | 0x6154000000000000))
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 8:
          v12 = 0x5473656C7A7A7570;
          v13 = 0x6D6574496261;
          goto LABEL_83;
        case 9:
          v12 = 0x6C6F46664F706F74;
          v13 = 0x676E69776F6CLL;
LABEL_83:
          v11 = v13 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          if (v8 != v12)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 10:
          v11 = 0x800000025BEB9AE0;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 11:
          v11 = 0x800000025BEB9B00;
          if (v8 != 0xD00000000000001ALL)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 12:
          v11 = 0x800000025BEB9B20;
          if (v8 != 0xD00000000000001BLL)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 13:
          v11 = 0xEA00000000006465;
          if (v8 != 0x766153664F706F74)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 14:
          v11 = 0x800000025BEB9B50;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 15:
          v11 = 0x800000025BEB9B70;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 16:
          v11 = 0x800000025BEB9B90;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 17:
          v11 = 0x800000025BEB9BB0;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 18:
          v11 = 0x800000025BEB9BD0;
          if (v8 != 0xD000000000000017)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 19:
          v11 = 0x800000025BEB9BF0;
          if (v8 != 0xD000000000000017)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 20:
          v11 = 0x800000025BEB9C10;
          if (v8 != 0xD00000000000001CLL)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 21:
          v11 = 0x800000025BEB9C30;
          if (v8 != 0xD000000000000020)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 22:
          v11 = 0x800000025BEB9C60;
          if (v8 != 0xD000000000000019)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 23:
          v11 = 0x800000025BEB9C80;
          if (v8 != 0xD000000000000022)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 24:
          v11 = 0x800000025BEB9CB0;
          if (v8 != 0xD000000000000017)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 25:
          v11 = 0x800000025BEB9CD0;
          if (v8 != 0xD00000000000001CLL)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 26:
          v11 = 0x800000025BEB9CF0;
          if (v8 != 0xD000000000000020)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 27:
          v11 = 0x800000025BEB9D20;
          if (v8 != 0xD00000000000001BLL)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 28:
          v11 = 0x800000025BEB9D40;
          if (v8 != 0xD000000000000024)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 29:
          v10 = 0xD00000000000001ALL;
          v11 = 0x800000025BEB9D70;
          goto LABEL_96;
        case 30:
          v11 = 0x800000025BEB9D90;
          if (v8 != 0xD00000000000001FLL)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 31:
          v11 = 0x800000025BEB9DB0;
          if (v8 != 0xD000000000000023)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        default:
LABEL_96:
          if (v8 != v10)
          {
            goto LABEL_98;
          }

LABEL_97:
          if (v7 == v11)
          {

            return v4;
          }

LABEL_98:
          v15 = sub_25BEB4E64();

          if (v15)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

uint64_t sub_25BE66340(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  v3 = v2;
  v5 = v4;
  v6 = *v2;
  sub_25BE61E38(0, &qword_280E76648, &type metadata for EngagementUpsellPlacement, MEMORY[0x277D84460]);
  v34 = v5;
  result = sub_25BEB4CA4();
  v8 = result;
  if (*(v6 + 16))
  {
    v33 = v2;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v6 + 48) + v21);
      if (v34)
      {
        v23 = (*(v6 + 56) + 2200 * v21);
        v24 = *v23;
        v35 = *(v23 + 8);
      }

      else
      {
        memcpy(__dst, (*(v6 + 56) + 2200 * v21), sizeof(__dst));
        v35 = __dst[1];
        v24 = __dst[0];
        sub_25BE68BBC(__dst, __src);
        v23 = __dst;
      }

      memcpy(__src, v23 + 2, 0x138uLL);
      memcpy(v38, v23 + 41, sizeof(v38));
      memcpy(v39, v23 + 80, sizeof(v39));
      memcpy(v40, v23 + 119, sizeof(v40));
      memcpy(v41, v23 + 158, sizeof(v41));
      memcpy(v42, v23 + 197, sizeof(v42));
      memcpy(v43, v23 + 236, sizeof(v43));
      sub_25BEB4F04();
      EngagementUIPlacement.rawValue.getter();
      sub_25BEB48C4();

      result = sub_25BEB4F24();
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
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      memcpy(__dst + 7, __src, 0x138uLL);
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v22;
      v17 = *(v8 + 56) + 2200 * v16;
      *v17 = v24;
      *(v17 + 8) = v35;
      memcpy((v17 + 9), __dst, 0x13FuLL);
      memcpy((v17 + 328), v38, 0x138uLL);
      memcpy((v17 + 640), v39, 0x138uLL);
      memcpy((v17 + 952), v40, 0x138uLL);
      memcpy((v17 + 1264), v41, 0x138uLL);
      memcpy((v17 + 1576), v42, 0x138uLL);
      result = memcpy((v17 + 1888), v43, 0x138uLL);
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
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
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v6 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v6 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v6 + 16) = 0;
  }

LABEL_34:
  *v3 = v8;
  return result;
}

void *sub_25BE667A0(unint64_t a1, char a2, void *__src, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  result = memcpy((a4[7] + 2200 * a1), __src, 0x898uLL);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_25BE66810(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25BE66870(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25BE668D0(uint64_t a1, uint64_t a2)
{
  sub_25BE63CCC(0, &qword_280E76DE8, MEMORY[0x277D6CF38], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BE66964(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_25BE63CCC(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_25BE669D4(uint64_t a1, unint64_t a2)
{
  v43 = *MEMORY[0x277D85DE8];
  *&v40 = a1;
  *(&v40 + 1) = a2;
  sub_25BE66F5C();

  if (swift_dynamicCast())
  {
    sub_25BE5D044(__src, &v41);
    __swift_project_boxed_opaque_existential_1(&v41, v42);
    sub_25BEB42C4();
    __src[0] = v40;
    __swift_destroy_boxed_opaque_existential_0Tm(&v41);
    goto LABEL_63;
  }

  v39 = 0;
  memset(__src, 0, sizeof(__src));
  sub_25BE66964(__src, &qword_280E76E60, sub_25BE66F5C);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_25BEB4C04();
  }

  sub_25BE6708C(v4, v5, &v41);
  v6 = *(&v41 + 1);
  v7 = v41;
  if (*(&v41 + 1) >> 60 != 15)
  {
    __src[0] = v41;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_25BEAD914(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0], v9);
  v10 = sub_25BEAD238(sub_25BEADC64);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_25BEB4364();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v35 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v40 + 7) = 0;
  *&v40 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v34 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v36 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v37 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_25BEAD790(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_25BEB48E4();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_25BEB4914();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v41 = v14;
      *(&v41 + 1) = v37;
      v31 = *(&v41 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v36;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_25BEB4C04();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_25BEAD790(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_25BEB48F4();
LABEL_52:
    *(&v40 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v41 = v40;
      *(&v41 + 6) = *(&v40 + 6);
      sub_25BEB4374();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v34;
  if (v24)
  {
    *&v41 = v40;
    *(&v41 + 6) = *(&v40 + 6);
    sub_25BEB4374();
    sub_25BEA7D40(v35, v34);
    goto LABEL_62;
  }

LABEL_57:

  sub_25BEA7D40(v35, v6);
LABEL_63:
  v32 = __src[0];
  sub_25BE67224(*&__src[0], *(&__src[0] + 1));

  sub_25BE672C8(v32, *(&v32 + 1));
  return v32;
}

uint64_t sub_25BE66EF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EngagementUpsellTrigger();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_25BE66F5C()
{
  result = qword_280E76E68;
  if (!qword_280E76E68)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280E76E68);
  }

  return result;
}

uint64_t sub_25BE66FD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25BEB4714();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 52)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_25BE6708C@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_25BEAD85C(__src, &__src[a2]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_25BEB42B4();
      swift_allocObject();
      v8 = sub_25BEB4264();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_25BEB4354();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t sub_25BE67168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25BEB4714();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 52));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_25BE67224(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_25BE67278(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x78 && *(a1 + 8))
  {
    return (*a1 + 120);
  }

  v3 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
  if (v3 >= 0x77)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_25BE672C8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_25BE6731C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_25BE624E8(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_25BEACCC0();
      goto LABEL_7;
    }

    sub_25BE682E8(v15, a4 & 1);
    v22 = sub_25BE624E8(a2, a3);
    if ((v16 & 1) == (v23 & 1))
    {
      v12 = v22;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_25BEB4E94();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for EngagementUpsellTrigger() - 8) + 72) * v12;

    return sub_25BE85F2C(a1, v20);
  }

LABEL_13:
  sub_25BE68764(v12, a2, a3, a1, v18);
}

void *sub_25BE67480@<X0>(void *__return_ptr a1@<X8>, uint64_t a2@<X0>)
{
  v4 = sub_25BE68694(a2);
  if (!v5)
  {
    goto LABEL_18;
  }

  v6 = v5;
  if (!*(a2 + 16) || (v7 = v4, v8 = sub_25BE624E8(v4, v5), (v9 & 1) == 0))
  {

    goto LABEL_18;
  }

  sub_25BE60ED4(*(a2 + 56) + 32 * v8, &v68);

  sub_25BE61C64();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:

LABEL_19:
    result = 0xF000000000000007;
    goto LABEL_20;
  }

  if ((v7 != 6581857 || v6 != 0xE300000000000000) && (sub_25BEB4E64() & 1) == 0)
  {
    if (v7 == 29295 && v6 == 0xE200000000000000 || (sub_25BEB4E64() & 1) != 0)
    {
      if (*(v66 + 16))
      {
        v18 = sub_25BE624E8(1952867692, 0xE400000000000000);
        if (v19)
        {
          sub_25BE60ED4(*(v66 + 56) + 32 * v18, &v68);
          if (swift_dynamicCast())
          {
            sub_25BE67480(&v68);
            v12 = v68;
            if ((~v68 & 0xF000000000000007) != 0)
            {
              if (*(v66 + 16))
              {
                v20 = sub_25BE624E8(0x7468676972, 0xE500000000000000);
                if (v21)
                {
                  sub_25BE60ED4(*(v66 + 56) + 32 * v20, &v68);

                  if (swift_dynamicCast())
                  {
                    sub_25BE67480(&v68);
                    v22 = v68;
                    if ((~v68 & 0xF000000000000007) != 0)
                    {

                      v23 = swift_allocObject();
                      *(v23 + 16) = v12;
                      *(v23 + 24) = v22;
                      result = (v23 | 0x6000000000000000);
                      goto LABEL_20;
                    }
                  }

                  goto LABEL_42;
                }
              }

              goto LABEL_41;
            }
          }
        }
      }

      goto LABEL_74;
    }

    if (v7 == 7630702 && v6 == 0xE300000000000000 || (sub_25BEB4E64() & 1) != 0)
    {
      if (!*(v66 + 16))
      {
        goto LABEL_74;
      }

      v24 = sub_25BE624E8(0x6F697469646E6F63, 0xE90000000000006ELL);
      if ((v25 & 1) == 0)
      {
        goto LABEL_74;
      }

      sub_25BE60ED4(*(v66 + 56) + 32 * v24, &v68);

      if (swift_dynamicCast())
      {
        sub_25BE67480(&v68);
        v26 = v68;
        if ((~v68 & 0xF000000000000007) != 0)
        {

          v27 = swift_allocObject();
          *(v27 + 16) = v26;
          result = (v27 | 0x8000000000000000);
          goto LABEL_20;
        }
      }

LABEL_75:
      if (qword_280E76F20 != -1)
      {
        swift_once();
      }

      v42 = sub_25BEB4764();
      __swift_project_value_buffer(v42, qword_280E77F40);

      v43 = sub_25BEB4744();
      v44 = sub_25BEB4A54();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *&v68 = v46;
        *v45 = 136315138;
        v47 = sub_25BE60F30(v7, v6, &v68);

        *(v45 + 4) = v47;
        v48 = "EngagementUpsellCondition: invalid %s condition";
LABEL_79:
        _os_log_impl(&dword_25BE5A000, v43, v44, v48, v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v46);
        MEMORY[0x25F87FD60](v46, -1, -1);
        MEMORY[0x25F87FD60](v45, -1, -1);
LABEL_120:

        goto LABEL_19;
      }

      goto LABEL_119;
    }

    if (v7 == 0x426F546C61757165 && v6 == 0xEB000000006C6F6FLL || (sub_25BEB4E64() & 1) != 0)
    {
      if (!*(v66 + 16))
      {
        goto LABEL_74;
      }

      v28 = sub_25BE624E8(0x79747265706F7270, 0xE800000000000000);
      if ((v29 & 1) == 0)
      {
        goto LABEL_74;
      }

      sub_25BE60ED4(*(v66 + 56) + 32 * v28, &v68);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_74;
      }

      if (*(v66 + 16))
      {
        v30 = sub_25BE624E8(0x65756C6176, 0xE500000000000000);
        if (v31)
        {
          sub_25BE60ED4(*(v66 + 56) + 32 * v30, &v68);

          if (swift_dynamicCast())
          {

            v32 = swift_allocObject();
            *(v32 + 16) = v66;
            *(v32 + 24) = v67;
            *(v32 + 32) = v66;
            result = (v32 | 0x1000000000000000);
            goto LABEL_20;
          }

          goto LABEL_74;
        }
      }
    }

    else if (v7 == 0x496F546C61757165 && v6 == 0xEA0000000000746ELL || (sub_25BEB4E64() & 1) != 0)
    {
      if (!*(v66 + 16))
      {
        goto LABEL_74;
      }

      v33 = sub_25BE624E8(0x79747265706F7270, 0xE800000000000000);
      if ((v34 & 1) == 0)
      {
        goto LABEL_74;
      }

      sub_25BE60ED4(*(v66 + 56) + 32 * v33, &v68);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_74;
      }

      if (*(v66 + 16))
      {
        v35 = sub_25BE624E8(0x65756C6176, 0xE500000000000000);
        if (v36)
        {
          sub_25BE60ED4(*(v66 + 56) + 32 * v35, &v68);

          if (swift_dynamicCast())
          {

            result = swift_allocObject();
            result[2] = v66;
            result[3] = v67;
            result[4] = v66;
            goto LABEL_20;
          }

          goto LABEL_74;
        }
      }
    }

    else
    {
      if ((v7 != 0x5472657461657267 || v6 != 0xEE00746E496E6168) && (sub_25BEB4E64() & 1) == 0)
      {
        if (v7 == 0xD000000000000017 && 0x800000025BEBB5E0 == v6 || (sub_25BEB4E64() & 1) != 0)
        {
          if (!*(v66 + 16))
          {
            goto LABEL_74;
          }

          v49 = sub_25BE624E8(0x79747265706F7270, 0xE800000000000000);
          if ((v50 & 1) == 0)
          {
            goto LABEL_74;
          }

          sub_25BE60ED4(*(v66 + 56) + 32 * v49, &v68);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_74;
          }

          if (*(v66 + 16) && (v51 = sub_25BE624E8(0x65756C6176, 0xE500000000000000), (v52 & 1) != 0))
          {
            sub_25BE60ED4(*(v66 + 56) + 32 * v51, &v68);
          }

          else
          {
            v68 = 0u;
            v69 = 0u;
          }

          if (*(&v69 + 1))
          {
            if (swift_dynamicCast())
            {

              v57 = swift_allocObject();
              *(v57 + 16) = v66;
              *(v57 + 24) = v67;
              *(v57 + 32) = v66;
              result = (v57 | 0x3000000000000000);
              goto LABEL_20;
            }

            goto LABEL_74;
          }
        }

        else if (v7 == 0x6E6168547373656CLL && v6 == 0xEB00000000746E49 || (sub_25BEB4E64() & 1) != 0)
        {
          if (!*(v66 + 16))
          {
            goto LABEL_74;
          }

          v53 = sub_25BE624E8(0x79747265706F7270, 0xE800000000000000);
          if ((v54 & 1) == 0)
          {
            goto LABEL_74;
          }

          sub_25BE60ED4(*(v66 + 56) + 32 * v53, &v68);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_74;
          }

          if (*(v66 + 16) && (v55 = sub_25BE624E8(0x65756C6176, 0xE500000000000000), (v56 & 1) != 0))
          {
            sub_25BE60ED4(*(v66 + 56) + 32 * v55, &v68);
          }

          else
          {
            v68 = 0u;
            v69 = 0u;
          }

          if (*(&v69 + 1))
          {
            if (swift_dynamicCast())
            {

              v62 = swift_allocObject();
              *(v62 + 16) = v66;
              *(v62 + 24) = v67;
              *(v62 + 32) = v66;
              result = (v62 | 0x4000000000000000);
              goto LABEL_20;
            }

            goto LABEL_74;
          }
        }

        else
        {
          if ((v7 != 0xD000000000000014 || 0x800000025BEBB600 != v6) && (sub_25BEB4E64() & 1) == 0)
          {

            if (qword_280E76F20 != -1)
            {
              swift_once();
            }

            v63 = sub_25BEB4764();
            __swift_project_value_buffer(v63, qword_280E77F40);

            v43 = sub_25BEB4744();
            v44 = sub_25BEB4A54();

            if (os_log_type_enabled(v43, v44))
            {
              v45 = swift_slowAlloc();
              v46 = swift_slowAlloc();
              *&v68 = v46;
              *v45 = 136315138;
              v64 = sub_25BE60F30(v7, v6, &v68);

              *(v45 + 4) = v64;
              v48 = "EngagementUpsellCondition: received unknown token [%s]";
              goto LABEL_79;
            }

LABEL_119:

            goto LABEL_120;
          }

          if (!*(v66 + 16))
          {
            goto LABEL_74;
          }

          v58 = sub_25BE624E8(0x79747265706F7270, 0xE800000000000000);
          if ((v59 & 1) == 0)
          {
            goto LABEL_74;
          }

          sub_25BE60ED4(*(v66 + 56) + 32 * v58, &v68);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_74;
          }

          if (*(v66 + 16) && (v60 = sub_25BE624E8(0x65756C6176, 0xE500000000000000), (v61 & 1) != 0))
          {
            sub_25BE60ED4(*(v66 + 56) + 32 * v60, &v68);
          }

          else
          {
            v68 = 0u;
            v69 = 0u;
          }

          if (*(&v69 + 1))
          {
            if (swift_dynamicCast())
            {

              v65 = swift_allocObject();
              *(v65 + 16) = v66;
              *(v65 + 24) = v67;
              *(v65 + 32) = v66;
              result = (v65 | 0x5000000000000000);
              goto LABEL_20;
            }

            goto LABEL_74;
          }
        }

        sub_25BE9D98C(&v68);
        goto LABEL_75;
      }

      if (!*(v66 + 16))
      {
        goto LABEL_74;
      }

      v37 = sub_25BE624E8(0x79747265706F7270, 0xE800000000000000);
      if ((v38 & 1) == 0)
      {
        goto LABEL_74;
      }

      sub_25BE60ED4(*(v66 + 56) + 32 * v37, &v68);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_74;
      }

      if (*(v66 + 16))
      {
        v39 = sub_25BE624E8(0x65756C6176, 0xE500000000000000);
        if (v40)
        {
          sub_25BE60ED4(*(v66 + 56) + 32 * v39, &v68);

          if (swift_dynamicCast())
          {

            v41 = swift_allocObject();
            *(v41 + 16) = v66;
            *(v41 + 24) = v67;
            *(v41 + 32) = v66;
            result = (v41 | 0x2000000000000000);
            goto LABEL_20;
          }

          goto LABEL_74;
        }
      }
    }

LABEL_74:

    goto LABEL_75;
  }

  if (!*(v66 + 16))
  {
    goto LABEL_74;
  }

  v10 = sub_25BE624E8(1952867692, 0xE400000000000000);
  if ((v11 & 1) == 0)
  {
    goto LABEL_74;
  }

  sub_25BE60ED4(*(v66 + 56) + 32 * v10, &v68);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_74;
  }

  sub_25BE67480(&v68);
  v12 = v68;
  if ((~v68 & 0xF000000000000007) == 0)
  {
    goto LABEL_74;
  }

  if (!*(v66 + 16) || (v13 = sub_25BE624E8(0x7468676972, 0xE500000000000000), (v14 & 1) == 0))
  {
LABEL_41:

LABEL_42:
    sub_25BE9DA3C(v12);
    goto LABEL_75;
  }

  sub_25BE60ED4(*(v66 + 56) + 32 * v13, &v68);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_42;
  }

  sub_25BE67480(&v68);
  v15 = v68;
  if ((~v68 & 0xF000000000000007) == 0)
  {
    goto LABEL_42;
  }

  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  *(v16 + 24) = v15;
  result = (v16 | 0x7000000000000000);
LABEL_20:
  *a1 = result;
  return result;
}

uint64_t sub_25BE681F4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25BE68230()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25BE68278()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25BE682B0()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_25BE682E8(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for EngagementUpsellTrigger();
  v40 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v42 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_25BE6862C();
  v41 = a2;
  result = sub_25BEB4CA4();
  v10 = result;
  if (*(v8 + 16))
  {
    v38 = v2;
    v39 = v8;
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
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v8 + 56);
      v25 = (*(v8 + 48) + 16 * v23);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v40 + 72);
      v29 = v24 + v28 * v23;
      if (v41)
      {
        sub_25BE66EF8(v29, v42);
      }

      else
      {
        sub_25BE5F510(v29, v42, type metadata accessor for EngagementUpsellTrigger);
      }

      sub_25BEB4F04();
      sub_25BEB48C4();
      result = sub_25BEB4F24();
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
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v26;
      v19[1] = v27;
      result = sub_25BE66EF8(v42, *(v10 + 56) + v28 * v18);
      ++*(v10 + 16);
      v8 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
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
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v8 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

void sub_25BE6862C()
{
  if (!qword_280E76618)
  {
    type metadata accessor for EngagementUpsellTrigger();
    v0 = sub_25BEB4CC4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E76618);
    }
  }
}

uint64_t sub_25BE68694(uint64_t a1)
{
  v2 = sub_25BEB4B14();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_25BE68710(v2, *(a1 + 36), 0, a1);

  return v4;
}

uint64_t sub_25BE68710(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_25BE68764(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for EngagementUpsellTrigger();
  result = sub_25BE66EF8(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_25BE68808(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x77)
  {
    *result = a2 - 120;
    if (a3 >= 0x78)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x78)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t EngagementUpsellTrigger.upsellPlacement(for:)()
{
  type metadata accessor for EngagementUpsellTrigger();
  sub_25BEB4544();
  sub_25BE5E7A0(0, &qword_280E76AC0);

  sub_25BEB4644();
}

void *sub_25BE6891C(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v6 = v5;
  v7 = *(v2 + *(type metadata accessor for EngagementUpsellTrigger() + 52));
  if (*(v7 + 16) && (v8 = sub_25BE65758(v4), (v9 & 1) != 0))
  {
    v10 = (*(v7 + 56) + 2200 * v8);
    memcpy(__dst, v10, sizeof(__dst));
    memmove(v6, v10, 0x898uLL);
    nullsub_1(v6);
    return sub_25BE68BBC(__dst, &v12);
  }

  else
  {
    sub_25BE689FC(__dst);
    return memcpy(v6, __dst, 0x898uLL);
  }
}

void sub_25BE689FC(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 2;
  bzero(a1 + 4, 0x878uLL);
}

uint64_t sub_25BE68A14(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 2200))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for EngagementUpsellBannerStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EngagementUpsellBannerStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t get_enum_tag_for_layout_string_14NewsEngagement0B12UpsellBannerVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

unint64_t sub_25BE68CA4()
{
  result = qword_280E76D30;
  if (!qword_280E76D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E76D30);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EngagementUIPlacement(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE1)
  {
    goto LABEL_17;
  }

  if (a2 + 31 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 31) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 31;
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

      return (*a1 | (v4 << 8)) - 31;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 31;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x20;
  v8 = v6 - 32;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_25BE68D94()
{
  EngagementUIPlacement.rawValue.getter();
  sub_25BEB48C4();
}

unint64_t sub_25BE68DF8@<X0>(unint64_t *a1@<X8>)
{
  result = EngagementUIPlacement.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t EngagementUpsellTrigger.minNewsVersion.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25BEB4714();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t EngagementUpsellTrigger.maxNewsVersion.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EngagementUpsellTrigger() + 20);
  v4 = sub_25BEB4714();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EngagementUpsellTrigger.paidEligibility.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for EngagementUpsellTrigger();
  *a1 = *(v1 + *(result + 40));
  return result;
}

id sub_25BE68FF0@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for EngagementViewControllerFactory();
  result = [objc_allocWithZone(v2) init];
  a1[3] = v2;
  a1[4] = &protocol witness table for EngagementViewControllerFactory;
  *a1 = result;
  return result;
}

id EngagementViewControllerFactory.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC14NewsEngagement31EngagementViewControllerFactory_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v2 = &v0[OBJC_IVAR____TtC14NewsEngagement31EngagementViewControllerFactory_placementKey];
  *v2 = 0x6E656D6563616C70;
  *(v2 + 1) = 0xE900000000000074;
  v3 = &v0[OBJC_IVAR____TtC14NewsEngagement31EngagementViewControllerFactory_identifierKey];
  *v3 = 0x696669746E656469;
  *(v3 + 1) = 0xEA00000000007265;
  v4 = &v0[OBJC_IVAR____TtC14NewsEngagement31EngagementViewControllerFactory_sourceKey];
  *v4 = 0x656372756F73;
  *(v4 + 1) = 0xE600000000000000;
  v5 = &v0[OBJC_IVAR____TtC14NewsEngagement31EngagementViewControllerFactory_messageIDKey];
  *v5 = 0x496567617373656DLL;
  *(v5 + 1) = 0xE900000000000044;
  v6 = &v0[OBJC_IVAR____TtC14NewsEngagement31EngagementViewControllerFactory_offerKey];
  *v6 = 0x726566666FLL;
  *(v6 + 1) = 0xE500000000000000;
  v8.receiver = v0;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_25BE691D8(uint64_t a1, uint64_t a2)
{
  sub_25BEB44F4();
  swift_beginAccess();
  v5 = *(v2 + 32);
  if (*(v5 + 16) && (v6 = sub_25BE69650(a1), (v7 & 1) != 0))
  {
    sub_25BEADC08(*(v5 + 56) + 16 * v6, &v10);
  }

  else
  {
    v10 = xmmword_25BEB60D0;
  }

  swift_endAccess();
  v8 = v10;
  sub_25BE69354(&v10, &qword_280E76AB0, &type metadata for EngagementInlineViewManager.Observation);
  if (v8 == __PAIR128__(1, 0))
  {
    *(&v10 + 1) = a2;
    swift_unknownObjectWeakInit();
    swift_beginAccess();
    sub_25BE693C4(&v10, a1);
    swift_endAccess();
  }

  return sub_25BEB4504();
}

uint64_t sub_25BE692E4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_25BE80B8C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_25BE69354(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_25BE61510(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_25BE693C4(void *a1, uint64_t a2)
{
  v3 = v2;
  if (*a1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1[1] == 1;
  }

  if (v5)
  {
    sub_25BE692E4(a1, &qword_280E76AB0, &type metadata for EngagementInlineViewManager.Observation);
    v8 = sub_25BE69650(a2);
    if (v9)
    {
      v10 = v8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      v14 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_25BEAD0A8();
        v12 = v14;
      }

      sub_25BE694D4(*(v12 + 56) + 16 * v10, &v15);
      sub_25BE802C8(v10, v12);
      *v3 = v12;
    }

    else
    {
      v15 = xmmword_25BEB60D0;
    }

    return sub_25BE692E4(&v15, &qword_280E76AB0, &type metadata for EngagementInlineViewManager.Observation);
  }

  else
  {
    sub_25BE694D4(a1, &v15);
    v6 = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    result = sub_25BE69530(&v15, a2, v6);
    *v2 = v13;
  }

  return result;
}

uint64_t sub_25BE69530(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_25BE69650(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_25BEAD0A8();
      v9 = v17;
      goto LABEL_8;
    }

    sub_25BE69694(v14, a3 & 1);
    v9 = sub_25BE69650(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_25BEB4E94();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 16 * v9;

    return sub_25BE85E18(a1, v20);
  }

  else
  {

    return sub_25BE699E0(v9, a2, a1, v19);
  }
}

unint64_t sub_25BE69650(uint64_t a1)
{
  v2 = sub_25BEB4EF4();

  return sub_25BE69920(a1, v2);
}

uint64_t sub_25BE69694(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_25BE6998C(0, &qword_280E76620);
  result = sub_25BEB4CA4();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      v21 = *(v5 + 56) + 16 * v19;
      if (a2)
      {
        sub_25BE694D4(v21, v31);
      }

      else
      {
        sub_25BEADC08(v21, v31);
      }

      result = sub_25BEB4EF4();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_25BE694D4(v31, *(v7 + 56) + 16 * v15);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if (a2)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

unint64_t sub_25BE69920(uint64_t a1, uint64_t a2)
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

void sub_25BE6998C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_25BEB4CC4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_25BE699E0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_25BE694D4(a3, a4[7] + 16 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
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

uint64_t sub_25BE69B70()
{
  v0 = sub_25BEB4784();
  __swift_allocate_value_buffer(v0, qword_280E76748);
  __swift_project_value_buffer(v0, qword_280E76748);
  return sub_25BEB4774();
}

uint64_t sub_25BE69CE4()
{
  v0 = sub_25BEB4784();
  __swift_allocate_value_buffer(v0, qword_280E76768);
  __swift_project_value_buffer(v0, qword_280E76768);
  return sub_25BEB4774();
}

uint64_t sub_25BE69DBC()
{
  v0 = sub_25BEB4454();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25BEB4444();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25BE5E51C();
  (*(v6 + 104))(v9, *MEMORY[0x277D6D040], v5);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D098], v0);
  result = sub_25BEB44A4();
  qword_280E76E28 = result;
  return result;
}

uint64_t sub_25BE69F9C()
{
  sub_25BEB4544();
  sub_25BE61510(0, qword_280E77418, &type metadata for EngagementInlineBannerState, MEMORY[0x277D83D88]);

  sub_25BEB4644();
}

uint64_t sub_25BE6A078(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_25BE6A090(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_25BE6A0D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t get_enum_tag_for_layout_string_14NewsEngagement0B17InlineBannerStateO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_25BE6ABB8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t getEnumTagSinglePayload for EngagementBannerLayout(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for EngagementBannerLayout(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

char *sub_25BE6AC98(char *result, void *a2, char *a3, uint64_t a4)
{
  v5 = result;
  if (*(a4 + 8))
  {
    v6 = 0;
    v7 = 32;
  }

  else
  {
    v6 = *a4;
    v7 = *a3;
    result = *a4;
  }

  *v5 = v7;
  *a2 = v6;
  return result;
}

char *sub_25BE6ACFC(char *result, void *a2, char *a3, uint64_t a4)
{
  v5 = result;
  if (*(a4 + 8) == 1)
  {
    v6 = *a4;
    v7 = *a3;
    result = *a4;
  }

  else
  {
    v6 = 0;
    v7 = 32;
  }

  *v5 = v7;
  *a2 = v6;
  return result;
}

id sub_25BE6B174()
{
  v1 = [*v0 loadPromise];

  return v1;
}

uint64_t sub_25BE6B1AC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25BE6B1E4()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_25BE6B21C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25BE6B25C()
{
  MEMORY[0x25F87FDD0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25BE6B294@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_25BE6B32C@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_25BE6B3C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 80);
}

uint64_t sub_25BE6B414@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_25BE6B4B4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25BE6B4EC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25BE6B554()
{

  sub_25BE779B0(*(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 34, 7);
}

uint64_t sub_25BE6B598()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_25BE6B5F0()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x79747265706F7270;
  }
}

uint64_t sub_25BE6B62C()
{
  if (*v0)
  {
    return 0x7468676972;
  }

  else
  {
    return 1952867692;
  }
}

uint64_t sub_25BE6B668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25BE5E748();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

void sub_25BE6B734(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_25BE5E748();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }
}

uint64_t sub_25BE6B874()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25BE6B8B4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25BE6B904()
{

  sub_25BEB3D64(*(v0 + 48), *(v0 + 56), *(v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_25BE6B9C8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_25BE6BA18(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t EngagementEventHandler.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*EngagementEventHandler.delegate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_25BE6BBA0;
}

uint64_t sub_25BE6BBA4()
{
  v1 = *(v0 + 104);
  if (v1 == 2)
  {
    v2 = *(v0 + 40);
    ObjectType = swift_getObjectType();
    LOBYTE(v1) = (*(v2 + 8))(ObjectType, v2);
    *(v0 + 104) = v1 & 1;
  }

  return v1 & 1;
}

void EngagementEventHandler.addObserver(_:for:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v6 = *a3;
  if (sub_25BE6BBA4())
  {
    v7 = v3[5];
    ObjectType = swift_getObjectType();
    v9 = (*(v7 + 64))(ObjectType, v7);
    LOBYTE(v7) = sub_25BE612C0(v6, v9);

    if (v7)
    {
      if (qword_280E76F20 != -1)
      {
        swift_once();
      }

      v10 = sub_25BEB4764();
      __swift_project_value_buffer(v10, qword_280E77F40);
      oslog = sub_25BEB4744();
      v11 = sub_25BEB4A64();
      if (os_log_type_enabled(oslog, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v18 = v13;
        *v12 = 136315138;
        v14 = EngagementUIPlacement.rawValue.getter();
        v16 = sub_25BE60F30(v14, v15, &v18);

        *(v12 + 4) = v16;
        _os_log_impl(&dword_25BE5A000, oslog, v11, "Ignoring request to add observer for blocked placement %s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v13);
        MEMORY[0x25F87FD60](v13, -1, -1);
        MEMORY[0x25F87FD60](v12, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(v3 + 6, v3[9]);
      v19 = v6;
      sub_25BE85FC8(a1, a2, &v19);
    }
  }
}

uint64_t EngagementEventHandler.addObserver(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_25BEB47F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = (&v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_25BE6BBA4();
  if (result)
  {
    v51 = a1;
    v52 = a2;
    v14 = *(v3 + 40);
    ObjectType = swift_getObjectType();
    v16 = (*(v14 + 64))(ObjectType, v14);

    v17 = sub_25BE709DC(v16, a3);

    v18 = sub_25BE76B64(v17, v4);

    v19 = *(v18 + 16);
    v20 = *(a3 + 16);
    v54 = v18;
    if (v19 < v20)
    {
      if (v19 <= v20 >> 3)
      {
        v62[0] = a3;

        sub_25BE71CE0(v18);
      }

      else
      {

        sub_25BE6F5DC(v18, a3);
      }

      if (qword_280E76F20 != -1)
      {
LABEL_29:
        swift_once();
      }

      v21 = sub_25BEB4764();
      __swift_project_value_buffer(v21, qword_280E77F40);

      v22 = sub_25BEB4744();
      v23 = sub_25BEB4A64();

      v24 = v22;
      if (os_log_type_enabled(v22, v23))
      {
        v25 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v62[0] = v60;
        *v25 = 136315138;
        sub_25BE5CD58();
        v26 = v12;
        v27 = sub_25BEB4A24();
        v29 = v28;

        v30 = sub_25BE60F30(v27, v29, v62);

        *(v25 + 4) = v30;
        v12 = v26;
        v22 = v24;
        _os_log_impl(&dword_25BE5A000, v24, v23, "Ignoring request to add observer for blocked placements %s", v25, 0xCu);
        v31 = v60;
        __swift_destroy_boxed_opaque_existential_0Tm(v60);
        MEMORY[0x25F87FD60](v31, -1, -1);
        v32 = v25;
        v18 = v54;
        MEMORY[0x25F87FD60](v32, -1, -1);
      }

      else
      {
      }
    }

    v33 = v18 + 56;
    v34 = 1 << *(v18 + 32);
    v35 = -1;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    v36 = v35 & *(v18 + 56);
    v37 = (v34 + 63) >> 6;
    v59 = *MEMORY[0x277D85200];
    v57 = (v9 + 8);
    v58 = (v9 + 104);

    v38 = 0;
    v55 = v37;
    v56 = v18 + 56;
    v53 = v4;
    v49 = v12;
    v50 = v8;
    while (v36)
    {
LABEL_20:
      v40 = *(*(v18 + 48) + (__clz(__rbit64(v36)) | (v38 << 6)));
      v41 = *__swift_project_boxed_opaque_existential_1((v4 + 48), *(v4 + 72));
      sub_25BE7697C();
      *v12 = sub_25BEB4AA4();
      (*v58)(v12, v59, v8);
      v42 = sub_25BEB4814();
      (*v57)(v12, v8);
      if ((v42 & 1) == 0)
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v43 = *(v41 + 16);
      v9 = *(v43 + 16);
      if (v9)
      {
        v44 = v43 + 32;
        v60 = *(v41 + 16);

        v46 = v51;
        v45 = v52;
        do
        {
          sub_25BE5D428(v44, v62);
          v48 = v63;
          v47 = v64;
          __swift_project_boxed_opaque_existential_1(v62, v63);
          v61 = v40;
          (*(v47 + 24))(v46, v45, &v61, v48, v47);
          __swift_destroy_boxed_opaque_existential_0Tm(v62);
          v44 += 40;
          --v9;
        }

        while (v9);

        v4 = v53;
        v18 = v54;
        v12 = v49;
        v8 = v50;
      }

      v36 &= v36 - 1;
      v37 = v55;
      v33 = v56;
    }

    while (1)
    {
      v39 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v39 >= v37)
      {
      }

      v36 = *(v33 + 8 * v39);
      ++v38;
      if (v36)
      {
        v38 = v39;
        goto LABEL_20;
      }
    }
  }

  return result;
}

uint64_t EngagementEventHandler.removeObserver(_:for:)(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  result = sub_25BE6BBA4();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1((v3 + 48), *(v3 + 72));
    v8 = v6;
    return sub_25BE86180(a1, a2, &v8);
  }

  return result;
}

void EngagementEventHandler.fetchRequests(for:)(uint64_t a1)
{
  v2 = v1;
  if ((sub_25BE6BBA4() & 1) == 0)
  {
    return;
  }

  if (!*(a1 + 16))
  {
    if (qword_280E76F20 != -1)
    {
      swift_once();
    }

    v26 = sub_25BEB4764();
    __swift_project_value_buffer(v26, qword_280E77F40);
    oslog = sub_25BEB4744();
    v27 = sub_25BEB4A64();
    if (!os_log_type_enabled(oslog, v27))
    {
      goto LABEL_22;
    }

    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = "Received empty list of placements for fetching request. Exiting";
LABEL_21:
    _os_log_impl(&dword_25BE5A000, oslog, v27, v29, v28, 2u);
    MEMORY[0x25F87FD60](v28, -1, -1);
    goto LABEL_22;
  }

  v4 = *(v1 + 40);
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 64))(ObjectType, v4);

  v7 = sub_25BE709DC(v6, a1);

  v8 = sub_25BE76B64(v7, v2);

  if (!*(v8 + 16))
  {

    if (qword_280E76F20 != -1)
    {
      swift_once();
    }

    v30 = sub_25BEB4764();
    __swift_project_value_buffer(v30, qword_280E77F40);
    oslog = sub_25BEB4744();
    v27 = sub_25BEB4A64();
    if (!os_log_type_enabled(oslog, v27))
    {
      goto LABEL_22;
    }

    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = "All placements are blocked for fetching request. Exiting";
    goto LABEL_21;
  }

  v9 = sub_25BE6C948();
  if (*(v9 + 16))
  {

    if (qword_280E76F20 != -1)
    {
      swift_once();
    }

    v10 = sub_25BEB4764();
    __swift_project_value_buffer(v10, qword_280E77F40);

    v11 = sub_25BEB4744();
    v12 = sub_25BEB4A64();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v40[0] = v14;
      *v13 = 136315138;
      sub_25BE5CD58();
      v15 = sub_25BEB4A24();
      v17 = sub_25BE60F30(v15, v16, v40);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_25BE5A000, v11, v12, "Fetching request for: %s...", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x25F87FD60](v14, -1, -1);
      MEMORY[0x25F87FD60](v13, -1, -1);
    }

    v18 = __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
    v19 = swift_allocObject();
    swift_weakInit();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = a1;
    v21 = *(*v18 + 16);
    v22 = *(v21 + 16);
    if (v22)
    {
      v23 = v21 + 32;

      do
      {
        sub_25BE5D428(v23, v40);
        v24 = v41;
        v25 = v42;
        __swift_project_boxed_opaque_existential_1(v40, v41);
        (*(v25 + 8))(v9, sub_25BE76E28, v20, v24, v25);
        __swift_destroy_boxed_opaque_existential_0Tm(v40);
        v23 += 40;
        --v22;
      }

      while (v22);
    }

    else
    {
    }

    return;
  }

  if (qword_280E76F20 != -1)
  {
    swift_once();
  }

  v31 = sub_25BEB4764();
  __swift_project_value_buffer(v31, qword_280E77F40);

  oslog = sub_25BEB4744();
  v32 = sub_25BEB4A64();

  if (os_log_type_enabled(oslog, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v40[0] = v34;
    *v33 = 136315138;
    sub_25BE5CD58();
    v35 = sub_25BEB4A24();
    v37 = v36;

    v38 = sub_25BE60F30(v35, v37, v40);

    *(v33 + 4) = v38;
    _os_log_impl(&dword_25BE5A000, oslog, v32, "All placements were throttled for fetching request: %s. Exiting", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
    MEMORY[0x25F87FD60](v34, -1, -1);
    MEMORY[0x25F87FD60](v33, -1, -1);

    return;
  }

LABEL_22:
}

uint64_t sub_25BE6C948()
{
  v1 = v0;
  v2 = sub_25BEB43C4();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v46 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v42 = &v40 - v8;

  v10 = sub_25BE770E8(v9, v0);
  v45 = v1;

  v11 = v10 + 56;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v10 + 56);
  v15 = (v12 + 63) >> 6;
  v43 = v10;
  v44 = (v3 + 32);
  v40 = v3 + 40;
  v41 = v3;

  v16 = 0;
  while (v14)
  {
LABEL_11:
    v18 = v42;
    v19 = *(*(v43 + 48) + (__clz(__rbit64(v14)) | (v16 << 6)));
    sub_25BEB43A4();
    v20 = v45;
    swift_beginAccess();
    v21 = *v44;
    v22 = v18;
    v23 = v2;
    (*v44)(v46, v22, v2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = *(v20 + 88);
    v25 = v47;
    *(v20 + 88) = 0x8000000000000000;
    v26 = sub_25BE65758(v19);
    v28 = v25[2];
    v29 = (v27 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      goto LABEL_23;
    }

    v32 = v27;
    if (v25[3] < v31)
    {
      sub_25BEAABB4(v31, isUniquelyReferenced_nonNull_native);
      v26 = sub_25BE65758(v19);
      if ((v32 & 1) != (v33 & 1))
      {
        goto LABEL_25;
      }

LABEL_16:
      v34 = v47;
      if (v32)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v37 = v26;
    sub_25BEABEE8();
    v26 = v37;
    v34 = v47;
    if (v32)
    {
LABEL_4:
      v2 = v23;
      (*(v41 + 40))(v34[7] + *(v41 + 72) * v26, v46, v23);
      goto LABEL_5;
    }

LABEL_17:
    v34[(v26 >> 6) + 8] |= 1 << v26;
    *(v34[6] + v26) = v19;
    v2 = v23;
    v21((v34[7] + *(v41 + 72) * v26), v46, v23);
    v35 = v34[2];
    v30 = __OFADD__(v35, 1);
    v36 = v35 + 1;
    if (v30)
    {
      goto LABEL_24;
    }

    v34[2] = v36;
LABEL_5:
    v14 &= v14 - 1;
    *(v45 + 88) = v34;

    swift_endAccess();
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v15)
    {
      v38 = v43;

      return v38;
    }

    v14 = *(v11 + 8 * v17);
    ++v16;
    if (v14)
    {
      v16 = v17;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_25BEB4E94();
  __break(1u);
  return result;
}

uint64_t sub_25BE6CCB0(int64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v93 = a4;
  v84 = sub_25BEB47A4();
  v6 = *(v84 - 8);
  MEMORY[0x28223BE20](v84, v7);
  v83 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_25BEB47C4();
  v9 = *(v82 - 8);
  MEMORY[0x28223BE20](v82, v10);
  v81 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    v97 = result;
    if (a2)
    {
      if (qword_280E76F20 == -1)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v28 = *(a1 + 16);
      swift_beginAccess();
      v29 = v93;
      v80 = v28;
      if (!v28)
      {
      }

      v30 = 0;
      v79 = (a1 + 32);
      v31 = v93 + 56;
      v78 = &v99;
      v77 = (v6 + 8);
      v76 = (v9 + 8);
      while (1)
      {
        v32 = &v79[3 * v30];
        v33 = *v32;
        a1 = v32[1];
        v34 = *(v32 + 16);
        Strong = swift_unknownObjectWeakLoadStrong();
        v96 = v33;
        v92 = v30;
        v95 = a1;
        if (Strong)
        {
          break;
        }

LABEL_34:
        v94 = swift_unknownObjectWeakLoadStrong();
        if (v94)
        {
          v61 = *(v13 + 24);
          v62 = 1 << *(v29 + 32);
          if (v62 < 64)
          {
            v63 = ~(-1 << v62);
          }

          else
          {
            v63 = -1;
          }

          v64 = v63 & *(v29 + 56);
          v13 = (v62 + 63) >> 6;
          v89 = v34 | 0xFFFFFF80;
          v90 = v61;
          v88 = v61 + 2;

          v65 = 0;
          while (v64)
          {
            v66 = v64;
LABEL_45:
            v64 = (v66 - 1) & v66;
            if (*(a1 + 16))
            {
              v68 = *(*(v29 + 48) + (__clz(__rbit64(v66)) | (v65 << 6)));
              v69 = sub_25BE65758(v68);
              if (v70)
              {
                v71 = *(*(a1 + 56) + 8 * v69);
                ObjectType = swift_getObjectType();
                v100 = type metadata accessor for EngagementEventHandler();
                v101 = &protocol witness table for EngagementEventHandler;
                aBlock[0] = v97;
                v104 = v71;
                v105 = v89;
                v103 = v68;
                v72 = v90;
                v73 = v90[2];
                v74 = v71;

                v75 = v74;
                v29 = v93;
                v73(aBlock, &v104, &v103, ObjectType, v72);
                a1 = v95;

                sub_25BE779B0(v104, v105);
                __swift_destroy_boxed_opaque_existential_0Tm(aBlock);
              }
            }
          }

          while (1)
          {
            v67 = v65 + 1;
            if (__OFADD__(v65, 1))
            {
              goto LABEL_52;
            }

            if (v67 >= v13)
            {

              swift_unknownObjectRelease();
              v13 = v97;
              goto LABEL_11;
            }

            v66 = *(v31 + 8 * v67);
            ++v65;
            if (v66)
            {
              v65 = v67;
              goto LABEL_45;
            }
          }
        }

LABEL_11:
        v30 = v92 + 1;
        if (v92 + 1 == v80)
        {
        }
      }

      v36 = Strong;
      v86 = *(v13 + 24);
      v37 = 1 << *(v29 + 32);
      if (v37 < 64)
      {
        v38 = ~(-1 << v37);
      }

      else
      {
        v38 = -1;
      }

      v39 = v38 & *(v29 + 56);
      v40 = (v37 + 63) >> 6;
      v85 = v34 | 0x40;

      a1 = 0;
      v87 = v34;
      while (v39)
      {
        v41 = v39;
LABEL_23:
        v39 = (v41 - 1) & v41;
        if (*(v33 + 16))
        {
          v43 = *(*(v29 + 48) + (__clz(__rbit64(v41)) | (a1 << 6)));
          v44 = sub_25BE65758(v43);
          if (v45)
          {
            v46 = *(v33 + 56);
            v47 = *(v46 + 8 * v44);
            if (v47)
            {
              v48 = *(v46 + 8 * v44);
            }

            else
            {
              v48 = v34;
            }

            if (v47)
            {
              v49 = v85;
            }

            else
            {
              v49 = 0;
            }

            sub_25BE7697C();
            v94 = v47;
            ObjectType = sub_25BEB4AA4();
            v50 = swift_allocObject();
            v51 = v86;
            *(v50 + 16) = v36;
            *(v50 + 24) = v51;
            *(v50 + 32) = v97;
            *(v50 + 40) = v48;
            v90 = v48;
            v89 = v49;
            *(v50 + 48) = v49;
            *(v50 + 49) = v43;
            v101 = sub_25BE77BF4;
            v102 = v50;
            aBlock[0] = MEMORY[0x277D85DD0];
            aBlock[1] = 1107296256;
            v99 = sub_25BEAE488;
            v100 = &block_descriptor_42;
            v88 = _Block_copy(aBlock);

            swift_unknownObjectRetain();
            sub_25BE779E4(v48, v49);

            v52 = v81;
            sub_25BEB47B4();
            aBlock[0] = MEMORY[0x277D84F90];
            sub_25BE77A54(&qword_280E76720, MEMORY[0x277D85198]);
            sub_25BE779FC();
            sub_25BE77A54(&qword_280E766F0, sub_25BE779FC);
            v53 = v83;
            v54 = v36;
            v55 = v84;
            sub_25BEB4B04();
            v56 = v88;
            v57 = ObjectType;
            MEMORY[0x25F87F2C0](0, v52, v53, v88);
            _Block_release(v56);

            v13 = v97;
            v58 = v93;
            sub_25BE779B0(v90, v89);

            v59 = v53;
            v34 = v87;
            v60 = v55;
            v36 = v54;
            v29 = v58;
            v33 = v96;
            (*v77)(v59, v60);
            (*v76)(v52, v82);
          }
        }
      }

      while (1)
      {
        v42 = a1 + 1;
        if (__OFADD__(a1, 1))
        {
          break;
        }

        if (v42 >= v40)
        {

          swift_unknownObjectRelease();
          a1 = v95;
          goto LABEL_34;
        }

        v41 = *(v31 + 8 * v42);
        ++a1;
        if (v41)
        {
          a1 = v42;
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_52:
      __break(1u);
    }

    swift_once();
LABEL_4:
    v14 = sub_25BEB4764();
    __swift_project_value_buffer(v14, qword_280E77F40);

    sub_25BE77B58(a1, 1);
    v15 = sub_25BEB4744();
    v16 = sub_25BEB4A54();

    sub_25BE77B64(a1, 1);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      aBlock[0] = v18;
      *v17 = 136315394;
      sub_25BE5CD58();
      v19 = sub_25BEB4A24();
      v21 = sub_25BE60F30(v19, v20, aBlock);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      swift_getErrorValue();
      v22 = sub_25BEB4EA4();
      v24 = sub_25BE60F30(v22, v23, aBlock);

      *(v17 + 14) = v24;
      _os_log_impl(&dword_25BE5A000, v15, v16, "Error fetching dialog requests: placements = %s %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F87FD60](v18, -1, -1);
      v13 = v97;
      MEMORY[0x25F87FD60](v17, -1, -1);
    }

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v25 = *(v13 + 24);
      v26 = swift_getObjectType();
      v100 = type metadata accessor for EngagementEventHandler();
      v101 = &protocol witness table for EngagementEventHandler;
      aBlock[0] = v13;
      v27 = *(v25 + 8);

      v27(aBlock, a1, v26, v25);

      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0Tm(aBlock);
    }
  }

  return result;
}

uint64_t sub_25BE6D6D4(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = v3;
  v55 = sub_25BEB47A4();
  v8 = *(v55 - 8);
  MEMORY[0x28223BE20](v55, v9);
  v54 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_25BEB47C4();
  v11 = *(v53 - 8);
  MEMORY[0x28223BE20](v53, v12);
  v52 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a3;
  swift_beginAccess();
  v57 = v4;
  result = swift_unknownObjectWeakLoadStrong();
  v56 = result;
  if (result)
  {
    v44 = *(v57 + 24);
    v16 = a1 + 56;
    v17 = 1 << *(a1 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(a1 + 56);
    v20 = (v17 + 63) >> 6;
    v43 = v14 | 0x40;
    v42 = v59;
    v41 = (v8 + 8);
    v40 = (v11 + 8);

    v21 = 0;
    v46 = a1;
    v45 = a2;
    v39 = v14;
    while (v19)
    {
      v22 = v19;
LABEL_11:
      v19 = (v22 - 1) & v22;
      if (*(a2 + 16))
      {
        v24 = *(*(a1 + 48) + (__clz(__rbit64(v22)) | (v21 << 6)));
        result = sub_25BE65758(v24);
        if (v25)
        {
          v26 = *(*(a2 + 56) + 8 * result);
          if (v26)
          {
            v14 = *(*(a2 + 56) + 8 * result);
          }

          v27 = v43;
          if (!v26)
          {
            v27 = 0;
          }

          v47 = v27;
          sub_25BE7697C();
          v51 = v26;
          v50 = sub_25BEB4AA4();
          v28 = swift_allocObject();
          v29 = v57;
          v30 = v44;
          *(v28 + 16) = v56;
          *(v28 + 24) = v30;
          *(v28 + 32) = v29;
          *(v28 + 40) = v14;
          v49 = v14;
          v31 = v47;
          *(v28 + 48) = v47;
          *(v28 + 49) = v24;
          v59[2] = sub_25BE779C8;
          v59[3] = v28;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          v59[0] = sub_25BEAE488;
          v59[1] = &block_descriptor;
          v48 = _Block_copy(aBlock);
          swift_unknownObjectRetain();

          LOBYTE(v29) = v31;
          sub_25BE779E4(v14, v31);

          v32 = v52;
          sub_25BEB47B4();
          aBlock[0] = MEMORY[0x277D84F90];
          sub_25BE77A54(&qword_280E76720, MEMORY[0x277D85198]);
          sub_25BE779FC();
          sub_25BE77A54(&qword_280E766F0, sub_25BE779FC);
          v33 = v54;
          v34 = v55;
          sub_25BEB4B04();
          v35 = v48;
          v36 = v50;
          MEMORY[0x25F87F2C0](0, v32, v33, v48);
          _Block_release(v35);

          a2 = v45;
          a1 = v46;
          sub_25BE779B0(v49, v29);

          (*v41)(v33, v34);
          v37 = v32;
          v14 = v39;
          result = (*v40)(v37, v53);
        }
      }
    }

    while (1)
    {
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v23 >= v20)
      {

        return swift_unknownObjectRelease();
      }

      v22 = *(v16 + 8 * v23);
      ++v21;
      if (v22)
      {
        v21 = v23;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25BE6DBBC(uint64_t a1, uint64_t a2, char *a3)
{
  v26 = *v3;
  v6 = *a3;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = a1 + 56;
    v9 = 1 << *(a1 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a1 + 56);
    v12 = (v9 + 63) >> 6;
    v21 = v6 | 0x80;
    v23 = v3[3];

    v13 = 0;
    v24 = a1;
    v22 = a2;
    while (v11)
    {
      v14 = v11;
LABEL_11:
      v11 = (v14 - 1) & v14;
      if (*(a2 + 16))
      {
        v16 = *(*(a1 + 48) + (__clz(__rbit64(v14)) | (v13 << 6)));
        result = sub_25BE65758(v16);
        if (v17)
        {
          v18 = *(*(a2 + 56) + 8 * result);
          ObjectType = swift_getObjectType();
          v30[3] = v26;
          v30[4] = &protocol witness table for EngagementEventHandler;
          v30[0] = v3;
          v28 = v18;
          v29 = v21;
          v27 = v16;
          v19 = *(v23 + 16);
          v20 = v18;

          v19(v30, &v28, &v27, ObjectType, v23);
          a1 = v24;
          a2 = v22;

          sub_25BE779B0(v28, v29);
          result = __swift_destroy_boxed_opaque_existential_0Tm(v30);
        }
      }
    }

    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= v12)
      {

        return swift_unknownObjectRelease();
      }

      v14 = *(v8 + 8 * v15);
      ++v13;
      if (v14)
      {
        v13 = v15;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall EngagementEventHandler.fetchRequests(with:)(Swift::OpaquePointer with)
{
  v2 = v1;
  if (sub_25BE6BBA4())
  {
    v4 = *(v1 + 40);
    ObjectType = swift_getObjectType();
    v6 = (*(v4 + 64))(ObjectType, v4);
    v7 = sub_25BE77590(v6);

    v8 = *(with._rawValue + 2);
    v9 = MEMORY[0x277D84F90];
    if (v8)
    {
      v37[0] = MEMORY[0x277D84F90];
      sub_25BE75A78(0, v8, 0);
      v9 = v37[0];
      v10 = with._rawValue + 32;
      v11 = *(v37[0] + 16);
      v12 = v8;
      do
      {
        v14 = *v10;
        v10 += 16;
        v13 = v14;
        v37[0] = v9;
        v15 = *(v9 + 24);
        if (v11 >= v15 >> 1)
        {
          sub_25BE75A78((v15 > 1), v11 + 1, 1);
          v9 = v37[0];
        }

        *(v9 + 16) = v11 + 1;
        *(v9 + v11++ + 32) = v13;
        --v12;
      }

      while (v12);
    }

    v16 = sub_25BE77590(v9);

    if (*(v7 + 16) <= *(v16 + 16) >> 3)
    {
      v37[0] = v16;
      sub_25BE71CE0(v7);
    }

    else
    {
      sub_25BE6F5DC(v7, v16);
    }

    v17 = sub_25BE6C948();

    if (v8)
    {
      v18 = 0;
      v19 = with._rawValue + 40;
      v20 = MEMORY[0x277D84F90];
      do
      {
        v21 = &v19[16 * v18];
        v22 = v18;
        while (1)
        {
          if (v22 >= v8)
          {
            __break(1u);
LABEL_33:
            __break(1u);
            return;
          }

          v18 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            goto LABEL_33;
          }

          v23 = *v21;
          v24 = *(v21 - 8);

          if (sub_25BE6E18C(v24, v17))
          {
            break;
          }

          ++v22;
          v21 += 16;
          if (v18 == v8)
          {
            goto LABEL_25;
          }
        }

        v37[0] = v20;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25BE75A58(0, *(v20 + 16) + 1, 1);
          v20 = v37[0];
        }

        v26 = *(v20 + 16);
        v25 = *(v20 + 24);
        v27 = v26 + 1;
        if (v26 >= v25 >> 1)
        {
          sub_25BE75A58((v25 > 1), v26 + 1, 1);
          v27 = v26 + 1;
          v20 = v37[0];
        }

        *(v20 + 16) = v27;
        v28 = v20 + 16 * v26;
        *(v28 + 32) = v24;
        *(v28 + 40) = v23;
        v19 = with._rawValue + 40;
      }

      while (v18 != v8);
    }

    else
    {
      v20 = MEMORY[0x277D84F90];
    }

LABEL_25:

    v29 = __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
    v30 = swift_allocObject();
    swift_weakInit();
    v31 = swift_allocObject();
    v31[2]._rawValue = v30;
    v31[3]._rawValue = with._rawValue;
    v32 = *(*v29 + 16);
    v33 = *(v32 + 16);
    if (v33)
    {
      v34 = v32 + 32;

      do
      {
        sub_25BE5D428(v34, v37);
        v35 = v38;
        v36 = v39;
        __swift_project_boxed_opaque_existential_1(v37, v38);
        (*(v36 + 16))(v20, sub_25BE77644, v31, v35, v36);
        __swift_destroy_boxed_opaque_existential_0Tm(v37);
        v34 += 40;
        --v33;
      }

      while (v33);
    }

    else
    {
    }
  }
}

uint64_t sub_25BE6E18C(char a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_25BEB4F04();
    EngagementUIPlacement.rawValue.getter();
    sub_25BEB48C4();

    v4 = sub_25BEB4F24();
    v5 = -1 << *(a2 + 32);
    v6 = v4 & ~v5;
    if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v7 = ~v5;
      while (1)
      {
        v8 = 0xED00007465656853;
        v9 = 0x6C6576654C707061;
        switch(*(*(a2 + 48) + v6))
        {
          case 1:
            v8 = 0xED00007473616F54;
            v9 = 0x6C6576654C707061;
            break;
          case 2:
            v9 = 0x73756C507377656ELL;
            v8 = 0xEF6D657449626154;
            break;
          case 3:
            v9 = 0xD000000000000010;
            v8 = 0x800000025BEB9A70;
            break;
          case 4:
            v9 = 0x6261546F69647561;
            v8 = 0xEC0000006D657449;
            break;
          case 5:
            v9 = 0xD000000000000010;
            v8 = 0x800000025BEB9A90;
            break;
          case 6:
            v10 = 0x686372616573;
            goto LABEL_26;
          case 7:
            v10 = 0x7374726F7073;
LABEL_26:
            v9 = v10 & 0xFFFFFFFFFFFFLL | 0x6154000000000000;
            v8 = 0xED00006D65744962;
            break;
          case 8:
            v9 = 0x5473656C7A7A7570;
            v8 = 0xEE006D6574496261;
            break;
          case 9:
            v9 = 0x6C6F46664F706F74;
            v8 = 0xEE00676E69776F6CLL;
            break;
          case 0xA:
            v9 = 0xD000000000000012;
            v8 = 0x800000025BEB9AE0;
            break;
          case 0xB:
            v9 = 0xD00000000000001ALL;
            v8 = 0x800000025BEB9B00;
            break;
          case 0xC:
            v9 = 0xD00000000000001BLL;
            v8 = 0x800000025BEB9B20;
            break;
          case 0xD:
            v9 = 0x766153664F706F74;
            v8 = 0xEA00000000006465;
            break;
          case 0xE:
            v9 = 0xD000000000000011;
            v8 = 0x800000025BEB9B50;
            break;
          case 0xF:
            v9 = 0xD000000000000010;
            v8 = 0x800000025BEB9B70;
            break;
          case 0x10:
            v9 = 0xD000000000000010;
            v8 = 0x800000025BEB9B90;
            break;
          case 0x11:
            v9 = 0xD000000000000010;
            v8 = 0x800000025BEB9BB0;
            break;
          case 0x12:
            v9 = 0xD000000000000017;
            v8 = 0x800000025BEB9BD0;
            break;
          case 0x13:
            v9 = 0xD000000000000017;
            v8 = 0x800000025BEB9BF0;
            break;
          case 0x14:
            v9 = 0xD00000000000001CLL;
            v8 = 0x800000025BEB9C10;
            break;
          case 0x15:
            v9 = 0xD000000000000020;
            v8 = 0x800000025BEB9C30;
            break;
          case 0x16:
            v9 = 0xD000000000000019;
            v8 = 0x800000025BEB9C60;
            break;
          case 0x17:
            v9 = 0xD000000000000022;
            v8 = 0x800000025BEB9C80;
            break;
          case 0x18:
            v9 = 0xD000000000000017;
            v8 = 0x800000025BEB9CB0;
            break;
          case 0x19:
            v9 = 0xD00000000000001CLL;
            v8 = 0x800000025BEB9CD0;
            break;
          case 0x1A:
            v9 = 0xD000000000000020;
            v8 = 0x800000025BEB9CF0;
            break;
          case 0x1B:
            v9 = 0xD00000000000001BLL;
            v8 = 0x800000025BEB9D20;
            break;
          case 0x1C:
            v9 = 0xD000000000000024;
            v8 = 0x800000025BEB9D40;
            break;
          case 0x1D:
            v9 = 0xD00000000000001ALL;
            v8 = 0x800000025BEB9D70;
            break;
          case 0x1E:
            v9 = 0xD00000000000001FLL;
            v8 = 0x800000025BEB9D90;
            break;
          case 0x1F:
            v9 = 0xD000000000000023;
            v8 = 0x800000025BEB9DB0;
            break;
          default:
            break;
        }

        v11 = 0x6C6576654C707061;
        v12 = 0xED00007465656853;
        switch(a1)
        {
          case 1:
            v12 = 0xED00007473616F54;
            if (v9 == 0x6C6576654C707061)
            {
              goto LABEL_98;
            }

            goto LABEL_99;
          case 2:
            v12 = 0xEF6D657449626154;
            if (v9 != 0x73756C507377656ELL)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 3:
            v12 = 0x800000025BEB9A70;
            if (v9 != 0xD000000000000010)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 4:
            v12 = 0xEC0000006D657449;
            if (v9 != 0x6261546F69647561)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 5:
            v12 = 0x800000025BEB9A90;
            if (v9 != 0xD000000000000010)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 6:
            v15 = 0x686372616573;
            goto LABEL_77;
          case 7:
            v15 = 0x7374726F7073;
LABEL_77:
            v12 = 0xED00006D65744962;
            if (v9 != (v15 & 0xFFFFFFFFFFFFLL | 0x6154000000000000))
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 8:
            v13 = 0x5473656C7A7A7570;
            v14 = 0x6D6574496261;
            goto LABEL_84;
          case 9:
            v13 = 0x6C6F46664F706F74;
            v14 = 0x676E69776F6CLL;
LABEL_84:
            v12 = v14 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
            if (v9 != v13)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 10:
            v12 = 0x800000025BEB9AE0;
            if (v9 != 0xD000000000000012)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 11:
            v12 = 0x800000025BEB9B00;
            if (v9 != 0xD00000000000001ALL)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 12:
            v12 = 0x800000025BEB9B20;
            if (v9 != 0xD00000000000001BLL)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 13:
            v12 = 0xEA00000000006465;
            if (v9 != 0x766153664F706F74)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 14:
            v12 = 0x800000025BEB9B50;
            if (v9 != 0xD000000000000011)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 15:
            v12 = 0x800000025BEB9B70;
            if (v9 != 0xD000000000000010)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 16:
            v12 = 0x800000025BEB9B90;
            if (v9 != 0xD000000000000010)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 17:
            v12 = 0x800000025BEB9BB0;
            if (v9 != 0xD000000000000010)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 18:
            v12 = 0x800000025BEB9BD0;
            if (v9 != 0xD000000000000017)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 19:
            v12 = 0x800000025BEB9BF0;
            if (v9 != 0xD000000000000017)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 20:
            v12 = 0x800000025BEB9C10;
            if (v9 != 0xD00000000000001CLL)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 21:
            v12 = 0x800000025BEB9C30;
            if (v9 != 0xD000000000000020)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 22:
            v12 = 0x800000025BEB9C60;
            if (v9 != 0xD000000000000019)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 23:
            v12 = 0x800000025BEB9C80;
            if (v9 != 0xD000000000000022)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 24:
            v12 = 0x800000025BEB9CB0;
            if (v9 != 0xD000000000000017)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 25:
            v12 = 0x800000025BEB9CD0;
            if (v9 != 0xD00000000000001CLL)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 26:
            v12 = 0x800000025BEB9CF0;
            if (v9 != 0xD000000000000020)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 27:
            v12 = 0x800000025BEB9D20;
            if (v9 != 0xD00000000000001BLL)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 28:
            v12 = 0x800000025BEB9D40;
            if (v9 != 0xD000000000000024)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 29:
            v11 = 0xD00000000000001ALL;
            v12 = 0x800000025BEB9D70;
            goto LABEL_97;
          case 30:
            v12 = 0x800000025BEB9D90;
            if (v9 != 0xD00000000000001FLL)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 31:
            v12 = 0x800000025BEB9DB0;
            if (v9 != 0xD000000000000023)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          default:
LABEL_97:
            if (v9 != v11)
            {
              goto LABEL_99;
            }

LABEL_98:
            if (v8 == v12)
            {

              v16 = 1;
              return v16 & 1;
            }

LABEL_99:
            v16 = sub_25BEB4E64();

            if (v16)
            {
              return v16 & 1;
            }

            v6 = (v6 + 1) & v7;
            if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
            {
              return v16 & 1;
            }

            break;
        }
      }
    }
  }

  v16 = 0;
  return v16 & 1;
}