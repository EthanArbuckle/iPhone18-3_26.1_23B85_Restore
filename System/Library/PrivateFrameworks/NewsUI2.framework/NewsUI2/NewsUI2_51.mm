void sub_218C73B5C()
{
  v1 = sub_219BE8DD4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219BE20E4();
  v5 = (*(v2 + 88))(v4, v1);
  if (v5 == *MEMORY[0x277D6E328])
  {
    (*(v2 + 96))(v4, v1);
    [*(v0 + 136) solveForTime_];
    v7 = v6;
    v8 = *(v0 + 112);
    v9 = *(v0 + 120);
    __swift_project_boxed_opaque_existential_1((v0 + 88), v8);
    v10 = (*(v9 + 8))(v8, v9);
    [v10 setContentAlpha_];
  }

  else if (v5 == *MEMORY[0x277D6E318] || v5 == *MEMORY[0x277D6E320])
  {
    v12 = *(v0 + 112);
    v13 = *(v0 + 120);
    __swift_project_boxed_opaque_existential_1((v0 + 88), v12);
    v14 = (*(v13 + 8))(v12, v13);
    sub_218ED42D0(v14);
  }

  else if (v5 == *MEMORY[0x277D6E310])
  {
    v15 = *(v0 + 112);
    v16 = *(v0 + 120);
    __swift_project_boxed_opaque_existential_1((v0 + 88), v15);
    v17 = (*(v16 + 8))(v15, v16);
    sub_218ED448C(v17);
  }

  else
  {
    (*(v2 + 8))(v4, v1);
  }
}

void sub_218C73D98(char a1)
{
  if (a1)
  {

    sub_218C73F28();
  }

  else
  {
    v1 = objc_opt_self();
    v2 = swift_allocObject();
    swift_weakInit();
    v3 = swift_allocObject();
    *(v3 + 16) = sub_218C74664;
    *(v3 + 24) = v2;
    v5[4] = sub_218807D50;
    v5[5] = v3;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 1107296256;
    v5[2] = sub_218807CE4;
    v5[3] = &block_descriptor_42;
    v4 = _Block_copy(v5);

    [v1 performWithoutAnimation_];
    _Block_release(v4);
    LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

    if (v4)
    {
      __break(1u);
    }
  }
}

void sub_218C73F28()
{
  v1 = v0;
  v2 = sub_219BE7724();
  v27 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BE7784();
  v26 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BE8DD4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    swift_getObjectType();
    v14 = sub_219BE64C4();

    if (v14)
    {
      v15 = [v14 navigationBar];

      if (v15)
      {
        sub_219BE20E4();
        v16 = (*(v9 + 88))(v11, v8);
        if (v16 == *MEMORY[0x277D6E328])
        {
          (*(v9 + 96))(v11, v8);
          [*(v1 + 136) solveForTime_];
          v18 = v17;
          v19 = *(v1 + 72);
          v20 = *(v1 + 80);
          __swift_project_boxed_opaque_existential_1((v1 + 48), v19);
          sub_219BE20E4();
          sub_219BE7764();
          (*(v26 + 8))(v7, v5);
          (*(v20 + 80))(v15, v4, v19, v20, v18);
        }

        else if (v16 == *MEMORY[0x277D6E318] || v16 == *MEMORY[0x277D6E320])
        {
          v23 = *(v1 + 72);
          v24 = *(v1 + 80);
          __swift_project_boxed_opaque_existential_1((v1 + 48), v23);
          sub_219BE20E4();
          sub_219BE7764();
          (*(v26 + 8))(v7, v5);
          (*(v24 + 72))(v15, v4, v23, v24);
        }

        else
        {
          if (v16 != *MEMORY[0x277D6E310])
          {
            (*(v9 + 8))(v11, v8);
            goto LABEL_12;
          }

          v21 = *(v1 + 72);
          v22 = *(v1 + 80);
          __swift_project_boxed_opaque_existential_1((v1 + 48), v21);
          sub_219BE20E4();
          sub_219BE7764();
          (*(v26 + 8))(v7, v5);
          (*(v22 + 64))(v15, v4, v21, v22);
        }

        (*(v27 + 8))(v4, v2);
LABEL_12:
        [v15 layoutIfNeeded];
      }
    }
  }
}

uint64_t sub_218C74398(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a2();
  }

  return result;
}

uint64_t sub_218C743F8()
{
  sub_218774F78(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1(v0 + 48);
  __swift_destroy_boxed_opaque_existential_1(v0 + 88);

  return swift_deallocClassInstance();
}

void sub_218C74484(void *a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
}

void (*sub_218C744E0(uint64_t *a1))(id **a1, char a2)
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
  return sub_218C74574;
}

void sub_218C74574(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  *((*a1)[5] + 3) = (*a1)[4];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

unint64_t sub_218C74610()
{
  result = qword_280E9A2E8;
  if (!qword_280E9A2E8)
  {
    type metadata accessor for TagFeedViewerBarAnimationCoordinator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9A2E8);
  }

  return result;
}

void sub_218C746C4()
{
  sub_218C73B5C();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_getObjectType();
    v2 = sub_219BE64C4();

    if (v2)
    {
      v3 = [v2 navigationBar];

      if (v3)
      {
        [v3 setNeedsLayout];
        [v3 layoutIfNeeded];
      }
    }
  }
}

uint64_t sub_218C74838(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_2188996C0(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_218C7FDD0(v6);
  return sub_219BF73E4();
}

uint64_t sub_218C748B4()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_218C74964()
{
  sub_219BF5524();
}

uint64_t sub_218C74A00()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_218C74AAC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_218C81364();
  *a1 = result;
  return result;
}

void sub_218C74ADC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000064656E69;
  v4 = 0xE800000000000000;
  v5 = 0x6E4964656E676973;
  if (v2 != 1)
  {
    v5 = 0x754F64656E676973;
    v4 = 0xE900000000000074;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6D72657465646E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_218C74CA4()
{
  sub_21874E654(0, &unk_27CC10420, type metadata accessor for FCSportsSyncState, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE30B4();
}

uint64_t sub_218C74D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_219BED174();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_219BED1D4();
  v11 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v3 + OBJC_IVAR____TtC7NewsUI217SportsSyncManager_prepareSyncingGroup);
  v19[0] = *(v3 + OBJC_IVAR____TtC7NewsUI217SportsSyncManager_prepareQueue);
  v19[1] = v14;
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a1;
  aBlock[4] = sub_218C82914;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_101;
  v17 = _Block_copy(aBlock);

  sub_219BED1A4();
  v21 = MEMORY[0x277D84F90];
  sub_21874E0F0(&qword_280E927E0, MEMORY[0x277D85198]);
  sub_21874E654(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_21874EB68();
  sub_219BF7164();
  sub_219BF6654();
  _Block_release(v17);
  (*(v8 + 8))(v10, v7);
  (*(v11 + 8))(v13, v20);
}

uint64_t sub_218C750F4(const char *a1, uint64_t (*a2)(void))
{
  v5 = v2;
  v6 = sub_219BED224();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2186C6148(0, &qword_280E8E3B0);
  *v9 = sub_219BF66A4();
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v10 = sub_219BED254();
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    if (qword_280EE6038 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v11 = sub_219BE5434();
  __swift_project_value_buffer(v11, qword_280F62730);
  v12 = sub_219BE5414();
  v13 = sub_219BF6214();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2186C1000, v12, v13, a1, v14, 2u);
    MEMORY[0x21CECF960](v14, -1, -1);
  }

  return a2(*(v5 + OBJC_IVAR____TtC7NewsUI217SportsSyncManager_suspendSyncingGroup));
}

void sub_218C75310(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a4;
  v34 = a5;
  v38 = a3;
  v8 = sub_219BED174();
  v37 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BED1D4();
  v35 = *(v11 - 8);
  v36 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE1AB4();
  v14 = OBJC_IVAR____TtC7NewsUI217SportsSyncManager_suspendedTokens;
  swift_beginAccess();
  v15 = *(v5 + v14);

  v16 = sub_2188537B8(a1, a2, v15);

  if (v16)
  {
    sub_219BE1AC4();
    if (qword_280EE6038 != -1)
    {
      swift_once();
    }

    v17 = sub_219BE5434();
    __swift_project_value_buffer(v17, qword_280F62730);

    v18 = sub_219BE5414();
    v19 = sub_219BF6214();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      aBlock[0] = v21;
      *v20 = 136446210;
      *(v20 + 4) = sub_2186D1058(a1, a2, aBlock);
      _os_log_impl(&dword_2186C1000, v18, v19, "Sports sync manager deduped block to run on resume for token %{public}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x21CECF960](v21, -1, -1);
      MEMORY[0x21CECF960](v20, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();

    sub_219497B60(&v40, a1, a2);
    swift_endAccess();

    sub_219BE1AC4();
    if (qword_280EE6038 != -1)
    {
      swift_once();
    }

    v22 = sub_219BE5434();
    __swift_project_value_buffer(v22, qword_280F62730);

    v23 = sub_219BE5414();
    v24 = sub_219BF6214();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      aBlock[0] = v26;
      *v25 = 136446210;
      *(v25 + 4) = sub_2186D1058(a1, a2, aBlock);
      _os_log_impl(&dword_2186C1000, v23, v24, "Sports sync manager queuing block to run on resume for token %{public}s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x21CECF960](v26, -1, -1);
      MEMORY[0x21CECF960](v25, -1, -1);
    }

    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = swift_allocObject();
    v28[2] = v27;
    v28[3] = a1;
    v29 = v33;
    v30 = v34;
    v28[4] = a2;
    v28[5] = v29;
    v28[6] = v30;
    aBlock[4] = sub_218C828FC;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_218793E0C;
    aBlock[3] = &block_descriptor_94;
    v31 = _Block_copy(aBlock);

    sub_219BED1A4();
    v40 = MEMORY[0x277D84F90];
    sub_21874E0F0(&qword_280E927E0, MEMORY[0x277D85198]);
    sub_21874E654(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_21874EB68();
    sub_219BF7164();
    sub_219BF6654();
    _Block_release(v31);
    (*(v37 + 8))(v10, v8);
    (*(v35 + 8))(v13, v36);
  }
}

uint64_t sub_218C75918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_2186C6148(0, &qword_280E8E3B0);

  v9 = sub_219BF66A4();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = sub_218846958;
  v11[6] = v8;

  sub_21874DD8C(v9, sub_218C829A8, v11);
}

void sub_218C75A58(uint64_t a1, void (*a2)(void *), uint64_t a3, void (*a4)(id))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (sub_21884041C())
    {
      v8 = [*&v7[OBJC_IVAR____TtC7NewsUI217SportsSyncManager_userInfo] sportsSyncState];
    }

    else
    {
      v8 = 0;
    }

    a4(v8);
  }

  else
  {
    v9 = sub_219BE1D94();
    sub_21874E0F0(&qword_27CC0B2F0, MEMORY[0x277D6CAF0]);
    v10 = swift_allocError();
    (*(*(v9 - 8) + 104))(v11, *MEMORY[0x277D6CAE0], v9);
    a2(v10);
  }
}

void sub_218C75BA8(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_218C75C50(a4, a2, a3);
    v10 = sub_218824D4C();
    [v10 addOperation_];
  }

  else
  {
    a2();
  }
}

id sub_218C75C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_280EE6038 != -1)
  {
    swift_once();
  }

  v6 = sub_219BE5434();
  __swift_project_value_buffer(v6, qword_280F62730);
  v7 = sub_219BE5414();
  v8 = sub_219BF6214();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136446210;
    v11 = FCSportsSyncState.description.getter(a1);
    v13 = sub_2186D1058(v11, v12, &v21);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_2186C1000, v7, v8, "Create sync state user info operation, syncState=%{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x21CECF960](v10, -1, -1);
    MEMORY[0x21CECF960](v9, -1, -1);
  }

  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a1;
  v15[4] = a2;
  v15[5] = a3;
  sub_218825794(0, &qword_280EE73F0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CCF0]);
  v17 = objc_allocWithZone(v16);

  v18 = sub_219BE27D4();
  v19 = sub_219BF53D4();
  [v18 setName_];

  return v18;
}

uint64_t sub_218C75E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;

    sub_219BE1AB4();

    swift_beginAccess();
    sub_218EB61E8(a2, a3);
    swift_endAccess();

    sub_219BE1AC4();
  }

  return a4(Strong);
}

void sub_218C75F94()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = MEMORY[0x28223BE20](Strong);
    sub_219BE3204();
    v2 = sub_219BE2E54();
    type metadata accessor for SportsSyncManager();
    sub_219BE2F94();
  }
}

uint64_t sub_218C76094()
{
  swift_getObjectType();
  if (qword_280EE6038 != -1)
  {
    swift_once();
  }

  v0 = sub_219BE5434();
  __swift_project_value_buffer(v0, qword_280F62730);
  v1 = sub_219BE5414();
  v2 = sub_219BF6214();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2186C1000, v1, v2, "Fetching favorites last modified source", v3, 2u);
    MEMORY[0x21CECF960](v3, -1, -1);
  }

  MEMORY[0x28223BE20](v4);
  sub_219BE3204();
  v5 = sub_219BE2E54();
  sub_218C8260C();
  sub_219BE2F84();

  v6 = sub_219BE2E54();
  sub_219BE2F84();

  v7 = sub_219BE2E54();
  v8 = sub_219BE2FD4();

  return v8;
}

void sub_218C762A8(char *a1)
{
  v1 = sub_218C76304(*a1);
  v2 = sub_218824D4C();
  [v2 addOperation_];
}

id sub_218C76304(char a1)
{
  if (!a1)
  {
    if (qword_280EE6038 != -1)
    {
      swift_once();
    }

    v7 = sub_219BE5434();
    __swift_project_value_buffer(v7, qword_280F62730);
    v8 = sub_219BE5414();
    v9 = sub_219BF6214();
    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_17;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v10 = 136315138;
    v12 = 0x8000000219CEF0B0;
    v13 = 0xD000000000000010;
    goto LABEL_16;
  }

  if (a1 != 1)
  {
    if (qword_280EE6038 != -1)
    {
      swift_once();
    }

    v14 = sub_219BE5434();
    __swift_project_value_buffer(v14, qword_280F62730);
    v8 = sub_219BE5414();
    v9 = sub_219BF6214();
    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_17;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v10 = 136315138;
    v13 = 0x6E776F6E6B6E75;
    v12 = 0xE700000000000000;
LABEL_16:
    *(v10 + 4) = sub_2186D1058(v13, v12, &v15);
    _os_log_impl(&dword_2186C1000, v8, v9, "Sports sync manager will merge with watchlist from received sync completion notification from watchlist, lastModifiedSource=%s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x21CECF960](v11, -1, -1);
    MEMORY[0x21CECF960](v10, -1, -1);
LABEL_17:

    return sub_218C7661C();
  }

  if (qword_280EE6038 != -1)
  {
    swift_once();
  }

  v1 = sub_219BE5434();
  __swift_project_value_buffer(v1, qword_280F62730);
  v2 = sub_219BE5414();
  v3 = sub_219BF6214();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_2186D1058(0x73696C6863746177, 0xE900000000000074, &v15);
    _os_log_impl(&dword_2186C1000, v2, v3, "Sports sync manager will sync from watchlist from received sync completion notification from watchlist, lastModifiedSource=%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x21CECF960](v5, -1, -1);
    MEMORY[0x21CECF960](v4, -1, -1);
  }

  return sub_218C767BC();
}

id sub_218C7661C()
{
  if (qword_280EE6038 != -1)
  {
    swift_once();
  }

  v0 = sub_219BE5434();
  __swift_project_value_buffer(v0, qword_280F62730);
  v1 = sub_219BE5414();
  v2 = sub_219BF6214();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2186C1000, v1, v2, "Create sync subscription merge changes with watchlist operation", v3, 2u);
    MEMORY[0x21CECF960](v3, -1, -1);
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_218825794(0, &qword_280EE73F0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CCF0]);
  v5 = objc_allocWithZone(v4);
  v6 = sub_219BE27D4();
  v7 = sub_219BF53D4();
  [v6 setName_];

  return v6;
}

id sub_218C767BC()
{
  if (qword_280EE6038 != -1)
  {
    swift_once();
  }

  v0 = sub_219BE5434();
  __swift_project_value_buffer(v0, qword_280F62730);
  v1 = sub_219BE5414();
  v2 = sub_219BF6214();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2186C1000, v1, v2, "Create sync subscription from watchlist operation", v3, 2u);
    MEMORY[0x21CECF960](v3, -1, -1);
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_218825794(0, &qword_280EE73F0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CCF0]);
  v5 = objc_allocWithZone(v4);
  v6 = sub_219BE27D4();
  v7 = sub_219BF53D4();
  [v6 setName_];

  return v6;
}

id sub_218C769CC()
{
  if (qword_280EE6038 != -1)
  {
    swift_once();
  }

  v0 = sub_219BE5434();
  __swift_project_value_buffer(v0, qword_280F62730);
  v1 = sub_219BE5414();
  v2 = sub_219BF6214();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2186C1000, v1, v2, "Create sync state update from watchlist operation", v3, 2u);
    MEMORY[0x21CECF960](v3, -1, -1);
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_218825794(0, &qword_280EE73F0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CCF0]);
  v5 = objc_allocWithZone(v4);
  v6 = sub_219BE27D4();
  v7 = sub_219BF53D4();
  [v6 setName_];

  return v6;
}

uint64_t sub_218C76BDC(const char *a1, uint64_t a2, uint64_t a3)
{
  v18 = a3;
  v5 = sub_219BED174();
  v20 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_219BED1D4();
  v8 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280EE6038 != -1)
  {
    swift_once();
  }

  v11 = sub_219BE5434();
  __swift_project_value_buffer(v11, qword_280F62730);
  v12 = sub_219BE5414();
  v13 = sub_219BF6214();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2186C1000, v12, v13, a1, v14, 2u);
    MEMORY[0x21CECF960](v14, -1, -1);
  }

  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = a2;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = v18;
  v16 = _Block_copy(aBlock);

  sub_219BED1A4();
  v21 = MEMORY[0x277D84F90];
  sub_21874E0F0(&qword_280E927E0, MEMORY[0x277D85198]);
  sub_21874E654(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_21874EB68();
  sub_219BF7164();
  sub_219BF6654();
  _Block_release(v16);
  (*(v20 + 8))(v7, v5);
  (*(v8 + 8))(v10, v19);
}

void sub_218C76F78()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = MEMORY[0x28223BE20](Strong);
    sub_218C82A44();
    sub_219BE3204();
    v2 = sub_219BE1C44();
    type metadata accessor for SportsSyncManager();
    sub_219BE2F94();
  }
}

uint64_t sub_218C77080()
{
  sub_219BE3204();
  v0 = sub_219BE2E54();
  sub_219BE2F74();

  v1 = sub_219BE2E54();
  sub_219BE3064();

  sub_218C76094();
  v2 = sub_219BE31C4();

  return v2;
}

void sub_218C77184(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (qword_280EE6038 != -1)
  {
    swift_once();
  }

  v3 = sub_219BE5434();
  __swift_project_value_buffer(v3, qword_280F62730);
  v4 = sub_219BE5414();
  v5 = sub_219BF6214();
  if (!os_log_type_enabled(v4, v5))
  {

    if (v1 != 1)
    {
      return;
    }

LABEL_15:
    v13 = sub_219BE5414();
    v14 = sub_219BF6214();
    v15 = os_log_type_enabled(v13, v14);
    if (v2)
    {
      if (v2 == 1)
      {
        if (v15)
        {
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          v25 = v17;
          *v16 = 136315138;
          *(v16 + 4) = sub_2186D1058(0x73696C6863746177, 0xE900000000000074, &v25);
          _os_log_impl(&dword_2186C1000, v13, v14, "Sports sync manager will update from watchlist from received iTunes account changed notification from watchlist, lastModifiedSource=%s", v16, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v17);
          MEMORY[0x21CECF960](v17, -1, -1);
          MEMORY[0x21CECF960](v16, -1, -1);
        }

        v18 = sub_218C767BC();
        goto LABEL_26;
      }

      if (v15)
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v25 = v20;
        *v19 = 136315138;
        v22 = 0x6E776F6E6B6E75;
        v21 = 0xE700000000000000;
        goto LABEL_24;
      }
    }

    else if (v15)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25 = v20;
      *v19 = 136315138;
      v21 = 0x8000000219CEF0B0;
      v22 = 0xD000000000000010;
LABEL_24:
      *(v19 + 4) = sub_2186D1058(v22, v21, &v25);
      _os_log_impl(&dword_2186C1000, v13, v14, "Sports sync manager will merge with watchlist from received iTunes account changed notification from watchlist, lastModifiedSource=%s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x21CECF960](v20, -1, -1);
      MEMORY[0x21CECF960](v19, -1, -1);
    }

    v18 = sub_218C7661C();
LABEL_26:
    v23 = v18;
    v24 = sub_218824D4C();
    [v24 addOperation_];

    return;
  }

  v6 = swift_slowAlloc();
  v7 = swift_slowAlloc();
  v25 = v7;
  *v6 = 136446210;
  v8 = 0xE800000000000000;
  v9 = 0x6E4964656E676973;
  if (v1 != 1)
  {
    v9 = 0x754F64656E676973;
    v8 = 0xE900000000000074;
  }

  if (v1)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0x6D72657465646E75;
  }

  if (v1)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0xEC00000064656E69;
  }

  v12 = sub_2186D1058(v10, v11, &v25);

  *(v6 + 4) = v12;
  _os_log_impl(&dword_2186C1000, v4, v5, "Sports sync manager determined iTunes account status, accountStatus=%{public}s", v6, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v7);
  MEMORY[0x21CECF960](v7, -1, -1);
  MEMORY[0x21CECF960](v6, -1, -1);

  if (v1 == 1)
  {
    goto LABEL_15;
  }
}

void sub_218C776B4(uint64_t a1, uint64_t (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = a2();
    v6 = sub_218824D4C();
    [v6 addOperation_];
  }
}

id sub_218C7773C()
{
  if (qword_280EE6038 != -1)
  {
    swift_once();
  }

  v0 = sub_219BE5434();
  __swift_project_value_buffer(v0, qword_280F62730);
  v1 = sub_219BE5414();
  v2 = sub_219BF6214();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2186C1000, v1, v2, "Create sync subscription changes to watchlist operation", v3, 2u);
    MEMORY[0x21CECF960](v3, -1, -1);
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_218825794(0, &qword_280EE73F0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CCF0]);
  v5 = objc_allocWithZone(v4);
  v6 = sub_219BE27D4();
  v7 = sub_219BF53D4();
  [v6 setName_];

  return v6;
}

