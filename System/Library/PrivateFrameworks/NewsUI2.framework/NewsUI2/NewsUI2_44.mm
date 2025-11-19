uint64_t sub_218BB3B6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_218BB4780(&qword_27CC0EAC0);

  return MEMORY[0x2821D2598](a1, a2, v4);
}

uint64_t sub_218BB3BD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagazineGridItemModel();
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  sub_218BB4828();
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v11 + 56);
  sub_218BB47C4(a1, v13);
  sub_218BB47C4(a2, &v13[v14]);
  sub_2189F5020(v13, v9);
  sub_2189F5020(&v13[v14], v7);
  LOBYTE(a2) = sub_218EFB304(v9, v7);
  sub_21897C080(v7);
  sub_21897C080(v9);
  return a2 & 1;
}

uint64_t sub_218BB3D6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x28223BE20](a1 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BB47C4(v2, v5);
  sub_21897C080(v5);
  v6 = sub_219BEAF84();
  return (*(*(v6 - 8) + 56))(a2, 1, 1, v6);
}

uint64_t sub_218BB3E28(uint64_t a1)
{
  MEMORY[0x28223BE20](a1 - 8);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BB47C4(v1, v3);
  sub_21897C080(v3);
  return 1;
}

uint64_t sub_218BB3ED0@<X0>(unsigned int *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for MagazineGridItemModel();
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MagazineCatalogModel();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BB47C4(v3, v12);
  sub_2189F5020(v12, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v14 = *v9;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {

      sub_2189E93F4();
      v16 = &v9[*(v23 + 48)];
      v24 = *&v9[*(v23 + 64) + 32];

      v25 = *a1;
      v26 = a2(0);
      (*(*(v26 - 8) + 104))(a3, v25, v26);
      v22 = sub_219BF0444();
      return (*(*(v22 - 8) + 8))(v16, v22);
    }

    sub_2189E9530(*(v9 + 4), *(v9 + 5), *(v9 + 6));
    sub_2189E9570(0);
    v16 = &v9[*(v15 + 64)];
    v17 = *(v15 + 80);
  }

  else
  {

    sub_2189E96A0();
    v16 = &v9[*(v18 + 48)];
    v17 = *(v18 + 64);
  }

  v19 = *&v9[v17 + 32];

  v20 = *a1;
  v21 = a2(0);
  (*(*(v21 - 8) + 104))(a3, v20, v21);
  v22 = sub_219BF0744();
  return (*(*(v22 - 8) + 8))(v16, v22);
}

uint64_t sub_218BB4180()
{
  v1 = type metadata accessor for MagazineGridItemModel();
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BB47C4(v0, v6);
  sub_2189F5020(v6, v4);
  v7 = sub_218EF6CE0();
  sub_21897C080(v4);
  return v7;
}

uint64_t sub_218BB4290@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MagazineGridItemModel();
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BB47C4(v1, v8);
  sub_2189F5020(v8, v6);
  sub_218EF8CE0(v6, a1);
  sub_21897C080(v6);
  v9 = *MEMORY[0x277D32CF8];
  v10 = sub_219BF0614();
  return (*(*(v10 - 8) + 104))(a1, v9, v10);
}

uint64_t sub_218BB43CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = type metadata accessor for MagazineGridItemModel();
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BB47C4(v3, v10);
  v11 = sub_2189F5020(v10, v8);
  v12 = a3(v11);
  sub_21897C080(v8);
  return v12;
}

uint64_t sub_218BB44B8()
{
  v1 = type metadata accessor for MagazineGridItemModel();
  MEMORY[0x28223BE20](v1);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MagazineCatalogModel();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BB47C4(v0, v6);
  sub_2189F5020(v6, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *v3;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {

      sub_2189E93F4();
      v10 = &v3[*(v15 + 48)];
      v16 = *&v3[*(v15 + 64) + 32];

      v14 = sub_219BF0444();
      goto LABEL_7;
    }

    sub_2189E9530(*(v3 + 4), *(v3 + 5), *(v3 + 6));
    sub_2189E9570(0);
    v10 = &v3[*(v9 + 64)];
    v11 = *(v9 + 80);
  }

  else
  {

    sub_2189E96A0();
    v10 = &v3[*(v12 + 48)];
    v11 = *(v12 + 64);
  }

  v13 = *&v3[v11 + 32];

  v14 = sub_219BF0744();
LABEL_7:
  (*(*(v14 - 8) + 8))(v10, v14);
  return 1;
}

uint64_t sub_218BB4780(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MagazineCatalogModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_218BB47C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagazineCatalogModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_218BB4828()
{
  if (!qword_27CC0EAD0)
  {
    type metadata accessor for MagazineCatalogModel();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC0EAD0);
    }
  }
}

uint64_t sub_218BB488C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagazineGridItemModel();
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  sub_218BB4828();
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v11 + 56);
  sub_218BB47C4(a1, v13);
  sub_218BB47C4(a2, &v13[v14]);
  sub_2189F5020(v13, v9);
  sub_2189F5020(&v13[v14], v7);
  sub_218EF7D18();
  sub_219BF54D4();

  v15 = sub_219BF5494();
  v17 = v16;

  sub_218EF7D18();
  sub_219BF54D4();

  v18 = sub_219BF5494();
  v20 = v19;

  if (v15 == v18 && v17 == v20)
  {
    v22 = 0;
  }

  else
  {
    v22 = sub_219BF78F4();
  }

  sub_21897C080(v7);
  sub_21897C080(v9);
  return v22 & 1;
}

void sub_218BB4A78()
{
  v0 = sub_219BED224();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2186C6148(0, &qword_280E8E3B0);
  *v3 = sub_219BF66A4();
  (*(v1 + 104))(v3, *MEMORY[0x277D85200], v0);
  v4 = sub_219BED254();
  (*(v1 + 8))(v3, v0);
  if (v4)
  {
    sub_21874B7FC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_218BB4BA4()
{
  sub_218BB52B0();
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC7NewsUI227MagazinesBadgingCoordinator_store + 24);
  v7 = *(v0 + OBJC_IVAR____TtC7NewsUI227MagazinesBadgingCoordinator_store + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI227MagazinesBadgingCoordinator_store), v6);
  (*(v7 + 16))(v6, v7);
  sub_219BE1A44();

  sub_219BE2184();

  v8 = (*(v3 + 88))(v5, v2);
  if (v8 == *MEMORY[0x277D6C9F0])
  {
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    if (v8 == *MEMORY[0x277D6C9E8])
    {
      (*(v3 + 96))(v5, v2);
      return *v5;
    }

    if (v8 != *MEMORY[0x277D6C9E0])
    {
      result = sub_219BF7514();
      __break(1u);
      return result;
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_218BB4E48()
{
  v1 = [*(v0 + OBJC_IVAR____TtC7NewsUI227MagazinesBadgingCoordinator_bundleSubscriptionManager) cachedSubscription];
  if (objc_getAssociatedObject(v1, v1 + 1))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12 = v10;
  v13 = v11;
  if (!*(&v11 + 1))
  {
    sub_218806FD0(&v12);
    goto LABEL_9;
  }

  sub_2186C6148(0, &qword_280E8DA20);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v2 = 0;
    v4 = 0;
    goto LABEL_10;
  }

  v2 = v9;
  v3 = [v9 integerValue];
  if (v3 == -1)
  {

    goto LABEL_21;
  }

  v4 = v3;
LABEL_10:
  if (objc_getAssociatedObject(v1, ~v4))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12 = v10;
  v13 = v11;
  if (!*(&v11 + 1))
  {
    sub_218806FD0(&v12);
LABEL_18:

    if ((v4 & 1) == 0)
    {
      return 0;
    }

LABEL_21:
    v7 = *(sub_218BB4BA4() + 16);

    return v7;
  }

  sub_2186C6148(0, &qword_280E8DA20);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v5 = v9;
  v6 = [v5 integerValue];

  if ((v6 ^ v4))
  {
    goto LABEL_21;
  }

  return 0;
}

void sub_218BB503C()
{
  v1 = v0;
  v2 = sub_218BB4BA4();
  v3 = 0;
  v4 = v2 + 56;
  v5 = 1 << *(v2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v2 + 56);
  v8 = OBJC_IVAR____TtC7NewsUI227MagazinesBadgingCoordinator_issueReadingHistory;
  v9 = (v5 + 63) >> 6;
  if (v7)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      goto LABEL_21;
    }

    if (v10 >= v9)
    {
      break;
    }

    v7 = *(v4 + 8 * v10);
    ++v3;
    if (v7)
    {
      v3 = v10;
      do
      {
LABEL_9:
        v7 &= v7 - 1;
        v11 = *(v0 + v8);

        v12 = sub_219BF53D4();

        [v11 markIssueAsBadgedWithID_];
      }

      while (v7);
      continue;
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_14;
  }

  v14 = Strong;
  v15 = [Strong tabBarItem];

  if (!v15)
  {
LABEL_21:
    __break(1u);
    return;
  }

  [v15 setBadgeValue_];

LABEL_14:
  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    v17 = v16;
    v18 = [v16 _uip_tabElement];

    if (v18)
    {
      [v18 _setBadgeValue_];
    }
  }

  v19 = *(v1 + OBJC_IVAR____TtC7NewsUI227MagazinesBadgingCoordinator_store + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7NewsUI227MagazinesBadgingCoordinator_store), *(v1 + OBJC_IVAR____TtC7NewsUI227MagazinesBadgingCoordinator_store + 24));
  sub_2194B2E44(&unk_282A22A10);
  (*(v19 + 32))();

  sub_21874B7FC();
}

uint64_t sub_218BB5260(uint64_t a1, uint64_t a2)
{
  *(*v2 + OBJC_IVAR____TtC7NewsUI227MagazinesBadgingCoordinator_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_218BB52B0()
{
  if (!qword_280EE7ED0)
  {
    sub_2186E2394();
    v0 = sub_219BE1A34();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE7ED0);
    }
  }
}

uint64_t sub_218BB5310()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC7NewsUI227MagazinesBadgingCoordinator_store);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 24))(v2, v3);
}

uint64_t sub_218BB5378()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_218BB5474(uint64_t a1)
{
  sub_218718690(*v1 + 16, &v11);
  v3 = *(a1 + 48);
  v9[2] = *(a1 + 32);
  v9[3] = v3;
  v10 = *(a1 + 64);
  v4 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v4;
  sub_218BB595C(v9, v8);
  sub_218BB5768();
  swift_allocObject();
  sub_218BB59B8(a1, v7);
  sub_218BB5A14();
  v5 = sub_219BE6E64();
  sub_218BB5A68(v9);
  return v5;
}

uint64_t sub_218BB5528(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsManagementMoveBlueprintModifier();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  sub_2189525B0();
  (*(*(v10 - 8) + 16))(v9, a1, v10);
  v11 = *(v4 + 20);
  v12 = sub_219BDC104();
  (*(*(v12 - 8) + 16))(&v9[v11], a2, v12);
  sub_218BB5854(v9, v7);
  sub_218BB5768();
  swift_allocObject();
  sub_218BB58B8(&qword_27CC0EB10, type metadata accessor for SportsManagementMoveBlueprintModifier);
  v13 = sub_219BE6E64();
  sub_218BB5900(v9);
  return v13;
}

uint64_t sub_218BB56C4(unint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 72);
  v5 = *(v3 + 80);
  swift_unknownObjectRetain();

  sub_218BA19F4(v4, v5, a1);

  sub_218BB5768();
  swift_allocObject();
  sub_218BA1F90();
  return sub_219BE6E64();
}

void sub_218BB5768()
{
  if (!qword_27CC0EB08)
  {
    type metadata accessor for SportsManagementSectionDescriptor();
    type metadata accessor for SportsManagementModel();
    sub_218BB58B8(&qword_27CC0F9E0, type metadata accessor for SportsManagementSectionDescriptor);
    sub_218BB58B8(&qword_27CC0AF90, type metadata accessor for SportsManagementModel);
    v0 = sub_219BE6E74();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0EB08);
    }
  }
}

uint64_t sub_218BB5854(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsManagementMoveBlueprintModifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218BB58B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218BB5900(uint64_t a1)
{
  v2 = type metadata accessor for SportsManagementMoveBlueprintModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_218BB5A14()
{
  result = qword_27CC0EB18;
  if (!qword_27CC0EB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0EB18);
  }

  return result;
}

uint64_t sub_218BB5ABC(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_219BDB734();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  sub_219BDBE34();
  v2[11] = swift_task_alloc();
  sub_219BF53C4();
  v2[12] = swift_task_alloc();
  sub_219BDB744();
  v2[13] = swift_task_alloc();
  v4 = sub_219BF09E4();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218BB5C68, 0, 0);
}

uint64_t sub_218BB5C68()
{
  v1 = sub_218845E04();
  v2 = v1;
  if (v1 >> 62)
  {
    v3 = sub_219BF7214();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_13:

    v13 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_13;
  }

LABEL_3:
  v26 = MEMORY[0x277D84F90];
  v4 = sub_21870B65C(0, v3 & ~(v3 >> 63), 0);
  if (v3 < 0)
  {
    __break(1u);
    return MEMORY[0x2822007B8](v4, v5, v6, v7, v8, v9, v10, v11);
  }

  v25 = v0;
  v12 = 0;
  v13 = v26;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x21CECE0F0](v12, v2);
    }

    else
    {
      v14 = *(v2 + 8 * v12 + 32);
    }

    v15 = [*(v14 + 16) identifier];
    v16 = sub_219BF5414();
    v18 = v17;

    v20 = *(v26 + 16);
    v19 = *(v26 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_21870B65C((v19 > 1), v20 + 1, 1);
    }

    ++v12;
    *(v26 + 16) = v20 + 1;
    v21 = v26 + 16 * v20;
    *(v21 + 32) = v16;
    *(v21 + 40) = v18;
  }

  while (v3 != v12);

  v0 = v25;
LABEL_14:
  v0[18] = v13;
  v22 = swift_task_alloc();
  v0[19] = v22;
  sub_218BB6FAC(0, &qword_27CC0CC58, type metadata accessor for HeadlineModel, MEMORY[0x277D83940]);
  v11 = v23;
  *v22 = v0;
  v22[1] = sub_218BB5EE0;
  v10 = v0[7];
  v9 = sub_218BB6D98;
  v7 = 0x6369747241746567;
  v8 = 0xED0000292873656CLL;
  v4 = (v0 + 4);
  v5 = 0;
  v6 = 0;

  return MEMORY[0x2822007B8](v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_218BB5EE0()
{

  return MEMORY[0x2822009F8](sub_218BB5FDC, 0, 0);
}

uint64_t sub_218BB5FDC()
{
  v1 = v0[4];
  if (v1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v3 = 0;
    v33 = v1 & 0xFFFFFFFFFFFFFF8;
    v35 = v1 & 0xC000000000000001;
    v29 = v0[15];
    v30 = (v29 + 32);
    v36 = MEMORY[0x277D84F90];
    v31 = i;
    v32 = v1;
    while (v35)
    {
      v4 = MEMORY[0x21CECE0F0](v3, v1);
      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_20;
      }

LABEL_9:
      v6 = [*(v4 + 16) sourceChannel];
      if (v6)
      {
        v7 = v0[18];
        v8 = [v6 identifier];
        v9 = sub_219BF5414();
        v11 = v10;

        v0[2] = v9;
        v0[3] = v11;
        v12 = swift_task_alloc();
        *(v12 + 16) = v0 + 2;
        LOBYTE(v7) = sub_2186D128C(sub_2186D1338, v12, v7);

        if (v7)
        {

          swift_unknownObjectRelease();
          v1 = v32;
        }

        else
        {
          v14 = v0[16];
          v13 = v0[17];
          v15 = v0[14];
          swift_unknownObjectRetain();
          sub_219BF09D4();

          swift_unknownObjectRelease();
          v16 = *v30;
          (*v30)(v13, v14, v15);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v36 = sub_2191F7EC4(0, *(v36 + 2) + 1, 1, v36);
          }

          v18 = *(v36 + 2);
          v17 = *(v36 + 3);
          v1 = v32;
          if (v18 >= v17 >> 1)
          {
            v36 = sub_2191F7EC4(v17 > 1, v18 + 1, 1, v36);
          }

          v19 = v0[17];
          v20 = v0[14];
          *(v36 + 2) = v18 + 1;
          v16(&v36[((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v18], v19, v20);
        }

        i = v31;
      }

      else
      {
      }

      ++v3;
      if (v5 == i)
      {
        goto LABEL_24;
      }
    }

    if (v3 >= *(v33 + 16))
    {
      goto LABEL_21;
    }

    v4 = *(v1 + 8 * v3 + 32);

    v5 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_9;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  v36 = MEMORY[0x277D84F90];
LABEL_24:
  v21 = v0[10];
  v22 = v0[9];
  v34 = v0[8];
  v23 = v0[7];

  v0[5] = v36;
  sub_218BB6FAC(0, &qword_27CC0EB20, MEMORY[0x277D32FA8], MEMORY[0x277D83940]);
  sub_218BB6DA0();
  v24 = sub_219BF56E4();

  v25 = sub_218BB64F4(v23, v24);

  sub_219BF53B4();
  sub_219BDBDF4();
  (*(v22 + 104))(v21, *MEMORY[0x277CC9110], v34);
  sub_219BDB754();
  if (*(v25 + 2) >= 0xBuLL)
  {
    v26 = *(v0[15] + 80);
    sub_218B66A70(v25, &v25[(v26 + 32) & ~v26], 0, 0x15uLL);
  }

  sub_218BB6E28();
  sub_219BDAE04();

  v27 = v0[1];

  return v27();
}

uint64_t sub_218BB64B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_219BF09C4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

char *sub_218BB64F4(uint64_t a1, uint64_t a2)
{
  v49 = sub_219BF09E4();
  v46 = *(v49 - 8);
  v3 = MEMORY[0x28223BE20](v49);
  v47 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v48 = &v41 - v5;
  sub_218E93D80();
  v7 = v6;
  if (v6 >> 62)
  {
    v8 = sub_219BF7214();
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_13:

    v11 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_3:
  v50 = MEMORY[0x277D84F90];
  result = sub_21870B65C(0, v8 & ~(v8 >> 63), 0);
  if (v8 < 0)
  {
    __break(1u);
    return result;
  }

  v10 = 0;
  v11 = v50;
  do
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x21CECE0F0](v10, v7);
    }

    else
    {
      v12 = *(v7 + 8 * v10 + 32);
    }

    v13 = [*(v12 + 16) identifier];
    v14 = sub_219BF5414();
    v16 = v15;

    v50 = v11;
    v18 = *(v11 + 16);
    v17 = *(v11 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_21870B65C((v17 > 1), v18 + 1, 1);
      v11 = v50;
    }

    ++v10;
    *(v11 + 16) = v18 + 1;
    v19 = v11 + 16 * v18;
    *(v19 + 32) = v14;
    *(v19 + 40) = v16;
  }

  while (v8 != v10);

LABEL_14:
  v20 = sub_218845F78(v11);

  v45 = *(a2 + 16);
  if (v45)
  {
    v21 = 0;
    v22 = *(v46 + 16);
    v42 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    v43 = a2 + v42;
    v44 = v22;
    v23 = *(v46 + 72);
    v24 = v20 + 56;
    v41 = (v46 + 8);
    v46 += 16;
    v25 = (v46 + 16);
    v26 = MEMORY[0x277D84F90];
    v22(v48, v43, v49);
    while (1)
    {
      v27 = sub_219BF09C4();
      v29 = v28;
      if (*(v20 + 16) && (v30 = v27, sub_219BF7AA4(), sub_219BF5524(), v31 = sub_219BF7AE4(), v32 = -1 << *(v20 + 32), v33 = v31 & ~v32, ((*(v24 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) != 0))
      {
        v34 = ~v32;
        while (1)
        {
          v35 = (*(v20 + 48) + 16 * v33);
          v36 = *v35 == v30 && v35[1] == v29;
          if (v36 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v33 = (v33 + 1) & v34;
          if (((*(v24 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        (*v41)(v48, v49);
      }

      else
      {
LABEL_28:

        v37 = *v25;
        (*v25)(v47, v48, v49);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v51 = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_218C34F70(0, *(v26 + 16) + 1, 1);
          v26 = v51;
        }

        v40 = *(v26 + 16);
        v39 = *(v26 + 24);
        if (v40 >= v39 >> 1)
        {
          sub_218C34F70(v39 > 1, v40 + 1, 1);
          v26 = v51;
        }

        *(v26 + 16) = v40 + 1;
        v37((v26 + v42 + v40 * v23), v47, v49);
      }

      if (++v21 == v45)
      {
        break;
      }

      v44(v48, v43 + v23 * v21, v49);
    }
  }

  else
  {
    v26 = MEMORY[0x277D84F90];
  }

  return v26;
}

uint64_t sub_218BB6934(uint64_t a1, uint64_t a2)
{
  sub_218BB6E80();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((a2 + 16), *(a2 + 40));
  (*(v6 + 16))(v8, a1, v5);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, v8, v5);
  sub_2193EC1BC(0, sub_218BB6F18, v10);
}

uint64_t sub_218BB6A80(void *a1, uint64_t a2)
{
  if ((a2 & 0x100) != 0)
  {
    if (qword_27CC08648 != -1)
    {
      swift_once();
    }

    v4 = sub_219BE5434();
    __swift_project_value_buffer(v4, qword_27CCD8BE8);
    v5 = a1;
    v6 = sub_219BE5414();
    v7 = sub_219BF61F4();
    sub_218BB6FA0(a1, a2, 1);
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_13;
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = a1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2186C1000, v6, v7, "RecentlyReadFactory could not fetch history. Error: %@", v8, 0xCu);
    sub_218962D30(v9);
    MEMORY[0x21CECF960](v9, -1, -1);
    v12 = v8;
    goto LABEL_12;
  }

  if (a2 > 1u)
  {
    if (qword_27CC08648 != -1)
    {
      swift_once();
    }

    v13 = sub_219BE5434();
    __swift_project_value_buffer(v13, qword_27CCD8BE8);
    v6 = sub_219BE5414();
    v14 = sub_219BF61F4();
    if (!os_log_type_enabled(v6, v14))
    {
      goto LABEL_13;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2186C1000, v6, v14, "RecentlyReadFactory could not fetch history. No Batch.", v15, 2u);
    v12 = v15;
LABEL_12:
    MEMORY[0x21CECF960](v12, -1, -1);
LABEL_13:

    sub_218BB6E80();
    return sub_219BF5B64();
  }

  sub_218BB6E80();

  return sub_219BF5B64();
}

uint64_t sub_218BB6CFC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2187608D4;

  return sub_218BB5ABC(a1);
}

unint64_t sub_218BB6DA0()
{
  result = qword_27CC0EB28;
  if (!qword_27CC0EB28)
  {
    sub_218BB6FAC(255, &qword_27CC0EB20, MEMORY[0x277D32FA8], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0EB28);
  }

  return result;
}

unint64_t sub_218BB6E28()
{
  result = qword_27CC0EB30;
  if (!qword_27CC0EB30)
  {
    sub_219BF09E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0EB30);
  }

  return result;
}

void sub_218BB6E80()
{
  if (!qword_27CC0EB38)
  {
    sub_218BB6FAC(255, &qword_27CC0CC58, type metadata accessor for HeadlineModel, MEMORY[0x277D83940]);
    v0 = sub_219BF5B74();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0EB38);
    }
  }
}

uint64_t sub_218BB6F18(void *a1, __int16 a2)
{
  sub_218BB6E80();

  return sub_218BB6A80(a1, a2 & 0x1FF);
}

void sub_218BB6FA0(id a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_218BB6FAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218BB7010()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_218BB70E8(uint64_t a1)
{
  v3 = type metadata accessor for MagazineFeedExpandBlueprintModifier();
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  sub_218BB7CEC(a1, &v12 - v7, type metadata accessor for MagazineFeedExpandResult);
  sub_218718690(v9 + 16, &v8[*(v3 + 20)]);
  sub_218BB7CEC(v8, v6, type metadata accessor for MagazineFeedExpandBlueprintModifier);
  sub_218BB78F0();
  swift_allocObject();
  sub_2186EBF60(&unk_280E9D578, type metadata accessor for MagazineFeedExpandBlueprintModifier);
  v10 = sub_219BE6E64();
  sub_218BB7D54(v8, type metadata accessor for MagazineFeedExpandBlueprintModifier);
  return v10;
}

uint64_t sub_218BB725C(uint64_t a1)
{
  sub_218718690(*v1 + 16, &v7);
  v6 = a1;
  sub_218BB7BE8(&v6, &v5);
  sub_218BB78F0();
  swift_allocObject();
  sub_218BB7C44();

  v3 = sub_219BE6E64();
  sub_218BB7C98(&v6);
  return v3;
}

uint64_t sub_218BB72FC(uint64_t a1)
{
  refreshed = type metadata accessor for MagazineFeedRefreshBlueprintModifier();
  v4 = MEMORY[0x28223BE20](refreshed);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  sub_218BB7CEC(a1, &v12 - v7, type metadata accessor for MagazineFeedExpandResult);
  sub_218718690(v9 + 16, &v8[*(refreshed + 20)]);
  sub_218BB7CEC(v8, v6, type metadata accessor for MagazineFeedRefreshBlueprintModifier);
  sub_218BB78F0();
  swift_allocObject();
  sub_2186EBF60(&qword_280E9B3B8, type metadata accessor for MagazineFeedRefreshBlueprintModifier);
  v10 = sub_219BE6E64();
  sub_218BB7D54(v8, type metadata accessor for MagazineFeedRefreshBlueprintModifier);
  return v10;
}

uint64_t sub_218BB7470()
{
  sub_218BB78F0();
  swift_allocObject();
  sub_218BB7B94();

  return sub_219BE6E64();
}

uint64_t sub_218BB74E0()
{

  sub_218845F78(v0);

  sub_218BB78F0();
  swift_allocObject();
  sub_218BB7B40();
  return sub_219BE6E64();
}

uint64_t sub_218BB756C()
{
  sub_218BB78F0();
  swift_allocObject();
  sub_218BB7AEC();

  return sub_219BE6E64();
}

uint64_t sub_218BB75EC(uint64_t a1)
{
  v2 = type metadata accessor for MagazineFeedFailedBlueprintModifier();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  sub_218BB7CEC(a1, &v10 - v6, type metadata accessor for MagazineFeedFailedData);
  sub_218BB7CEC(v7, v5, type metadata accessor for MagazineFeedFailedBlueprintModifier);
  sub_218BB78F0();
  swift_allocObject();
  sub_2186EBF60(&qword_27CC0EB40, type metadata accessor for MagazineFeedFailedBlueprintModifier);
  v8 = sub_219BE6E64();
  sub_218BB7D54(v7, type metadata accessor for MagazineFeedFailedBlueprintModifier);
  return v8;
}

uint64_t sub_218BB7748(unint64_t a1, void *a2, char a3)
{
  sub_218BB78F0();
  swift_allocObject();

  sub_2189F5084(a1);
  sub_218B88068(a2, a3);
  sub_218BB7A98();
  return sub_219BE6E64();
}

uint64_t sub_218BB77EC(uint64_t a1, unsigned __int8 a2)
{
  sub_218718690(*v2 + 16, &v10);
  v8 = a1;
  v9 = a2;
  sub_218BB7894(&v8, &v7);
  sub_218BB78F0();
  swift_allocObject();
  sub_218BB79DC(a1, a2);
  sub_218BB79F0();
  v5 = sub_219BE6E64();
  sub_218BB7A44(&v8);
  return v5;
}

void sub_218BB78F0()
{
  if (!qword_280EE5610)
  {
    type metadata accessor for MagazineFeedSectionDescriptor();
    type metadata accessor for MagazineFeedModel(255);
    sub_2186EBF60(&qword_280EB0350, type metadata accessor for MagazineFeedSectionDescriptor);
    sub_2186EBF60(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel);
    v0 = sub_219BE6E74();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE5610);
    }
  }
}

uint64_t sub_218BB79DC(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
  }

  return result;
}

unint64_t sub_218BB79F0()
{
  result = qword_280E9D2D8;
  if (!qword_280E9D2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9D2D8);
  }

  return result;
}

unint64_t sub_218BB7A98()
{
  result = qword_280EA6020;
  if (!qword_280EA6020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA6020);
  }

  return result;
}

unint64_t sub_218BB7AEC()
{
  result = qword_27CC0EB48;
  if (!qword_27CC0EB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0EB48);
  }

  return result;
}

unint64_t sub_218BB7B40()
{
  result = qword_280E961E8[0];
  if (!qword_280E961E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E961E8);
  }

  return result;
}

unint64_t sub_218BB7B94()
{
  result = qword_280E99588[0];
  if (!qword_280E99588[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E99588);
  }

  return result;
}

unint64_t sub_218BB7C44()
{
  result = qword_280E9B3C8;
  if (!qword_280E9B3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9B3C8);
  }

  return result;
}

uint64_t sub_218BB7CEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218BB7D54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218BB7DB4()
{
  v28 = type metadata accessor for MagazineFeedModel(0);
  MEMORY[0x28223BE20](v28);
  v1 = (&v24 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218953870();
  v3 = v2;
  v27 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BB87C8();
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BB8698();
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v24 - v16;
  sub_218951DB0();
  sub_219BE6974();
  v30 = MEMORY[0x277D84F90];
  v25 = v17;
  v26 = v12;
  (*(v12 + 16))(v15, v17, v11);
  sub_218BB885C(&qword_280EE7500, sub_218BB8698);
  sub_219BF56A4();
  v18 = *(v7 + 44);
  sub_218BB885C(&qword_280EE74F8, sub_218BB8698);
  sub_219BF5E84();
  v19 = MEMORY[0x277D84F90];
  if (*&v9[v18] != v29[0])
  {
    v20 = (v27 + 16);
    v21 = (v27 + 8);
    do
    {
      v27 = v19;
      while (1)
      {
        v22 = sub_219BF5EC4();
        (*v20)(v5);
        v22(v29, 0);
        sub_219BF5E94();
        sub_219BE5FC4();
        (*v21)(v5, v3);
        if (swift_getEnumCaseMultiPayload() == 6)
        {
          break;
        }

        sub_218BB88A4(v1, type metadata accessor for MagazineFeedModel);
        sub_219BF5E84();
        if (*&v9[v18] == v29[0])
        {
          v19 = v27;
          goto LABEL_10;
        }
      }

      v27 = *v1;
      MEMORY[0x21CECC690]();
      if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v24 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_219BF5A14();
      }

      sub_219BF5A54();
      v27 = v30;
      sub_219BF5E84();
      v19 = v27;
    }

    while (*&v9[v18] != v29[0]);
  }

LABEL_10:
  sub_218BB88A4(v9, sub_218BB87C8);
  (*(v26 + 8))(v25, v11);
  return v19;
}