uint64_t sub_218C77A20(void *a1)
{
  v2 = sub_219BED174();
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_219BED1D4();
  v5 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21874E654(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - v9;
  v11 = type metadata accessor for SportsSyncSetting();
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 sportsSyncState];
  v15 = [a1 sportsSyncStateLastSavedDate];
  if (v15)
  {
    v16 = v15;
    sub_219BDBCA4();

    v17 = sub_219BDBD34();
    (*(*(v17 - 8) + 56))(v10, 0, 1, v17);
  }

  else
  {
    v18 = sub_219BDBD34();
    (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
  }

  v13[8] = 1;
  *v13 = v14;
  sub_218A5DD60(v10, &v13[*(v11 + 24)]);
  sub_21965DAA8(v13);
  sub_218C822D0(v13, type metadata accessor for SportsSyncSetting);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_218C829E0;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_129;
  v20 = _Block_copy(aBlock);

  sub_219BED1A4();
  v25 = MEMORY[0x277D84F90];
  sub_21874E0F0(&qword_280E927E0, MEMORY[0x277D85198]);
  sub_21874E654(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_21874EB68();
  sub_219BF7164();
  sub_219BF6654();
  _Block_release(v20);
  (*(v24 + 8))(v4, v2);
  (*(v5 + 8))(v7, v23);
}

void sub_218C77EC0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_218C77F64();
    v3 = sub_218824D4C();
    [v3 addOperation_];

    v4 = sub_218C7661C();
    [*&v1[OBJC_IVAR____TtC7NewsUI217SportsSyncManager____lazy_storage___operationQueue] addOperation_];
  }
}

id sub_218C77F64()
{
  if (qword_280EE6038 != -1)
  {
    swift_once();
  }

  v0 = sub_219BE5434();
  __swift_project_value_buffer(v0, qword_280F62730);
  v1 = sub_219BE5414();
  v2 = sub_219BF6214();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2186C1000, v1, v2, "Create sync state update to watchlist operation", v3, 2u);
    MEMORY[0x21CECF960](v3, -1, -1);
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_218825794(0, &qword_280EE73F0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CCF0]);
  v5 = objc_allocWithZone(v4);
  v6 = sub_219BE27D4();
  v7 = sub_219BF53D4();
  [v6 setName_];

  return v6;
}

void sub_218C7816C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_218825460(3u);
    v3 = sub_218824D4C();
    [v3 addOperation_];
  }
}

uint64_t sub_218C78360()
{
  if (qword_280EE6038 != -1)
  {
    swift_once();
  }

  v0 = sub_219BE5434();
  __swift_project_value_buffer(v0, qword_280F62730);
  v1 = sub_219BE5414();
  v2 = sub_219BF6214();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2186C1000, v1, v2, "Sports sync manager detected apple account changed", v3, 2u);
    MEMORY[0x21CECF960](v3, -1, -1);
  }

  v4 = [objc_opt_self() sharedAccount];
  [v4 isUserSignedInToiCloud];

  sub_218824520();
  return sub_219BE2114();
}

void sub_218C78508(_BYTE *a1)
{
  if (*a1)
  {
    if (*a1 == 1)
    {
      v1 = sub_218C767BC();
    }

    else
    {
      v1 = sub_218C7661C();
    }
  }

  else
  {
    v1 = sub_218C7773C();
  }

  v2 = v1;
  v3 = sub_218824D4C();
  [v3 addOperation_];
}

uint64_t sub_218C7858C(unsigned __int8 a1, char a2)
{
  swift_getObjectType();
  if (qword_280EE6038 != -1)
  {
    swift_once();
  }

  v4 = sub_219BE5434();
  __swift_project_value_buffer(v4, qword_280F62730);
  v5 = sub_219BE5414();
  v6 = sub_219BF6214();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v27 = v8;
    *v7 = 136446466;
    if (a2)
    {
      if (a2 == 1)
      {
        v9 = 0x6F666E4972657375;
      }

      else
      {
        v9 = 0x6166654472657375;
      }

      if (a2 == 1)
      {
        v10 = 0xE800000000000000;
      }

      else
      {
        v10 = 0xEC00000073746C75;
      }
    }

    else
    {
      v10 = 0xE900000000000074;
      v9 = 0x73696C6863746177;
    }

    v11 = sub_2186D1058(v9, v10, &v27);

    *(v7 + 4) = v11;
    v12 = 0xEE006E6F6974617ALL;
    v13 = 0x696C616974696E69;
    *(v7 + 12) = 2082;
    v14 = 0x8000000219CEEFC0;
    v15 = 0x8000000219CEEFA0;
    v16 = 0xD000000000000015;
    if (a1 != 3)
    {
      v16 = 0xD000000000000010;
      v15 = 0x8000000219CEEF80;
    }

    if (a1 == 2)
    {
      v16 = 0xD00000000000001CLL;
    }

    else
    {
      v14 = v15;
    }

    if (!a1)
    {
      v13 = 0xD00000000000001ELL;
      v12 = 0x8000000219CEEFE0;
    }

    if (a1 <= 1u)
    {
      v17 = v13;
    }

    else
    {
      v17 = v16;
    }

    if (a1 <= 1u)
    {
      v18 = v12;
    }

    else
    {
      v18 = v14;
    }

    v19 = sub_2186D1058(v17, v18, &v27);

    *(v7 + 14) = v19;
    _os_log_impl(&dword_2186C1000, v5, v6, "Sync manager will attempt to update '%{public}s' sync setting, event=%{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CECF960](v8, -1, -1);
    MEMORY[0x21CECF960](v7, -1, -1);
  }

  MEMORY[0x28223BE20](v20);
  type metadata accessor for SportsSyncManagerSetting();
  sub_219BE3204();
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 17) = a1;
  v22 = sub_219BE2E54();
  sub_219BE2F84();

  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  *(v23 + 17) = a1;
  v24 = sub_219BE2E54();
  v25 = sub_219BE2FD4();

  return v25;
}

uint64_t sub_218C78960()
{
  swift_getObjectType();
  if (qword_280EE6038 != -1)
  {
    swift_once();
  }

  v0 = sub_219BE5434();
  __swift_project_value_buffer(v0, qword_280F62730);
  v1 = sub_219BE5414();
  v2 = sub_219BF6214();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2186C1000, v1, v2, "Sports sync manager will resolve most recent sync setting", v3, 2u);
    MEMORY[0x21CECF960](v3, -1, -1);
  }

  MEMORY[0x28223BE20](v4);
  type metadata accessor for SportsSyncSetting();
  sub_219BE3204();
  v5 = sub_219BE2E54();
  sub_219BE3064();

  v6 = sub_219BE2E54();
  type metadata accessor for SportsSyncManagerSetting();
  sub_219BE2F94();

  v7 = sub_219BE2E54();
  v8 = sub_219BE2FD4();

  return v8;
}

uint64_t sub_218C78B68(uint64_t a1, char *a2, int a3, int a4)
{
  v118 = a4;
  sub_21874E654(0, qword_280ED5000, type metadata accessor for SportsSyncSetting, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v110 - v8;
  v10 = type metadata accessor for SportsSyncSetting();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v116 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v115 = &v110 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v110 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v110 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v117 = &v110 - v23;
  v113 = v24;
  MEMORY[0x28223BE20](v22);
  v26 = (&v110 - v25);
  sub_218F54F08(v9);
  v114 = v11;
  v27 = (*(v11 + 48))(v9, 1, v10);
  v119 = a3;
  if (v27 == 1)
  {
    sub_218744ECC(v9, qword_280ED5000, type metadata accessor for SportsSyncSetting, MEMORY[0x277D83D88], sub_21874E654);
    if (qword_280EE6038 != -1)
    {
      swift_once();
    }

    v28 = sub_219BE5434();
    __swift_project_value_buffer(v28, qword_280F62730);
    v29 = sub_219BE5414();
    v30 = sub_219BF61F4();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v120 = v32;
      *v31 = 136446466;
      if (v119)
      {
        if (v119 == 1)
        {
          v33 = 0x6F666E4972657375;
        }

        else
        {
          v33 = 0x6166654472657375;
        }

        if (v119 == 1)
        {
          v34 = 0xE800000000000000;
        }

        else
        {
          v34 = 0xEC00000073746C75;
        }
      }

      else
      {
        v33 = 0x73696C6863746177;
        v34 = 0xE900000000000074;
      }

      v39 = sub_2186D1058(v33, v34, &v120);

      v40 = 0xEE006E6F6974617ALL;
      *(v31 + 4) = v39;
      v41 = v118;
      *(v31 + 12) = 2082;
      v42 = 0x8000000219CEEFC0;
      v43 = 0x8000000219CEEFA0;
      v44 = 0xD000000000000015;
      if (v41 != 3)
      {
        v44 = 0xD000000000000010;
        v43 = 0x8000000219CEEF80;
      }

      if (v41 == 2)
      {
        v44 = 0xD00000000000001CLL;
      }

      else
      {
        v42 = v43;
      }

      v45 = 0xD00000000000001ELL;
      if (v41)
      {
        v45 = 0x696C616974696E69;
      }

      else
      {
        v40 = 0x8000000219CEEFE0;
      }

      if (v41 <= 1)
      {
        v46 = v45;
      }

      else
      {
        v46 = v44;
      }

      if (v41 <= 1)
      {
        v47 = v40;
      }

      else
      {
        v47 = v42;
      }

      v48 = sub_2186D1058(v46, v47, &v120);

      *(v31 + 14) = v48;
      _os_log_impl(&dword_2186C1000, v29, v30, "Sync manager update attempt to update '%{public}s' sync setting has no recent setting, ignore, event=%{public}s", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CECF960](v32, -1, -1);
      MEMORY[0x21CECF960](v31, -1, -1);
    }

    else
    {
    }

    sub_218825794(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }

  v112 = a2;
  v35 = v26;
  sub_218C82810(v9, v26, type metadata accessor for SportsSyncSetting);
  if (a3)
  {
    if (a3 == 1)
    {
      v36 = 20;
    }

    else
    {
      v36 = 24;
    }

    v37 = v117;
    v38 = v18;
    a1 += *(type metadata accessor for SportsSyncManagerSetting() + v36);
  }

  else
  {
    v37 = v117;
    v38 = v18;
  }

  sub_218C7FD68(a1, v37, type metadata accessor for SportsSyncSetting);
  if (v118 == 1)
  {
    if (v119 && v119 == 1)
    {
    }

    else
    {
      v50 = sub_219BF78F4();

      v37 = v117;
      if ((v50 & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    if (*(v37 + 8) && *(v37 + 8) == 1)
    {
    }

    else
    {
      v51 = sub_219BF78F4();

      if ((v51 & 1) == 0)
      {
        goto LABEL_56;
      }
    }
  }

LABEL_45:
  if (*v26 == *v37)
  {
    if (qword_280EE6038 != -1)
    {
      swift_once();
    }

    v52 = sub_219BE5434();
    __swift_project_value_buffer(v52, qword_280F62730);
    v53 = v116;
    sub_218C7FD68(v37, v116, type metadata accessor for SportsSyncSetting);
    v54 = sub_219BE5414();
    v55 = sub_219BF6214();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v120 = v57;
      *v56 = 136446722;
      if (v119)
      {
        if (v119 == 1)
        {
          v58 = 0x6F666E4972657375;
        }

        else
        {
          v58 = 0x6166654472657375;
        }

        if (v119 == 1)
        {
          v59 = 0xE800000000000000;
        }

        else
        {
          v59 = 0xEC00000073746C75;
        }
      }

      else
      {
        v58 = 0x73696C6863746177;
        v59 = 0xE900000000000074;
      }

      v94 = sub_2186D1058(v58, v59, &v120);

      *(v56 + 4) = v94;
      *(v56 + 12) = 2082;
      v95 = v116;
      v96 = sub_219779EC4();
      v98 = v97;
      sub_218C822D0(v95, type metadata accessor for SportsSyncSetting);
      v99 = sub_2186D1058(v96, v98, &v120);

      v100 = 0xEE006E6F6974617ALL;
      v101 = v118;
      *(v56 + 14) = v99;
      *(v56 + 22) = 2082;
      v102 = 0x8000000219CEEFC0;
      v103 = 0x8000000219CEEFA0;
      v104 = 0xD000000000000015;
      if (v101 != 3)
      {
        v104 = 0xD000000000000010;
        v103 = 0x8000000219CEEF80;
      }

      if (v101 == 2)
      {
        v104 = 0xD00000000000001CLL;
      }

      else
      {
        v102 = v103;
      }

      v105 = 0xD00000000000001ELL;
      if (v101)
      {
        v105 = 0x696C616974696E69;
      }

      else
      {
        v100 = 0x8000000219CEEFE0;
      }

      if (v101 <= 1)
      {
        v106 = v105;
      }

      else
      {
        v106 = v104;
      }

      if (v101 <= 1)
      {
        v107 = v100;
      }

      else
      {
        v107 = v102;
      }

      v108 = sub_2186D1058(v106, v107, &v120);

      *(v56 + 24) = v108;
      _os_log_impl(&dword_2186C1000, v54, v55, "Sync manager '%{public}s' sync settings is up-to-date '%{public}s', event=%{public}s", v56, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CECF960](v57, -1, -1);
      MEMORY[0x21CECF960](v56, -1, -1);

      v37 = v117;
    }

    else
    {

      sub_218C822D0(v53, type metadata accessor for SportsSyncSetting);
    }

    sub_21965DAA8(v35);
    sub_218825794(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v109 = sub_219BE3014();
    sub_218C822D0(v37, type metadata accessor for SportsSyncSetting);
    sub_218C822D0(v35, type metadata accessor for SportsSyncSetting);
    return v109;
  }

LABEL_56:
  if (qword_280EE6038 != -1)
  {
    swift_once();
  }

  v60 = sub_219BE5434();
  __swift_project_value_buffer(v60, qword_280F62730);
  sub_218C7FD68(v37, v21, type metadata accessor for SportsSyncSetting);
  sub_218C7FD68(v26, v38, type metadata accessor for SportsSyncSetting);
  v61 = sub_219BE5414();
  v62 = sub_219BF6214();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v120 = v116;
    *v63 = 136446978;
    v111 = v35;
    if (v119)
    {
      if (v119 == 1)
      {
        v64 = 0x6F666E4972657375;
      }

      else
      {
        v64 = 0x6166654472657375;
      }

      if (v119 == 1)
      {
        v65 = 0xE800000000000000;
      }

      else
      {
        v65 = 0xEC00000073746C75;
      }
    }

    else
    {
      v64 = 0x73696C6863746177;
      v65 = 0xE900000000000074;
    }

    v66 = sub_2186D1058(v64, v65, &v120);

    *(v63 + 4) = v66;
    *(v63 + 12) = 2082;
    v67 = sub_219779EC4();
    v69 = v68;
    sub_218C822D0(v21, type metadata accessor for SportsSyncSetting);
    v70 = sub_2186D1058(v67, v69, &v120);

    *(v63 + 14) = v70;
    *(v63 + 22) = 2082;
    v71 = sub_219779EC4();
    v73 = v72;
    sub_218C822D0(v38, type metadata accessor for SportsSyncSetting);
    v74 = sub_2186D1058(v71, v73, &v120);

    v75 = 0xEE006E6F6974617ALL;
    v76 = v118;
    *(v63 + 24) = v74;
    *(v63 + 32) = 2082;
    v77 = 0x8000000219CEEFC0;
    v78 = 0x8000000219CEEFA0;
    v79 = 0xD000000000000015;
    if (v76 != 3)
    {
      v79 = 0xD000000000000010;
      v78 = 0x8000000219CEEF80;
    }

    if (v76 == 2)
    {
      v79 = 0xD00000000000001CLL;
    }

    else
    {
      v77 = v78;
    }

    v80 = 0xD00000000000001ELL;
    if (v76)
    {
      v80 = 0x696C616974696E69;
    }

    else
    {
      v75 = 0x8000000219CEEFE0;
    }

    if (v76 <= 1)
    {
      v81 = v80;
    }

    else
    {
      v81 = v79;
    }

    if (v76 <= 1)
    {
      v82 = v75;
    }

    else
    {
      v82 = v77;
    }

    v83 = sub_2186D1058(v81, v82, &v120);

    *(v63 + 34) = v83;
    _os_log_impl(&dword_2186C1000, v61, v62, "Sync manager will update '%{public}s' sync setting from '%{public}s' to '%{public}s', event=%{public}s", v63, 0x2Au);
    v84 = v116;
    swift_arrayDestroy();
    MEMORY[0x21CECF960](v84, -1, -1);
    MEMORY[0x21CECF960](v63, -1, -1);

    v37 = v117;
    v35 = v111;
  }

  else
  {

    sub_218C822D0(v38, type metadata accessor for SportsSyncSetting);
    sub_218C822D0(v21, type metadata accessor for SportsSyncSetting);
  }

  if (v119)
  {
    sub_2186C6148(0, &qword_280E8E3B0);
    v85 = sub_219BF66A4();
    v86 = v115;
    sub_218C7FD68(v35, v115, type metadata accessor for SportsSyncSetting);
    v87 = (*(v114 + 80) + 24) & ~*(v114 + 80);
    v88 = swift_allocObject();
    v89 = v112;
    *(v88 + 16) = v112;
    sub_218C82810(v86, v88 + v87, type metadata accessor for SportsSyncSetting);
    v90 = v89;
    v91 = sub_219BE31D4();

    sub_218C822D0(v37, type metadata accessor for SportsSyncSetting);
    sub_218C822D0(v35, type metadata accessor for SportsSyncSetting);
    return v91;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(&v112[OBJC_IVAR____TtC7NewsUI217SportsSyncManager_syncService], *&v112[OBJC_IVAR____TtC7NewsUI217SportsSyncManager_syncService + 24]);
    v92 = off_282A859D8[0];
    type metadata accessor for SportsSyncService();
    v93 = v92(v35);
    sub_218C822D0(v37, type metadata accessor for SportsSyncSetting);
    sub_218C822D0(v35, type metadata accessor for SportsSyncSetting);
    return v93;
  }
}

uint64_t sub_218C79ABC(uint64_t a1, void *a2)
{
  sub_21874E654(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for SportsSyncSetting();
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + OBJC_IVAR____TtC7NewsUI217SportsSyncManager_userInfo);
  [v10 setSportsSyncState_];
  v11 = [v10 sportsSyncState];
  v12 = [v10 sportsSyncStateLastSavedDate];
  if (v12)
  {
    v13 = v12;
    sub_219BDBCA4();

    v14 = sub_219BDBD34();
    (*(*(v14 - 8) + 56))(v6, 0, 1, v14);
  }

  else
  {
    v15 = sub_219BDBD34();
    (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  }

  v9[8] = 1;
  *v9 = v11;
  sub_218A5DD60(v6, &v9[*(v7 + 24)]);
  sub_21965DAA8(v9);
  sub_218C822D0(v9, type metadata accessor for SportsSyncSetting);
  sub_218825794(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

void sub_218C79D0C(void *a1, char a2, unsigned __int8 a3)
{
  if (qword_280EE6038 != -1)
  {
    swift_once();
  }

  v6 = sub_219BE5434();
  __swift_project_value_buffer(v6, qword_280F62730);
  v7 = a1;
  oslog = sub_219BE5414();
  v8 = sub_219BF61F4();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 136446722;
    if (a2)
    {
      if (a2 == 1)
      {
        v11 = 0x6F666E4972657375;
      }

      else
      {
        v11 = 0x6166654472657375;
      }

      if (a2 == 1)
      {
        v12 = 0xE800000000000000;
      }

      else
      {
        v12 = 0xEC00000073746C75;
      }
    }

    else
    {
      v12 = 0xE900000000000074;
      v11 = 0x73696C6863746177;
    }

    v13 = sub_2186D1058(v11, v12, &v26);

    *(v9 + 4) = v13;
    v14 = 0xEE006E6F6974617ALL;
    v15 = 0x696C616974696E69;
    *(v9 + 12) = 2082;
    v16 = 0x8000000219CEEFC0;
    v17 = 0x8000000219CEEFA0;
    v18 = 0xD000000000000015;
    if (a3 != 3)
    {
      v18 = 0xD000000000000010;
      v17 = 0x8000000219CEEF80;
    }

    if (a3 == 2)
    {
      v18 = 0xD00000000000001CLL;
    }

    else
    {
      v16 = v17;
    }

    if (!a3)
    {
      v15 = 0xD00000000000001ELL;
      v14 = 0x8000000219CEEFE0;
    }

    if (a3 <= 1u)
    {
      v19 = v15;
    }

    else
    {
      v19 = v18;
    }

    if (a3 <= 1u)
    {
      v20 = v14;
    }

    else
    {
      v20 = v16;
    }

    v21 = sub_2186D1058(v19, v20, &v26);

    *(v9 + 14) = v21;
    *(v9 + 22) = 2082;
    swift_getErrorValue();
    v22 = sub_219BF7A04();
    v24 = sub_2186D1058(v22, v23, &v26);

    *(v9 + 24) = v24;
    _os_log_impl(&dword_2186C1000, oslog, v8, "Sync manager failed to update '%{public}s' sync setting, event=%{public}s, error=%{public}s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CECF960](v10, -1, -1);
    MEMORY[0x21CECF960](v9, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_218C7A020()
{
  swift_getObjectType();
  sub_218825B50(1);
  v0 = sub_219BE2E54();
  type metadata accessor for SportsSyncSetting();
  v1 = sub_219BE2F84();

  return v1;
}

uint64_t sub_218C7A0C0(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC7NewsUI217SportsSyncManager_syncService), *(a2 + OBJC_IVAR____TtC7NewsUI217SportsSyncManager_syncService + 24));
  v2 = off_282A859D0[0];
  v3 = type metadata accessor for SportsSyncService();
  return v2(v3, &off_282A859B8);
}

uint64_t sub_218C7A134@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_280EE6038 != -1)
  {
    swift_once();
  }

  v4 = sub_219BE5434();
  __swift_project_value_buffer(v4, qword_280F62730);
  v5 = a1;
  v6 = sub_219BE5414();
  v7 = sub_219BF61F4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446210;
    swift_getErrorValue();
    v10 = sub_219BF7A04();
    v12 = sub_2186D1058(v10, v11, &v16);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2186C1000, v6, v7, "Sports sync manager failed to resolve sync setting from watchlist; will be ignored error=%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x21CECF960](v9, -1, -1);
    MEMORY[0x21CECF960](v8, -1, -1);
  }

  v13 = *(type metadata accessor for SportsSyncSetting() + 24);
  v14 = sub_219BDBD34();
  result = (*(*(v14 - 8) + 56))(a2 + v13, 1, 1, v14);
  *(a2 + 8) = 0;
  *a2 = 0;
  return result;
}

uint64_t sub_218C7A304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_21874E654(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v23 - v7;
  v9 = type metadata accessor for SportsSyncSetting();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - v13;
  sub_218C7FD68(a1, v23 - v13, type metadata accessor for SportsSyncSetting);
  v15 = *(a2 + OBJC_IVAR____TtC7NewsUI217SportsSyncManager_userInfo);
  v16 = [v15 sportsSyncState];
  v17 = [v15 sportsSyncStateLastSavedDate];
  if (v17)
  {
    v18 = v17;
    sub_219BDBCA4();

    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = sub_219BDBD34();
  (*(*(v20 - 8) + 56))(v8, v19, 1, v20);
  v12[8] = 1;
  *v12 = v16;
  sub_218A5DD60(v8, &v12[*(v9 + 24)]);
  sub_2186C6148(0, &qword_280E8E628);
  v21 = type metadata accessor for SportsSyncManagerSetting();
  sub_21965D8C0(a3 + *(v21 + 24));
  sub_218C82810(v14, a3, type metadata accessor for SportsSyncSetting);
  return sub_218C82810(v12, a3 + *(v21 + 20), type metadata accessor for SportsSyncSetting);
}

uint64_t sub_218C7A580(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC7NewsUI217SportsSyncManager_syncService), *(a2 + OBJC_IVAR____TtC7NewsUI217SportsSyncManager_syncService + 24));
  v3 = off_282A859E0[0];
  v4 = type metadata accessor for SportsSyncService();
  v3(v4, &off_282A859B8);
  v5 = *(a2 + OBJC_IVAR____TtC7NewsUI217SportsSyncManager_subscriptionController);
  sub_218C820A4();
  *(swift_allocObject() + 16) = v5;
  v6 = v5;
  sub_219BE2F54();
  v7 = sub_219BE31C4();

  return v7;
}

uint64_t sub_218C7A678(uint64_t a1, uint64_t a2)
{
  v141 = sub_219BDBD34();
  v145 = *(v141 - 8);
  v5 = MEMORY[0x28223BE20](v141);
  v132 = &v131 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v131 - v7;
  sub_218C82694();
  v136 = v9;
  MEMORY[0x28223BE20](v9);
  v143 = &v131 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21874E654(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v134 = &v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v133 = &v131 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v144 = &v131 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v142 = &v131 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v146 = &v131 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v131 - v22;
  sub_218C8260C();
  v25 = v24 - 8;
  MEMORY[0x28223BE20](v24);
  v27 = &v131 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = type metadata accessor for SportsSyncFavoritesFetchResult();
  MEMORY[0x28223BE20](v137);
  v29 = &v131 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C7FD68(a1, v27, sub_218C8260C);
  v30 = *&v27[*(v25 + 56)];
  sub_218C82810(v27, v29, type metadata accessor for SportsSyncFavoritesFetchResult);
  v147 = 0x2D7665722D3276;
  v148 = 0xE700000000000000;
  v149 = 1;
  v31 = sub_219BF7894();
  MEMORY[0x21CECC330](v31);

  v32 = v147;
  v33 = v148;
  v138 = a2;

  sub_219BDC8E4();

  if (v32 == v147 && v33 == v148)
  {
  }

  else
  {
    v34 = sub_219BF78F4();

    if ((v34 & 1) == 0)
    {

      if (qword_280EE6038 == -1)
      {
LABEL_27:
        v73 = sub_219BE5434();
        __swift_project_value_buffer(v73, qword_280F62730);
        v74 = sub_219BE5414();
        v75 = sub_219BF61F4();
        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          *v76 = 0;
          _os_log_impl(&dword_2186C1000, v74, v75, "Never synced favorites with watchlist before, cannot determine last modified source", v76, 2u);
          MEMORY[0x21CECF960](v76, -1, -1);
        }

        LOBYTE(v147) = 2;
        sub_218825794(0, &qword_280EE6CB8, &type metadata for SportsFavoritesLastModifiedSource, MEMORY[0x277D6CF30]);
        swift_allocObject();
        v77 = sub_219BE3014();
        goto LABEL_55;
      }

LABEL_59:
      swift_once();
      goto LABEL_27;
    }
  }

  v135 = v2;
  if (v30 >> 62)
  {
    v35 = sub_219BF7214();
  }

  else
  {
    v35 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v139 = v23;
  v140 = v29;
  v131 = v8;
  if (!v35)
  {

    v37 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  v147 = MEMORY[0x277D84F90];
  sub_21870B65C(0, v35 & ~(v35 >> 63), 0);
  if (v35 < 0)
  {
    __break(1u);
    goto LABEL_59;
  }

  v36 = 0;
  v37 = v147;
  do
  {
    if ((v30 & 0xC000000000000001) != 0)
    {
      MEMORY[0x21CECE0F0](v36, v30);
    }

    else
    {
      swift_unknownObjectRetain();
    }

    v38 = [swift_unknownObjectRetain() identifier];
    v39 = sub_219BF5414();
    v41 = v40;
    swift_unknownObjectRelease_n();

    v147 = v37;
    v43 = *(v37 + 16);
    v42 = *(v37 + 24);
    if (v43 >= v42 >> 1)
    {
      sub_21870B65C((v42 > 1), v43 + 1, 1);
      v37 = v147;
    }

    ++v36;
    *(v37 + 16) = v43 + 1;
    v44 = v37 + 16 * v43;
    *(v44 + 32) = v39;
    *(v44 + 40) = v41;
  }

  while (v35 != v36);

LABEL_18:
  v45 = sub_218845F78(v37);

  v46 = v144;
  if (qword_280EE6038 != -1)
  {
    swift_once();
  }

  v47 = sub_219BE5434();
  v48 = __swift_project_value_buffer(v47, qword_280F62730);

  v49 = sub_219BE5414();
  v50 = sub_219BF6214();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v147 = v52;
    *v51 = 136446210;
    v53 = sub_219BF5D54();
    v55 = sub_2186D1058(v53, v54, &v147);

    *(v51 + 4) = v55;
    _os_log_impl(&dword_2186C1000, v49, v50, "Current sports subscription ids=%{public}s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v52);
    MEMORY[0x21CECF960](v52, -1, -1);
    MEMORY[0x21CECF960](v51, -1, -1);
  }

  v56 = v142;
  v57 = v137;
  v58 = v139;
  sub_218C7B998(v138, v45, v139);

  v29 = v140;
  v59 = &v140[*(v57 + 20)];
  v60 = v146;
  sub_2187D96F4(v59, v146);
  sub_2187D96F4(v58, v56);
  sub_2187D96F4(v60, v46);
  v138 = v48;
  v61 = sub_219BE5414();
  v62 = sub_219BF6214();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v137 = swift_slowAlloc();
    v149 = v137;
    *v63 = 136446466;
    v64 = v133;
    sub_2187D96F4(v56, v133);
    v65 = v145;
    v66 = *(v145 + 48);
    v67 = v141;
    if (v66(v64, 1, v141) == 1)
    {
      sub_218744ECC(v64, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_21874E654);
      v68 = 0;
      v69 = 0;
    }

    else
    {
      v78 = v63;
      v79 = v61;
      v80 = v66;
      v81 = v62;
      v82 = v64;
      v68 = sub_219BDBBA4();
      v69 = v83;
      v84 = v82;
      v62 = v81;
      v66 = v80;
      v61 = v79;
      v63 = v78;
      v67 = v141;
      (*(v65 + 8))(v84, v141);
    }

    v147 = v68;
    v148 = v69;
    sub_218825794(0, &qword_280E8F860, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    v85 = sub_219BF5484();
    v87 = v86;
    sub_218744ECC(v142, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_21874E654);
    v88 = sub_2186D1058(v85, v87, &v149);

    *(v63 + 4) = v88;
    *(v63 + 12) = 2082;
    v89 = v134;
    sub_2187D96F4(v144, v134);
    if (v66(v89, 1, v67) == 1)
    {
      sub_218744ECC(v89, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_21874E654);
      v90 = 0;
      v91 = 0;
    }

    else
    {
      v92 = v89;
      v90 = sub_219BDBBA4();
      v91 = v93;
      (*(v145 + 8))(v92, v67);
    }

    v147 = v90;
    v148 = v91;
    v94 = sub_219BF5484();
    v96 = v95;
    sub_218744ECC(v144, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_21874E654);
    v97 = sub_2186D1058(v94, v96, &v149);

    *(v63 + 14) = v97;
    _os_log_impl(&dword_2186C1000, v61, v62, "Checking last modified date for list sources: subscriptionListLastModifiedDate=%{public}s, watchListLastModifiedDate=%{public}s", v63, 0x16u);
    v98 = v137;
    swift_arrayDestroy();
    MEMORY[0x21CECF960](v98, -1, -1);
    MEMORY[0x21CECF960](v63, -1, -1);

    v58 = v139;
    v29 = v140;
  }

  else
  {

    v70 = MEMORY[0x277CC9578];
    v71 = v56;
    v72 = MEMORY[0x277D83D88];
    sub_218744ECC(v46, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_21874E654);
    sub_218744ECC(v71, &qword_280EE9C40, v70, v72, sub_21874E654);
    v67 = v141;
  }

  v99 = *(v136 + 48);
  v100 = v143;
  sub_2187D96F4(v58, v143);
  sub_2187D96F4(v146, v100 + v99);
  v101 = v145;
  v102 = *(v145 + 48);
  v103 = v102(v100, 1, v67);
  v104 = v102(v100 + v99, 1, v67);
  v105 = v104;
  if (v103 == 1)
  {
    v106 = sub_219BE5414();
    v107 = sub_219BF6214();
    v108 = os_log_type_enabled(v106, v107);
    if (v105 == 1)
    {
      if (v108)
      {
        v109 = swift_slowAlloc();
        *v109 = 0;
        _os_log_impl(&dword_2186C1000, v106, v107, "No subscription list or watchlist date, default to subscription list", v109, 2u);
        MEMORY[0x21CECF960](v109, -1, -1);
      }

      LOBYTE(v147) = 0;
      sub_218825794(0, &qword_280EE6CB8, &type metadata for SportsFavoritesLastModifiedSource, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v77 = sub_219BE3014();
      v110 = MEMORY[0x277CC9578];
      v111 = MEMORY[0x277D83D88];
      sub_218744ECC(v146, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_21874E654);
      sub_218744ECC(v58, &qword_280EE9C40, v110, v111, sub_21874E654);
      sub_218C822D0(v29, type metadata accessor for SportsSyncFavoritesFetchResult);
    }

    else
    {
      if (v108)
      {
        v117 = swift_slowAlloc();
        *v117 = 0;
        _os_log_impl(&dword_2186C1000, v106, v107, "No subscription list date, watchlist was last modified", v117, 2u);
        MEMORY[0x21CECF960](v117, -1, -1);
      }

      LOBYTE(v147) = 1;
      sub_218825794(0, &qword_280EE6CB8, &type metadata for SportsFavoritesLastModifiedSource, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v77 = sub_219BE3014();
      v118 = MEMORY[0x277CC9578];
      v119 = MEMORY[0x277D83D88];
      sub_218744ECC(v146, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_21874E654);
      sub_218744ECC(v58, &qword_280EE9C40, v118, v119, sub_21874E654);
      sub_218C822D0(v29, type metadata accessor for SportsSyncFavoritesFetchResult);
      sub_218744ECC(v143 + v99, &qword_280EE9C40, v118, v119, sub_21874E654);
    }

    return v77;
  }

  if (v104 != 1)
  {
    v120 = *(v101 + 32);
    v121 = v143;
    v120(v131, v143, v67);
    v120(v132, v121 + v99, v67);
    sub_21874E0F0(&qword_280EE9C90, MEMORY[0x277CC9578]);
    LOBYTE(v121) = sub_219BF5334();
    v122 = sub_219BE5414();
    v123 = sub_219BF6214();
    v124 = os_log_type_enabled(v122, v123);
    if (v121)
    {
      if (v124)
      {
        v125 = swift_slowAlloc();
        *v125 = 0;
        _os_log_impl(&dword_2186C1000, v122, v123, "Compared modify dates, watchlist was last modified", v125, 2u);
        MEMORY[0x21CECF960](v125, -1, -1);
      }

      LOBYTE(v147) = 1;
    }

    else
    {
      if (v124)
      {
        v126 = swift_slowAlloc();
        *v126 = 0;
        _os_log_impl(&dword_2186C1000, v122, v123, "Compared modify dates, subscription list was last modified", v126, 2u);
        MEMORY[0x21CECF960](v126, -1, -1);
      }

      LOBYTE(v147) = 0;
    }

    sub_218825794(0, &qword_280EE6CB8, &type metadata for SportsFavoritesLastModifiedSource, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v77 = sub_219BE3014();
    v127 = *(v101 + 8);
    v127(v132, v67);
    v127(v131, v67);
    v128 = MEMORY[0x277CC9578];
    v129 = MEMORY[0x277D83D88];
    sub_218744ECC(v146, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_21874E654);
    sub_218744ECC(v58, &qword_280EE9C40, v128, v129, sub_21874E654);
LABEL_55:
    sub_218C822D0(v29, type metadata accessor for SportsSyncFavoritesFetchResult);
    return v77;
  }

  v112 = sub_219BE5414();
  v113 = sub_219BF6214();
  if (os_log_type_enabled(v112, v113))
  {
    v114 = swift_slowAlloc();
    *v114 = 0;
    _os_log_impl(&dword_2186C1000, v112, v113, "No watchlist date, subscription list was last modified", v114, 2u);
    MEMORY[0x21CECF960](v114, -1, -1);
  }

  LOBYTE(v147) = 0;
  sub_218825794(0, &qword_280EE6CB8, &type metadata for SportsFavoritesLastModifiedSource, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v77 = sub_219BE3014();
  v115 = MEMORY[0x277CC9578];
  v116 = MEMORY[0x277D83D88];
  sub_218744ECC(v146, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_21874E654);
  sub_218744ECC(v58, &qword_280EE9C40, v115, v116, sub_21874E654);
  sub_218C822D0(v29, type metadata accessor for SportsSyncFavoritesFetchResult);
  (*(v145 + 8))(v143, v141);
  return v77;
}

uint64_t sub_218C7B998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X8>)
{
  sub_21874E654(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v51 - v7;
  v9 = sub_219BDBD34();
  v56 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v51 - v13;
  v15 = [*(a1 + OBJC_IVAR____TtC7NewsUI217SportsSyncManager_userInfo) sportsFavoritesLastModifiedDate];
  if (v15)
  {
    v16 = v15;
    sub_219BDBCA4();

    if (qword_280EE6038 != -1)
    {
LABEL_35:
      swift_once();
    }

    v17 = sub_219BE5434();
    __swift_project_value_buffer(v17, qword_280F62730);
    (*(v56 + 16))(v12, v14, v9);
    v18 = sub_219BE5414();
    v19 = sub_219BF6214();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = a3;
      v22 = swift_slowAlloc();
      v57[0] = v22;
      *v20 = 136315138;
      v23 = sub_219BDBBA4();
      v25 = v24;
      (*(v56 + 8))(v12, v9);
      v26 = sub_2186D1058(v23, v25, v57);

      *(v20 + 4) = v26;
      _os_log_impl(&dword_2186C1000, v18, v19, "Found 'sports favorites last modified date' on user info, date=%s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      v27 = v22;
      a3 = v21;
      MEMORY[0x21CECF960](v27, -1, -1);
      MEMORY[0x21CECF960](v20, -1, -1);
    }

    else
    {
LABEL_28:

      (*(v56 + 8))(v12, v9);
    }

    (*(v56 + 32))(a3, v14, v9);
    return (*(v56 + 56))(a3, 0, 1, v9);
  }

  v28 = [*(a1 + OBJC_IVAR____TtC7NewsUI217SportsSyncManager_subscriptionController) subscriptions];
  if (!v28)
  {
LABEL_41:
    __break(1u);

    __break(1u);
    return result;
  }

  v29 = v28;
  sub_2186C6148(0, &qword_280E8E698);
  sub_219BF5924();

  v57[0] = sub_219759058(v30);
  v14 = 0;
  sub_218C74838(v57);
  v52 = a3;

  v31 = v57[0];
  v51 = v8;
  if ((v57[0] & 0x8000000000000000) == 0 && (v57[0] & 0x4000000000000000) == 0)
  {
    v32 = *(v57[0] + 16);
    if (v32)
    {
      goto LABEL_9;
    }

LABEL_37:

    v49 = *(v56 + 56);
    v50 = v52;

    return v49(v50, 1, 1, v9);
  }

  v32 = sub_219BF7214();
  if (!v32)
  {
    goto LABEL_37;
  }

LABEL_9:
  a3 = 0;
  v54 = v31 + 32;
  v55 = v31 & 0xC000000000000001;
  v18 = (a2 + 56);
  v53 = v9;
  while (1)
  {
    if (v55)
    {
      v33 = MEMORY[0x21CECE0F0](a3, v31);
      v34 = __OFADD__(a3++, 1);
      if (v34)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }
    }

    else
    {
      if (a3 >= *(v31 + 16))
      {
        __break(1u);
        goto LABEL_35;
      }

      v33 = *(v54 + 8 * a3);
      v34 = __OFADD__(a3++, 1);
      if (v34)
      {
        goto LABEL_27;
      }
    }

    v35 = v32;
    v14 = v33;
    v36 = [v33 tagID];
    if (!v36)
    {
      __break(1u);
      goto LABEL_41;
    }

    v37 = v36;
    v38 = sub_219BF5414();
    v40 = v39;

    if (*(a2 + 16))
    {
      sub_219BF7AA4();
      sub_219BF5524();
      v41 = sub_219BF7AE4();
      v42 = -1 << *(a2 + 32);
      v43 = v41 & ~v42;
      if ((*(&v18->isa + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43))
      {
        break;
      }
    }

LABEL_10:

    v32 = v35;
    v45 = a3 == v35;
    v9 = v53;
    if (v45)
    {
      goto LABEL_37;
    }
  }

  v12 = ~v42;
  while (1)
  {
    v44 = (*(a2 + 48) + 16 * v43);
    v45 = *v44 == v38 && v44[1] == v40;
    if (v45 || (sub_219BF78F4() & 1) != 0)
    {
      break;
    }

    v43 = (v43 + 1) & v12;
    if (((*(&v18->isa + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v47 = [v14 dateAdded];

  v48 = v51;
  if (v47)
  {
    sub_219BDBCA4();

    (*(v56 + 56))(v48, 0, 1, v53);
  }

  else
  {
    (*(v56 + 56))(v51, 1, 1, v53);
  }

  return sub_218A5DD60(v48, v52);
}

uint64_t sub_218C7BFF4()
{
  sub_218825794(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE30B4();
}

uint64_t sub_218C7C07C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = swift_allocObject();
  v15[2] = a5;
  v15[3] = a6;
  v15[4] = a7;
  v15[5] = a8;
  v15[6] = sub_2187A913C;
  v15[7] = v14;

  sub_219BE3494();
}

uint64_t sub_218C7C160(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t))
{
  sub_21874E654(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for SportsSyncSetting();
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = OBJC_IVAR____TtC7NewsUI217SportsSyncManager_userInfo;
    [*(Strong + OBJC_IVAR____TtC7NewsUI217SportsSyncManager_userInfo) setSportsSyncState_];
    v17 = *&v15[v16];
    v18 = [v17 sportsSyncState];
    v19 = [v17 sportsSyncStateLastSavedDate];
    if (v19)
    {
      v20 = v19;
      sub_219BDBCA4();

      v21 = 0;
    }

    else
    {
      v21 = 1;
    }

    v22 = sub_219BDBD34();
    (*(*(v22 - 8) + 56))(v10, v21, 1, v22);
    v13[8] = 1;
    *v13 = v18;
    sub_218A5DD60(v10, &v13[*(v11 + 24)]);
    sub_21965DAA8(v13);

    Strong = sub_218C822D0(v13, type metadata accessor for SportsSyncSetting);
  }

  v23 = a3(Strong);
  return a5(v23);
}

uint64_t sub_218C7C3A0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (sub_21884041C())
    {
      if (qword_280EE6038 != -1)
      {
        swift_once();
      }

      v2 = sub_219BE5434();
      __swift_project_value_buffer(v2, qword_280F62730);
      v3 = sub_219BE5414();
      v4 = sub_219BF6214();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&dword_2186C1000, v3, v4, "Update sync state to watchlist: processing...", v5, 2u);
        MEMORY[0x21CECF960](v5, -1, -1);
      }

      MEMORY[0x28223BE20](v6);
      sub_219BE3204();
      v7 = sub_219BE2E54();
      type metadata accessor for SportsSyncManager();
      sub_219BE2F84();

      v8 = sub_219BE2E54();
      sub_219BE2FD4();

      v9 = sub_219BE2E54();
      v10 = sub_219BE3024();

      return v10;
    }

    else
    {
      if (qword_280EE6038 != -1)
      {
        swift_once();
      }

      v12 = sub_219BE5434();
      __swift_project_value_buffer(v12, qword_280F62730);
      v13 = sub_219BE5414();
      v14 = sub_219BF61F4();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_2186C1000, v13, v14, "Syncing subscription changes from watchlist is not enabled", v15, 2u);
        MEMORY[0x21CECF960](v15, -1, -1);
      }

      sub_218825794(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v16 = sub_219BE3014();

      return v16;
    }
  }

  else
  {
    sub_218825794(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }
}

uint64_t sub_218C7C750()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (sub_21884041C())
    {
      if (qword_280EE6038 != -1)
      {
        swift_once();
      }

      v2 = sub_219BE5434();
      __swift_project_value_buffer(v2, qword_280F62730);
      v3 = sub_219BE5414();
      v4 = sub_219BF6214();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&dword_2186C1000, v3, v4, "Sync state update from watchlist: processing...", v5, 2u);
        MEMORY[0x21CECF960](v5, -1, -1);
      }

      MEMORY[0x28223BE20](v6);
      sub_219BE3204();
      v7 = sub_219BE2E54();
      type metadata accessor for SportsSyncManager();
      sub_219BE2F84();

      v8 = sub_219BE2E54();
      sub_219BE2FD4();

      v9 = sub_219BE2E54();
      v10 = sub_219BE3024();

      return v10;
    }

    else
    {
      if (qword_280EE6038 != -1)
      {
        swift_once();
      }

      v12 = sub_219BE5434();
      __swift_project_value_buffer(v12, qword_280F62730);
      v13 = sub_219BE5414();
      v14 = sub_219BF6214();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_2186C1000, v13, v14, "Syncing subscription changes from watchlist is not allowed", v15, 2u);
        MEMORY[0x21CECF960](v15, -1, -1);
      }

      sub_218825794(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v16 = sub_219BE3014();

      return v16;
    }
  }

  else
  {
    sub_218825794(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }
}

uint64_t sub_218C7CB00()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if ((sub_21884041C() & 1) != 0 && [*&v1[OBJC_IVAR____TtC7NewsUI217SportsSyncManager_userInfo] sportsSyncState] == 2)
    {
      if (qword_280EE6038 != -1)
      {
        swift_once();
      }

      v2 = sub_219BE5434();
      __swift_project_value_buffer(v2, qword_280F62730);
      v3 = sub_219BE5414();
      v4 = sub_219BF6214();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&dword_2186C1000, v3, v4, "Syncing subscription changes to watchlist: processing...", v5, 2u);
        MEMORY[0x21CECF960](v5, -1, -1);
      }

      MEMORY[0x28223BE20](v6);
      sub_219BE3204();
      v7 = sub_219BE2E54();
      sub_218C7FCB8();
      type metadata accessor for SportsSyncManager();
      sub_219BE2F84();

      v8 = sub_219BE2E54();
      sub_219BE2F84();

      v9 = sub_219BE2E54();
      sub_219BE2FD4();

      v10 = sub_219BE2E54();
      v11 = sub_219BE3024();
    }

    else
    {
      if (qword_280EE6038 != -1)
      {
        swift_once();
      }

      v12 = sub_219BE5434();
      __swift_project_value_buffer(v12, qword_280F62730);
      v13 = sub_219BE5414();
      v14 = sub_219BF61F4();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_2186C1000, v13, v14, "Syncing subscription changes to watchlist is not enabled", v15, 2u);
        MEMORY[0x21CECF960](v15, -1, -1);
      }

      sub_218825794(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v11 = sub_219BE3014();
    }

    return v11;
  }

  else
  {
    if (qword_280EE6038 != -1)
    {
      swift_once();
    }

    v17 = sub_219BE5434();
    __swift_project_value_buffer(v17, qword_280F62730);
    v18 = sub_219BE5414();
    v19 = sub_219BF61F4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2186C1000, v18, v19, "Syncing subscription changes to watchlist is not allowed", v20, 2u);
      MEMORY[0x21CECF960](v20, -1, -1);
    }

    sub_218825794(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }
}