uint64_t sub_218BB8230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1;
  v33 = a2;
  v32 = type metadata accessor for MagazineFeedSectionDescriptor();
  MEMORY[0x28223BE20](v32);
  v31 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_219BDBD64();
  v3 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for MagazineFeedModel(0);
  MEMORY[0x28223BE20](v27);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218953870();
  v25 = v8;
  v28 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BB8698();
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11);
  v26 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v24 - v16;
  sub_218BB885C(&qword_280EE5BB8, sub_218953870);
  sub_218BB885C(&unk_280EE5BC0, sub_218953870);
  sub_219BE2444();
  sub_2186F6F00();
  v19 = *(v18 + 48);
  sub_219BDBD54();
  v20 = sub_219BDBD44();
  v22 = v21;
  (*(v3 + 8))(v5, v29);
  *v7 = v20;
  v7[1] = v22;
  sub_218BB8764(v30, v7 + v19);
  swift_storeEnumTagMultiPayload();
  sub_218BB885C(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel);
  sub_219BE5FB4();
  sub_219BE2404();
  (*(v28 + 8))(v10, v25);
  swift_storeEnumTagMultiPayload();
  (*(v13 + 16))(v26, v17, v12);
  sub_218BB885C(&qword_280EB0350, type metadata accessor for MagazineFeedSectionDescriptor);
  sub_219BE6924();
  return (*(v13 + 8))(v17, v12);
}

void sub_218BB8698()
{
  if (!qword_280EE74F0)
  {
    sub_218953870();
    sub_218BB885C(&qword_280EE5BB8, sub_218953870);
    sub_218BB885C(&unk_280EE5BC0, sub_218953870);
    v0 = sub_219BE2454();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE74F0);
    }
  }
}

uint64_t sub_218BB8764(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagazineFeedGapLocation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_218BB87C8()
{
  if (!qword_280E8D528)
  {
    sub_218BB8698();
    sub_218BB885C(&qword_280EE74F8, sub_218BB8698);
    v0 = sub_219BF7494();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8D528);
    }
  }
}

uint64_t sub_218BB885C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218BB88A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218BB8928@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_219BE4584();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_218BB8994@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_219BE4314();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_218BB8A10@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_219BF4A04();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_218BB8A8C(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v36 = a3;
  v37 = a2;
  sub_218BBB928(0, &qword_27CC0C928, MEMORY[0x277D6DF88]);
  v35 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - v7;
  sub_218BBB928(0, &qword_27CC0C900, MEMORY[0x277D6EC60]);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - v11;
  v13 = *(v10 + 16);
  v33 = a1;
  v34 = v14;
  v32 = v13;
  (v13)(v12, a1);
  v15 = *(*v3 + 16);
  if (v15)
  {
    v16 = (*v3 + 40);
    do
    {
      v18 = *v16 >> 6;
      if (v18 > 1)
      {
        if (v18 == 2)
        {

          sub_218BB9EB8(v17, v12);
        }

        else
        {

          sub_218BBAC98(v20, v12);
        }
      }

      else
      {
        if (v18)
        {
          goto LABEL_5;
        }

        sub_218BB8E0C(v19, v12);
      }

      j__swift_release();
LABEL_5:
      v16 += 16;
      --v15;
    }

    while (v15);
  }

  sub_218BBB82C();
  sub_21878D8D8();
  sub_21878D92C();
  sub_219BE78F4();
  __swift_project_boxed_opaque_existential_1(v38, v38[3]);
  if (sub_219BE6E54())
  {
    v21 = MEMORY[0x277D6DF80];
    v22 = v37;
    v24 = v34;
    v23 = v35;
  }

  else
  {
    sub_218BBB880();
    v26 = *(v25 + 48);
    v27 = *(v25 + 64);
    v24 = v34;
    v32(v8, v12, v34);
    sub_218718690(v38, &v8[v26]);
    v28 = *MEMORY[0x277D6D868];
    v29 = sub_219BE6DF4();
    (*(*(v29 - 8) + 104))(&v8[v27], v28, v29);
    v21 = MEMORY[0x277D6DF78];
    v22 = v37;
    v23 = v35;
  }

  (*(v6 + 104))(v8, *v21, v23);
  v22(v8);
  (*(v6 + 8))(v8, v23);
  (*(v10 + 8))(v12, v24);
  return __swift_destroy_boxed_opaque_existential_1(v38);
}

uint64_t sub_218BB8E0C(uint64_t a1, uint64_t a2)
{
  v140 = a2;
  sub_218A25E40();
  MEMORY[0x28223BE20](v4 - 8);
  v121 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A2625C(0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v124 = &v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v126 = &v117 - v10;
  MEMORY[0x28223BE20](v9);
  v127 = &v117 - v11;
  sub_218A25EF0();
  v138 = *(v12 - 8);
  v139 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v118 = &v117 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v119 = &v117 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v136 = &v117 - v18;
  MEMORY[0x28223BE20](v17);
  v122 = &v117 - v19;
  sub_218A25F90();
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v129 = &v117 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v128 = &v117 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v130 = &v117 - v26;
  MEMORY[0x28223BE20](v25);
  v133 = &v117 - v27;
  sub_218BBB928(0, &qword_27CC0C8E0, MEMORY[0x277D6D710]);
  v131 = v28;
  v132 = *(v28 - 8);
  v29 = MEMORY[0x28223BE20](v28);
  v120 = &v117 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v123 = &v117 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v125 = &v117 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v135 = &v117 - v36;
  MEMORY[0x28223BE20](v35);
  v134 = &v117 - v37;
  v38 = sub_219BF2CB4();
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v41 = (&v117 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v137 = sub_219BF2634();
  v42 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v44 = &v117 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v2 + 8), *(v2 + 32));
  *v41 = *(a1 + 16);
  (*(v39 + 104))(v41, *MEMORY[0x277D33B98], v38);
  swift_unknownObjectRetain();
  v45 = v131;
  sub_219BF4794();
  (*(v39 + 8))(v41, v38);
  v46 = sub_219BF2614();
  (*(v42 + 8))(v44, v137);
  v47 = v132;
  type metadata accessor for FollowingTagModel();
  v48 = swift_allocObject();
  *(v48 + 16) = 0;
  *(v48 + 24) = a1;
  *(v48 + 32) = v46 & 1;
  sub_218BBB928(0, &qword_27CC0C900, MEMORY[0x277D6EC60]);
  v50 = v49;
  v51 = v133;

  sub_219BEB354();
  v52 = *(v47 + 48);
  v53 = (v52)(v51, 1, v45);
  v137 = v50;
  if (v53 == 1)
  {
    sub_218BBBA00(v51, sub_218A25F90);
    v54 = v138;
  }

  else
  {
    (*(v47 + 32))(v134, v51, v45);
    v55 = *(v48 + 16);
    v56 = *(v48 + 24);
    v142 = 0;
    v143 = 0xE000000000000000;
    v141 = v55;
    sub_219BF7484();
    MEMORY[0x21CECC330](58, 0xE100000000000000);
    v57 = [*(v56 + 16) identifier];
    v58 = sub_219BF5414();
    v59 = v47;
    v60 = v45;
    v62 = v61;

    MEMORY[0x21CECC330](v58, v62);
    v45 = v60;

    v63 = v127;
    sub_219BE6A64();

    v54 = v138;
    v64 = v139;
    if ((*(v138 + 48))(v63, 1, v139) != 1)
    {
      v97 = v122;
      (*(v54 + 32))(v122, v63, v64);
      v99 = v134;
      v98 = v135;
      (*(v59 + 16))(v135, v134, v45);
LABEL_18:
      v142 = v48;
      v144 = 0;
      sub_21878D92C();

      v104 = v136;
      sub_219BE5FB4();
      sub_219BE69E4();
      sub_219BEB234();

      v105 = *(v54 + 8);
      v106 = v104;
      v107 = v139;
      v105(v106, v139);
      v108 = *(v59 + 8);
      v108(v98, v45);
      v105(v97, v107);
      return (v108)(v99, v45);
    }

    (*(v59 + 8))(v134, v60);
    sub_218BBBA00(v63, sub_218A2625C);
    v47 = v59;
  }

  v65 = v130;
  sub_219BEB354();
  if ((v52)(v65, 1, v45) == 1)
  {
    sub_218BBBA00(v65, sub_218A25F90);
    v66 = v129;
    goto LABEL_9;
  }

  v134 = v52;
  v67 = v125;
  (*(v47 + 32))(v125, v65, v45);
  v68 = *(v48 + 16);
  v69 = *(v48 + 24);
  v142 = 0;
  v143 = 0xE000000000000000;
  v141 = v68;
  sub_219BF7484();
  MEMORY[0x21CECC330](58, 0xE100000000000000);
  v70 = [*(v69 + 16) identifier];
  v71 = sub_219BF5414();
  v59 = v47;
  v72 = v45;
  v74 = v73;

  MEMORY[0x21CECC330](v71, v74);
  v45 = v72;
  v75 = v67;

  v76 = v126;
  sub_219BE6A64();
  v77 = v139;

  if ((*(v54 + 48))(v76, 1, v77) != 1)
  {
    v97 = v119;
    (*(v54 + 32))(v119, v76, v77);
    v99 = v75;
    v98 = v135;
    (*(v59 + 16))(v135, v75, v45);
    goto LABEL_18;
  }

  (*(v59 + 8))(v67, v72);
  sub_218BBBA00(v76, sub_218A2625C);
  v47 = v59;
  v66 = v129;
  v52 = v134;
LABEL_9:
  v78 = v128;
  sub_219BEB354();
  if ((v52)(v78, 1, v45) == 1)
  {
    sub_218BBBA00(v78, sub_218A25F90);
    v79 = v138;
    goto LABEL_13;
  }

  v80 = v123;
  (*(v47 + 32))(v123, v78, v45);
  v81 = *(v48 + 16);
  v82 = *(v48 + 24);
  v142 = 0;
  v143 = 0xE000000000000000;
  v141 = v81;
  sub_219BF7484();
  MEMORY[0x21CECC330](58, 0xE100000000000000);
  v83 = [*(v82 + 16) identifier];
  v84 = sub_219BF5414();
  v85 = v47;
  v86 = v45;
  v88 = v87;

  MEMORY[0x21CECC330](v84, v88);
  v45 = v86;
  v89 = v80;

  v90 = v124;
  sub_219BE6A64();

  v79 = v138;
  v91 = v139;
  if ((*(v138 + 48))(v90, 1, v139) == 1)
  {
    (*(v85 + 8))(v89, v86);
    sub_218BBBA00(v90, sub_218A2625C);
    v47 = v85;
    v66 = v129;
LABEL_13:
    sub_219BEB354();
    if ((v52)(v66, 1, v45) == 1)
    {
      sub_218BBBA00(v66, sub_218A25F90);
      sub_2197EBCE8(&v142);
      v145 = 1;
      v92 = sub_218A25F4C(&qword_27CC0C8C8);
      v93 = sub_218A25F4C(&qword_27CC0C8D0);
      MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v139, v92, v93);
      sub_21878D8D8();
      sub_21878D92C();
      v94 = v135;
      sub_219BE6924();
      v142 = v48;
      v144 = 0;

      v95 = v136;
      sub_219BE5FB4();
      sub_219BE6994();
      sub_218A26130();
      sub_219BEB324();

      (*(v79 + 8))(v95, v139);
      return (*(v47 + 8))(v94, v45);
    }

    else
    {
      v100 = v120;
      (*(v47 + 32))(v120, v66, v45);
      v101 = v135;
      (*(v47 + 16))(v135, v100, v45);
      v142 = v48;
      v144 = 0;
      sub_21878D92C();

      v102 = v136;
      sub_219BE5FB4();
      sub_218BBB9AC();
      sub_219BE6A44();
      (*(v79 + 8))(v102, v139);
      sub_219BEB234();

      v103 = *(v47 + 8);
      v103(v101, v45);
      return (v103)(v100, v45);
    }
  }

  v109 = v118;
  (*(v79 + 32))(v118, v90, v91);
  v110 = v89;
  v111 = v135;
  (*(v85 + 16))(v135, v89, v45);
  v142 = v48;
  v144 = 0;
  sub_21878D92C();

  v112 = v136;
  sub_219BE5FB4();
  sub_219BE69E4();
  sub_219BEB234();

  v113 = *(v79 + 8);
  v114 = v112;
  v115 = v139;
  v113(v114, v139);
  v116 = *(v85 + 8);
  v116(v111, v45);
  v113(v109, v115);
  return (v116)(v110, v45);
}

uint64_t sub_218BB9EB8(uint64_t a1, uint64_t a2)
{
  v129 = a2;
  sub_218A2625C(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v114 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v116 = &v109 - v8;
  MEMORY[0x28223BE20](v7);
  v117 = &v109 - v9;
  sub_218A25EF0();
  v127 = *(v10 - 8);
  v128 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v110 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v111 = &v109 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v120 = &v109 - v16;
  MEMORY[0x28223BE20](v15);
  v112 = &v109 - v17;
  sub_218A25F90();
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v118 = &v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v121 = &v109 - v22;
  MEMORY[0x28223BE20](v21);
  v124 = &v109 - v23;
  sub_218BBB928(0, &qword_27CC0C8E0, MEMORY[0x277D6D710]);
  v122 = *(v24 - 8);
  v123 = v24;
  v25 = MEMORY[0x28223BE20](v24);
  v113 = &v109 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v115 = &v109 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v119 = &v109 - v30;
  MEMORY[0x28223BE20](v29);
  v125 = &v109 - v31;
  v32 = sub_219BF2CB4();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = (&v109 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v126 = sub_219BF2634();
  v36 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v38 = &v109 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v2 + 8), *(v2 + 32));
  *v35 = *(a1 + 16);
  (*(v33 + 104))(v35, *MEMORY[0x277D33B98], v32);
  swift_unknownObjectRetain();
  sub_219BF4794();
  (*(v33 + 8))(v35, v32);
  v39 = sub_219BF2614();
  v40 = v123;
  (*(v36 + 8))(v38, v126);
  type metadata accessor for FollowingTagModel();
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  v42 = a1;
  v43 = v122;
  *(v41 + 24) = v42;
  *(v41 + 32) = v39 & 1;
  sub_218BBB928(0, &qword_27CC0C900, MEMORY[0x277D6EC60]);
  v45 = v44;
  v46 = v124;

  sub_219BEB354();
  v47 = *(v43 + 48);
  v48 = v47(v46, 1, v40);
  v126 = v45;
  if (v48 == 1)
  {
    sub_218BBBA00(v46, sub_218A25F90);
    v49 = v127;
  }

  else
  {
    v109 = v47;
    (*(v43 + 32))(v125, v46, v40);
    v50 = *(v41 + 16);
    v51 = *(v41 + 24);
    v130 = 0;
    v131 = 0xE000000000000000;
    v133 = v50;
    sub_219BF7484();
    MEMORY[0x21CECC330](58, 0xE100000000000000);
    v52 = [*(v51 + 16) identifier];
    v53 = v43;
    v54 = sub_219BF5414();
    v56 = v55;

    MEMORY[0x21CECC330](v54, v56);

    v57 = v117;
    sub_219BE6A64();

    v49 = v127;
    v58 = v128;
    if ((*(v127 + 48))(v57, 1, v128) != 1)
    {
      v86 = v112;
      (*(v49 + 32))(v112, v57, v58);
      v87 = v119;
      v88 = v125;
      (*(v53 + 16))(v119, v125, v40);
      v130 = v41;
      v132 = 0;
      sub_21878D92C();

      v89 = v120;
      sub_219BE5FB4();
      sub_219BE69E4();
      sub_219BEB234();

      v90 = *(v49 + 8);
      v91 = v89;
      v92 = v128;
      v90(v91, v128);
      v93 = *(v53 + 8);
      v93(v87, v40);
      v90(v86, v92);
      return (v93)(v88, v40);
    }

    (*(v53 + 8))(v125, v40);
    sub_218BBBA00(v57, sub_218A2625C);
    v43 = v53;
    v47 = v109;
  }

  v59 = v121;
  sub_219BEB354();
  if (v47(v59, 1, v40) == 1)
  {
    sub_218BBBA00(v59, sub_218A25F90);
    v60 = v118;
  }

  else
  {
    v61 = v115;
    (*(v43 + 32))(v115, v59, v40);
    v62 = *(v41 + 16);
    v63 = *(v41 + 24);
    v130 = 0;
    v131 = 0xE000000000000000;
    v133 = v62;
    sub_219BF7484();
    MEMORY[0x21CECC330](58, 0xE100000000000000);
    v64 = [*(v63 + 16) identifier];
    v65 = v43;
    v66 = sub_219BF5414();
    v68 = v67;

    MEMORY[0x21CECC330](v66, v68);

    v69 = v116;
    sub_219BE6A64();
    v70 = v127;

    v71 = v128;
    if ((*(v70 + 48))(v69, 1, v128) != 1)
    {
      v94 = v111;
      (*(v70 + 32))(v111, v69, v71);
      v95 = v119;
      (*(v65 + 16))(v119, v61, v40);
      v130 = v41;
      v132 = 0;
      sub_21878D92C();

      v96 = v120;
      sub_219BE5FB4();
      sub_219BE69E4();
      sub_219BEB234();

      v97 = *(v70 + 8);
      v98 = v96;
      v99 = v128;
      v97(v98, v128);
      v100 = *(v65 + 8);
      v100(v95, v40);
      v97(v94, v99);
      return (v100)(v61, v40);
    }

    (*(v65 + 8))(v61, v40);
    sub_218BBBA00(v69, sub_218A2625C);
    v43 = v65;
    v60 = v118;
    v49 = v70;
  }

  sub_219BEB354();
  if (v47(v60, 1, v40) == 1)
  {

    return sub_218BBBA00(v60, sub_218A25F90);
  }

  else
  {
    v73 = v113;
    (*(v43 + 32))(v113, v60, v40);
    v74 = *(v41 + 16);
    v75 = *(v41 + 24);
    v130 = 0;
    v131 = 0xE000000000000000;
    v133 = v74;
    sub_219BF7484();
    MEMORY[0x21CECC330](58, 0xE100000000000000);
    v76 = [*(v75 + 16) identifier];
    v77 = v40;
    v78 = v43;
    v79 = sub_219BF5414();
    v81 = v80;

    v82 = v79;
    v83 = v77;
    MEMORY[0x21CECC330](v82, v81);

    v84 = v114;
    sub_219BE6A64();

    v85 = v128;
    if ((*(v49 + 48))(v84, 1, v128) == 1)
    {
      (*(v78 + 8))(v73, v77);

      return sub_218BBBA00(v84, sub_218A2625C);
    }

    else
    {
      v101 = v73;
      v102 = v110;
      (*(v49 + 32))(v110, v84, v85);
      v103 = v119;
      (*(v78 + 16))(v119, v101, v83);
      v130 = v41;
      v132 = 0;
      sub_21878D92C();

      v104 = v120;
      sub_219BE5FB4();
      sub_219BE69E4();
      sub_219BEB234();

      v105 = *(v49 + 8);
      v106 = v104;
      v107 = v128;
      v105(v106, v128);
      v108 = *(v78 + 8);
      v108(v103, v83);
      v105(v102, v107);
      return (v108)(v101, v83);
    }
  }
}

uint64_t sub_218BBAC98(uint64_t a1, uint64_t a2)
{
  v89 = a2;
  sub_218A25EF0();
  v87 = v4;
  v82 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v75 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v80 = &v74 - v7;
  sub_218A2625C(0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v78 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v79 = &v74 - v11;
  sub_218A25F90();
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v81 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v86 = &v74 - v15;
  sub_218BBB928(0, &qword_27CC0C8E0, MEMORY[0x277D6D710]);
  v84 = *(v16 - 8);
  v85 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v74 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v77 = &v74 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v76 = &v74 - v22;
  MEMORY[0x28223BE20](v21);
  v88 = &v74 - v23;
  v24 = sub_219BF2CB4();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = (&v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v83 = sub_219BF2634();
  v28 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v30 = &v74 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v2 + 8), *(v2 + 32));
  *v27 = *(a1 + 16);
  (*(v25 + 104))(v27, *MEMORY[0x277D33B98], v24);
  swift_unknownObjectRetain();
  sub_219BF4794();
  (*(v25 + 8))(v27, v24);
  v31 = sub_219BF2614();
  v32 = v84;
  (*(v28 + 8))(v30, v83);
  v33 = v85;
  type metadata accessor for FollowingTagModel();
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  v35 = a1;
  v36 = v34;
  *(v34 + 24) = v35;
  *(v34 + 32) = v31 & 1;
  sub_218BBB928(0, &qword_27CC0C900, MEMORY[0x277D6EC60]);
  v38 = v37;

  v39 = v86;
  sub_219BEB354();
  v40 = *(v32 + 48);
  if (v40(v39, 1, v33) == 1)
  {
    v41 = v87;
    sub_218BBBA00(v39, sub_218A25F90);
  }

  else
  {
    v83 = v38;
    (*(v32 + 32))(v88, v39, v33);
    v42 = v36[16];
    v43 = *(v36 + 3);
    v91 = 0;
    v92 = 0xE000000000000000;
    LOBYTE(v90) = v42;
    sub_219BF7484();
    MEMORY[0x21CECC330](58, 0xE100000000000000);
    v44 = *(v43 + 16);
    v86 = v36;
    v45 = [v44 identifier];
    v46 = sub_219BF5414();
    v48 = v47;

    MEMORY[0x21CECC330](v46, v48);

    v49 = v79;
    sub_219BE6A64();

    v41 = v87;
    if ((*(v82 + 48))(v49, 1, v87) != 1)
    {
      sub_218BBBA00(v49, sub_218A2625C);
      v62 = v76;
      (*(v32 + 16))(v76, v88, v33);
      v63 = v86[16];
      v64 = *(v86 + 3);
      v91 = 0;
      v92 = 0xE000000000000000;
      LOBYTE(v90) = v63;
      sub_219BF7484();
      MEMORY[0x21CECC330](58, 0xE100000000000000);
      v65 = [*(v64 + 16) &_OBJC_LABEL_PROTOCOL___FCPrivateChannelMembershipObserving];
      v66 = sub_219BF5414();
      v68 = v67;

      MEMORY[0x21CECC330](v66, v68);

      sub_219BE69C4();

      sub_218BBBA60();
      sub_219BF5DF4();
      sub_219BF5E84();
      if (v91 == v90)
      {
        sub_219BE6944();
        sub_219BEB214();
      }

      else
      {
        sub_219BEB234();
      }

      v73 = *(v32 + 8);
      v73(v62, v33);
      return (v73)(v88, v33);
    }

    (*(v32 + 8))(v88, v33);
    sub_218BBBA00(v49, sub_218A2625C);
    v38 = v83;
    v36 = v86;
  }

  v50 = v81;
  sub_219BEB354();
  if (v40(v50, 1, v33) == 1)
  {

    v51 = sub_218A25F90;
    return sub_218BBBA00(v50, v51);
  }

  v83 = v38;
  v52 = v77;
  (*(v32 + 32))(v77, v50, v33);
  v53 = v36[16];
  v54 = *(v36 + 3);
  v91 = 0;
  v92 = 0xE000000000000000;
  LOBYTE(v90) = v53;
  sub_219BF7484();
  MEMORY[0x21CECC330](58, 0xE100000000000000);
  v55 = [*(v54 + 16) identifier];
  v56 = sub_219BF5414();
  v58 = v57;

  MEMORY[0x21CECC330](v56, v58);

  v50 = v78;
  sub_219BE6A64();

  v59 = v82;
  v60 = v41;
  if ((*(v82 + 48))(v50, 1, v41) == 1)
  {
    (*(v32 + 8))(v52, v33);

    v51 = sub_218A2625C;
    return sub_218BBBA00(v50, v51);
  }

  (*(v59 + 32))(v80, v50, v41);
  v69 = v74;
  (*(v32 + 16))(v74, v52, v33);
  v91 = v36;
  v93 = 0;
  sub_21878D92C();

  v70 = v75;
  sub_219BE5FB4();
  sub_219BE69E4();
  sub_219BEB234();

  v71 = *(v59 + 8);
  v71(v70, v60);
  v72 = *(v32 + 8);
  v72(v69, v33);
  v71(v80, v60);
  return (v72)(v52, v33);
}

uint64_t sub_218BBB798(uint64_t a1)
{
  v2 = sub_218BBBAD4();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_218BBB7D8()
{
  result = qword_27CC0EB50;
  if (!qword_27CC0EB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0EB50);
  }

  return result;
}

unint64_t sub_218BBB82C()
{
  result = qword_27CC0EB58;
  if (!qword_27CC0EB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0EB58);
  }

  return result;
}

void sub_218BBB880()
{
  if (!qword_27CC0EB60)
  {
    sub_218BBB928(255, &qword_27CC0C900, MEMORY[0x277D6EC60]);
    sub_218A7BBF4();
    sub_219BE6DF4();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CC0EB60);
    }
  }
}

void sub_218BBB928(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for FollowingNotificationsDescriptor;
    v8[1] = &type metadata for FollowingNotificationsModel;
    v8[2] = sub_21878D8D8();
    v8[3] = sub_21878D92C();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_218BBB9AC()
{
  result = qword_27CC0EB68;
  if (!qword_27CC0EB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0EB68);
  }

  return result;
}

uint64_t sub_218BBBA00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_218BBBA60()
{
  result = qword_27CC0AEC8;
  if (!qword_27CC0AEC8)
  {
    sub_218BBB928(255, &qword_27CC0C8E0, MEMORY[0x277D6D710]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0AEC8);
  }

  return result;
}

unint64_t sub_218BBBAD4()
{
  result = qword_27CC0EB70;
  if (!qword_27CC0EB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0EB70);
  }

  return result;
}

uint64_t sub_218BBBB50@<X0>(uint64_t a1@<X8>)
{
  v20 = type metadata accessor for CuratedAudioFeedGroup();
  MEMORY[0x28223BE20](v20);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AudioFeedGroup();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  type metadata accessor for AudioFeedServiceConfig();
  sub_2186E71FC(&unk_280EC8DD0, type metadata accessor for AudioFeedServiceConfig);
  result = sub_219BEF3B4();
  v12 = result;
  v13 = *(result + 16);
  if (v13)
  {
    v19 = a1;
    v14 = 0;
    v15 = result + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    while (v14 < *(v12 + 16))
    {
      sub_218BBD9C0(v15 + *(v5 + 72) * v14, v10, type metadata accessor for AudioFeedGroup);
      sub_218BBD9C0(v10, v8, type metadata accessor for AudioFeedGroup);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        sub_218BBD6D8(v8, v3, type metadata accessor for CuratedAudioFeedGroup);
        v17 = sub_219BF7614();
        sub_218BBD844(v3, type metadata accessor for CuratedAudioFeedGroup);
        v16 = v10;
        if (!v17)
        {

          a1 = v19;
          sub_218BBD6D8(v10, v19, type metadata accessor for AudioFeedGroup);
          v18 = 0;
          return (*(v5 + 56))(a1, v18, 1, v4);
        }
      }

      else
      {
        sub_218BBD844(v10, type metadata accessor for AudioFeedGroup);
        v16 = v8;
      }

      ++v14;
      result = sub_218BBD844(v16, type metadata accessor for AudioFeedGroup);
      if (v13 == v14)
      {

        v18 = 1;
        a1 = v19;
        return (*(v5 + 56))(a1, v18, 1, v4);
      }
    }

    __break(1u);
  }

  else
  {

    v18 = 1;
    return (*(v5 + 56))(a1, v18, 1, v4);
  }

  return result;
}

double sub_218BBBE6C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v37 = a2;
  v36 = sub_219BEEA84();
  v33 = *(v36 - 8);
  v5 = v33;
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AudioFeedContentConfig();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AudioFeedServiceContext();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for AudioFeedServiceContext;
  v34 = v12;
  sub_218BBD9C0(v3, v12, type metadata accessor for AudioFeedServiceContext);
  sub_218BBD9C0(a1, v9, type metadata accessor for AudioFeedContentConfig);
  v13 = type metadata accessor for AudioFeedServiceConfig();
  v14 = v13[7];
  v31 = *(v3 + v13[6]);
  v15 = *(v3 + v13[8]);
  v16 = *(v3 + v14);
  v17 = *(v5 + 16);
  v18 = v3 + v13[9];
  v19 = v35;
  v20 = v36;
  v17(v35, v18, v36);
  v21 = v12;
  v22 = v37;
  sub_218BBD9C0(v21, v37, v32);
  sub_218BBD9C0(v9, v22 + v13[5], type metadata accessor for AudioFeedContentConfig);
  v23 = v22;
  v24 = v31;
  *(v23 + v13[6]) = v31;
  *(v23 + v13[8]) = v15;
  *(v23 + v13[7]) = v16;
  v25 = v20;
  v17((v23 + v13[9]), v19, v20);
  v26 = v24;
  v27 = v15;
  v28 = [swift_unknownObjectRetain() autoRefreshMinimumInterval];
  (*(v33 + 8))(v19, v25);
  sub_218BBD844(v9, type metadata accessor for AudioFeedContentConfig);
  sub_218BBD844(v34, type metadata accessor for AudioFeedServiceContext);
  result = v28;
  *(v37 + v13[10]) = v28;
  return result;
}

uint64_t sub_218BBC1B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_219BEEA84();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_218BBC27C@<X0>(unsigned int *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a3, v4, v5);
}