uint64_t sub_218C7CFD4(uint64_t a1)
{
  sub_218C7FCB8();
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for SportsSyncFavoritesFetchResult();
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v18[-v10];
  sub_218C7FD68(a1, v5, sub_218C7FCB8);
  v12 = *(v3 + 56);
  v13 = *(v5 + *(v3 + 72));
  sub_2186CB1F0(v5, v19);
  sub_218C82810(v5 + v12, v11, type metadata accessor for SportsSyncFavoritesFetchResult);
  sub_218718690(v19, v18);
  sub_218C7FD68(v11, v9, type metadata accessor for SportsSyncFavoritesFetchResult);
  v14 = sub_218F93138(v13, v18, v9, 0);
  v16 = sub_218C7D1AC(v14, v15, v19);
  sub_218C82338(v14);
  sub_218C822D0(v11, type metadata accessor for SportsSyncFavoritesFetchResult);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v16;
}

uint64_t sub_218C7D1AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && (*(a1 + 16) || *(a2 + 16)))
  {
    v6 = qword_280EE6038;

    if (v6 != -1)
    {
      swift_once();
    }

    v7 = sub_219BE5434();
    __swift_project_value_buffer(v7, qword_280F62730);

    v8 = sub_219BE5414();
    v9 = sub_219BF6214();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v23[0] = v11;
      *v10 = 136446210;
      v12 = sub_218F92E9C(a1, a2);
      v14 = sub_2186D1058(v12, v13, v23);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_2186C1000, v8, v9, "Sports sync manager will sync to watchlist, changeSet=%{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x21CECF960](v11, -1, -1);
      MEMORY[0x21CECF960](v10, -1, -1);
    }

    v15 = sub_218718690(a3, &v24);
    v23[0] = a1;
    v23[1] = a2;
    MEMORY[0x28223BE20](v15);

    sub_219BE3204();
    v16 = sub_219BE2E54();
    v17 = sub_219BE2FD4();

    sub_218C82050(v23);
    return v17;
  }

  else
  {
    if (qword_280EE6038 != -1)
    {
      swift_once();
    }

    v19 = sub_219BE5434();
    __swift_project_value_buffer(v19, qword_280F62730);
    v20 = sub_219BE5414();
    v21 = sub_219BF6214();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2186C1000, v20, v21, "Sports sync manager sync to watchlist detected no changes", v22, 2u);
      MEMORY[0x21CECF960](v22, -1, -1);
    }

    sub_218825794(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }
}

uint64_t sub_218C7D508()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if ((sub_21884041C() & 1) != 0 && [*&v1[OBJC_IVAR____TtC7NewsUI217SportsSyncManager_userInfo] sportsSyncState] == 2)
    {
      if (qword_280EE6038 != -1)
      {
        swift_once();
      }

      v2 = sub_219BE5434();
      __swift_project_value_buffer(v2, qword_280F62730);
      v3 = sub_219BE5414();
      v4 = sub_219BF6214();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&dword_2186C1000, v3, v4, "Syncing subscription merge changes with watchlist: processing...", v5, 2u);
        MEMORY[0x21CECF960](v5, -1, -1);
      }

      MEMORY[0x28223BE20](v6);
      sub_219BE3204();
      v7 = sub_219BE2E54();
      sub_218C7FCB8();
      type metadata accessor for SportsSyncManager();
      sub_219BE2F84();

      v8 = sub_219BE2E54();
      sub_219BE2F84();

      v9 = sub_219BE2E54();
      sub_219BE2FD4();

      v10 = sub_219BE2E54();
      v11 = sub_219BE3024();
    }

    else
    {
      if (qword_280EE6038 != -1)
      {
        swift_once();
      }

      v12 = sub_219BE5434();
      __swift_project_value_buffer(v12, qword_280F62730);
      v13 = sub_219BE5414();
      v14 = sub_219BF6214();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_2186C1000, v13, v14, "Syncing subscription merge changes with watchlist is not enabled", v15, 2u);
        MEMORY[0x21CECF960](v15, -1, -1);
      }

      sub_218825794(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v11 = sub_219BE3014();
    }

    return v11;
  }

  else
  {
    if (qword_280EE6038 != -1)
    {
      swift_once();
    }

    v17 = sub_219BE5434();
    __swift_project_value_buffer(v17, qword_280F62730);
    v18 = sub_219BE5414();
    v19 = sub_219BF6214();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2186C1000, v18, v19, "Syncing subscription merge changes with watchlist is not allowed", v20, 2u);
      MEMORY[0x21CECF960](v20, -1, -1);
    }

    sub_218825794(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }
}

uint64_t sub_218C7D9DC(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  sub_219BF2F64();
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC7NewsUI217SportsSyncManager_syncService), *(a2 + OBJC_IVAR____TtC7NewsUI217SportsSyncManager_syncService + 24));
  v3 = off_282A859E0[0];
  v4 = type metadata accessor for SportsSyncService();
  v3(v4, &off_282A859B8);
  v5 = *(a2 + OBJC_IVAR____TtC7NewsUI217SportsSyncManager_subscriptionController);
  sub_218C820A4();
  *(swift_allocObject() + 16) = v5;
  v6 = v5;
  sub_219BE2F54();
  v7 = sub_219BE31B4();

  return v7;
}

uint64_t sub_218C7DB08(uint64_t a1, void *a2)
{
  v55 = a2;
  ObjectType = swift_getObjectType();
  sub_218C7FCB8();
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = (&v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for SportsSyncFavoritesFetchResult();
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v53 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v53 - v15;
  sub_218C7FD68(a1, v7, sub_218C7FCB8);
  v17 = *(v5 + 56);
  v18 = *(v7 + *(v5 + 72));
  sub_2186CB1F0(v7, v64);
  sub_218C82810(v7 + v17, v16, type metadata accessor for SportsSyncFavoritesFetchResult);
  sub_218718690(v64, &v62);
  v58 = v16;
  sub_218C7FD68(v16, v14, type metadata accessor for SportsSyncFavoritesFetchResult);

  v20 = sub_218845F78(v19);

  v60 = &v62;
  v61 = v20;
  v21 = sub_218F8C6C4(sub_218C824A0, v59, v18);
  v56 = v2;

  sub_218C822D0(v14, type metadata accessor for SportsSyncFavoritesFetchResult);
  if (*(v21 + 2))
  {
    v22 = MEMORY[0x277D84F90];
  }

  else
  {

    v21 = 0;
    v22 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(&v62);
  sub_218718690(v64, &v62);
  sub_218C7FD68(v58, v11, type metadata accessor for SportsSyncFavoritesFetchResult);
  v23 = sub_21921DB20(v18, &v62, v11, 1);
  v25 = v24;
  if (qword_280EE6038 != -1)
  {
    swift_once();
  }

  v26 = sub_219BE5434();
  __swift_project_value_buffer(v26, qword_280F62730);
  sub_218C824BC(v21);
  sub_218C824BC(v23);
  v27 = sub_219BE5414();
  v28 = sub_219BF6214();
  sub_218C82338(v21);
  sub_218C82338(v23);
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v65 = v53;
    *v29 = 136446466;
    v54 = v28;
    if (v21)
    {
      v30 = sub_218F92E9C(v21, v22);
    }

    else
    {
      v30 = 0;
      v31 = 0;
    }

    v62 = v30;
    v63 = v31;
    sub_218825794(0, &qword_280E8F860, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    v32 = sub_219BF5484();
    v34 = sub_2186D1058(v32, v33, &v65);

    *(v29 + 4) = v34;
    *(v29 + 12) = 2080;
    if (v23)
    {
      v35 = sub_21921D740(v23, v25);
    }

    else
    {
      v35 = 0;
      v36 = 0;
    }

    v62 = v35;
    v63 = v36;
    v37 = sub_219BF5484();
    v39 = sub_2186D1058(v37, v38, &v65);

    *(v29 + 14) = v39;
    _os_log_impl(&dword_2186C1000, v27, v54, "Sports sync manager merge syncing favorites, toChangeSet=%{public}s, fromChangeSet=%s", v29, 0x16u);
    v40 = v53;
    swift_arrayDestroy();
    MEMORY[0x21CECF960](v40, -1, -1);
    MEMORY[0x21CECF960](v29, -1, -1);
  }

  MEMORY[0x28223BE20](v41);
  v42 = v55;
  *(&v53 - 4) = v55;
  *(&v53 - 3) = v21;
  *(&v53 - 2) = v22;
  *(&v53 - 1) = v64;
  sub_219BE3204();
  sub_218C82338(v21);
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = v23;
  v43[4] = v25;
  sub_218C824BC(v23);
  v44 = v42;
  v45 = sub_219BE2E54();
  sub_219BE3054();

  v46 = swift_allocObject();
  v46[2] = v44;
  v46[3] = v23;
  v46[4] = v25;
  v47 = swift_allocObject();
  *(v47 + 16) = sub_218C825B0;
  *(v47 + 24) = v46;
  v48 = v44;
  v49 = sub_219BE2E54();
  sub_219BE2F64();

  v50 = sub_219BE2E54();
  v51 = sub_219BE2F94();

  sub_218C822D0(v58, type metadata accessor for SportsSyncFavoritesFetchResult);
  __swift_destroy_boxed_opaque_existential_1(v64);
  return v51;
}

uint64_t sub_218C7E188(unint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  if (a1)
  {
    if (a1 >> 62)
    {
      if (sub_219BF7214())
      {
        goto LABEL_5;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_5:
      v4 = qword_280EE6038;

      if (v4 != -1)
      {
        swift_once();
      }

      v5 = sub_219BE5434();
      __swift_project_value_buffer(v5, qword_280F62730);

      v6 = sub_219BE5414();
      v7 = sub_219BF6214();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v23 = v9;
        *v8 = 136446210;
        v10 = sub_21921D740(a1, a2);
        v12 = sub_2186D1058(v10, v11, &v23);

        *(v8 + 4) = v12;
        _os_log_impl(&dword_2186C1000, v6, v7, "Sports sync manager will sync from watchlist, changeSet=%{public}s", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v9);
        MEMORY[0x21CECF960](v9, -1, -1);
        MEMORY[0x21CECF960](v8, -1, -1);
      }

      MEMORY[0x28223BE20](v13);
      sub_218A4247C(0, &qword_280E8ED00, &qword_280E8E680);
      sub_219BE3204();
      sub_2186C6148(0, &qword_280E8E3B0);
      v14 = sub_219BF66A4();
      v15 = swift_allocObject();
      *(v15 + 16) = a1;
      *(v15 + 24) = a2;
      sub_219BE2F84();

      v16 = sub_219BE2E54();
      v17 = sub_219BE2FD4();

      return v17;
    }

    if (*(a2 + 16))
    {
      goto LABEL_5;
    }
  }

  if (qword_280EE6038 != -1)
  {
    swift_once();
  }

  v19 = sub_219BE5434();
  __swift_project_value_buffer(v19, qword_280F62730);
  v20 = sub_219BE5414();
  v21 = sub_219BF6214();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_2186C1000, v20, v21, "Sports sync manager sync from watchlist detected no changes", v22, 2u);
    MEMORY[0x21CECF960](v22, -1, -1);
  }

  sub_218825794(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_218C7E5C0()
{
  v0 = sub_219BF7894();
  MEMORY[0x21CECC330](v0);

  sub_219BDC8F4();
}

uint64_t sub_218C7E688()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if ((sub_21884041C() & 1) != 0 && [*&v1[OBJC_IVAR____TtC7NewsUI217SportsSyncManager_userInfo] sportsSyncState] == 2)
    {
      if (qword_280EE6038 != -1)
      {
        swift_once();
      }

      v2 = sub_219BE5434();
      __swift_project_value_buffer(v2, qword_280F62730);
      v3 = sub_219BE5414();
      v4 = sub_219BF6214();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&dword_2186C1000, v3, v4, "Syncing subscription from watchlist: processing...", v5, 2u);
        MEMORY[0x21CECF960](v5, -1, -1);
      }

      MEMORY[0x28223BE20](v6);
      sub_219BE3204();
      v7 = sub_219BE2E54();
      sub_218C7FCB8();
      type metadata accessor for SportsSyncManager();
      sub_219BE2F84();

      v8 = sub_219BE2E54();
      sub_219BE2F84();

      v9 = sub_219BE2E54();
      sub_219BE2FD4();

      v10 = sub_219BE2E54();
      v11 = sub_219BE3024();
    }

    else
    {
      if (qword_280EE6038 != -1)
      {
        swift_once();
      }

      v12 = sub_219BE5434();
      __swift_project_value_buffer(v12, qword_280F62730);
      v13 = sub_219BE5414();
      v14 = sub_219BF61F4();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_2186C1000, v13, v14, "Syncing subscription from watchlist is not enabled", v15, 2u);
        MEMORY[0x21CECF960](v15, -1, -1);
      }

      sub_218825794(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v11 = sub_219BE3014();
    }

    return v11;
  }

  else
  {
    if (qword_280EE6038 != -1)
    {
      swift_once();
    }

    v17 = sub_219BE5434();
    __swift_project_value_buffer(v17, qword_280F62730);
    v18 = sub_219BE5414();
    v19 = sub_219BF61F4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2186C1000, v18, v19, "Syncing subscription from watchlist is not allowed", v20, 2u);
      MEMORY[0x21CECF960](v20, -1, -1);
    }

    sub_218825794(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }
}

uint64_t sub_218C7EB5C(uint64_t a1)
{
  sub_218C7FCB8();
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for SportsSyncFavoritesFetchResult();
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v18[-v10];
  sub_218C7FD68(a1, v5, sub_218C7FCB8);
  v12 = *(v3 + 56);
  v13 = *(v5 + *(v3 + 72));
  sub_2186CB1F0(v5, v19);
  sub_218C82810(v5 + v12, v11, type metadata accessor for SportsSyncFavoritesFetchResult);
  sub_218718690(v19, v18);
  sub_218C7FD68(v11, v9, type metadata accessor for SportsSyncFavoritesFetchResult);
  v14 = sub_21921DB20(v13, v18, v9, 0);
  v16 = sub_218C7E188(v14, v15);
  sub_218C82338(v14);
  sub_218C822D0(v11, type metadata accessor for SportsSyncFavoritesFetchResult);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v16;
}

void sub_218C7ED48(const char *a1)
{
  if (qword_280EE6038 != -1)
  {
    swift_once();
  }

  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_280F62730);
  oslog = sub_219BE5414();
  v3 = sub_219BF6214();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2186C1000, oslog, v3, a1, v4, 2u);
    MEMORY[0x21CECF960](v4, -1, -1);
  }
}

uint64_t sub_218C7EE38(unint64_t *a1, uint64_t a2, unint64_t a3)
{
  v53[1] = *MEMORY[0x277D85DE8];
  v42 = *a1;
  if (a3 >> 62)
  {
    v3 = sub_219BF7214();
    if (!v3)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v3 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_14;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  v4 = 0;
  v5 = *(a2 + OBJC_IVAR____TtC7NewsUI217SportsSyncManager_subscriptionController);
  v6 = a3 & 0xC000000000000001;
  v7 = qword_280F62730;
  v44 = v3;
  do
  {
    if (v6)
    {
      v8 = MEMORY[0x21CECE0F0](v4, a3);
    }

    else
    {
      v8 = *(a3 + 8 * v4 + 32);
      swift_unknownObjectRetain();
    }

    if (qword_280EE6038 != -1)
    {
      swift_once();
    }

    v9 = sub_219BE5434();
    __swift_project_value_buffer(v9, v7);
    swift_unknownObjectRetain();
    v10 = sub_219BE5414();
    v11 = sub_219BF6214();
    swift_unknownObjectRelease();
    v51 = v11;
    if (os_log_type_enabled(v10, v11))
    {
      bufa = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v53[0] = v47;
      *bufa = 136446210;
      v12 = [v8 identifier];
      v13 = v7;
      v14 = v6;
      v15 = v5;
      v16 = sub_219BF5414();
      v18 = v17;

      v19 = v16;
      v5 = v15;
      v6 = v14;
      v7 = v13;
      v20 = sub_2186D1058(v19, v18, v53);
      v3 = v44;

      *(bufa + 4) = v20;
      _os_log_impl(&dword_2186C1000, v10, v51, "Sports sync manager removing tag from watchlist sync, tag=%{public}s", bufa, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x21CECF960](v47, -1, -1);
      MEMORY[0x21CECF960](bufa, -1, -1);
    }

    ++v4;
    [v5 removeSubscriptionToTag_];
    swift_unknownObjectRelease();
  }

  while (v3 != v4);
LABEL_14:
  v21 = v42;
  if (v42 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v23 = 0;
    v24 = *(a2 + OBJC_IVAR____TtC7NewsUI217SportsSyncManager_subscriptionController);
    v25 = v21 & 0xC000000000000001;
    v43 = v21 & 0xFFFFFFFFFFFFFF8;
    v48 = v24;
    v50 = i;
    buf = (v21 & 0xC000000000000001);
    while (v25)
    {
      v26 = MEMORY[0x21CECE0F0](v23, v21);
      v27 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        goto LABEL_31;
      }

LABEL_23:
      v52 = v27;
      if (qword_280EE6038 != -1)
      {
        swift_once();
      }

      v28 = sub_219BE5434();
      __swift_project_value_buffer(v28, qword_280F62730);
      swift_unknownObjectRetain();
      v29 = sub_219BE5414();
      v30 = sub_219BF6214();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v53[0] = v32;
        *v31 = 136446210;
        v33 = [v26 identifier];
        v34 = sub_219BF5414();
        v36 = v35;

        v21 = v42;
        v37 = sub_2186D1058(v34, v36, v53);
        v24 = v48;

        *(v31 + 4) = v37;
        i = v50;
        _os_log_impl(&dword_2186C1000, v29, v30, "Sports sync manager adding tag from watchlist sync, tag=%{public}s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v32);
        v38 = v32;
        v25 = buf;
        MEMORY[0x21CECF960](v38, -1, -1);
        MEMORY[0x21CECF960](v31, -1, -1);
      }

      v53[0] = 0;
      [v24 addSubscriptionToTag:v26 notificationsEnabled:0 error:v53];
      v39 = v53[0];
      if (v53[0])
      {
        swift_willThrow();
        v39;
        return swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
      ++v23;
      if (v52 == i)
      {
        goto LABEL_34;
      }
    }

    if (v23 >= *(v43 + 16))
    {
      goto LABEL_32;
    }

    v26 = *(v21 + 8 * v23 + 32);
    swift_unknownObjectRetain();
    v27 = v23 + 1;
    if (!__OFADD__(v23, 1))
    {
      goto LABEL_23;
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

LABEL_34:
  sub_218825794(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

void sub_218C7F3A4(void *a1)
{
  if (qword_280EE6038 != -1)
  {
    swift_once();
  }

  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_280F62730);
  v3 = a1;
  oslog = sub_219BE5414();
  v4 = sub_219BF61F4();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    v7 = a1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_2186C1000, oslog, v4, "Sports sync manager failed to sync from watchlist, error=%{public}@", v5, 0xCu);
    sub_218C822D0(v6, sub_2189B3F3C);
    MEMORY[0x21CECF960](v6, -1, -1);
    MEMORY[0x21CECF960](v5, -1, -1);
  }
}

void sub_218C7F504(void *a1@<X0>, _BYTE *a2@<X8>)
{
  if (qword_280EE6038 != -1)
  {
    swift_once();
  }

  v4 = sub_219BE5434();
  __swift_project_value_buffer(v4, qword_280F62730);
  v5 = a1;
  v6 = sub_219BE5414();
  v7 = sub_219BF61F4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = a1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2186C1000, v6, v7, "Sports sync manager error determining iTunes account status, error=%{public}@", v8, 0xCu);
    sub_218C822D0(v9, sub_2189B3F3C);
    MEMORY[0x21CECF960](v9, -1, -1);
    MEMORY[0x21CECF960](v8, -1, -1);
  }

  *a2 = 0;
}

uint64_t sub_218C7F66C(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return MEMORY[0x2822009F8](sub_218C7F68C, 0, 0);
}

uint64_t sub_218C7F68C()
{
  v1 = v0[20];
  sub_2186C6148(0, &qword_280E8E3B0);
  v2 = MEMORY[0x21CECD490](17);
  v0[21] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_218C7F7D8;
  v3 = swift_continuation_init();
  sub_218C821B4();
  v0[17] = v4;
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_218C7FB1C;
  v0[13] = &block_descriptor_33;
  v0[14] = v3;
  [v1 fetchSubscribedTagsWithCallbackQueue:v2 preferCache:0 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_218C7F7D8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_218C7FAAC;
  }

  else
  {
    v2 = sub_218C7F8E8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_218C7F8E8()
{
  v1 = *(v0 + 144);

  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];
    if (v1 >> 62)
    {
LABEL_22:
      v3 = sub_219BF7214();
    }

    else
    {
      v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v4 = 0;
    v11 = MEMORY[0x277D84F90];
    while (v3 != v4)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x21CECE0F0](v4, v1);
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v5 = *(v1 + 8 * v4 + 32);
        swift_unknownObjectRetain();
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      v7 = [v5 asSports];
      v8 = swift_unknownObjectRelease();
      ++v4;
      if (v7)
      {
        MEMORY[0x21CECC690](v8);
        if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_219BF5A14();
        }

        sub_219BF5A54();
        v11 = v12;
        v4 = v6;
      }
    }

    v2 = v11;
  }

  **(v0 + 152) = v2;
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_218C7FAAC()
{
  v1 = *(v0 + 168);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_218C7FB1C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_2186CFDE4(0, &qword_280E8B580);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    if (a2)
    {
      sub_2186D6710(0, &qword_280E8E680);
      v9 = sub_219BF5924();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return MEMORY[0x282200950](v5);
  }
}

unint64_t sub_218C7FC1C()
{
  v1 = 0x73696C6863746177;
  if (*v0 != 1)
  {
    v1 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

void sub_218C7FCB8()
{
  if (!qword_27CC103E0)
  {
    sub_2186CFDE4(255, &unk_27CC103E8);
    type metadata accessor for SportsSyncFavoritesFetchResult();
    sub_218A4247C(255, &qword_280E8EC90, &qword_280E8E420);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CC103E0);
    }
  }
}

uint64_t sub_218C7FD68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_218C7FDD0(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_219BF7884();
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
        sub_2186C6148(0, &qword_280E8E698);
        v6 = sub_219BF5A34();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_218C80128(v8, v9, a1, v4);
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
    sub_218C7FEE4(0, v2, 1, a1);
  }
}

void sub_218C7FEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v38 = sub_219BDBD34();
  v8 = MEMORY[0x28223BE20](v38);
  v37 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - v11;
  v32 = a2;
  if (a3 != a2)
  {
    v13 = *a4;
    v36 = (v10 + 8);
    v39 = v13;
    v14 = v13 + 8 * a3 - 8;
    v15 = a1 - a3;
LABEL_5:
    v34 = v14;
    v35 = a3;
    v16 = *(v39 + 8 * a3);
    v33 = v15;
    v17 = v15;
    while (1)
    {
      v18 = *v14;
      v19 = v16;
      v20 = v18;
      v21 = [v19 dateAdded];
      if (!v21)
      {
        break;
      }

      v22 = v21;
      sub_219BDBCA4();

      v23 = [v20 dateAdded];
      if (!v23)
      {
        goto LABEL_13;
      }

      v24 = v23;
      v25 = v37;
      sub_219BDBCA4();

      v40 = sub_219BDBC14();
      v26 = v17;
      v27 = *v36;
      v28 = v25;
      v29 = v38;
      (*v36)(v28, v38);
      v27(v12, v29);

      if (v40)
      {
        if (!v39)
        {
          goto LABEL_14;
        }

        v30 = *v14;
        v16 = *(v14 + 8);
        *v14 = v16;
        *(v14 + 8) = v30;
        v14 -= 8;
        ++v17;
        if (v26 != -1)
        {
          continue;
        }
      }

      a3 = v35 + 1;
      v14 = v34 + 8;
      v15 = v33 - 1;
      if (v35 + 1 == v32)
      {
        return;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }
}

void sub_218C80128(void ***a1, uint64_t a2, char **a3, int64_t a4)
{
  v140 = a1;
  v152 = sub_219BDBD34();
  v7 = MEMORY[0x28223BE20](v152);
  v149 = &v134 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v134 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v142 = &v134 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v143 = &v134 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v135 = &v134 - v17;
  MEMORY[0x28223BE20](v16);
  v136 = &v134 - v19;
  v147 = a3;
  v20 = a3[1];
  if (v20 >= 1)
  {
    v21 = 0;
    v151 = (v18 + 8);
    v22 = MEMORY[0x277D84F90];
    v23 = &selRef_moveShortcutWithIdentifier_toIndex_;
    v139 = a4;
    v153 = v11;
    while (1)
    {
      v24 = v21;
      v25 = v21 + 1;
      if ((v21 + 1) < v20)
      {
        v145 = v20;
        v138 = v22;
        v26 = *v147;
        v27 = *&(*v147)[8 * v21];
        v28 = *&(*v147)[8 * v25];
        v29 = v27;
        v30 = [v28 v23[42]];
        if (!v30)
        {
          goto LABEL_142;
        }

        v31 = v30;
        v150 = v28;
        v32 = v136;
        sub_219BDBCA4();

        v33 = [v29 v23[42]];
        if (!v33)
        {
LABEL_143:
          __break(1u);
          goto LABEL_144;
        }

        v34 = v33;
        v35 = v135;
        sub_219BDBCA4();

        LODWORD(v146) = sub_219BDBC14();
        v4 = v151;
        v36 = *v151;
        v37 = v35;
        v21 = v32;
        v38 = v152;
        (*v151)(v37, v152);
        v144 = v36;
        (v36)(v21, v38);

        v39 = (v24 + 2);
        v137 = v24;
        v150 = (8 * v24);
        v40 = &v26[8 * v24 + 16];
        while (1)
        {
          v41 = v145;
          if (v145 == v39)
          {
            break;
          }

          v42 = *(v40 - 1);
          v43 = *v40;
          v44 = v42;
          v45 = [v43 v23[42]];
          if (!v45)
          {
            goto LABEL_137;
          }

          v46 = v45;
          v47 = v143;
          sub_219BDBCA4();

          v48 = [v44 v23[42]];
          if (!v48)
          {
            goto LABEL_136;
          }

          v49 = v48;
          v50 = v142;
          sub_219BDBCA4();

          LODWORD(v49) = sub_219BDBC14() & 1;
          v51 = v50;
          v21 = v47;
          v52 = v152;
          v4 = v144;
          (v144)(v51, v152);
          (v4)(v21, v52);

          ++v39;
          ++v40;
          v11 = v153;
          v23 = &selRef_moveShortcutWithIdentifier_toIndex_;
          if ((v146 & 1) != v49)
          {
            v41 = (v39 - 1);
            break;
          }
        }

        v22 = v138;
        a4 = v139;
        v24 = v137;
        if (v146)
        {
          if (v41 < v137)
          {
            goto LABEL_129;
          }

          if (v137 < v41)
          {
            v53 = 8 * v41 - 8;
            v54 = v41;
            v55 = v137;
            do
            {
              if (v55 != --v54)
              {
                v56 = *v147;
                if (!*v147)
                {
                  goto LABEL_139;
                }

                v57 = *&v150[v56];
                *&v150[v56] = *&v56[v53];
                *&v56[v53] = v57;
              }

              ++v55;
              v53 -= 8;
              v150 += 8;
            }

            while (v55 < v54);
          }
        }

        v25 = v41;
      }

      v58 = v147[1];
      if (v25 >= v58)
      {
        v21 = v25;
        if (v25 < v24)
        {
          goto LABEL_127;
        }
      }

      else
      {
        v59 = v25;
        v78 = __OFSUB__(v25, v24);
        v60 = v25 - v24;
        if (v78)
        {
          goto LABEL_128;
        }

        if (v60 >= a4)
        {
          goto LABEL_30;
        }

        v61 = v24 + a4;
        if (__OFADD__(v24, a4))
        {
          goto LABEL_130;
        }

        if (v61 >= v58)
        {
          v61 = v147[1];
        }

        if (v61 < v24)
        {
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        if (v59 == v61)
        {
LABEL_30:
          v21 = v59;
          if (v59 < v24)
          {
            goto LABEL_127;
          }
        }

        else
        {
          v137 = v24;
          v138 = v22;
          v150 = *v147;
          v111 = &v150[8 * v59 - 8];
          v112 = (v24 - v59);
          v141 = v61;
          do
          {
            v145 = v111;
            v146 = v59;
            v113 = *&v150[8 * v59];
            v144 = v112;
            v114 = v111;
            while (1)
            {
              v115 = *v114;
              v4 = v113;
              v116 = v115;
              v117 = [v4 v23[42]];
              if (!v117)
              {
                goto LABEL_134;
              }

              v118 = v117;
              sub_219BDBCA4();

              v119 = [v116 v23[42]];
              if (!v119)
              {
                __break(1u);
LABEL_134:
                __break(1u);
LABEL_135:
                __break(1u);
LABEL_136:
                __break(1u);
LABEL_137:
                __break(1u);
LABEL_138:
                __break(1u);
LABEL_139:
                __break(1u);
LABEL_140:
                __break(1u);
LABEL_141:
                __break(1u);
LABEL_142:
                __break(1u);
                goto LABEL_143;
              }

              v120 = v119;
              v121 = v149;
              sub_219BDBCA4();

              LOBYTE(v120) = sub_219BDBC14();
              v122 = v11;
              v123 = *v151;
              v124 = v121;
              v125 = v152;
              (*v151)(v124, v152);
              v123(v122, v125);

              if ((v120 & 1) == 0)
              {
                break;
              }

              if (!v150)
              {
                goto LABEL_135;
              }

              v126 = *v114;
              v113 = *(v114 + 1);
              *v114 = v113;
              *(v114 + 1) = v126;
              v114 -= 8;
              v127 = __CFADD__(v112++, 1);
              v11 = v153;
              v23 = &selRef_moveShortcutWithIdentifier_toIndex_;
              if (v127)
              {
                goto LABEL_85;
              }
            }

            v11 = v153;
            v23 = &selRef_moveShortcutWithIdentifier_toIndex_;
LABEL_85:
            v59 = v146 + 1;
            v111 = v145 + 8;
            v112 = v144 - 1;
          }

          while (v146 + 1 != v141);
          v21 = v141;
          v24 = v137;
          v22 = v138;
          if (v141 < v137)
          {
            goto LABEL_127;
          }
        }
      }

      v62 = v22;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v22 = v62;
      }

      else
      {
        v22 = sub_2191F6B60(0, *(v62 + 2) + 1, 1, v62);
      }

      v64 = *(v22 + 2);
      v63 = *(v22 + 3);
      v65 = v64 + 1;
      if (v64 >= v63 >> 1)
      {
        v22 = sub_2191F6B60((v63 > 1), v64 + 1, 1, v22);
      }

      *(v22 + 2) = v65;
      v66 = &v22[16 * v64];
      *(v66 + 4) = v24;
      *(v66 + 5) = v21;
      v67 = *v140;
      if (!*v140)
      {
        goto LABEL_141;
      }

      if (v64)
      {
        while (1)
        {
          v4 = v65 - 1;
          if (v65 >= 4)
          {
            break;
          }

          if (v65 == 3)
          {
            v68 = *(v22 + 4);
            v69 = *(v22 + 5);
            v78 = __OFSUB__(v69, v68);
            v70 = v69 - v68;
            v71 = v78;
LABEL_52:
            if (v71)
            {
              goto LABEL_116;
            }

            v84 = &v22[16 * v65];
            v86 = *v84;
            v85 = *(v84 + 1);
            v87 = __OFSUB__(v85, v86);
            v88 = v85 - v86;
            v89 = v87;
            if (v87)
            {
              goto LABEL_119;
            }

            v90 = &v22[16 * v4 + 32];
            v92 = *v90;
            v91 = *(v90 + 1);
            v78 = __OFSUB__(v91, v92);
            v93 = v91 - v92;
            if (v78)
            {
              goto LABEL_122;
            }

            if (__OFADD__(v88, v93))
            {
              goto LABEL_123;
            }

            if (v88 + v93 >= v70)
            {
              if (v70 < v93)
              {
                v4 = v65 - 2;
              }

              goto LABEL_73;
            }

            goto LABEL_66;
          }

          v94 = &v22[16 * v65];
          v96 = *v94;
          v95 = *(v94 + 1);
          v78 = __OFSUB__(v95, v96);
          v88 = v95 - v96;
          v89 = v78;
LABEL_66:
          if (v89)
          {
            goto LABEL_118;
          }

          v97 = &v22[16 * v4];
          v99 = *(v97 + 4);
          v98 = *(v97 + 5);
          v78 = __OFSUB__(v98, v99);
          v100 = v98 - v99;
          if (v78)
          {
            goto LABEL_121;
          }

          if (v100 < v88)
          {
            goto LABEL_3;
          }

LABEL_73:
          v105 = v4 - 1;
          if (v4 - 1 >= v65)
          {
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
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
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
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
            goto LABEL_131;
          }

          if (!*v147)
          {
            goto LABEL_138;
          }

          v106 = v22;
          v107 = *&v22[16 * v105 + 32];
          v24 = *&v22[16 * v4 + 40];
          v108 = v148;
          sub_218C80AC4(&(*v147)[8 * v107], &(*v147)[8 * *&v22[16 * v4 + 32]], &(*v147)[8 * v24], v67);
          v148 = v108;
          if (v108)
          {
            goto LABEL_110;
          }

          if (v24 < v107)
          {
            goto LABEL_112;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v109 = v106;
          }

          else
          {
            v109 = sub_218C81048(v106);
          }

          v11 = v153;
          if (v105 >= *(v109 + 2))
          {
            goto LABEL_113;
          }

          v110 = &v109[16 * v105];
          *(v110 + 4) = v107;
          *(v110 + 5) = v24;
          v154 = v109;
          sub_218C80FBC(v4);
          v22 = v154;
          v65 = *(v154 + 2);
          if (v65 <= 1)
          {
            goto LABEL_3;
          }
        }

        v72 = &v22[16 * v65 + 32];
        v73 = *(v72 - 64);
        v74 = *(v72 - 56);
        v78 = __OFSUB__(v74, v73);
        v75 = v74 - v73;
        if (v78)
        {
          goto LABEL_114;
        }

        v77 = *(v72 - 48);
        v76 = *(v72 - 40);
        v78 = __OFSUB__(v76, v77);
        v70 = v76 - v77;
        v71 = v78;
        if (v78)
        {
          goto LABEL_115;
        }

        v79 = &v22[16 * v65];
        v81 = *v79;
        v80 = *(v79 + 1);
        v78 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v78)
        {
          goto LABEL_117;
        }

        v78 = __OFADD__(v70, v82);
        v83 = v70 + v82;
        if (v78)
        {
          goto LABEL_120;
        }

        if (v83 >= v75)
        {
          v101 = &v22[16 * v4 + 32];
          v103 = *v101;
          v102 = *(v101 + 1);
          v78 = __OFSUB__(v102, v103);
          v104 = v102 - v103;
          if (v78)
          {
            goto LABEL_124;
          }

          if (v70 < v104)
          {
            v4 = v65 - 2;
          }

          goto LABEL_73;
        }

        goto LABEL_52;
      }

LABEL_3:
      v20 = v147[1];
      a4 = v139;
      if (v21 >= v20)
      {
        goto LABEL_99;
      }
    }
  }

  v22 = MEMORY[0x277D84F90];
LABEL_99:
  v4 = *v140;
  if (*v140)
  {
    v21 = v22;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v148;
    if (isUniquelyReferenced_nonNull_native)
    {
      v129 = v21;
    }

    else
    {
LABEL_132:
      v129 = sub_218C81048(v21);
    }

    v154 = v129;
    v21 = *(v129 + 2);
    if (v21 >= 2)
    {
      while (*v147)
      {
        v130 = *&v129[16 * v21];
        v131 = v129;
        v132 = *&v129[16 * v21 + 24];
        sub_218C80AC4(&(*v147)[8 * v130], &(*v147)[8 * *&v129[16 * v21 + 16]], &(*v147)[8 * v132], v4);
        if (v24)
        {
          goto LABEL_110;
        }

        if (v132 < v130)
        {
          goto LABEL_125;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v131 = sub_218C81048(v131);
        }

        if (v21 - 2 >= *(v131 + 2))
        {
          goto LABEL_126;
        }

        v133 = &v131[16 * v21];
        *v133 = v130;
        *(v133 + 1) = v132;
        v154 = v131;
        sub_218C80FBC(v21 - 1);
        v129 = v154;
        v21 = *(v154 + 2);
        if (v21 <= 1)
        {
          goto LABEL_110;
        }
      }

      goto LABEL_140;
    }

LABEL_110:
  }

  else
  {
LABEL_144:
    __break(1u);
  }
}

uint64_t sub_218C80AC4(void **a1, void **a2, id *a3, void **a4)
{
  v63 = sub_219BDBD34();
  v8 = *(v63 - 8);
  v9 = MEMORY[0x28223BE20](v63);
  v59 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v61 = (&v56 - v12);
  v13 = MEMORY[0x28223BE20](v11);
  v58 = &v56 - v14;
  MEMORY[0x28223BE20](v13);
  v60 = (&v56 - v15);
  v16 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v16 = a2 - a1;
  }

  v17 = v16 >> 3;
  v18 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v18 = a3 - a2;
  }

  v19 = v18 >> 3;
  if (v17 >= v18 >> 3)
  {
    if (a4 != a2 || &a2[v19] <= a4)
    {
      memmove(a4, a2, 8 * v19);
    }

    v65 = &a4[v19];
    if (a3 - a2 >= 8 && a2 > a1)
    {
      v58 = (v8 + 8);
      v37 = &selRef_moveShortcutWithIdentifier_toIndex_;
      v57 = a1;
LABEL_28:
      v62 = a2;
      v38 = a2 - 1;
      v39 = a3 - 1;
      v40 = v65;
      v60 = a2 - 1;
      while (1)
      {
        v64 = v39;
        v41 = *--v40;
        v42 = *v38;
        v43 = v41;
        v44 = v42;
        result = [v43 v37[42]];
        if (!result)
        {
          goto LABEL_47;
        }

        v45 = result;
        v46 = a4;
        v47 = v61;
        sub_219BDBCA4();

        result = [v44 v37[42]];
        if (!result)
        {
          goto LABEL_48;
        }

        v48 = result;
        v49 = v59;
        sub_219BDBCA4();

        LOBYTE(v48) = sub_219BDBC14();
        v50 = *v58;
        v51 = v49;
        v52 = v63;
        (*v58)(v51, v63);
        v50(v47, v52);

        if (v48)
        {
          a3 = v64;
          a4 = v46;
          v54 = v57;
          v55 = v60;
          if (v64 + 1 != v62)
          {
            *v64 = *v60;
          }

          v37 = &selRef_moveShortcutWithIdentifier_toIndex_;
          if (v65 <= v46 || (a2 = v55, v55 <= v54))
          {
            a2 = v55;
            break;
          }

          goto LABEL_28;
        }

        v53 = v64;
        a4 = v46;
        v38 = v60;
        if (v64 + 1 != v65)
        {
          *v64 = *v40;
        }

        v39 = v53 - 1;
        v65 = v40;
        v37 = &selRef_moveShortcutWithIdentifier_toIndex_;
        if (v40 <= v46)
        {
          v65 = v40;
          a2 = v62;
          break;
        }
      }
    }

LABEL_41:
    if (a2 != a4 || a2 >= (a4 + ((v65 - a4 + (v65 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
    {
      memmove(a2, a4, 8 * (v65 - a4));
    }

    return 1;
  }

  if (a4 != a1 || &a1[v17] <= a4)
  {
    memmove(a4, a1, 8 * v17);
  }

  v65 = &a4[v17];
  if (a2 - a1 < 8 || (v20 = a2, a2 >= a3))
  {
LABEL_21:
    a2 = a1;
    goto LABEL_41;
  }

  v59 = (v8 + 8);
  v21 = &selRef_moveShortcutWithIdentifier_toIndex_;
  v64 = a3;
  while (1)
  {
    v61 = a4;
    v62 = v20;
    v22 = *a4;
    v23 = *v20;
    v24 = v22;
    result = [v23 v21[42]];
    if (!result)
    {
      break;
    }

    v26 = result;
    v27 = a1;
    v28 = v60;
    sub_219BDBCA4();

    v29 = v21;
    result = [v24 v21[42]];
    if (!result)
    {
      goto LABEL_46;
    }

    v30 = result;
    v31 = v58;
    sub_219BDBCA4();

    LOBYTE(v30) = sub_219BDBC14();
    v32 = *v59;
    v33 = v31;
    v34 = v63;
    (*v59)(v33, v63);
    v32(v28, v34);

    if (v30)
    {
      a4 = v61;
      v35 = v62;
      v36 = v62;
      v20 = v62 + 1;
    }

    else
    {
      v35 = v61;
      v20 = v62;
      v36 = v61;
      a4 = v61 + 1;
    }

    if (v27 != v35)
    {
      *v27 = *v36;
    }

    a1 = v27 + 1;
    if (a4 < v65)
    {
      v21 = v29;
      if (v20 < v64)
      {
        continue;
      }
    }

    goto LABEL_21;
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_218C80FBC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_218C81048(v3);
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
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_218C8105C(char *result, int64_t a2, char a3, char *a4)
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
    sub_21874E654(0, &unk_280E8B650, sub_218C82728, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_218C81364()
{
  v0 = sub_219BF7614();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_218C813B0(const char *a1)
{
  if (qword_280EE6038 != -1)
  {
    swift_once();
  }

  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_280F62730);
  v3 = sub_219BE5414();
  v4 = sub_219BF6214();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2186C1000, v3, v4, a1, v5, 2u);
    MEMORY[0x21CECF960](v5, -1, -1);
  }

  sub_219BE2E94();
}

void sub_218C814C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_219BDBD34();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_219BE2E84();

  if (v67)
  {
    if (qword_280EE6038 != -1)
    {
      goto LABEL_57;
    }

    goto LABEL_3;
  }

  if (!a3)
  {
    v15 = MEMORY[0x277D84FA0];
    if (a1)
    {
      sub_219ADC118(a1);
      if (v16)
      {
        v15 = v16;
      }
    }

    v17 = MEMORY[0x277D84FA0];
    if (a2)
    {
      sub_219ADC118(a2);
      if (v18)
      {
        v17 = v18;
      }
    }

    v55 = v10;
    v56 = v8;
    v57 = v7;
    v58 = v3;
    if ((v15 & 0xC000000000000001) != 0)
    {
      sub_219BF71C4();
      sub_2186C6148(0, &qword_280E8DB50);
      sub_218BFF838();
      sub_219BF5D94();
      v15 = v62;
      v19 = v63;
      v20 = v64;
      v21 = v65;
      v22 = v66;
    }

    else
    {
      v21 = 0;
      v23 = -1 << *(v15 + 32);
      v19 = v15 + 56;
      v20 = ~v23;
      v24 = -v23;
      if (v24 < 64)
      {
        v25 = ~(-1 << v24);
      }

      else
      {
        v25 = -1;
      }

      v22 = v25 & *(v15 + 56);
    }

    v26 = 0;
    v59 = v20;
    v27 = (v20 + 64) >> 6;
    while (1)
    {
      if (v15 < 0)
      {
        v33 = sub_219BF7244();
        if (!v33)
        {
          goto LABEL_33;
        }

        v61 = v33;
        sub_2186C6148(0, &qword_280E8DB50);
        swift_dynamicCast();
        v32 = v67;
        v30 = v21;
        v31 = v22;
        if (!v67)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v28 = v21;
        v29 = v22;
        v30 = v21;
        if (!v22)
        {
          while (1)
          {
            v30 = v28 + 1;
            if (__OFADD__(v28, 1))
            {
              __break(1u);
              goto LABEL_56;
            }

            if (v30 >= v27)
            {
              break;
            }

            v29 = *(v19 + 8 * v30);
            ++v28;
            if (v29)
            {
              goto LABEL_27;
            }
          }

LABEL_33:
          sub_21892DE98();
          if ((v17 & 0xC000000000000001) != 0)
          {
            sub_219BF71C4();
            sub_2186C6148(0, &qword_280E8DB50);
            sub_218BFF838();
            sub_219BF5D94();
            v17 = v67;
            v34 = v68;
            v35 = v69;
            v36 = v70;
            v37 = v71;
          }

          else
          {
            v36 = 0;
            v38 = -1 << *(v17 + 32);
            v34 = v17 + 56;
            v35 = ~v38;
            v39 = -v38;
            if (v39 < 64)
            {
              v40 = ~(-1 << v39);
            }

            else
            {
              v40 = -1;
            }

            v37 = v40 & *(v17 + 56);
          }

          while (1)
          {
            if (v17 < 0)
            {
              v46 = sub_219BF7244();
              if (!v46 || (v60 = v46, sub_2186C6148(0, &qword_280E8DB50), swift_dynamicCast(), v45 = v61, v43 = v36, v44 = v37, !v61))
              {
LABEL_52:
                sub_21892DE98();
                v47 = v57;
                v49 = v55;
                v48 = v56;
                if (v26)
                {
                  v50 = *(v58 + OBJC_IVAR____TtC7NewsUI217SportsSyncManager_userInfo);
                  sub_219BDBD24();
                  v51 = sub_219BDBC04();
                  (*(v48 + 8))(v49, v47);
                  [v50 setSportsFavoritesLastModifiedDate_];

                  sub_2186C6148(0, &qword_280E8E3B0);
                  v52 = sub_219BF66A4();
                  v53 = swift_allocObject();
                  swift_unknownObjectWeakInit();

                  sub_218C75310(0xD000000000000021, 0x8000000219CEF080, v52, sub_218C829F0, v53);
                }

                return;
              }
            }

            else
            {
              v41 = v36;
              v42 = v37;
              v43 = v36;
              if (!v37)
              {
                while (1)
                {
                  v43 = v41 + 1;
                  if (__OFADD__(v41, 1))
                  {
                    break;
                  }

                  if (v43 >= ((v35 + 64) >> 6))
                  {
                    goto LABEL_52;
                  }

                  v42 = *(v34 + 8 * v43);
                  ++v41;
                  if (v42)
                  {
                    goto LABEL_46;
                  }
                }

LABEL_56:
                __break(1u);
LABEL_57:
                swift_once();
LABEL_3:
                v11 = sub_219BE5434();
                __swift_project_value_buffer(v11, qword_280F62730);
                v12 = sub_219BE5414();
                v13 = sub_219BF6214();
                if (os_log_type_enabled(v12, v13))
                {
                  v14 = swift_slowAlloc();
                  *v14 = 0;
                  _os_log_impl(&dword_2186C1000, v12, v13, "Sports sync manager is syncing from remote, local device will ignore sync to watchlist", v14, 2u);
                  MEMORY[0x21CECF960](v14, -1, -1);
                }

                return;
              }

LABEL_46:
              v44 = (v42 - 1) & v42;
              v45 = *(*(v17 + 48) + ((v43 << 9) | (8 * __clz(__rbit64(v42)))));
              if (!v45)
              {
                goto LABEL_52;
              }
            }

            if (v26)
            {
              v26 = 1;
            }

            else
            {
              v26 = [v45 isSports];
            }

            v36 = v43;
            v37 = v44;
          }
        }

LABEL_27:
        v31 = (v29 - 1) & v29;
        v32 = *(*(v15 + 48) + ((v30 << 9) | (8 * __clz(__rbit64(v29)))));
        if (!v32)
        {
          goto LABEL_33;
        }
      }

      if (v26)
      {
        v26 = 1;
      }

      else
      {
        v26 = [v32 isSports];
      }

      v21 = v30;
      v22 = v31;
    }
  }
}

uint64_t sub_218C81AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_219BED174();
  v29 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BED1D4();
  v12 = *(v11 - 8);
  result = MEMORY[0x28223BE20](v11);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (sub_219BF5414() == a1 && v16 == a2)
    {

      if (!a4)
      {
        return result;
      }
    }

    else
    {
      v18 = sub_219BF78F4();

      if ((v18 & 1) == 0 || !a4)
      {
        return result;
      }
    }

    if (*(a4 + 16))
    {
      v19 = v4;
      result = sub_2188198D8(*MEMORY[0x277CCA2E8]);
      if (v20)
      {
        sub_2186D1230(*(a4 + 56) + 32 * result, aBlock);
        result = swift_dynamicCast();
        if ((result & 1) != 0 && v31 == 1)
        {
          if (*(a4 + 16))
          {
            result = sub_2188198D8(*MEMORY[0x277CCA2F0]);
            if (v21)
            {
              sub_2186D1230(*(a4 + 56) + 32 * result, aBlock);
              result = swift_dynamicCast();
              if (result)
              {
                if (qword_280EE6038 != -1)
                {
                  swift_once();
                }

                v22 = sub_219BE5434();
                __swift_project_value_buffer(v22, qword_280F62730);
                v23 = sub_219BE5414();
                v24 = sub_219BF6214();
                if (os_log_type_enabled(v23, v24))
                {
                  v25 = swift_slowAlloc();
                  *v25 = 0;
                  _os_log_impl(&dword_2186C1000, v23, v24, "Sports manager user defaults KVO queuing sync state update...", v25, 2u);
                  MEMORY[0x21CECF960](v25, -1, -1);
                }

                v28[1] = *(v19 + OBJC_IVAR____TtC7NewsUI217SportsSyncManager_prepareSyncingGroup);
                v26 = swift_allocObject();
                swift_unknownObjectWeakInit();
                aBlock[4] = sub_218C829D8;
                aBlock[5] = v26;
                aBlock[0] = MEMORY[0x277D85DD0];
                aBlock[1] = 1107296256;
                aBlock[2] = sub_218793E0C;
                aBlock[3] = &block_descriptor_125;
                v27 = _Block_copy(aBlock);

                sub_219BED1A4();
                v31 = MEMORY[0x277D84F90];
                sub_21874E0F0(&qword_280E927E0, MEMORY[0x277D85198]);
                sub_21874E654(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
                sub_21874EB68();
                sub_219BF7164();
                sub_219BF6654();
                _Block_release(v27);
                (*(v29 + 8))(v10, v8);
                (*(v12 + 8))(v15, v11);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_218C81FCC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7NewsUI217SportsSyncManager_syncService), *(v1 + OBJC_IVAR____TtC7NewsUI217SportsSyncManager_syncService + 24));
  v3 = off_282A859E8;
  type metadata accessor for SportsSyncService();
  return (v3)(v2);
}

void sub_218C820A4()
{
  if (!qword_280EE6A50)
  {
    sub_218A4247C(255, &qword_280E8EC90, &qword_280E8E420);
    v0 = sub_219BE3114();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE6A50);
    }
  }
}

uint64_t sub_218C82114(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_218C7F66C(a1, v4);
}

void sub_218C821B4()
{
  if (!qword_27CC103F8)
  {
    sub_218C82234();
    sub_2186CFDE4(255, &qword_280E8B580);
    v0 = sub_219BF5C44();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC103F8);
    }
  }
}

void sub_218C82234()
{
  if (!qword_27CC10400)
  {
    sub_218A4247C(255, &qword_280E8ED00, &qword_280E8E680);
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC10400);
    }
  }
}

uint64_t sub_218C822D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218C82338(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_218C823F8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187608D4;

  return sub_218C7F66C(a1, v4);
}

uint64_t sub_218C824BC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t objectdestroy_50Tm()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

void sub_218C8260C()
{
  if (!qword_27CC10410)
  {
    type metadata accessor for SportsSyncFavoritesFetchResult();
    sub_218A4247C(255, &qword_280E8EC90, &qword_280E8E420);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC10410);
    }
  }
}