uint64_t sub_218BBC330@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v49 = sub_219BEEA84();
  v46 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v48 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BBD740();
  v52 = v4;
  v47 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v51 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BBD798(0, &unk_280EE66F0, &qword_280E8DE40);
  v55 = v6;
  v50 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v54 = &v42 - v7;
  sub_218BBD798(0, &unk_280EE66C0, &qword_280E8DDC0);
  v57 = v8;
  v53 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v56 = &v42 - v9;
  v10 = type metadata accessor for AudioFeedContentConfig();
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AudioFeedServiceContext();
  MEMORY[0x28223BE20](v13);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BBD900(0, &qword_27CC0EB78, MEMORY[0x277D844C8]);
  v58 = v16;
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v42 - v18;
  v20 = a1[3];
  v61 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_218BBD7F0();
  v59 = v19;
  v21 = v60;
  sub_219BF7B34();
  if (!v21)
  {
    v22 = v56;
    v23 = v57;
    v44 = v12;
    v60 = v17;
    LOBYTE(v65) = 0;
    sub_2186E71FC(&unk_27CC0EB88, type metadata accessor for AudioFeedServiceContext);
    v24 = v58;
    sub_219BF7734();
    v43 = v15;
    LOBYTE(v65) = 1;
    sub_2186E71FC(&qword_280EC8F50, type metadata accessor for AudioFeedContentConfig);
    sub_219BF7734();
    LOBYTE(v65) = 2;
    sub_218BBD964(&qword_280EE66D0);
    sub_219BF7734();
    sub_219BE3384();
    (*(v53 + 8))(v22, v23);
    v25 = v65;
    LOBYTE(v64) = 3;
    sub_218BBD8A4(&qword_280EE6700);
    v26 = v54;
    v27 = v55;
    sub_219BF7734();
    sub_219BE3384();
    (*(v50 + 8))(v26, v27);
    v29 = v64;
    LOBYTE(v63) = 4;
    sub_2186E71FC(&qword_280EE6730, sub_218BBD740);
    v31 = v51;
    v30 = v52;
    sub_219BF7734();
    v32 = v60;
    v57 = v25;
    sub_219BE3384();
    (*(v47 + 8))(v31, v30);
    v33 = v63;
    v62 = 5;
    sub_2186E71FC(&qword_280E91980, MEMORY[0x277D32228]);
    v35 = v48;
    v34 = v49;
    sub_219BF7734();
    v36 = v45;
    sub_218BBD9C0(v43, v45, type metadata accessor for AudioFeedServiceContext);
    v37 = type metadata accessor for AudioFeedServiceConfig();
    sub_218BBD9C0(v44, v36 + v37[5], type metadata accessor for AudioFeedContentConfig);
    *(v36 + v37[6]) = v57;
    *(v36 + v37[8]) = v29;
    *(v36 + v37[7]) = v33;
    v38 = v46;
    (*(v46 + 16))(v36 + v37[9], v35, v34);
    v39 = [v33 autoRefreshMinimumInterval];
    v40 = v34;
    v41 = v39;
    (*(v38 + 8))(v35, v40);
    sub_218BBD844(v44, type metadata accessor for AudioFeedContentConfig);
    sub_218BBD844(v43, type metadata accessor for AudioFeedServiceContext);
    (*(v32 + 8))(v59, v24);
    *(v36 + v37[10]) = v41;
  }

  return __swift_destroy_boxed_opaque_existential_1(v61);
}

uint64_t sub_218BBCC64(void *a1)
{
  sub_218BBD740();
  v3 = *(v2 - 8);
  v35 = v2;
  v36 = v3;
  MEMORY[0x28223BE20](v2);
  v34 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BBD798(0, &unk_280EE66F0, &qword_280E8DE40);
  v6 = *(v5 - 8);
  v37 = v5;
  v38 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - v7;
  sub_218BBD798(0, &unk_280EE66C0, &qword_280E8DDC0);
  v10 = v9;
  v39 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - v11;
  sub_218BBD900(0, &qword_27CC0EB98, MEMORY[0x277D84538]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v17 = &v33 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BBD7F0();
  v18 = v40;
  sub_219BF7B44();
  v48 = 0;
  type metadata accessor for AudioFeedServiceContext();
  sub_2186E71FC(&qword_27CC0EBA0, type metadata accessor for AudioFeedServiceContext);
  v42 = v14;
  v19 = v17;
  v20 = v41;
  sub_219BF7834();
  if (v20)
  {
    return (*(v15 + 8))(v17, v42);
  }

  v41 = v10;
  v33 = v8;
  v21 = type metadata accessor for AudioFeedServiceConfig();
  v47 = 1;
  type metadata accessor for AudioFeedContentConfig();
  v22 = v19;
  sub_2186E71FC(&qword_27CC0EBA8, type metadata accessor for AudioFeedContentConfig);
  sub_219BF7834();
  v23 = *(v18 + *(v21 + 24));
  sub_2186C6148(0, &qword_280E8DDC0);
  v24 = v23;
  sub_219BE3454();
  v46 = 2;
  sub_218BBD964(&qword_280EE66E0);
  v25 = v41;
  sub_219BF7834();
  (*(v39 + 8))(v12, v25);
  v41 = v21;
  v26 = *(v18 + *(v21 + 32));
  sub_2186C6148(0, &qword_280E8DE40);
  v27 = v26;
  v28 = v33;
  sub_219BE3444();
  v45 = 3;
  sub_218BBD8A4(&qword_280EE6710);
  v29 = v37;
  sub_219BF7834();
  (*(v38 + 8))(v28, v29);
  sub_2186C61E4();
  swift_unknownObjectRetain();
  v31 = v34;
  sub_219BE3424();
  v44 = 4;
  sub_2186E71FC(&qword_280EE6740, sub_218BBD740);
  v32 = v35;
  sub_219BF7834();
  (*(v36 + 8))(v31, v32);
  v43 = 5;
  sub_219BEEA84();
  sub_2186E71FC(&qword_280E91988, MEMORY[0x277D32228]);
  sub_219BF7834();
  return (*(v15 + 8))(v22, v42);
}

uint64_t sub_218BBD2F8()
{
  sub_219BF5524();
}

uint64_t sub_218BBD414@<X0>(_BYTE *a1@<X8>)
{
  result = sub_218BBDB40();
  *a1 = result;
  return result;
}

void sub_218BBD444(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x747865746E6F63;
  v5 = 0x8000000219CD6AC0;
  v6 = 0xD000000000000016;
  v7 = 0xE900000000000067;
  v8 = 0x69666E6F43707061;
  if (v2 != 4)
  {
    v8 = 0x6C6F506568636163;
    v7 = 0xEB00000000796369;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xED00006769666E6FLL;
  v10 = 0x43746E65746E6F63;
  if (v2 != 1)
  {
    v10 = 0xD000000000000010;
    v9 = 0x8000000219CD6AA0;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_218BBD528()
{
  v1 = *v0;
  v2 = 0x747865746E6F63;
  v3 = 0xD000000000000016;
  v4 = 0x69666E6F43707061;
  if (v1 != 4)
  {
    v4 = 0x6C6F506568636163;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x43746E65746E6F63;
  if (v1 != 1)
  {
    v5 = 0xD000000000000010;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_218BBD608@<X0>(_BYTE *a1@<X8>)
{
  result = sub_218BBDB40();
  *a1 = result;
  return result;
}

uint64_t sub_218BBD630(uint64_t a1)
{
  v2 = sub_218BBD7F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218BBD66C(uint64_t a1)
{
  v2 = sub_218BBD7F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218BBD6D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_218BBD740()
{
  if (!qword_280EE6720)
  {
    sub_2186C61E4();
    v0 = sub_219BE3474();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE6720);
    }
  }
}

void sub_218BBD798(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_2186C6148(255, a3);
    v4 = sub_219BE3474();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_218BBD7F0()
{
  result = qword_27CC0EB80;
  if (!qword_27CC0EB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0EB80);
  }

  return result;
}

uint64_t sub_218BBD844(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218BBD8A4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_218BBD798(255, &unk_280EE66F0, &qword_280E8DE40);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_218BBD900(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218BBD7F0();
    v7 = a3(a1, &type metadata for AudioFeedServiceConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218BBD964(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_218BBD798(255, &unk_280EE66C0, &qword_280E8DDC0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_218BBD9C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_218BBDA3C()
{
  result = qword_27CC0EBB0;
  if (!qword_27CC0EBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0EBB0);
  }

  return result;
}

unint64_t sub_218BBDA94()
{
  result = qword_27CC0EBB8;
  if (!qword_27CC0EBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0EBB8);
  }

  return result;
}

unint64_t sub_218BBDAEC()
{
  result = qword_27CC0EBC0;
  if (!qword_27CC0EBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0EBC0);
  }

  return result;
}

uint64_t sub_218BBDB40()
{
  v0 = sub_219BF7614();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

void *sub_218BBDB8C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v137 = a4;
  v149 = a3;
  v130 = a1;
  v133 = sub_219BEB084();
  v132 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v134 = (&v127 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218BBF1A8();
  MEMORY[0x28223BE20](v5 - 8);
  v131 = &v127 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_219BE8B34();
  v151 = *(v154 - 8);
  v7 = MEMORY[0x28223BE20](v154);
  v147 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v136 = &v127 - v10;
  v135 = v11;
  MEMORY[0x28223BE20](v9);
  v150 = &v127 - v12;
  v139 = sub_219BE71C4();
  v138 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v14 = (&v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v145 = sub_219BF3E14();
  v144 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v143 = &v127 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MagazineSectionBarLayoutAttributes();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v127 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v127 - v20;
  v22 = sub_219BF0DE4();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v146 = &v127 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v25);
  v129 = &v127 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v140 = &v127 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v128 = &v127 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = &v127 - v32;
  v34 = type metadata accessor for MagazineSectionBarLayoutModel();
  MEMORY[0x28223BE20](v34 - 8);
  v36 = &v127 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189512E4();
  sub_219BE75E4();
  sub_218BBF200();
  v38 = *(v37 + 48);
  v153 = v23;
  v39 = *(v23 + 32);
  v155 = v33;
  v156 = v22;
  v142 = v23 + 32;
  v141 = v39;
  v39(v33, v36, v22);
  sub_218BBF274(&v36[v38], v21);
  sub_218BBF2D8(v21, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v148 = v21;
  if (EnumCaseMultiPayload == 1)
  {
    v41 = v151[4];
    v140 = (v151 + 4);
    v143 = v41;
    (v41)(v150, v19, v154);
    sub_218BBF33C();
    v42 = sub_219BF6434();
    sub_218BBF39C();
    v44 = v43;
    v45 = swift_allocBox();
    v47 = v46;
    v48 = *(v44 + 48);
    sub_219BE71A4();
    v49 = swift_allocObject();
    *(v49 + 16) = 0x3FE999999999999ALL;
    *(v47 + v48) = v49;
    v50 = *(v138 + 104);
    v51 = v47 + v48;
    v52 = v139;
    v50(v51, *MEMORY[0x277D6D918], v139);
    *v14 = v45;
    v50(v14, *MEMORY[0x277D6D930], v52);
    sub_219BE7304();
    [v42 setFocusEffect_];
    v53 = v155;
    sub_219BF0DA4();
    v54 = sub_2189A6E68(v131);
    v55 = MEMORY[0x21CECCDE0](v54);
    v56 = v134;
    *v134 = v55;
    *(v56 + 1) = v57;
    *(v56 + 2) = v58;
    *(v56 + 3) = v59;
    (*(v132 + 104))(v56, *MEMORY[0x277D6EC30], v133);
    sub_219BE6064();
    swift_allocObject();
    v139 = sub_219BE6044();
    __swift_project_boxed_opaque_existential_1(v152 + 7, v152[10]);
    v149 = v42;
    v60 = sub_219BE7314();
    v138 = v24;
    v61 = v150;
    sub_219BE7A14();

    v145 = swift_allocObject();
    swift_weakInit();
    v62 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v63 = v153 + 16;
    v64 = *(v153 + 16);
    v65 = v129;
    v66 = v156;
    v64(v129, v53, v156);
    v67 = v151 + 2;
    v68 = v151[2];
    v69 = v136;
    v70 = v154;
    v68(v136, v61, v154);
    v64(v146, v65, v66);
    v68(v147, v69, v70);
    v71 = (*(v63 + 64) + 32) & ~*(v63 + 64);
    v72 = (v138 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
    v73 = (*(v67 + 64) + v72 + 8) & ~*(v67 + 64);
    v74 = swift_allocObject();
    *(v74 + 16) = v145;
    *(v74 + 24) = v62;
    v141(v74 + v71, v65, v66);
    *(v74 + v72) = v139;
    (v143)(v74 + v73, v69, v70);

    v144 = v62;

    v75 = sub_219BE7334();
    v76 = swift_allocObject();
    *(v76 + 16) = sub_218BBF404;
    *(v76 + 24) = v74;

    v77 = sub_219BE72F4();
    v78 = swift_allocObject();
    *(v78 + 16) = sub_218BBF404;
    *(v78 + 24) = v74;

    v79 = swift_allocObject();
    *(v79 + 16) = sub_218BBF404;
    *(v79 + 24) = v74;

    sub_219BE20F4();

    __swift_project_boxed_opaque_existential_1(v157, v158);
    v80 = sub_219BE7324();
    sub_219BE1A04();

    __swift_destroy_boxed_opaque_existential_1(v157);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v82 = v156;
    v83 = v154;
    if (Strong)
    {
      v84 = Strong;
      swift_beginAccess();
      v85 = swift_unknownObjectWeakLoadStrong();
      if (v85)
      {
        v86 = v85;
        v87 = v146;
        sub_218BBEF78();
        v88 = v84[10];
        v152 = v84[11];
        __swift_project_boxed_opaque_existential_1(v84 + 7, v88);
        v89 = sub_219BE7314();
        v90 = v147;
        v91 = v87;
        sub_219BE7A04();

        v83 = v154;
        v82 = v156;
      }

      else
      {

        v90 = v147;
        v91 = v146;
      }
    }

    else
    {

      v90 = v147;
      v91 = v146;
    }

    v124 = v151[1];
    v124(v90, v83);
    v125 = *(v153 + 8);
    v125(v91, v82);
    v124(v150, v83);
    sub_218BBF6D4(v148, type metadata accessor for MagazineSectionBarLayoutAttributes);
    v125(v155, v82);
  }

  else
  {
    (*(v144 + 32))(v143, v19, v145);
    sub_218BBF4E4();
    v92 = sub_219BF6434();
    sub_218BBF39C();
    v94 = v93;
    v95 = swift_allocBox();
    v97 = v96;
    v98 = *(v94 + 48);
    sub_219BE71A4();
    v99 = swift_allocObject();
    *(v99 + 16) = 0x3FE999999999999ALL;
    *(v97 + v98) = v99;
    v100 = *(v138 + 104);
    v101 = v97 + v98;
    v102 = v139;
    v100(v101, *MEMORY[0x277D6D918], v139);
    *v14 = v95;
    v100(v14, *MEMORY[0x277D6D930], v102);
    sub_219BE7304();
    [v92 setFocusEffect_];
    sub_218BBF5C0();
    sub_219BE5FC4();
    sub_2196C8ED0();
    sub_218BBF61C(v157);
    __swift_project_boxed_opaque_existential_1(v152 + 2, v152[5]);
    v103 = sub_219BE7314();
    v104 = v155;
    sub_219BF3564();

    v105 = swift_allocObject();
    swift_weakInit();
    v106 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v107 = v153;
    v108 = *(v153 + 16);
    v109 = v128;
    v110 = v104;
    v111 = v156;
    v108(v128, v110, v156);
    v108(v140, v109, v111);
    v112 = (*(v107 + 80) + 32) & ~*(v107 + 80);
    v113 = swift_allocObject();
    *(v113 + 16) = v105;
    *(v113 + 24) = v106;
    v154 = v106;
    v141(v113 + v112, v109, v111);

    v114 = sub_219BE7334();
    v115 = swift_allocObject();
    *(v115 + 16) = sub_218BBF670;
    *(v115 + 24) = v113;

    v116 = sub_219BE72F4();
    v117 = swift_allocObject();
    *(v117 + 16) = sub_218BBF670;
    *(v117 + 24) = v113;

    v118 = swift_allocObject();
    *(v118 + 16) = sub_218BBF670;
    *(v118 + 24) = v113;

    sub_219BE20F4();

    __swift_project_boxed_opaque_existential_1(v157, v158);
    v149 = v92;
    v119 = sub_219BE7324();
    sub_219BE1A04();

    __swift_destroy_boxed_opaque_existential_1(v157);
    v120 = v140;
    sub_218BBED68();

    v121 = *(v107 + 8);
    v122 = v120;
    v123 = v156;
    v121(v122, v156);
    (*(v144 + 8))(v143, v145);
    sub_218BBF6D4(v148, type metadata accessor for MagazineSectionBarLayoutAttributes);
    v121(v155, v123);
  }

  return v149;
}

void sub_218BBED68()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      sub_218BBEF78();
      __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
      v4 = sub_219BE7314();
      sub_219BF3554();
    }

    else
    {
    }
  }
}

void sub_218BBEE6C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      sub_218BBEF78();
      __swift_project_boxed_opaque_existential_1((v1 + 56), *(v1 + 80));
      v4 = sub_219BE7314();
      sub_219BE7A04();
    }

    else
    {
    }
  }
}

uint64_t sub_218BBEF78()
{
  sub_219BE20E4();
  if (*(&v3[0] + 1))
  {
    v5[8] = v3[8];
    v6[0] = v4[0];
    *(v6 + 9) = *(v4 + 9);
    v5[4] = v3[4];
    v5[5] = v3[5];
    v5[6] = v3[6];
    v5[7] = v3[7];
    v5[0] = v3[0];
    v5[1] = v3[1];
    v5[2] = v3[2];
    v5[3] = v3[3];
    if (sub_219BF0D94() == *&v3[0] && v0 == *(&v5[0] + 1))
    {

LABEL_7:
      sub_218BBF734(v5);
      return 1;
    }

    v1 = sub_219BF78F4();

    if (v1)
    {
      goto LABEL_7;
    }

    sub_218BBF734(v5);
  }

  else
  {
    sub_218BBF6D4(v3, sub_218703F50);
  }

  return 0;
}

uint64_t sub_218BBF070()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_218BBF128()
{
  sub_218BBF4E4();
  sub_219BF6454();
  sub_218BBF33C();
  return sub_219BF6454();
}

void *sub_218BBF178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void **a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  result = sub_218BBDB8C(a1, a2, *a3, a4);
  *a5 = result;
  return result;
}

void sub_218BBF1A8()
{
  if (!qword_280EE5B08)
  {
    sub_219BE6034();
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE5B08);
    }
  }
}

void sub_218BBF200()
{
  if (!qword_280E90AC8)
  {
    sub_219BF0DE4();
    type metadata accessor for MagazineSectionBarLayoutAttributes();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E90AC8);
    }
  }
}

uint64_t sub_218BBF274(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagazineSectionBarLayoutAttributes();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218BBF2D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagazineSectionBarLayoutAttributes();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_218BBF33C()
{
  if (!qword_280EE5208)
  {
    sub_219BEB094();
    v0 = sub_219BE7344();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE5208);
    }
  }
}

void sub_218BBF39C()
{
  if (!qword_280EE5370)
  {
    sub_219BE71C4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280EE5370);
    }
  }
}

void sub_218BBF404()
{
  sub_219BF0DE4();
  sub_219BE8B34();

  sub_218BBEE6C();
}

void sub_218BBF4E4()
{
  if (!qword_280EE5210)
  {
    sub_219BF1424();
    sub_218BBF578(&unk_280E908A8, MEMORY[0x277D33388]);
    v0 = sub_219BE7344();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE5210);
    }
  }
}

uint64_t sub_218BBF578(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_218BBF5C0()
{
  if (!qword_280EE5B78)
  {
    sub_218951108();
    v0 = sub_219BE5FE4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE5B78);
    }
  }
}

void sub_218BBF670()
{
  sub_219BF0DE4();

  sub_218BBED68();
}

uint64_t sub_218BBF6D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218BBF78C()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 48);
  __swift_destroy_boxed_opaque_existential_1(v0 + 88);
  __swift_destroy_boxed_opaque_existential_1(v0 + 128);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_218BBF7EC()
{
  sub_218BBF78C();

  return swift_deallocClassInstance();
}

uint64_t sub_218BBF848()
{
  v0 = sub_219BDDA14();
  v2 = v1;
  if (qword_27CC08598 != -1)
  {
    swift_once();
  }

  v3 = sub_219BE5434();
  __swift_project_value_buffer(v3, qword_27CCD8A98);

  v4 = sub_219BE5414();
  v5 = sub_219BF6214();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_2186D1058(v0, v2, &v10);
    _os_log_impl(&dword_2186C1000, v4, v5, "Feed loaded view session id=%{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x21CECF960](v7, -1, -1);
    MEMORY[0x21CECF960](v6, -1, -1);
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  *(v8 + 24) = v2;
  sub_219BDD154();
}

uint64_t sub_218BBF9F8(uint64_t a1, unint64_t a2)
{
  if (sub_219BDDA14() == a1 && v4 == a2)
  {
  }

  else
  {
    v6 = sub_219BF78F4();

    if ((v6 & 1) == 0)
    {

      sub_219BDDA24();
      if (qword_27CC08598 != -1)
      {
        swift_once();
      }

      v8 = sub_219BE5434();
      __swift_project_value_buffer(v8, qword_27CCD8A98);

      v9 = sub_219BE5414();
      v10 = sub_219BF6214();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v14 = v12;
        *v11 = 136446210;
        *(v11 + 4) = sub_2186D1058(a1, a2, &v14);
        _os_log_impl(&dword_2186C1000, v9, v10, "Updating view session id=%{public}s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v12);
        MEMORY[0x21CECF960](v12, -1, -1);
        MEMORY[0x21CECF960](v11, -1, -1);
      }

      v13 = swift_allocObject();
      *(v13 + 16) = a1;
      *(v13 + 24) = a2;

      sub_219BDD154();
    }
  }

  return result;
}

uint64_t sub_218BBFC40()
{
  v0 = sub_219BDD0A4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_219BDD7A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD3378();
  sub_219BE5FC4();
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 != *MEMORY[0x277D2FAC8])
  {
    if (v8 == *MEMORY[0x277D2FAD8])
    {
      *v3 = 0x656E696C64616568;
      v9 = 0xE800000000000000;
LABEL_8:
      v3[1] = v9;
      (*(v1 + 104))(v3, *MEMORY[0x277CEAE48], v0);
      sub_219BDD204();
      (*(v1 + 8))(v3, v0);
      return (*(v5 + 8))(v7, v4);
    }

    if (v8 == *MEMORY[0x277D2FAD0])
    {
      *v3 = 0x657069636572;
      v9 = 0xE600000000000000;
      goto LABEL_8;
    }

    if (v8 == *MEMORY[0x277D2FAB0])
    {
      *v3 = 6775156;
      v9 = 0xE300000000000000;
      goto LABEL_8;
    }
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_218BBFEAC(uint64_t a1)
{
  v26 = a1;
  v25 = sub_219BE9C04();
  v2 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BDF074();
  v30 = *(v5 - 8);
  v31 = v5;
  MEMORY[0x28223BE20](v5);
  v29 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE1544();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BDBD64();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BE1524();
  v27 = *(v15 - 8);
  v28 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[2] = *(v1 + 16);
  sub_219BDBD54();
  v18 = sub_219BDBD44();
  v24[0] = v19;
  v24[1] = v18;
  (*(v12 + 8))(v14, v11);
  (*(v8 + 104))(v10, *MEMORY[0x277D2F3D0], v7);
  sub_219BE9934();
  v20 = (*(v2 + 88))(v4, v25);
  if (v20 == *MEMORY[0x277D6E830])
  {
    v21 = MEMORY[0x277D2D868];
LABEL_6:
    (*(v30 + 104))(v29, *v21, v31);
    sub_219BE1514();
    sub_218BD31D8(&qword_280EE7FE0, 255, MEMORY[0x277D2F398]);
    v22 = v28;
    sub_219BDD1F4();
    (*(v27 + 8))(v17, v22);
    return sub_219BDD134();
  }

  v21 = MEMORY[0x277D2D810];
  if (v20 == *MEMORY[0x277D6E840] || v20 == *MEMORY[0x277D6E848] || v20 == *MEMORY[0x277D6E838])
  {
    goto LABEL_6;
  }

  result = sub_219BF7514();
  __break(1u);
  return result;
}

uint64_t sub_218BC034C(uint64_t a1)
{
  v2 = v1;
  v74 = a1;
  v3 = sub_219BDBD34();
  v64 = *(v3 - 8);
  v65 = v3;
  MEMORY[0x28223BE20](v3);
  v63 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_219BE1574();
  v57 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_219BE9C04();
  v49 = *(v54 - 8);
  v6 = MEMORY[0x28223BE20](v54);
  v53 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v52 = &v47 - v8;
  v9 = sub_219BDF244();
  v60 = *(v9 - 8);
  v61 = v9;
  MEMORY[0x28223BE20](v9);
  v58 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_219BDEFE4();
  v51 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_219BE12E4();
  v62 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v72 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_219BDF104();
  v59 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v70 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BDDA34();
  v16 = [v15 sourceChannel];

  sub_219BE01F4();
  swift_unknownObjectRelease();
  v17 = [*(v2 + 168) cachedSubscription];
  sub_219BE12D4();
  v69 = *(v2 + 16);
  v18 = sub_219BDDA34();
  v19 = [v18 identifier];
  sub_219BF5414();

  [v18 isPaid];
  v20 = [v18 totalTime];
  sub_219BF5414();

  sub_219BDEFB4();
  sub_218BD3220(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v68 = v21;
  v22 = sub_219BDCD44();
  v23 = *(v22 - 8);
  v66 = *(v23 + 72);
  v24 = *(v23 + 80);
  v25 = (v24 + 32) & ~v24;
  v26 = swift_allocObject();
  v75 = xmmword_219C09BA0;
  *(v26 + 16) = xmmword_219C09BA0;
  v27 = *MEMORY[0x277CEAD18];
  v48 = *(v23 + 104);
  v67 = v27;
  v48(v26 + v25, v27, v22);
  sub_218BD31D8(&qword_280EE8900, 255, MEMORY[0x277D2D798]);
  v28 = v50;
  sub_219BDD1F4();

  (*(v51 + 8))(v12, v28);
  v29 = swift_allocObject();
  *(v29 + 16) = v75;
  v30 = v27;
  v31 = v48;
  v48(v29 + v25, v30, v22);
  sub_218BD31D8(&unk_280EE8890, 255, MEMORY[0x277D2D8B8]);
  sub_219BDD1F4();

  v50 = v24;
  v32 = swift_allocObject();
  *(v32 + 16) = v75;
  v51 = v25;
  v31(v32 + v25, v67, v22);
  sub_218BD31D8(&qword_280EE8090, 255, MEMORY[0x277D2F130]);
  sub_219BDD1F4();

  v33 = v52;
  sub_219BE8F44();
  v34 = v54;
  v35 = v49;
  v36 = v53;
  (*(v49 + 32))(v53, v33, v54);
  v37 = (*(v35 + 88))(v36, v34);
  if (v37 == *MEMORY[0x277D6E830])
  {
    (*(v57 + 104))(v55, *MEMORY[0x277D2F428], v56);
  }

  else
  {
    v38 = *(v57 + 104);
    if (v37 == *MEMORY[0x277D6E840] || v37 == *MEMORY[0x277D6E848] || v37 == *MEMORY[0x277D6E838])
    {
      v38(v55, *MEMORY[0x277D2F420], v56);
    }

    else
    {
      v38(v55, *MEMORY[0x277D2F430], v56);
      (*(v35 + 8))(v36, v34);
    }
  }

  v39 = v51;
  v40 = v58;
  sub_219BDF234();
  v41 = swift_allocObject();
  *(v41 + 16) = v75;
  v31(v41 + v39, v67, v22);
  sub_218BD31D8(&qword_280EE8810, 255, MEMORY[0x277D2D9A8]);
  v42 = v61;
  sub_219BDD1F4();

  (*(v60 + 8))(v40, v42);
  sub_219BDFC64();
  v43 = v63;
  sub_219BE8F64();
  sub_218BD31D8(&qword_27CC0EC50, 255, MEMORY[0x277D2E008]);
  sub_219BDD174();
  v44 = v65;
  v45 = *(v64 + 8);
  v45(v43, v65);
  sub_219BE8F54();
  sub_219BDD194();
  v45(v43, v44);
  (*(v62 + 8))(v72, v73);
  return (*(v59 + 8))(v70, v71);
}

uint64_t sub_218BC0E6C(unint64_t a1)
{
  sub_218B59134(0);
  v174 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v176 = v169 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = v4;
  MEMORY[0x28223BE20](v3);
  v183 = v169 - v5;
  v173 = sub_219BF04A4();
  v172 = *(v173 - 8);
  MEMORY[0x28223BE20](v173);
  v171 = v169 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB018();
  v182 = v7;
  v181 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v180 = v169 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = sub_219BF0B74();
  v178 = *(v179 - 8);
  MEMORY[0x28223BE20](v179);
  v177 = v169 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB308();
  v191 = v10;
  v190 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v189 = v169 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD3734();
  v236 = v12;
  v194 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v192 = v13;
  v193 = v169 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = sub_219BF0F34();
  v185 = *(v186 - 8);
  MEMORY[0x28223BE20](v186);
  v184 = v169 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAB88();
  v208 = v15;
  v214 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v188 = v169 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = v17;
  MEMORY[0x28223BE20](v16);
  v207 = v169 - v18;
  v218 = sub_219BDD7A4();
  v229 = *(v218 - 8);
  MEMORY[0x28223BE20](v218);
  v219 = v169 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD3220(0, &unk_280EE8380, MEMORY[0x277D2E6C8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v20 - 8);
  v197 = v169 - v21;
  v211 = sub_219BE16E4();
  v210 = *(v211 - 8);
  MEMORY[0x28223BE20](v211);
  v216 = v169 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = sub_219BDE814();
  v212 = *(v213 - 8);
  v23 = MEMORY[0x28223BE20](v213);
  v204 = v169 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v202 = v169 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v231 = v169 - v28;
  MEMORY[0x28223BE20](v27);
  v209 = v169 - v29;
  sub_218B58F30(0);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v206 = v169 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v228 = v169 - v33;
  sub_218B58900(0);
  MEMORY[0x28223BE20](v34 - 8);
  v224 = v169 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v226 = sub_219BDF584();
  v223 = *(v226 - 8);
  v36 = MEMORY[0x28223BE20](v226);
  v215 = v169 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v220 = v169 - v38;
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v39);
  v205 = v169 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD3378();
  v42 = v41;
  v43 = *(v41 - 8);
  v44 = MEMORY[0x28223BE20](v41);
  v222 = v169 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v47 = v169 - v46;
  sub_218BD3284();
  v49 = v48;
  v50 = *(v48 - 8);
  v51 = MEMORY[0x28223BE20](v48);
  v221 = v169 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v54 = v169 - v53;
  sub_218BD3828(0);
  MEMORY[0x28223BE20](v55 - 8);
  v57 = v169 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD34A8();
  v59 = v58;
  v233 = *(v58 - 1);
  MEMORY[0x28223BE20](v58);
  v235 = v169 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = swift_allocBox();
  v62 = v61;
  v63 = sub_219BE16D4();
  v64 = *(v63 - 8);
  v65 = *(v64 + 56);
  v196 = v62;
  v200 = v63;
  v199 = v65;
  v198 = v64 + 56;
  (v65)(v62, 1, 1);
  sub_219BE7594();
  v234 = a1;
  sub_219BE7564();
  sub_219BE5F84();
  v66 = *(v43 + 8);
  v225 = v42;
  v227 = v43 + 8;
  v217 = v66;
  v66(v47, v42);
  sub_219BEB244();

  v67 = *(v50 + 8);
  v68 = v54;
  v69 = v233;
  v203 = v49;
  v70 = v49;
  v71 = v59;
  v201 = v50 + 8;
  v67(v68, v70);
  if ((*(v69 + 48))(v57, 1, v59) == 1)
  {
    sub_218BD359C(v57, sub_218BD3828);
    v72 = v236;
    v73 = v232;
    v74 = v219;
    v75 = v218;
    v76 = v234;
    v77 = v217;
    goto LABEL_20;
  }

  v170 = v67;
  v78 = v235;
  (*(v69 + 32))(v235, v57, v59);
  sub_219BE7594();
  v79 = v223;
  v80 = v220;
  v81 = v226;
  (*(v223 + 104))(v220, *MEMORY[0x277D2DB48], v226);
  v82 = sub_219BE97D4();
  v83 = v224;
  (*(*(v82 - 8) + 56))(v224, 1, 1, v82);
  v84 = sub_219BDF474();
  (*(*(v84 - 8) + 56))(v228, 1, 1, v84);
  result = sub_218E65F90();
  v195 = result;
  if ((v86 & 1) == 0)
  {
    v169[1] = sub_21968FE54(v83, v78);
    (*(v79 + 16))(v215, v80, v81);
    v87 = v209;
    sub_219BE6934();
    v88 = v212;
    v89 = *(v212 + 32);
    v90 = v231;
    v91 = v87;
    v92 = v213;
    v89(v231, v91, v213);
    v93 = *(v88 + 88);
    v94 = v93(v90, v92);
    v95 = *MEMORY[0x277D30158];
    if (v94 == *MEMORY[0x277D30158])
    {
      (*(v210 + 104))(v216, *MEMORY[0x277D2F608], v211);
    }

    else if (v94 == *MEMORY[0x277D30150])
    {
      (*(v210 + 104))(v216, *MEMORY[0x277D2F6E8], v211);
    }

    else
    {
      if (v94 == *MEMORY[0x277D30168])
      {
        v96 = MEMORY[0x277D2F6C8];
      }

      else
      {
        v96 = MEMORY[0x277D2F818];
      }

      (*(v210 + 104))(v216, *v96, v211);
    }

    v97 = *(v88 + 8);
    v97(v231, v92);
    result = sub_219BE6944();
    if (v195 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v195 <= 0x7FFFFFFF)
    {
      v211 = v98;
      v212 = result;
      v99 = v71;
      v100 = v202;
      v231 = v99;
      sub_219BE6934();
      v101 = v204;
      v89(v204, v100, v92);
      v102 = v93(v101, v92);
      if (v102 == v95 || v102 == *MEMORY[0x277D30150] || v102 == *MEMORY[0x277D30168])
      {
        v97(v101, v92);
        v107 = *MEMORY[0x277D2E6B0];
        v105 = sub_219BE0674();
        v106 = v197;
        (*(*(v105 - 8) + 104))(v197, v107, v105);
      }

      else
      {
        v103 = *MEMORY[0x277D2E6C0];
        v104 = v101;
        v105 = sub_219BE0674();
        v106 = v197;
        (*(*(v105 - 8) + 104))(v197, v103, v105);
        v97(v104, v92);
      }

      v76 = v234;
      v72 = v236;
      v74 = v219;
      v75 = v218;
      v108 = v196;
      v77 = v217;
      sub_219BE0674();
      (*(*(v105 - 8) + 56))(v106, 0, 1, v105);
      v109 = v228;
      sub_218BD7CF0(v228, v206, sub_218B58F30);
      v110 = v205;
      sub_219BE15E4();
      sub_218BD359C(v109, sub_218B58F30);
      sub_218BD359C(v224, sub_218B58900);
      (*(v223 + 8))(v220, v226);
      v170(v221, v203);
      (*(v233 + 8))(v235, v231);
      v199(v110, 0, 1, v200);
      sub_218B58ECC(v110, v108);
      v73 = v232;
LABEL_20:
      v111 = v222;
      sub_219BE7564();
      v112 = v225;
      sub_219BE5FC4();
      v77(v111, v112);
      v113 = v229;
      v114 = (*(v229 + 88))(v74, v75);
      if (v114 != *MEMORY[0x277D2FAC8])
      {
        if (v114 == *MEMORY[0x277D2FAD8])
        {
          (*(v113 + 96))(v74, v75);
          v115 = *(v214 + 32);
          v233 = v214 + 32;
          v235 = v115;
          v116 = v207;
          (v115)(v207, v74, v208);
          v117 = v184;
          sub_219BF07D4();
          v118 = sub_219BF0F14();
          v231 = v118;
          (*(v185 + 8))(v117, v186);
          v119 = v76;
          __swift_project_boxed_opaque_existential_1((v73 + 88), *(v73 + 112));
          v120 = v73;
          v121 = [v118 identifier];
          sub_219BF5414();

          LODWORD(v228) = sub_219BF4774();

          v229 = *(v120 + 16);
          v122 = v194;
          v123 = v72;
          v124 = v193;
          (*(v194 + 16))(v193, v119, v123);
          v125 = v214;
          v126 = v188;
          v127 = v208;
          (*(v214 + 16))(v188, v116, v208);
          v128 = (*(v122 + 80) + 16) & ~*(v122 + 80);
          v129 = (v192 + v128 + 7) & 0xFFFFFFFFFFFFFFF8;
          v234 = (v129 + 15) & 0xFFFFFFFFFFFFFFF8;
          v130 = (v129 + 31) & 0xFFFFFFFFFFFFFFF8;
          v131 = (*(v125 + 80) + v130 + 8) & ~*(v125 + 80);
          v132 = swift_allocObject();
          (*(v122 + 32))(v132 + v128, v124, v123);
          v133 = v230;
          *(v132 + v129) = v231;
          v134 = v132 + v234;
          *v134 = v232;
          *(v134 + 8) = v228 & 1;
          *(v132 + v130) = v133;
          (v235)(v132 + v131, v126, v127);
          swift_unknownObjectRetain();

          sub_219BDD154();
          swift_unknownObjectRelease();

          (*(v214 + 8))(v207, v127);
        }

        if (v114 == *MEMORY[0x277D2FAD0])
        {
          (*(v113 + 96))(v74, v75);
          (*(v190 + 32))(v189, v74, v191);
          v135 = v177;
          sub_219BF07D4();
          v136 = sub_219BF0B44();
          (*(v178 + 8))(v135, v179);
          __swift_project_boxed_opaque_existential_1((v73 + 88), *(v73 + 112));
          v137 = v73;
          v138 = [v136 identifier];
          sub_219BF5414();

          LODWORD(v233) = sub_219BF4774();

          v235 = *(v137 + 16);
          v139 = v194;
          v140 = v193;
          (*(v194 + 16))(v193, v76, v72);
          v141 = (*(v139 + 80) + 16) & ~*(v139 + 80);
          v142 = (v192 + v141 + 7) & 0xFFFFFFFFFFFFFFF8;
          v143 = swift_allocObject();
          (*(v139 + 32))(v143 + v141, v140, v72);
          *(v143 + v142) = v136;
          v144 = v143 + ((v142 + 15) & 0xFFFFFFFFFFFFFFF8);
          *v144 = v137;
          *(v144 + 8) = v233 & 1;
          *(v143 + ((v142 + 31) & 0xFFFFFFFFFFFFFFF8)) = v230;

          v145 = v136;
          sub_219BDD154();

          (*(v190 + 8))(v189, v191);
        }

        if (v114 == *MEMORY[0x277D2FAB0])
        {
          (*(v113 + 96))(v74, v75);
          (*(v181 + 32))(v180, v74, v182);
          v146 = v171;
          sub_219BF07D4();
          v147 = sub_219BF0404();
          (*(v172 + 8))(v146, v173);
          sub_218718690(v73 + 128, &v237);
          v148 = v238;
          v149 = __swift_project_boxed_opaque_existential_1(&v237, v238);
          v235 = v147;
          v150 = [v147 dismissingIdentifier];
          if (v150)
          {
            v151 = v150;
            v152 = sub_219BF5414();
            v154 = v153;
          }

          else
          {
            v152 = 0;
            v154 = 0;
          }

          MEMORY[0x28223BE20](v150);
          v156 = v169 - ((v155 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v157 + 16))(v156, v149, v148);
          v158 = v183;
          sub_218A75968(v152, v154, v156, v148, v183);
          __swift_destroy_boxed_opaque_existential_1(&v237);
          v159 = v194;
          v160 = v193;
          v161 = v236;
          (*(v194 + 16))(v193, v234, v236);
          v162 = v158;
          v163 = v176;
          sub_218BD7CF0(v162, v176, sub_218B59134);
          v164 = (*(v159 + 80) + 16) & ~*(v159 + 80);
          v165 = (v192 + v164 + 7) & 0xFFFFFFFFFFFFFFF8;
          v166 = (v165 + 15) & 0xFFFFFFFFFFFFFFF8;
          v167 = (*(v174 + 80) + v166 + 8) & ~*(v174 + 80);
          v168 = swift_allocObject();
          (*(v159 + 32))(v168 + v164, v160, v161);
          *(v168 + v165) = v235;
          *(v168 + v166) = v230;
          sub_218BD385C(v163, v168 + v167);

          swift_unknownObjectRetain();
          sub_219BDD154();
          swift_unknownObjectRelease();

          sub_218BD359C(v183, sub_218B59134);
          (*(v181 + 8))(v180, v182);
        }
      }

      (*(v113 + 8))(v74, v75);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218BC29E4(uint64_t a1)
{
  sub_218BD30E4();
  v3 = v2;
  v209 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v206 = v4;
  v207 = &v189 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = sub_219BDEFE4();
  v208 = *(v225 - 8);
  v5 = MEMORY[0x28223BE20](v225);
  v205 = &v189 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = v6;
  MEMORY[0x28223BE20](v5);
  v224 = &v189 - v7;
  sub_218BD3220(0, &unk_280EE8380, MEMORY[0x277D2E6C8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v201 = &v189 - v9;
  v213 = sub_219BE16E4();
  v212 = *(v213 - 8);
  MEMORY[0x28223BE20](v213);
  v228 = &v189 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = sub_219BDE814();
  v241 = *(v220 - 8);
  v11 = MEMORY[0x28223BE20](v220);
  v196 = &v189 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v195 = &v189 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v211 = &v189 - v16;
  MEMORY[0x28223BE20](v15);
  v210 = &v189 - v17;
  sub_218B58F30(0);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v199 = &v189 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v233 = &v189 - v21;
  v232 = sub_219BDF584();
  v231 = *(v232 - 8);
  v22 = MEMORY[0x28223BE20](v232);
  v227 = &v189 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v230 = &v189 - v24;
  sub_218BD3284();
  v198 = v25;
  v197 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v229 = &v189 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = sub_219BE16D4();
  v202 = *(v223 - 8);
  v27 = MEMORY[0x28223BE20](v223);
  v221 = &v189 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = v28;
  MEMORY[0x28223BE20](v27);
  v222 = &v189 - v29;
  v278 = sub_219BDD374();
  v258 = *(v278 - 8);
  MEMORY[0x28223BE20](v278);
  v277 = &v189 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v256 = sub_219BDEE04();
  v257 = *(v256 - 8);
  MEMORY[0x28223BE20](v256);
  v255 = &v189 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = sub_219BF04A4();
  v279 = *(v215 - 8);
  MEMORY[0x28223BE20](v215);
  v214 = &v189 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB018();
  v239 = v33;
  v276 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v238 = &v189 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = sub_219BF0B74();
  v275 = *(v237 - 8);
  MEMORY[0x28223BE20](v237);
  v236 = &v189 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB308();
  v251 = v36;
  v274 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v250 = &v189 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v249 = sub_219BF0F34();
  v267 = *(v249 - 8);
  MEMORY[0x28223BE20](v249);
  v248 = &v189 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAB88();
  v247 = v39;
  v264 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v246 = &v189 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_219BDD7A4();
  v266 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v43 = (&v189 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218BD3378();
  v273 = v44;
  v270 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v272 = &v189 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD3410();
  v47 = v46 - 8;
  MEMORY[0x28223BE20](v46);
  v49 = &v189 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58900(0);
  MEMORY[0x28223BE20](v50 - 8);
  v52 = &v189 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD34A8();
  v54 = v53;
  v55 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v57 = &v189 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE8EF4();
  v226 = v52;
  v235 = v3;
  v234 = a1;
  sub_219BE8F24();
  v58 = MEMORY[0x277D84F90];
  v281 = MEMORY[0x277D84F90];
  v282 = MEMORY[0x277D84F90];
  v194 = v55;
  v59 = v49;
  (*(v55 + 16))(v49, v57, v54);
  v60 = *(v47 + 44);
  v61 = sub_218BD31D8(&qword_27CC0EC18, 255, sub_218BD34A8);
  v240 = v57;
  sub_219BF5DF4();
  sub_219BF5E84();
  v62 = *(v59 + v60);
  v254 = v58;
  v265 = v54;
  if (v62 != v280)
  {
    v81 = v270++;
    v271 = (v81 + 2);
    v269 = (v266 + 11);
    v268 = *MEMORY[0x277D2FAC8];
    v259 = *MEMORY[0x277D2FAD8];
    v245 = *MEMORY[0x277D2FAD0];
    v193 = v266 + 1;
    v266 += 12;
    v192 = (v276 + 32);
    v191 = (v279 + 8);
    v190 = (v276 + 8);
    v219 = (v274 + 32);
    v218 = (v275 + 8);
    v217 = (v274 + 8);
    v216 = *MEMORY[0x277D2FAB0];
    v244 = (v264 + 32);
    v243 = (v267 + 8);
    v242 = (v264 + 8);
    v253 = v257 + 16;
    v252 = (v257 + 8);
    v275 = (v258 + 8);
    v276 = v258 + 16;
    v254 = MEMORY[0x277D84F90];
    v264 = v41;
    v263 = v43;
    v267 = v59;
    v261 = v60;
    v260 = v61;
    do
    {
      v82 = sub_219BF5EC4();
      v83 = v272;
      v84 = v273;
      (*v271)(v272);
      v82(&v280, 0);
      sub_219BF5E94();
      sub_219BE5FC4();
      (*v270)(v83, v84);
      v85 = (*v269)(v43, v41);
      if (v85 == v268)
      {
        (*v266)(v43, v41);
        v86 = *v43;
        v87 = sub_219BE5B44();
        v88 = *(v87 + 16);
        v274 = v86;
        if (v88)
        {
          v280 = MEMORY[0x277D84F90];
          sub_219BF73F4();
          v89 = (*(v257 + 80) + 32) & ~*(v257 + 80);
          v262 = v87;
          v90 = v87 + v89;
          v279 = *(v257 + 72);
          v91 = *(v257 + 16);
          v92 = v256;
          v93 = v255;
          v94 = v252;
          do
          {
            v91(v93, v90, v92);
            sub_219BDEDF4();
            (*v94)(v93, v92);
            sub_219BF73D4();
            sub_219BF7414();
            sub_219BF7424();
            sub_219BF73E4();
            v90 += v279;
            --v88;
          }

          while (v88);

          v95 = v280;
          v41 = v264;
          v43 = v263;
        }

        else
        {

          v95 = MEMORY[0x277D84F90];
        }

        sub_2191ED6C8(v95);
        v110 = sub_219BE5B34();
        v111 = *(v110 + 16);
        if (v111)
        {
          v280 = MEMORY[0x277D84F90];
          sub_21870B65C(0, v111, 0);
          v112 = v280;
          v113 = (*(v258 + 80) + 32) & ~*(v258 + 80);
          v262 = v110;
          v114 = v110 + v113;
          v279 = *(v258 + 72);
          v115 = *(v258 + 16);
          do
          {
            v117 = v277;
            v116 = v278;
            v115(v277, v114, v278);
            v118 = sub_219BDD364();
            v119 = [v118 identifier];
            v120 = sub_219BF5414();
            v122 = v121;

            (*v275)(v117, v116);
            v280 = v112;
            v124 = *(v112 + 16);
            v123 = *(v112 + 24);
            if (v124 >= v123 >> 1)
            {
              sub_21870B65C((v123 > 1), v124 + 1, 1);
              v112 = v280;
            }

            *(v112 + 16) = v124 + 1;
            v125 = v112 + 16 * v124;
            *(v125 + 32) = v120;
            *(v125 + 40) = v122;
            v114 += v279;
            --v111;
          }

          while (v111);

          v41 = v264;
          v43 = v263;
        }

        else
        {

          v112 = MEMORY[0x277D84F90];
        }

        sub_2191ED3E8(v112);

        v59 = v267;
        v60 = v261;
      }

      else if (v85 == v259)
      {
        (*v266)(v43, v41);
        v96 = v246;
        v97 = v247;
        (*v244)(v246, v43, v247);
        v98 = v248;
        sub_219BF07D4();
        sub_219BF0F14();
        v99 = (*v243)(v98, v249);
        MEMORY[0x21CECC690](v99);
        if (*((v282 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v282 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_219BF5A14();
        }

        sub_219BF5A54();
        (*v242)(v96, v97);
        v59 = v267;
      }

      else if (v85 == v245)
      {
        (*v266)(v43, v41);
        (*v219)(v250, v43, v251);
        v100 = v236;
        sub_219BF07D4();
        v101 = sub_219BF0B44();
        (*v218)(v100, v237);
        v102 = [v101 identifier];

        v103 = sub_219BF5414();
        v105 = v104;

        v106 = v281;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v106 = sub_218840D24(0, *(v106 + 2) + 1, 1, v106);
        }

        v108 = *(v106 + 2);
        v107 = *(v106 + 3);
        if (v108 >= v107 >> 1)
        {
          v106 = sub_218840D24((v107 > 1), v108 + 1, 1, v106);
        }

        (*v217)(v250, v251);
        *(v106 + 2) = v108 + 1;
        v109 = &v106[16 * v108];
        *(v109 + 4) = v103;
        *(v109 + 5) = v105;
        v281 = v106;
        v59 = v267;
      }

      else if (v85 == v216)
      {
        (*v266)(v43, v41);
        (*v192)(v238, v43, v239);
        v126 = v214;
        sub_219BF07D4();
        v127 = sub_219BF0404();
        (*v191)(v126, v215);
        v128 = [v127 identifier];
        swift_unknownObjectRelease();
        v129 = sub_219BF5414();
        v131 = v130;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v254 = sub_218840D24(0, *(v254 + 2) + 1, 1, v254);
        }

        v133 = *(v254 + 2);
        v132 = *(v254 + 3);
        if (v133 >= v132 >> 1)
        {
          v254 = sub_218840D24((v132 > 1), v133 + 1, 1, v254);
        }

        (*v190)(v238, v239);
        v134 = v254;
        *(v254 + 2) = v133 + 1;
        v135 = &v134[16 * v133];
        *(v135 + 4) = v129;
        *(v135 + 5) = v131;
        v59 = v267;
      }

      else
      {
        (*v193)(v43, v41);
      }

      sub_219BF5E84();
    }

    while (*(v59 + v60) != v280);
  }

  sub_218BD359C(v59, sub_218BD3410);
  sub_219BE8F04();
  v63 = v231;
  v64 = v230;
  v65 = v232;
  (*(v231 + 104))(v230, *MEMORY[0x277D2DB48], v232);
  v67 = v281;
  v66 = v282;
  v68 = sub_219BDF474();
  (*(*(v68 - 8) + 56))(v233, 1, 1, v68);
  v69 = v240;
  result = sub_218E65F90();
  if (v71)
  {
    goto LABEL_74;
  }

  v72 = result;
  LODWORD(v279) = sub_21968FE54(v226, v69);
  (*(v63 + 16))(v227, v64, v65);
  v73 = v210;
  sub_219BE6934();
  v74 = v241;
  v75 = (v241 + 32);
  v76 = *(v241 + 32);
  v77 = v211;
  v78 = v73;
  v79 = v220;
  v76(v211, v78, v220);
  v277 = *(v74 + 88);
  v278 = v74 + 88;
  v80 = (v277)(v77, v79);
  LODWORD(v276) = *MEMORY[0x277D30158];
  if (v80 == v276)
  {
    (*(v212 + 104))(v228, *MEMORY[0x277D2F608], v213);
  }

  else if (v80 == *MEMORY[0x277D30150])
  {
    (*(v212 + 104))(v228, *MEMORY[0x277D2F6E8], v213);
  }

  else
  {
    if (v80 == *MEMORY[0x277D30168])
    {
      v136 = MEMORY[0x277D2F6C8];
    }

    else
    {
      v136 = MEMORY[0x277D2F818];
    }

    (*(v212 + 104))(v228, *v136, v213);
  }

  v138 = *(v74 + 8);
  v137 = v74 + 8;
  v275 = v138;
  (v138)(v77, v79);
  v139 = sub_219BE6944();
  if (v72 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_71;
  }

  if (v72 > 0x7FFFFFFF)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v272 = v76;
  v241 = v137;
  v273 = v140;
  v274 = v139;
  if (!(v66 >> 62))
  {
    v141 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_48;
  }

LABEL_72:
  v141 = sub_219BF7214();
LABEL_48:
  if (v141)
  {
    v280 = MEMORY[0x277D84F90];
    result = sub_21870B65C(0, v141 & ~(v141 >> 63), 0);
    if ((v141 & 0x8000000000000000) == 0)
    {
      v269 = v75;
      v270 = v72;
      v271 = v67;
      v142 = v280;
      if ((v66 & 0xC000000000000001) != 0)
      {
        v143 = 0;
        do
        {
          MEMORY[0x21CECE0F0](v143, v66);
          v144 = [swift_unknownObjectRetain() articleID];
          v145 = sub_219BF5414();
          v147 = v146;
          swift_unknownObjectRelease_n();

          v280 = v142;
          v149 = *(v142 + 16);
          v148 = *(v142 + 24);
          if (v149 >= v148 >> 1)
          {
            sub_21870B65C((v148 > 1), v149 + 1, 1);
            v142 = v280;
          }

          ++v143;
          *(v142 + 16) = v149 + 1;
          v150 = v142 + 16 * v149;
          *(v150 + 32) = v145;
          *(v150 + 40) = v147;
        }

        while (v141 != v143);
      }

      else
      {
        v152 = v66 + 32;
        do
        {
          v153 = [swift_unknownObjectRetain_n() articleID];
          v154 = sub_219BF5414();
          v156 = v155;
          swift_unknownObjectRelease_n();

          v280 = v142;
          v158 = *(v142 + 16);
          v157 = *(v142 + 24);
          if (v158 >= v157 >> 1)
          {
            sub_21870B65C((v157 > 1), v158 + 1, 1);
            v142 = v280;
          }

          *(v142 + 16) = v158 + 1;
          v159 = v142 + 16 * v158;
          *(v159 + 32) = v154;
          *(v159 + 40) = v156;
          v152 += 8;
          --v141;
        }

        while (v141);
      }

      v151 = v201;
      v79 = v220;
      goto LABEL_62;
    }

    __break(1u);
LABEL_74:
    __break(1u);
    return result;
  }

  v151 = v201;
LABEL_62:
  v160 = v195;
  sub_219BE6934();
  v161 = v196;
  (v272)(v196, v160, v79);
  v162 = (v277)(v161, v79);
  if (v162 == v276 || (v162 != *MEMORY[0x277D30150] ? (v163 = v162 == *MEMORY[0x277D30168]) : (v163 = 1), v163))
  {
    (v275)(v161, v79);
    v167 = *MEMORY[0x277D2E6B0];
    v166 = sub_219BE0674();
    (*(*(v166 - 8) + 104))(v151, v167, v166);
  }

  else
  {
    v164 = *MEMORY[0x277D2E6C0];
    v165 = v161;
    v166 = sub_219BE0674();
    (*(*(v166 - 8) + 104))(v151, v164, v166);
    (v275)(v165, v79);
  }

  sub_219BE0674();
  (*(*(v166 - 8) + 56))(v151, 0, 1, v166);
  v168 = v233;
  sub_218BD7CF0(v233, v199, sub_218B58F30);
  v169 = v222;
  sub_219BE15E4();

  sub_218BD359C(v168, sub_218B58F30);
  (*(v231 + 8))(v230, v232);
  (*(v197 + 8))(v229, v198);
  v170 = v204;
  v171 = sub_219BDDA34();
  v172 = [v171 identifier];
  sub_219BF5414();

  [v171 isPaid];
  v173 = [v171 totalTime];
  sub_219BF5414();

  v174 = v224;
  sub_219BDEFB4();

  v279 = *(v170 + 16);
  v175 = v202;
  (*(v202 + 16))(v221, v169, v223);
  v176 = v208;
  v177 = v205;
  (*(v208 + 16))(v205, v174, v225);
  v178 = v209;
  v179 = v207;
  v180 = v235;
  (*(v209 + 16))(v207, v234, v235);
  v181 = (*(v175 + 80) + 16) & ~*(v175 + 80);
  v182 = (v200 + *(v176 + 80) + v181) & ~*(v176 + 80);
  v183 = (v203 + *(v178 + 80) + v182) & ~*(v178 + 80);
  v184 = swift_allocObject();
  v185 = v184 + v181;
  v186 = v223;
  (*(v175 + 32))(v185, v221, v223);
  v187 = v184 + v182;
  v188 = v225;
  (*(v176 + 32))(v187, v177, v225);
  (*(v178 + 32))(v184 + v183, v179, v180);
  sub_219BDD154();

  (*(v176 + 8))(v224, v188);
  (*(v175 + 8))(v222, v186);
  sub_218BD359C(v226, sub_218B58900);
  return (*(v194 + 8))(v240, v265);
}

uint64_t sub_218BC4A78(uint64_t a1, char *a2, uint64_t a3)
{
  v381 = a3;
  v378 = a2;
  v340 = a1;
  sub_218B58D38(0);
  v341 = v4;
  v293 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v292 = v5;
  v297 = &v274 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59134(0);
  v289 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v287 = &v274 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v291 = &v274 - v10;
  v290 = v11;
  MEMORY[0x28223BE20](v9);
  v295 = &v274 - v12;
  v330 = sub_219BF0614();
  v331 = *(v330 - 8);
  MEMORY[0x28223BE20](v330);
  v329 = &v274 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58CA4();
  v325 = v14;
  v324 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v323 = &v274 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD3220(0, &unk_280EE8380, MEMORY[0x277D2E6C8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v16 - 8);
  v309 = &v274 - v17;
  v312 = sub_219BE16E4();
  v311 = *(v312 - 8);
  MEMORY[0x28223BE20](v312);
  v318 = &v274 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v317 = sub_219BDE814();
  v346 = *(v317 - 8);
  v19 = MEMORY[0x28223BE20](v317);
  v306 = &v274 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v305 = &v274 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v333 = &v274 - v24;
  MEMORY[0x28223BE20](v23);
  v310 = &v274 - v25;
  sub_218B58F30(0);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v308 = &v274 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v322 = &v274 - v29;
  sub_218B58900(0);
  MEMORY[0x28223BE20](v30 - 8);
  v338 = &v274 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v321 = sub_219BDF584();
  v320 = *(v321 - 8);
  v32 = MEMORY[0x28223BE20](v321);
  v316 = &v274 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v319 = &v274 - v34;
  sub_218B58D58(0);
  v377 = v35;
  MEMORY[0x28223BE20](v35);
  v307 = &v274 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v380 = sub_219BDD374();
  v359 = *(v380 - 1);
  MEMORY[0x28223BE20](v380);
  v379 = &v274 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v357 = sub_219BDEE04();
  v358 = *(v357 - 8);
  MEMORY[0x28223BE20](v357);
  v356 = &v274 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v314 = sub_219BF04A4();
  v303 = *(v314 - 8);
  v39 = MEMORY[0x28223BE20](v314);
  v286 = &v274 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v288 = &v274 - v42;
  v285 = v43;
  MEMORY[0x28223BE20](v41);
  v313 = &v274 - v44;
  sub_2186EB018();
  v336 = v45;
  v371 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v335 = &v274 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v355 = sub_219BF0F34();
  v304 = *(v355 - 8);
  v47 = MEMORY[0x28223BE20](v355);
  v294 = &v274 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v354 = &v274 - v49;
  sub_2186EAB88();
  v362 = v50;
  v361 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v353 = &v274 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v337 = sub_219BF0B74();
  v302 = *(v337 - 8);
  v52 = MEMORY[0x28223BE20](v337);
  v284 = &v274 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x28223BE20](v52);
  v332 = &v274 - v55;
  v283 = v56;
  MEMORY[0x28223BE20](v54);
  v334 = &v274 - v57;
  sub_2186EB308();
  v352 = v58;
  v349 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v351 = &v274 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v363 = sub_219BDD7A4();
  v364 = *(v363 - 8);
  MEMORY[0x28223BE20](v363);
  v374 = (&v274 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218BD3378();
  v373 = v61;
  v367 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v372 = &v274 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD3410();
  v64 = v63;
  MEMORY[0x28223BE20](v63);
  v375 = &v274 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD34A8();
  v67 = v66;
  v68 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v70 = &v274 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD3828(0);
  v72 = MEMORY[0x28223BE20](v71 - 8);
  v74 = &v274 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v72);
  v76 = &v274 - v75;
  sub_218BD3284();
  v78 = v77;
  v328 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v80 = &v274 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v296 = v3;
  v384 = v3[5];
  sub_218BD5CD4();
  sub_218BD31D8(&qword_27CC0EC68, 255, sub_218BD5CD4);
  sub_219BE7B94();
  v327 = v78;
  v347 = v80;
  sub_219BEB244();
  v81 = v68;
  v339 = swift_allocBox();
  v83 = v82;
  v84 = sub_219BE16D4();
  v85 = *(v84 - 8);
  v86 = *(v85 + 56);
  v87 = v85 + 56;
  v86(v83, 1, 1, v84);
  v326 = v76;
  sub_218BD7CF0(v76, v74, sub_218BD3828);
  if ((*(v81 + 48))(v74, 1, v67) == 1)
  {
    sub_218BD359C(v74, sub_218BD3828);
    goto LABEL_73;
  }

  v278 = v87;
  v279 = v86;
  v280 = v84;
  v281 = v83;
  (*(v81 + 32))(v70, v74, v67);
  v88 = MEMORY[0x277D84F90];
  v382 = MEMORY[0x277D84F90];
  v383 = MEMORY[0x277D84F90];
  v282 = v81;
  v89 = v375;
  (*(v81 + 16))(v375, v70, v67);
  v90 = *(v64 + 36);
  v91 = sub_218BD31D8(&qword_27CC0EC18, 255, sub_218BD34A8);
  v315 = v70;
  sub_219BF5DF4();
  v92 = v89;
  sub_219BF5E84();
  v93 = *&v90[v89];
  v350 = v88;
  v376 = v67;
  v94 = v362;
  v95 = v363;
  v96 = v374;
  if (v93 != v384)
  {
    v368 = (v367 + 2);
    ++v367;
    v366 = (v364 + 11);
    v277 = v364 + 1;
    v365 = *MEMORY[0x277D2FAC8];
    v360 = *MEMORY[0x277D2FAD8];
    v345 = *MEMORY[0x277D2FAD0];
    v364 += 12;
    v276 = (v371 + 32);
    v275 = (v303 + 8);
    v274 = (v371 + 8);
    v301 = (v349 + 32);
    v300 = (v302 + 8);
    v299 = (v349 + 8);
    v344 = (v361 + 32);
    v298 = *MEMORY[0x277D2FAB0];
    v343 = (v304 + 8);
    v342 = (v361 + 8);
    v377 = (v359 + 8);
    v378 = (v359 + 16);
    v350 = MEMORY[0x277D84F90];
    v369 = v91;
    v370 = v90;
    v349 = v358 + 16;
    v348 = (v358 + 8);
    do
    {
      v117 = v94;
      v118 = sub_219BF5EC4();
      v120 = v372;
      v119 = v373;
      (*v368)(v372);
      v118(&v384, 0);
      sub_219BF5E94();
      sub_219BE5FC4();
      (*v367)(v120, v119);
      v121 = (*v366)(v96, v95);
      if (v121 == v365)
      {
        (*v364)(v96, v95);
        v122 = *v96;
        v123 = sub_219BE5B44();
        v124 = *(v123 + 16);
        v371 = v122;
        if (v124)
        {
          v384 = MEMORY[0x277D84F90];
          sub_219BF73F4();
          v125 = (*(v358 + 80) + 32) & ~*(v358 + 80);
          v361 = v123;
          v126 = v123 + v125;
          v381 = *(v358 + 72);
          v127 = *(v358 + 16);
          v128 = v357;
          v129 = v356;
          v130 = v348;
          do
          {
            v127(v129, v126, v128);
            sub_219BDEDF4();
            (*v130)(v129, v128);
            sub_219BF73D4();
            sub_219BF7414();
            sub_219BF7424();
            sub_219BF73E4();
            v126 += v381;
            --v124;
          }

          while (v124);

          v131 = v384;
        }

        else
        {

          v131 = MEMORY[0x277D84F90];
        }

        sub_2191ED6C8(v131);
        v145 = sub_219BE5B34();
        v146 = *(v145 + 16);
        if (v146)
        {
          v384 = MEMORY[0x277D84F90];
          sub_21870B65C(0, v146, 0);
          v147 = v384;
          v148 = (*(v359 + 80) + 32) & ~*(v359 + 80);
          v361 = v145;
          v149 = v145 + v148;
          v381 = *(v359 + 72);
          v150 = *(v359 + 16);
          do
          {
            v151 = v379;
            v152 = v380;
            v150(v379, v149, v380);
            v153 = sub_219BDD364();
            v154 = [v153 identifier];
            v155 = sub_219BF5414();
            v157 = v156;

            (*v377)(v151, v152);
            v384 = v147;
            v159 = *(v147 + 16);
            v158 = *(v147 + 24);
            if (v159 >= v158 >> 1)
            {
              sub_21870B65C((v158 > 1), v159 + 1, 1);
              v147 = v384;
            }

            *(v147 + 16) = v159 + 1;
            v160 = v147 + 16 * v159;
            *(v160 + 32) = v155;
            *(v160 + 40) = v157;
            v149 += v381;
            --v146;
          }

          while (v146);
        }

        else
        {

          v147 = MEMORY[0x277D84F90];
        }

        sub_2191ED3E8(v147);

        v94 = v362;
        v95 = v363;
        v96 = v374;
        v92 = v375;
        v116 = v370;
        goto LABEL_9;
      }

      if (v121 == v360)
      {
        (*v364)(v96, v95);
        v94 = v117;
        v132 = v353;
        (*v344)();
        v133 = v354;
        sub_219BF07D4();
        sub_219BF0F14();
        v134 = (*v343)(v133, v355);
        MEMORY[0x21CECC690](v134);
        if (*((v382 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v382 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_219BF5A14();
        }

        sub_219BF5A54();
        (*v342)(v132, v94);
        v96 = v374;
      }

      else
      {
        v94 = v117;
        if (v121 == v345)
        {
          (*v364)(v96, v95);
          (*v301)(v351, v96, v352);
          v135 = v334;
          sub_219BF07D4();
          v136 = sub_219BF0B44();
          (*v300)(v135, v337);
          v137 = [v136 identifier];

          v138 = sub_219BF5414();
          v140 = v139;

          v141 = v383;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v141 = sub_218840D24(0, *(v141 + 2) + 1, 1, v141);
          }

          v143 = *(v141 + 2);
          v142 = *(v141 + 3);
          if (v143 >= v142 >> 1)
          {
            v141 = sub_218840D24((v142 > 1), v143 + 1, 1, v141);
          }

          (*v299)(v351, v352);
          *(v141 + 2) = v143 + 1;
          v144 = &v141[16 * v143];
          *(v144 + 4) = v138;
          *(v144 + 5) = v140;
          v383 = v141;
LABEL_40:
          v95 = v363;
          v96 = v374;
          v92 = v375;
          v116 = v370;
          goto LABEL_9;
        }

        if (v121 == v298)
        {
          (*v364)(v96, v95);
          (*v276)(v335, v96, v336);
          v161 = v313;
          sub_219BF07D4();
          v162 = sub_219BF0404();
          (*v275)(v161, v314);
          v163 = [v162 identifier];
          swift_unknownObjectRelease();
          v164 = sub_219BF5414();
          v166 = v165;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v350 = sub_218840D24(0, *(v350 + 2) + 1, 1, v350);
          }

          v168 = *(v350 + 2);
          v167 = *(v350 + 3);
          if (v168 >= v167 >> 1)
          {
            v350 = sub_218840D24((v167 > 1), v168 + 1, 1, v350);
          }

          (*v274)(v335, v336);
          v169 = v350;
          *(v350 + 2) = v168 + 1;
          v170 = &v169[16 * v168];
          *(v170 + 4) = v164;
          *(v170 + 5) = v166;
          goto LABEL_40;
        }

        (*v277)(v96, v95);
      }

      v92 = v375;
      v116 = v370;
LABEL_9:
      sub_219BF5E84();
    }

    while (*&v116[v92] != v384);
  }

  sub_218BD359C(v92, sub_218BD3410);
  v97 = v320;
  v98 = v319;
  v99 = v321;
  (*(v320 + 104))(v319, *MEMORY[0x277D2DB48], v321);
  v100 = v382;
  v380 = v383;
  v101 = sub_219BE97D4();
  v102 = v338;
  (*(*(v101 - 8) + 56))(v338, 1, 1, v101);
  v103 = sub_219BDF474();
  (*(*(v103 - 8) + 56))(v322, 1, 1, v103);
  v104 = v315;
  result = sub_218E65F90();
  if ((v106 & 1) == 0)
  {
    v107 = result;
    LODWORD(v379) = sub_21968FE54(v102, v104);
    (*(v97 + 16))(v316, v98, v99);
    v108 = v310;
    sub_219BE6934();
    v109 = v346;
    v111 = v346 + 32;
    v110 = *(v346 + 4);
    v112 = v333;
    v113 = v108;
    v114 = v317;
    v110(v333, v113, v317);
    v377 = *(v109 + 11);
    v378 = v109 + 88;
    v115 = v377(v112, v114);
    LODWORD(v375) = *MEMORY[0x277D30158];
    if (v115 == v375)
    {
      (*(v311 + 104))(v318, *MEMORY[0x277D2F608], v312);
    }

    else if (v115 == *MEMORY[0x277D30150])
    {
      (*(v311 + 104))(v318, *MEMORY[0x277D2F6E8], v312);
    }

    else
    {
      if (v115 == *MEMORY[0x277D30168])
      {
        v171 = MEMORY[0x277D2F6C8];
      }

      else
      {
        v171 = MEMORY[0x277D2F818];
      }

      (*(v311 + 104))(v318, *v171, v312);
    }

    v173 = *(v109 + 1);
    v172 = v109 + 8;
    v374 = v173;
    (v173)(v333, v114);
    v174 = sub_219BE6944();
    if (v107 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v107 <= 0x7FFFFFFF)
    {
      v114 = v174;
      v104 = v175;
      v371 = v110;
      v346 = v172;
      if (!(v100 >> 62))
      {
        v176 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_52:
        v381 = v107;
        v372 = v104;
        v373 = v114;
        if (v176)
        {
          v384 = MEMORY[0x277D84F90];
          v177 = &v384;
          v178 = sub_21870B65C(0, v176 & ~(v176 >> 63), 0);
          if (v176 < 0)
          {
            __break(1u);
            goto LABEL_103;
          }

          v370 = v111;
          v179 = v384;
          if ((v100 & 0xC000000000000001) != 0)
          {
            v180 = 0;
            do
            {
              MEMORY[0x21CECE0F0](v180, v100);
              v181 = [swift_unknownObjectRetain() articleID];
              v182 = sub_219BF5414();
              v184 = v183;
              swift_unknownObjectRelease_n();

              v384 = v179;
              v186 = *(v179 + 16);
              v185 = *(v179 + 24);
              if (v186 >= v185 >> 1)
              {
                sub_21870B65C((v185 > 1), v186 + 1, 1);
                v179 = v384;
              }

              ++v180;
              *(v179 + 16) = v186 + 1;
              v187 = v179 + 16 * v186;
              *(v187 + 32) = v182;
              *(v187 + 40) = v184;
            }

            while (v176 != v180);
          }

          else
          {
            v188 = v100 + 32;
            do
            {
              v189 = [swift_unknownObjectRetain_n() articleID];
              v190 = sub_219BF5414();
              v192 = v191;
              swift_unknownObjectRelease_n();

              v384 = v179;
              v194 = *(v179 + 16);
              v193 = *(v179 + 24);
              if (v194 >= v193 >> 1)
              {
                sub_21870B65C((v193 > 1), v194 + 1, 1);
                v179 = v384;
              }

              *(v179 + 16) = v194 + 1;
              v195 = v179 + 16 * v194;
              *(v195 + 32) = v190;
              *(v195 + 40) = v192;
              v188 += 8;
              --v176;
            }

            while (v176);
          }

          v102 = v338;
        }

        v196 = v305;
        sub_219BE6934();
        v197 = v306;
        v198 = v317;
        (v371)(v306, v196, v317);
        v199 = v377(v197, v198);
        v200 = v320;
        v201 = v319;
        if (v199 == v375 || (v199 != *MEMORY[0x277D30150] ? (v202 = v199 == *MEMORY[0x277D30168]) : (v202 = 1), v202))
        {
          (v374)(v197, v198);
          v210 = *MEMORY[0x277D2E6B0];
          v205 = sub_219BE0674();
          v209 = v309;
          (*(*(v205 - 8) + 104))(v309, v210, v205);
        }

        else
        {
          v203 = *MEMORY[0x277D2E6C0];
          v204 = v197;
          v205 = sub_219BE0674();
          v206 = v201;
          v207 = v309;
          (*(*(v205 - 8) + 104))(v309, v203, v205);
          v208 = v198;
          v209 = v207;
          v201 = v206;
          v102 = v338;
          (v374)(v204, v208);
        }

        sub_219BE0674();
        (*(*(v205 - 8) + 56))(v209, 0, 1, v205);
        v211 = v322;
        sub_218BD7CF0(v322, v308, sub_218B58F30);
        v212 = v307;
        sub_219BE15E4();

        sub_218BD359C(v211, sub_218B58F30);
        sub_218BD359C(v102, sub_218B58900);
        (*(v200 + 8))(v201, v321);
        (*(v282 + 8))(v315, v376);
        v279(v212, 0, 1, v280);
        sub_218B58ECC(v212, v281);
LABEL_73:
        v172 = v329;
        v213 = v332;
        v214 = v323;
        sub_219BE7564();
        v215 = v325;
        sub_219BE5FD4();
        (*(v324 + 8))(v214, v215);
        v100 = v331;
        v177 = v330;
        v178 = (*(v331 + 88))(v172, v330);
        if (v178 == *MEMORY[0x277D32DB8] || v178 == *MEMORY[0x277D32D10] || v178 == *MEMORY[0x277D32E00])
        {
          goto LABEL_76;
        }

        if (v178 == *MEMORY[0x277D32E10])
        {
          (*(v100 + 96))(v172, v177);
          (*(v304 + 32))(v294, v172, v355);
          v216 = sub_219BF0F14();
          sub_218718690((v296 + 16), &v384);
          v217 = v385;
          v218 = __swift_project_boxed_opaque_existential_1(&v384, v385);
          v219 = [v216 respondsToSelector_];
          v381 = v216;
          if ((v219 & 1) != 0 && (v219 = [v216 dismissingIdentifier]) != 0)
          {
            v220 = v219;
            v221 = sub_219BF5414();
            v223 = v222;
          }

          else
          {
            v221 = 0;
            v223 = 0;
          }

          MEMORY[0x28223BE20](v219);
          v232 = &v274 - ((v231 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v233 + 16))(v232, v218, v217);
          v234 = v295;
          sub_218A75968(v221, v223, v232, v217, v295);
          __swift_destroy_boxed_opaque_existential_1(&v384);
          v235 = v296;
          v380 = v296[2];
          v236 = v293;
          v237 = v341;
          (*(v293 + 16))(v297, v340, v341);
          v238 = v234;
          v239 = v291;
          sub_218BD7CF0(v238, v291, sub_218B59134);
          v240 = (*(v236 + 80) + 24) & ~*(v236 + 80);
          v241 = (v292 + v240 + 7) & 0xFFFFFFFFFFFFFFF8;
          v242 = (*(v289 + 80) + v241 + 8) & ~*(v289 + 80);
          v243 = (v290 + v242 + 7) & 0xFFFFFFFFFFFFFFF8;
          v244 = swift_allocObject();
          *(v244 + 16) = v381;
          (*(v236 + 32))(v244 + v240, v297, v237);
          *(v244 + v241) = v235;
          sub_218BD385C(v239, v244 + v242);
          *(v244 + v243) = v339;
          swift_unknownObjectRetain();

          sub_219BDD154();
          swift_unknownObjectRelease();

          sub_218BD359C(v295, sub_218B59134);
          (*(v304 + 8))(v294, v355);
          goto LABEL_90;
        }

        if (v178 == *MEMORY[0x277D32E18] || v178 == *MEMORY[0x277D32DD8] || v178 == *MEMORY[0x277D32CF8])
        {
          goto LABEL_76;
        }

        if (v178 == *MEMORY[0x277D32DC0])
        {
          (*(v100 + 96))(v172, v177);
          v380 = *(v303 + 32);
          v381 = v303 + 32;
          (v380)(v288, v172, v314);
          sub_218718690((v296 + 16), &v384);
          v224 = v385;
          v225 = __swift_project_boxed_opaque_existential_1(&v384, v385);
          v226 = [sub_219BF0404() dismissingIdentifier];
          v227 = swift_unknownObjectRelease();
          if (v226)
          {
            v228 = sub_219BF5414();
            v230 = v229;
          }

          else
          {
            v228 = 0;
            v230 = 0;
          }

          MEMORY[0x28223BE20](v227);
          v258 = &v274 - ((v257 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v259 + 16))(v258, v225, v224);
          v260 = v287;
          sub_218A75968(v228, v230, v258, v224, v287);
          __swift_destroy_boxed_opaque_existential_1(&v384);
          v379 = v296[2];
          v261 = v293;
          v262 = v341;
          (*(v293 + 16))(v297, v340, v341);
          v263 = v303;
          v264 = v286;
          (*(v303 + 16))(v286, v288, v314);
          v265 = v291;
          sub_218BD7CF0(v260, v291, sub_218B59134);
          v266 = (*(v261 + 80) + 16) & ~*(v261 + 80);
          v267 = (v292 + *(v263 + 80) + v266) & ~*(v263 + 80);
          v268 = (v285 + *(v289 + 80) + v267) & ~*(v289 + 80);
          v269 = (v290 + v268 + 7) & 0xFFFFFFFFFFFFFFF8;
          v270 = swift_allocObject();
          (*(v261 + 32))(v270 + v266, v297, v262);
          v271 = v314;
          (v380)(v270 + v267, v264, v314);
          sub_218BD385C(v265, v270 + v268);
          *(v270 + v269) = v339;

          sub_219BDD154();

          sub_218BD359C(v287, sub_218B59134);
          (*(v263 + 8))(v288, v271);
          goto LABEL_90;
        }

        if (v178 == *MEMORY[0x277D32CF0] || v178 == *MEMORY[0x277D32E08] || v178 == *MEMORY[0x277D32DB0] || v178 == *MEMORY[0x277D32DE0])
        {
LABEL_76:
          sub_218BD359C(v326, sub_218BD3828);
          (*(v328 + 8))(v347, v327);
          (*(v100 + 8))(v172, v177);
        }

        if (v178 == *MEMORY[0x277D32DF0])
        {
          (*(v100 + 96))(v172, v177);
          v245 = v302;
          v246 = *(v302 + 32);
          v380 = (v302 + 32);
          v381 = v246;
          v246(v213, v172, v337);
          v247 = v296;
          __swift_project_boxed_opaque_existential_1(v296 + 11, v296[14]);
          sub_219BF0AF4();
          LODWORD(v378) = sub_219BF4774();

          v379 = v247[2];
          v248 = v293;
          v249 = v341;
          (*(v293 + 16))(v297, v340, v341);
          v250 = v284;
          v251 = v337;
          (*(v245 + 16))(v284, v213, v337);
          v252 = (*(v248 + 80) + 16) & ~*(v248 + 80);
          v253 = (v292 + *(v245 + 80) + v252) & ~*(v245 + 80);
          v377 = ((v253 + v283 + 7) & 0xFFFFFFFFFFFFFFF8);
          v254 = (v253 + v283 + 23) & 0xFFFFFFFFFFFFFFF8;
          v255 = swift_allocObject();
          (*(v248 + 32))(v255 + v252, v297, v249);
          (v381)(v255 + v253, v250, v251);
          v256 = v377 + v255;
          *v256 = v247;
          v256[8] = v378 & 1;
          *(v255 + v254) = v339;

          sub_219BDD154();

          (*(v245 + 8))(v332, v251);
LABEL_90:
          sub_218BD359C(v326, sub_218BD3828);
          (*(v328 + 8))(v347, v327);
        }

LABEL_103:
        if (v178 != *MEMORY[0x277D32D38])
        {
          if (v178 == *MEMORY[0x277D32DE8] || (v272 = v178, v178 == *MEMORY[0x277D32D18]) || v178 == *MEMORY[0x277D32DA8] || v178 == *MEMORY[0x277D32DF8])
          {
            sub_218BD359C(v326, sub_218BD3828);
            (*(v328 + 8))(v347, v327);
          }

          else
          {
            v273 = *MEMORY[0x277D32DD0];
            sub_218BD359C(v326, sub_218BD3828);
            (*(v328 + 8))(v347, v327);
            if (v272 == v273)
            {
            }
          }

          (*(v331 + 8))(v329, v330);
        }

        goto LABEL_76;
      }

LABEL_101:
      v176 = sub_219BF7214();
      goto LABEL_52;
    }

    __break(1u);
    goto LABEL_101;
  }

  __break(1u);
  return result;
}

uint64_t sub_218BC7944(uint64_t a1, uint64_t a2)
{
  sub_218B58900(0);
  MEMORY[0x28223BE20](v4 - 8);
  v44 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE16D4();
  v7 = *(v6 - 8);
  v46 = v6;
  v47 = v7;
  MEMORY[0x28223BE20](v6);
  v48 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD3284();
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD3828(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD34A8();
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v50 = v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v2;
  v49 = v2[5];
  v51 = v49;
  sub_218BD5CD4();
  v22 = v21;
  sub_218BD31D8(&qword_27CC0EC68, 255, sub_218BD5CD4);
  v43 = v22;
  sub_219BE7B94();
  v45 = a2;
  sub_219BF4B14();
  sub_219BEB244();

  v23 = *(v11 + 8);
  v23(v13, v10);
  if ((*(v19 + 48))(v16, 1, v18) == 1)
  {
    return sub_218BD359C(v16, sub_218BD3828);
  }

  v40 = v18;
  v41 = v19;
  v25 = *(v19 + 32);
  v39 = v23;
  v25();
  v26 = v42[9];
  v38[2] = v42[10];
  v42 = __swift_project_boxed_opaque_existential_1(v42 + 6, v26);
  v38[1] = sub_219BE6944();
  v51 = v49;
  sub_219BE7B94();
  sub_219BDE814();
  sub_219BDD7A4();
  sub_218BD31D8(&unk_27CC0EBE0, 255, MEMORY[0x277D30170]);
  sub_218BD31D8(&qword_27CC14C40, 255, MEMORY[0x277D2FAE0]);
  v27 = sub_219BF00E4();

  v28 = v39;
  v39(v13, v10);
  v51 = v49;
  sub_219BE7B94();
  v29 = sub_219BE97D4();
  v30 = v44;
  (*(*(v29 - 8) + 56))(v44, 1, 1, v29);
  v31 = v48;
  v32 = v50;
  sub_218BCCA8C(v50, v27, v48);
  sub_218BD359C(v30, sub_218B58900);
  v28(v13, v10);
  sub_219BF4B54();
  sub_218BD3220(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v33 = sub_219BDCD44();
  v34 = *(v33 - 8);
  v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_219C09BA0;
  (*(v34 + 104))(v36 + v35, *MEMORY[0x277CEAD18], v33);
  sub_218BD31D8(&unk_280EE7FB0, 255, MEMORY[0x277D2F590]);
  v37 = v46;
  sub_219BDD1F4();

  (*(v47 + 8))(v31, v37);
  return (*(v41 + 8))(v32, v40);
}

uint64_t sub_218BC8020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[0] = a3;
  v16[1] = a2;
  v3 = sub_219BDF774();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE14C4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BE14A4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v10, *MEMORY[0x277D2F2F0], v7);
  sub_219BE1484();
  sub_218BD31D8(&qword_280EE8010, 255, MEMORY[0x277D2F280]);
  sub_219BDCCC4();
  (*(v12 + 8))(v14, v11);

  sub_219BDF764();
  sub_218BD31D8(&qword_27CC0EC58, 255, MEMORY[0x277D2DD38]);
  sub_219BDCCC4();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_218BC8324()
{
  v0 = sub_219BDF774();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_219BDF764();
  sub_218BD31D8(&qword_27CC0EC58, 255, MEMORY[0x277D2DD38]);
  sub_219BDCCC4();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_218BC8474(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v176 = a7;
  v169 = a5;
  v182 = a4;
  v191 = a3;
  v201 = a1;
  v177 = sub_219BF0F34();
  v174 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v173 = &v132 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = sub_219BDBD34();
  v178 = *(v179 - 8);
  MEMORY[0x28223BE20](v179);
  v175 = &v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD3B80(0);
  MEMORY[0x28223BE20](v10 - 8);
  v183 = &v132 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = sub_219BDF754();
  v172 = *(v184 - 8);
  MEMORY[0x28223BE20](v184);
  v138 = &v132 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_219BE09E4();
  v143 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v142 = &v132 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_219BDF104();
  v140 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v139 = &v132 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58FEC(0);
  MEMORY[0x28223BE20](v15 - 8);
  v181 = &v132 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_219BE0724();
  v170 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v137 = &v132 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_219BE1774();
  v134 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v133 = &v132 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v19 - 8);
  v166 = &v132 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_219BE16D4();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v22 = &v132 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_219BDF8A4();
  v164 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v163 = &v132 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_219BEFBD4();
  v158 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v156 = &v132 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_219BDF1A4();
  v161 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v160 = &v132 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = sub_219BE0D44();
  v190 = *(v186 - 8);
  MEMORY[0x28223BE20](v186);
  v185 = &v132 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_219BDF0E4();
  v154 = *(v155 - 1);
  MEMORY[0x28223BE20](v155);
  v153 = &v132 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_219BE0444();
  v151 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v150 = &v132 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD3378();
  v189 = v29;
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v132 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD3284();
  v34 = v33;
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v37 = &v132 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_219BDFCE4();
  v38 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v40 = &v132 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = swift_projectBox();
  sub_218BD3734();
  v42 = v41;
  sub_219BE7594();
  v187 = v42;
  v188 = a2;
  sub_219BE7564();
  v43 = sub_218BD31D8(&qword_27CC0EC48, 255, MEMORY[0x277D2FAE0]);
  result = sub_219BEB304();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v136 = v22;
  sub_219BDFCD4();
  v45 = *(v30 + 8);
  v148 = v30 + 8;
  v146 = v45;
  v45(v32, v189);
  v46 = *(v35 + 8);
  v147 = v35 + 8;
  v145 = v46;
  v46(v37, v34);
  sub_218BD3220(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v48 = v47;
  v49 = sub_219BDCD44();
  v50 = *(v49 - 8);
  v149 = v43;
  v51 = v50;
  v52 = *(v50 + 72);
  v53 = (*(v51 + 80) + 32) & ~*(v51 + 80);
  v194 = *(v51 + 80);
  v195 = v53 + v52;
  v200 = v48;
  v54 = swift_allocObject();
  v202 = xmmword_219C09BA0;
  *(v54 + 16) = xmmword_219C09BA0;
  v55 = *MEMORY[0x277CEAD18];
  v56 = *(v51 + 104);
  v196 = v53;
  v197 = v55;
  v198 = v51 + 104;
  v199 = v49;
  v193 = v56;
  v56(v54 + v53);
  sub_218BD31D8(&unk_280EE8590, 255, MEMORY[0x277D2E058]);
  v57 = v180;
  sub_219BDCCC4();

  (*(v38 + 8))(v40, v57);
  sub_219BE7594();
  sub_219BE7564();
  result = sub_219BEB314();
  if (result < 0xFFFFFFFF80000000)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  v58 = v150;
  sub_219BE0434();
  v146(v32, v189);
  v145(v37, v34);
  v59 = swift_allocObject();
  *(v59 + 16) = v202;
  v60 = v197;
  v61 = v193;
  v193(v59 + v196, v197, v199);
  v192 = "dOfRecipeCoordinator";
  v62 = v61;
  sub_218BD31D8(&unk_280EE8400, 255, MEMORY[0x277D2E530]);
  v63 = v152;
  sub_219BDCCC4();

  (*(v151 + 8))(v58, v63);
  ObjectType = swift_getObjectType();
  v65 = v153;
  v189 = ObjectType;
  sub_219BF67F4();
  v66 = swift_allocObject();
  *(v66 + 16) = v202;
  v67 = v196;
  v68 = v60;
  v69 = v199;
  v62(v66 + v196, v68, v199);
  sub_218BD31D8(&qword_280EE88B0, 255, MEMORY[0x277D2D8A8]);
  v70 = v155;
  sub_219BDCCC4();

  (*(v154 + 8))(v65, v70);
  v71 = v185;
  sub_219BF6834();
  v72 = swift_allocObject();
  *(v72 + 16) = v202;
  v193(v72 + v67, v197, v69);
  v180 = sub_218BD31D8(&qword_280EE8190, 255, MEMORY[0x277D2ECA0]);
  v73 = v186;
  sub_219BDCCC4();

  v74 = *(v190 + 8);
  v190 += 8;
  v155 = v74;
  (v74)(v71, v73);
  v75 = v158;
  v76 = v156;
  v77 = v159;
  (*(v158 + 104))(v156, *MEMORY[0x277D329E0], v159);
  v78 = v160;
  sub_219BE02C4();
  (*(v75 + 8))(v76, v77);
  v79 = swift_allocObject();
  *(v79 + 16) = v202;
  v80 = v197;
  v81 = v199;
  v82 = v193;
  v193(v79 + v196, v197, v199);
  sub_218BD31D8(&unk_280EE8850, 255, MEMORY[0x277D2D950]);
  v83 = v162;
  sub_219BDCCC4();

  (*(v161 + 8))(v78, v83);
  v84 = v185;
  sub_219BF6834();
  v85 = swift_allocObject();
  *(v85 + 16) = v202;
  v86 = v196;
  v82(v85 + v196, v80, v81);
  v87 = v84;
  v88 = v186;
  sub_219BDCCC4();

  (v155)(v87, v88);
  v89 = v163;
  sub_219BDF894();
  v90 = swift_allocObject();
  *(v90 + 16) = v202;
  v82(v90 + v86, v80, v199);
  sub_218BD31D8(&qword_280EE8640, 255, MEMORY[0x277D2DE40]);
  v91 = v165;
  sub_219BDCCC4();

  (*(v164 + 8))(v89, v91);
  v92 = v157;
  swift_beginAccess();
  v93 = v92;
  v94 = v166;
  sub_218BD7CF0(v93, v166, sub_218B58D58);
  v95 = v167;
  v96 = v168;
  if ((*(v167 + 48))(v94, 1, v168) == 1)
  {
    sub_218BD359C(v94, sub_218B58D58);
    v97 = v184;
    v98 = v171;
    v99 = v181;
    v100 = v199;
  }

  else
  {
    v101 = v136;
    (*(v95 + 32))(v136, v94, v96);
    v102 = swift_allocObject();
    *(v102 + 16) = v202;
    v103 = v102 + v86;
    v100 = v199;
    v82(v103, v197, v199);
    sub_218BD31D8(&unk_280EE7FB0, 255, MEMORY[0x277D2F590]);
    sub_219BDCCC4();

    (*(v95 + 8))(v101, v96);
    v97 = v184;
    v98 = v171;
    v99 = v181;
  }

  v104 = v191;
  v105 = [v191 scoreProfile];
  if (v105)
  {
    v106 = v105;
    if ([v105 hasShadowScores])
    {
      [v106 shadowTabiScore];
      [v106 shadowAgedPersonalizationScore];
      v107 = v133;
      sub_219BE1764();
      v108 = swift_allocObject();
      *(v108 + 16) = v202;
      v193(v108 + v196, v197, v199);
      sub_218BD31D8(&unk_280EE7F40, 255, MEMORY[0x277D2F8F0]);
      v109 = v135;
      sub_219BDCCC4();

      v99 = v181;

      v110 = v107;
      v100 = v199;
      (*(v134 + 8))(v110, v109);
    }

    else
    {
    }
  }

  sub_219BF6824();
  v111 = v170;
  if ((*(v170 + 48))(v99, 1, v98) == 1)
  {
    sub_218BD359C(v99, sub_218B58FEC);
  }

  else
  {
    v112 = v137;
    (*(v111 + 32))(v137, v99, v98);
    v113 = swift_allocObject();
    *(v113 + 16) = v202;
    v193(v113 + v196, v197, v100);
    sub_218BD31D8(&unk_27CC0DC50, 255, MEMORY[0x277D2E738]);
    sub_219BDCCC4();

    (*(v111 + 8))(v112, v98);
  }

  v114 = v183;
  v115 = [v104 sourceChannel];
  if (v115)
  {
    v190 = *(v182 + 24);
    v116 = v139;
    v186 = v115;
    sub_219BE01F4();
    v117 = swift_allocObject();
    *(v117 + 16) = v202;
    v118 = v196;
    v119 = v193;
    v193(v117 + v196, v197, v199);
    sub_218BD31D8(&unk_280EE8890, 255, MEMORY[0x277D2D8B8]);
    v120 = v141;
    sub_219BDCCC4();

    (*(v140 + 8))(v116, v120);
    v121 = v142;
    sub_219BE01E4();
    v122 = swift_allocObject();
    *(v122 + 16) = v202;
    v123 = v122 + v118;
    v100 = v199;
    v119(v123, v197, v199);
    sub_218BD31D8(&qword_280EE8270, 255, MEMORY[0x277D2E9C0]);
    v124 = v144;
    v97 = v184;
    sub_219BDCCC4();
    v114 = v183;
    swift_unknownObjectRelease();

    (*(v143 + 8))(v121, v124);
  }

  sub_219BF6804();
  v125 = v172;
  if ((*(v172 + 48))(v114, 1, v97) == 1)
  {
    sub_218BD359C(v114, sub_218BD3B80);
  }

  else
  {
    v126 = v138;
    (*(v125 + 32))(v138, v114, v97);
    v127 = swift_allocObject();
    *(v127 + 16) = v202;
    v193(v127 + v196, v197, v100);
    sub_218BD31D8(&unk_280EE86A0, 255, MEMORY[0x277D2DD28]);
    sub_219BDCCC4();

    (*(v125 + 8))(v126, v97);
  }

  sub_219BE0834();
  v128 = v175;
  sub_219BE75A4();
  sub_218BD31D8(&qword_280EE82C0, 255, MEMORY[0x277D2E858]);
  sub_219BDCC64();
  v129 = *(v178 + 8);
  v130 = v179;
  v129(v128, v179);
  sub_219BE7574();
  sub_2186EAB88();
  v131 = v173;
  sub_219BF07D4();
  sub_219BF0F14();
  (*(v174 + 8))(v131, v177);
  v203[3] = sub_219BDF4D4();
  __swift_allocate_boxed_opaque_existential_1(v203);
  sub_219BDF4C4();
  sub_219BDCC84();
  v129(v128, v130);
  return sub_218BD359C(v203, sub_21880702C);
}

uint64_t sub_218BCA194(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5)
{
  v105 = a5;
  v110 = a4;
  v114 = a3;
  v7 = sub_219BDBD34();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v11 - 8);
  v106 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BE16D4();
  v107 = *(v13 - 8);
  v108 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_219BDF8A4();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v101 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_219BE09E4();
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v98 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_219BDF104();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v94 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_219BEF9C4();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v88 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_219BDFFE4();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v91 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_219BDEFE4();
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v85 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_219BDFCE4();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = swift_projectBox();
  sub_218BD3734();
  v27 = v26;
  sub_218BD31D8(&qword_27CC0EC48, 255, MEMORY[0x277D2FAE0]);
  v102 = v27;
  result = sub_219BE75B4();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v80 = v15;
  v81 = v10;
  v82 = a2;
  v83 = v8;
  v84 = v7;
  sub_219BDFCD4();
  sub_218BD3220(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v111 = v29;
  v30 = sub_219BDCD44();
  v31 = *(v30 - 8);
  v32 = *(v31 + 72);
  v118 = *(v31 + 80);
  v119 = v32;
  v33 = v31;
  v34 = (v118 + 32) & ~v118;
  v35 = swift_allocObject();
  v121 = xmmword_219C09BA0;
  *(v35 + 16) = xmmword_219C09BA0;
  v117 = *MEMORY[0x277CEAD18];
  v36 = *(v33 + 104);
  v115 = v30;
  v116 = v36;
  v113 = v33 + 104;
  v36(v35 + v34);
  v120 = "dOfRecipeCoordinator";
  sub_218BD31D8(&unk_280EE8590, 255, MEMORY[0x277D2E058]);
  sub_219BDCCC4();

  (*(v23 + 8))(v25, v22);
  v37 = v114;
  v38 = [v114 identifier];
  sub_219BF5414();

  [v37 isPaid];
  v39 = [v37 totalTime];
  sub_219BF5414();

  v40 = v85;
  v112 = a1;
  sub_219BDEFB4();
  v109 = v34;
  v41 = swift_allocObject();
  *(v41 + 16) = v121;
  v42 = v117;
  v116(v41 + v34, v117, v30);
  sub_218BD31D8(&qword_280EE8900, 255, MEMORY[0x277D2D798]);
  v43 = v87;
  sub_219BDCCC4();

  (*(v86 + 8))(v40, v43);
  v44 = v89;
  v45 = v88;
  v46 = v90;
  (*(v89 + 104))(v88, *MEMORY[0x277D32840], v90);
  v47 = v91;
  v48 = v114;
  sub_219BE02B4();
  (*(v44 + 8))(v45, v46);
  v49 = v109;
  v50 = swift_allocObject();
  *(v50 + 16) = v121;
  v51 = v116;
  v116(v50 + v49, v42, v115);
  sub_218BD31D8(&unk_280EE84E0, 255, MEMORY[0x277D2E2C0]);
  v52 = v93;
  sub_219BDCCC4();

  (*(v92 + 8))(v47, v52);
  v110 = *(v110 + 24);
  v53 = [v48 sourceChannel];
  v54 = v94;
  sub_219BE01F4();
  swift_unknownObjectRelease();
  v55 = v109;
  v56 = swift_allocObject();
  *(v56 + 16) = v121;
  v57 = v115;
  v51(v56 + v55, v117, v115);
  sub_218BD31D8(&unk_280EE8890, 255, MEMORY[0x277D2D8B8]);
  v58 = v96;
  sub_219BDCCC4();

  (*(v95 + 8))(v54, v58);
  v59 = [v114 sourceChannel];
  v60 = v98;
  sub_219BE01E4();
  swift_unknownObjectRelease();
  v61 = swift_allocObject();
  *(v61 + 16) = v121;
  v62 = v117;
  v63 = v116;
  v116(v61 + v55, v117, v57);
  sub_218BD31D8(&qword_280EE8270, 255, MEMORY[0x277D2E9C0]);
  v64 = v100;
  sub_219BDCCC4();

  (*(v99 + 8))(v60, v64);
  v65 = v101;
  sub_219BDF894();
  v66 = swift_allocObject();
  *(v66 + 16) = v121;
  v63(v66 + v55, v62, v115);
  sub_218BD31D8(&qword_280EE8640, 255, MEMORY[0x277D2DE40]);
  v67 = v104;
  sub_219BDCCC4();

  (*(v103 + 8))(v65, v67);
  v68 = v97;
  swift_beginAccess();
  v69 = v68;
  v70 = v106;
  sub_218BD7CF0(v69, v106, sub_218B58D58);
  v72 = v107;
  v71 = v108;
  if ((*(v107 + 48))(v70, 1, v108) == 1)
  {
    sub_218BD359C(v70, sub_218B58D58);
  }

  else
  {
    v73 = v80;
    (*(v72 + 32))(v80, v70, v71);
    v74 = swift_allocObject();
    *(v74 + 16) = v121;
    v116(v74 + v55, v117, v115);
    sub_218BD31D8(&unk_280EE7FB0, 255, MEMORY[0x277D2F590]);
    sub_219BDCCC4();

    (*(v72 + 8))(v73, v71);
  }

  v75 = v83;
  sub_219BE04C4();
  v76 = v81;
  sub_219BE75A4();
  sub_218BD31D8(&unk_280EE83D0, 255, MEMORY[0x277D2E570]);
  sub_219BDCC64();
  v77 = *(v75 + 8);
  v78 = v84;
  v77(v76, v84);
  sub_219BE7574();
  sub_219BDCC74();
  return (v77)(v76, v78);
}

uint64_t sub_218BCB15C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(unint64_t, uint64_t, uint64_t))
{
  v137 = a5;
  v146 = a3;
  v149 = a1;
  v119 = sub_219BDBD34();
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v117 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_219BDF1E4();
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v114 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_219BDFCE4();
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v111 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BE1444();
  v142 = *(v9 - 8);
  v143 = v9;
  MEMORY[0x28223BE20](v9);
  v141 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59134(0);
  MEMORY[0x28223BE20](v11 - 8);
  v133 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BDF4A4();
  v135 = *(v13 - 8);
  *&v136 = v13;
  MEMORY[0x28223BE20](v13);
  v134 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v15 - 8);
  v130 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_219BE16D4();
  v131 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v105 = &v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_219BF1904();
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v125 = &v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_219BDE814();
  v121 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v120 = &v102 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58F30(0);
  MEMORY[0x28223BE20](v20 - 8);
  v123 = &v102 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_219BDF474();
  v128 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v104 = &v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD3378();
  v24 = v23;
  v25 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v27 = &v102 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD3284();
  v29 = v28;
  v30 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v32 = &v102 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD3828(0);
  MEMORY[0x28223BE20](v33 - 8);
  v35 = &v102 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD34A8();
  v37 = v36;
  v148 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v147 = &v102 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = swift_projectBox();
  sub_218BD3734();
  v40 = v39;
  sub_219BE7594();
  v144 = v40;
  v145 = a2;
  sub_219BE7564();
  sub_219BE5F84();
  v41 = *(v25 + 8);
  v140 = v27;
  v110 = v24;
  v109 = v25 + 8;
  v107 = v41;
  v41(v27, v24);
  sub_219BEB244();
  v42 = v148;

  v43 = *(v30 + 8);
  v138 = v32;
  v139 = v29;
  v108 = v30 + 8;
  v43(v32, v29);
  if ((*(v42 + 48))(v35, 1, v37) == 1)
  {
    return sub_218BD359C(v35, sub_218BD3828);
  }

  (*(v42 + 32))(v147, v35, v37);
  v45 = v120;
  v106 = v37;
  sub_219BE6934();
  v46 = v125;
  sub_219BDE804();
  (*(v121 + 8))(v45, v122);
  v47 = [v146 identifier];
  sub_219BF5414();

  v48 = v123;
  sub_219BF17B4();

  (*(v126 + 8))(v46, v127);
  v49 = v128;
  v50 = v129;
  v51 = (*(v128 + 48))(v48, 1, v129);
  v52 = MEMORY[0x277CEAD18];
  v103 = v43;
  if (v51 == 1)
  {
    sub_218BD359C(v48, sub_218B58F30);
  }

  else
  {
    v53 = v104;
    (*(v49 + 32))(v104, v48, v50);
    sub_218BD3220(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v54 = sub_219BDCD44();
    v55 = *(v54 - 8);
    v56 = (*(v55 + 80) + 32) & ~*(v55 + 80);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_219C09BA0;
    (*(v55 + 104))(v57 + v56, *v52, v54);
    sub_218BD31D8(&unk_280EE87B0, 255, MEMORY[0x277D2DAB8]);
    sub_219BDCCC4();

    (*(v49 + 8))(v53, v50);
  }

  v58 = v132;
  v59 = v131;
  v60 = v124;
  swift_beginAccess();
  v61 = v60;
  v62 = v130;
  sub_218BD7CF0(v61, v130, sub_218B58D58);
  if ((*(v59 + 48))(v62, 1, v58) == 1)
  {
    sub_218BD359C(v62, sub_218B58D58);
  }

  else
  {
    v63 = v105;
    (*(v59 + 32))(v105, v62, v58);
    sub_218BD3220(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v64 = sub_219BDCD44();
    v65 = *(v64 - 8);
    v66 = (*(v65 + 80) + 32) & ~*(v65 + 80);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_219C09BA0;
    (*(v65 + 104))(v67 + v66, *MEMORY[0x277CEAD18], v64);
    sub_218BD31D8(&unk_280EE7FB0, 255, MEMORY[0x277D2F590]);
    sub_219BDCCC4();

    (*(v59 + 8))(v63, v58);
  }

  v68 = v135;
  v69 = v133;
  sub_218BD7CF0(v137, v133, sub_218B59134);
  v70 = v136;
  if ((*(v68 + 48))(v69, 1, v136) == 1)
  {
    sub_218BD359C(v69, sub_218B59134);
    v71 = *MEMORY[0x277CEAD18];
    v72 = &unk_219C09000;
  }

  else
  {
    (*(v68 + 32))(v134, v69, v70);
    sub_218BD3220(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v73 = sub_219BDCD44();
    v74 = *(v73 - 8);
    v75 = (*(v74 + 80) + 32) & ~*(v74 + 80);
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_219C09BA0;
    v77 = *MEMORY[0x277CEAD18];
    (*(v74 + 104))(v76 + v75, v77, v73);
    v71 = v77;
    v72 = &unk_219C09000;
    sub_218BD31D8(&unk_280EE8790, 255, MEMORY[0x277D2DAD8]);
    v78 = v134;
    sub_219BDCCC4();

    (*(v68 + 8))(v78, v70);
  }

  v79 = [v146 identifier];
  sub_219BF5414();

  v80 = v141;
  sub_219BE1424();
  sub_218BD3220(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v81 = sub_219BDCD44();
  v82 = *(v81 - 8);
  v83 = *(v82 + 72);
  v84 = (*(v82 + 80) + 32) & ~*(v82 + 80);
  v134 = *(v82 + 80);
  v146 = (v84 + v83);
  v85 = swift_allocObject();
  v136 = v72[186];
  *(v85 + 16) = v136;
  v87 = *(v82 + 104);
  v86 = v82 + 104;
  v135 = v84;
  v137 = v87;
  v87(v85 + v84, v71, v81);
  sub_218BD31D8(&unk_280EE8030, 255, MEMORY[0x277D2F260]);
  v88 = v143;
  sub_219BDCCC4();

  (*(v142 + 8))(v80, v88);
  v89 = v138;
  sub_219BE7594();
  v90 = v140;
  sub_219BE7564();
  sub_218BD31D8(&qword_27CC0EC48, 255, MEMORY[0x277D2FAE0]);
  v91 = v139;
  result = sub_219BEB304();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v92 = v111;
  sub_219BDFCD4();
  v107(v90, v110);
  v103(v89, v91);
  v93 = swift_allocObject();
  *(v93 + 16) = v136;
  v133 = v86;
  v94 = v135;
  v137(v93 + v135, v71, v81);
  sub_218BD31D8(&unk_280EE8590, 255, MEMORY[0x277D2E058]);
  v95 = v113;
  sub_219BDCCC4();

  (*(v112 + 8))(v92, v95);
  sub_219BE6944();
  v96 = v114;
  sub_219BDF1C4();
  v97 = swift_allocObject();
  *(v97 + 16) = v136;
  v137(v97 + v94, v71, v81);
  sub_218BD31D8(&unk_280EE8840, 255, MEMORY[0x277D2D970]);
  v98 = v116;
  sub_219BDCCC4();

  (*(v115 + 8))(v96, v98);
  sub_219BDFEC4();
  v99 = v117;
  sub_219BE75A4();
  sub_218BD31D8(&unk_280EE8520, 255, MEMORY[0x277D2E1D0]);
  sub_219BDCC64();
  v100 = *(v118 + 8);
  v101 = v119;
  v100(v99, v119);
  sub_219BE7574();
  sub_219BDCC74();
  v100(v99, v101);
  return (*(v148 + 8))(v147, v106);
}

uint64_t sub_218BCC6BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v25 = a4;
  v22 = a1;
  v4 = sub_219BDBD34();
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x28223BE20](v4);
  v23 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD3220(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v21 = v6;
  v7 = sub_219BDCD44();
  v8 = *(v7 - 8);
  v20 = *(v8 + 72);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  v19 = xmmword_219C09BA0;
  *(v10 + 16) = xmmword_219C09BA0;
  v11 = *MEMORY[0x277CEAD18];
  v12 = *(v8 + 104);
  v12(v10 + v9, v11, v7);
  v18[1] = "dOfRecipeCoordinator";
  sub_219BE16D4();
  sub_218BD31D8(&unk_280EE7FB0, 255, MEMORY[0x277D2F590]);
  sub_219BDCCC4();

  v13 = swift_allocObject();
  *(v13 + 16) = v19;
  v12(v13 + v9, v11, v7);
  sub_219BDEFE4();
  sub_218BD31D8(&qword_280EE8900, 255, MEMORY[0x277D2D798]);
  sub_219BDCCC4();

  sub_219BE07A4();
  sub_218BD30E4();
  v14 = v23;
  sub_219BE8F14();
  sub_218BD31D8(&unk_27CC0EC20, 255, MEMORY[0x277D2E800]);
  sub_219BDCC64();
  v15 = v27;
  v16 = *(v26 + 8);
  v16(v14, v27);
  sub_219BE8EE4();
  sub_219BDCC74();
  return (v16)(v14, v15);
}

uint64_t sub_218BCCA8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v158 = a2;
  v144 = a3;
  sub_218B58F30(0);
  MEMORY[0x28223BE20](v4 - 8);
  v143 = &v136 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD3220(0, &unk_280EE8380, MEMORY[0x277D2E6C8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v142 = &v136 - v7;
  v151 = sub_219BE16E4();
  v150 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v160 = &v136 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_219BDE814();
  v171 = *(v170 - 8);
  v9 = MEMORY[0x28223BE20](v170);
  v157 = &v136 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v141 = &v136 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v165 = &v136 - v14;
  MEMORY[0x28223BE20](v13);
  v149 = &v136 - v15;
  v148 = sub_219BDF584();
  v147 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v159 = &v136 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = sub_219BDD374();
  v178 = *(v204 - 8);
  MEMORY[0x28223BE20](v204);
  v203 = &v136 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = sub_219BDEE04();
  v177 = *(v202 - 8);
  MEMORY[0x28223BE20](v202);
  v201 = &v136 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_219BF04A4();
  v205 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v145 = &v136 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB018();
  v164 = v20;
  v200 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v163 = &v136 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_219BF0F34();
  v199 = *(v175 - 8);
  MEMORY[0x28223BE20](v175);
  v174 = &v136 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAB88();
  v183 = v23;
  v198 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v182 = &v136 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_219BF0B74();
  v197 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v161 = &v136 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB308();
  v173 = v26;
  v196 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v172 = &v136 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_219BDD7A4();
  v189 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v30 = (&v136 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218BD3378();
  v195 = v31;
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v194 = &v136 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD3410();
  v35 = v34 - 8;
  MEMORY[0x28223BE20](v34);
  v37 = &v136 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x277D84F90];
  v207 = MEMORY[0x277D84F90];
  v208 = MEMORY[0x277D84F90];
  sub_218BD34A8();
  v40 = v39;
  (*(*(v39 - 8) + 16))(v37, a1, v39);
  v41 = *(v35 + 44);
  v42 = sub_218BD31D8(&qword_27CC0EC18, 255, sub_218BD34A8);
  v152 = a1;
  sub_219BF5DF4();
  sub_219BF5E84();
  v43 = *&v37[v41];
  v176 = v38;
  v187 = v40;
  v185 = v42;
  if (v43 != v206)
  {
    v192 = (v32 + 16);
    v53 = (v32 + 8);
    v191 = (v189 + 11);
    v140 = v189 + 1;
    v190 = *MEMORY[0x277D2FAC8];
    v179 = *MEMORY[0x277D2FAD8];
    v169 = *MEMORY[0x277D2FAD0];
    v189 += 12;
    v139 = (v200 + 32);
    v138 = (v205 + 8);
    v137 = (v200 + 8);
    v156 = (v196 + 32);
    v155 = v197 + 1;
    v154 = (v196 + 8);
    v168 = (v198 + 32);
    v153 = *MEMORY[0x277D2FAB0];
    v167 = v199 + 1;
    v166 = (v198 + 8);
    v199 = (v177 + 8);
    v200 = v177 + 16;
    v197 = (v178 + 8);
    v198 = v178 + 16;
    v176 = MEMORY[0x277D84F90];
    v186 = v30;
    v188 = v37;
    v181 = v28;
    v193 = v41;
    v180 = v53;
    do
    {
      v55 = sub_219BF5EC4();
      v56 = v194;
      v57 = v195;
      (*v192)(v194);
      v55(&v206, 0);
      sub_219BF5E94();
      sub_219BE5FC4();
      (*v53)(v56, v57);
      v58 = (*v191)(v30, v28);
      if (v58 == v190)
      {
        (*v189)(v30, v28);
        v59 = *v30;
        v60 = sub_219BE5B44();
        v61 = *(v60 + 16);
        v196 = v59;
        if (v61)
        {
          v206 = MEMORY[0x277D84F90];
          sub_21870B65C(0, v61, 0);
          v62 = v206;
          v63 = *(v177 + 80);
          v205 = v60;
          v64 = v60 + ((v63 + 32) & ~v63);
          v65 = *(v177 + 72);
          v66 = *(v177 + 16);
          do
          {
            v67 = v201;
            v68 = v202;
            v66(v201, v64, v202);
            v69 = sub_219BDEDA4();
            v71 = v70;
            (*v199)(v67, v68);
            v206 = v62;
            v73 = *(v62 + 16);
            v72 = *(v62 + 24);
            if (v73 >= v72 >> 1)
            {
              sub_21870B65C((v72 > 1), v73 + 1, 1);
              v62 = v206;
            }

            *(v62 + 16) = v73 + 1;
            v74 = v62 + 16 * v73;
            *(v74 + 32) = v69;
            *(v74 + 40) = v71;
            v64 += v65;
            --v61;
          }

          while (v61);

          v30 = v186;
        }

        else
        {

          v62 = MEMORY[0x277D84F90];
        }

        sub_2191ED3E8(v62);
        v95 = sub_219BE5B34();
        v96 = *(v95 + 16);
        if (v96)
        {
          v206 = MEMORY[0x277D84F90];
          sub_21870B65C(0, v96, 0);
          v97 = v206;
          v98 = (*(v178 + 80) + 32) & ~*(v178 + 80);
          v184 = v95;
          v99 = v95 + v98;
          v205 = *(v178 + 72);
          v100 = *(v178 + 16);
          do
          {
            v101 = v203;
            v102 = v204;
            v100(v203, v99, v204);
            v103 = sub_219BDD364();
            v104 = [v103 identifier];
            v105 = sub_219BF5414();
            v107 = v106;

            (*v197)(v101, v102);
            v206 = v97;
            v109 = *(v97 + 16);
            v108 = *(v97 + 24);
            if (v109 >= v108 >> 1)
            {
              sub_21870B65C((v108 > 1), v109 + 1, 1);
              v97 = v206;
            }

            *(v97 + 16) = v109 + 1;
            v110 = v97 + 16 * v109;
            *(v110 + 32) = v105;
            *(v110 + 40) = v107;
            v99 += v205;
            --v96;
          }

          while (v96);

          v30 = v186;
        }

        else
        {

          v97 = MEMORY[0x277D84F90];
        }

        sub_2191ED3E8(v97);

        v28 = v181;
        v37 = v188;
        v54 = v193;
        v53 = v180;
        goto LABEL_6;
      }

      if (v58 == v179)
      {
        (*v189)(v30, v28);
        (*v168)(v182, v30, v183);
        v75 = v174;
        sub_219BF07D4();
        v76 = sub_219BF0F14();
        (*v167)(v75, v175);
        v77 = [v76 identifier];
        swift_unknownObjectRelease();
        v78 = sub_219BF5414();
        v80 = v79;

        v81 = v207;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v81 = sub_218840D24(0, *(v81 + 2) + 1, 1, v81);
        }

        v83 = *(v81 + 2);
        v82 = *(v81 + 3);
        if (v83 >= v82 >> 1)
        {
          v81 = sub_218840D24((v82 > 1), v83 + 1, 1, v81);
        }

        (*v166)(v182, v183);
        *(v81 + 2) = v83 + 1;
        v84 = &v81[16 * v83];
        *(v84 + 4) = v78;
        *(v84 + 5) = v80;
        v207 = v81;
      }

      else
      {
        if (v58 != v169)
        {
          if (v58 == v153)
          {
            (*v189)(v30, v28);
            (*v139)(v163, v30, v164);
            v111 = v145;
            sub_219BF07D4();
            v112 = sub_219BF0404();
            (*v138)(v111, v146);
            v113 = [v112 identifier];
            swift_unknownObjectRelease();
            v114 = sub_219BF5414();
            v116 = v115;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v176 = sub_218840D24(0, *(v176 + 2) + 1, 1, v176);
            }

            v118 = *(v176 + 2);
            v117 = *(v176 + 3);
            if (v118 >= v117 >> 1)
            {
              v176 = sub_218840D24((v117 > 1), v118 + 1, 1, v176);
            }

            (*v137)(v163, v164);
            v119 = v176;
            *(v176 + 2) = v118 + 1;
            v120 = &v119[16 * v118];
            *(v120 + 4) = v114;
            *(v120 + 5) = v116;
          }

          else
          {
            (*v140)(v30, v28);
          }

          goto LABEL_27;
        }

        (*v189)(v30, v28);
        (*v156)(v172, v30, v173);
        v85 = v161;
        sub_219BF07D4();
        v86 = sub_219BF0B44();
        (*v155)(v85, v162);
        v87 = [v86 identifier];

        v88 = sub_219BF5414();
        v90 = v89;

        v91 = v208;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v91 = sub_218840D24(0, *(v91 + 2) + 1, 1, v91);
        }

        v93 = *(v91 + 2);
        v92 = *(v91 + 3);
        if (v93 >= v92 >> 1)
        {
          v91 = sub_218840D24((v92 > 1), v93 + 1, 1, v91);
        }

        (*v154)(v172, v173);
        *(v91 + 2) = v93 + 1;
        v94 = &v91[16 * v93];
        *(v94 + 4) = v88;
        *(v94 + 5) = v90;
        v208 = v91;
      }

      v37 = v188;
LABEL_27:
      v54 = v193;
LABEL_6:
      sub_219BF5E84();
    }

    while (*&v37[v54] != v206);
  }

  sub_218BD359C(v37, sub_218BD3410);
  (*(v147 + 104))(v159, *MEMORY[0x277D2DB58], v148);
  v44 = v149;
  sub_219BE6934();
  v45 = v171;
  v46 = *(v171 + 32);
  v47 = v165;
  v48 = v44;
  v49 = v170;
  v46(v165, v48, v170);
  v50 = *(v45 + 88);
  v51 = v50(v47, v49);
  v52 = *MEMORY[0x277D30158];
  if (v51 == *MEMORY[0x277D30158])
  {
    (*(v150 + 104))(v160, *MEMORY[0x277D2F608], v151);
  }

  else if (v51 == *MEMORY[0x277D30150])
  {
    (*(v150 + 104))(v160, *MEMORY[0x277D2F6E8], v151);
  }

  else
  {
    if (v51 == *MEMORY[0x277D30168])
    {
      v121 = MEMORY[0x277D2F6C8];
    }

    else
    {
      v121 = MEMORY[0x277D2F818];
    }

    (*(v150 + 104))(v160, *v121, v151);
  }

  v122 = *(v171 + 8);
  v171 += 8;
  v122(v165, v170);
  v123 = sub_219BE6944();
  v205 = v124;
  sub_219BF5DF4();
  sub_219BF5E84();
  result = sub_219BF5E74();
  if (result > 0x7FFFFFFF)
  {
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v158 < 0xFFFFFFFF80000000 || result < 0xFFFFFFFF80000000)
  {
    goto LABEL_60;
  }

  if (v158 > 0x7FFFFFFF)
  {
LABEL_61:
    __break(1u);
    return result;
  }

  v203 = v207;
  v204 = v123;
  v202 = v208;
  v126 = v141;
  sub_219BE6934();
  v127 = v157;
  v128 = v170;
  v46(v157, v126, v170);
  v129 = v50(v127, v128);
  if (v129 == v52 || v129 == *MEMORY[0x277D30150] || v129 == *MEMORY[0x277D30168])
  {
    v122(v157, v170);
    v133 = *MEMORY[0x277D2E6B0];
    v131 = sub_219BE0674();
    v132 = v142;
    (*(*(v131 - 8) + 104))(v142, v133, v131);
  }

  else
  {
    v130 = *MEMORY[0x277D2E6C0];
    v131 = sub_219BE0674();
    v132 = v142;
    (*(*(v131 - 8) + 104))(v142, v130, v131);
    v122(v157, v170);
  }

  v134 = v143;
  sub_219BE0674();
  (*(*(v131 - 8) + 56))(v132, 0, 1, v131);
  v135 = sub_219BDF474();
  (*(*(v135 - 8) + 56))(v134, 1, 1, v135);
  return sub_219BE15E4();
}

uint64_t sub_218BCE2C4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v169 = a5;
  v194 = a4;
  v198 = a3;
  v201 = a1;
  v167 = sub_219BDBD34();
  v166 = *(v167 - 8);
  MEMORY[0x28223BE20](v167);
  v165 = &v133 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v7 - 8);
  v162 = &v133 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_219BE16D4();
  v163 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v150 = &v133 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59134(0);
  MEMORY[0x28223BE20](v10 - 8);
  v168 = &v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_219BDF4A4();
  v170 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v149 = &v133 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_219BF1904();
  v145 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v144 = &v133 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BF33A4();
  MEMORY[0x28223BE20](v14 - 8);
  v142 = &v133 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58F30(0);
  MEMORY[0x28223BE20](v16 - 8);
  v143 = &v133 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_219BDF474();
  v146 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v134 = &v133 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_219BE0444();
  v140 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v139 = &v133 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58F64(0);
  MEMORY[0x28223BE20](v20 - 8);
  v152 = &v133 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58CA4();
  v195 = *(v22 - 8);
  v196 = v22;
  MEMORY[0x28223BE20](v22);
  v187 = &v133 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD7A90();
  v189 = *(v24 - 8);
  v190 = v24;
  MEMORY[0x28223BE20](v24);
  v186 = &v133 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58F98(0);
  MEMORY[0x28223BE20](v26 - 8);
  v188 = &v133 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58FCC(0);
  v29 = *(v28 - 8);
  v191 = v28;
  v192 = v29;
  MEMORY[0x28223BE20](v28);
  v153 = &v133 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_219BE09E4();
  v158 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v157 = &v133 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_219BDF104();
  v155 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v154 = &v133 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58FEC(0);
  MEMORY[0x28223BE20](v33 - 8);
  *&v183 = &v133 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = sub_219BE0724();
  v184 = *(v185 - 8);
  MEMORY[0x28223BE20](v185);
  v151 = &v133 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_219BE1774();
  v136 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v135 = &v133 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_219BEFBD4();
  v178 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v175 = &v133 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = sub_219BDF1A4();
  v181 = *(v182 - 8);
  MEMORY[0x28223BE20](v182);
  v179 = &v133 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = sub_219BDFCE4();
  v173 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v172 = &v133 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_219BE0D44();
  v41 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v43 = &v133 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_219BDF0E4();
  v45 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v47 = &v133 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = swift_projectBox();
  ObjectType = swift_getObjectType();
  sub_219BF67F4();
  sub_218BD31D8(&qword_280EE88B0, 255, MEMORY[0x277D2D8A8]);
  sub_219BDCCC4();
  (*(v45 + 8))(v47, v44);
  v197 = ObjectType;
  v199 = a2;
  sub_219BF6834();
  sub_218BD31D8(&qword_280EE8190, 255, MEMORY[0x277D2ECA0]);
  v200 = "dOfRecipeCoordinator";
  sub_219BDCCC4();
  v49 = *(v41 + 8);
  v177 = v40;
  v176 = v41 + 8;
  v49(v43, v40);
  sub_218B58D38(0);
  v51 = v50;
  v52 = sub_218BD31D8(&qword_280E908F0, 255, MEMORY[0x277D33320]);
  result = sub_219BE75B4();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v138 = v52;
  v193 = v51;
  v54 = v172;
  sub_219BDFCD4();
  sub_218BD31D8(&unk_280EE8590, 255, MEMORY[0x277D2E058]);
  v160 = v49;
  v55 = v174;
  sub_219BDCCC4();
  (*(v173 + 8))(v54, v55);
  v56 = v178;
  v57 = v175;
  v58 = v180;
  (*(v178 + 104))(v175, *MEMORY[0x277D329E0], v180);
  v59 = v179;
  v60 = v199;
  sub_219BE02C4();
  (*(v56 + 8))(v57, v58);
  sub_218BD31D8(&unk_280EE8850, 255, MEMORY[0x277D2D950]);
  v61 = v182;
  sub_219BDCCC4();
  (*(v181 + 8))(v59, v61);
  sub_219BF6834();
  v62 = v177;
  sub_219BDCCC4();
  v160(v43, v62);
  v63 = [v60 scoreProfile];
  v64 = v195;
  v65 = v184;
  v66 = v183;
  if (v63)
  {
    v67 = v63;
    if ([v63 hasShadowScores])
    {
      [v67 shadowTabiScore];
      [v67 shadowAgedPersonalizationScore];
      v68 = v135;
      sub_219BE1764();
      sub_218BD31D8(&unk_280EE7F40, 255, MEMORY[0x277D2F8F0]);
      v69 = v137;
      sub_219BDCCC4();

      (*(v136 + 8))(v68, v69);
    }

    else
    {
    }
  }

  sub_219BF6824();
  v70 = v185;
  if ((*(v65 + 48))(v66, 1, v185) == 1)
  {
    sub_218BD359C(v66, sub_218B58FEC);
  }

  else
  {
    v71 = v151;
    (*(v65 + 32))(v151, v66, v70);
    sub_218BD31D8(&unk_27CC0DC50, 255, MEMORY[0x277D2E738]);
    sub_219BDCCC4();
    (*(v65 + 8))(v71, v70);
  }

  v72 = [v199 sourceChannel];
  v73 = MEMORY[0x277CEAD18];
  v74 = v196;
  if (v72)
  {
    v197 = *(v194 + 24);
    v75 = v154;
    v185 = v72;
    sub_219BE01F4();
    sub_218BD3220(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v194 = v76;
    v77 = sub_219BDCD44();
    v78 = *(v77 - 8);
    v184 = *(v78 + 72);
    v79 = (*(v78 + 80) + 32) & ~*(v78 + 80);
    v80 = swift_allocObject();
    v183 = xmmword_219C09BA0;
    *(v80 + 16) = xmmword_219C09BA0;
    v81 = *v73;
    v82 = *(v78 + 104);
    v82(v80 + v79, v81, v77);
    sub_218BD31D8(&unk_280EE8890, 255, MEMORY[0x277D2D8B8]);
    v83 = v156;
    sub_219BDCCC4();

    (*(v155 + 8))(v75, v83);
    v84 = v157;
    sub_219BE01E4();
    v85 = swift_allocObject();
    *(v85 + 16) = v183;
    v82(v85 + v79, v81, v77);
    v64 = v195;
    sub_218BD31D8(&qword_280EE8270, 255, MEMORY[0x277D2E9C0]);
    v86 = v159;
    sub_219BDCCC4();
    swift_unknownObjectRelease();

    v87 = v84;
    v74 = v196;
    (*(v158 + 8))(v87, v86);
  }

  v88 = v186;
  sub_219BE7594();
  v89 = v187;
  sub_219BE7564();
  sub_219BE5F84();
  (*(v64 + 8))(v89, v74);
  v90 = v188;
  v91 = v190;
  sub_219BEB244();

  (*(v189 + 8))(v88, v91);
  v93 = v191;
  v92 = v192;
  if ((*(v192 + 48))(v90, 1, v191) != 1)
  {
    v98 = *(v92 + 32);
    v99 = v74;
    v100 = v153;
    v98(v153, v90, v93);
    v101 = v152;
    sub_219BE7564();
    (*(v64 + 56))(v101, 0, 1, v99);
    v102 = sub_219BE6A34();
    result = sub_218BD359C(v101, sub_218B58F64);
    if (v102 >= 0xFFFFFFFF80000000)
    {
      if (v102 <= 0x7FFFFFFF)
      {
        v103 = v139;
        sub_219BE0434();
        sub_218BD31D8(&unk_280EE8400, 255, MEMORY[0x277D2E530]);
        v104 = v141;
        sub_219BDCCC4();
        (*(v140 + 8))(v103, v104);
        v105 = v142;
        sub_219BE6934();
        v106 = v100;
        v107 = v144;
        sub_219BF3394();
        sub_218BD359C(v105, MEMORY[0x277D33DA8]);
        v108 = [v199 identifier];
        sub_219BF5414();
        v109 = v93;

        v110 = v143;
        sub_219BF17B4();

        (*(v145 + 8))(v107, v147);
        v111 = v146;
        v112 = v148;
        if ((*(v146 + 48))(v110, 1, v148) == 1)
        {
          (*(v192 + 8))(v106, v109);
          sub_218BD359C(v110, sub_218B58F30);
        }

        else
        {
          v113 = v134;
          (*(v111 + 32))(v134, v110, v112);
          sub_218BD31D8(&unk_280EE87B0, 255, MEMORY[0x277D2DAB8]);
          sub_219BDCCC4();
          (*(v111 + 8))(v113, v112);
          (*(v192 + 8))(v106, v109);
        }

        v94 = v171;
        v95 = v170;
        v96 = v169;
        v97 = v168;
        goto LABEL_20;
      }

LABEL_30:
      __break(1u);
      return result;
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  sub_218BD359C(v90, sub_218B58F98);
  v94 = v171;
  v95 = v170;
  v96 = v169;
  v97 = v168;
LABEL_20:
  sub_218BD7CF0(v96, v97, sub_218B59134);
  v114 = (*(v95 + 48))(v97, 1, v94);
  v115 = MEMORY[0x277CEAD18];
  if (v114 == 1)
  {
    sub_218BD359C(v97, sub_218B59134);
  }

  else
  {
    v119 = v149;
    (*(v95 + 32))(v149, v97, v94);
    sub_218BD3220(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v120 = sub_219BDCD44();
    v121 = *(v120 - 8);
    v122 = (*(v121 + 80) + 32) & ~*(v121 + 80);
    v123 = swift_allocObject();
    *(v123 + 16) = xmmword_219C09BA0;
    (*(v121 + 104))(v123 + v122, *v115, v120);
    sub_218BD31D8(&unk_280EE8790, 255, MEMORY[0x277D2DAD8]);
    sub_219BDCCC4();

    (*(v95 + 8))(v119, v94);
  }

  v116 = v164;
  v117 = v163;
  v118 = v162;
  v124 = v161;
  swift_beginAccess();
  sub_218BD7CF0(v124, v118, sub_218B58D58);
  if ((*(v117 + 48))(v118, 1, v116) == 1)
  {
    sub_218BD359C(v118, sub_218B58D58);
  }

  else
  {
    v125 = v150;
    (*(v117 + 32))(v150, v118, v116);
    sub_218BD3220(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v126 = sub_219BDCD44();
    v127 = *(v126 - 8);
    v128 = (*(v127 + 80) + 32) & ~*(v127 + 80);
    v129 = swift_allocObject();
    *(v129 + 16) = xmmword_219C09BA0;
    (*(v127 + 104))(v129 + v128, *MEMORY[0x277CEAD18], v126);
    sub_218BD31D8(&unk_280EE7FB0, 255, MEMORY[0x277D2F590]);
    sub_219BDCCC4();

    (*(v117 + 8))(v125, v116);
  }

  sub_219BE0834();
  v130 = v165;
  sub_219BE75A4();
  sub_218BD31D8(&qword_280EE82C0, 255, MEMORY[0x277D2E858]);
  sub_219BDCC64();
  v131 = *(v166 + 8);
  v132 = v167;
  v131(v130, v167);
  sub_219BE7574();
  sub_219BDCC74();
  return (v131)(v130, v132);
}

uint64_t sub_218BD0140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v106 = a4;
  v138 = a3;
  v145 = a1;
  v112 = sub_219BDBD34();
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v110 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v6 - 8);
  v107 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_219BE16D4();
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v100 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59134(0);
  MEMORY[0x28223BE20](v9 - 8);
  v103 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_219BDF4A4();
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v99 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_219BF1904();
  v125 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v124 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BF33A4();
  MEMORY[0x28223BE20](v13 - 8);
  v122 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58F30(0);
  MEMORY[0x28223BE20](v15 - 8);
  v123 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_219BDF474();
  v127 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v98 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_219BDF1E4();
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v119 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_219BDFCE4();
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v116 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_219BE1444();
  v130 = *(v20 - 8);
  v131 = v20;
  MEMORY[0x28223BE20](v20);
  v129 = &v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58CA4();
  v23 = v22;
  v24 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v26 = &v95 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD7A90();
  v28 = v27;
  v142 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v95 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58F98(0);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v95 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58FCC(0);
  v35 = v34;
  v36 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v144 = &v95 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = swift_projectBox();
  sub_218B58D38(0);
  v39 = v38;
  sub_219BE7594();
  v143 = v39;
  v136 = a2;
  sub_219BE7564();
  sub_219BE5F84();
  v40 = *(v24 + 8);
  v115 = v23;
  v41 = v23;
  v42 = v24 + 8;
  v43 = v28;
  v44 = v142;
  v45 = v30;
  v114 = v42;
  v113 = v40;
  v40(v26, v41);
  sub_219BEB244();
  v46 = v36;

  v47 = *(v44 + 8);
  v137 = v43;
  v47(v30, v43);
  if ((*(v46 + 48))(v33, 1, v35) == 1)
  {
    return sub_218BD359C(v33, sub_218B58F98);
  }

  v96 = v47;
  v97 = v46;
  v49 = *(v46 + 32);
  v135 = v35;
  v49(v144, v33, v35);
  v50 = [sub_219BF0404() identifier];
  swift_unknownObjectRelease();
  sub_219BF5414();

  v51 = v129;
  sub_219BE1424();
  sub_218BD3220(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v53 = v52;
  v54 = sub_219BDCD44();
  v55 = *(v54 - 8);
  v56 = *(v55 + 80);
  v57 = (v56 + 32) & ~v56;
  v141 = v57 + *(v55 + 72);
  v142 = v56;
  v133 = v53;
  v58 = swift_allocObject();
  v139 = xmmword_219C09BA0;
  *(v58 + 16) = xmmword_219C09BA0;
  v60 = *(v55 + 104);
  v59 = v55 + 104;
  v132 = *MEMORY[0x277CEAD18];
  v134 = v54;
  v140 = v60;
  (v60)(v58 + v57);
  sub_218BD31D8(&unk_280EE8030, 255, MEMORY[0x277D2F260]);
  v101 = "dOfRecipeCoordinator";
  v61 = v131;
  sub_219BDCCC4();

  (*(v130 + 8))(v51, v61);
  sub_219BE7594();
  sub_219BE7564();
  sub_218BD31D8(&qword_280E908F0, 255, MEMORY[0x277D33320]);
  result = sub_219BEB304();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v62 = v116;
  sub_219BDFCD4();
  v113(v26, v115);
  v96(v45, v137);
  v63 = swift_allocObject();
  *(v63 + 16) = v139;
  v64 = v63 + v57;
  v65 = v57;
  v66 = v132;
  v140(v64, v132, v134);
  sub_218BD31D8(&unk_280EE8590, 255, MEMORY[0x277D2E058]);
  v137 = v59;
  v67 = v118;
  sub_219BDCCC4();

  (*(v117 + 8))(v62, v67);
  sub_219BE6944();
  v68 = v119;
  sub_219BDF1C4();
  v69 = swift_allocObject();
  *(v69 + 16) = v139;
  v131 = v65;
  v70 = v66;
  v71 = v134;
  v140(v69 + v65, v70, v134);
  sub_218BD31D8(&unk_280EE8840, 255, MEMORY[0x277D2D970]);
  v72 = v121;
  sub_219BDCCC4();

  (*(v120 + 8))(v68, v72);
  v73 = v122;
  sub_219BE6934();
  v74 = v124;
  sub_219BF3394();
  sub_218BD359C(v73, MEMORY[0x277D33DA8]);
  sub_219BF03E4();
  v75 = v123;
  sub_219BF17B4();

  (*(v125 + 8))(v74, v126);
  v76 = v127;
  v77 = v128;
  if ((*(v127 + 48))(v75, 1, v128) == 1)
  {
    sub_218BD359C(v75, sub_218B58F30);
  }

  else
  {
    v78 = v98;
    (*(v76 + 32))(v98, v75, v77);
    v79 = swift_allocObject();
    *(v79 + 16) = v139;
    v140(v79 + v131, v132, v71);
    sub_218BD31D8(&unk_280EE87B0, 255, MEMORY[0x277D2DAB8]);
    sub_219BDCCC4();

    (*(v76 + 8))(v78, v77);
  }

  v80 = v111;
  v81 = v110;
  v82 = v109;
  v83 = v108;
  v84 = v105;
  v85 = v104;
  v86 = v103;
  sub_218BD7CF0(v106, v103, sub_218B59134);
  if ((*(v85 + 48))(v86, 1, v84) == 1)
  {
    sub_218BD359C(v86, sub_218B59134);
  }

  else
  {
    v89 = v99;
    (*(v85 + 32))(v99, v86, v84);
    v90 = swift_allocObject();
    *(v90 + 16) = v139;
    v140(v90 + v131, v132, v134);
    sub_218BD31D8(&unk_280EE8790, 255, MEMORY[0x277D2DAD8]);
    sub_219BDCCC4();

    (*(v85 + 8))(v89, v84);
  }

  v87 = v107;
  v88 = v102;
  swift_beginAccess();
  sub_218BD7CF0(v88, v87, sub_218B58D58);
  if ((*(v83 + 48))(v87, 1, v82) == 1)
  {
    sub_218BD359C(v87, sub_218B58D58);
  }

  else
  {
    v91 = v100;
    (*(v83 + 32))(v100, v87, v82);
    v92 = swift_allocObject();
    *(v92 + 16) = v139;
    v140(v92 + v131, v132, v134);
    sub_218BD31D8(&unk_280EE7FB0, 255, MEMORY[0x277D2F590]);
    sub_219BDCCC4();

    (*(v83 + 8))(v91, v82);
  }

  v93 = v112;
  sub_219BDFEC4();
  sub_219BE75A4();
  sub_218BD31D8(&unk_280EE8520, 255, MEMORY[0x277D2E1D0]);
  sub_219BDCC64();
  v94 = *(v80 + 8);
  v94(v81, v93);
  sub_219BE7574();
  sub_219BDCC74();
  v94(v81, v93);
  return (*(v97 + 8))(v144, v135);
}

uint64_t sub_218BD149C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v111 = a5;
  v115 = a4;
  v118 = a3;
  v7 = sub_219BDBD34();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v11 - 8);
  v112 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BE16D4();
  v113 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v85 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_219BDF8A4();
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v107 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_219BE09E4();
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v104 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_219BDF104();
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v100 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_219BEF9C4();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v94 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_219BDFFE4();
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v97 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_219BDEFE4();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v91 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_219BDFCE4();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = swift_projectBox();
  sub_218B58D38(0);
  v26 = v25;
  sub_218BD31D8(&qword_280E908F0, 255, MEMORY[0x277D33320]);
  v108 = v26;
  result = sub_219BE75B4();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v87 = v10;
  v88 = a2;
  v89 = v8;
  v90 = v7;
  sub_219BDFCD4();
  sub_218BD3220(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v29 = v28;
  v117 = sub_219BDCD44();
  v30 = *(v117 - 8);
  v121 = *(v30 + 72);
  v125 = *(v30 + 80);
  v31 = v30;
  v32 = (v125 + 32) & ~v125;
  v33 = swift_allocObject();
  v126 = xmmword_219C09BA0;
  *(v33 + 16) = xmmword_219C09BA0;
  v120 = *MEMORY[0x277CEAD18];
  v34 = *(v31 + 104);
  v123 = v31 + 104;
  v119 = v34;
  v34(v33 + v32);
  v122 = "dOfRecipeCoordinator";
  sub_218BD31D8(&unk_280EE8590, 255, MEMORY[0x277D2E058]);
  sub_219BDCCC4();

  (*(v22 + 8))(v24, v21);
  v35 = sub_219BF0B44();
  v36 = [v35 identifier];
  sub_219BF5414();

  [v35 isPaid];
  v37 = [v35 totalTime];
  v86 = v13;
  v38 = v37;
  sub_219BF5414();
  v124 = a1;

  v39 = v91;
  v116 = v29;
  sub_219BDEFB4();

  v114 = v32;
  v40 = swift_allocObject();
  *(v40 + 16) = v126;
  v41 = v120;
  v119(v40 + v32, v120, v117);
  sub_218BD31D8(&qword_280EE8900, 255, MEMORY[0x277D2D798]);
  v42 = v93;
  sub_219BDCCC4();

  (*(v92 + 8))(v39, v42);
  v43 = sub_219BF0B44();
  v44 = v95;
  v45 = v94;
  v46 = v96;
  (*(v95 + 104))(v94, *MEMORY[0x277D32840], v96);
  v47 = v97;
  sub_219BE02B4();

  (*(v44 + 8))(v45, v46);
  v48 = v114;
  v49 = swift_allocObject();
  *(v49 + 16) = v126;
  v50 = v117;
  v51 = v119;
  v119(v49 + v48, v41, v117);
  sub_218BD31D8(&unk_280EE84E0, 255, MEMORY[0x277D2E2C0]);
  v52 = v99;
  sub_219BDCCC4();

  (*(v98 + 8))(v47, v52);
  v115 = *(v115 + 24);
  v53 = sub_219BF0B44();
  v54 = [v53 sourceChannel];

  v55 = v100;
  sub_219BE01F4();
  swift_unknownObjectRelease();
  v56 = swift_allocObject();
  *(v56 + 16) = v126;
  v57 = v120;
  v51(v56 + v48, v120, v50);
  sub_218BD31D8(&unk_280EE8890, 255, MEMORY[0x277D2D8B8]);
  v58 = v102;
  sub_219BDCCC4();

  (*(v101 + 8))(v55, v58);
  v59 = sub_219BF0B44();
  v60 = [v59 sourceChannel];

  v61 = v104;
  sub_219BE01E4();
  swift_unknownObjectRelease();
  v62 = swift_allocObject();
  *(v62 + 16) = v126;
  v63 = v57;
  v64 = v117;
  v65 = v119;
  v119(v62 + v48, v63, v117);
  sub_218BD31D8(&qword_280EE8270, 255, MEMORY[0x277D2E9C0]);
  v66 = v106;
  sub_219BDCCC4();

  v67 = v61;
  v68 = v64;
  (*(v105 + 8))(v67, v66);
  v69 = v107;
  sub_219BDF894();
  v70 = swift_allocObject();
  *(v70 + 16) = v126;
  v65(v70 + v48, v120, v68);
  sub_218BD31D8(&qword_280EE8640, 255, MEMORY[0x277D2DE40]);
  v71 = v110;
  sub_219BDCCC4();

  (*(v109 + 8))(v69, v71);
  v72 = v103;
  swift_beginAccess();
  v73 = v72;
  v74 = v112;
  sub_218BD7CF0(v73, v112, sub_218B58D58);
  v75 = v113;
  v76 = v86;
  if ((*(v113 + 48))(v74, 1) == 1)
  {
    sub_218BD359C(v74, sub_218B58D58);
  }

  else
  {
    v77 = v85;
    (*(v75 + 32))(v85, v74, v76);
    v78 = v114;
    v79 = swift_allocObject();
    *(v79 + 16) = v126;
    v119(v79 + v78, v120, v68);
    sub_218BD31D8(&unk_280EE7FB0, 255, MEMORY[0x277D2F590]);
    sub_219BDCCC4();

    (*(v75 + 8))(v77, v76);
  }

  v80 = v89;
  sub_219BE04C4();
  v81 = v87;
  sub_219BE75A4();
  sub_218BD31D8(&unk_280EE83D0, 255, MEMORY[0x277D2E570]);
  sub_219BDCC64();
  v82 = *(v80 + 8);
  v83 = v90;
  v82(v81, v90);
  sub_219BE7574();
  sub_219BDCC74();
  return (v82)(v81, v83);
}

uint64_t sub_218BD24C0(uint64_t a1)
{
  sub_218B58900(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_219BE97D4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_218BD7CF0(a1, v4, sub_218B58900);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_218BD359C(v4, sub_218B58900);
    sub_218B58FCC(0);
    v5 = sub_218BD31D8(&qword_27CC0EC88, 255, sub_218B58FCC);
    sub_219BF5DF4();
    sub_219BF5E84();
    result = sub_219BF5E74();
    if (result < 0xFFFFFFFF80000000)
    {
      __break(1u);
      goto LABEL_9;
    }

    v4 = result;
    if (result <= 0x7FFFFFFF)
    {
      return v4;
    }

    __break(1u);
  }

  (*(v6 + 32))(v8, v4, v5);
  v4 = sub_219BE97A4();
  result = (*(v6 + 8))(v8, v5);
  if (v4 < 0xFFFFFFFF80000000)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v4 <= 0x7FFFFFFF)
  {
    return v4;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_218BD2724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[0] = a2;
  v16[1] = a3;
  v3 = sub_219BDBD34();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD3220(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v7 = sub_219BDCD44();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_219C09EC0;
  v12 = v11 + v10;
  v13 = *(v8 + 104);
  v13(v12, *MEMORY[0x277CEAD18], v7);
  v13(v12 + v9, *MEMORY[0x277CEAD08], v7);
  sub_219BE16D4();
  sub_218BD31D8(&unk_280EE7FB0, 255, MEMORY[0x277D2F590]);
  sub_219BDCCC4();

  sub_219BE07A4();
  sub_218BD799C();
  sub_219BE8F14();
  sub_218BD31D8(&unk_27CC0EC20, 255, MEMORY[0x277D2E800]);
  sub_219BDCC64();
  v14 = *(v4 + 8);
  v14(v6, v3);
  sub_219BE8EE4();
  sub_219BDCC74();
  return (v14)(v6, v3);
}

uint64_t sub_218BD2A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a4;
  v38 = a2;
  v39 = a3;
  v40 = a1;
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v4 - 8);
  v34 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE16D4();
  v35 = *(v6 - 8);
  v36 = v6;
  MEMORY[0x28223BE20](v6);
  v31 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BE0444();
  v32 = *(v8 - 8);
  v33 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BDFCE4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BE14C4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_219BE14A4();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = swift_projectBox();
  (*(v16 + 104))(v18, *MEMORY[0x277D2F2F0], v15);
  sub_219BE1484();
  sub_218BD31D8(&qword_280EE8010, 255, MEMORY[0x277D2F280]);
  sub_219BDCCC4();
  (*(v20 + 8))(v22, v19);
  sub_218BD3284();
  sub_218BD31D8(&qword_27CC0EC48, 255, MEMORY[0x277D2FAE0]);
  result = sub_219BEB304();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_219BDFCD4();
  sub_218BD31D8(&unk_280EE8590, 255, MEMORY[0x277D2E058]);
  sub_219BDCCC4();
  (*(v12 + 8))(v14, v11);
  result = sub_219BEB314();
  if (result < 0xFFFFFFFF80000000)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  sub_219BE0434();
  sub_218BD31D8(&unk_280EE8400, 255, MEMORY[0x277D2E530]);
  v24 = v33;
  sub_219BDCCC4();
  (*(v32 + 8))(v10, v24);
  v25 = v37;
  swift_beginAccess();
  v26 = v34;
  sub_218BD7CF0(v25, v34, sub_218B58D58);
  v28 = v35;
  v27 = v36;
  if ((*(v35 + 48))(v26, 1, v36) == 1)
  {
    return sub_218BD359C(v26, sub_218B58D58);
  }

  v29 = v31;
  (*(v28 + 32))(v31, v26, v27);
  sub_218BD31D8(&unk_280EE7FB0, 255, MEMORY[0x277D2F590]);
  sub_219BDCCC4();
  return (*(v28 + 8))(v29, v27);
}

void sub_218BD30E4()
{
  if (!qword_27CC0EBD8)
  {
    sub_219BDE814();
    sub_219BDD7A4();
    sub_218BD31D8(&unk_27CC0EBE0, 255, MEMORY[0x277D30170]);
    sub_218BD31D8(&qword_27CC14C40, 255, MEMORY[0x277D2FAE0]);
    v0 = sub_219BE8F34();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0EBD8);
    }
  }
}

uint64_t sub_218BD31D8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_218BD3220(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_218BD3284()
{
  if (!qword_27CC0EBF0)
  {
    sub_219BDE814();
    sub_219BDD7A4();
    sub_218BD31D8(&unk_27CC0EBE0, 255, MEMORY[0x277D30170]);
    sub_218BD31D8(&qword_27CC14C40, 255, MEMORY[0x277D2FAE0]);
    v0 = sub_219BEB334();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0EBF0);
    }
  }
}

void sub_218BD3378()
{
  if (!qword_27CC0EC00)
  {
    sub_219BDD7A4();
    sub_218BD31D8(&qword_27CC14C40, 255, MEMORY[0x277D2FAE0]);
    v0 = sub_219BE5FE4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0EC00);
    }
  }
}

void sub_218BD3410()
{
  if (!qword_27CC0EC08)
  {
    sub_218BD34A8();
    sub_218BD31D8(&qword_27CC0EC18, 255, sub_218BD34A8);
    v0 = sub_219BF7494();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0EC08);
    }
  }
}

void sub_218BD34A8()
{
  if (!qword_27CC0EC10)
  {
    sub_219BDE814();
    sub_219BDD7A4();
    sub_218BD31D8(&unk_27CC0EBE0, 255, MEMORY[0x277D30170]);
    sub_218BD31D8(&qword_27CC14C40, 255, MEMORY[0x277D2FAE0]);
    v0 = sub_219BE6A54();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0EC10);
    }
  }
}

uint64_t sub_218BD359C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218BD35FC(uint64_t a1)
{
  v3 = *(sub_219BE16D4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_219BDEFE4() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  sub_218BD30E4();
  v10 = v1 + ((v7 + v8 + *(*(v9 - 8) + 80)) & ~*(*(v9 - 8) + 80));

  return sub_218BCC6BC(a1, v1 + v4, v1 + v7, v10);
}

void sub_218BD3734()
{
  if (!qword_27CC0EC30)
  {
    sub_219BDE814();
    sub_219BDD7A4();
    sub_218BD31D8(&unk_27CC0EBE0, 255, MEMORY[0x277D30170]);
    sub_218BD31D8(&qword_27CC14C40, 255, MEMORY[0x277D2FAE0]);
    v0 = sub_219BE75C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0EC30);
    }
  }
}