void sub_218C82694()
{
  if (!qword_280EE9C30)
  {
    sub_21874E654(255, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280EE9C30);
    }
  }
}

void sub_218C82728()
{
  if (!qword_280E8E8E0)
  {
    v0 = sub_219BF5EE4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8E8E0);
    }
  }
}

uint64_t sub_218C82810(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_90Tm(void (*a1)(void))
{

  a1(*(v1 + 32));

  return swift_deallocObject();
}

void sub_218C82A44()
{
  if (!qword_27CC10430)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC10430);
    }
  }
}

unint64_t sub_218C82B34()
{
  result = qword_27CC10438;
  if (!qword_27CC10438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10438);
  }

  return result;
}

unint64_t sub_218C82B8C()
{
  result = qword_27CC10440;
  if (!qword_27CC10440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10440);
  }

  return result;
}

uint64_t sub_218C82C58(uint64_t a1, char *a2)
{
  v23 = a1;
  v24 = a2;
  v3 = sub_219BF02B4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D32C10];
  sub_218C82F70(0, &unk_280E90FC0, MEMORY[0x277D32C10]);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - v12;
  sub_218C82F70(0, &qword_280E91250, MEMORY[0x277D328D8]);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v23 - v15;
  sub_219BF0284();
  sub_218C8303C(v13, v11, &unk_280E90FC0, v7);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    sub_218C82FC4(v11);
    sub_218C8303C(v16, v23, &qword_280E91250, MEMORY[0x277D328D8]);
    v17 = type metadata accessor for TopicTodayFeedGroupEmitterCursor();
    return (*(*(v17 - 8) + 56))(v24, 1, 1, v17);
  }

  else
  {
    v19 = *(v4 + 32);
    v19(v6, v11, v3);
    sub_218C8303C(v16, v23, &qword_280E91250, MEMORY[0x277D328D8]);
    v20 = type metadata accessor for TopicTodayFeedGroupEmitterCursor();
    v21 = *(v2 + *(v20 + 20));
    v22 = v24;
    v19(v24, v6, v3);
    *&v22[*(v20 + 20)] = v21;
    return (*(*(v20 - 8) + 56))(v22, 0, 1, v20);
  }
}