uint64_t sub_218BD385C(uint64_t a1, uint64_t a2)
{
  sub_218B59134(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218BD38C0(uint64_t a1)
{
  sub_218BD3734();
  v4 = (*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_218B59134(0);
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = (v1 + ((v6 + *(*(v7 - 8) + 80) + 8) & ~*(*(v7 - 8) + 80)));

  return sub_218BCB15C(a1, v1 + v4, v8, v9, v10);
}

uint64_t sub_218BD39B8(uint64_t a1)
{
  sub_218BD3734();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v6);
  v8 = v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  return sub_218BCA194(a1, v1 + v5, v7, v9, v10);
}

uint64_t sub_218BD3A74(uint64_t a1)
{
  sub_218BD3734();
  v4 = (*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v5 + 31) & 0xFFFFFFFFFFFFFFF8;
  sub_2186EAB88();
  v9 = *(v1 + v5);
  v10 = *(v1 + v6);
  v11 = *(v1 + v6 + 8);
  v12 = *(v1 + v7);
  v13 = v1 + ((v7 + *(*(v8 - 8) + 80) + 8) & ~*(*(v8 - 8) + 80));

  return sub_218BC8474(a1, v1 + v4, v9, v10, v11, v12, v13);
}

uint64_t sub_218BD3BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v255 = a2;
  v237 = a1;
  sub_218BD3284();
  v5 = v4;
  v235 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v232 = v6;
  v234 = &v194 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD3220(0, &unk_280EE8380, MEMORY[0x277D2E6C8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v212 = &v194 - v8;
  v216 = sub_219BE16E4();
  v215 = *(v216 - 8);
  MEMORY[0x28223BE20](v216);
  v222 = &v194 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = sub_219BDE814();
  v247 = *(v220 - 8);
  v10 = MEMORY[0x28223BE20](v220);
  v209 = &v194 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v208 = &v194 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v214 = &v194 - v15;
  MEMORY[0x28223BE20](v14);
  v213 = &v194 - v16;
  sub_218B58F30(0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v211 = &v194 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v231 = &v194 - v20;
  sub_218B58900(0);
  MEMORY[0x28223BE20](v21 - 8);
  v229 = &v194 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = sub_219BDF584();
  v228 = *(v230 - 8);
  v23 = MEMORY[0x28223BE20](v230);
  v221 = &v194 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v227 = &v194 - v25;
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v26);
  v210 = &v194 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v281 = sub_219BDD374();
  v259 = *(v281 - 8);
  MEMORY[0x28223BE20](v281);
  v280 = &v194 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v257 = sub_219BDEE04();
  v258 = *(v257 - 8);
  MEMORY[0x28223BE20](v257);
  v256 = &v194 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = sub_219BF04A4();
  v282 = *(v218 - 8);
  MEMORY[0x28223BE20](v218);
  v217 = &v194 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB018();
  v241 = v31;
  v279 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v240 = &v194 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = sub_219BF0B74();
  v278 = *(v239 - 8);
  MEMORY[0x28223BE20](v239);
  v238 = &v194 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB308();
  v254 = v34;
  v274 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v253 = &v194 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v252 = sub_219BF0F34();
  v261 = *(v252 - 8);
  MEMORY[0x28223BE20](v252);
  v251 = &v194 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAB88();
  v263 = v37;
  v249 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v264 = &v194 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v265 = sub_219BDD7A4();
  v267 = *(v265 - 8);
  MEMORY[0x28223BE20](v265);
  v276 = (&v194 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218BD3378();
  v41 = v40;
  v242 = *(v40 - 8);
  v42 = MEMORY[0x28223BE20](v40);
  v226 = &v194 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = v43;
  MEMORY[0x28223BE20](v42);
  v275 = &v194 - v44;
  sub_218BD3410();
  v46 = v45;
  MEMORY[0x28223BE20](v45);
  v277 = &v194 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD34A8();
  v49 = v48;
  v50 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v52 = &v194 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD3828(0);
  v54 = MEMORY[0x28223BE20](v53 - 8);
  v56 = &v194 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v58 = &v194 - v57;
  v266 = v41;
  v233 = a3;
  sub_219BE5F84();
  v236 = v5;
  sub_219BEB244();

  v59 = v49;
  v223 = swift_allocBox();
  v61 = v60;
  v62 = sub_219BE16D4();
  v63 = *(v62 - 8);
  v64 = *(v63 + 56);
  v207 = v61;
  v206 = v62;
  v205 = v64;
  v204 = v63 + 56;
  v64(v61, 1, 1);
  v224 = v58;
  sub_218BD7CF0(v58, v56, sub_218BD3828);
  if ((*(v50 + 48))(v56, 1, v49) == 1)
  {
    sub_218BD359C(v56, sub_218BD3828);
    v65 = v266;
LABEL_73:
    v185 = v235;
    v186 = v234;
    v187 = v236;
    (*(v235 + 16))(v234, v255, v236);
    v188 = v242;
    v189 = v226;
    (*(v242 + 16))(v226, v233, v65);
    v190 = (*(v185 + 80) + 16) & ~*(v185 + 80);
    v191 = (v232 + *(v188 + 80) + v190) & ~*(v188 + 80);
    v192 = (v225 + v191 + 7) & 0xFFFFFFFFFFFFFFF8;
    v193 = swift_allocObject();
    (*(v185 + 32))(v193 + v190, v186, v187);
    (*(v188 + 32))(v193 + v191, v189, v65);
    *(v193 + v192) = v223;

    sub_219BDD154();

    sub_219BDD134();
    sub_218BD359C(v224, sub_218BD3828);
  }

  (*(v50 + 32))(v52, v56, v49);
  v66 = MEMORY[0x277D84F90];
  v284 = MEMORY[0x277D84F90];
  v285 = MEMORY[0x277D84F90];
  v199 = v50;
  v67 = v277;
  (*(v50 + 16))(v277, v52, v59);
  v68 = *(v46 + 36);
  v69 = sub_218BD31D8(&qword_27CC0EC18, 255, sub_218BD34A8);
  v219 = v52;
  v70 = v69;
  sub_219BF5DF4();
  v71 = v67;
  sub_219BF5E84();
  v72 = *&v67[v68];
  v250 = v66;
  v65 = v266;
  v73 = v263;
  v74 = v264;
  v75 = v265;
  v262 = v59;
  if (v72 != v283)
  {
    v270 = (v242 + 8);
    v271 = (v242 + 16);
    v269 = (v267 + 11);
    v198 = v267 + 1;
    v268 = *MEMORY[0x277D2FAC8];
    v260 = *MEMORY[0x277D2FAD8];
    v246 = *MEMORY[0x277D2FAD0];
    v267 += 12;
    v197 = (v279 + 32);
    v196 = (v282 + 8);
    v195 = (v279 + 8);
    v203 = (v274 + 32);
    v202 = (v278 + 8);
    v201 = (v274 + 8);
    v245 = (v249 + 32);
    v200 = *MEMORY[0x277D2FAB0];
    v244 = (v261 + 8);
    v243 = (v249 + 8);
    v278 = (v259 + 8);
    v279 = v259 + 16;
    v250 = MEMORY[0x277D84F90];
    v272 = v70;
    v273 = v68;
    v249 = v258 + 16;
    v248 = (v258 + 8);
    while (1)
    {
      v95 = sub_219BF5EC4();
      v96 = v275;
      (*v271)(v275);
      v95(&v283, 0);
      sub_219BF5E94();
      v97 = v276;
      sub_219BE5FC4();
      (*v270)(v96, v65);
      v98 = (*v269)(v97, v75);
      if (v98 == v268)
      {
        (*v267)(v97, v75);
        v99 = *v97;
        v100 = sub_219BE5B44();
        v101 = *(v100 + 16);
        v274 = v99;
        if (v101)
        {
          v283 = MEMORY[0x277D84F90];
          sub_219BF73F4();
          v102 = (*(v258 + 80) + 32) & ~*(v258 + 80);
          v261 = v100;
          v103 = v100 + v102;
          v282 = *(v258 + 72);
          v104 = *(v258 + 16);
          v105 = v257;
          v106 = v256;
          v107 = v248;
          do
          {
            v104(v106, v103, v105);
            sub_219BDEDF4();
            (*v107)(v106, v105);
            sub_219BF73D4();
            sub_219BF7414();
            sub_219BF7424();
            sub_219BF73E4();
            v103 += v282;
            --v101;
          }

          while (v101);

          v108 = v283;
          v65 = v266;
        }

        else
        {

          v108 = MEMORY[0x277D84F90];
        }

        sub_2191ED6C8(v108);
        v121 = sub_219BE5B34();
        v122 = *(v121 + 16);
        if (v122)
        {
          v283 = MEMORY[0x277D84F90];
          sub_21870B65C(0, v122, 0);
          v123 = v283;
          v124 = (*(v259 + 80) + 32) & ~*(v259 + 80);
          v261 = v121;
          v125 = v121 + v124;
          v282 = *(v259 + 72);
          v126 = *(v259 + 16);
          do
          {
            v128 = v280;
            v127 = v281;
            v126(v280, v125, v281);
            v129 = sub_219BDD364();
            v130 = [v129 identifier];
            v131 = sub_219BF5414();
            v133 = v132;

            (*v278)(v128, v127);
            v283 = v123;
            v135 = *(v123 + 16);
            v134 = *(v123 + 24);
            if (v135 >= v134 >> 1)
            {
              sub_21870B65C((v134 > 1), v135 + 1, 1);
              v123 = v283;
            }

            *(v123 + 16) = v135 + 1;
            v136 = v123 + 16 * v135;
            *(v136 + 32) = v131;
            *(v136 + 40) = v133;
            v125 += v282;
            --v122;
          }

          while (v122);

          v65 = v266;
        }

        else
        {

          v123 = MEMORY[0x277D84F90];
        }

        sub_2191ED3E8(v123);

        v73 = v263;
        v74 = v264;
        v75 = v265;
        v71 = v277;
        v94 = v273;
        goto LABEL_10;
      }

      if (v98 == v260)
      {
        (*v267)(v97, v75);
        (*v245)(v74, v97, v73);
        v109 = v251;
        sub_219BF07D4();
        sub_219BF0F14();
        v110 = (*v244)(v109, v252);
        MEMORY[0x21CECC690](v110);
        if (*((v285 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v285 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_219BF5A14();
        }

        sub_219BF5A54();
        (*v243)(v74, v73);
        goto LABEL_9;
      }

      if (v98 == v246)
      {
        break;
      }

      if (v98 == v200)
      {
        (*v267)(v97, v75);
        (*v197)(v240, v97, v241);
        v137 = v217;
        sub_219BF07D4();
        v138 = sub_219BF0404();
        (*v196)(v137, v218);
        v139 = [v138 identifier];
        swift_unknownObjectRelease();
        v140 = sub_219BF5414();
        v142 = v141;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v250 = sub_218840D24(0, *(v250 + 2) + 1, 1, v250);
        }

        v144 = *(v250 + 2);
        v143 = *(v250 + 3);
        if (v144 >= v143 >> 1)
        {
          v250 = sub_218840D24((v143 > 1), v144 + 1, 1, v250);
        }

        (*v195)(v240, v241);
        v145 = v250;
        *(v250 + 2) = v144 + 1;
        v146 = &v145[16 * v144];
        *(v146 + 4) = v140;
        *(v146 + 5) = v142;
        goto LABEL_41;
      }

      (*v198)(v97, v75);
LABEL_9:
      v71 = v277;
      v94 = v273;
LABEL_10:
      sub_219BF5E84();
      if (*(v71 + v94) == v283)
      {
        goto LABEL_5;
      }
    }

    (*v267)(v97, v75);
    (*v203)(v253, v97, v254);
    v111 = v238;
    sub_219BF07D4();
    v112 = sub_219BF0B44();
    (*v202)(v111, v239);
    v113 = [v112 identifier];

    v114 = sub_219BF5414();
    v116 = v115;

    v117 = v284;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v117 = sub_218840D24(0, *(v117 + 2) + 1, 1, v117);
    }

    v119 = *(v117 + 2);
    v118 = *(v117 + 3);
    if (v119 >= v118 >> 1)
    {
      v117 = sub_218840D24((v118 > 1), v119 + 1, 1, v117);
    }

    (*v201)(v253, v254);
    *(v117 + 2) = v119 + 1;
    v120 = &v117[16 * v119];
    *(v120 + 4) = v114;
    *(v120 + 5) = v116;
    v284 = v117;
    v74 = v264;
LABEL_41:
    v75 = v265;
    goto LABEL_9;
  }

LABEL_5:
  sub_218BD359C(v71, sub_218BD3410);
  v76 = v228;
  v77 = v227;
  v78 = v230;
  (*(v228 + 104))(v227, *MEMORY[0x277D2DB60], v230);
  v80 = v284;
  v79 = v285;
  v81 = sub_219BE97D4();
  v82 = v229;
  (*(*(v81 - 8) + 56))(v229, 1, 1, v81);
  v83 = sub_219BDF474();
  (*(*(v83 - 8) + 56))(v231, 1, 1, v83);
  v84 = v219;
  result = sub_218E65F90();
  v282 = result;
  if (v86)
  {
    goto LABEL_78;
  }

  LODWORD(v281) = sub_21968FE54(v82, v84);
  (*(v76 + 16))(v221, v77, v78);
  v87 = v213;
  sub_219BE6934();
  v88 = v247;
  v89 = v247 + 32;
  v90 = v214;
  v91 = v87;
  v92 = v220;
  v280 = *(v247 + 32);
  (v280)(v214, v91, v220);
  v278 = *(v88 + 88);
  v279 = v88 + 88;
  v93 = (v278)(v90, v92);
  LODWORD(v277) = *MEMORY[0x277D30158];
  if (v93 == v277)
  {
    (*(v215 + 104))(v222, *MEMORY[0x277D2F608], v216);
  }

  else if (v93 == *MEMORY[0x277D30150])
  {
    (*(v215 + 104))(v222, *MEMORY[0x277D2F6E8], v216);
  }

  else
  {
    if (v93 == *MEMORY[0x277D30168])
    {
      v147 = MEMORY[0x277D2F6C8];
    }

    else
    {
      v147 = MEMORY[0x277D2F818];
    }

    (*(v215 + 104))(v222, *v147, v216);
  }

  v149 = *(v88 + 8);
  v148 = v88 + 8;
  v276 = v149;
  (v149)(v90, v92);
  v150 = sub_219BE6944();
  if (v282 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_75;
  }

  if (v282 > 0x7FFFFFFF)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v90 = v150;
  v84 = v151;
  v275 = v80;
  if (v79 >> 62)
  {
LABEL_76:
    v152 = sub_219BF7214();
    goto LABEL_52;
  }

  v152 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_52:
  v247 = v148;
  v273 = v84;
  v274 = v90;
  if (!v152)
  {
LABEL_65:
    v170 = v208;
    sub_219BE6934();
    v171 = v209;
    (v280)(v209, v170, v92);
    v172 = (v278)(v171, v92);
    v173 = v212;
    v174 = v230;
    v175 = v229;
    if (v172 == v277 || (v172 != *MEMORY[0x277D30150] ? (v176 = v172 == *MEMORY[0x277D30168]) : (v176 = 1), v176))
    {
      (v276)(v171, v92);
      v182 = *MEMORY[0x277D2E6B0];
      v179 = sub_219BE0674();
      (*(*(v179 - 8) + 104))(v173, v182, v179);
      v181 = v228;
    }

    else
    {
      v177 = *MEMORY[0x277D2E6C0];
      v178 = v171;
      v179 = sub_219BE0674();
      (*(*(v179 - 8) + 104))(v173, v177, v179);
      v180 = v178;
      v65 = v266;
      v181 = v228;
      (v276)(v180, v92);
    }

    sub_219BE0674();
    (*(*(v179 - 8) + 56))(v173, 0, 1, v179);
    v183 = v231;
    sub_218BD7CF0(v231, v211, sub_218B58F30);
    v184 = v210;
    sub_219BE15E4();

    sub_218BD359C(v183, sub_218B58F30);
    sub_218BD359C(v175, sub_218B58900);
    (*(v181 + 8))(v227, v174);
    (*(v199 + 8))(v219, v262);
    v205(v184, 0, 1, v206);
    sub_218B58ECC(v184, v207);
    goto LABEL_73;
  }

  v283 = MEMORY[0x277D84F90];
  result = sub_21870B65C(0, v152 & ~(v152 >> 63), 0);
  if ((v152 & 0x8000000000000000) == 0)
  {
    v272 = v89;
    v153 = v283;
    if ((v79 & 0xC000000000000001) != 0)
    {
      v154 = 0;
      do
      {
        MEMORY[0x21CECE0F0](v154, v79);
        v155 = [swift_unknownObjectRetain() articleID];
        v156 = sub_219BF5414();
        v158 = v157;
        swift_unknownObjectRelease_n();

        v283 = v153;
        v160 = *(v153 + 16);
        v159 = *(v153 + 24);
        if (v160 >= v159 >> 1)
        {
          sub_21870B65C((v159 > 1), v160 + 1, 1);
          v153 = v283;
        }

        ++v154;
        *(v153 + 16) = v160 + 1;
        v161 = v153 + 16 * v160;
        *(v161 + 32) = v156;
        *(v161 + 40) = v158;
      }

      while (v152 != v154);
    }

    else
    {
      v162 = v79 + 32;
      do
      {
        v163 = [swift_unknownObjectRetain_n() articleID];
        v164 = sub_219BF5414();
        v166 = v165;
        swift_unknownObjectRelease_n();

        v283 = v153;
        v168 = *(v153 + 16);
        v167 = *(v153 + 24);
        if (v168 >= v167 >> 1)
        {
          sub_21870B65C((v167 > 1), v168 + 1, 1);
          v153 = v283;
        }

        *(v153 + 16) = v168 + 1;
        v169 = v153 + 16 * v168;
        *(v169 + 32) = v164;
        *(v169 + 40) = v166;
        v162 += 8;
        --v152;
      }

      while (v152);
    }

    v92 = v220;
    v65 = v266;
    goto LABEL_65;
  }

  __break(1u);
LABEL_78:
  __break(1u);
  return result;
}

uint64_t sub_218BD5BC4(uint64_t a1)
{
  sub_218BD3284();
  v4 = (*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80);
  v5 = *(*(v3 - 8) + 64);
  sub_218BD3378();
  v7 = *(v6 - 8);
  v8 = (v4 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_218BD2A40(a1, v1 + v4, v1 + v8, v9);
}

void sub_218BD5CD4()
{
  if (!qword_27CC0EC60)
  {
    sub_219BDE814();
    sub_219BDD7A4();
    sub_218BD31D8(&unk_27CC0EBE0, 255, MEMORY[0x277D30170]);
    sub_218BD31D8(&qword_27CC14C40, 255, MEMORY[0x277D2FAE0]);
    v0 = sub_219BE6FA4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0EC60);
    }
  }
}

uint64_t sub_218BD5DC8(uint64_t a1)
{
  sub_218BD799C();
  v3 = v2;
  v193 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v191 = v4;
  v192 = &v135 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58F30(0);
  MEMORY[0x28223BE20](v5 - 8);
  v188 = &v135 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD3220(0, &unk_280EE8380, MEMORY[0x277D2E6C8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v187 = &v135 - v8;
  v197 = sub_219BE16E4();
  v196 = *(v197 - 8);
  MEMORY[0x28223BE20](v197);
  v198 = &v135 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = sub_219BDF584();
  v194 = *(v195 - 8);
  MEMORY[0x28223BE20](v195);
  v209 = &v135 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = sub_219BE16D4();
  v189 = *(v190 - 8);
  v11 = MEMORY[0x28223BE20](v190);
  v186 = &v135 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = v12;
  MEMORY[0x28223BE20](v11);
  v207 = &v135 - v13;
  sub_218BD7A90();
  v203 = v14;
  v202 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v201 = &v135 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_219BF0B74();
  v199 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v167 = &v135 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_219BDD374();
  v181 = *(v172 - 8);
  MEMORY[0x28223BE20](v172);
  v171 = &v135 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_219BDEE04();
  v180 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v169 = &v135 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = sub_219BF04A4();
  v183 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v173 = &v135 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = sub_219BF07A4();
  v176 = *(v179 - 8);
  MEMORY[0x28223BE20](v179);
  v178 = &v135 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = sub_219BF0F34();
  v175 = *(v213 - 8);
  MEMORY[0x28223BE20](v213);
  v212 = &v135 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = sub_219BF0614();
  v182 = *(v204 - 8);
  MEMORY[0x28223BE20](v204);
  v200 = &v135 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_219BF13A4();
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v135 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58CA4();
  v224 = v26;
  v222 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v28 = &v135 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD7B84();
  v30 = v29 - 8;
  MEMORY[0x28223BE20](v29);
  v32 = &v135 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58900(0);
  MEMORY[0x28223BE20](v33 - 8);
  v35 = &v135 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58FCC(0);
  v37 = v36;
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v40 = &v135 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE8EF4();
  v208 = v35;
  v41 = v25;
  v210 = a1;
  v211 = v3;
  v42 = v37;
  sub_219BE8F24();
  v43 = MEMORY[0x277D84F90];
  v226 = MEMORY[0x277D84F90];
  v227 = MEMORY[0x277D84F90];
  v184 = v38;
  v44 = v38;
  v45 = v204;
  (*(v44 + 16))(v32, v40, v37);
  v46 = *(v30 + 44);
  sub_218BD31D8(&qword_27CC0EC88, 255, sub_218B58FCC);
  v215 = v40;
  sub_219BF5DF4();
  sub_219BF5E84();
  v47 = *&v32[v46];
  v214 = v43;
  v206 = v43;
  v48 = v200;
  v216 = v42;
  if (v47 != v225)
  {
    v69 = v222++;
    v223 = (v69 + 2);
    v221 = *MEMORY[0x277D32DB8];
    v220 = (v182 + 11);
    v218 = *MEMORY[0x277D32D10];
    v217 = *MEMORY[0x277D32E00];
    v205 = *MEMORY[0x277D32E10];
    v177 = *MEMORY[0x277D32E18];
    v166 = *MEMORY[0x277D32DD8];
    v165 = *MEMORY[0x277D32CF8];
    v162 = *MEMORY[0x277D32DC0];
    v157 = *MEMORY[0x277D32CF0];
    v154 = *MEMORY[0x277D32E08];
    v153 = *MEMORY[0x277D32DB0];
    v152 = *MEMORY[0x277D32DE0];
    v151 = *MEMORY[0x277D32DF0];
    v219 = v182 + 1;
    v182 += 12;
    v150 = (v199 + 32);
    v149 = *MEMORY[0x277D32D38];
    v148 = (v199 + 8);
    v156 = (v183 + 32);
    v155 = (v183 + 8);
    v147 = *MEMORY[0x277D32DE8];
    v164 = v176 + 4;
    v163 = (v176 + 1);
    v146 = *MEMORY[0x277D32D18];
    v176 = (v175 + 4);
    ++v175;
    v145 = *MEMORY[0x277D32DA8];
    v144 = *MEMORY[0x277D32DF8];
    v143 = *MEMORY[0x277D32DD0];
    v161 = v180 + 16;
    v160 = (v180 + 8);
    v159 = v181 + 16;
    v158 = (v181 + 8);
    v206 = MEMORY[0x277D84F90];
    v214 = MEMORY[0x277D84F90];
    v183 = v41;
    do
    {
      v70 = sub_219BF5EC4();
      v71 = v224;
      (*v223)(v28);
      v70(&v225, 0);
      sub_219BF5E94();
      sub_219BE5FC4();
      (*v222)(v28, v71);
      sub_219BF1394();
      sub_218BD359C(v41, MEMORY[0x277D33320]);
      v72 = (*v220)(v48, v45);
      if (v72 != v221 && v72 != v218 && v72 != v217)
      {
        if (v72 == v205)
        {
          (*v182)(v48, v45);
          (*v176)(v212, v48, v213);
          v73 = [sub_219BF0F14() articleID];
          swift_unknownObjectRelease();
          v74 = sub_219BF5414();
          v199 = v75;

          v76 = v227;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v76 = sub_218840D24(0, *(v76 + 2) + 1, 1, v76);
          }

          v78 = *(v76 + 2);
          v77 = *(v76 + 3);
          if (v78 >= v77 >> 1)
          {
            v76 = sub_218840D24((v77 > 1), v78 + 1, 1, v76);
          }

          (*v175)(v212, v213);
          *(v76 + 2) = v78 + 1;
          v79 = &v76[16 * v78];
          v80 = v199;
          *(v79 + 4) = v74;
          *(v79 + 5) = v80;
          v227 = v76;
          goto LABEL_27;
        }

        if (v72 != v177)
        {
          if (v72 == v166)
          {
            (*v182)(v48, v45);
            (*v164)(v178, v48, v179);
            v81 = sub_219BF06B4();
            v82 = [v81 identifier];

            v83 = sub_219BF5414();
            v199 = v84;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v214 = sub_218840D24(0, *(v214 + 2) + 1, 1, v214);
            }

            v86 = *(v214 + 2);
            v85 = *(v214 + 3);
            v87 = v86 + 1;
            if (v86 >= v85 >> 1)
            {
              v214 = sub_218840D24((v85 > 1), v86 + 1, 1, v214);
            }

            (*v163)(v178, v179);
            v88 = v214;
            goto LABEL_26;
          }

          if (v72 != v165)
          {
            if (v72 == v162)
            {
              (*v182)(v48, v45);
              (*v156)(v173, v48, v174);
              v91 = [sub_219BF0404() identifier];
              swift_unknownObjectRelease();
              v83 = sub_219BF5414();
              v199 = v92;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v206 = sub_218840D24(0, *(v206 + 2) + 1, 1, v206);
              }

              v86 = *(v206 + 2);
              v93 = *(v206 + 3);
              v87 = v86 + 1;
              if (v86 >= v93 >> 1)
              {
                v206 = sub_218840D24((v93 > 1), v86 + 1, 1, v206);
              }

              (*v155)(v173, v174);
              v88 = v206;
LABEL_26:
              *(v88 + 2) = v87;
              v89 = &v88[16 * v86];
              v90 = v199;
              *(v89 + 4) = v83;
              *(v89 + 5) = v90;
LABEL_27:
              v41 = v183;
              goto LABEL_11;
            }

            if (v72 != v157 && v72 != v154 && v72 != v153)
            {
              if (v72 == v152)
              {
                (*v182)(v48, v45);
                v94 = *v48;
                v95 = sub_219BE5B44();
                v96 = *(v95 + 16);
                v137 = v94;
                if (v96)
                {
                  v225 = MEMORY[0x277D84F90];
                  v97 = v95;
                  v199 = v96;
                  sub_21870B65C(0, v96, 0);
                  v98 = v225;
                  v99 = (*(v180 + 80) + 32) & ~*(v180 + 80);
                  v136 = v97;
                  v100 = v97 + v99;
                  v139 = *(v180 + 72);
                  v138 = *(v180 + 16);
                  do
                  {
                    v101 = v169;
                    v142 = v100;
                    v102 = v170;
                    v138(v169, v100, v170);
                    v103 = [sub_219BDEDF4() articleID];
                    v141 = sub_219BF5414();
                    v140 = v104;
                    swift_unknownObjectRelease();

                    (*v160)(v101, v102);
                    v225 = v98;
                    v106 = *(v98 + 16);
                    v105 = *(v98 + 24);
                    if (v106 >= v105 >> 1)
                    {
                      sub_21870B65C((v105 > 1), v106 + 1, 1);
                      v98 = v225;
                    }

                    *(v98 + 16) = v106 + 1;
                    v107 = v98 + 16 * v106;
                    v108 = v140;
                    *(v107 + 32) = v141;
                    *(v107 + 40) = v108;
                    v109 = v199-- == 1;
                    v100 = v142 + v139;
                  }

                  while (!v109);

                  v45 = v204;
                  v41 = v183;
                  v118 = v98;
                }

                else
                {

                  v118 = MEMORY[0x277D84F90];
                }

                sub_2191ED3E8(v118);
                v119 = sub_219BE5B34();
                v120 = *(v119 + 16);
                if (v120)
                {
                  v225 = MEMORY[0x277D84F90];
                  v121 = v119;
                  v199 = v120;
                  sub_21870B65C(0, v120, 0);
                  v122 = v225;
                  v123 = (*(v181 + 80) + 32) & ~*(v181 + 80);
                  v136 = v121;
                  v124 = v121 + v123;
                  v139 = *(v181 + 72);
                  v138 = *(v181 + 16);
                  do
                  {
                    v125 = v171;
                    v142 = v124;
                    v126 = v172;
                    v138(v171, v124, v172);
                    v127 = sub_219BDD364();
                    v128 = [v127 identifier];
                    v141 = sub_219BF5414();
                    v140 = v129;

                    (*v158)(v125, v126);
                    v225 = v122;
                    v131 = *(v122 + 16);
                    v130 = *(v122 + 24);
                    if (v131 >= v130 >> 1)
                    {
                      sub_21870B65C((v130 > 1), v131 + 1, 1);
                      v122 = v225;
                    }

                    *(v122 + 16) = v131 + 1;
                    v132 = v122 + 16 * v131;
                    v133 = v140;
                    *(v132 + 32) = v141;
                    *(v132 + 40) = v133;
                    v109 = v199-- == 1;
                    v124 = v142 + v139;
                  }

                  while (!v109);

                  v45 = v204;
                  v41 = v183;
                  v134 = v122;
                }

                else
                {

                  v134 = MEMORY[0x277D84F90];
                }

                sub_2191ED3E8(v134);

                goto LABEL_11;
              }

              if (v72 == v151)
              {
                (*v182)(v48, v45);
                (*v150)(v167, v48, v168);
                v110 = sub_219BF0B44();
                v111 = [v110 identifier];

                v142 = sub_219BF5414();
                v199 = v112;

                v113 = v226;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v113 = sub_218840D24(0, *(v113 + 2) + 1, 1, v113);
                }

                v115 = *(v113 + 2);
                v114 = *(v113 + 3);
                if (v115 >= v114 >> 1)
                {
                  v113 = sub_218840D24((v114 > 1), v115 + 1, 1, v113);
                }

                (*v148)(v167, v168);
                *(v113 + 2) = v115 + 1;
                v116 = &v113[16 * v115];
                v117 = v199;
                *(v116 + 4) = v142;
                *(v116 + 5) = v117;
                v226 = v113;
                goto LABEL_27;
              }

              if (v72 != v149 && v72 != v147 && v72 != v146 && v72 != v145 && v72 != v144 && v72 == v143)
              {
                goto LABEL_11;
              }
            }
          }
        }
      }

      (*v219)(v48, v45);
LABEL_11:
      sub_219BF5E84();
    }

    while (*&v32[v46] != v225);
  }

  sub_218BD359C(v32, sub_218BD7B84);
  v49 = v201;
  sub_219BE8F04();
  v50 = sub_218E66208();
  v52 = v51;
  result = (*(v202 + 8))(v49, v203);
  if ((v52 & 1) == 0)
  {
    sub_218BD24C0(v208);
    (*(v194 + 104))(v209, *MEMORY[0x277D2DB48], v195);
    (*(v196 + 104))(v198, *MEMORY[0x277D2F818], v197);
    result = sub_219BE6944();
    v224 = result;
    if (v50 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v50 <= 0x7FFFFFFF)
    {
      v54 = *MEMORY[0x277D2E6C0];
      v55 = sub_219BE0674();
      v56 = *(v55 - 8);
      v57 = v187;
      (*(v56 + 104))(v187, v54, v55);
      (*(v56 + 56))(v57, 0, 1, v55);
      v58 = sub_219BDF474();
      (*(*(v58 - 8) + 56))(v188, 1, 1, v58);
      v59 = v207;
      sub_219BE15E4();
      v60 = v189;
      v61 = v186;
      v62 = v190;
      (*(v189 + 16))(v186, v59, v190);
      v63 = v193;
      v64 = v192;
      v65 = v211;
      (*(v193 + 16))(v192, v210, v211);
      v66 = (*(v60 + 80) + 16) & ~*(v60 + 80);
      v67 = (v185 + *(v63 + 80) + v66) & ~*(v63 + 80);
      v68 = swift_allocObject();
      (*(v60 + 32))(v68 + v66, v61, v62);
      (*(v63 + 32))(v68 + v67, v64, v65);
      sub_219BDD154();

      (*(v60 + 8))(v207, v62);
      sub_218BD359C(v208, sub_218B58900);
      return (*(v184 + 8))(v215, v216);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}