void sub_218C82F70(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_218C82FC4(uint64_t a1)
{
  sub_218C82F70(0, &unk_280E90FC0, MEMORY[0x277D32C10]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218C8303C(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_218C82F70(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t type metadata accessor for TopicTodayFeedGroupEmitterCursor()
{
  result = qword_280EA4280;
  if (!qword_280EA4280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218C8311C()
{
  result = sub_219BF02B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for TodayRouteModel()
{
  result = qword_280ED9040;
  if (!qword_280ED9040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218C831DC()
{
  sub_219BDD944();
  if (v0 <= 0x3F)
  {
    type metadata accessor for WebEmbedRouteModel();
    if (v1 <= 0x3F)
    {
      sub_219BDD664();
      if (v2 <= 0x3F)
      {
        sub_219BDE674();
        if (v3 <= 0x3F)
        {
          sub_218C832C8();
          if (v4 <= 0x3F)
          {
            type metadata accessor for PuzzleModel();
            if (v5 <= 0x3F)
            {
              type metadata accessor for CustomItemRouteModel();
              if (v6 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_218C832C8()
{
  if (!qword_280E8F6E8)
  {
    type metadata accessor for FCFeedDescriptorConfiguration(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8F6E8);
    }
  }
}

uint64_t sub_218C83334(uint64_t *a1)
{
  v3 = sub_219BE15B4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = *a1;
  v8 = a1[1];
  v9 = *(a1 + 16);
  (*(v4 + 104))(v6, *MEMORY[0x277D2F4A0], v3);
  v10 = sub_219BDD0F4();
  (*(v4 + 8))(v6, v3);
  __swift_project_boxed_opaque_existential_1(v1 + 8, v1[11]);
  v24 = "item in Following Section";
  sub_219BEC134();
  __swift_project_boxed_opaque_existential_1(v33, v33[3]);
  if (qword_280EE34E0 != -1)
  {
    swift_once();
  }

  v11 = sub_219BEBC84();
  __swift_project_value_buffer(v11, qword_280F62380);
  sub_218C83BC4(&qword_280EE34B8, MEMORY[0x277D2D120]);
  sub_219BEC144();
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  type metadata accessor for MagazineSectionsViewController();
  sub_218718690(v33, &v31);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  sub_21875F93C(&v31, v12 + 24);

  v13 = sub_219BE1E04();

  if (!v13)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v9 != 255)
  {
    *&v31 = v7;
    *(&v31 + 1) = v8;
    v32 = v9;
    sub_218E50F08(&v31);
  }

  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  sub_2186C709C(0, &unk_280EE4500);
  sub_219BE1E14();
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  sub_2186C709C(0, &qword_280EE05D8);
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = v1;
  sub_219BE1E14();

  result = swift_unownedRelease();
  v15 = v29;
  if (!v29)
  {
    goto LABEL_12;
  }

  v16 = v30;
  ObjectType = swift_getObjectType();
  v18 = *(v16 + 16);
  v27 = ObjectType;
  v28 = v18;
  v26 = v15;
  sub_218803268(&v31, v25);
  sub_218C83B30();
  v20 = objc_allocWithZone(v19);
  v21 = v13;
  v22 = sub_219BE8344();
  if (sub_219BED0C4())
  {
    sub_2188033F4(&v31, sub_2188032CC);
  }

  else
  {
    sub_219BE9D54();
    [objc_allocWithZone(sub_219BE79B4()) initWithRootViewController_];
    v23 = sub_219BE9CE4();

    sub_2188033F4(&v31, sub_2188032CC);
    v22 = v23;
  }

  __swift_destroy_boxed_opaque_existential_1(v33);
  return v22;
}

uint64_t sub_218C8381C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  sub_219BE1B94();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE33B0);
  return sub_219BE1BA4();
}

uint64_t sub_218C838D0(void *a1)
{
  v2 = type metadata accessor for MiniMastheadModel();
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21895F570();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_219BE1BA4();
  return sub_2188033F4(v4, type metadata accessor for MiniMastheadModel);
}

uint64_t sub_218C839DC(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_unownedRetainStrong();
  sub_218718690(a2 + 104, v6);

  v3 = v7;
  v4 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v4 + 8))(v3, v4);
  sub_219BE1BA4();

  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_218C83AA8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  __swift_destroy_boxed_opaque_existential_1(v0 + 104);

  return swift_deallocClassInstance();
}

void sub_218C83B30()
{
  if (!qword_280EE4D18)
  {
    type metadata accessor for MagazineSectionsViewController();
    sub_218C83BC4(&qword_280EAC420, type metadata accessor for MagazineSectionsViewController);
    v0 = sub_219BE8364();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE4D18);
    }
  }
}

uint64_t sub_218C83BC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for FollowingTabGroupCompletionCoordinator.Validation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FollowingTabGroupCompletionCoordinator.Validation(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_218C83D80(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_218C83D9C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

void sub_218C83DC4(char *a1)
{
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  sub_21874E138(&qword_27CC10450, v3, type metadata accessor for InterludeAnimator);
  sub_219BE29A4();
  __swift_destroy_boxed_opaque_existential_1(&v10);
  v4 = [a1 view];
  if (v4)
  {
    v5 = v4;
    v6 = [objc_opt_self() systemBackgroundColor];
    [v5 setBackgroundColor_];

    v7 = *&a1[OBJC_IVAR____TtC7NewsUI223InterludeViewController_contentView];
    CGAffineTransformMakeScale(&v10, 0.76, 0.76);
    [v7 setTransform_];
    v8 = *&a1[OBJC_IVAR____TtC7NewsUI223InterludeViewController_animationContainer];
    CGAffineTransformMakeScale(&v10, 0.65, 0.65);
    [v8 setTransform_];
    [v7 setAlpha_];
    v9 = sub_2194DC06C();
    [v9 setAlpha_];
  }

  else
  {
    __break(1u);
  }
}

void sub_218C83F84(void *a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = objc_allocWithZone(MEMORY[0x277D75D40]);
  v25 = sub_218C8510C;
  v26 = v3;
  v21 = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_218793E0C;
  v24 = &block_descriptor_44;
  v5 = _Block_copy(&v21);
  v6 = a1;

  v7 = [v4 initWithDuration:v5 controlPoint1:1.76 controlPoint2:0.0 animations:{0.0, 1.0, 1.0}];
  _Block_release(v5);
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  *(v8 + 24) = v6;
  v25 = sub_218C85118;
  v26 = v8;
  v21 = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_218A8F318;
  v24 = &block_descriptor_9_0;
  v9 = _Block_copy(&v21);
  v10 = v6;

  [v7 addCompletion_];
  _Block_release(v9);
  [v7 startAnimation];
  v11 = [objc_allocWithZone(MEMORY[0x277D75A60]) initWithMass:1.0 stiffness:50.0 damping:15.0 initialVelocity:{0.0, 0.0}];
  v12 = [objc_allocWithZone(MEMORY[0x277D75D40]) initWithDuration:v11 timingParameters:0.3];

  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  v25 = sub_218C85120;
  v26 = v13;
  v21 = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_218793E0C;
  v24 = &block_descriptor_15_2;
  v14 = _Block_copy(&v21);
  v15 = v10;

  [v12 addAnimations_];
  _Block_release(v14);
  [v12 startAnimation];
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  v17 = objc_allocWithZone(MEMORY[0x277D75D40]);
  v25 = sub_218C85174;
  v26 = v16;
  v21 = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_218793E0C;
  v24 = &block_descriptor_21_0;
  v18 = _Block_copy(&v21);
  v19 = v15;

  v20 = [v17 initWithDuration:v18 controlPoint1:0.3 controlPoint2:0.0 animations:{0.0, 1.0, 1.0}];
  _Block_release(v18);
  [v20 startAnimation];
}

void sub_218C84348(uint64_t a1, uint64_t a2, void *a3)
{
  if (sub_218C85198(a3))
  {
    v5 = [a3 view];
    if (v5)
    {
      v6 = v5;
      v7 = [objc_opt_self() clearColor];
      [v6 setBackgroundColor_];

      sub_218C84450(a3);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v8 = *(a2 + 56);
    if (v8)
    {

      v8(v9);
      sub_2187FABEC(v8);
      v10 = *(a2 + 56);
    }

    else
    {
      v10 = 0;
    }

    *(a2 + 56) = 0;
    *(a2 + 64) = 0;

    sub_2187FABEC(v10);
  }
}

void sub_218C84450(char *a1)
{
  v3 = *&a1[OBJC_IVAR____TtC7NewsUI223InterludeViewController_contentView];
  v4 = [v3 layer];
  [*&v3[OBJC_IVAR____TtC7NewsUI220InterludeContentView_iconContainer] center];
  v6 = v5;
  v7 = [a1 view];
  if (v7)
  {
    v8 = v7;
    [v7 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v45.origin.x = v10;
    v45.origin.y = v12;
    v45.size.width = v14;
    v45.size.height = v16;
    Height = CGRectGetHeight(v45);
    if (Height <= 1.0)
    {
      Height = 1.0;
    }

    [v4 setAnchorPointWithoutChangingPositionWithNewAnchorPoint_];

    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    v19 = objc_allocWithZone(MEMORY[0x277D75D40]);
    v43 = sub_218C85240;
    v44 = v18;
    aBlock = MEMORY[0x277D85DD0];
    v40 = 1107296256;
    v41 = sub_218793E0C;
    v42 = &block_descriptor_27;
    v20 = _Block_copy(&aBlock);
    v21 = a1;

    v38 = [v19 initWithDuration:v20 controlPoint1:0.64 controlPoint2:0.9 animations:{0.0, 0.97, 0.6}];
    _Block_release(v20);
    [v38 startAnimation];
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    v23 = objc_allocWithZone(MEMORY[0x277D75D40]);
    v43 = sub_218C85248;
    v44 = v22;
    aBlock = MEMORY[0x277D85DD0];
    v40 = 1107296256;
    v41 = sub_218793E0C;
    v42 = &block_descriptor_33_0;
    v24 = _Block_copy(&aBlock);
    v25 = v21;

    v26 = [v23 initWithDuration:v24 controlPoint1:0.82 controlPoint2:0.0 animations:{0.0, 1.0, 1.0}];
    _Block_release(v24);
    v43 = sub_218C852AC;
    v44 = v1;
    aBlock = MEMORY[0x277D85DD0];
    v40 = 1107296256;
    v41 = sub_218A8F318;
    v42 = &block_descriptor_36_0;
    v27 = _Block_copy(&aBlock);

    [v26 addCompletion_];
    _Block_release(v27);
    [v26 startAnimation];
    v28 = swift_allocObject();
    *(v28 + 16) = v25;
    v29 = objc_allocWithZone(MEMORY[0x277D75D40]);
    v43 = sub_218C852B4;
    v44 = v28;
    aBlock = MEMORY[0x277D85DD0];
    v40 = 1107296256;
    v41 = sub_218793E0C;
    v42 = &block_descriptor_42;
    v30 = _Block_copy(&aBlock);
    v31 = v25;

    v32 = [v29 initWithDuration:v30 controlPoint1:0.54 controlPoint2:0.0 animations:{0.0, 1.0, 1.0}];
    _Block_release(v30);
    [v32 startAnimation];
    v33 = swift_allocObject();
    *(v33 + 16) = v31;
    v34 = objc_allocWithZone(MEMORY[0x277D75D40]);
    v43 = sub_218C852BC;
    v44 = v33;
    aBlock = MEMORY[0x277D85DD0];
    v40 = 1107296256;
    v41 = sub_218793E0C;
    v42 = &block_descriptor_48;
    v35 = _Block_copy(&aBlock);
    v36 = v31;

    v37 = [v34 initWithDuration:1 curve:v35 animations:0.2];
    _Block_release(v35);
    [v37 startAnimationAfterDelay_];
  }

  else
  {
    __break(1u);
  }
}

id sub_218C84990(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC7NewsUI223InterludeViewController_contentView);
  CGAffineTransformMakeScale(&v3, 58.0, 58.0);
  return [v1 setTransform_];
}

uint64_t sub_218C849FC(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v25 = sub_219BED174();
  v28 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BED1D4();
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BED164();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_219BED214();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v23 - v16;
  sub_2186C6148(0, &qword_280E8E3B0);
  v23 = sub_219BF66A4();
  sub_219BED1F4();
  *v10 = 680;
  (*(v8 + 104))(v10, *MEMORY[0x277D85178], v7);
  sub_219BED204();
  (*(v8 + 8))(v10, v7);
  v18 = *(v12 + 8);
  v18(v14, v11);
  aBlock[4] = sub_218C852E0;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_51;
  v19 = _Block_copy(aBlock);

  sub_219BED1A4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21874E138(&qword_280E927E0, 255, MEMORY[0x277D85198]);
  sub_21879DD98();
  sub_21874E138(&qword_280E8EFA0, 255, sub_21879DD98);
  v20 = v25;
  sub_219BF7164();
  v21 = v23;
  MEMORY[0x21CECD420](v17, v6, v3, v19);
  _Block_release(v19);

  (*(v28 + 8))(v3, v20);
  (*(v26 + 8))(v6, v27);
  return (v18)(v17, v11);
}

uint64_t sub_218C84E7C(uint64_t a1)
{
  v3 = (a1 + 56);
  v2 = *(a1 + 56);
  if (v2)
  {

    v2(v4);
    sub_2187FABEC(v2);
    v5 = *(a1 + 56);
  }

  else
  {
    v5 = 0;
  }

  *v3 = 0;
  v3[1] = 0;

  return sub_2187FABEC(v5);
}

uint64_t sub_218C84EF4(uint64_t a1)
{
  v1 = [*(a1 + OBJC_IVAR____TtC7NewsUI223InterludeViewController_contentView) subviews];
  sub_2186C6148(0, &qword_280E8DAE0);
  v2 = sub_219BF5924();

  if (v2 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x21CECE0F0](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      [v5 setAlpha_];

      ++v4;
      if (v7 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

uint64_t sub_218C85030()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  sub_2187FABEC(*(v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_218C85094()
{
  v1 = *(v0 + 56);
  if (v1)
  {

    v1(v2);
    sub_2187FABEC(v1);
    v3 = *(v0 + 56);
  }

  else
  {
    v3 = 0;
  }

  *(v0 + 56) = 0;
  *(v0 + 64) = 0;

  return sub_2187FABEC(v3);
}

id sub_218C8512C(void *a1)
{
  v2 = *(*(v1 + 16) + *a1);
  v4[0] = 0x3FF0000000000000;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = 0x3FF0000000000000;
  v4[4] = 0;
  v4[5] = 0;
  return [v2 setTransform_];
}

id sub_218C85198(void *a1)
{
  result = [a1 view];
  if (result)
  {
    v2 = result;
    v3 = [result window];

    if (v3 && (v4 = [v3 windowScene], v3, v4))
    {
      v5 = [v4 activationState];

      return (v5 < 2);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_218C85248()
{
  v0 = sub_2194DC06C();
  [v0 setAlpha_];
}

uint64_t sub_218C853A8(uint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  v3 = a1[1];
  v5 = (v1 + OBJC_IVAR____TtC7NewsUI239PuzzleArchiveFilterChangeCommandHandler_puzzleArchiveFilterOptionManager);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7NewsUI239PuzzleArchiveFilterChangeCommandHandler_puzzleArchiveFilterOptionManager), *(v1 + OBJC_IVAR____TtC7NewsUI239PuzzleArchiveFilterChangeCommandHandler_puzzleArchiveFilterOptionManager + 24));
  v6 = sub_219579760(v4, v3);
  v7 = *__swift_project_boxed_opaque_existential_1(v5, v5[3]);
  swift_beginAccess();
  v8 = *(v7 + 24);
  if (v6[2] <= *(v8 + 16) >> 3)
  {

    sub_218EB3E44(v6);
  }

  else
  {

    v8 = sub_218EB51C8(v6, v8);
  }

  v9 = *(v8 + 16);

  *(v2 + OBJC_IVAR____TtC7NewsUI239PuzzleArchiveFilterChangeCommandHandler_commandState) = v9 != 0;
  return result;
}

void sub_218C85558(void *a1)
{

  v2 = sub_219BF53D4();

  v3 = [a1 objectForKey_];

  if (v3)
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
    sub_218751558(&v4, &v5);
    sub_218C6194C();
    swift_dynamicCast();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_218C8562C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v3 = sub_219BDBD64();
  v76 = *(v3 - 8);
  v77 = v3;
  MEMORY[0x28223BE20](v3);
  v75 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LegacyAudioFeedGroupConfig();
  v72 = *(v5 - 8);
  v73 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v74 = (&v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v6);
  v83 = &v64 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v82 = &v64 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v71 = (&v64 - v13);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v64 - v15;
  MEMORY[0x28223BE20](v14);
  v79 = &v64 - v17;
  v80 = type metadata accessor for LegacyAudioFeedConfiguration();
  MEMORY[0x28223BE20](v80);
  v81 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C86838(0, &unk_280E8CF70, MEMORY[0x277D844C8]);
  v20 = v19;
  v78 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v64 - v21;
  v23 = type metadata accessor for LegacyAudioConfig();
  MEMORY[0x28223BE20](v23);
  v25 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218C866CC();
  v26 = v84;
  sub_219BF7B34();
  if (v26)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = v79;
  v67 = v23;
  v68 = v25;
  v69 = a1;
  v88 = 0;
  sub_218C8689C(&qword_280EB40E0);
  v29 = v80;
  v28 = v81;
  sub_219BF7734();
  v64 = v20;
  v65 = v22;
  v66 = 0;
  v32 = *&v28[*(v29 + 6)];
  v33 = v72;
  v84 = *(v32 + 16);
  if (v84)
  {
    for (i = 0; i != v84; ++i)
    {
      v35 = *(v32 + 16);
      if (i >= v35)
      {
        __break(1u);
        goto LABEL_30;
      }

      v36 = *(v33 + 80);
      v37 = *(v33 + 72);
      sub_218C86934(v32 + ((v36 + 32) & ~v36) + v37 * i, v27, type metadata accessor for LegacyAudioFeedGroupConfig);
      sub_218C86720(v27, v16);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        sub_218C867D8(v16, type metadata accessor for LegacyAudioFeedGroupConfig);
        v80 = MEMORY[0x277D84F90];
        goto LABEL_12;
      }

      sub_218C867D8(v16, type metadata accessor for LegacyAudioFeedGroupConfig);
    }
  }

  v38 = v75;
  sub_219BDBD54();
  v39 = sub_219BDBD44();
  v41 = v40;
  (*(v76 + 8))(v38, v77);
  v29 = v71;
  *v71 = v39;
  v29[1] = v41;
  v29[2] = &unk_282A23438;
  swift_storeEnumTagMultiPayload();
  v30 = sub_2191F8294(0, 1, 1, MEMORY[0x277D84F90]);
  i = v30[2];
  v35 = v30[3];
  v16 = (i + 1);
  if (i >= v35 >> 1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v30[2] = v16;
    v36 = *(v33 + 80);
    v80 = v30;
    v37 = *(v33 + 72);
    sub_218C86720(v29, v30 + ((v36 + 32) & ~v36) + v37 * i);
LABEL_12:
    v29 = v82;
    i = v83;
    if (!v84)
    {
      break;
    }

    v33 = 0;
    v16 = (v32 + ((v36 + 32) & ~v36));
    while (1)
    {
      v35 = *(v32 + 16);
      if (v33 >= v35)
      {
        break;
      }

      sub_218C86934(v16, v29, type metadata accessor for LegacyAudioFeedGroupConfig);
      sub_218C86720(v29, i);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v43 = i;
      v44 = EnumCaseMultiPayload;
      sub_218C867D8(v43, type metadata accessor for LegacyAudioFeedGroupConfig);
      if (v44 == 5)
      {
        v45 = v64;
        v52 = v68;
        v51 = v69;
        v53 = v81;
        v54 = v66;
        goto LABEL_23;
      }

      ++v33;
      v16 += v37;
      i = v83;
      v29 = v82;
      if (v84 == v33)
      {
        goto LABEL_17;
      }
    }

LABEL_30:
    __break(1u);
LABEL_31:
    v30 = sub_2191F8294(v35 > 1, v16, 1, v30);
  }

LABEL_17:
  v45 = v64;
  v46 = v75;
  sub_219BDBD54();
  v47 = sub_219BDBD44();
  v49 = v48;
  (*(v76 + 8))(v46, v77);
  v50 = v74;
  *v74 = v47;
  v50[1] = v49;
  v50[2] = &unk_282A23460;
  swift_storeEnumTagMultiPayload();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v80 = sub_2191F8294(0, v80[2] + 1, 1, v80);
  }

  v52 = v68;
  v51 = v69;
  v53 = v81;
  v54 = v66;
  v56 = v80[2];
  v55 = v80[3];
  if (v56 >= v55 >> 1)
  {
    v80 = sub_2191F8294(v55 > 1, v56 + 1, 1, v80);
  }

  v57 = v80;
  v80[2] = v56 + 1;
  sub_218C86720(v74, v57 + ((v36 + 32) & ~v36) + v37 * v56);
LABEL_23:
  sub_21940708C(v52);
  v87 = 1;
  sub_218C86784();
  v58 = v45;
  v59 = v65;
  sub_219BF76E4();
  v60 = v67;
  if (v54)
  {
    (*(v78 + 8))(v59, v58);
    sub_218C867D8(v53, type metadata accessor for LegacyAudioFeedConfiguration);

    __swift_destroy_boxed_opaque_existential_1(v51);
    v61 = v52;
    v62 = type metadata accessor for LegacyAudioFeedConfiguration;
  }

  else
  {
    (*(v78 + 8))(v59, v58);
    sub_218C867D8(v53, type metadata accessor for LegacyAudioFeedConfiguration);

    v63 = v85;
    if (v86)
    {
      v63 = 0x7FFFFFFFFFFFFFFFLL;
    }

    *(v52 + *(v60 + 20)) = v63;
    sub_218C86934(v52, v70, type metadata accessor for LegacyAudioConfig);
    __swift_destroy_boxed_opaque_existential_1(v51);
    v62 = type metadata accessor for LegacyAudioConfig;
    v61 = v52;
  }

  return sub_218C867D8(v61, v62);
}

uint64_t sub_218C85ED0(void *a1)
{
  v3 = v1;
  sub_218C86838(0, &qword_27CC104A0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218C866CC();
  sub_219BF7B44();
  v13 = 0;
  type metadata accessor for LegacyAudioFeedConfiguration();
  sub_218C8689C(&qword_27CC0C3D0);
  sub_219BF7834();
  if (!v2)
  {
    v12 = *(v3 + *(type metadata accessor for LegacyAudioConfig() + 20));
    v11[15] = 1;
    sub_218C868E0();
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218C8609C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0xEE0073626F6E4B64;
  }

  else
  {
    v2 = 0xEF6769666E6F4364;
  }

  if (*a2)
  {
    v3 = 0xEE0073626F6E4B64;
  }

  else
  {
    v3 = 0xEF6769666E6F4364;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_219BF78F4();
  }

  return v4 & 1;
}

uint64_t sub_218C86144()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_218C861CC()
{
  sub_219BF5524();
}

uint64_t sub_218C86240()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_218C862C4@<X0>(char *a1@<X8>)
{
  v2 = sub_219BF7614();

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

void sub_218C86324(void *a1@<X8>)
{
  v2 = 0xEF6769666E6F4364;
  if (*v1)
  {
    v2 = 0xEE0073626F6E4B64;
  }

  *a1 = 0x6565466F69647561;
  a1[1] = v2;
}

uint64_t sub_218C863A8@<X0>(char *a1@<X8>)
{
  v2 = sub_219BF7614();

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

uint64_t sub_218C8640C(uint64_t a1)
{
  v2 = sub_218C866CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218C86448(uint64_t a1)
{
  v2 = sub_218C866CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218C864F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(v3 + *(a2 + 20));
  result = sub_218C86934(a1, a3, type metadata accessor for LegacyAudioFeedConfiguration);
  *(a3 + *(a2 + 20)) = v6;
  return result;
}

uint64_t type metadata accessor for LegacyAudioConfig()
{
  result = qword_280ED5EE0;
  if (!qword_280ED5EE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218C865CC()
{
  result = type metadata accessor for LegacyAudioFeedConfiguration();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_218C86678()
{
  result = qword_280EA3490[0];
  if (!qword_280EA3490[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EA3490);
  }

  return result;
}

unint64_t sub_218C866CC()
{
  result = qword_280ED5F10;
  if (!qword_280ED5F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED5F10);
  }

  return result;
}

uint64_t sub_218C86720(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyAudioFeedGroupConfig();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_218C86784()
{
  result = qword_280EA3488;
  if (!qword_280EA3488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA3488);
  }

  return result;
}

uint64_t sub_218C867D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_218C86838(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218C866CC();
    v7 = a3(a1, &type metadata for LegacyAudioConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218C8689C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LegacyAudioFeedConfiguration();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_218C868E0()
{
  result = qword_27CC104A8;
  if (!qword_27CC104A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC104A8);
  }

  return result;
}

uint64_t sub_218C86934(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_218C869B0()
{
  result = qword_27CC104B0;
  if (!qword_27CC104B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC104B0);
  }

  return result;
}

unint64_t sub_218C86A08()
{
  result = qword_280ED5F00;
  if (!qword_280ED5F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED5F00);
  }

  return result;
}

unint64_t sub_218C86A60()
{
  result = qword_280ED5F08;
  if (!qword_280ED5F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED5F08);
  }

  return result;
}

id sub_218C86B0C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PuzzleEmbedHapticFeedbackMessageHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_218C86BF8()
{
  v0 = sub_219BF7614();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

void sub_218C86C44(void *a1)
{
  v2 = [a1 body];
  v3 = sub_219BF5214();

  v4 = sub_2187A1A2C(v3);

  if (!v4)
  {
    goto LABEL_14;
  }

  if (!*(v4 + 16) || (v5 = sub_21870F700(0x6B63616264656566, 0xEC000000646E694BLL), (v6 & 1) == 0) || (sub_2186D1230(*(v4 + 56) + 32 * v5, v47), (swift_dynamicCast() & 1) == 0))
  {

    goto LABEL_14;
  }

  v7 = sub_219BF7614();

  if (v7)
  {
    if (v7 == 1)
    {
      if (*(v4 + 16) && (v8 = sub_21870F700(1701869940, 0xE400000000000000), (v9 & 1) != 0))
      {
        sub_2186D1230(*(v4 + 56) + 32 * v8, v47);

        if (swift_dynamicCast())
        {
          sub_219BF5494();

          v10 = sub_219BF7614();

          if (v10 <= 2)
          {
            if (!swift_unknownObjectWeakLoadStrong())
            {
              return;
            }

            swift_unknownObjectRelease();
            v11 = qword_219C28E40[v10];
            v12 = [objc_allocWithZone(MEMORY[0x277D757B8]) init];
            [v12 notificationOccurred:v11];
            goto LABEL_19;
          }
        }
      }

      else
      {
      }

      if (qword_280EE5F80 != -1)
      {
        swift_once();
      }

      v28 = sub_219BE5434();
      __swift_project_value_buffer(v28, qword_280F625E0);
      swift_unknownObjectRetain();
      v12 = sub_219BE5414();
      v14 = sub_219BF61F4();
      swift_unknownObjectRelease();
      if (!os_log_type_enabled(v12, v14))
      {
LABEL_19:

        return;
      }

      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v47[0] = v16;
      *v15 = 136315138;
      v29 = [a1 body];
      sub_219BF5214();

      v30 = sub_219BF5224();
      v32 = v31;

      v33 = sub_2186D1058(v30, v32, v47);

      *(v15 + 4) = v33;
      v22 = "PuzzleEmbedHapticFeedbackMessageHandler received invalid notification feedback message %s";
LABEL_18:
      _os_log_impl(&dword_2186C1000, v12, v14, v22, v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x21CECF960](v16, -1, -1);
      MEMORY[0x21CECF960](v15, -1, -1);
      goto LABEL_19;
    }

    if (v7 == 2)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        v27 = [objc_allocWithZone(MEMORY[0x277D75A10]) init];
        [v27 selectionChanged];
LABEL_30:

        return;
      }

      return;
    }

LABEL_14:
    if (qword_280EE5F80 != -1)
    {
      swift_once();
    }

    v13 = sub_219BE5434();
    __swift_project_value_buffer(v13, qword_280F625E0);
    swift_unknownObjectRetain();
    v12 = sub_219BE5414();
    v14 = sub_219BF61F4();
    swift_unknownObjectRelease();
    if (!os_log_type_enabled(v12, v14))
    {
      goto LABEL_19;
    }

    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v47[0] = v16;
    *v15 = 136315138;
    v17 = [a1 body];
    sub_219BF5214();

    v18 = sub_219BF5224();
    v20 = v19;

    v21 = sub_2186D1058(v18, v20, v47);

    *(v15 + 4) = v21;
    v22 = "PuzzleEmbedHapticFeedbackMessageHandler received invalid message %s";
    goto LABEL_18;
  }

  if (!*(v4 + 16))
  {
    goto LABEL_39;
  }

  v23 = sub_21870F700(0x656C797473, 0xE500000000000000);
  if ((v24 & 1) == 0)
  {
    goto LABEL_39;
  }

  sub_2186D1230(*(v4 + 56) + 32 * v23, v47);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_39;
  }

  sub_219BF5494();

  v25 = sub_218C86BF8();
  if (v25 > 2)
  {
    if (v25 == 3)
    {
      v26 = 4;
      goto LABEL_45;
    }

    if (v25 == 4)
    {
      v26 = 3;
      goto LABEL_45;
    }

LABEL_39:

    if (qword_280EE5F80 != -1)
    {
      swift_once();
    }

    v34 = sub_219BE5434();
    __swift_project_value_buffer(v34, qword_280F625E0);
    swift_unknownObjectRetain();
    v12 = sub_219BE5414();
    v14 = sub_219BF61F4();
    swift_unknownObjectRelease();
    if (!os_log_type_enabled(v12, v14))
    {
      goto LABEL_19;
    }

    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v47[0] = v16;
    *v15 = 136315138;
    v35 = [a1 body];
    sub_219BF5214();

    v36 = sub_219BF5224();
    v38 = v37;

    v39 = sub_2186D1058(v36, v38, v47);

    *(v15 + 4) = v39;
    v22 = "PuzzleEmbedHapticFeedbackMessageHandler received invalid impact feedback message %s";
    goto LABEL_18;
  }

  if (v25)
  {
    v26 = v25 != 1;
  }

  else
  {
    v26 = 2;
  }

LABEL_45:
  if (*(v4 + 16) && (v40 = sub_21870F700(0x7469736E65746E69, 0xE900000000000079), (v41 & 1) != 0))
  {
    sub_2186D1230(*(v4 + 56) + 32 * v40, v47);

    v42 = swift_dynamicCast();
    v43 = v42 ^ 1;
    if (v42)
    {
      v44 = v46;
    }

    else
    {
      v44 = 0.0;
    }
  }

  else
  {

    v43 = 1;
    v44 = 0.0;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    v45 = [objc_allocWithZone(MEMORY[0x277D755F0]) initWithStyle_];
    v27 = v45;
    if (v43)
    {
      [v45 impactOccurred];
    }

    else
    {
      [v45 impactOccurredWithIntensity_];
    }

    goto LABEL_30;
  }
}

uint64_t sub_218C87554@<X0>(void (*a1)(void)@<X0>, unint64_t *a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  a1(0);
  sub_218C87FA0(a2, a3);
  sub_219BF5DF4();
  sub_219BF5E84();
  if (v16[4] == v16[0])
  {
    v9 = a4(0);
    return (*(*(v9 - 8) + 56))(a5, 1, 1, v9);
  }

  else
  {
    v11 = sub_219BF5EC4();
    v13 = v12;
    v14 = a4(0);
    v15 = *(v14 - 8);
    (*(v15 + 16))(a5, v13, v14);
    v11(v16, 0);
    return (*(v15 + 56))(a5, 0, 1, v14);
  }
}

uint64_t sub_218C876F4(uint64_t a1)
{
  v2 = sub_219BF7174();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_218C8A290(v2, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_218C87770@<X0>(void (*a1)(void)@<X0>, unint64_t *a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  a1(0);
  sub_218C87FA0(a2, a3);
  sub_219BF5DF4();
  sub_219BF5E84();
  if (v16[4] == v16[0])
  {
    v9 = a4(0);
    return (*(*(v9 - 8) + 56))(a5, 1, 1, v9);
  }

  else
  {
    v11 = sub_219BF5EC4();
    v13 = v12;
    v14 = a4(0);
    v15 = *(v14 - 8);
    (*(v15 + 16))(a5, v13, v14);
    v11(v16, 0);
    return (*(v15 + 56))(a5, 0, 1, v14);
  }
}

uint64_t sub_218C87910(uint64_t a1)
{
  v2 = sub_219BF7174();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  sub_218C8A6F4(v2, *(a1 + 36), 0, a1);
}

uint64_t sub_218C87978@<X0>(uint64_t a1@<X8>)
{
  sub_2189517AC();
  sub_218C87FA0(&unk_27CC0AE90, sub_2189517AC);
  sub_219BF5DF4();
  sub_219BF5E84();
  if (v10[4] == v10[0])
  {
    sub_218C8A744(0, &qword_27CC0AE58, MEMORY[0x277D6D710]);
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    v4 = sub_219BF5EC4();
    v6 = v5;
    sub_218C8A744(0, &qword_27CC0AE58, MEMORY[0x277D6D710]);
    v8 = v7;
    v9 = *(v7 - 8);
    (*(v9 + 16))(a1, v6, v7);
    v4(v10, 0);
    return (*(v9 + 56))(a1, 0, 1, v8);
  }
}

uint64_t sub_218C87B48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_218C8A804();
  v5 = v4;
  v14 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BF7174();
  if (v8 == 1 << *(a1 + 32))
  {
    v9 = *(v14 + 56);

    return v9(a2, 1, 1, v5);
  }

  else
  {
    v11 = sub_218C8A57C(v7, v8, *(a1 + 36), 0, a1);
    v12 = sub_219BE4B94();
    (*(*(v12 - 8) + 32))(a2, v7, v12);
    *(a2 + *(v5 + 48)) = v11;
    return (*(v14 + 56))(a2, 0, 1, v5);
  }
}

void *sub_218C87CE8(uint64_t a1)
{
  v2 = sub_219BF7174();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_218C8A520(&v4, v2, *(a1 + 36), 0, a1);
  }
}

void *sub_218C87DC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_219BF7174();
  if (v4 == 1 << *(a1 + 32))
  {
    result = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0uLL;
  }

  else
  {
    result = sub_218C8A64C(&v10, v4, *(a1 + 36), 0, a1);
    v9 = v10;
    v7 = v11;
    v8 = v12;
  }

  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = v9;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  return result;
}

uint64_t sub_218C87FA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218C88078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_219BF0634();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  sub_219BEF6B4();
  v5[10] = swift_task_alloc();
  v7 = sub_219BEF594();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  sub_219BEF5B4();
  v5[14] = swift_task_alloc();
  sub_219BEF644();
  v5[15] = swift_task_alloc();
  sub_219BEF664();
  v5[16] = swift_task_alloc();
  v8 = sub_219BEF694();
  v5[17] = v8;
  v5[18] = *(v8 - 8);
  v5[19] = swift_task_alloc();
  v9 = MEMORY[0x277D83D88];
  sub_218C89FF4(0, &qword_280E91358, MEMORY[0x277D326A8], MEMORY[0x277D83D88]);
  v5[20] = swift_task_alloc();
  sub_218C89FF4(0, &qword_280E91368, MEMORY[0x277D32698], v9);
  v5[21] = swift_task_alloc();
  sub_219BEF604();
  v5[22] = swift_task_alloc();
  v10 = sub_219BEF6C4();
  v5[23] = v10;
  v5[24] = *(v10 - 8);
  v5[25] = swift_task_alloc();
  v11 = sub_219BDCAB4();
  v5[26] = v11;
  v5[27] = *(v11 - 8);
  v5[28] = swift_task_alloc();
  sub_218B6AF30(0);
  v5[29] = swift_task_alloc();
  sub_219BDCAF4();
  v5[30] = swift_task_alloc();
  v12 = sub_219BDCAE4();
  v5[31] = v12;
  v5[32] = *(v12 - 8);
  v5[33] = swift_task_alloc();
  sub_218C89FF4(0, &qword_280EE3CD8, MEMORY[0x277D6E920], v9);
  v5[34] = swift_task_alloc();
  sub_219BE6814();
  v5[35] = swift_task_alloc();
  sub_218C89FF4(0, &qword_27CC104C8, MEMORY[0x277D6DDD0], v9);
  v5[36] = swift_task_alloc();
  sub_219BE80A4();
  v5[37] = swift_task_alloc();
  sub_219BE8F94();
  v5[38] = swift_task_alloc();
  v13 = sub_219BE8164();
  v5[39] = v13;
  v5[40] = *(v13 - 8);
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218C88670, 0, 0);
}

uint64_t sub_218C88670()
{
  v1 = v0[42];
  v31 = v0[40];
  v32 = v0[39];
  v33 = v0[41];
  v2 = v0[34];
  v34 = v0[28];
  v35 = v0[29];
  v37 = v0[27];
  v36 = v0[26];
  v28 = v0[25];
  v29 = v0[24];
  v30 = v0[23];
  v14 = v0[21];
  v15 = v0[20];
  v16 = v0[18];
  v17 = v0[19];
  v18 = v0[17];
  v20 = v0[12];
  v22 = v0[13];
  v24 = v0[11];
  v27 = v0[9];
  v25 = v0[8];
  v26 = v0[7];
  v38 = v0[6];
  sub_218C89118();
  sub_219BE8134();
  sub_219BE8114();
  sub_219BE8054();
  sub_219BE8154();
  sub_219BE7FD4();
  sub_219BE80B4();
  sub_219BE8094();
  sub_219BE7FE4();
  sub_219BE8064();
  sub_219BE8034();
  sub_219BE8074();
  sub_219BE8144();
  sub_219BE8084();
  sub_219BE7FF4();
  sub_219BF6024();
  sub_219BE7F94();
  sub_219BE8024();
  sub_219BE8014();
  sub_219BE80F4();
  sub_219BE7FC4();
  sub_219BE7FB4();
  v3 = sub_219BE9F64();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  sub_219BE8124();
  sub_219BE8004();
  sub_219BF6B74();
  sub_219BE8004();
  sub_219BE8044();
  sub_219BE7FD4();
  sub_219BE8064();
  sub_219BE8034();
  sub_219BE7FF4();
  sub_219BE8024();
  sub_219BE8084();
  sub_219BE8014();
  sub_219BEE674();
  sub_219BEE664();
  sub_219BEE654();

  sub_219BDCAC4();
  v4 = sub_219BF0BD4();
  (*(*(v4 - 8) + 56))(v35, 1, 1, v4);
  (*(v37 + 104))(v34, *MEMORY[0x277D6D178], v36);
  sub_219BEF5F4();
  v5 = sub_219BEF624();
  (*(*(v5 - 8) + 56))(v14, 1, 1, v5);
  v6 = sub_219BEF684();
  (*(*(v6 - 8) + 56))(v15, 1, 1, v6);
  (*(v16 + 104))(v17, *MEMORY[0x277D326B0], v18);
  sub_219BEF654();
  sub_219BEF5F4();
  (*(v20 + 104))(v22, *MEMORY[0x277D32680], v24);
  sub_219BEF5A4();
  sub_219BEF6A4();

  sub_219BEF5C4();
  (*(v25 + 104))(v27, *MEMORY[0x277D32EC8], v26);
  v7 = sub_219BEE0E4();
  (*(v25 + 8))(v27, v26);
  (*(v29 + 8))(v28, v30);
  (*(v37 + 8))(v34, v36);
  sub_218864B6C(v35, sub_218B6AF30);
  (*(v31 + 16))(v33, v1, v32);
  v8 = swift_task_alloc();
  v8[2] = v38;
  v8[3] = v1;
  v8[4] = v7;
  sub_218945EB8(sub_218C8A058, v8);
  v9 = v0[42];
  v10 = v0[40];
  v23 = v0[39];
  v11 = v0[32];
  v19 = v0[31];
  v21 = v0[33];

  type metadata accessor for MagazineCatalogLayoutSectionDescriptor();
  type metadata accessor for MagazineCatalogLayoutModel();
  sub_218C87FA0(&qword_27CC0AD38, type metadata accessor for MagazineCatalogLayoutSectionDescriptor);
  sub_218C87FA0(&qword_27CC0AE30, type metadata accessor for MagazineCatalogLayoutModel);
  sub_219BE6514();
  sub_219BEE0C4();

  (*(v11 + 8))(v21, v19);
  (*(v10 + 8))(v9, v23);

  v12 = v0[1];

  return v12();
}

double sub_218C89118()
{
  v0 = type metadata accessor for MagazineCatalogSectionDescriptor(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C8A25C(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C87770(sub_218950F34, &qword_27CC0AE40, sub_218950F34, sub_218950D5C, v5);
  sub_218950D5C();
  v7 = v6;
  v8 = *(v6 - 8);
  if ((*(v8 + 48))(v5, 1, v6) == 1)
  {
    sub_218864B6C(v5, sub_218C8A25C);
    v9 = 0;
  }

  else
  {
    sub_219BE6934();
    (*(v8 + 8))(v5, v7);
    v9 = sub_21909373C();
    sub_218864B6C(v2, type metadata accessor for MagazineCatalogSectionDescriptor);
  }

  v15[1] = v9;
  sub_218C89FF4(0, &qword_280E8EDB0, sub_2186D0BA8, MEMORY[0x277D83D88]);
  v10 = sub_219BF6F94();

  if (v10)
  {
    v11 = sub_219BE8034();
    v12 = [v11 horizontalSizeClass];

    if (v12 == 2)
    {
      return 30.0;
    }

    if (v12 == 1)
    {
      return 20.0;
    }
  }

  sub_219BE7FF4();
  return v14;
}

uint64_t sub_218C89398@<X0>(void (**a1)(char *, uint64_t)@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X4>, uint64_t a5@<X8>)
{
  v40 = a4;
  v41 = a2;
  v43 = a3;
  v42 = a1;
  v39 = a5;
  v52 = type metadata accessor for MagazineCatalogLayoutModel();
  MEMORY[0x28223BE20](v52);
  v47 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_219BEF974();
  v49 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C3DBBC();
  v45 = v8;
  v48 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v36 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BEE074();
  v37 = *(v10 - 8);
  v38 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BE9FA4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for MagazineCatalogLayoutSectionDescriptor();
  MEMORY[0x28223BE20](v17);
  v19 = v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C899E8(v41, v19);
  (*(v14 + 104))(v16, *MEMORY[0x277D6E9B0], v13);
  sub_218950D5C();
  sub_218C8A07C();
  memset(v50, 0, sizeof(v50));
  v51 = 0;
  v20 = v44;
  sub_219BEE0A4();
  if (v20)
  {
    sub_218864B6C(v50, sub_218C8A15C);
    (*(v14 + 8))(v16, v13);
    result = sub_218864B6C(v19, type metadata accessor for MagazineCatalogLayoutSectionDescriptor);
    *v40 = v20;
  }

  else
  {
    v35[0] = 0;
    v35[1] = v17;
    v40 = v19;
    v22 = v49;
    sub_218864B6C(v50, sub_218C8A15C);
    v23 = sub_219BEE004();
    (*(v37 + 8))(v12, v38);
    v24 = *(v23 + 16);
    if (v24)
    {
      v38 = v16;
      *&v50[0] = MEMORY[0x277D84F90];
      sub_218C35240(0, v24, 0);
      v25 = *&v50[0];
      v27 = *(v22 + 16);
      v26 = v22 + 16;
      v28 = (*(v26 + 64) + 32) & ~*(v26 + 64);
      v37 = v23;
      v29 = v23 + v28;
      v43 = *(v26 + 56);
      v44 = v27;
      v41 = v48 + 32;
      v42 = (v26 - 8);
      v30 = v36;
      v49 = v26;
      do
      {
        v31 = v46;
        v32 = v44;
        v44(v7, v29, v46);
        v32(v47, v7, v31);
        sub_218C87FA0(&qword_27CC0AE30, type metadata accessor for MagazineCatalogLayoutModel);
        sub_219BE75D4();
        (*v42)(v7, v31);
        *&v50[0] = v25;
        v34 = *(v25 + 16);
        v33 = *(v25 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_218C35240(v33 > 1, v34 + 1, 1);
          v25 = *&v50[0];
        }

        *(v25 + 16) = v34 + 1;
        (*(v48 + 32))(v25 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v34, v30, v45);
        v29 += v43;
        --v24;
      }

      while (v24);
    }

    sub_218C87FA0(&qword_27CC0E6A0, type metadata accessor for MagazineCatalogLayoutSectionDescriptor);
    sub_218C87FA0(&qword_27CC0E648, type metadata accessor for MagazineCatalogLayoutModel);
    return sub_219BE81A4();
  }

  return result;
}

uint64_t sub_218C899E8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v51 = a1;
  v53 = a2;
  v2 = type metadata accessor for MagazineCatalogSectionHeaderViewLayoutAttributes();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BE8164();
  v49 = *(v5 - 8);
  v50 = v5;
  MEMORY[0x28223BE20](v5);
  v52 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MagazineCatalogSectionHeaderViewLayoutOptions();
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v46 - v11;
  v13 = type metadata accessor for MagazineCatalogSectionHeaderModel();
  MEMORY[0x28223BE20](v13);
  v15 = (&v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for MagazineCatalogSectionDescriptor.Categories(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for MagazineCatalogSectionDescriptor(0);
  MEMORY[0x28223BE20](v19);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950D5C();
  sub_219BE6934();
  if (swift_getEnumCaseMultiPayload())
  {
    sub_218864B6C(v21, type metadata accessor for MagazineCatalogSectionDescriptor);
    v22 = 1;
    v23 = v53;
  }

  else
  {
    v47 = v12;
    v24 = v48;
    sub_218C8A1F4(v21, v18, type metadata accessor for MagazineCatalogSectionDescriptor.Categories);
    v25 = v15 + *(v13 + 20);
    v46 = v18;
    sub_218C8A190(v18, v25);
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v27 = [objc_opt_self() bundleForClass_];
    v28 = sub_219BDB5E4();
    v30 = v29;

    *v15 = v28;
    v15[1] = v30;
    v32 = v49;
    v31 = v50;
    (*(v49 + 16))(v52, v51, v50);
    v33 = sub_219BE8034();
    v34 = [v33 horizontalSizeClass];

    if (v34 == 2)
    {
      v35 = v52;
      sub_219BE7FF4();
      v37 = 9.0;
    }

    else
    {
      v37 = 4.0;
      v36 = 16.0;
      v35 = v52;
    }

    *&v10[v7[8]] = v36;
    *&v10[v7[7]] = 0x403E000000000000;
    sub_219BE7FF4();
    v39 = v38;
    sub_219BE7FF4();
    v41 = v40;
    (*(v32 + 32))(v10, v35, v31);
    v42 = &v10[v7[5]];
    *v42 = v37;
    *(v42 + 1) = v39;
    v42[2] = 16.0;
    *(v42 + 3) = v41;
    *&v10[v7[6]] = 0x404C000000000000;
    v43 = v47;
    sub_218C8A1F4(v10, v47, type metadata accessor for MagazineCatalogSectionHeaderViewLayoutOptions);
    __swift_project_boxed_opaque_existential_1((v24 + 24), *(v24 + 48));
    sub_21968CD48(v15, v43, v4);
    sub_218864B6C(v43, type metadata accessor for MagazineCatalogSectionHeaderViewLayoutOptions);
    sub_218864B6C(v15, type metadata accessor for MagazineCatalogSectionHeaderModel);
    sub_218864B6C(v46, type metadata accessor for MagazineCatalogSectionDescriptor.Categories);
    v23 = v53;
    sub_218C8A1F4(v4, v53, type metadata accessor for MagazineCatalogSectionHeaderViewLayoutAttributes);
    v22 = 0;
  }

  sub_218932FF4();
  return (*(*(v44 - 8) + 56))(v23, v22, 1, v44);
}

uint64_t sub_218C89F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2187608D4;

  return sub_218C88078(a1, a2, a3, a4);
}

void sub_218C89FF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_218C8A07C()
{
  result = qword_27CC104D0;
  if (!qword_27CC104D0)
  {
    sub_218950D5C();
    sub_218C87FA0(&qword_27CC104D8, type metadata accessor for MagazineCatalogSectionDescriptor);
    sub_218C87FA0(&qword_27CC104E0, type metadata accessor for MagazineCatalogModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC104D0);
  }

  return result;
}

uint64_t sub_218C8A190(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagazineCatalogSectionDescriptor.Categories(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218C8A1F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218C8A290(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_218C8A2E0(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5)
{
  v8 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v9 = a4;
      }

      else
      {
        v9 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x21CECDFD0](a1, a2, v9);
      sub_2186C6148(0, a5);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_2186C6148(0, a5);
    if (sub_219BF71F4() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_219BF7204();
    swift_dynamicCast();
    v5 = v17;
    v10 = sub_219BF6DC4();
    v11 = -1 << *(a4 + 32);
    v8 = v10 & ~v11;
    if ((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
    {
      v12 = ~v11;
      do
      {
        v13 = *(*(a4 + 48) + 8 * v8);
        v14 = sub_219BF6DD4();

        if (v14)
        {
          goto LABEL_19;
        }

        v8 = (v8 + 1) & v12;
      }

      while (((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
    }

    __break(1u);
  }

  if ((v8 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v8)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v8 >> 6) + 56) >> v8) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v15 = *(*(a4 + 48) + 8 * v8);

  v16 = v15;
}

void *sub_218C8A520(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    *result = *(*(a5 + 56) + 8 * a2);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_218C8A57C(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a5 + 36) != a3)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = *(a5 + 48);
  v8 = sub_219BE4B94();
  (*(*(v8 - 8) + 16))(v6, v7 + *(*(v8 - 8) + 72) * a2, v8);
}

void *sub_218C8A64C(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    v6 = (*(a5 + 56) + 32 * a2);
    v7 = *v6;
    v8 = v6[1];
    v10 = v6[2];
    v9 = v6[3];
    *result = v7;
    result[1] = v8;
    result[2] = v10;
    result[3] = v9;

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_218C8A6F4(uint64_t result, int a2, uint64_t a3, uint64_t a4)
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
    return *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_218C8A744(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for MagazineGridSectionDescriptor;
    v8[1] = type metadata accessor for MagazineGridItemModel();
    v8[2] = sub_21895164C();
    v8[3] = sub_218C87FA0(&unk_27CC0B810, type metadata accessor for MagazineGridItemModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218C8A804()
{
  if (!qword_27CC104F0)
  {
    sub_219BE4B94();
    sub_218C8A878();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC104F0);
    }
  }
}

void sub_218C8A878()
{
  if (!qword_27CC1ACF0)
  {
    sub_218C89FF4(255, &unk_27CC13240, MEMORY[0x277D34998], MEMORY[0x277D83940]);
    sub_218C8A914();
    v0 = sub_219BF52A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1ACF0);
    }
  }
}

unint64_t sub_218C8A914()
{
  result = qword_27CC1AD00;
  if (!qword_27CC1AD00)
  {
    sub_218C89FF4(255, &unk_27CC13240, MEMORY[0x277D34998], MEMORY[0x277D83940]);
    sub_218C87FA0(&unk_27CC13250, MEMORY[0x277D34998]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1AD00);
  }

  return result;
}

void sub_218C8A9EC()
{
  if (!qword_27CC0C070)
  {
    type metadata accessor for AudioHistoryFeedSectionDescriptor();
    type metadata accessor for AudioHistoryFeedModel();
    sub_218C87FA0(&unk_27CC0DC20, type metadata accessor for AudioHistoryFeedSectionDescriptor);
    sub_218C87FA0(&unk_27CC0B8B0, type metadata accessor for AudioHistoryFeedModel);
    v0 = sub_219BE6A54();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0C070);
    }
  }
}

void sub_218C8AAD8()
{
  if (!qword_27CC104F8)
  {
    type metadata accessor for SharedWithYouFeedSectionDescriptor();
    type metadata accessor for SharedWithYouFeedModel(255);
    sub_218C87FA0(&qword_27CC0FB80, type metadata accessor for SharedWithYouFeedSectionDescriptor);
    sub_218C87FA0(&unk_27CC0B830, type metadata accessor for SharedWithYouFeedModel);
    v0 = sub_219BEB334();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC104F8);
    }
  }
}

uint64_t sub_218C8ABC4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC41D0);
  result = sub_219BE1E34();
  v3 = v26;
  if (!v26)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = v27;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280ECE3A0);
  result = sub_219BE1E34();
  if (!v25)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FE50);
  result = sub_219BE1E34();
  if (!v23)
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

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E95830);
  result = sub_219BE1E34();
  if (v21)
  {
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    MEMORY[0x28223BE20](v6);
    v8 = (v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8);
    v10 = *v8;
    v11 = type metadata accessor for MyMagazinesSharingActivityItemFactory();
    v19[3] = v11;
    v19[4] = &off_282A8F9D0;
    v19[0] = v10;
    type metadata accessor for MyMagazinesSharingActivityItemFactoryWithTracker();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v11);
    MEMORY[0x28223BE20](v13);
    v15 = (v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15);
    v17 = *v15;
    v12[6] = v11;
    v12[7] = &off_282A8F9D0;
    v12[2] = v5;
    v12[3] = v17;
    __swift_destroy_boxed_opaque_existential_1(v19);
    __swift_destroy_boxed_opaque_existential_1(v20);
    type metadata accessor for MagazineMoreActionsFactory();
    v18 = swift_allocObject();
    v18[2] = v3;
    v18[3] = v4;
    sub_2186CB1F0(&v24, (v18 + 4));
    sub_2186CB1F0(&v22, (v18 + 9));
    v18[14] = v12;
    return v18;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_218C8AF4C(uint64_t a1)
{
  v1 = a1 + 56;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 56);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  if (!v4)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v4 &= v4 - 1;

      result = sub_218C8C900(&v21);
      v9 = v22;
      if (v22)
      {
        break;
      }

      if (!v4)
      {
        goto LABEL_6;
      }
    }

    v17 = v21;
    v19 = v24;
    v20 = v23;
    v18 = v25;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2191F82C8(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v12 = *(v8 + 16);
    v11 = *(v8 + 24);
    v13 = v12 + 1;
    if (v12 >= v11 >> 1)
    {
      result = sub_2191F82C8((v11 > 1), v12 + 1, 1, v8);
      v13 = v12 + 1;
      v8 = result;
    }

    *(v8 + 16) = v13;
    v14 = v8 + 56 * v12;
    *(v14 + 32) = v17;
    *(v14 + 40) = v9;
    *(v14 + 48) = v20;
    *(v14 + 64) = v19;
    *(v14 + 80) = v18 & 1;
  }

  while (v4);
LABEL_6:
  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      MEMORY[0x28223BE20](v15);
      sub_218C8CAFC(0, &qword_280E8F5F8, MEMORY[0x277D6CA88], MEMORY[0x277D83940]);
      v16 = sub_219BE3204();

      return v16;
    }

    v4 = *(v1 + 8 * v10);
    ++v7;
    if (v4)
    {
      v7 = v10;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_218C8B194(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v27 = MEMORY[0x277D84F90];
    sub_219BF73F4();
    v6 = (a1 + 80);
    v20 = a2;
    do
    {
      v7 = *(v6 - 5);
      v21 = *(v6 - 6);
      v8 = v6 - 32;
      v9 = v6 - 8;
      v10 = *v6;
      v6 += 56;
      if (!v10)
      {
        v8 = v9;
      }

      v11 = *v8;
      sub_218718690(a2 + 16, v24);
      v13 = v25;
      v12 = v26;
      __swift_project_boxed_opaque_existential_1(v24, v25);
      memset(v22, 0, sizeof(v22));
      v23 = -1;
      v14 = *(v12 + 8);

      v15 = v12;
      a2 = v20;
      v14(v21, v7, v11, v22, v13, v15);

      __swift_destroy_boxed_opaque_existential_1(v24);
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      --v2;
    }

    while (v2);
    v3 = v27;
  }

  sub_218C8CAC8(0);
  v24[0] = v3;
  v16 = sub_219BE2E54();
  sub_218C8CB60(0);
  sub_218C8CB94(&qword_27CC10510, sub_218C8CB60);
  sub_219BE2F34();

  v17 = sub_219BE2E54();
  sub_219BE1CA4();
  sub_218C8CB94(&qword_27CC10518, sub_218C8CBDC);
  v18 = sub_219BE30C4();

  return v18;
}

uint64_t sub_218C8B3FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_219BE1EF4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C8CAFC(0, &qword_27CC10528, sub_2186FAF08, MEMORY[0x277D6CF88]);
  MEMORY[0x28223BE20](v8 - 8);
  v9 = type metadata accessor for FeedAvailability();
  MEMORY[0x28223BE20](v9);
  v11 = (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218C8CC10(a1, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) >= 5)
  {
    if (EnumCaseMultiPayload)
    {
      v22 = *v11;
      sub_218C8CC74(v22, &v28);
      v32 = v22;
      v23 = qword_280EE7C68;
      v24 = v22;
      if (v23 != -1)
      {
        swift_once();
      }

      v25 = __swift_project_value_buffer(v4, qword_280EE7C70);
      (*(v5 + 16))(v7, v25, v4);
      sub_218C8B8B4();
      v31 = v28;
      sub_2189AD3D8(&v31);
      v30 = v29;
      sub_2189D2CDC(&v30);
      sub_2186FAF08();
      sub_219BE3364();

      sub_219BE1C94();
      v26 = sub_219BE1CA4();
      return (*(*(v26 - 8) + 56))(a2, 0, 1, v26);
    }

    else
    {
      v15 = *v11;
      sub_218BFB73C();
      v27 = *(v16 + 48);
      v17 = v15;
      sub_218C8CC74(v17, &v28);
      v32 = v17;
      v18 = qword_280EE7C68;
      v19 = v17;
      if (v18 != -1)
      {
        swift_once();
      }

      v20 = __swift_project_value_buffer(v4, qword_280EE7C70);
      (*(v5 + 16))(v7, v20, v4);
      sub_218C8B8B4();
      v31 = v28;
      sub_2189AD3D8(&v31);
      v30 = v29;
      sub_2189D2CDC(&v30);
      sub_2186FAF08();
      sub_219BE3364();

      sub_219BE1C94();
      v21 = sub_219BE1CA4();
      (*(*(v21 - 8) + 56))(a2, 0, 1, v21);
      return sub_218C8CDE4(v11 + v27, sub_2186FE720);
    }
  }

  else
  {
    sub_218C8CDE4(v11, type metadata accessor for FeedAvailability);
    v13 = sub_219BE1CA4();
    return (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
  }
}

uint64_t sub_218C8B8B4()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  v19[7] = v2;
  v19[8] = v3;
  v19[2] = v1[2];
  sub_218C8CE44();

  v19[9] = sub_219BF70A4();
  v19[10] = v4;
  v23 = *(v1 + 3);
  v20 = v23;
  if (v1[6])
  {
    v21 = 0;
    v22 = 0;
    result = sub_2189D2C04(&v23, v19);
  }

  else
  {
    sub_2189D2C04(&v23, v19);
    result = sub_219BF70A4();
    v21 = result;
    v22 = v6;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
LABEL_5:
  if (v7 <= 4)
  {
    v9 = 4;
  }

  else
  {
    v9 = v7;
  }

  v10 = v9 + 1;
  v11 = 16 * v7 + 40;
  while (1)
  {
    if (v7 == 4)
    {
      sub_2186DEEEC(0, &qword_280E8F860, MEMORY[0x277D83D88]);
      swift_arrayDestroy();
      v19[0] = v8;
      sub_2186DEEEC(0, &qword_280E8EE20, MEMORY[0x277D83940]);
      sub_2189DD328();
      v18 = sub_219BF5324();

      return v18;
    }

    if (v10 == ++v7)
    {
      break;
    }

    v12 = v11 + 16;
    v13 = *(&v19[3] + v11);
    v11 += 16;
    if (v13)
    {
      v14 = *(v19 + v12);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_218840D24(0, *(v8 + 16) + 1, 1, v8);
        v8 = result;
      }

      v16 = *(v8 + 16);
      v15 = *(v8 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_218840D24((v15 > 1), v16 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 16) = v16 + 1;
      v17 = v8 + 16 * v16;
      *(v17 + 32) = v14;
      *(v17 + 40) = v13;
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

unsigned __int8 *sub_218C8BAF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_219BF5664();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_2192590BC();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_219BF73B4();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}