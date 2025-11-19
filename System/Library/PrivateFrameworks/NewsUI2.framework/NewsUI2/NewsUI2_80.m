void sub_218FC7734(char *a1, void *a2, char *a3)
{
  swift_getObjectType();
  v6 = sub_219BE4914();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21875FB60(0, &unk_280E90570, MEMORY[0x277D33680]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v50 - v11;
  v13 = OBJC_IVAR____TtC7NewsUI220PuzzleViewController_puzzle;
  if (*&a3[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_puzzle])
  {
    sub_219BE6AB4();
  }

  *&a3[v13] = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  sub_2199A77B8(0, 0);
  sub_2199A350C();
  if (a2)
  {
    v14 = [a2 puzzleType];
    sub_219BF1E84();
    v15 = OBJC_IVAR____TtC7NewsUI220PuzzleViewController_currentPuzzleColorTheme;
    swift_beginAccess();
    sub_218FC8FCC(v12, &a3[v15]);
    swift_endAccess();
  }

  if (sub_219BF6564())
  {
    goto LABEL_20;
  }

  v16 = OBJC_IVAR____TtC7NewsUI220PuzzleViewController_paywall;
  swift_beginAccess();
  (*(v7 + 24))(&a3[v16], a1, v6);
  swift_endAccess();
  if (a2)
  {
    __swift_project_boxed_opaque_existential_1((*&a3[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_eventHandler] + 88), *(*&a3[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_eventHandler] + 112));
    v17 = swift_unknownObjectRetain();
    sub_21956F03C(v17, a1);
    swift_unknownObjectRelease();
  }

  (*(v7 + 16))(v9, a1, v6);
  v18 = (*(v7 + 88))(v9, v6);
  if (v18 == *MEMORY[0x277D353A0])
  {
    (*(v7 + 96))(v9, v6);
    sub_2186CB1F0(v9, v51);
    sub_218FC8F60(&qword_27CC14648, type metadata accessor for PuzzleViewController);
    v19 = sub_219BE46A4();
    swift_allocObject();
    v20 = a3;
    v21 = sub_219BE4694();
    __swift_project_boxed_opaque_existential_1(v51, v51[3]);
    v50[3] = v19;
    v50[4] = MEMORY[0x277D35300];
    v50[0] = v21;

    v22 = sub_219BE3FF4();
    __swift_destroy_boxed_opaque_existential_1(v50);
    sub_218FC8F60(qword_27CC14650, type metadata accessor for PuzzleViewController);
    swift_unknownObjectRetain();
    sub_219BE4244();
    v23 = *&v20[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_hardPaywallViewController];
    *&v20[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_hardPaywallViewController] = v22;
    v24 = v22;

    v25 = v24;
    [v20 addChildViewController_];
    v26 = [v20 view];
    if (v26)
    {
      v27 = v26;
      v28 = [v25 view];
      if (v28)
      {
        v29 = v28;
        [v27 addSubview_];

        [v25 didMoveToParentViewController_];
        v30 = [v25 view];

        if (v30)
        {
          v31 = [v20 view];
          if (v31)
          {
            v32 = v31;
            [v31 bounds];
            v34 = v33;
            v36 = v35;
            v38 = v37;
            v40 = v39;

            [v30 setFrame_];
            v41 = [*&v20[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_puzzleEmbedViewController] view];
            if (v41)
            {
              v42 = v41;
              [v41 setAccessibilityElementsHidden_];

              MEMORY[0x28223BE20](v43);
              v50[-2] = v25;
              type metadata accessor for CGSize(0);
              sub_219BE3204();
              *(swift_allocObject() + 16) = v20;
              v44 = v20;
              v45 = sub_219BE2E54();
              sub_219BE3034();

              __swift_destroy_boxed_opaque_existential_1(v51);
              return;
            }

            goto LABEL_27;
          }

LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

LABEL_25:
        __break(1u);
        goto LABEL_26;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v18 == *MEMORY[0x277D353B0])
  {
    (*(v7 + 8))(v9, v6);
LABEL_18:
    v46 = [*&a3[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_puzzleEmbedViewController] view];
    if (!v46)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v47 = v46;
    [v46 setAccessibilityElementsHidden_];

LABEL_20:
    sub_2199A5DBC();
    return;
  }

  if (v18 == *MEMORY[0x277D353A8])
  {
    goto LABEL_18;
  }

  v48 = [*&a3[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_puzzleEmbedViewController] view];
  if (v48)
  {
    v49 = v48;
    [v48 setAccessibilityElementsHidden_];

    sub_2199A5DBC();
    (*(v7 + 8))(v9, v6);
    return;
  }

LABEL_29:
  __break(1u);
}

void sub_218FC7E48()
{
  v0 = sub_219BF33F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BF49B4();
  v6 = v5;
  (*(v1 + 104))(v3, *MEMORY[0x277D33DD0], v0);
  v7 = sub_219BF33E4();
  v9 = v8;
  (*(v1 + 8))(v3, v0);
  if (v4 == v7 && v6 == v9)
  {
  }

  else
  {
    v11 = sub_219BF78F4();

    if ((v11 & 1) == 0)
    {
      return;
    }
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      v12 = [objc_opt_self() sharedApplication];
      [v12 sendAction:sel_resignFirstResponder to:0 from:0 forEvent:0];
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_218FC8028(void *a1, void *a2)
{
  v4 = sub_219BE4914();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      v11 = OBJC_IVAR____TtC7NewsUI220PuzzleViewController_paywall;
      swift_beginAccess();
      (*(v5 + 16))(v7, v10 + v11, v4);
      LOBYTE(v11) = sub_219BE48A4();
      (*(v5 + 8))(v7, v4);
      if ((v11 & 1) == 0)
      {
        sub_2199A4B5C(a1, a2);
      }

      swift_unknownObjectRelease();
      return swift_unknownObjectRelease();
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void *sub_218FC81B8(uint64_t a1)
{
  sub_21875FB60(0, &qword_280E8EAA0, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = OBJC_IVAR____TtC7NewsUI216PuzzleInteractor_puzzle;
  result = *(v1 + OBJC_IVAR____TtC7NewsUI216PuzzleInteractor_puzzle);
  if (result)
  {
    v8 = [result identifier];
    v9 = sub_219BF5414();
    v11 = v10;

    v12 = *(v1 + v6);
    if (v12)
    {
      v13 = [v12 difficulty];
    }

    else
    {
      v13 = 0;
    }

    v14 = v12 == 0;
    v15 = sub_219BF5BF4();
    (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    *(v16 + 32) = v1;
    *(v16 + 40) = v9;
    *(v16 + 48) = v11;
    *(v16 + 56) = v13;
    *(v16 + 64) = v14;
    *(v16 + 72) = a1;

    sub_218AB3D80(0, 0, v5, &unk_219C4FA18, v16);
  }

  return result;
}

uint64_t sub_218FC8354(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2187608D4;

  return sub_218FC7410(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_218FC8444()
{
  v1 = sub_219BE89F4();
  v45 = *(v1 - 8);
  v46 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21875FB60(0, &qword_280E93A80, type metadata accessor for PuzzleGameCenterOpenLeaderboardCommandContext);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v42 - v5;
  v7 = sub_219BF4F84();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC7NewsUI216PuzzleInteractor_puzzle;
  v12 = *(v0 + OBJC_IVAR____TtC7NewsUI216PuzzleInteractor_puzzle);
  v48 = v6;
  v49 = v7;
  v47 = v0;
  if (v12)
  {
    v44 = v3;
    v13 = [v12 puzzleType];
    v14 = *(v0 + v11);
    if (v14)
    {
      v15 = [v14 difficulty];
    }

    else
    {
      v15 = 0;
    }

    v20 = v14 == 0;
    v21 = [v13 identifier];
    v22 = sub_219BF5414();
    v24 = v23;

    *v10 = v22;
    *(v10 + 1) = v24;
    *(v10 + 2) = v15;
    v10[24] = v20;
    v7 = v49;
    (*(v8 + 104))(v10, *MEMORY[0x277D346C8], v49);
    if (qword_280EE5F80 != -1)
    {
      swift_once();
    }

    v25 = sub_219BE5434();
    __swift_project_value_buffer(v25, qword_280F625E0);
    swift_unknownObjectRetain();
    v26 = sub_219BE5414();
    v27 = sub_219BF6214();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      ObjectType = v8;
      v29 = v15;
      v30 = v28;
      v31 = swift_slowAlloc();
      v50[0] = v31;
      *v30 = 136315394;
      v32 = [v13 identifier];
      v33 = sub_219BF5414();
      v35 = v34;

      v36 = sub_2186D1058(v33, v35, v50);
      v7 = v49;

      *(v30 + 4) = v36;
      *(v30 + 12) = 2048;
      *(v30 + 14) = v29;
      v8 = ObjectType;
      _os_log_impl(&dword_2186C1000, v26, v27, "PuzzleInteractor: Opening leaderboard for %s difficulty=%ld...", v30, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x21CECF960](v31, -1, -1);
      MEMORY[0x21CECF960](v30, -1, -1);
    }

    swift_unknownObjectRelease();

    v3 = v44;
  }

  else
  {
    (*(v8 + 104))(v10, *MEMORY[0x277D346D0], v7);
    if (qword_280EE5F80 != -1)
    {
      swift_once();
    }

    v16 = sub_219BE5434();
    __swift_project_value_buffer(v16, qword_280F625E0);
    v17 = sub_219BE5414();
    v18 = sub_219BF6214();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2186C1000, v17, v18, "PuzzleInteractor: Cannot get puzzle type, opening GC home dashboard...", v19, 2u);
      MEMORY[0x21CECF960](v19, -1, -1);
    }
  }

  v37 = v47;
  v44 = *(v47 + OBJC_IVAR____TtC7NewsUI216PuzzleInteractor_commandCenter + 8);
  ObjectType = swift_getObjectType();
  if (qword_280EE38B8 != -1)
  {
    swift_once();
  }

  v38 = v48;
  (*(v8 + 16))(v48, v10, v7);
  v39 = type metadata accessor for PuzzleGameCenterOpenLeaderboardCommandContext();
  (*(*(v39 - 8) + 56))(v38, 0, 1, v39);
  (*(v45 + 104))(v3, *MEMORY[0x277D6E0F8], v46);
  v40 = *(v37 + OBJC_IVAR____TtC7NewsUI216PuzzleInteractor_tracker);
  v50[3] = sub_219BDD274();
  v50[4] = sub_218FC8F60(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
  v50[0] = v40;
  v51 = 0u;
  v52 = 0u;
  v53 = 1;
  sub_219BE8314();
  swift_allocObject();

  sub_219BE82F4();
  sub_219BE7044();

  sub_218FC8C40(v38);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_218FC8C40(uint64_t a1)
{
  sub_21875FB60(0, &qword_280E93A80, type metadata accessor for PuzzleGameCenterOpenLeaderboardCommandContext);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_218FC8CB8(char *a1)
{
  v2 = [*&a1[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_bundleSubscriptionManager] cachedSubscription];
  if (objc_getAssociatedObject(v2, v2 + 1))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17 = v15;
  v18 = v16;
  if (!*(&v16 + 1))
  {
    sub_21874534C(&v17, sub_21880702C);
    goto LABEL_9;
  }

  sub_2186C6148(0, &qword_280E8DA20);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v3 = 0;
    v5 = 0;
    goto LABEL_10;
  }

  v3 = v14;
  v4 = [v14 integerValue];
  if (v4 == -1)
  {

    goto LABEL_21;
  }

  v5 = v4;
LABEL_10:
  if (objc_getAssociatedObject(v2, ~v5))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17 = v15;
  v18 = v16;
  if (!*(&v16 + 1))
  {
    sub_21874534C(&v17, sub_21880702C);
LABEL_18:

    if ((v5 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_21;
  }

  sub_2186C6148(0, &qword_280E8DA20);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v6 = v14;
  v7 = [v6 integerValue];

  if (((v7 ^ v5) & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  v8 = [a1 viewIfLoaded];
  v9 = [v8 window];

  if (!v9)
  {
    return 0;
  }

  v10 = [a1 navigationController];
  if (!v10)
  {
    return 1;
  }

  v11 = v10;
  v12 = [v10 topViewController];

  if (!v12)
  {
    return 1;
  }

  return v12 == a1;
}

uint64_t sub_218FC8F60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218FC8FCC(uint64_t a1, uint64_t a2)
{
  sub_21875FB60(0, &unk_280E90570, MEMORY[0x277D33680]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_218FC904C()
{
  v1 = sub_219BEF974();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CA0620(v0, v7);
  (*(v2 + 32))(v5, v7, v1);
  sub_219BEF954();
  v9 = v8;
  (*(v2 + 8))(v5, v1);
  return v9;
}

uint64_t sub_218FC91B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  MEMORY[0x28223BE20](a1 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CA0620(v2, v5);
  v6 = sub_219BEF974();
  a2[3] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return (*(*(v6 - 8) + 32))(boxed_opaque_existential_1, v5, v6);
}

uint64_t sub_218FC929C(uint64_t a1)
{
  v2 = sub_2187EEBE4(&qword_280EC4848);

  return MEMORY[0x2821D5688](a1, v2);
}

uint64_t sub_218FC930C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_219BEF974();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CA0620(v3, v11);
  v12 = (*(v6 + 32))(v9, v11, v5);
  v13 = a3(v12);
  (*(v6 + 8))(v9, v5);
  return v13;
}

uint64_t sub_218FC94D0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v7 = sub_219BEF974();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CA0620(v4, v13);
  (*(v8 + 32))(v11, v13, v7);
  a4(a1);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_218FC9654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = sub_219BEF974();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CA0620(v4, v13);
  (*(v8 + 32))(v11, v13, v7);
  v14 = a4(a1);
  (*(v8 + 8))(v11, v7);
  return v14;
}

uint64_t sub_218FC9838()
{
  v1 = sub_219BEF974();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CA0620(v0, v7);
  (*(v2 + 32))(v5, v7, v1);
  LOBYTE(v7) = sub_219BEF934();
  (*(v2 + 8))(v5, v1);
  return v7 & 1;
}

uint64_t sub_218FC998C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = sub_219BEF974();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CA0620(v3, v11);
  v12 = (*(v6 + 32))(v9, v11, v5);
  a3(v12);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_218FC9AF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_219BEF974();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CA0620(v3, v11);
  v12 = (*(v6 + 32))(v9, v11, v5);
  v13 = a3(v12);
  (*(v6 + 8))(v9, v5);
  return v13;
}

void sub_218FC9C7C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_280EE6000 != -1)
  {
    swift_once();
  }

  v6 = sub_219BE5434();
  __swift_project_value_buffer(v6, qword_280F626D0);

  v7 = sub_219BE5414();
  v8 = sub_219BF6214();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_2186D1058(a1, a2, v14);
    _os_log_impl(&dword_2186C1000, v7, v8, "Processing referral with ID: %s...", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x21CECF960](v10, -1, -1);
    MEMORY[0x21CECF960](v9, -1, -1);
  }

  v11 = *(v3 + 24);
  v12 = swift_allocObject();
  v12[2] = v3;
  v12[3] = a1;
  v12[4] = a2;
  v14[4] = sub_218FCAAB0;
  v14[5] = v12;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_218C1CBB4;
  v14[3] = &block_descriptor_83;
  v13 = _Block_copy(v14);

  [v11 fetchConfigurationIfNeededWithCompletion_];
  _Block_release(v13);
}

void sub_218FC9E8C(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a2)
  {
    v6 = a2;
    if (qword_280EE6000 != -1)
    {
      swift_once();
    }

    v7 = sub_219BE5434();
    __swift_project_value_buffer(v7, qword_280F626D0);
    v8 = a2;
    v9 = sub_219BE5414();
    v10 = sub_219BF61F4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v24 = v12;
      *v11 = 136315138;
      swift_getErrorValue();
      v13 = sub_219BF7A04();
      v15 = sub_2186D1058(v13, v14, &v24);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_2186C1000, v9, v10, "Failed fetching cofiguration: %s. Exiting.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x21CECF960](v12, -1, -1);
      MEMORY[0x21CECF960](v11, -1, -1);

      return;
    }

    v19 = a2;

    goto LABEL_12;
  }

  if (!a1)
  {
    if (qword_280EE6000 != -1)
    {
      swift_once();
    }

    v20 = sub_219BE5434();
    __swift_project_value_buffer(v20, qword_280F626D0);
    oslog = sub_219BE5414();
    v21 = sub_219BF61F4();
    if (os_log_type_enabled(oslog, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2186C1000, oslog, v21, "Failed fetching cofiguration. Exiting.", v22, 2u);
      MEMORY[0x21CECF960](v22, -1, -1);
    }

    v19 = oslog;

LABEL_12:

    return;
  }

  swift_unknownObjectRetain();
  sub_218FCA17C(a4, a5, a1);

  swift_unknownObjectRelease();
}

void sub_218FCA17C(uint64_t a1, unint64_t a2, id a3)
{
  if ([a3 respondsToSelector_])
  {
    v7 = v3;
    v8 = [a3 campaignReferralConfigsByID];
    sub_218FCAABC();
    v9 = sub_219BF5214();

    if (*(v9 + 16))
    {
      v10 = sub_21870F700(a1, a2);
      if (v11)
      {
        v12 = *(*(v9 + 56) + 8 * v10);

        v13 = [v12 autoFavoriteTagIDs];

        v14 = sub_219BF5924();
        if (*(v14 + 16))
        {
          v15 = *(v7 + 16);
          v16 = [v15 mutedTagIDs];
          if (v16)
          {
            v17 = v16;
            v18 = sub_219BF5924();
          }

          else
          {
            v18 = MEMORY[0x277D84F90];
          }

          v23 = sub_218845F78(v18);

          v24 = [v15 subscribedTagIDs];
          if (v24)
          {
            v25 = v24;
            v26 = sub_219BF5924();
          }

          else
          {
            v26 = MEMORY[0x277D84F90];
          }

          v27 = sub_218845F78(v26);

          v28 = sub_218845F78(v14);

          v29 = sub_2194796A0(v27, v23);
          if (*(v29 + 16) <= *(v28 + 16) >> 3)
          {
            aBlock = v28;
            sub_218EB3B08(v29);
          }

          else
          {
            sub_218EB4048(v29, v28);
          }

          v30 = sub_219BF5D34();

          v39 = sub_218FCA640;
          v40 = 0;
          aBlock = MEMORY[0x277D85DD0];
          v36 = 1107296256;
          v37 = sub_218FCA648;
          v38 = &block_descriptor_4_0;
          v31 = _Block_copy(&aBlock);
          v32 = swift_allocObject();
          *(v32 + 16) = a1;
          *(v32 + 24) = a2;
          v39 = sub_218FCAB08;
          v40 = v32;
          aBlock = MEMORY[0x277D85DD0];
          v36 = 1107296256;
          v37 = sub_218FCA978;
          v38 = &block_descriptor_10_1;
          v33 = _Block_copy(&aBlock);

          [v15 addAutoFavoriteSubscriptionForTagIDs:v30 groupableSubscriptionForTagIDs:0 originProvider:v31 completion:v33];
          _Block_release(v33);
          _Block_release(v31);

          return;
        }
      }
    }
  }

  if (qword_280EE6000 != -1)
  {
    swift_once();
  }

  v19 = sub_219BE5434();
  __swift_project_value_buffer(v19, qword_280F626D0);

  oslog = sub_219BE5414();
  v20 = sub_219BF6214();

  if (os_log_type_enabled(oslog, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    aBlock = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_2186D1058(a1, a2, &aBlock);
    _os_log_impl(&dword_2186C1000, oslog, v20, "No autofavorites found for %s. Exiting.", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x21CECF960](v22, -1, -1);
    MEMORY[0x21CECF960](v21, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_218FCA648(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_219BF5414();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = v2(v3, v5);

  return v6;
}

void sub_218FCA6C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a2)
  {
    v21 = a2;
    sub_2186E2394();
    sub_218FCAB10();
    sub_2187F3BD4();

    v8 = sub_219BF5824();
    v10 = v9;

    if (a1)
    {
LABEL_3:
      v21 = a1;
      sub_2186E2394();
      sub_218FCAB10();
      sub_2187F3BD4();

      v11 = sub_219BF5824();
      v13 = v12;

      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    v10 = 0xE000000000000000;
    if (a1)
    {
      goto LABEL_3;
    }
  }

  v11 = 0;
  v13 = 0xE000000000000000;
LABEL_6:
  if (qword_280EE6000 != -1)
  {
    swift_once();
  }

  v14 = sub_219BE5434();
  __swift_project_value_buffer(v14, qword_280F626D0);

  v15 = sub_219BE5414();
  v16 = sub_219BF6214();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v21 = v18;
    *v17 = 136315650;
    *(v17 + 4) = sub_2186D1058(a4, a5, &v21);
    *(v17 + 12) = 2080;
    v19 = sub_2186D1058(v8, v10, &v21);

    *(v17 + 14) = v19;
    *(v17 + 22) = 2080;
    v20 = sub_2186D1058(v11, v13, &v21);

    *(v17 + 24) = v20;
    _os_log_impl(&dword_2186C1000, v15, v16, "Finished processing referral with ID: %s: autofavs subscribed [%s] failed [%s]", v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CECF960](v18, -1, -1);
    MEMORY[0x21CECF960](v17, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_218FCA978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = sub_219BF5D44();
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  if (a3)
  {
LABEL_3:
    v5 = sub_219BF5D44();
  }

LABEL_4:
  if (a4)
  {
    a4 = sub_219BF5D44();
  }

  v6(v7, v5, a4);
}

unint64_t sub_218FCAABC()
{
  result = qword_280E8DE98;
  if (!qword_280E8DE98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E8DE98);
  }

  return result;
}

unint64_t sub_218FCAB10()
{
  result = qword_27CC14668;
  if (!qword_27CC14668)
  {
    sub_2186E2394();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14668);
  }

  return result;
}

uint64_t sub_218FCAB7C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PuzzleListTagFeedGroupEmitter();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v1;
  v24 = a1;
  sub_218FCCDFC(0, &qword_280E8EC98, sub_218A35A80);
  sub_219BE3204();
  v22[0] = type metadata accessor for PuzzleListTagFeedGroupEmitter;
  sub_218FCF944(v1, v7, type metadata accessor for PuzzleListTagFeedGroupEmitter);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v22[1] = (v8 + v6);
  v9 = (v8 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  sub_218FCBF7C(v7, v10 + v8);
  *(v10 + v9) = a1;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_218FCBFE0;
  *(v11 + 24) = v10;

  v12 = sub_219BE2E54();
  sub_218FCCDFC(0, &qword_280E90818, MEMORY[0x277D33470]);
  sub_219BE2F64();

  v13 = v22[0];
  sub_218FCF944(v1, v7, v22[0]);
  v14 = swift_allocObject();
  sub_218FCBF7C(v7, v14 + v8);
  *(v14 + v9) = a1;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_218FCD0E4;
  *(v15 + 24) = v14;

  v16 = sub_219BE2E54();
  type metadata accessor for TagFeedGroup();
  sub_219BE2F64();

  v17 = sub_219BE2E54();
  sub_218A59C84();
  sub_219BE2F64();

  sub_218FCF944(v2, v7, v13);
  v18 = swift_allocObject();
  sub_218FCBF7C(v7, v18 + v8);
  v19 = sub_219BE2E54();
  v20 = sub_219BE3064();

  return v20;
}

uint64_t sub_218FCAF04(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 40));

  return v2;
}

uint64_t sub_218FCAF3C@<X0>(unint64_t *a1@<X8>)
{
  sub_218FCB4B0();
  v4 = v3;
  v5 = swift_allocBox();
  result = (*(*(v4 - 8) + 16))(v6, v1, v4);
  *a1 = v5 | 0x8000000000000004;
  return result;
}

uint64_t sub_218FCAFBC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for PuzzleListTagFeedGroupKnobs();
  a2[4] = sub_218FCB57C(&qword_280EB76A0, type metadata accessor for PuzzleListTagFeedGroupKnobs);
  a2[5] = sub_218FCB57C(&qword_27CC14688, type metadata accessor for PuzzleListTagFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_218FCF944(v2 + v4, boxed_opaque_existential_1, type metadata accessor for PuzzleListTagFeedGroupKnobs);
}

uint64_t sub_218FCB084()
{
  type metadata accessor for PuzzleListTagFeedGroupEmitter();
  sub_2189AD5C8();
  v0 = sub_219BEE964();
  sub_218FCBD58(0, &qword_280E8B8E0, sub_218A59E00, MEMORY[0x277D84560]);
  sub_218A59E00(0);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C09BA0;
  sub_218FCF8A8(0, &qword_280E91240, MEMORY[0x277D328E0]);
  swift_allocObject();
  *(v5 + v4) = sub_219BEFB94();
  (*(v3 + 104))(v5 + v4, *MEMORY[0x277D32308], v2);
  sub_2191EDA0C(v5);
  return v0;
}

uint64_t sub_218FCB254()
{
  sub_218FCB4B0();

  return sub_219BEDCA4();
}

uint64_t sub_218FCB280@<X0>(uint64_t *a1@<X8>)
{
  sub_218FCBD58(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_218FCB4B0();

  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_218FCF9AC(inited + 32, sub_2188317B0);
  sub_218FCFA0C(0);
  a1[3] = v5;
  a1[4] = sub_218FCB57C(&qword_280EE78E8, sub_218FCFA0C);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_218FCB404()
{
  sub_218FCB57C(&qword_280EAF470, type metadata accessor for PuzzleListTagFeedGroupEmitter);

  return sub_219BE2324();
}

uint64_t get_enum_tag_for_layout_string_7NewsUI234PuzzleListTagFeedGroupEmitterErrorO(uint64_t a1)
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

void sub_218FCB4B0()
{
  if (!qword_280E923B0)
  {
    type metadata accessor for PuzzleListTagFeedGroupConfigData();
    sub_218FCB57C(&qword_280EA5658, type metadata accessor for PuzzleListTagFeedGroupConfigData);
    sub_218FCB57C(&qword_280EA5660, type metadata accessor for PuzzleListTagFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E923B0);
    }
  }
}

uint64_t sub_218FCB57C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for PuzzleListTagFeedGroupEmitter()
{
  result = qword_280EAF450;
  if (!qword_280EAF450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218FCB624()
{
  sub_218FCB4B0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PuzzleListTagFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      sub_2186CFDE4(319, &qword_280E90510);
      if (v2 <= 0x3F)
      {
        sub_2186CFDE4(319, &qword_280E90130);
        if (v3 <= 0x3F)
        {
          sub_2186CFDE4(319, &unk_280E901D0);
          if (v4 <= 0x3F)
          {
            sub_2186CFDE4(319, &unk_280E90500);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_218FCB8B8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for PuzzleListTagFeedGroupEmitter();
  v33 = *(v5 - 8);
  v6 = *(v33 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PuzzleListTagFeedGroupConfigData();
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FCB4B0();
  sub_219BEDD14();
  v12 = *(v9 + 28);
  v13 = sub_219BF1784();
  v15 = v14;
  v16 = sub_219BF1934();
  (*(*(v16 - 8) + 8))(&v11[v12], v16);
  if (v15)
  {
    v32 = MEMORY[0x277D6CF30];
    sub_218FCBD58(0, &qword_280EE6A60, sub_218A35A80, MEMORY[0x277D6CF30]);
    v29 = v17;
    v31 = type metadata accessor for PuzzleListTagFeedGroupEmitter;
    sub_218FCF944(a1, &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PuzzleListTagFeedGroupEmitter);
    v18 = a2;
    v19 = *(v33 + 80);
    v33 = v2;
    v20 = (v19 + 16) & ~v19;
    v30 = a1;
    v21 = (v6 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    sub_218FCBF7C(v7, v22 + v20);
    *(v22 + v21) = v18;
    v23 = (v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v23 = v13;
    v23[1] = v15;

    sub_219BE2F54();
    sub_218FCBD58(0, &qword_280EE6AE8, sub_218FCBCBC, v32);
    sub_218FCF944(v30, v7, v31);
    v24 = swift_allocObject();
    sub_218FCBF7C(v7, v24 + v20);
    *(v24 + v21) = v18;

    sub_219BE2F54();
    v25 = sub_219BE2E54();
    sub_219BE3054();

    v26 = sub_219BE31C4();
  }

  else
  {
    v26 = sub_219BEEDD4();
    sub_218FCB57C(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    (*(*(v26 - 8) + 104))(v27, *MEMORY[0x277D32388], v26);
    swift_willThrow();
  }

  return v26;
}

void sub_218FCBCBC()
{
  if (!qword_280E8EED0)
  {
    sub_218FCBD58(255, &unk_280E8EEC0, MEMORY[0x277D335C8], MEMORY[0x277D83940]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8EED0);
    }
  }
}

void sub_218FCBD58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218FCBDBC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_219BF2034();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FCC090(a1, a2, v14);
  sub_218FCC89C(a5, v14);
  if (!v5)
  {
    v16[0] = a2;
    v16[1] = a3;
    sub_218FCBD58(0, &qword_280EE6AE8, sub_218FCBCBC, MEMORY[0x277D6CF30]);
    swift_allocObject();

    sub_219BE3014();
    a4 = sub_219BE31C4();
  }

  (*(v12 + 8))(v14, v11);
  return a4;
}

uint64_t sub_218FCBF7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PuzzleListTagFeedGroupEmitter();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218FCBFE0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for PuzzleListTagFeedGroupEmitter() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  return sub_218FCBDBC(a1, a2, a3, v3 + v8, *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

size_t sub_218FCC090@<X0>(unint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v66 = a2;
  sub_218FCBD58(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v56 - v6;
  v8 = sub_219BF1D54();
  v9 = *(v8 - 8);
  v71 = v8;
  v72 = v9;
  MEMORY[0x28223BE20](v8);
  v70 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BF3C84();
  v73 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = (&v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v56 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = (&v56 - v18);
  sub_218FCBD58(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
  v21 = v20;
  v22 = *(sub_219BF3E84() - 8);
  v23 = *(v22 + 72);
  v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v59 = *(v22 + 80);
  v60 = v23;
  v61 = v21;
  v25 = swift_allocObject();
  v26 = a1;
  v27 = v25;
  v58 = xmmword_219C09BA0;
  *(v25 + 16) = xmmword_219C09BA0;
  v28 = v26;
  v62 = v7;
  if (v26 >> 62)
  {
    v29 = sub_219BF7214();
  }

  else
  {
    v29 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v63 = a3;
  v64 = v24;
  v65 = v27;
  if (v29)
  {
    v74 = MEMORY[0x277D84F90];
    result = sub_218C34A88(0, v29 & ~(v29 >> 63), 0);
    if (v29 < 0)
    {
      __break(1u);
      return result;
    }

    v57 = v17;
    v31 = v74;
    v32 = v28;
    if ((v28 & 0xC000000000000001) != 0)
    {
      v33 = 0;
      LODWORD(v69) = *MEMORY[0x277D34118];
      v34 = (v73 + 104);
      do
      {
        *v19 = MEMORY[0x21CECE0F0](v33, v32);
        (*v34)(v19, v69, v11);
        v74 = v31;
        v36 = *(v31 + 16);
        v35 = *(v31 + 24);
        if (v36 >= v35 >> 1)
        {
          sub_218C34A88(v35 > 1, v36 + 1, 1);
          v31 = v74;
        }

        ++v33;
        *(v31 + 16) = v36 + 1;
        (*(v73 + 32))(v31 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v36, v19, v11);
        v32 = v28;
      }

      while (v29 != v33);
    }

    else
    {
      v37 = (v28 + 32);
      LODWORD(v69) = *MEMORY[0x277D34118];
      v38 = *(v73 + 104);
      v67 = v73 + 32;
      v68 = v38;
      do
      {
        *v14 = *v37;
        v68(v14, v69, v11);
        v74 = v31;
        v40 = *(v31 + 16);
        v39 = *(v31 + 24);
        swift_unknownObjectRetain();
        if (v40 >= v39 >> 1)
        {
          sub_218C34A88(v39 > 1, v40 + 1, 1);
          v31 = v74;
        }

        *(v31 + 16) = v40 + 1;
        (*(v73 + 32))(v31 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v40, v14, v11);
        ++v37;
        --v29;
      }

      while (v29);
    }

    v17 = v57;
    v27 = v65;
  }

  v41 = v66;
  v42 = MEMORY[0x277D84F90];
  sub_218F0B984(MEMORY[0x277D84F90]);
  sub_218F0BA7C(v42);
  sub_218F0BB90(v42);
  sub_219BF3E74();
  v61 = swift_allocObject();
  *(v61 + 16) = v58;
  v43 = *(v41 + 16);
  if (v43)
  {
    v74 = v42;
    sub_218C34A88(0, v43, 0);
    v44 = *(v72 + 16);
    v45 = v41 + ((*(v72 + 80) + 32) & ~*(v72 + 80));
    v68 = *(v72 + 72);
    v69 = v44;
    v72 += 16;
    v46 = (v72 - 8);
    LODWORD(v67) = *MEMORY[0x277D340F0];
    v47 = v74;
    v48 = (v73 + 104);
    v66 = v73 + 32;
    do
    {
      v50 = v70;
      v49 = v71;
      v69(v70, v45, v71);
      sub_219BF1D24();
      sub_219BF2144();
      (*v46)(v50, v49);
      (*v48)(v17, v67, v11);
      v74 = v47;
      v52 = *(v47 + 16);
      v51 = *(v47 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_218C34A88(v51 > 1, v52 + 1, 1);
        v47 = v74;
      }

      *(v47 + 16) = v52 + 1;
      (*(v73 + 32))(v47 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v52, v17, v11);
      v45 += v68;
      --v43;
    }

    while (v43);
    v27 = v65;
    v53 = MEMORY[0x277D84F90];
  }

  else
  {
    v53 = v42;
  }

  sub_218F0B984(v53);
  sub_218F0BA7C(v53);
  sub_218F0BB90(v53);
  v54 = v61;
  sub_219BF3E74();
  v74 = v27;
  sub_2191ED654(v54);
  v55 = sub_219BEC004();
  (*(*(v55 - 8) + 56))(v62, 1, 1, v55);
  sub_219A95188(v53);
  sub_219A95188(v53);
  sub_219A951A0(v53);
  sub_219A951B8(v53);
  sub_219A952CC(v53);
  sub_219A952E4(v53);
  sub_219A953F8(v53);
  return sub_219BF2024();
}

uint64_t sub_218FCC89C(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v3 = MEMORY[0x277D83D88];
  sub_218FCBD58(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v32 - v5;
  sub_218FCBD58(0, &qword_280E90150, MEMORY[0x277D33EC8], v3);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v32 - v8;
  sub_218FCBD58(0, &qword_280E91A70, sub_2189AD5C8, v3);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v32 - v11;
  v13 = sub_219BF2AB4();
  v37 = *(v13 - 8);
  v38 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PuzzleListTagFeedGroupConfigData();
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = (v2 + *(type metadata accessor for PuzzleListTagFeedGroupEmitter() + 24));
  v21 = v20[3];
  v35 = v20[4];
  v36 = v21;
  v34 = __swift_project_boxed_opaque_existential_1(v20, v21);
  sub_218FCB4B0();
  sub_219BEDD14();
  v33 = *(v17 + 28);
  sub_2189AD5C8();
  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  sub_219BEF0B4();
  v23 = *(v41 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v24 = sub_219BF35D4();
  (*(*(v24 - 8) + 56))(v9, 1, 1, v24);
  v40 = 35;
  sub_218FCF8A8(0, &qword_280E90090, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  sub_219BEF0B4();
  v25 = *(v41 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  sub_219BF3914();
  swift_allocObject();
  sub_219BF3904();
  v26 = sub_219BF2774();
  (*(*(v26 - 8) + 56))(v6, 1, 1, v26);
  v27 = qword_280E8D7F8;
  *MEMORY[0x277D30BC0];
  if (v27 != -1)
  {
    swift_once();
  }

  qword_280F61708;
  sub_219BF2A84();
  v28 = v33;
  v29 = sub_219BF2194();
  (*(v37 + 8))(v15, v38);
  v30 = sub_219BF1934();
  (*(*(v30 - 8) + 8))(&v19[v28], v30);
  return v29;
}

void sub_218FCCDFC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_218FCBCBC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_218FCCE70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a5;
  v27 = a3;
  v25 = a2;
  v7 = sub_219BF1904();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PuzzleListTagFeedGroupEmitter();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FCBD58(0, &qword_280EE6F78, type metadata accessor for TagFeedGroup, MEMORY[0x277D6CF30]);
  v24 = v15;
  sub_218FCF944(a4, v14, type metadata accessor for PuzzleListTagFeedGroupEmitter);
  (*(v8 + 16))(v10, a1, v7);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = (v13 + *(v8 + 80) + v16) & ~*(v8 + 80);
  v18 = (v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  sub_218FCBF7C(v14, v19 + v16);
  (*(v8 + 32))(v19 + v17, v10, v7);
  v20 = v25;
  *(v19 + v18) = v26;
  v21 = (v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8));
  v22 = v27;
  *v21 = v20;
  v21[1] = v22;

  return sub_219BE2F54();
}

uint64_t sub_218FCD0E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for PuzzleListTagFeedGroupEmitter() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  return sub_218FCCE70(a1, a2, a3, v3 + v8, *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_218FCD194(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_218FCCDFC(0, &qword_280E90818, MEMORY[0x277D33470]);
  return v3(a1, *(a1 + *(v4 + 48)), *(a1 + *(v4 + 48) + 8));
}

uint64_t sub_218FCD204(uint64_t a1)
{
  sub_218A59C84();
  MEMORY[0x28223BE20](v2);
  sub_218FCF944(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TagFeedGroup);
  swift_storeEnumTagMultiPayload();
  sub_218FCBD58(0, &qword_280EE6C80, sub_218A59C84, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_218FCD304(void *a1)
{
  if (qword_280EE5F80 != -1)
  {
    swift_once();
  }

  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_280F625E0);
  v3 = a1;
  v4 = sub_219BE5414();
  v5 = sub_219BF61F4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = a1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2186C1000, v4, v5, "Error while trying to emit Puzzle List group: %@", v6, 0xCu);
    sub_218FCF9AC(v7, sub_2189B3F3C);
    MEMORY[0x21CECF960](v7, -1, -1);
    MEMORY[0x21CECF960](v6, -1, -1);
  }

  type metadata accessor for PuzzleListTagFeedGroupEmitter();
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  type metadata accessor for TagFeedGroup();
  sub_218FCB57C(&qword_280EDE9C0, type metadata accessor for TagFeedGroup);
  return sub_219BEF194();
}

uint64_t sub_218FCD594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  sub_218FCBD58(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  v6[8] = swift_task_alloc();
  sub_219BEF554();
  v6[9] = swift_task_alloc();
  v6[10] = swift_task_alloc();
  v7 = sub_219BF1904();
  v6[11] = v7;
  v6[12] = *(v7 - 8);
  v6[13] = swift_task_alloc();
  v8 = sub_219BED8D4();
  v6[14] = v8;
  v6[15] = *(v8 - 8);
  v6[16] = swift_task_alloc();
  v9 = swift_task_alloc();
  v6[17] = v9;
  *v9 = v6;
  v9[1] = sub_218FCD77C;

  return sub_218FCDC38();
}

uint64_t sub_218FCD77C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 144) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_218FCD8FC, 0, 0);
  }
}

uint64_t sub_218FCD8FC()
{
  swift_getObjectType();
  if (sub_219BF68F4())
  {
    v1 = *(v0 + 120);
    v2 = *(v0 + 128);
    v14 = *(v0 + 112);
    v13 = *(v0 + 64);
    v15 = *(v0 + 48);
    v16 = *(v0 + 56);
    v3 = *(v0 + 16);
    (*(*(v0 + 96) + 16))();
    sub_218FCB4B0();
    sub_219BEDCB4();
    sub_219BEDCC4();
    sub_219BEDCC4();
    type metadata accessor for PuzzleListTagFeedGroupEmitter();
    sub_2189AD5C8();
    sub_219BEE9B4();
    sub_219BEE984();
    sub_219BEE9D4();
    v4 = sub_219BEE5D4();
    (*(*(v4 - 8) + 56))(v13, 1, 1, v4);
    sub_219BED854();
    swift_unknownObjectRelease();
    (*(v1 + 32))(v3, v2, v14);
    v5 = type metadata accessor for PuzzleListTagFeedGroup();
    *(v3 + *(v5 + 20)) = v15;
    *(v3 + *(v5 + 24)) = v16;
    type metadata accessor for TagFeedGroup();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v7 = [*(v0 + 144) identifier];
    v8 = sub_219BF5414();
    v10 = v9;

    sub_218FCF61C();
    swift_allocError();
    *v11 = v8;
    *(v11 + 8) = v10;
    *(v11 + 16) = 1;
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_218FCDC38()
{
  v1[2] = v0;
  v1[3] = type metadata accessor for PuzzleListTagFeedGroupConfigData();
  v1[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218FCDCCC, 0, 0);
}

uint64_t sub_218FCDCCC()
{
  v2 = v0[3];
  v1 = v0[4];
  sub_218FCB4B0();
  sub_219BEDD14();
  v3 = *(v2 + 20);
  v4 = sub_219BF1784();
  v6 = v5;
  v0[5] = v4;
  v0[6] = v5;
  v7 = sub_219BF1934();
  (*(*(v7 - 8) + 8))(v1 + v3, v7);
  if (v6)
  {
    v8 = v0[2];
    v9 = (v8 + *(type metadata accessor for PuzzleListTagFeedGroupEmitter() + 36));
    v10 = v9[3];
    v11 = v9[4];
    __swift_project_boxed_opaque_existential_1(v9, v10);
    sub_2189D2C8C(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v12 = swift_allocObject();
    v0[7] = v12;
    *(v12 + 16) = xmmword_219C09BA0;
    *(v12 + 32) = v4;
    *(v12 + 40) = v6;

    v13 = swift_task_alloc();
    v0[8] = v13;
    *v13 = v0;
    v13[1] = sub_218FCDEF4;

    return MEMORY[0x282192238](v12, 25, v10, v11);
  }

  else
  {
    sub_218FCF61C();
    swift_allocError();
    *v14 = xmmword_219C14CF0;
    *(v14 + 16) = 2;
    swift_willThrow();

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_218FCDEF4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  if (v1)
  {
    v4 = sub_218FCE178;
  }

  else
  {

    v4 = sub_218FCE010;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_218FCE010()
{
  v1 = v0[9];
  if (v1 >> 62)
  {
    if (sub_219BF7214())
    {
      goto LABEL_3;
    }

LABEL_10:
    v6 = v0[5];
    v5 = v0[6];

    sub_218FCF61C();
    swift_allocError();
    *v7 = v6;
    *(v7 + 8) = v5;
    *(v7 + 16) = 0;
    swift_willThrow();

    v8 = v0[1];

    return v8();
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_3:

  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x21CECE0F0](0, v0[9]);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[9] + 32);
    swift_unknownObjectRetain();
  }

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_218FCE178()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218FCE1EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v6 = sub_219BF0BD4();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218FCE2B4, 0, 0);
}

uint64_t sub_218FCE2B4()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v17 = *(v0 + 40);
  v16 = type metadata accessor for PuzzleListTagFeedGroupEmitter();
  type metadata accessor for PuzzleListTagFeedGroupKnobs();
  sub_219BEF134();
  sub_219BEF524();
  v4 = *(v2 + 8);
  v4(v1, v3);
  v18 = *(v0 + 16);
  sub_219BEF134();
  sub_219BEF524();
  v5 = v3;
  v4(v1, v3);
  v15 = *(v0 + 24);
  sub_219BEF134();
  sub_219BEF524();
  v4(v1, v3);
  v6 = *(v0 + 112);
  sub_219BEF134();
  sub_219BEF524();
  v4(v1, v5);
  v7 = *(v0 + 113);
  v8 = (v17 + *(v16 + 28));
  v9 = v8[3];
  v10 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v11 = swift_task_alloc();
  *(v0 + 96) = v11;
  *v11 = v0;
  v11[1] = sub_218FCE4D4;
  v13 = *(v0 + 56);
  v12 = *(v0 + 64);

  return MEMORY[0x282192D88](v13, v12, v18, v15, v6, v7, v9, v10);
}

uint64_t sub_218FCE4D4(uint64_t a1)
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
    *(v4 + 104) = a1;

    return MEMORY[0x2822009F8](sub_218FCE628, 0, 0);
  }
}

uint64_t sub_218FCE628()
{
  **(v0 + 32) = *(v0 + 104);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218FCE698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = sub_219BF0BD4();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = sub_219BF3464();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v6 = sub_219BF2934();
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();
  v7 = sub_219BF1D54();
  v3[19] = v7;
  v3[20] = *(v7 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v8 = swift_task_alloc();
  v3[24] = v8;
  *v8 = v3;
  v8[1] = sub_218FCE8B8;

  return sub_218FCDC38();
}

uint64_t sub_218FCE8B8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 200) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_218FCEA44, 0, 0);
  }
}

uint64_t sub_218FCEA44()
{
  v1 = *(v0 + 64);
  v2 = type metadata accessor for PuzzleListTagFeedGroupEmitter();
  *(v0 + 208) = v2;
  v3 = *(v2 + 32);
  *(v0 + 248) = v3;
  v4 = *(v1 + v3 + 24);
  v5 = *(v1 + v3 + 32);
  __swift_project_boxed_opaque_existential_1((v1 + v3), v4);
  v6 = swift_task_alloc();
  *(v0 + 216) = v6;
  *v6 = v0;
  v6[1] = sub_218FCEB18;
  v7 = *(v0 + 200);

  return MEMORY[0x282192A40](v7, v4, v5);
}

uint64_t sub_218FCEB18(uint64_t a1)
{
  *(*v1 + 224) = a1;

  return MEMORY[0x2822009F8](sub_218FCEC18, 0, 0);
}

uint64_t sub_218FCEC18()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  v4 = (*(v0 + 64) + *(v0 + 248));
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 104))(v1, *MEMORY[0x277D33A20], v3);
  v7 = swift_task_alloc();
  *(v0 + 232) = v7;
  *v7 = v0;
  v7[1] = sub_218FCED1C;
  v8 = *(v0 + 200);
  v9 = *(v0 + 184);
  v10 = *(v0 + 144);

  return MEMORY[0x282192A38](v9, v10, v8, v5, v6);
}

uint64_t sub_218FCED1C()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  (*(v2[17] + 8))(v2[18], v2[16]);
  if (v0)
  {

    v3 = sub_218FCF34C;
  }

  else
  {
    v3 = sub_218FCEE6C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_218FCEE6C()
{
  v1 = v0[23];
  v2 = v0[19];
  v3 = v0[20];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[13];
  sub_219BF1D44();
  v40 = *(v3 + 8);
  v40(v1, v2);
  sub_219BF3434();
  v8 = v7;
  v9 = v7;
  v43 = *(v5 + 8);
  result = v43(v4, v6);
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_31:
    __break(1u);
    return result;
  }

  v11 = v0[28];
  v42 = *(v11 + 16);
  if (v42)
  {
    v12 = 0;
    v13 = v0[20];
    v41 = (v13 + 32);
    v14 = MEMORY[0x277D84F90];
    while (v12 < *(v11 + 16))
    {
      v15 = v14;
      v16 = v0[15];
      v17 = v0[13];
      v18 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v19 = *(v13 + 72);
      (*(v13 + 16))(v0[22], v0[28] + v18 + v19 * v12, v0[19]);
      sub_219BF1D44();
      v20 = sub_219BF3454();
      v43(v16, v17);
      if (v20)
      {
        v21 = *v41;
        (*v41)(v0[21], v0[22], v0[19]);
        v14 = v15;
        v44 = v15;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_218C34958(0, *(v15 + 16) + 1, 1);
          v14 = v15;
        }

        v23 = *(v14 + 16);
        v22 = *(v14 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_218C34958(v22 > 1, v23 + 1, 1);
          v14 = v44;
        }

        v24 = v0[21];
        v25 = v0[19];
        *(v14 + 16) = v23 + 1;
        result = v21(v14 + v18 + v23 * v19, v24, v25);
      }

      else
      {
        result = (v40)(v0[22], v0[19]);
        v14 = v15;
      }

      if (v42 == ++v12)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_29;
  }

  v14 = MEMORY[0x277D84F90];
LABEL_17:

  if (*(v14 + 16))
  {
    v26 = v14;
    v27 = v0[26];
    v28 = v0[8];
    v29 = v28 + *(v27 + 20);
    if (!*(v29 + *(type metadata accessor for PuzzleListTagFeedGroupKnobs() + 36)))
    {
      swift_unknownObjectRelease();
      goto LABEL_24;
    }

    v30 = v0[30];
    v32 = v0[11];
    v31 = v0[12];
    v33 = v0[10];

    sub_219BEF134();
    v34 = sub_219BEF264();
    (*(v32 + 8))(v31, v33);
    v0[5] = v27;
    v0[6] = sub_218FCB57C(&unk_280EAF480, type metadata accessor for PuzzleListTagFeedGroupEmitter);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
    sub_218FCF944(v28, boxed_opaque_existential_1, type metadata accessor for PuzzleListTagFeedGroupEmitter);
    v36 = sub_218D119C4(v34, (v0 + 2), v26);

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1((v0 + 2));
    if (!v30)
    {
      v26 = v36;
LABEL_24:
      v39 = v0[7];
      *v39 = v26;
      v39[1] = v8;

      v38 = v0[1];
      goto LABEL_25;
    }
  }

  else
  {

    sub_218FCF61C();
    swift_allocError();
    *v37 = 0;
    *(v37 + 8) = 0;
    *(v37 + 16) = 2;
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  v38 = v0[1];
LABEL_25:

  return v38();
}

uint64_t sub_218FCF34C()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218FCF400()
{
  sub_218FCBD58(0, &qword_280EE6AE8, sub_218FCBCBC, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_218FCF488(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PuzzleListTagFeedGroupEmitter() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_219BF1904() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + v10);
  v12 = (v1 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_2187608D4;

  return sub_218FCD594(a1, v1 + v6, v1 + v9, v11, v13, v14);
}

unint64_t sub_218FCF61C()
{
  result = qword_27CC14678;
  if (!qword_27CC14678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14678);
  }

  return result;
}

uint64_t sub_218FCF670(uint64_t a1)
{
  v4 = *(type metadata accessor for PuzzleListTagFeedGroupEmitter() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v6);
  v8 = (v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2187609C8;

  return sub_218FCE1EC(a1, v1 + v5, v7, v9, v10);
}

uint64_t sub_218FCF79C(uint64_t a1)
{
  v4 = *(type metadata accessor for PuzzleListTagFeedGroupEmitter() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2187609C8;

  return sub_218FCE698(a1, v1 + v5, v6);
}

void sub_218FCF8A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for TagFeedServiceConfig();
    v7 = sub_218FCB57C(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_218FCF944(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218FCF9AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218FCFA40(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_218FCFA60(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 64) = v3;
  return result;
}

uint64_t sub_218FCFAD4()
{
  v5 = type metadata accessor for SportsSearchFeedGroupConfigData();
  MEMORY[0x28223BE20](v5);
  v0 = sub_219BEF874();
  MEMORY[0x28223BE20](v0 - 8);
  sub_2187089D4(0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  MEMORY[0x28223BE20](v2);
  v3 = sub_219BEF554();
  MEMORY[0x28223BE20](v3 - 8);
  sub_21872EF54();
  sub_219BEDD44();
  sub_219BEDCA4();

  sub_219BEDCC4();
  sub_219BEDC94();
  sub_219BEDC84();
  sub_219BEDCF4();
  sub_219BEDD04();
  sub_219BEDCD4();
  sub_219BEDCE4();
  sub_219BEDD74();
  sub_219BEDD14();
  sub_218FD0350(&qword_280EA7C98, type metadata accessor for SportsSearchFeedGroupConfigData);
  sub_218FD0350(&qword_280EA7CA0, type metadata accessor for SportsSearchFeedGroupConfigData);
  return sub_219BEDD34();
}

uint64_t sub_218FCFD98@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = sub_219BF1934();
  v15 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v17 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FD02EC(0, &qword_280E8CA88, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218FD0298();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v15;
    v11 = v16;
    v18 = 0;
    sub_218FD0350(&qword_280E90808, MEMORY[0x277D33478]);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    *(v11 + *(type metadata accessor for SportsSearchFeedGroupConfigData() + 20)) = 3;
    (*(v12 + 32))(v11, v17, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218FD0010(void *a1)
{
  v3 = v1;
  sub_218FD02EC(0, &qword_27CC14690, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218FD0298();
  sub_219BF7B44();
  v11[15] = 0;
  sub_219BF1934();
  sub_218FD0350(&qword_280E90810, MEMORY[0x277D33478]);
  sub_219BF7834();
  if (!v2)
  {
    v11[14] = *(v3 + *(type metadata accessor for SportsSearchFeedGroupConfigData() + 20));
    v11[13] = 1;
    sub_218C94574();
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218FD01F0(uint64_t a1)
{
  v2 = sub_218FD0298();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218FD022C(uint64_t a1)
{
  v2 = sub_218FD0298();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_218FD0298()
{
  result = qword_280EA7CB8[0];
  if (!qword_280EA7CB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EA7CB8);
  }

  return result;
}

void sub_218FD02EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218FD0298();
    v7 = a3(a1, &type metadata for SportsSearchFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218FD0350(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_218FD03AC()
{
  result = qword_27CC14698;
  if (!qword_27CC14698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14698);
  }

  return result;
}

unint64_t sub_218FD0404()
{
  result = qword_280EA7CA8;
  if (!qword_280EA7CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA7CA8);
  }

  return result;
}

unint64_t sub_218FD045C()
{
  result = qword_280EA7CB0;
  if (!qword_280EA7CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA7CB0);
  }

  return result;
}

uint64_t TodayDebugPersonalizationGroupLayoutKeyProvider.allGroupLayoutKeys.getter()
{
  sub_2187DDD38(0, &qword_280EE5A30, MEMORY[0x277D6D618]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = v8 - v4;
  if (!*(v0 + 16))
  {
    return 0;
  }

  v8[1] = *(v0 + 16);
  sub_2187DDE2C(0);
  sub_2187DE8F0(&qword_280EE4C10, sub_2187DDE2C);
  sub_219BE91E4();
  v6 = sub_219BE6544();
  (*(v3 + 8))(v5, v2);
  return v6;
}

uint64_t TodayDebugPersonalizationGroupLayoutKeyProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_218FD069C(uint64_t a1)
{
  v3 = type metadata accessor for EngagementEvent();
  MEMORY[0x28223BE20](v3);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_218A153EC(a1, v5);
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    v7 = *v5;
    v6 = v5[1];
    v8 = *(v1 + 16);
    v9 = sub_219BF53D4();
    v10 = [v8 fastCachedTagForID_];

    if (v10)
    {
      v11 = [v10 asChannel];
      if (v11)
      {
        v12 = v11;
        sub_218C71780();
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_219C0B8C0;
        *(inited + 32) = 0xD000000000000011;
        v14 = MEMORY[0x277D837D0];
        *(inited + 40) = 0x8000000219D06120;
        *(inited + 48) = v7;
        *(inited + 56) = v6;
        *(inited + 72) = v14;
        *(inited + 80) = 0x4E6C656E6E616863;
        *(inited + 88) = 0xEB00000000656D61;
        v15 = [v12 name];
        v16 = sub_219BF5414();
        v18 = v17;

        *(inited + 96) = v16;
        *(inited + 104) = v18;
        *(inited + 120) = v14;
        *(inited + 128) = 0x546C656E6E616863;
        *(inited + 136) = 0xEB00000000657079;
        v19 = [v12 channelType];
        *(inited + 168) = MEMORY[0x277D83E88];
        *(inited + 144) = v19;
        sub_218831A70(inited);
        swift_setDeallocating();
        sub_2188317B0();
        swift_arrayDestroy();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        return 0x466C656E6E616863;
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_218C1023C(v5);
  }

  return 0;
}

uint64_t type metadata accessor for TagFeedRouteModel()
{
  result = qword_27CC146A0;
  if (!qword_27CC146A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218FD098C()
{
  sub_219BDD944();
  if (v0 <= 0x3F)
  {
    sub_2186D6710(319, &qword_280E8E420);
    if (v1 <= 0x3F)
    {
      sub_2186D6710(319, &qword_280E8E680);
      if (v2 <= 0x3F)
      {
        type metadata accessor for FCFeedDescriptorConfiguration(319);
        if (v3 <= 0x3F)
        {
          sub_219BDD664();
          if (v4 <= 0x3F)
          {
            type metadata accessor for WebEmbedRouteModel();
            if (v5 <= 0x3F)
            {
              sub_218FD0AC8();
              if (v6 <= 0x3F)
              {
                type metadata accessor for PuzzleModel();
                if (v7 <= 0x3F)
                {
                  type metadata accessor for CustomItemRouteModel();
                  if (v8 <= 0x3F)
                  {
                    sub_219BDE674();
                    if (v9 <= 0x3F)
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
    }
  }
}

void sub_218FD0AC8()
{
  if (!qword_27CC146B0)
  {
    type metadata accessor for FCFeedDescriptorConfiguration(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC146B0);
    }
  }
}

uint64_t sub_218FD0B34(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_218C81198(v2);
  }

  v3 = v2[2];
  v20[0] = (v2 + 4);
  v20[1] = v3;
  result = sub_219BF7884();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 8;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v2[3 * i + 6];
        v12 = v9;
        v13 = v8;
        do
        {
          if (*(v13 - 2) >= v11)
          {
            break;
          }

          v14 = *(v13 - 2);
          v15 = *(v13 - 2);
          *(v13 - 3) = *v13;
          v13 -= 3;
          v16 = v13[2];
          v13[4] = v15;
          *(v13 + 1) = v14;
          *(v13 - 1) = v16;
          v13[1] = v11;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 3;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_218FD2930();
      v7 = sub_219BF5A34();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v18[0] = v7 + 32;
    v18[1] = v6;
    sub_218FD0C98(v18, v19, v20, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_218FD0C98(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v92 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_88:
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_218C81048(v7);
      v7 = result;
    }

    v84 = (v7 + 16);
    v85 = *(v7 + 16);
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = (v7 + 16 * v85);
        v87 = *v86;
        v88 = &v84[2 * v85];
        v89 = v88[1];
        sub_218FD1254((*a3 + 24 * *v86), (*a3 + 24 * *v88), *a3 + 24 * v89, v93);
        if (v4)
        {
        }

        if (v89 < v87)
        {
          goto LABEL_114;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_115;
        }

        *v86 = v87;
        v86[1] = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_116;
        }

        v85 = *v84 - 1;
        result = memmove(v88, v88 + 2, 16 * v90);
        *v84 = v85;
        if (v85 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v91 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6 + 16);
      v10 = 24 * v8;
      v11 = *a3 + 24 * v8;
      v12 = *(v11 + 16);
      v13 = v8 + 2;
      v14 = (v11 + 64);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 3;
        v17 = (v12 < v9) ^ (v15 >= v16);
        ++v13;
        v15 = v16;
        if ((v17 & 1) == 0)
        {
          v6 = v13 - 1;
          if (v12 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v12 >= v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 24 * v6 - 8;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v26 + v10);
            v22 = (v26 + v18);
            v23 = *v21;
            v24 = *(v21 + 2);
            v25 = *v22;
            *v21 = *(v22 - 1);
            *(v21 + 2) = v25;
            *(v22 - 1) = v23;
            *v22 = v24;
          }

          ++v20;
          v18 -= 24;
          v10 += 24;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2191F6B60(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v37 = *(v7 + 16);
    v36 = *(v7 + 24);
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      result = sub_2191F6B60((v36 > 1), v37 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v38;
    v39 = v7 + 32;
    v40 = (v7 + 32 + 16 * v37);
    *v40 = v8;
    v40[1] = v6;
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_127;
    }

    if (v37)
    {
      while (1)
      {
        v41 = v38 - 1;
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v42 = *(v7 + 32);
          v43 = *(v7 + 40);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_57:
          if (v45)
          {
            goto LABEL_104;
          }

          v58 = (v7 + 16 * v38);
          v60 = *v58;
          v59 = v58[1];
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_106;
          }

          v64 = (v39 + 16 * v41);
          v66 = *v64;
          v65 = v64[1];
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_111;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v38 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v38 < 2)
        {
          goto LABEL_112;
        }

        v68 = (v7 + 16 * v38);
        v70 = *v68;
        v69 = v68[1];
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_72:
        if (v63)
        {
          goto LABEL_108;
        }

        v71 = (v39 + 16 * v41);
        v73 = *v71;
        v72 = v71[1];
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_110;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v41 - 1 >= v38)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
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

        v79 = (v39 + 16 * (v41 - 1));
        v80 = *v79;
        v81 = (v39 + 16 * v41);
        v82 = v81[1];
        sub_218FD1254((*a3 + 24 * *v79), (*a3 + 24 * *v81), *a3 + 24 * v82, v93);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_99;
        }

        if (v41 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v79 = v80;
        v79[1] = v82;
        v83 = *(v7 + 16);
        if (v41 >= v83)
        {
          goto LABEL_101;
        }

        v38 = v83 - 1;
        result = memmove((v39 + 16 * v41), v81 + 2, 16 * (v83 - 1 - v41));
        *(v7 + 16) = v83 - 1;
        if (v83 <= 2)
        {
          goto LABEL_3;
        }
      }

      v46 = v39 + 16 * v38;
      v47 = *(v46 - 64);
      v48 = *(v46 - 56);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_102;
      }

      v51 = *(v46 - 48);
      v50 = *(v46 - 40);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_103;
      }

      v53 = (v7 + 16 * v38);
      v55 = *v53;
      v54 = v53[1];
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_105;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_107;
      }

      if (v57 >= v49)
      {
        v75 = (v39 + 16 * v41);
        v77 = *v75;
        v76 = v75[1];
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_113;
        }

        if (v44 < v78)
        {
          v41 = v38 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v91;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 24 * v6;
  v29 = v8 - v6;
LABEL_30:
  v30 = *(v27 + 24 * v6 + 16);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (*(v32 - 1) >= v30)
    {
LABEL_29:
      ++v6;
      v28 += 24;
      --v29;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v33 = *v32;
    v34 = v32[1];
    *v32 = *(v32 - 3);
    v32[2] = *(v32 - 1);
    *(v32 - 2) = v34;
    *(v32 - 1) = v30;
    *(v32 - 3) = v33;
    v32 -= 3;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_29;
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
  return result;
}

uint64_t sub_218FD1254(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*(v4 + 2) < *(v6 + 2))
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 24;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 24;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v5 -= 24;
    do
    {
      v16 = (v5 + 24);
      if (*(v6 - 1) < *(v12 - 1))
      {
        v19 = v6 - 24;
        if (v16 != v6)
        {
          v20 = *v19;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v20;
        }

        if (v12 <= v4 || (v6 -= 24, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v17 = v12 - 24;
      if (v16 != v12)
      {
        v18 = *v17;
        *(v5 + 16) = *(v12 - 1);
        *v5 = v18;
      }

      v5 -= 24;
      v12 -= 24;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v21 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v22 = (v21 >> 2) + (v21 >> 63);
  if (v6 != v4 || v6 >= &v4[24 * v22])
  {
    memmove(v6, v4, 24 * v22);
  }

  return 1;
}

uint64_t sub_218FD1490(unint64_t a1, uint64_t a2)
{
  v106 = 0;
  v111 = sub_219BDB774();
  v4 = MEMORY[0x28223BE20](v111);
  v6 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v9 = &v106 - v8;
  v113 = *(a2 + 16);
  if (v113)
  {
    v112 = a2 + 32;
    v110 = (v7 + 8);

    v10 = 0;
    v11 = MEMORY[0x277D84F90];
    v107 = v6;
    v108 = v9;
    while (1)
    {
      v17 = v112 + 40 * v10;
      v18 = *v17;
      v19 = *(v17 + 8);
      v21 = *(v17 + 16);
      v20 = *(v17 + 24);
      v22 = *(v17 + 32);
      v117 = v18;
      v118 = v20;
      v120 = v21;
      if (v22 > 1)
      {
        v116 = v10;
        v115 = v19;
        if (v22 != 2)
        {
          if (a1 >> 62)
          {
            v121 = sub_219BF7214();
            *&v127 = MEMORY[0x277D84F90];
            v60 = sub_219BF7214();
          }

          else
          {
            v60 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
            *&v127 = MEMORY[0x277D84F90];
            v121 = v60;
          }

          sub_218FD2724(v117, v19, v120, v20, 3u);

          if (v60)
          {
            v61 = 0;
            v62 = a1 & 0xC000000000000001;
            v63 = a1 & 0xFFFFFFFFFFFFFF8;
            while (1)
            {
              if (v62)
              {
                v9 = a1;
                v65 = MEMORY[0x21CECE0F0](v61, a1);
              }

              else
              {
                if (v61 >= *(v63 + 16))
                {
                  goto LABEL_139;
                }

                v9 = a1;
                v65 = *(a1 + 8 * v61 + 32);
              }

              v66 = v65;
              v67 = (v61 + 1);
              if (__OFADD__(v61, 1))
              {
                break;
              }

              if (v120(v65))
              {
                sub_219BF73D4();
                sub_219BF7414();
                sub_219BF7424();
                sub_219BF73E4();
              }

              else
              {
              }

              ++v61;
              v64 = v67 == v60;
              a1 = v9;
              if (v64)
              {
                goto LABEL_80;
              }
            }

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
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:

            __break(1u);
            return result;
          }

LABEL_80:

          a1 = v127;
          if ((v127 & 0x8000000000000000) != 0 || (v127 & 0x4000000000000000) != 0)
          {
            v68 = sub_219BF7214();
          }

          else
          {
            v68 = *(v127 + 16);
          }

          v10 = v116;
          v9 = &v121[-v68];
          if (__OFSUB__(v121, v68))
          {
            goto LABEL_145;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_2191F6ED4(0, v11[2] + 1, 1, v11);
          }

          v70 = v11[2];
          v69 = v11[3];
          v71 = v120;
          if (v70 >= v69 >> 1)
          {
            v93 = sub_2191F6ED4((v69 > 1), v70 + 1, 1, v11);
            v71 = v120;
            v11 = v93;
          }

          v32 = v117;
          v28 = v115;
          sub_218FD27F8(v117, v115, v71, v118, 3u);

          v11[2] = v70 + 1;
          v33 = &v11[3 * v70];
          goto LABEL_89;
        }

        v34 = v19;
        v9 = [objc_msgSend(v34 configurationManager)];
        swift_unknownObjectRelease();
        if (!v9)
        {
          goto LABEL_146;
        }

        v35 = [objc_opt_self() transformationWithFilterOptions:v117 configuration:v9 context:v34];
        swift_unknownObjectRelease();
        v121 = [objc_allocWithZone(MEMORY[0x277CCA940]) init];
        if (a1 >> 62)
        {
          sub_218FD28CC();

          sub_219BF7534();
        }

        else
        {

          sub_219BF7924();
          sub_218FD28CC();
        }

        sub_218FD28CC();
        v36 = sub_219BF5904();

        v109 = v35;
        v37 = [v35 transformFeedItemsWithResults_];

        sub_2186C6148(0, &qword_280E8DB98);
        v9 = sub_219BF5924();

        *&v127 = MEMORY[0x277D84F90];
        if (v9 >> 62)
        {
          v119 = v9 & 0xFFFFFFFFFFFFFF8;
          v38 = sub_219BF7214();
          if (v38)
          {
LABEL_26:
            v39 = 0;
            v114 = MEMORY[0x277D84F90];
LABEL_27:
            v40 = v39;
            while (1)
            {
              if ((v9 & 0xC000000000000001) != 0)
              {
                v43 = MEMORY[0x21CECE0F0](v40, v9);
              }

              else
              {
                if (v40 >= *(v119 + 16))
                {
                  goto LABEL_142;
                }

                v43 = *(v9 + 8 * v40 + 32);
              }

              v44 = v43;
              v39 = v40 + 1;
              if (__OFADD__(v40, 1))
              {
                goto LABEL_141;
              }

              if ([v43 isFiltered])
              {
                v41 = v121;
                [v44 filteredReasons];
                v42 = FCFeedFilterOptionToNSString();
                if (!v42)
                {
                  sub_219BF5414();
                  v42 = sub_219BF53D4();
                }

                [v41 addObject_];
              }

              else
              {
                v45 = [v44 item];
                objc_opt_self();
                v46 = swift_dynamicCastObjCClass();

                if (v46)
                {
                  MEMORY[0x21CECC690]();
                  if (*((v127 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v127 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    sub_219BF5A14();
                  }

                  sub_219BF5A54();
                  v114 = v127;
                  if (v39 != v38)
                  {
                    goto LABEL_27;
                  }

                  goto LABEL_116;
                }

                swift_unknownObjectRelease();
              }

              ++v40;
              if (v39 == v38)
              {
                goto LABEL_116;
              }
            }
          }
        }

        else
        {
          v119 = v9 & 0xFFFFFFFFFFFFFF8;
          v38 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v38)
          {
            goto LABEL_26;
          }
        }

        v114 = MEMORY[0x277D84F90];
LABEL_116:

        v72 = v107;
        sub_219BF6AE4();
        sub_219BDB764();
        v10 = v116;
        a1 = v114;
        while (v128)
        {
          sub_2186D1230(&v127, v126);
          swift_dynamicCast();
          v85 = v124;
          v86 = v125;
          sub_218751558(&v127, &v122);
          __swift_project_boxed_opaque_existential_1(&v122, v123);
          v87 = sub_219BF78D4();
          __swift_destroy_boxed_opaque_existential_1(&v122);
          v88 = [v121 countForObject_];
          swift_unknownObjectRelease();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_2191F6ED4(0, v11[2] + 1, 1, v11);
          }

          v90 = v11[2];
          v89 = v11[3];
          v9 = v90 + 1;
          if (v90 >= v89 >> 1)
          {
            v11 = sub_2191F6ED4((v89 > 1), v90 + 1, 1, v11);
          }

          v11[2] = v9;
          v91 = &v11[3 * v90];
          v91[4] = v85;
          v91[5] = v86;
          v91[6] = v88;
          sub_219BDB764();
        }

        v12 = v117;
        v13 = v118;
        v14 = v115;
        v15 = v120;
        v16 = 2;
      }

      else
      {
        if (!v22)
        {
          if (a1 >> 62)
          {
            v23 = sub_219BF7214();
            sub_218FD2724(v117, v19, v21, v20, 0);
            sub_218FD28CC();

            sub_219BF7534();
          }

          else
          {
            v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_218FD2724(v117, v19, v21, v20, 0);

            sub_219BF7924();
            sub_218FD28CC();
          }

          sub_218FD28CC();
          v24 = sub_219BF5904();

          v25 = [v21 transformFeedItems_];

          a1 = sub_219BF5924();
          if (a1 >> 62)
          {
            sub_2186C6148(0, &qword_280E8E800);

            v83 = sub_219BF7534();
            swift_bridgeObjectRelease_n();
            a1 = v83;
          }

          else
          {
            v26 = a1 & 0xFFFFFFFFFFFFFF8;

            sub_219BF7924();
            sub_2186C6148(0, &qword_280E8E800);
            if (swift_dynamicCastMetatype() || (v73 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
            {
            }

            else
            {
              v74 = v19;
              v75 = v26 + 32;
              while (1)
              {
                objc_opt_self();
                if (!swift_dynamicCastObjCClass())
                {
                  break;
                }

                v75 += 8;
                if (!--v73)
                {

                  v19 = v74;
                  goto LABEL_13;
                }
              }

              a1 = v26 | 1;
              v19 = v74;
            }
          }

LABEL_13:
          if (a1 >> 62)
          {
            v84 = sub_219BF7214();
            v9 = v23 - v84;
            if (__OFSUB__(v23, v84))
            {
              goto LABEL_144;
            }
          }

          else
          {
            v27 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v9 = v23 - v27;
            if (__OFSUB__(v23, v27))
            {
              goto LABEL_144;
            }
          }

          v28 = v19;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_2191F6ED4(0, v11[2] + 1, 1, v11);
          }

          v30 = v11[2];
          v29 = v11[3];
          v31 = v120;
          if (v30 >= v29 >> 1)
          {
            v92 = sub_2191F6ED4((v29 > 1), v30 + 1, 1, v11);
            v31 = v120;
            v11 = v92;
          }

          v32 = v117;
          sub_218FD27F8(v117, v19, v31, v118, 0);
          v11[2] = v30 + 1;
          v33 = &v11[3 * v30];
LABEL_89:
          v33[4] = v32;
          v33[5] = v28;
          v33[6] = v9;
          goto LABEL_5;
        }

        v47 = objc_allocWithZone(MEMORY[0x277CCA940]);
        v48 = v117;
        v121 = [v47 init];
        if (a1 >> 62)
        {
          sub_218FD28CC();

          sub_219BF7534();
        }

        else
        {

          sub_219BF7924();
          sub_218FD28CC();
        }

        sub_218FD28CC();
        v49 = sub_219BF5904();

        v50 = [v48 transformFeedItemsWithResults_];

        sub_2186C6148(0, &qword_280E8DB98);
        v9 = sub_219BF5924();

        *&v127 = MEMORY[0x277D84F90];
        v119 = v9 & 0xFFFFFFFFFFFFFF8;
        if (v9 >> 62)
        {
          v51 = sub_219BF7214();
        }

        else
        {
          v51 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v115 = v19;
        v116 = v10;
        if (v51)
        {
          v52 = 0;
          v114 = MEMORY[0x277D84F90];
LABEL_50:
          v53 = v52;
          while (1)
          {
            if ((v9 & 0xC000000000000001) != 0)
            {
              v56 = MEMORY[0x21CECE0F0](v53, v9);
            }

            else
            {
              if (v53 >= *(v119 + 16))
              {
                goto LABEL_140;
              }

              v56 = *(v9 + 8 * v53 + 32);
            }

            v57 = v56;
            v52 = v53 + 1;
            if (__OFADD__(v53, 1))
            {
              goto LABEL_138;
            }

            if ([v56 isFiltered])
            {
              v54 = v121;
              [v57 filteredReasons];
              v55 = FCFeedFilterOptionToNSString();
              if (!v55)
              {
                sub_219BF5414();
                v55 = sub_219BF53D4();
              }

              [v54 addObject_];
            }

            else
            {
              v58 = [v57 item];
              objc_opt_self();
              v59 = swift_dynamicCastObjCClass();

              if (v59)
              {
                MEMORY[0x21CECC690]();
                if (*((v127 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v127 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_219BF5A14();
                }

                sub_219BF5A54();
                v114 = v127;
                if (v52 != v51)
                {
                  goto LABEL_50;
                }

                goto LABEL_91;
              }

              swift_unknownObjectRelease();
            }

            ++v53;
            if (v52 == v51)
            {
              goto LABEL_91;
            }
          }
        }

        v114 = MEMORY[0x277D84F90];
LABEL_91:

        v72 = v108;
        sub_219BF6AE4();
        sub_219BDB764();
        v10 = v116;
        a1 = v114;
        while (v128)
        {
          sub_2186D1230(&v127, v126);
          swift_dynamicCast();
          v76 = v124;
          v77 = v125;
          sub_218751558(&v127, &v122);
          __swift_project_boxed_opaque_existential_1(&v122, v123);
          v78 = sub_219BF78D4();
          __swift_destroy_boxed_opaque_existential_1(&v122);
          v79 = [v121 countForObject_];
          swift_unknownObjectRelease();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_2191F6ED4(0, v11[2] + 1, 1, v11);
          }

          v81 = v11[2];
          v80 = v11[3];
          v9 = v81 + 1;
          if (v81 >= v80 >> 1)
          {
            v11 = sub_2191F6ED4((v80 > 1), v81 + 1, 1, v11);
          }

          v11[2] = v9;
          v82 = &v11[3 * v81];
          v82[4] = v76;
          v82[5] = v77;
          v82[6] = v79;
          sub_219BDB764();
        }

        v12 = v117;
        v13 = v118;
        v14 = v115;
        v15 = v120;
        v16 = 1;
      }

      sub_218FD27F8(v12, v14, v15, v13, v16);
      (*v110)(v72, v111);

LABEL_5:
      if (++v10 == v113)
      {
        goto LABEL_125;
      }
    }
  }

  v11 = MEMORY[0x277D84F90];
LABEL_125:
  v94 = 0;
  v95 = v11[2];
  v96 = MEMORY[0x277D84F90];
LABEL_126:
  v97 = &v11[3 * v94 + 6];
  while (v95 != v94)
  {
    if (v94 >= v11[2])
    {
      goto LABEL_143;
    }

    ++v94;
    v98 = v97 + 3;
    v99 = *v97;
    v97 += 3;
    if (v99 > 0)
    {
      v114 = a1;
      v100 = *(v98 - 5);
      v9 = *(v98 - 4);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v127 = v96;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_218C348E8(0, *(v96 + 16) + 1, 1);
        v96 = v127;
      }

      v103 = *(v96 + 16);
      v102 = *(v96 + 24);
      if (v103 >= v102 >> 1)
      {
        sub_218C348E8((v102 > 1), v103 + 1, 1);
        v96 = v127;
      }

      *(v96 + 16) = v103 + 1;
      v104 = (v96 + 24 * v103);
      v104[4] = v100;
      v104[5] = v9;
      v104[6] = v99;
      a1 = v114;
      goto LABEL_126;
    }
  }

  *&v127 = v96;

  v9 = v106;
  sub_218FD0B34(&v127);
  if (v9)
  {
    goto LABEL_147;
  }

  return a1;
}

uint64_t sub_218FD25C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v13 = MEMORY[0x277D84F90];
    sub_21870B65C(0, v1, 0);
    v2 = v13;
    v4 = a1 + 48;
    do
    {
      v11 = *(v4 - 16);
      v12 = *(v4 - 8);
      swift_bridgeObjectRetain_n();
      MEMORY[0x21CECC330](8250, 0xE200000000000000);
      v5 = sub_219BF7894();
      MEMORY[0x21CECC330](v5);

      v7 = *(v13 + 16);
      v6 = *(v13 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_21870B65C((v6 > 1), v7 + 1, 1);
      }

      v4 += 24;
      *(v13 + 16) = v7 + 1;
      v8 = v13 + 16 * v7;
      *(v8 + 32) = v11;
      *(v8 + 40) = v12;
      --v1;
    }

    while (v1);
  }

  v9 = MEMORY[0x21CECC6D0](v2, MEMORY[0x277D837D0]);

  return v9;
}

id sub_218FD2724(id result, void *a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 > 1u)
  {
    if (a5 == 2)
    {

      return a2;
    }

    else if (a5 == 3)
    {
    }
  }

  else if (a5)
  {
    if (a5 == 1)
    {

      return result;
    }
  }

  else
  {

    return swift_unknownObjectRetain();
  }

  return result;
}

void sub_218FD27F8(void *a1, void *a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 > 1u)
  {
    if (a5 == 2)
    {
    }

    else if (a5 == 3)
    {
    }
  }

  else if (a5)
  {
    if (a5 == 1)
    {
    }
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

unint64_t sub_218FD28CC()
{
  result = qword_280E8DE80[0];
  if (!qword_280E8DE80[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_280E8DE80);
  }

  return result;
}

void sub_218FD2930()
{
  if (!qword_280E8F700)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8F700);
    }
  }
}

uint64_t sub_218FD299C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 33))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_218FD29E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_218FD2A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v7 = sub_219BEE274();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v28 = (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v27 - v12);
  MEMORY[0x28223BE20](v11);
  v15 = (&v27 - v14);
  if (!*(a1 + 16))
  {
    v16 = MEMORY[0x277D84F90];
    if (!*(a2 + 16))
    {
      goto LABEL_5;
    }

LABEL_12:
    *v13 = a2;
    (*(v8 + 104))(v13, *MEMORY[0x277D31F90], v7);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_2191F70C4(0, v16[2] + 1, 1, v16);
    }

    v25 = v16[2];
    v24 = v16[3];
    if (v25 >= v24 >> 1)
    {
      v16 = sub_2191F70C4(v24 > 1, v25 + 1, 1, v16);
    }

    v16[2] = v25 + 1;
    (*(v8 + 32))(v16 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v25, v13, v7);
    if (*(a4 + 16))
    {
      goto LABEL_6;
    }

LABEL_17:

    return sub_219BEE594();
  }

  *v15 = a1;
  (*(v8 + 104))(&v27 - v14, *MEMORY[0x277D31F98], v7);

  v16 = sub_2191F70C4(0, 1, 1, MEMORY[0x277D84F90]);
  v18 = v16[2];
  v17 = v16[3];
  if (v18 >= v17 >> 1)
  {
    v16 = sub_2191F70C4(v17 > 1, v18 + 1, 1, v16);
  }

  v16[2] = v18 + 1;
  (*(v8 + 32))(v16 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v18, v15, v7);
  if (*(a2 + 16))
  {
    goto LABEL_12;
  }

LABEL_5:
  if (!*(a4 + 16))
  {
    goto LABEL_17;
  }

LABEL_6:

  v20 = sub_218C40680(v19);

  v21 = v28;
  *v28 = v20;
  (*(v8 + 104))(v21, *MEMORY[0x277D31F88], v7);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = sub_2191F70C4(0, v16[2] + 1, 1, v16);
  }

  v23 = v16[2];
  v22 = v16[3];
  if (v23 >= v22 >> 1)
  {
    v16 = sub_2191F70C4(v22 > 1, v23 + 1, 1, v16);
  }

  v16[2] = v23 + 1;
  (*(v8 + 32))(v16 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v23, v21, v7);
  return sub_219BEE594();
}

void sub_218FD303C(void *a1)
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

uint64_t sub_218FD3110(void *a1)
{
  if ([*(v1 + 64) useOfflineMode] && (__swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40)), (sub_219BEED44() & 1) != 0))
  {
    v3 = [*(v1 + 56) listenableArticleIDs];
    v4 = sub_219BF5D44();

    v5 = [a1 identifier];
    v6 = sub_219BF5414();
    v8 = v7;

    LOBYTE(v5) = sub_2188537B8(v6, v8, v4);

    v9 = v5 ^ 1;
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_218FD32EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a2;
  v78 = a3;
  sub_218FD48C0(0, &qword_27CC0C468, sub_2187148B8);
  MEMORY[0x28223BE20](v4 - 8);
  v64 = &v62 - v5;
  v68 = type metadata accessor for RecipeListRecipeBoxFeedGroupKnobs();
  v65 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v66 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FD48C0(0, &qword_27CC0E568, type metadata accessor for RecipeListRecipeBoxFeedGroupKnobs);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v67 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v62 - v10;
  v72 = type metadata accessor for RecipeBoxFeedGroupKnobs();
  v77 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v71 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FD48C0(0, &qword_27CC10258, type metadata accessor for RecipeBoxFeedGroupKnobs);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v70 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v76 = &v62 - v16;
  sub_218FD48C0(0, &qword_27CC14700, type metadata accessor for RecipeBoxFeedKnobsConfig);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v62 - v18;
  v79 = type metadata accessor for RecipeBoxFeedKnobsConfig();
  v20 = *(v79 - 8);
  v21 = MEMORY[0x28223BE20](v79);
  v69 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v73 = &v62 - v23;
  sub_218FD48C0(0, &qword_27CC14708, type metadata accessor for RecipeBoxFeedConfig);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v62 - v25;
  v27 = type metadata accessor for RecipeBoxFeedConfig();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = a1;
  sub_218FD4914(a1, v26, &qword_27CC14708, type metadata accessor for RecipeBoxFeedConfig);
  v31 = *(v28 + 48);
  if (v31(v26, 1, v27) == 1)
  {
    v32 = sub_219BDBD34();
    (*(*(v32 - 8) + 56))(v30, 1, 1, v32);
    v33 = *(v27 + 24);
    v34 = sub_219BEE5B4();
    (*(*(v34 - 8) + 56))(&v30[v33], 1, 1, v34);
    *&v30[*(v27 + 20)] = MEMORY[0x277D84F90];
    if (v31(v26, 1, v27) != 1)
    {
      sub_218FD4980(v26, &qword_27CC14708, type metadata accessor for RecipeBoxFeedConfig);
    }
  }

  else
  {
    sub_218FD49DC(v26, v30, type metadata accessor for RecipeBoxFeedConfig);
  }

  v35 = v78;
  sub_218FD49DC(v30, v78, type metadata accessor for RecipeBoxFeedConfig);
  v36 = v74;
  sub_218FD4914(v74, v19, &qword_27CC14700, type metadata accessor for RecipeBoxFeedKnobsConfig);
  v37 = *(v20 + 48);
  v38 = v37(v19, 1, v79);
  v39 = v76;
  if (v38 == 1)
  {
    v63 = v37;
    v40 = v77;
    v41 = v72;
    (*(v77 + 56))(v76, 1, 1, v72);
    v42 = v70;
    sub_218FD4914(v39, v70, &qword_27CC10258, type metadata accessor for RecipeBoxFeedGroupKnobs);
    v43 = *(v40 + 48);
    v77 = v40 + 48;
    if (v43(v42, 1, v41) == 1)
    {
      v62 = v43;
      v44 = v65;
      v45 = v68;
      (*(v65 + 56))(v11, 1, 1, v68);
      v46 = v67;
      sub_218FD4914(v11, v67, &qword_27CC0E568, type metadata accessor for RecipeListRecipeBoxFeedGroupKnobs);
      v47 = *(v44 + 48);
      v48 = v47(v46, 1, v45);
      v49 = v71;
      if (v48 == 1)
      {
        sub_2187148B8(0);
        v51 = v64;
        (*(*(v50 - 8) + 56))(v64, 1, 1, v50);
        v52 = v66;
        v53 = v51;
        v54 = v67;
        sub_2189E3688(v53, v66);
        sub_218FD4980(v11, &qword_27CC0E568, type metadata accessor for RecipeListRecipeBoxFeedGroupKnobs);
        if (v47(v54, 1, v68) != 1)
        {
          sub_218FD4980(v54, &qword_27CC0E568, type metadata accessor for RecipeListRecipeBoxFeedGroupKnobs);
        }
      }

      else
      {
        sub_218FD4980(v11, &qword_27CC0E568, type metadata accessor for RecipeListRecipeBoxFeedGroupKnobs);
        v52 = v66;
        sub_218FD49DC(v46, v66, type metadata accessor for RecipeListRecipeBoxFeedGroupKnobs);
      }

      sub_218FD49DC(v52, v49, type metadata accessor for RecipeListRecipeBoxFeedGroupKnobs);
      sub_218FD4980(v36, &qword_27CC14700, type metadata accessor for RecipeBoxFeedKnobsConfig);
      sub_218FD4980(v75, &qword_27CC14708, type metadata accessor for RecipeBoxFeedConfig);
      sub_218FD4980(v76, &qword_27CC10258, type metadata accessor for RecipeBoxFeedGroupKnobs);
      v56 = v62(v42, 1, v72);
      v35 = v78;
      if (v56 != 1)
      {
        sub_218FD4980(v42, &qword_27CC10258, type metadata accessor for RecipeBoxFeedGroupKnobs);
      }
    }

    else
    {
      sub_218FD4980(v36, &qword_27CC14700, type metadata accessor for RecipeBoxFeedKnobsConfig);
      sub_218FD4980(v75, &qword_27CC14708, type metadata accessor for RecipeBoxFeedConfig);
      sub_218FD4980(v39, &qword_27CC10258, type metadata accessor for RecipeBoxFeedGroupKnobs);
      v49 = v71;
      sub_218FD49DC(v42, v71, type metadata accessor for RecipeBoxFeedGroupKnobs);
    }

    v57 = v69;
    sub_218FD49DC(v49, v69, type metadata accessor for RecipeBoxFeedGroupKnobs);
    v58 = v79;
    *(v57 + *(v79 + 20)) = 0x7FFFFFFFFFFFFFFFLL;
    v59 = v57;
    v55 = v73;
    sub_218FD49DC(v59, v73, type metadata accessor for RecipeBoxFeedKnobsConfig);
    if (v63(v19, 1, v58) != 1)
    {
      sub_218FD4980(v19, &qword_27CC14700, type metadata accessor for RecipeBoxFeedKnobsConfig);
    }
  }

  else
  {
    sub_218FD4980(v36, &qword_27CC14700, type metadata accessor for RecipeBoxFeedKnobsConfig);
    sub_218FD4980(v75, &qword_27CC14708, type metadata accessor for RecipeBoxFeedConfig);
    v55 = v73;
    sub_218FD49DC(v19, v73, type metadata accessor for RecipeBoxFeedKnobsConfig);
  }

  v60 = type metadata accessor for RecipeBoxFeedContentConfig();
  return sub_218FD49DC(v55, v35 + *(v60 + 20), type metadata accessor for RecipeBoxFeedKnobsConfig);
}

uint64_t sub_218FD3DEC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  sub_218FD48C0(0, &qword_27CC14700, type metadata accessor for RecipeBoxFeedKnobsConfig);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  sub_218FD48C0(0, &qword_27CC14708, type metadata accessor for RecipeBoxFeedConfig);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  sub_218FD47C8();
  v11 = v10;
  v15 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218FD4824();
  sub_219BF7B34();
  if (!v2)
  {
    type metadata accessor for RecipeBoxFeedConfig();
    v19 = 0;
    sub_218FD4878(&qword_27CC14720, type metadata accessor for RecipeBoxFeedConfig);
    sub_219BF7674();
    type metadata accessor for RecipeBoxFeedKnobsConfig();
    v18 = 1;
    v17 = 2;
    sub_218FD4878(&qword_27CC14728, type metadata accessor for RecipeBoxFeedKnobsConfig);
    sub_219BF7664();
    sub_218FD32EC(v9, v6, v16);
    (*(v15 + 8))(v13, v11);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218FD40C0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E6F4373626F6E6BLL;
  v4 = 0xEB00000000676966;
  v5 = 0x8000000219CD6A50;
  if (v2 != 1)
  {
    v3 = 0xD000000000000012;
    v4 = 0x8000000219CD6A50;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x666E6F4364656566;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xEA00000000006769;
  }

  v8 = 0x6E6F4373626F6E6BLL;
  if (*a2 == 1)
  {
    v5 = 0xEB00000000676966;
  }

  else
  {
    v8 = 0xD000000000000012;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x666E6F4364656566;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xEA00000000006769;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_219BF78F4();
  }

  return v11 & 1;
}

uint64_t sub_218FD41CC()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_218FD4280()
{
  sub_219BF5524();
}

uint64_t sub_218FD4320()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_218FD43D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_218FD4BC4();
  *a1 = result;
  return result;
}

void sub_218FD4400(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006769;
  v4 = 0xEB00000000676966;
  v5 = 0x6E6F4373626F6E6BLL;
  if (v2 != 1)
  {
    v5 = 0xD000000000000012;
    v4 = 0x8000000219CD6A50;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x666E6F4364656566;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_218FD4470()
{
  v1 = 0x6E6F4373626F6E6BLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x666E6F4364656566;
  }
}

uint64_t sub_218FD44DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_218FD4BC4();
  *a1 = result;
  return result;
}

uint64_t sub_218FD4504(uint64_t a1)
{
  v2 = sub_218FD4824();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218FD4540(uint64_t a1)
{
  v2 = sub_218FD4824();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218FD4600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_218FD48C0(0, &qword_27CC14700, type metadata accessor for RecipeBoxFeedKnobsConfig);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  sub_218FD48C0(0, &qword_27CC14708, type metadata accessor for RecipeBoxFeedConfig);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - v11;
  sub_218FD4A44(a1, &v16 - v11, type metadata accessor for RecipeBoxFeedConfig);
  v13 = type metadata accessor for RecipeBoxFeedConfig();
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  sub_218FD4A44(v3 + *(a2 + 20), v9, type metadata accessor for RecipeBoxFeedKnobsConfig);
  v14 = type metadata accessor for RecipeBoxFeedKnobsConfig();
  (*(*(v14 - 8) + 56))(v9, 0, 1, v14);
  return sub_218FD32EC(v12, v9, a3);
}

void sub_218FD47C8()
{
  if (!qword_27CC14710)
  {
    sub_218FD4824();
    v0 = sub_219BF7774();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC14710);
    }
  }
}

unint64_t sub_218FD4824()
{
  result = qword_27CC14718;
  if (!qword_27CC14718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14718);
  }

  return result;
}

uint64_t sub_218FD4878(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_218FD48C0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_218FD4914(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_218FD48C0(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_218FD4980(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_218FD48C0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218FD49DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218FD4A44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_218FD4AC0()
{
  result = qword_27CC14730;
  if (!qword_27CC14730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14730);
  }

  return result;
}

unint64_t sub_218FD4B18()
{
  result = qword_27CC14738;
  if (!qword_27CC14738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14738);
  }

  return result;
}

unint64_t sub_218FD4B70()
{
  result = qword_27CC14740;
  if (!qword_27CC14740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14740);
  }

  return result;
}

uint64_t sub_218FD4BC4()
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

unint64_t sub_218FD4C10()
{
  v1 = v0;
  sub_218C3F4B4();
  sub_219BE8184();
  result = sub_219BE9604();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (result >= *(v32 + 16))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v3 = v32 + 80 * result;
  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  v6 = *(v3 + 80);
  v7 = *(v3 + 88);
  v8 = *(v3 + 104);

  if (v8)
  {
    sub_218DB6B50();
    v9 = sub_219BF6414();
    v10 = __swift_project_boxed_opaque_existential_1(v1 + 12, v1[15]);
    v11 = sub_219BE8204();
    v12 = __swift_project_boxed_opaque_existential_1((*v10 + 16), *(*v10 + 40));
    v13 = *(*__swift_project_boxed_opaque_existential_1((*v12 + 16), *(*v12 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 72);
    sub_219BE60D4();
  }

  else
  {
    sub_218FD5434();
    v9 = sub_219BF6414();
    v14 = __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
    sub_218B7E0BC(0);
    sub_219BE6934();
    sub_219584B8C(v31);
    v15 = sub_219BE8204();
    v30 = OBJC_IVAR____TtC7NewsUI228MyMagazinesSectionHeaderView_label;
    v29 = *&v15[OBJC_IVAR____TtC7NewsUI228MyMagazinesSectionHeaderView_label];
    v16 = *__swift_project_boxed_opaque_existential_1((*v14 + 16), *(*v14 + 40));
    sub_219BF54E4();
    sub_21899E550();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_219C09EC0;
    v18 = *MEMORY[0x277D740A8];
    *(inited + 32) = *MEMORY[0x277D740A8];
    v19 = sub_2186C6148(0, &qword_280E8DB00);
    v20 = v18;
    *(inited + 40) = sub_219BF6BD4();
    v21 = *MEMORY[0x277D740C0];
    *(inited + 64) = v19;
    *(inited + 72) = v21;
    v22 = *(*__swift_project_boxed_opaque_existential_1((v16 + 16), *(v16 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 48);
    *(inited + 104) = sub_2186C6148(0, &qword_280E8DA80);
    *(inited + 80) = v22;
    v23 = v21;
    v24 = v22;
    sub_2188195F4(inited);
    swift_setDeallocating();
    sub_218819588();
    swift_arrayDestroy();
    v25 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v26 = sub_219BF53D4();

    type metadata accessor for Key(0);
    sub_218FD54C8(&qword_280E8E118, type metadata accessor for Key);
    v27 = sub_219BF5204();

    v28 = [v25 initWithString:v26 attributes:v27];

    [v29 setAttributedText_];
    [*&v15[v30] setFrame_];
  }

  return v9;
}

uint64_t sub_218FD50D4()
{
  v1 = sub_219BE9834();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((*v0 + 56), *(*v0 + 80));
  sub_219BF0254();
  sub_218FD5434();
  v5 = *MEMORY[0x277D6E758];
  v6 = *(v2 + 104);
  v6(v4, v5, v1);
  sub_219BF6444();
  v7 = *(v2 + 8);
  v7(v4, v1);
  sub_218DB6B50();
  v6(v4, v5, v1);
  sub_219BF6444();
  return (v7)(v4, v1);
}

uint64_t sub_218FD52A4()
{
  v1 = sub_219BEF974();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MyMagazinesLayoutModel();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v0;
  sub_218C3F5C0();
  sub_219BE75E4();
  (*(v2 + 32))(v4, v7, v1);
  __swift_project_boxed_opaque_existential_1((v8 + 56), *(v8 + 80));
  v9 = sub_219BF0244();
  (*(v2 + 8))(v4, v1);
  return v9;
}

void sub_218FD5434()
{
  if (!qword_27CC14748)
  {
    type metadata accessor for MyMagazinesSectionHeaderView();
    sub_218FD54C8(&qword_27CC14750, type metadata accessor for MyMagazinesSectionHeaderView);
    v0 = sub_219BE8224();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC14748);
    }
  }
}

uint64_t sub_218FD54C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218FD5610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[42] = a4;
  v5[43] = v4;
  v5[40] = a2;
  v5[41] = a3;
  v5[39] = a1;
  v5[44] = type metadata accessor for TagsSearchMoreFeedGroup();
  v5[45] = swift_task_alloc();
  v5[46] = type metadata accessor for RecipesSearchMoreFeedGroup();
  v5[47] = swift_task_alloc();
  v5[48] = type metadata accessor for SearchMoreLayoutModel();
  v5[49] = swift_task_alloc();
  v6 = sub_219BEF974();
  v5[50] = v6;
  v5[51] = *(v6 - 8);
  v5[52] = swift_task_alloc();
  sub_218C3EBC8();
  v5[53] = v7;
  v5[54] = *(v7 - 8);
  v5[55] = swift_task_alloc();
  v5[56] = swift_task_alloc();
  v5[57] = swift_task_alloc();
  v5[58] = swift_task_alloc();
  sub_2189BD6B0(0, &qword_280EE9048, MEMORY[0x277D6D1A0]);
  v5[59] = swift_task_alloc();
  v5[60] = swift_task_alloc();
  v5[61] = swift_task_alloc();
  v5[62] = swift_task_alloc();
  v8 = sub_219BDCB14();
  v5[63] = v8;
  v5[64] = *(v8 - 8);
  v5[65] = swift_task_alloc();
  v5[66] = swift_task_alloc();
  v5[67] = swift_task_alloc();
  sub_2189BD6B0(0, &qword_280E91990, MEMORY[0x277D32218]);
  v5[68] = swift_task_alloc();
  v9 = sub_219BED8D4();
  v5[69] = v9;
  v5[70] = *(v9 - 8);
  v5[71] = swift_task_alloc();
  sub_2189BD6B0(0, &qword_280E91548, MEMORY[0x277D325F8]);
  v5[72] = swift_task_alloc();
  sub_2189BD6B0(0, &qword_280E924F8, MEMORY[0x277D31DD0]);
  v5[73] = swift_task_alloc();
  v10 = sub_219BF1904();
  v5[74] = v10;
  v5[75] = *(v10 - 8);
  v5[76] = swift_task_alloc();
  v5[77] = type metadata accessor for ArticlesSearchMoreFeedGroup();
  v5[78] = swift_task_alloc();
  v11 = sub_219BEE074();
  v5[79] = v11;
  v5[80] = *(v11 - 8);
  v5[81] = swift_task_alloc();
  v5[82] = swift_task_alloc();
  v5[83] = swift_task_alloc();
  v5[84] = swift_task_alloc();
  v5[85] = swift_task_alloc();
  v12 = sub_219BE9FA4();
  v5[86] = v12;
  v5[87] = *(v12 - 8);
  v5[88] = swift_task_alloc();
  v5[89] = swift_task_alloc();
  v5[90] = swift_task_alloc();
  v5[91] = swift_task_alloc();
  v5[92] = type metadata accessor for SearchMoreSectionDescriptor();
  v5[93] = swift_task_alloc();
  sub_218FD8C48(0, &qword_27CC13A90, MEMORY[0x277D6D710]);
  v5[94] = v13;
  v5[95] = *(v13 - 8);
  v5[96] = swift_task_alloc();
  sub_218C3EC5C();
  v5[97] = v14;
  v5[98] = *(v14 - 8);
  v5[99] = swift_task_alloc();
  v15 = sub_219BE8164();
  v5[100] = v15;
  v5[101] = *(v15 - 8);
  v5[102] = swift_task_alloc();
  sub_219BEF6B4();
  v5[103] = swift_task_alloc();
  v16 = sub_219BEF594();
  v5[104] = v16;
  v5[105] = *(v16 - 8);
  v5[106] = swift_task_alloc();
  sub_219BEF5B4();
  v5[107] = swift_task_alloc();
  sub_219BEF604();
  v5[108] = swift_task_alloc();
  sub_219BEF644();
  v5[109] = swift_task_alloc();
  sub_219BEF664();
  v5[110] = swift_task_alloc();
  v17 = sub_219BEF694();
  v5[111] = v17;
  v5[112] = *(v17 - 8);
  v5[113] = swift_task_alloc();
  sub_2189BD6B0(0, &qword_280E91358, MEMORY[0x277D326A8]);
  v5[114] = swift_task_alloc();
  sub_2189BD6B0(0, &qword_280E91368, MEMORY[0x277D32698]);
  v5[115] = swift_task_alloc();
  v18 = sub_219BEF6C4();
  v5[116] = v18;
  v5[117] = *(v18 - 8);
  v5[118] = swift_task_alloc();
  sub_219BDCAF4();
  v5[119] = swift_task_alloc();
  v19 = sub_219BDCAE4();
  v5[120] = v19;
  v5[121] = *(v19 - 8);
  v5[122] = swift_task_alloc();
  v20 = sub_219BDCAB4();
  v5[123] = v20;
  v5[124] = *(v20 - 8);
  v5[125] = swift_task_alloc();
  sub_2189BD6B0(0, &unk_280E90C60, MEMORY[0x277D32FE0]);
  v5[126] = swift_task_alloc();
  v21 = sub_219BF0634();
  v5[127] = v21;
  v5[128] = *(v21 - 8);
  v5[129] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218FD60FC, 0, 0);
}

uint64_t sub_218FD60FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_27CC08540 != -1)
  {
LABEL_47:
    swift_once();
  }

  v209 = v8[129];
  v216 = v8[128];
  v214 = v8[127];
  v9 = v8[126];
  v10 = v8[125];
  v11 = v8[124];
  v12 = v8[123];
  v13 = v8[122];
  v221 = v8[121];
  v226 = v8[120];
  v211 = v8[118];
  v213 = v8[117];
  v218 = v8[116];
  v188 = v8[115];
  v191 = v8[114];
  v14 = v8[112];
  v193 = v8[113];
  v195 = v8[111];
  v203 = v8[106];
  v199 = v8[105];
  v204 = v8[104];
  v207 = v8[103];
  v236 = v8[101];
  v237 = v8[102];
  v233 = v8[100];
  v15 = v8[41];
  (*(v216 + 104))(v209, *MEMORY[0x277D32E28], v214, a4, a5, a6, a7, a8, v167, v168, v169, v170);
  v16 = sub_219BF0BD4();
  (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  (*(v11 + 104))(v10, *MEMORY[0x277D6D178], v12);
  sub_219BE8004();
  sub_219BF6B74();
  sub_219BE8004();
  sub_219BE8044();
  sub_219BE7FD4();
  sub_219BE8064();
  v171 = v17;
  sub_219BE8034();
  sub_219BE7FF4();
  v19 = v18;
  v21 = v20;
  sub_219BE8024();
  v220 = v8;
  sub_219BE8084();
  sub_219BE8014();
  sub_219BEE674();
  sub_219BEE664();
  sub_219BEE654();

  v169 = v19;
  v170 = v21;
  v168 = v171;
  sub_219BDCAC4();
  v22 = sub_219BEF624();
  (*(*(v22 - 8) + 56))(v188, 1, 1, v22);
  v23 = sub_219BEF684();
  (*(*(v23 - 8) + 56))(v191, 1, 1, v23);
  (*(v14 + 104))(v193, *MEMORY[0x277D326B0], v195);
  sub_219BEF654();
  sub_219BEF5F4();
  sub_219BEF5F4();
  (*(v199 + 104))(v203, *MEMORY[0x277D32680], v204);
  sub_219BEF5A4();
  sub_219BEF6A4();

  v167 = v207;
  sub_219BEF5C4();
  sub_219BEE0E4();
  (*(v213 + 8))(v211, v218);
  (*(v221 + 8))(v13, v226);
  (*(v11 + 8))(v10, v12);
  sub_218864B10(v9, &unk_280E90C60, MEMORY[0x277D32FE0]);
  (*(v216 + 8))(v209, v214);
  (*(v236 + 16))(v237, v15, v233);
  sub_218F936D8();
  sub_218FD8DF0(&qword_27CC13F70, sub_218F936D8);
  v24 = sub_219BF5E44();
  if (v24)
  {
    v25 = v24;
    v240 = MEMORY[0x277D84F90];
    sub_218C36528(0, v24 & ~(v24 >> 63), 0);
    v26 = v240;
    result = sub_219BF5DF4();
    if ((v25 & 0x8000000000000000) == 0)
    {
      v28 = 0;
      v29 = v8[95];
      v30 = v8[80];
      v175 = v8[77];
      v210 = (v8[87] + 104);
      v212 = (v29 + 16);
      v205 = (v30 + 8);
      v194 = v8[51];
      v238 = (v194 + 8);
      v239 = v8[54];
      v215 = (v29 + 8);
      v200 = (v8[75] + 8);
      v201 = (v8[70] + 16);
      v202 = (v8[64] + 8);
      v173 = v8[44];
      v174 = v8[46];
      v198 = (v30 + 16);
      v172 = *MEMORY[0x277D6E9B0];
      v206 = v8[98];
      v197 = *MEMORY[0x277D6E980];
      v196 = *MEMORY[0x277D6E988];
      v208 = v25;
      while (1)
      {
        v31 = __OFADD__(v28, 1);
        v32 = v28 + 1;
        if (v31)
        {
          __break(1u);
          goto LABEL_47;
        }

        v33 = v8[96];
        v34 = sub_219BF5EC4();
        (*v212)(v33);
        v34(v220 + 22, 0);
        sub_219BE6934();
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v217 = v26;
        v219 = v32;
        if (EnumCaseMultiPayload > 1)
        {
          if (EnumCaseMultiPayload != 2)
          {
            v135 = v220[91];
            v136 = v220[86];
            v220[36] = 0;
            v220[37] = 0;
            v220[35] = 0;
            (*v210)(v135, v172, v136);
            sub_218FD8E38();
            *(v220 + 17) = 0u;
            *(v220 + 19) = 0u;
            v220[21] = 0;
            sub_219BEE0A4();
            v137 = v220[85];
            v138 = v220[79];
            sub_218864B10((v220 + 17), &qword_280E91020, sub_2189BD704);
            v139 = sub_219BEE004();
            (*v205)(v137, v138);
            v140 = *(v139 + 16);
            if (v140)
            {
              v244 = MEMORY[0x277D84F90];
              sub_218C36578(0, v140, 0);
              v141 = v139 + ((*(v194 + 80) + 32) & ~*(v194 + 80));
              v225 = *(v194 + 16);
              v232 = *(v194 + 72);
              do
              {
                v142 = v220[52];
                v144 = v220[49];
                v143 = v220[50];
                v225(v142, v141, v143);
                v225(v144, v142, v143);
                sub_218FD8DF0(&qword_27CC0F490, type metadata accessor for SearchMoreLayoutModel);
                sub_219BE75D4();
                (*v238)(v142, v143);
                v145 = *(v244 + 16);
                v146 = *(v244 + 24);
                if (v145 >= v146 >> 1)
                {
                  sub_218C36578(v146 > 1, v145 + 1, 1);
                }

                v147 = v220[55];
                v148 = v220[53];
                *(v244 + 16) = v145 + 1;
                (*(v239 + 32))(v244 + ((*(v239 + 80) + 32) & ~*(v239 + 80)) + *(v239 + 72) * v145, v147, v148);
                v141 += v232;
                --v140;
              }

              while (v140);

              v26 = v217;
            }

            else
            {
            }

            v160 = v220[96];
            v161 = v220[94];
            sub_218FD8D9C();
            sub_218FD8DF0(&qword_27CC14770, type metadata accessor for SearchMoreLayoutModel);
            sub_219BE81A4();
            (*v215)(v160, v161);
            goto LABEL_40;
          }

          v69 = v220[76];
          v177 = v220[74];
          v70 = v220[73];
          v71 = v220[72];
          v72 = v220[71];
          v73 = v220[69];
          v229 = v220[94];
          v74 = v220[68];
          v180 = v220[62];
          v183 = v220[61];
          v186 = v220[60];
          v189 = v220[59];
          v75 = v220[45];
          sub_2189650B8(v220[93], v75, type metadata accessor for TagsSearchMoreFeedGroup);
          v76 = *(v173 + 20);
          sub_219BED874();
          v77 = sub_219BEDB64();
          (*(*(v77 - 8) + 56))(v70, 1, 1, v77);
          (*v201)(v72, v75 + v76, v73);
          sub_219BEF4D4();
          v78 = sub_219BEF4E4();
          (*(*(v78 - 8) + 56))(v71, 0, 1, v78);
          v79 = sub_219BEEA64();
          (*(*(v79 - 8) + 56))(v74, 1, 1, v79);
          v170 = sub_218FD8DF0(&qword_27CC14758, type metadata accessor for SearchMoreSectionDescriptor);
          sub_218FD8DF0(&qword_27CC14760, type metadata accessor for SearchMoreModel);
          v169 = v229;
          v167 = v74;
          v168 = MEMORY[0x277D84F90];
          sub_219BE69F4();
          sub_218864B10(v74, &qword_280E91990, MEMORY[0x277D32218]);
          sub_218864B10(v71, &qword_280E91548, MEMORY[0x277D325F8]);
          sub_218864B10(v70, &qword_280E924F8, MEMORY[0x277D31DD0]);
          v80 = *v200;
          (*v200)(v69, v177);
          sub_219BED874();
          v81 = sub_219BF44B4();
          v80(v69, v177);
          v220[5] = sub_219BF3594();
          v220[6] = MEMORY[0x277D33EB8];
          v220[2] = v81;
          v82 = sub_219BDCB24();
          v83 = *(*(v82 - 8) + 56);
          v83(v180, 1, 1, v82);
          v83(v183, 1, 1, v82);
          v83(v186, 1, 1, v82);
          v83(v189, 1, 1, v82);

          sub_219BDCB04();
          sub_219BEE0B4();
          v84 = v220[88];
          v85 = v220[86];
          v86 = v220[83];
          v87 = v220[81];
          v88 = v220[79];
          (*v202)(v220[65], v220[63]);

          sub_218864B10((v220 + 2), &qword_280E91020, sub_2189BD704);
          (*v198)(v86, v87, v88);
          v220[26] = sub_21935668C(v86);
          v220[27] = v89;
          v220[28] = v90;
          v91 = sub_219BE9F84();
          (*(*(v91 - 8) + 104))(v84, v197, v91);
          (*v210)(v84, v196, v85);
          v92 = sub_219BEE004();
          v93 = *(v92 + 16);
          if (v93)
          {
            v242 = MEMORY[0x277D84F90];
            sub_218C36578(0, v93, 0);
            v94 = v92 + ((*(v194 + 80) + 32) & ~*(v194 + 80));
            v223 = *(v194 + 16);
            v230 = *(v194 + 72);
            do
            {
              v95 = v220[52];
              v97 = v220[49];
              v96 = v220[50];
              v223(v95, v94, v96);
              v223(v97, v95, v96);
              sub_218FD8DF0(&qword_27CC0F490, type metadata accessor for SearchMoreLayoutModel);
              sub_219BE75D4();
              (*v238)(v95, v96);
              v98 = *(v242 + 16);
              v99 = *(v242 + 24);
              if (v98 >= v99 >> 1)
              {
                sub_218C36578(v99 > 1, v98 + 1, 1);
              }

              v100 = v220[56];
              v101 = v220[53];
              *(v242 + 16) = v98 + 1;
              (*(v239 + 32))(v242 + ((*(v239 + 80) + 32) & ~*(v239 + 80)) + *(v239 + 72) * v98, v100, v101);
              v94 += v230;
              --v93;
            }

            while (v93);
          }

          v235 = v220[96];
          v153 = v220[94];
          v154 = v220[81];
          v155 = v220[79];
          v156 = v220[45];
          sub_218FD8D9C();
          sub_218FD8DF0(&qword_27CC14770, type metadata accessor for SearchMoreLayoutModel);
          sub_219BE81A4();

          (*v205)(v154, v155);
          v157 = type metadata accessor for TagsSearchMoreFeedGroup;
        }

        else
        {
          v227 = v220[94];
          if (!EnumCaseMultiPayload)
          {
            v36 = v220[78];
            v37 = v220[76];
            v38 = v220[73];
            v39 = v220[72];
            v40 = v220[71];
            v41 = v220[69];
            v42 = v220[68];
            v192 = v220[74];
            v176 = v220[62];
            v179 = v220[61];
            v182 = v220[60];
            v185 = v220[59];
            sub_2189650B8(v220[93], v36, type metadata accessor for ArticlesSearchMoreFeedGroup);
            v43 = *(v175 + 20);
            sub_219BED874();
            v44 = sub_219BEDB64();
            (*(*(v44 - 8) + 56))(v38, 1, 1, v44);
            (*v201)(v40, v36 + v43, v41);
            sub_219BEF4D4();
            v45 = sub_219BEF4E4();
            (*(*(v45 - 8) + 56))(v39, 0, 1, v45);
            v46 = sub_219BEEA64();
            (*(*(v46 - 8) + 56))(v42, 1, 1, v46);
            v170 = sub_218FD8DF0(&qword_27CC14758, type metadata accessor for SearchMoreSectionDescriptor);
            sub_218FD8DF0(&qword_27CC14760, type metadata accessor for SearchMoreModel);
            v169 = v227;
            v167 = v42;
            v168 = MEMORY[0x277D84F90];
            sub_219BE69F4();
            sub_218864B10(v42, &qword_280E91990, MEMORY[0x277D32218]);
            sub_218864B10(v39, &qword_280E91548, MEMORY[0x277D325F8]);
            sub_218864B10(v38, &qword_280E924F8, MEMORY[0x277D31DD0]);
            v47 = *v200;
            (*v200)(v37, v192);
            sub_219BED874();
            v48 = sub_219BF44B4();
            v47(v37, v192);
            v220[15] = sub_219BF3594();
            v220[16] = MEMORY[0x277D33EB8];
            v220[12] = v48;
            v49 = sub_219BDCB24();
            v50 = *(*(v49 - 8) + 56);
            v50(v176, 1, 1, v49);
            v50(v179, 1, 1, v49);
            v50(v182, 1, 1, v49);
            v50(v185, 1, 1, v49);

            sub_219BDCB04();
            sub_219BEE0B4();
            v51 = v220[90];
            v52 = v220[86];
            v53 = v220[84];
            v54 = v220[83];
            v55 = v220[79];
            (*v202)(v220[67], v220[63]);

            sub_218864B10((v220 + 12), &qword_280E91020, sub_2189BD704);
            (*v198)(v54, v53, v55);
            v220[32] = sub_21935668C(v54);
            v220[33] = v56;
            v220[34] = v57;
            v58 = sub_219BE9F84();
            (*(*(v58 - 8) + 104))(v51, v197, v58);
            (*v210)(v51, v196, v52);
            v59 = sub_219BEE004();
            v60 = *(v59 + 16);
            if (v60)
            {
              v241 = MEMORY[0x277D84F90];
              sub_218C36578(0, v60, 0);
              v61 = v59 + ((*(v194 + 80) + 32) & ~*(v194 + 80));
              v222 = *(v194 + 16);
              v228 = *(v194 + 72);
              do
              {
                v62 = v220[52];
                v64 = v220[49];
                v63 = v220[50];
                v222(v62, v61, v63);
                v222(v64, v62, v63);
                sub_218FD8DF0(&qword_27CC0F490, type metadata accessor for SearchMoreLayoutModel);
                sub_219BE75D4();
                (*v238)(v62, v63);
                v65 = *(v241 + 16);
                v66 = *(v241 + 24);
                if (v65 >= v66 >> 1)
                {
                  sub_218C36578(v66 > 1, v65 + 1, 1);
                }

                v67 = v220[58];
                v68 = v220[53];
                *(v241 + 16) = v65 + 1;
                (*(v239 + 32))(v241 + ((*(v239 + 80) + 32) & ~*(v239 + 80)) + *(v239 + 72) * v65, v67, v68);
                v61 += v228;
                --v60;
              }

              while (v60);
            }

            v234 = v220[96];
            v149 = v220[94];
            v150 = v220[84];
            v151 = v220[79];
            v152 = v220[78];
            sub_218FD8D9C();
            sub_218FD8DF0(&qword_27CC14770, type metadata accessor for SearchMoreLayoutModel);
            sub_219BE81A4();

            (*v205)(v150, v151);
            sub_218FD8D3C(v152, type metadata accessor for ArticlesSearchMoreFeedGroup);
            (*v215)(v234, v149);
            goto LABEL_37;
          }

          v102 = v220[76];
          v103 = v220[73];
          v104 = v220[72];
          v105 = v220[71];
          v106 = v220[69];
          v107 = v220[68];
          v178 = v220[74];
          v181 = v220[62];
          v184 = v220[61];
          v187 = v220[60];
          v190 = v220[59];
          v108 = v220[47];
          sub_2189650B8(v220[93], v108, type metadata accessor for RecipesSearchMoreFeedGroup);
          v109 = *(v174 + 20);
          sub_219BED874();
          v110 = sub_219BEDB64();
          (*(*(v110 - 8) + 56))(v103, 1, 1, v110);
          (*v201)(v105, v108 + v109, v106);
          sub_219BEF4D4();
          v111 = sub_219BEF4E4();
          (*(*(v111 - 8) + 56))(v104, 0, 1, v111);
          v112 = sub_219BEEA64();
          (*(*(v112 - 8) + 56))(v107, 1, 1, v112);
          v170 = sub_218FD8DF0(&qword_27CC14758, type metadata accessor for SearchMoreSectionDescriptor);
          sub_218FD8DF0(&qword_27CC14760, type metadata accessor for SearchMoreModel);
          v169 = v227;
          v167 = v107;
          v168 = MEMORY[0x277D84F90];
          sub_219BE69F4();
          sub_218864B10(v107, &qword_280E91990, MEMORY[0x277D32218]);
          sub_218864B10(v104, &qword_280E91548, MEMORY[0x277D325F8]);
          sub_218864B10(v103, &qword_280E924F8, MEMORY[0x277D31DD0]);
          v113 = *v200;
          (*v200)(v102, v178);
          sub_219BED874();
          v114 = sub_219BF44B4();
          v113(v102, v178);
          v220[10] = sub_219BF3594();
          v220[11] = MEMORY[0x277D33EB8];
          v220[7] = v114;
          v115 = sub_219BDCB24();
          v116 = *(*(v115 - 8) + 56);
          v116(v181, 1, 1, v115);
          v116(v184, 1, 1, v115);
          v116(v187, 1, 1, v115);
          v116(v190, 1, 1, v115);

          sub_219BDCB04();
          sub_219BEE0B4();
          v117 = v220[89];
          v118 = v220[86];
          v119 = v220[83];
          v120 = v220[82];
          v121 = v220[79];
          (*v202)(v220[66], v220[63]);

          sub_218864B10((v220 + 7), &qword_280E91020, sub_2189BD704);
          (*v198)(v119, v120, v121);
          v220[29] = sub_21935668C(v119);
          v220[30] = v122;
          v220[31] = v123;
          v124 = sub_219BE9F84();
          (*(*(v124 - 8) + 104))(v117, v197, v124);
          (*v210)(v117, v196, v118);
          v125 = sub_219BEE004();
          v126 = *(v125 + 16);
          if (v126)
          {
            v243 = MEMORY[0x277D84F90];
            sub_218C36578(0, v126, 0);
            v127 = v125 + ((*(v194 + 80) + 32) & ~*(v194 + 80));
            v224 = *(v194 + 16);
            v231 = *(v194 + 72);
            do
            {
              v128 = v220[52];
              v130 = v220[49];
              v129 = v220[50];
              v224(v128, v127, v129);
              v224(v130, v128, v129);
              sub_218FD8DF0(&qword_27CC0F490, type metadata accessor for SearchMoreLayoutModel);
              sub_219BE75D4();
              (*v238)(v128, v129);
              v131 = *(v243 + 16);
              v132 = *(v243 + 24);
              if (v131 >= v132 >> 1)
              {
                sub_218C36578(v132 > 1, v131 + 1, 1);
              }

              v133 = v220[57];
              v134 = v220[53];
              *(v243 + 16) = v131 + 1;
              (*(v239 + 32))(v243 + ((*(v239 + 80) + 32) & ~*(v239 + 80)) + *(v239 + 72) * v131, v133, v134);
              v127 += v231;
              --v126;
            }

            while (v126);
          }

          v235 = v220[96];
          v153 = v220[94];
          v158 = v220[82];
          v159 = v220[79];
          v156 = v220[47];
          sub_218FD8D9C();
          sub_218FD8DF0(&qword_27CC14770, type metadata accessor for SearchMoreLayoutModel);
          sub_219BE81A4();

          (*v205)(v158, v159);
          v157 = type metadata accessor for RecipesSearchMoreFeedGroup;
        }

        sub_218FD8D3C(v156, v157);
        (*v215)(v235, v153);
LABEL_37:
        v26 = v217;
LABEL_40:
        v163 = *(v26 + 16);
        v162 = *(v26 + 24);
        if (v163 >= v162 >> 1)
        {
          sub_218C36528(v162 > 1, v163 + 1, 1);
        }

        v8 = v220;
        v164 = v220[99];
        v165 = v220[97];
        *(v26 + 16) = v163 + 1;
        (*(v206 + 32))(v26 + ((*(v206 + 80) + 32) & ~*(v206 + 80)) + *(v206 + 72) * v163, v164, v165);
        sub_219BF5E94();
        v28 = v219;
        if (v219 == v208)
        {
          goto LABEL_43;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_43:
    sub_218C3ED14();
    sub_218FD8DF0(&qword_27CC0F490, type metadata accessor for SearchMoreLayoutModel);
    sub_219BE6514();
    sub_219BEE0C4();

    v166 = v8[1];

    return v166();
  }

  return result;
}

uint64_t sub_218FD8B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2187608D4;

  return sub_218FD5610(a1, a2, a3, a4);
}

void sub_218FD8C48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for SearchMoreSectionDescriptor();
    v8[1] = type metadata accessor for SearchMoreModel(255);
    v8[2] = sub_218FD8DF0(&unk_27CC17410, type metadata accessor for SearchMoreSectionDescriptor);
    v8[3] = sub_218FD8DF0(&qword_27CC0B890, type metadata accessor for SearchMoreModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_218FD8D3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_218FD8D9C()
{
  result = qword_27CC14768;
  if (!qword_27CC14768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14768);
  }

  return result;
}

uint64_t sub_218FD8DF0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_218FD8E38()
{
  result = qword_27CC14778;
  if (!qword_27CC14778)
  {
    sub_218FD8C48(255, &qword_27CC13A90, MEMORY[0x277D6D710]);
    sub_218FD8DF0(&qword_27CC14758, type metadata accessor for SearchMoreSectionDescriptor);
    sub_218FD8DF0(&qword_27CC14760, type metadata accessor for SearchMoreModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14778);
  }

  return result;
}

uint64_t sub_218FD8F34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 200))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 161);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_218FD8F88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 200) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 200) = 0;
    }

    if (a2)
    {
      *(result + 161) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_218FD900C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = type metadata accessor for RecipeFilterConfiguration(0);
  MEMORY[0x28223BE20](v3);
  v19 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FDE8C8(0, &qword_27CC149B8, sub_218FDE930, &type metadata for RecipeFilterConfigurationPayload.CodingKeys, MEMORY[0x277D844C8]);
  v6 = v5;
  v18 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  v9 = type metadata accessor for RecipeFilterConfigurationPayload(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218FDE930();
  v12 = v20;
  sub_219BF7B34();
  if (!v12)
  {
    v13 = v18;
    sub_218FDE984(&qword_27CC149C8, type metadata accessor for RecipeFilterConfiguration);
    v14 = v19;
    sub_219BF7734();
    (*(v13 + 8))(v8, v6);
    sub_218FDE9CC(v14, v11, type metadata accessor for RecipeFilterConfiguration);
    sub_218FDE9CC(v11, v17, type metadata accessor for RecipeFilterConfigurationPayload);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218FD92E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x8000000219D06280 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_219BF78F4();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_218FD9374(uint64_t a1)
{
  v2 = sub_218FDE930();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218FD93B0(uint64_t a1)
{
  v2 = sub_218FDE930();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RecipeFilterConfiguration.sections.getter()
{
  sub_218FD9434();
  sub_219BF2664();
  return v1;
}

void sub_218FD9434()
{
  if (!qword_27CC14780)
  {
    sub_218FD94C8();
    sub_218FDE984(&qword_27CC147A0, sub_218FD94C8);
    v0 = sub_219BF26A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC14780);
    }
  }
}

void sub_218FD94C8()
{
  if (!qword_27CC14788)
  {
    sub_218FD9530();
    sub_218FD9584();
    v0 = sub_219BF47D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC14788);
    }
  }
}

unint64_t sub_218FD9530()
{
  result = qword_27CC14790;
  if (!qword_27CC14790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14790);
  }

  return result;
}

unint64_t sub_218FD9584()
{
  result = qword_27CC14798;
  if (!qword_27CC14798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14798);
  }

  return result;
}

uint64_t sub_218FD95D8()
{
  sub_218FD9434();

  return sub_219BF2674();
}

void (*RecipeFilterConfiguration.sections.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_218FD9434();
  *(v3 + 32) = sub_219BF2654();
  return sub_218D26BC8;
}

uint64_t sub_218FD96FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736E6F6974636573 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_219BF78F4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_218FD9784(uint64_t a1)
{
  v2 = sub_218FD99A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218FD97C0(uint64_t a1)
{
  v2 = sub_218FD99A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RecipeFilterConfiguration.encode(to:)(void *a1)
{
  sub_218FDE8C8(0, &qword_27CC147A8, sub_218FD99A8, &type metadata for RecipeFilterConfiguration.CodingKeys, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218FD99A8();
  sub_219BF7B44();
  sub_218FD94C8();
  sub_218FDE984(&qword_27CC147A0, sub_218FD94C8);
  sub_219BF7854();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_218FD99A8()
{
  result = qword_27CC147B0;
  if (!qword_27CC147B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC147B0);
  }

  return result;
}

uint64_t RecipeFilterConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_218FD9434();
  v19 = *(v4 - 8);
  v20 = v4;
  MEMORY[0x28223BE20](v4);
  v21 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FDE8C8(0, &qword_27CC147B8, sub_218FD99A8, &type metadata for RecipeFilterConfiguration.CodingKeys, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - v8;
  v10 = type metadata accessor for RecipeFilterConfiguration(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218FD99A8();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    v15 = v20;
    sub_218FD94C8();
    sub_218FDE984(&qword_27CC147A0, sub_218FD94C8);
    sub_219BF7764();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v21, v15);
    sub_218FDE9CC(v12, v17, type metadata accessor for RecipeFilterConfiguration);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218FD9D18(void *a1)
{
  sub_218FDE8C8(0, &qword_27CC147A8, sub_218FD99A8, &type metadata for RecipeFilterConfiguration.CodingKeys, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218FD99A8();
  sub_219BF7B44();
  sub_218FD94C8();
  sub_218FDE984(&qword_27CC147A0, sub_218FD94C8);
  sub_219BF7854();
  return (*(v4 + 8))(v6, v3);
}

NewsUI2::RecipeCatalogFilterSection::SectionType_optional __swiftcall RecipeCatalogFilterSection.SectionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_219BF7614();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t RecipeCatalogFilterSection.SectionType.rawValue.getter()
{
  v1 = 0x6E6F697461727564;
  v2 = 0x736C656E6E616863;
  if (*v0 != 2)
  {
    v2 = 0x736369706F74;
  }

  if (*v0)
  {
    v1 = 1936154996;
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

uint64_t sub_218FD9FA0()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_218FDA05C()
{
  sub_219BF5524();
}

uint64_t sub_218FDA104()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

void sub_218FDA1C8(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000073;
  v3 = 0x6E6F697461727564;
  v4 = 0xE800000000000000;
  v5 = 0x736C656E6E616863;
  if (*v1 != 2)
  {
    v5 = 0x736369706F74;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 1936154996;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t RecipeCatalogFilterSection.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RecipeCatalogFilterSection.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t RecipeCatalogFilterSection.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v56 = a2;
  sub_218FDE8C8(0, &qword_27CC147C0, sub_218FDAA58, &type metadata for RecipeCatalogFilterSection.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v46 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218FDAA58();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v55 = v6;
  LOBYTE(v61) = 0;
  v9 = sub_219BF76F4();
  v12 = v11;
  v54 = v9;
  LOBYTE(v61) = 1;
  v13 = sub_219BF76F4();
  v15 = v14;
  v51 = v13;
  LOBYTE(v57) = 2;
  sub_218FDAAAC();
  v16 = v8;
  sub_219BF7734();
  v17 = a1;
  v18 = v61;
  LOBYTE(v57) = 3;
  sub_218FDAB00();
  sub_219BF7734();
  v50 = v16;
  v67 = v61;
  v49 = v18;
  if (v18)
  {
    sub_2187B2E78(0, &qword_27CC147E0);
    LOBYTE(v57) = 4;
    sub_218FDD6D8(&qword_27CC147E8, sub_218FDAB54);
    sub_219BF7734();
    v48 = v15;
    v19 = v61;
    v20 = *(v61 + 16);
    if (v20)
    {
      v46[0] = v17;
      v47 = v12;
      *&v57 = MEMORY[0x277D84F90];
      sub_218C366B8(0, v20, 0);
      v21 = v57;
      v52 = v20 - 1;
      v46[1] = v19;
      for (i = (v19 + 56); ; i += 4)
      {
        v23 = *(i - 3);
        v24 = *(i - 2);
        v26 = *(i - 1);
        v25 = *i;
        *&v57 = v21;
        v28 = *(v21 + 16);
        v27 = *(v21 + 24);
        v53 = v28 + 1;

        if (v28 >= v27 >> 1)
        {
          sub_218C366B8((v27 > 1), v53, 1);
          v21 = v57;
        }

        LOBYTE(v65) = 1;
        *(v21 + 16) = v53;
        v29 = v21 + 72 * v28;
        *(v29 + 32) = v23;
        *(v29 + 40) = v24;
        *(v29 + 48) = v26;
        *(v29 + 56) = v25;
        v30 = v62;
        *(v29 + 64) = v61;
        *(v29 + 80) = v30;
        *(v29 + 96) = v65;
        if (!v52)
        {
          break;
        }

        --v52;
      }

      (*(v55 + 8))(v50, v5);

      v12 = v47;
      v17 = v46[0];
      goto LABEL_20;
    }
  }

  else
  {
    sub_2187B2E78(0, &qword_27CC147F8);
    LOBYTE(v57) = 4;
    sub_218FDD7A8(&qword_27CC14800, sub_218FDD5A4);
    sub_219BF7734();
    v48 = v15;
    v31 = *(v61 + 16);
    if (v31)
    {
      v53 = v61;
      v47 = v12;
      v65 = MEMORY[0x277D84F90];
      sub_218C366B8(0, v31, 0);
      v21 = v65;
      v32 = v31 - 1;
      for (j = 32; ; j += 64)
      {
        v34 = *(v53 + j);
        v35 = *(v53 + j + 16);
        v36 = *(v53 + j + 48);
        v63 = *(v53 + j + 32);
        v64 = v36;
        v61 = v34;
        v62 = v35;
        sub_218FDD5F8(&v61, &v57);
        v65 = v21;
        v38 = *(v21 + 16);
        v37 = *(v21 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_218C366B8((v37 > 1), v38 + 1, 1);
          v21 = v65;
        }

        v59 = v63;
        v60 = v64;
        v39 = v61;
        v57 = v61;
        v58 = v62;
        v66 = 0;
        *(v21 + 16) = v38 + 1;
        v40 = v21 + 72 * v38;
        v41 = v60;
        v42 = v58;
        *(v40 + 64) = v59;
        *(v40 + 80) = v41;
        *(v40 + 32) = v39;
        *(v40 + 48) = v42;
        *(v40 + 96) = 0;
        if (!v32)
        {
          break;
        }

        --v32;
      }

      (*(v55 + 8))(v50, v5);

      v12 = v47;
      goto LABEL_20;
    }
  }

  (*(v55 + 8))(v50, v5);
  v21 = MEMORY[0x277D84F90];
LABEL_20:
  v43 = v67;
  v44 = v56;
  *v56 = v54;
  v44[1] = v12;
  v45 = v48;
  v44[2] = v51;
  v44[3] = v45;
  *(v44 + 32) = v49;
  *(v44 + 33) = v43;
  v44[5] = v21;

  __swift_destroy_boxed_opaque_existential_1(v17);
}

unint64_t sub_218FDAA58()
{
  result = qword_27CC147C8;
  if (!qword_27CC147C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC147C8);
  }

  return result;
}

unint64_t sub_218FDAAAC()
{
  result = qword_27CC147D0;
  if (!qword_27CC147D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC147D0);
  }

  return result;
}

unint64_t sub_218FDAB00()
{
  result = qword_27CC147D8;
  if (!qword_27CC147D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC147D8);
  }

  return result;
}

unint64_t sub_218FDAB54()
{
  result = qword_27CC147F0;
  if (!qword_27CC147F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC147F0);
  }

  return result;
}

uint64_t RecipeCatalogFilterSection.encode(to:)(void *a1)
{
  sub_218FDE8C8(0, &qword_27CC14810, sub_218FDAA58, &type metadata for RecipeCatalogFilterSection.CodingKeys, MEMORY[0x277D84538]);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v56 - v5;
  v7 = *(v1 + 16);
  v62 = *(v1 + 24);
  v63 = v7;
  LODWORD(v61) = *(v1 + 32);
  LODWORD(v60) = *(v1 + 33);
  v59 = *(v1 + 40);
  v8 = a1[3];
  v9 = a1;
  v11 = v10;
  __swift_project_boxed_opaque_existential_1(v9, v8);
  sub_218FDAA58();
  sub_219BF7B44();
  LOBYTE(v65[0]) = 0;
  v12 = v6;
  v13 = v75;
  sub_219BF77F4();
  if (v13)
  {
    return (*(v4 + 8))(v6, v11);
  }

  v15 = v60;
  v16 = v61;
  v17 = v4;
  LOBYTE(v65[0]) = 1;
  sub_219BF77F4();
  LOBYTE(v65[0]) = v16;
  LOBYTE(v71) = 2;
  sub_218FDD630();
  sub_219BF7834();
  v18 = v4;
  LOBYTE(v65[0]) = v15;
  LOBYTE(v71) = 3;
  sub_218FDD684();
  result = sub_219BF7834();
  v19 = v59;
  v20 = *(v59 + 16);
  if (v16)
  {
    v75 = v12;
    v63 = v11;
    if (v20)
    {
      v21 = 0;
      v22 = v59 + 48;
      v23 = MEMORY[0x277D84F90];
      do
      {
        v24 = *(v19 + 16);
        v25 = v24 >= v21;
        v26 = v24 - v21;
        if (v25)
        {
          v27 = v26;
        }

        else
        {
          v27 = 0;
        }

        v28 = v20 - v21;
        v29 = (v22 + 72 * v21++);
        while (1)
        {
          if (!v27)
          {
            __break(1u);
            goto LABEL_40;
          }

          if (v29[6])
          {
            break;
          }

          --v27;
          v29 += 9;
          ++v21;
          if (!--v28)
          {
            goto LABEL_36;
          }
        }

        v62 = v22;
        v30 = *(v29 - 1);
        v60 = *(v29 - 2);
        v31 = v29[1];
        v58 = *v29;

        result = swift_isUniquelyReferenced_nonNull_native();
        v61 = v31;
        if ((result & 1) == 0)
        {
          result = sub_2191F9830(0, *(v23 + 16) + 1, 1, v23);
          v23 = result;
        }

        v33 = *(v23 + 16);
        v32 = *(v23 + 24);
        v34 = v33 + 1;
        v19 = v59;
        if (v33 >= v32 >> 1)
        {
          v57 = v33 + 1;
          result = sub_2191F9830((v32 > 1), v33 + 1, 1, v23);
          v19 = v59;
          v34 = v57;
          v23 = result;
        }

        *(v23 + 16) = v34;
        v35 = (v23 + 32 * v33);
        v35[4] = v60;
        v35[5] = v30;
        v36 = v61;
        v35[6] = v58;
        v35[7] = v36;
        v18 = v17;
        v22 = v62;
      }

      while (v28 != 1);
    }

    else
    {
      v23 = MEMORY[0x277D84F90];
    }

LABEL_36:
    *&v65[0] = v23;
    LOBYTE(v71) = 4;
    sub_2187B2E78(0, &qword_27CC147E0);
    sub_218FDD6D8(&qword_27CC14828, sub_218FDD754);
    v54 = v63;
    v55 = v75;
    sub_219BF7834();
    (*(v18 + 8))(v55, v54);
  }

  else
  {
    if (v20)
    {
      v37 = 0;
      v38 = v59 + 96;
      v39 = -v20;
      v40 = MEMORY[0x277D84F90];
      do
      {
        v41 = *(v19 + 16);
        if (v37 > v41)
        {
          v41 = v37;
        }

        v42 = -v41;
        v43 = (v38 + 72 * v37++);
        while (1)
        {
          if (v42 + v37 == 1)
          {
LABEL_40:
            __break(1u);
            return result;
          }

          v44 = *(v43 - 3);
          v67 = *(v43 - 4);
          v68 = v44;
          v45 = *(v43 - 1);
          v69 = *(v43 - 2);
          v70 = v45;
          v46 = *v43;
          v71 = v67;
          v72 = v44;
          v73 = v69;
          v74 = v45;
          if ((v46 & 1) == 0)
          {
            break;
          }

          ++v37;
          v43 += 72;
          if (v39 + v37 == 1)
          {
            goto LABEL_38;
          }
        }

        v63 = v38;
        v75 = v12;
        v65[0] = v67;
        v65[1] = v68;
        v65[2] = v69;
        v65[3] = v70;
        v66 = v46;
        sub_218FDD5F8(v65, &v64);
        result = swift_isUniquelyReferenced_nonNull_native();
        v47 = v11;
        if ((result & 1) == 0)
        {
          result = sub_2191F9844(0, *(v40 + 16) + 1, 1, v40);
          v40 = result;
        }

        v49 = *(v40 + 16);
        v48 = *(v40 + 24);
        v19 = v59;
        if (v49 >= v48 >> 1)
        {
          result = sub_2191F9844((v48 > 1), v49 + 1, 1, v40);
          v19 = v59;
          v40 = result;
        }

        *(v40 + 16) = v49 + 1;
        v50 = (v40 + (v49 << 6));
        v51 = v71;
        v52 = v72;
        v53 = v74;
        v50[4] = v73;
        v50[5] = v53;
        v50[2] = v51;
        v50[3] = v52;
        v11 = v47;
        v12 = v75;
        v38 = v63;
      }

      while (v39 + v37);
    }

    else
    {
      v40 = MEMORY[0x277D84F90];
    }

LABEL_38:
    *&v65[0] = v40;
    LOBYTE(v71) = 4;
    sub_2187B2E78(0, &qword_27CC147F8);
    sub_218FDD7A8(&qword_27CC14838, sub_218FDD824);
    sub_219BF7834();
    (*(v17 + 8))(v12, v11);
  }
}

uint64_t sub_218FDB214()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_218FDB2E0()
{
  sub_219BF5524();
}

uint64_t sub_218FDB398()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_218FDB460@<X0>(_BYTE *a1@<X8>)
{
  result = sub_218FDE4B8();
  *a1 = result;
  return result;
}

void sub_218FDB490(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE400000000000000;
  v6 = 1701869940;
  v7 = 0x8000000219CD7630;
  v8 = 0xD000000000000011;
  if (v2 != 3)
  {
    v8 = 0x736D657469;
    v7 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x656C746974;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_218FDB518()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 1701869940;
  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0x736D657469;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656C746974;
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

uint64_t sub_218FDB59C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_218FDE4B8();
  *a1 = result;
  return result;
}

uint64_t sub_218FDB5C4(uint64_t a1)
{
  v2 = sub_218FDAA58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218FDB600(uint64_t a1)
{
  v2 = sub_218FDAA58();

  return MEMORY[0x2821FE720](a1, v2);
}

NewsUI2::RecipeFilterSelectionBehavior_optional __swiftcall RecipeFilterSelectionBehavior.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_219BF7614();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t RecipeFilterSelectionBehavior.rawValue.getter()
{
  if (*v0)
  {
    return 0x656C7069746C756DLL;
  }

  else
  {
    return 0x656C676E6973;
  }
}

uint64_t sub_218FDB6D8()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_218FDB758()
{
  sub_219BF5524();
}

uint64_t sub_218FDB7C4()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_218FDB840@<X0>(char *a1@<X8>)
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

void sub_218FDB8A0(uint64_t *a1@<X8>)
{
  v2 = 0x656C676E6973;
  if (*v1)
  {
    v2 = 0x656C7069746C756DLL;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_218FDB98C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656C7069746C756DLL;
  }

  else
  {
    v3 = 0x656C676E6973;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x656C7069746C756DLL;
  }

  else
  {
    v5 = 0x656C676E6973;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_219BF78F4();
  }

  return v8 & 1;
}

uint64_t sub_218FDBA30()
{
  if (*v0)
  {
    return 6775156;
  }

  else
  {
    return 0x6E6F697461727564;
  }
}

uint64_t sub_218FDBA64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
  if (v6 || (sub_219BF78F4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 6775156 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_219BF78F4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_218FDBB40(uint64_t a1)
{
  v2 = sub_218FDD920();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218FDBB7C(uint64_t a1)
{
  v2 = sub_218FDD920();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218FDBBC4(uint64_t a1)
{
  v2 = sub_218FDD8CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218FDBC00(uint64_t a1)
{
  v2 = sub_218FDD8CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218FDBC3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_219BF78F4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_218FDBCBC(uint64_t a1)
{
  v2 = sub_218FDD878();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218FDBCF8(uint64_t a1)
{
  v2 = sub_218FDD878();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RecipeFilterItem.encode(to:)(void *a1)
{
  v3 = MEMORY[0x277D84538];
  sub_218FDE8C8(0, &qword_27CC14848, sub_218FDD878, &type metadata for RecipeFilterItem.TagCodingKeys, MEMORY[0x277D84538]);
  v22 = *(v4 - 8);
  v23 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - v5;
  sub_218FDE8C8(0, &qword_27CC14858, sub_218FDD8CC, &type metadata for RecipeFilterItem.DurationCodingKeys, v3);
  v21 = v7;
  v20 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  sub_218FDE8C8(0, &qword_27CC14868, sub_218FDD920, &type metadata for RecipeFilterItem.CodingKeys, v3);
  v28 = *(v10 - 8);
  v29 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  v13 = v1[1];
  v24 = *v1;
  v25 = v13;
  v14 = v1[3];
  v26 = v1[2];
  v27 = v14;
  v15 = *(v1 + 3);
  v36 = *(v1 + 2);
  v37 = v15;
  LOBYTE(v3) = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218FDD920();
  sub_219BF7B44();
  if (v3)
  {
    LOBYTE(v30) = 1;
    sub_218FDD878();
    v16 = v29;
    sub_219BF7784();
    v30 = v24;
    v31 = v25;
    v32 = v26;
    v33 = v27;
    sub_218FDD754();
    v17 = v23;
    sub_219BF7834();
    (*(v22 + 8))(v6, v17);
  }

  else
  {
    LOBYTE(v30) = 0;
    sub_218FDD8CC();
    v16 = v29;
    sub_219BF7784();
    v30 = v24;
    v31 = v25;
    v32 = v26;
    v33 = v27;
    v34 = v36;
    v35 = v37;
    sub_218FDD824();
    v18 = v21;
    sub_219BF7834();
    (*(v20 + 8))(v9, v18);
  }

  return (*(v28 + 8))(v12, v16);
}

uint64_t RecipeFilterItem.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = MEMORY[0x277D844C8];
  sub_218FDE8C8(0, &qword_27CC14878, sub_218FDD878, &type metadata for RecipeFilterItem.TagCodingKeys, MEMORY[0x277D844C8]);
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x28223BE20](v4);
  v37 = &v33 - v5;
  sub_218FDE8C8(0, &qword_27CC14880, sub_218FDD8CC, &type metadata for RecipeFilterItem.DurationCodingKeys, v3);
  v7 = v6;
  v34 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - v8;
  sub_218FDE8C8(0, &qword_27CC14888, sub_218FDD920, &type metadata for RecipeFilterItem.CodingKeys, v3);
  v11 = v10;
  v39 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218FDD920();
  v14 = v40;
  sub_219BF7B34();
  if (v14)
  {
    goto LABEL_7;
  }

  v16 = v37;
  v15 = v38;
  v40 = a1;
  v17 = sub_219BF7754();
  if (*(v17 + 16) != 1)
  {
    v26 = sub_219BF7394();
    swift_allocError();
    v28 = v27;
    sub_218FDD974();
    *v28 = &type metadata for RecipeFilterItem;
    sub_219BF7644();
    sub_219BF7374();
    (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D84160], v26);
    swift_willThrow();
    (*(v39 + 8))(v13, v11);
    swift_unknownObjectRelease();
    a1 = v40;
LABEL_7:
    v30 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v30);
  }

  if (*(v17 + 32))
  {
    LOBYTE(v41) = 1;
    sub_218FDD878();
    v18 = v16;
    sub_219BF7634();
    v19 = v39;
    sub_218FDAB54();
    v20 = v36;
    sub_219BF7734();
    (*(v35 + 8))(v18, v20);
    (*(v19 + 8))(v13, v11);
    swift_unknownObjectRelease();
    v21 = v41;
    v22 = v42;
    v23 = v43;
    v24 = v44;
    v25 = 1;
    v49 = 1;
  }

  else
  {
    LOBYTE(v41) = 0;
    sub_218FDD8CC();
    sub_219BF7634();
    v29 = v39;
    sub_218FDD5A4();
    sub_219BF7734();
    (*(v34 + 8))(v9, v7);
    (*(v29 + 8))(v13, v11);
    swift_unknownObjectRelease();
    v25 = 0;
    v21 = v41;
    v22 = v42;
    v23 = v43;
    v24 = v44;
    v47 = v45;
    v48 = v46;
    v49 = 0;
  }

  *v15 = v21;
  *(v15 + 8) = v22;
  *(v15 + 16) = v23;
  *(v15 + 24) = v24;
  v32 = v48;
  *(v15 + 32) = v47;
  *(v15 + 48) = v32;
  *(v15 + 64) = v25;
  v30 = v40;
  return __swift_destroy_boxed_opaque_existential_1(v30);
}

void *sub_218FDC674()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 0;
  }

  if (v1 >= v2)
  {
    __break(1u);
    return result;
  }

  v3 = *(v0[1] + 8 * v1);
  v0[2] = v1 + 1;
  v4 = v3;
  return v3;
}

uint64_t (*sub_218FDC6F8@<X0>(uint64_t (*result)(void)@<X0>, uint64_t a2@<X8>))(void)
{
  v5 = v2[2];
  v4 = v2[3];
  if (v5 == v4 >> 1)
  {
    v6 = result(0);
    v7 = *(*(v6 - 8) + 56);
    v8 = v6;
    v9 = a2;
    v10 = 1;
  }

  else
  {
    if (v5 >= (v4 >> 1))
    {
      __break(1u);
      return result;
    }

    v11 = v2[1];
    v12 = result(0);
    v13 = *(v12 - 8);
    (*(v13 + 16))(a2, v11 + *(v13 + 72) * v5, v12);
    v2[1] = v11;
    v2[2] = v5 + 1;
    v2[3] = v4;
    v7 = *(v13 + 56);
    v9 = a2;
    v10 = 0;
    v8 = v12;
  }

  return v7(v9, v10, 1, v8);
}

uint64_t RecipeCatalogFilterTagItem.tagID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RecipeCatalogFilterTagItem.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_218FDC8DC()
{
  if (*v0)
  {
    return 0x656C746974;
  }

  else
  {
    return 0x4449676174;
  }
}

uint64_t sub_218FDC908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449676174 && a2 == 0xE500000000000000;
  if (v6 || (sub_219BF78F4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_219BF78F4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_218FDC9DC(uint64_t a1)
{
  v2 = sub_218FDDA30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218FDCA18(uint64_t a1)
{
  v2 = sub_218FDDA30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RecipeCatalogFilterTagItem.encode(to:)(void *a1)
{
  sub_218FDE8C8(0, &qword_27CC148A0, sub_218FDDA30, &type metadata for RecipeCatalogFilterTagItem.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *(v1 + 16);
  v11[1] = *(v1 + 24);
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218FDDA30();
  sub_219BF7B44();
  v13 = 0;
  v9 = v11[3];
  sub_219BF77F4();
  if (!v9)
  {
    v12 = 1;
    sub_219BF77F4();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t RecipeCatalogFilterTagItem.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v18 = a2;
  sub_218FDE8C8(0, &qword_27CC148B0, sub_218FDDA30, &type metadata for RecipeCatalogFilterTagItem.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218FDDA30();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v18;
  v20 = 0;
  v10 = sub_219BF76F4();
  v12 = v11;
  v17 = v10;
  v19 = 1;
  v13 = sub_219BF76F4();
  v15 = v14;
  (*(v6 + 8))(v8, v5);
  *v9 = v17;
  v9[1] = v12;
  v9[2] = v13;
  v9[3] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t RecipeCatalogFilterDurationItem.tagID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RecipeCatalogFilterDurationItem.primaryLabel.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t RecipeCatalogFilterDurationItem.secondaryLabel.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t RecipeCatalogFilterDurationItem.title.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_218FDCF14()
{
  v1 = 0x4449676174;
  v2 = 0x7261646E6F636573;
  if (*v0 != 2)
  {
    v2 = 0x656C746974;
  }

  if (*v0)
  {
    v1 = 0x4C7972616D697270;
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

uint64_t sub_218FDCF9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_218FDE504(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_218FDCFC4(uint64_t a1)
{
  v2 = sub_218FDDA84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218FDD000(uint64_t a1)
{
  v2 = sub_218FDDA84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RecipeCatalogFilterDurationItem.encode(to:)(void *a1)
{
  sub_218FDE8C8(0, &qword_27CC148B8, sub_218FDDA84, &type metadata for RecipeCatalogFilterDurationItem.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - v6;
  v8 = v1[2];
  v13[5] = v1[3];
  v13[6] = v8;
  v9 = v1[4];
  v13[3] = v1[5];
  v13[4] = v9;
  v10 = v1[6];
  v13[1] = v1[7];
  v13[2] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218FDDA84();
  sub_219BF7B44();
  v17 = 0;
  v11 = v13[7];
  sub_219BF77F4();
  if (!v11)
  {
    v16 = 1;
    sub_219BF77F4();
    v15 = 2;
    sub_219BF77F4();
    v14 = 3;
    sub_219BF77F4();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t RecipeCatalogFilterDurationItem.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v31 = a2;
  sub_218FDE8C8(0, &qword_27CC148C8, sub_218FDDA84, &type metadata for RecipeCatalogFilterDurationItem.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218FDDA84();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v6;
  v10 = v31;
  LOBYTE(v36[0]) = 0;
  v11 = sub_219BF76F4();
  v30 = v12;
  LOBYTE(v36[0]) = 1;
  v13 = sub_219BF76F4();
  v29 = v14;
  v27 = v13;
  LOBYTE(v36[0]) = 2;
  v26 = sub_219BF76F4();
  v28 = v15;
  v37 = 3;
  v16 = sub_219BF76F4();
  v18 = v17;
  (*(v9 + 8))(v8, v5);
  v20 = v29;
  v19 = v30;
  *&v32 = v11;
  *(&v32 + 1) = v30;
  v21 = v27;
  *&v33 = v27;
  *(&v33 + 1) = v29;
  *&v34 = v26;
  *(&v34 + 1) = v28;
  *&v35 = v16;
  *(&v35 + 1) = v18;
  v22 = v33;
  *v10 = v32;
  v10[1] = v22;
  v23 = v35;
  v10[2] = v34;
  v10[3] = v23;
  sub_218FDD5F8(&v32, v36);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v36[0] = v11;
  v36[1] = v19;
  v36[2] = v21;
  v36[3] = v20;
  v36[4] = v26;
  v36[5] = v28;
  v36[6] = v16;
  v36[7] = v18;
  return sub_218FDDAD8(v36);
}

unint64_t sub_218FDD5A4()
{
  result = qword_27CC14808;
  if (!qword_27CC14808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14808);
  }

  return result;
}

unint64_t sub_218FDD630()
{
  result = qword_27CC14818;
  if (!qword_27CC14818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14818);
  }

  return result;
}

unint64_t sub_218FDD684()
{
  result = qword_27CC14820;
  if (!qword_27CC14820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14820);
  }

  return result;
}

uint64_t sub_218FDD6D8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_2187B2E78(255, &qword_27CC147E0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_218FDD754()
{
  result = qword_27CC14830;
  if (!qword_27CC14830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14830);
  }

  return result;
}

uint64_t sub_218FDD7A8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_2187B2E78(255, &qword_27CC147F8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_218FDD824()
{
  result = qword_27CC14840;
  if (!qword_27CC14840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14840);
  }

  return result;
}

unint64_t sub_218FDD878()
{
  result = qword_27CC14850;
  if (!qword_27CC14850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14850);
  }

  return result;
}

unint64_t sub_218FDD8CC()
{
  result = qword_27CC14860;
  if (!qword_27CC14860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14860);
  }

  return result;
}

unint64_t sub_218FDD920()
{
  result = qword_27CC14870;
  if (!qword_27CC14870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14870);
  }

  return result;
}

void sub_218FDD974()
{
  if (!qword_27CC14890)
  {
    sub_218FDD9E4();
    sub_219BF7384();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC14890);
    }
  }
}

unint64_t sub_218FDD9E4()
{
  result = qword_27CC14898;
  if (!qword_27CC14898)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_27CC14898);
  }

  return result;
}

unint64_t sub_218FDDA30()
{
  result = qword_27CC148A8;
  if (!qword_27CC148A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC148A8);
  }

  return result;
}

unint64_t sub_218FDDA84()
{
  result = qword_27CC148C0;
  if (!qword_27CC148C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC148C0);
  }

  return result;
}

unint64_t sub_218FDDB0C()
{
  result = qword_27CC148D0;
  if (!qword_27CC148D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC148D0);
  }

  return result;
}

unint64_t sub_218FDDB64()
{
  result = qword_27CC148D8;
  if (!qword_27CC148D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC148D8);
  }

  return result;
}

uint64_t sub_218FDDC34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 65))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 64);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_218FDDC7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

unint64_t sub_218FDDD84()
{
  result = qword_27CC148F0;
  if (!qword_27CC148F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC148F0);
  }

  return result;
}

unint64_t sub_218FDDDDC()
{
  result = qword_27CC148F8;
  if (!qword_27CC148F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC148F8);
  }

  return result;
}

unint64_t sub_218FDDE34()
{
  result = qword_27CC14900;
  if (!qword_27CC14900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14900);
  }

  return result;
}

unint64_t sub_218FDDE8C()
{
  result = qword_27CC14908;
  if (!qword_27CC14908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14908);
  }

  return result;
}

unint64_t sub_218FDDEE4()
{
  result = qword_27CC14910;
  if (!qword_27CC14910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14910);
  }

  return result;
}

unint64_t sub_218FDDF3C()
{
  result = qword_27CC14918;
  if (!qword_27CC14918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14918);
  }

  return result;
}

unint64_t sub_218FDDF94()
{
  result = qword_27CC14920;
  if (!qword_27CC14920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14920);
  }

  return result;
}

unint64_t sub_218FDDFEC()
{
  result = qword_27CC14928;
  if (!qword_27CC14928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14928);
  }

  return result;
}

unint64_t sub_218FDE044()
{
  result = qword_27CC14930;
  if (!qword_27CC14930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14930);
  }

  return result;
}

unint64_t sub_218FDE09C()
{
  result = qword_27CC14938;
  if (!qword_27CC14938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14938);
  }

  return result;
}

unint64_t sub_218FDE0F4()
{
  result = qword_27CC14940;
  if (!qword_27CC14940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14940);
  }

  return result;
}

unint64_t sub_218FDE14C()
{
  result = qword_27CC14948;
  if (!qword_27CC14948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14948);
  }

  return result;
}

unint64_t sub_218FDE1A4()
{
  result = qword_27CC14950;
  if (!qword_27CC14950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14950);
  }

  return result;
}

unint64_t sub_218FDE1FC()
{
  result = qword_27CC14958;
  if (!qword_27CC14958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14958);
  }

  return result;
}

unint64_t sub_218FDE254()
{
  result = qword_27CC14960;
  if (!qword_27CC14960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14960);
  }

  return result;
}

unint64_t sub_218FDE2AC()
{
  result = qword_27CC14968;
  if (!qword_27CC14968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14968);
  }

  return result;
}

unint64_t sub_218FDE304()
{
  result = qword_27CC14970;
  if (!qword_27CC14970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14970);
  }

  return result;
}

unint64_t sub_218FDE35C()
{
  result = qword_27CC14978;
  if (!qword_27CC14978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14978);
  }

  return result;
}

unint64_t sub_218FDE3B4()
{
  result = qword_27CC14980;
  if (!qword_27CC14980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14980);
  }

  return result;
}

unint64_t sub_218FDE40C()
{
  result = qword_27CC14988;
  if (!qword_27CC14988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14988);
  }

  return result;
}

unint64_t sub_218FDE464()
{
  result = qword_27CC14990;
  if (!qword_27CC14990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14990);
  }

  return result;
}

uint64_t sub_218FDE4B8()
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

uint64_t sub_218FDE504(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449676174 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4C7972616D697270 && a2 == 0xEC0000006C656261 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7261646E6F636573 && a2 == 0xEE006C6562614C79 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_218FDE66C()
{
  result = qword_27CC14998;
  if (!qword_27CC14998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14998);
  }

  return result;
}

unint64_t sub_218FDE6C0()
{
  result = qword_27CC149A0;
  if (!qword_27CC149A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC149A0);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_218FDE858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_218FDE8C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_218FDE930()
{
  result = qword_27CC149C0;
  if (!qword_27CC149C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC149C0);
  }

  return result;
}

uint64_t sub_218FDE984(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218FDE9CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_218FDEA48()
{
  result = qword_27CC149D0;
  if (!qword_27CC149D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC149D0);
  }

  return result;
}

unint64_t sub_218FDEAA0()
{
  result = qword_27CC149D8;
  if (!qword_27CC149D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC149D8);
  }

  return result;
}

unint64_t sub_218FDEAF8()
{
  result = qword_27CC149E0;
  if (!qword_27CC149E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC149E0);
  }

  return result;
}

uint64_t sub_218FDEB54(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v105 = a4;
  v106 = a5;
  v110 = a3;
  v9 = MEMORY[0x277D83D88];
  sub_2187C42D4(0, &qword_280EE4518, MEMORY[0x277D6E548], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v98 = (&v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v96 = &v94 - v13;
  v100 = sub_219BE92E4();
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v97 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v95 = &v94 - v16;
  sub_2187C42D4(0, &unk_280EE4470, MEMORY[0x277D6E658], v9);
  v102 = *(v17 - 8);
  v18 = *(v102 + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v109 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v103 = (&v94 - v20);
  v21 = sub_219BE9EC4();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v107 = &v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v94 - v25;
  sub_2187C42D4(0, &unk_280EE3DC0, MEMORY[0x277D6E908], v9);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v30 = &v94 - v29;
  v31 = *(v22 + 16);
  v104 = a2;
  v101 = v31;
  v31(v30, a2, v21, v28);
  v108 = v22;
  (*(v22 + 56))(v30, 0, 1, v21);
  *&v112 = a1;
  swift_beginAccess();
  sub_2187C04A0();
  v111 = a1;
  sub_219BE1C84();
  swift_endAccess();
  v32 = OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_layoutCoordinator;
  swift_beginAccess();
  sub_2187DAC98(v6 + v32, &v112, &qword_280E9DA68, &qword_280E9DA70, &protocol descriptor for FloatingTabBarLayoutCoordinatorType, sub_2186C6F70);
  if (v113)
  {
    sub_2186CB1F0(&v112, v114);
    v98 = __swift_project_boxed_opaque_existential_1(v114, v114[3]);
    v33 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v97 = v23;
    v34 = v101;
    v101(v26, v104, v21);
    v104 = v18;
    v35 = MEMORY[0x277D6E658];
    v36 = MEMORY[0x277D83D88];
    v37 = v103;
    sub_2187DAC98(v110, v103, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88], sub_2187C42D4);
    v34(v107, v26, v21);
    v38 = v36;
    v39 = v33;
    sub_2187DAC98(v37, v109, &unk_280EE4470, v35, v38, sub_2187C42D4);
    v40 = v108;
    v41 = (*(v108 + 80) + 24) & ~*(v108 + 80);
    v42 = &v97[v41 + 7] & 0xFFFFFFFFFFFFFFF8;
    v43 = (*(v102 + 80) + v42 + 8) & ~*(v102 + 80);
    v44 = (v104 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
    v45 = swift_allocObject();
    v110 = v39;
    *(v45 + 16) = v39;
    v46 = v45;
    v47 = v26;
    v48 = v21;
    (*(v40 + 32))(v45 + v41, v47, v21);
    v49 = v111;
    *(v46 + v42) = v111;
    sub_218FEADDC(v37, v46 + v43);
    v50 = (v46 + v44);
    v52 = v105;
    v51 = v106;
    *v50 = v105;
    v50[1] = v51;
    v53 = *(*v98 + 32);
    if (v53)
    {
      v54 = objc_opt_self();
      v55 = v49;
      sub_2188202A8(v52);
      v56 = v55;
      sub_2188202A8(v52);

      LOBYTE(v55) = [v54 areAnimationsEnabled];
      v57 = swift_allocObject();
      *(v57 + 16) = v55;
      *(v57 + 24) = sub_218FEB4A8;
      *(v57 + 32) = v46;
      swift_beginAccess();
      v58 = *(v53 + 32);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v53 + 32) = v58;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v58 = sub_2191F67A4(0, v58[2] + 1, 1, v58);
        *(v53 + 32) = v58;
      }

      v61 = v58[2];
      v60 = v58[3];
      if (v61 >= v60 >> 1)
      {
        v58 = sub_2191F67A4((v60 > 1), v61 + 1, 1, v58);
      }

      v58[2] = v61 + 1;
      v62 = &v58[2 * v61];
      v62[4] = sub_218FEB4AC;
      v62[5] = v57;
      *(v53 + 32) = v58;
      swift_endAccess();
    }

    else
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      v80 = v49;
      if (Strong)
      {

        sub_2188202A8(v52);
        v81 = v80;
        sub_2188202A8(v52);

        v82 = [Strong traitCollection];
        v83 = [v82 horizontalSizeClass];

        v66 = v107;
        if (v83 == 2)
        {
          v103 = v81;
          v104 = Strong;
          v85 = v52;
          v86 = v96;
          sub_219BE9E94();
          v63 = v48;
          v64 = v108;
        }

        else
        {
          v63 = v48;
          v64 = v108;
          v84 = v96;
          if (v83 != 1)
          {

            (*(v99 + 56))(v84, 1, 1, v100);
            sub_2187453AC(v84, &qword_280EE4518, MEMORY[0x277D6E548], MEMORY[0x277D83D88], sub_2187C42D4);

            v65 = v109;
            goto LABEL_9;
          }

          v103 = v81;
          v104 = Strong;
          v85 = v52;
          sub_219BE9EA4();
          v86 = v84;
        }

        v90 = v99;
        v91 = v100;
        (*(v99 + 56))(v86, 0, 1, v100);
        v92 = v95;
        (*(v90 + 32))(v95, v86, v91);
        v65 = v109;
        v93 = v104;
        sub_218FDF7B0(v92, v103, v109, v85, v106);

        v52 = v85;
        (*(v90 + 8))(v92, v100);

LABEL_9:

        (*(v64 + 8))(v66, v63);

        sub_2187453AC(v65, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88], sub_2187C42D4);
        sub_2187FABEC(v52);

        return __swift_destroy_boxed_opaque_existential_1(v114);
      }

      sub_2188202A8(v52);
      v89 = v80;
      sub_2188202A8(v52);
    }

    v63 = v48;
    v64 = v108;
    v65 = v109;
    v66 = v107;
    goto LABEL_9;
  }

  v68 = v97;
  v69 = v98;
  v70 = v105;
  v72 = v110;
  v71 = v111;
  v73 = v106;
  sub_2187453AC(&v112, &qword_280E9DA68, &qword_280E9DA70, &protocol descriptor for FloatingTabBarLayoutCoordinatorType, sub_2186C6F70);
  v74 = [v6 traitCollection];
  v75 = [v74 horizontalSizeClass];

  if (v75 == 2)
  {
    sub_219BE9E94();
    v76 = v73;
    v77 = v70;
    v78 = v71;
    goto LABEL_18;
  }

  if (v75 == 1)
  {
    v76 = v73;
    v77 = v70;
    v78 = v71;
    sub_219BE9EA4();
LABEL_18:
    v87 = v99;
    v88 = v100;
    (*(v99 + 56))(v69, 0, 1, v100);
    (*(v87 + 32))(v68, v69, v88);
    sub_218FDF7B0(v68, v78, v72, v77, v76);
    return (*(v87 + 8))(v68, v88);
  }

  (*(v99 + 56))(v69, 1, 1, v100);
  return sub_2187453AC(v69, &qword_280EE4518, MEMORY[0x277D6E548], MEMORY[0x277D83D88], sub_2187C42D4);
}

uint64_t sub_218FDF7B0(uint64_t a1, UIViewController *a2, void *a3, void (*a4)(void), uint64_t a5)
{
  v47 = a4;
  v45 = a5;
  v46 = a3;
  v48 = a1;
  v49 = a2;
  v5 = sub_219BE9294();
  v41 = *(v5 - 8);
  v42 = v5;
  MEMORY[0x28223BE20](v5);
  v40 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE92A4();
  v44 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE92E4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v39 - v15;
  v17 = sub_219BE92D4();
  v43 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v11 + 16);
  v20(v16, v48, v10);
  v21 = (*(v11 + 88))(v16, v10);
  if (v21 == *MEMORY[0x277D6E4F0])
  {
    (*(v11 + 96))(v16, v10);
    v22 = v44;
    (*(v44 + 32))(v9, v16, v7);
    sub_218FE1B68(v9, v49, v46);
    if (v47)
    {
      v47();
    }

    sub_218A55778();
    v24 = *(v23 + 48);
    (*(v22 + 8))(v9, v7);
    v25 = sub_219BE92B4();
    return (*(*(v25 - 8) + 8))(&v16[v24], v25);
  }

  else
  {
    v27 = v49;
    if (v21 == *MEMORY[0x277D6E518] || v21 == *MEMORY[0x277D6E4F8])
    {
      (*(v11 + 96))(v16, v10);
      v29 = v43;
      (*(v43 + 32))(v19, v16, v17);
      sub_218FE34CC(v27, v46, v19, 2u, v47, v45);
      return (*(v29 + 8))(v19, v17);
    }

    else if (v21 == *MEMORY[0x277D6E4A0])
    {
      (*(v11 + 96))(v16, v10);
      v31 = v40;
      v30 = v41;
      v32 = v42;
      (*(v41 + 32))(v40, v16, v42);
      v33 = sub_218FE31F4(v31, v27);
      if (v47)
      {
        (v47)(v33);
      }

      return (*(v30 + 8))(v31, v32);
    }

    else if (v21 == *MEMORY[0x277D6E520])
    {
      (*(v11 + 96))(v16, v10);
      v34 = *v16;
      v35 = *(*v16 + 16);
      if (v35)
      {
        v36 = *(v11 + 80);
        v44 = *v16;
        v37 = v34 + ((v36 + 32) & ~v36);
        v48 = *(v11 + 72);
        v38 = v46;
        do
        {
          v20(v14, v37, v10);
          sub_218FDF7B0(v14, v27, v38, 0, 0);
          (*(v11 + 8))(v14, v10);
          v37 += v48;
          --v35;
        }

        while (v35);
      }

      if (v47)
      {
        return (v47)(result);
      }
    }

    else
    {
      return (*(v11 + 8))(v16, v10);
    }
  }

  return result;
}

uint64_t sub_218FDFDCC(_BYTE *a1, char *a2)
{
  v2 = a2;
  v4 = [a2 traitCollection];
  v5 = [v4 horizontalSizeClass];

  if (v5 < 2)
  {
    v6 = [v2 _uip_sidebar];
    v7 = [v6 _isEditing];

    if (v7)
    {
      v8 = [v2 _uip_sidebar];
      [v8 _setEditing_];

      LOBYTE(aBlock[0]) = 0;

      sub_219BE2744();
    }

    sub_219BE3264();

    goto LABEL_12;
  }

  if (v5 != 2 || !a1 || a1[qword_280EA07E8] != 1)
  {
LABEL_12:
    v13 = 0;
    goto LABEL_13;
  }

  v9 = a1;
  v10 = [v9 viewControllers];
  sub_2186C6148(0, &qword_280E8E480);
  v11 = sub_219BF5924();

  if (v11 >> 62)
  {
    v12 = sub_219BF7214();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v12 > 1)
  {

    goto LABEL_12;
  }

  v27 = objc_opt_self();
  v28 = swift_allocObject();
  *(v28 + 16) = v9;
  *(v28 + 24) = v2;
  v29 = swift_allocObject();
  v13 = sub_218FEAED4;
  *(v29 + 16) = sub_218FEAED4;
  *(v29 + 24) = v28;
  aBlock[4] = sub_218807CE0;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218807CE4;
  aBlock[3] = &block_descriptor_84_0;
  v30 = _Block_copy(aBlock);
  v31 = v9;
  v32 = v2;

  [v27 performWithoutAnimation_];

  _Block_release(v30);
  LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

  if (v31)
  {
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

LABEL_13:
  v11 = *&v2[OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_navigationControllers];
  aBlock[0] = MEMORY[0x277D84F90];
  if (!(v11 >> 62))
  {
    v14 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_15;
  }

LABEL_39:
  v14 = sub_219BF7214();
LABEL_15:

  if (v14)
  {
    v33 = v13;
    v15 = 0;
    v13 = v11 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x21CECE0F0](v15, v11);
      }

      else
      {
        if (v15 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v16 = *(v11 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_37;
      }

      v19 = v14;
      v20 = *&v16[qword_280EA07E0];
      v21 = v2;
      v22 = [v2 traitCollection];
      v23 = [v22 horizontalSizeClass];

      if (v23 > 2)
      {
        if ((v20 & 4) != 0)
        {
LABEL_27:
          sub_219BF73D4();
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
          goto LABEL_18;
        }
      }

      else if ((v20 & qword_219C519B0[v23]) != 0)
      {
        goto LABEL_27;
      }

LABEL_18:
      v2 = v21;
      ++v15;
      v14 = v19;
      if (v18 == v19)
      {
        v24 = aBlock[0];
        v13 = v33;
        goto LABEL_31;
      }
    }
  }

  v24 = MEMORY[0x277D84F90];
LABEL_31:

  if (v24 < 0 || (v24 & 0x4000000000000000) != 0)
  {
    sub_2186C6148(0, &qword_280E8E480);

    sub_219BF7534();
  }

  else
  {

    sub_219BF7924();
    sub_2186C6148(0, &qword_280E8E480);
  }

  sub_2186C6148(0, &qword_280E8E480);
  v25 = sub_219BF5904();

  [v2 setViewControllers_];

  return sub_2187FABEC(v13);
}

void sub_218FE0338(void *a1, char *a2)
{
  v3 = [a1 _uip_tabElement];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for FloatingTabGroup();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      [v5 _setSelectedElement_];
    }
  }

  v11 = sub_218FE0504(*&a2[OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_searchElementIdentifier], *&a2[OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_searchElementIdentifier + 8]);
  i = [a2 viewControllers];
  if (i)
  {
    sub_2186C6148(0, &qword_280E8E480);
    v7 = sub_219BF5924();

    if (v7 >> 62)
    {
      goto LABEL_25;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
    {
      v8 = 0;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x21CECE0F0](v8, v7);
        }

        else
        {
          if (v8 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_24;
          }

          v9 = *(v7 + 8 * v8 + 32);
        }

        v10 = (v8 + 1);
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (!v11 || v9 != v11)
        {
          i = v9;
          goto LABEL_19;
        }

        ++v8;
        if (v10 == i)
        {
          i = 0;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      ;
    }

LABEL_19:
  }

  [a2 setSelectedViewController_];
}

void *sub_218FE0504(uint64_t a1, uint64_t a2)
{
  v5 = [v2 viewControllers];
  if (v5)
  {
    v6 = v5;
    sub_2186C6148(0, &qword_280E8E480);
    v7 = sub_219BF5924();

    if (v7 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
    {
      v9 = 0;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x21CECE0F0](v9, v7);
        }

        else
        {
          if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v10 = *(v7 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v13 = [v10 _uip_tabElement];
        if (v13)
        {
          v14 = v13;
          v15 = [v13 _identifier];

          v16 = a2;
          v17 = sub_219BF5414();
          v19 = v18;

          if (v17 == a1 && v19 == v16)
          {

            return v11;
          }

          a2 = v16;
          v21 = sub_219BF78F4();

          if (v21)
          {

            return v11;
          }
        }

        ++v9;
        if (v12 == i)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

LABEL_22:
  }

  return 0;
}

uint64_t sub_218FE06F4(void (*a1)(void), uint64_t a2, void *a3)
{
  v5 = OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_layoutCoordinator;
  swift_beginAccess();
  sub_2187DAC98(a3 + v5, &v11, &qword_280E9DA68, &qword_280E9DA70, &protocol descriptor for FloatingTabBarLayoutCoordinatorType, sub_2186C6F70);
  if (v12)
  {
    sub_2186CB1F0(&v11, v13);
    __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    v6 = sub_2187DAD0C();
    v7 = [a3 traitCollection];
    v8 = [v7 horizontalSizeClass];

    if (v8 == 2)
    {
      sub_218F8A3C4(a3, v6, a1);
    }

    else if (v8 == 1)
    {
      sub_218F8A13C(a3, v6, a1);
    }

    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    v9 = sub_2187453AC(&v11, &qword_280E9DA68, &qword_280E9DA70, &protocol descriptor for FloatingTabBarLayoutCoordinatorType, sub_2186C6F70);
    return (a1)(v9);
  }
}

uint64_t sub_218FE0880(UIViewController *a1)
{
  v2 = v1;
  v122 = a1;
  v3 = MEMORY[0x277D83D88];
  sub_2187C42D4(0, &qword_280EE4518, MEMORY[0x277D6E548], MEMORY[0x277D83D88]);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v110 = (&v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v108 = &v104 - v7;
  v112 = sub_219BE92E4();
  v111 = *(v112 - 8);
  v8 = MEMORY[0x28223BE20](v112);
  v109 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v107 = &v104 - v10;
  sub_2187C42D4(0, &unk_280EE4470, MEMORY[0x277D6E658], v3);
  v115 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v118 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v116 = &v104 - v15;
  v114 = v16;
  MEMORY[0x28223BE20](v14);
  v119 = &v104 - v17;
  sub_2187C42D4(0, &unk_280EE3DC0, MEMORY[0x277D6E908], v3);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v104 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v104 - v22;
  sub_2187C04A0();
  v25 = v24;
  v26 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v28 = &v104 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_219BE9EC4();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v29);
  v117 = &v104 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v32);
  v113 = &v104 - v34;
  MEMORY[0x28223BE20](v33);
  v121 = &v104 - v35;
  v36 = OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_presentationContextCache;
  swift_beginAccess();
  (*(v26 + 16))(v28, &v2[v36], v25);
  v125[0] = v122;
  sub_219BE1C74();
  (*(v26 + 8))(v28, v25);
  v120 = v30;
  if ((*(v30 + 48))(v23, 1, v29) == 1)
  {
    v37 = &unk_280EE3DC0;
    v38 = MEMORY[0x277D6E908];
    v39 = MEMORY[0x277D83D88];
    v40 = v23;
    return sub_2187453AC(v40, v37, v38, v39, sub_2187C42D4);
  }

  v42 = v120;
  v43 = v121;
  v44 = *(v120 + 32);
  v106 = v120 + 32;
  v105 = v44;
  v44(v121, v23, v29);
  v45 = sub_219BE94F4();
  v46 = v119;
  (*(*(v45 - 8) + 56))(v119, 1, 1, v45);
  v104 = *(v42 + 16);
  v104(v21, v43, v29);
  (*(v42 + 56))(v21, 0, 1, v29);
  v47 = v122;
  *&v123 = v122;
  swift_beginAccess();
  v122 = v47;
  sub_219BE1C84();
  swift_endAccess();
  v48 = OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_layoutCoordinator;
  swift_beginAccess();
  sub_2187DAC98(&v2[v48], &v123, &qword_280E9DA68, &qword_280E9DA70, &protocol descriptor for FloatingTabBarLayoutCoordinatorType, sub_2186C6F70);
  v49 = v29;
  if (v124)
  {
    sub_2186CB1F0(&v123, v125);
    v110 = __swift_project_boxed_opaque_existential_1(v125, v125[3]);
    v50 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v51 = v113;
    v52 = v104;
    v104(v113, v121, v49);
    v53 = MEMORY[0x277D6E658];
    v54 = MEMORY[0x277D83D88];
    v55 = v116;
    sub_2187DAC98(v46, v116, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88], sub_2187C42D4);
    v52(v117, v51, v49);
    v56 = v54;
    v57 = v49;
    sub_2187DAC98(v55, v118, &unk_280EE4470, v53, v56, sub_2187C42D4);
    v58 = v120;
    v59 = (*(v120 + 80) + 24) & ~*(v120 + 80);
    v60 = (v31 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
    v61 = (*(v115 + 80) + v60 + 8) & ~*(v115 + 80);
    v62 = (v114 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
    v63 = swift_allocObject();
    *(v63 + 16) = v50;
    v115 = v57;
    v105(v63 + v59, v51, v57);
    v64 = v122;
    *(v63 + v60) = v122;
    sub_218FEADDC(v55, v63 + v61);
    v65 = (v63 + v62);
    *v65 = 0;
    v65[1] = 0;
    v66 = *(*v110 + 32);
    v67 = v121;
    if (v66)
    {
      v68 = objc_opt_self();
      v69 = v64;
      v116 = v50;

      v70 = [v68 areAnimationsEnabled];
      v71 = swift_allocObject();
      *(v71 + 16) = v70;
      *(v71 + 24) = sub_218FEAE70;
      *(v71 + 32) = v63;
      swift_beginAccess();
      v72 = *(v66 + 32);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v66 + 32) = v72;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v72 = sub_2191F67A4(0, v72[2] + 1, 1, v72);
        *(v66 + 32) = v72;
      }

      v75 = v72[2];
      v74 = v72[3];
      if (v75 >= v74 >> 1)
      {
        v72 = sub_2191F67A4((v74 > 1), v75 + 1, 1, v72);
      }

      v72[2] = v75 + 1;
      v76 = &v72[2 * v75];
      v76[4] = sub_218FEAE74;
      v76[5] = v71;
      *(v66 + 32) = v72;
      swift_endAccess();

      v64 = v122;
      goto LABEL_25;
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v83 = v64;
    v84 = v83;
    if (Strong)
    {
      swift_retain_n();
      v85 = v84;
      v86 = [Strong traitCollection];
      v87 = [v86 horizontalSizeClass];

      if (v87 == 2)
      {
        v88 = v108;
        sub_219BE9E94();
      }

      else
      {
        if (v87 != 1)
        {

          v99 = v108;
          (*(v111 + 56))(v108, 1, 1, v112);
          sub_2187453AC(v99, &qword_280EE4518, MEMORY[0x277D6E548], MEMORY[0x277D83D88], sub_2187C42D4);

          goto LABEL_25;
        }

        v88 = v108;
        sub_219BE9EA4();
      }

      v94 = v111;
      v95 = v88;
      v96 = v88;
      v97 = v112;
      (*(v111 + 56))(v95, 0, 1, v112);
      v98 = v107;
      (*(v94 + 32))(v107, v96, v97);
      sub_218FDF7B0(v98, v85, v118, 0, 0);

      (*(v94 + 8))(v98, v97);

      v64 = v122;
    }

    else
    {
      v93 = v83;
    }

LABEL_25:

    v100 = *(v58 + 8);
    v101 = v115;
    v100(v117, v115);

    v102 = MEMORY[0x277D6E658];
    v103 = MEMORY[0x277D83D88];
    sub_2187453AC(v118, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88], sub_2187C42D4);
    sub_2187453AC(v119, &unk_280EE4470, v102, v103, sub_2187C42D4);
    v100(v67, v101);

    return __swift_destroy_boxed_opaque_existential_1(v125);
  }

  v77 = v121;
  v78 = v122;
  sub_2187453AC(&v123, &qword_280E9DA68, &qword_280E9DA70, &protocol descriptor for FloatingTabBarLayoutCoordinatorType, sub_2186C6F70);
  v79 = [v2 traitCollection];
  v80 = [v79 horizontalSizeClass];

  if (v80 == 2)
  {
    v81 = v110;
    sub_219BE9E94();
  }

  else
  {
    v81 = v110;
    if (v80 != 1)
    {
      v92 = MEMORY[0x277D83D88];
      sub_2187453AC(v46, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88], sub_2187C42D4);
      (*(v120 + 8))(v77, v49);
      (*(v111 + 56))(v81, 1, 1, v112);
      v37 = &qword_280EE4518;
      v38 = MEMORY[0x277D6E548];
      v40 = v81;
      v39 = v92;
      return sub_2187453AC(v40, v37, v38, v39, sub_2187C42D4);
    }

    sub_219BE9EA4();
  }

  v89 = v111;
  v90 = v112;
  (*(v111 + 56))(v81, 0, 1, v112);
  v91 = v109;
  (*(v89 + 32))(v109, v81, v90);
  sub_218FDF7B0(v91, v78, v46, 0, 0);
  (*(v89 + 8))(v91, v90);
  sub_2187453AC(v46, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88], sub_2187C42D4);
  return (*(v120 + 8))(v77, v49);
}

void *sub_218FE1838(uint64_t a1, uint64_t a2, UIViewController *a3, void *a4, void (*a5)(void), uint64_t a6)
{
  sub_2187C42D4(0, &qword_280EE4518, MEMORY[0x277D6E548], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v21 - v11;
  v13 = sub_219BE92E4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = result;
    v22 = a3;
    v23 = a4;
    v19 = [result traitCollection];
    v20 = [v19 horizontalSizeClass];

    if (v20 == 2)
    {
      sub_219BE9E94();
      goto LABEL_6;
    }

    if (v20 == 1)
    {
      sub_219BE9EA4();
LABEL_6:
      (*(v14 + 56))(v12, 0, 1, v13);
      (*(v14 + 32))(v16, v12, v13);
      sub_218FDF7B0(v16, v22, v23, a5, a6);

      return (*(v14 + 8))(v16, v13);
    }

    (*(v14 + 56))(v12, 1, 1, v13);
    return sub_2187453AC(v12, &qword_280EE4518, MEMORY[0x277D6E548], MEMORY[0x277D83D88], sub_2187C42D4);
  }

  return result;
}

uint64_t sub_218FE1AE0(void *a1, char a2)
{
  v3 = [a1 _uip_sidebar];
  [v3 _setVisible_];

  sub_219BE2744();
}

void sub_218FE1B68(uint64_t a1, UIViewController *a2, uint64_t a3)
{
  v4 = v3;
  v129 = a3;
  v130 = a2;
  v157 = a1;
  v5 = MEMORY[0x277D83D88];
  sub_2187C42D4(0, &qword_280EE4518, MEMORY[0x277D6E548], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v155 = &v124 - v7;
  v8 = sub_219BE92E4();
  v140 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v158 = &v124 - v12;
  sub_2187C42D4(0, &unk_280EE3DC0, MEMORY[0x277D6E908], v5);
  MEMORY[0x28223BE20](v13 - 8);
  v159 = &v124 - v14;
  sub_2187C04A0();
  v16 = v15;
  v146 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v124 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_219BE9EC4();
  v128 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v160 = &v124 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_219BE92A4();
  v22 = *(v21 - 1);
  MEMORY[0x28223BE20](v21);
  v24 = (&v124 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_2187DAD0C();
  if (!v25)
  {
    return;
  }

  v26 = v25;
  (*(v22 + 16))(v24, v157, v21);
  v27 = *(v22 + 88);
  v152 = v22 + 88;
  v151 = v27;
  v28 = v27(v24, v21);
  v29 = v28 == *MEMORY[0x277D6E4B8];
  v150 = v4;
  v153 = v21;
  if (v29)
  {
    v134 = v28;
    v154 = v19;
    v30 = *(v22 + 96);
    v132 = v22 + 96;
    v131 = v30;
    v30(v24, v21);
    v31 = *v24;
    v156 = v24[1];
    v157 = v31;
    v32 = v26;
    v33 = [v32 presentedViewController];
    if (v33)
    {
      v34 = v33;
      [v33 _setPreferredTransition_];
      [v32 dismissViewControllerAnimated:objc_msgSend(objc_opt_self() completion:{sel_areAnimationsEnabled), 0}];
    }

    v125 = v22;
    v35 = [v32 viewControllers];
    v126 = v32;

    sub_2186C6148(0, &qword_280E8E480);
    v36 = sub_219BF5924();

    isUniquelyReferenced_nonNull_bridgeObject = v36;
    *&v162 = v36;
    if (v36 >> 62)
    {
LABEL_125:
      v122 = isUniquelyReferenced_nonNull_bridgeObject;
      v38 = sub_219BF7214();
      isUniquelyReferenced_nonNull_bridgeObject = v122;
    }

    else
    {
      v38 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v39 = v154;
    v40 = v159;
    v41 = OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_presentationContextCache;
    v127 = isUniquelyReferenced_nonNull_bridgeObject;

    v148 = v41;
    swift_beginAccess();
    if (!v38)
    {
LABEL_98:

LABEL_73:
      v88 = v126;
      UINavigationController.setViewControllers(_:appendingVC:transitionIdentifier:)(&v162, v130, v129);

      goto LABEL_74;
    }

    v42 = v127;
    v149 = v127 & 0xC000000000000001;
    v144 = v127 & 0xFFFFFFFFFFFFFF8;
    v143 = v127 + 32;
    v147 = (v146 + 2);
    ++v146;
    v145 = (v128 + 48);
    v141 = (v128 + 32);
    v142 = (v140 + 7);
    v139 = (v140 + 4);
    v138 = (v140 + 2);
    v137 = (v140 + 11);
    v136 = *MEMORY[0x277D6E4F0];
    v133 = (v140 + 12);
    v135 = v140 + 1;
    v140 = (v128 + 8);
    while (1)
    {
      v44 = __OFSUB__(v38--, 1);
      if (v44)
      {
        __break(1u);
LABEL_111:
        __break(1u);
LABEL_112:
        __break(1u);
        goto LABEL_113;
      }

      if (v149)
      {
        v45 = MEMORY[0x21CECE0F0](v38, v127);
      }

      else
      {
        if ((v38 & 0x8000000000000000) != 0)
        {
          goto LABEL_111;
        }

        if (v38 >= *(v144 + 16))
        {
          goto LABEL_112;
        }

        v45 = *(v143 + 8 * v38);
      }

      v21 = v45;
      (*v147)(v18, v4 + v148, v16);
      p_isa = v21;
      sub_219BE1C74();
      v46 = v159;
      (*v146)(v18, v16);
      if ((*v145)(v46, 1, v39) == 1)
      {

        sub_2187453AC(v46, &unk_280EE3DC0, MEMORY[0x277D6E908], MEMORY[0x277D83D88], sub_2187C42D4);
        goto LABEL_73;
      }

      v47 = v46;
      v48 = v4;
      v49 = v160;
      (*v141)(v160, v47, v39);
      v50 = [v48 traitCollection];
      v51 = [v50 horizontalSizeClass];

      if (v51 == 2)
      {
        v52 = v155;
        v53 = v49;
        sub_219BE9E94();
      }

      else
      {
        v52 = v155;
        if (v51 != 1)
        {

          (*v142)(v52, 1, 1, v8);
          (*v140)(v160, v154);
          sub_2187453AC(v52, &qword_280EE4518, MEMORY[0x277D6E548], MEMORY[0x277D83D88], sub_2187C42D4);
          goto LABEL_73;
        }

        v53 = v160;
        sub_219BE9EA4();
      }

      (*v142)(v52, 0, 1, v8);
      v54 = v158;
      (*v139)(v158, v52, v8);
      (*v138)(v11, v54, v8);
      v55 = (*v137)(v11, v8);
      if (v55 != v136)
      {

        v79 = *v135;
        (*v135)(v158, v8);
        (*v140)(v53, v154);
        v79(v11, v8);
        goto LABEL_73;
      }

      (*v133)(v11, v8);
      sub_218A55778();
      v57 = *(v56 + 48);
      v58 = v153;
      v59 = v151(v11, v153);
      if (v59 != v134)
      {

        (*v135)(v158, v8);
        (*v140)(v160, v154);
        v80 = sub_219BE92B4();
        (*(*(v80 - 8) + 8))(v11 + v57, v80);
        (*(v125 + 8))(v11, v58);
        goto LABEL_73;
      }

      v131(v11, v58);
      v61 = *v11;
      v60 = *(v11 + 8);
      v62 = sub_219BE92B4();
      (*(*(v62 - 8) + 8))(v11 + v57, v62);
      if (v157 == v61 && v156 == v60)
      {

        v4 = v150;
      }

      else
      {
        v63 = sub_219BF78F4();

        v4 = v150;
        if ((v63 & 1) == 0)
        {

          (*v135)(v158, v8);
          (*v140)(v160, v154);
          goto LABEL_73;
        }
      }

      if (v42 >> 62)
      {
        v66 = sub_219BF7214();
        v39 = v154;
        if (!v66)
        {
LABEL_10:

          v43 = 0;
          goto LABEL_11;
        }
      }

      else
      {
        v39 = v154;
        if (!*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_10;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (v42 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_2194B7E54(v42);
        v42 = isUniquelyReferenced_nonNull_bridgeObject;
      }

      v64 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v64)
      {
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
        goto LABEL_124;
      }

      v65 = v64 - 1;
      v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 8 * v65 + 0x20);
      *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) = v65;

      *&v162 = v42;
LABEL_11:
      (*v135)(v158, v8);
      (*v140)(v160, v39);

      v40 = v159;
      if (!v38)
      {
        goto LABEL_98;
      }
    }
  }

  if (v28 == *MEMORY[0x277D6E4E0])
  {
    v67 = [objc_opt_self() areAnimationsEnabled];
    sub_219798754(v67);
LABEL_40:

LABEL_74:

    return;
  }

  if (v28 == *MEMORY[0x277D6E4D0])
  {
    v26 = v26;
    v68 = [v26 presentedViewController];
    if (v68)
    {
      v69 = v68;
      [v68 _setPreferredTransition_];
      [v26 dismissViewControllerAnimated:objc_msgSend(objc_opt_self() completion:{sel_areAnimationsEnabled), 0}];
    }

    v70 = [v26 topViewController];

    v71 = v130;
    v72 = _sSo16UIViewControllerC7NewsUI2E22hasMatchingIdentifiers3lhs3rhsSbABSg_AGtFZ_0(v130, v70);

    if (v72)
    {

      return;
    }

    v81 = [v26 viewControllers];

    sub_2186C6148(0, &qword_280E8E480);
    v82 = sub_219BF5924();

    v83 = sub_218E659B0(v71, v82);
    v85 = v84;

    if (v85)
    {
      v86 = v71;
LABEL_67:
      UINavigationController.show(_:sender:transitionIdentifier:)(v86, 0, v129);

      return;
    }

    v92 = [objc_opt_self() areAnimationsEnabled];
    UINavigationController.swap(_:at:animated:)(v71, v83, v92);
LABEL_85:

    return;
  }

  if (v28 == *MEMORY[0x277D6E4C0])
  {
    v26 = v26;
    v73 = [v26 presentedViewController];
    v11 = &selRef_moveShortcutWithIdentifier_toIndex_;
    if (v73)
    {
      v74 = v73;
      [v73 _setPreferredTransition_];
      [v26 dismissViewControllerAnimated:objc_msgSend(objc_opt_self() completion:{sel_areAnimationsEnabled), 0}];
    }

    v75 = [v26 viewControllers];

    sub_2186C6148(0, &qword_280E8E480);
    v18 = sub_219BF5924();

    if (v18 >> 62)
    {
      isUniquelyReferenced_nonNull_bridgeObject = sub_219BF7214();
      v16 = isUniquelyReferenced_nonNull_bridgeObject;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
LABEL_52:
        v4 = v18 & 0xC000000000000001;
        v21 = (v18 + 32);
        while (1)
        {
          v44 = __OFSUB__(v16--, 1);
          if (v44)
          {
            goto LABEL_122;
          }

          if (v4)
          {
            v76 = MEMORY[0x21CECE0F0](v16, v18);
          }

          else
          {
            if ((v16 & 0x8000000000000000) != 0)
            {
              goto LABEL_123;
            }

            if (v16 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
LABEL_124:
              __break(1u);
              goto LABEL_125;
            }

            v76 = v21[v16];
          }

          v77 = v76;
          v78 = v76;
          v8 = _sSo16UIViewControllerC7NewsUI2E22hasMatchingIdentifiers3lhs3rhsSbABSg_AGtFZ_0(v77, v130);

          if (v8)
          {
            break;
          }

          if (!v16)
          {
            goto LABEL_127;
          }
        }

        v87 = [objc_opt_self() areAnimationsEnabled];
        sub_219798980(v78, v87);

        goto LABEL_40;
      }
    }

    else
    {
      v16 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
        goto LABEL_52;
      }
    }

LABEL_127:

    v86 = v130;
    goto LABEL_67;
  }

  if (v28 != *MEMORY[0x277D6E4D8] && v28 != *MEMORY[0x277D6E4C8])
  {

    (*(v22 + 8))(v24, v153);
    return;
  }

  if (*(v26 + qword_280EA07E8) != 1)
  {
    goto LABEL_85;
  }

  v18 = v26;
  v42 = &selRef_moveShortcutWithIdentifier_toIndex_;
  v40 = [v18 viewControllers];
  sub_2186C6148(0, &qword_280E8E480);
  v89 = sub_219BF5924();

  v16 = v89 >> 62;
  if (!(v89 >> 62))
  {
    v11 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_79;
    }

LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v89 < 0)
  {
    v40 = v89;
  }

  else
  {
    v40 = (v89 & 0xFFFFFFFFFFFFFF8);
  }

  v123 = sub_219BF7214();
  if (v123 < 1)
  {
    __break(1u);
    goto LABEL_140;
  }

  v11 = v123;
  if (sub_219BF7214() < 1)
  {
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  if (sub_219BF7214() < v11)
  {
    __break(1u);
    goto LABEL_135;
  }

LABEL_141:
  v4 = v150;
LABEL_79:
  if ((v89 & 0xC000000000000001) != 0)
  {

    if (v11 != 1)
    {
      v90 = 1;
      do
      {
        v91 = v90 + 1;
        sub_219BF7334();
        v90 = v91;
      }

      while (v11 != v91);
    }
  }

  else
  {
  }

  if (v16)
  {
    v16 = sub_219BF7564();
    v40 = v93;
    v8 = v94;
    v11 = v95;
  }

  else
  {
    v16 = v89 & 0xFFFFFFFFFFFFFF8;
    v40 = ((v89 & 0xFFFFFFFFFFFFFF8) + 32);
    v8 = 1;
    v11 = (2 * v11) | 1;
  }

  v21 = (v11 >> 1);
  if (v8 == v11 >> 1)
  {
    v164 = 0;
    v162 = 0u;
    v163 = 0u;
    goto LABEL_100;
  }

  if (v8 >= (v11 >> 1))
  {
    goto LABEL_136;
  }

  v165 = *(v40 + v8);
  v96 = v165;
  sub_2186CFDE4(0, &unk_280EE7DD8);
  v97 = v96;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v164 = 0;
    v162 = 0u;
    v163 = 0u;
    v4 = v150;
    goto LABEL_100;
  }

  v4 = v150;
  if (!*(&v163 + 1))
  {
LABEL_100:
    sub_2187453AC(&v162, &qword_280EE7DD0, &unk_280EE7DD8, MEMORY[0x277D6CAA8], sub_2186C6F70);
    goto LABEL_101;
  }

  sub_2186CB1F0(&v162, &v165);
  if ((v11 & 1) == 0)
  {

    swift_unknownObjectRetain();
LABEL_97:
    sub_218B665C0(v16, v40, v8, v11);
    v99 = v98;
LABEL_119:
    swift_unknownObjectRelease();
    goto LABEL_120;
  }

LABEL_113:
  v118 = sub_219BF7934();
  swift_unknownObjectRetain_n();

  v160 = v118;
  v119 = swift_dynamicCastClass();
  if (!v119)
  {
    swift_unknownObjectRelease();
    v119 = MEMORY[0x277D84F90];
  }

  v120 = *(v119 + 16);

  if (__OFSUB__(v21, v8))
  {
    goto LABEL_137;
  }

  if (v120 != v21 - v8)
  {
LABEL_138:
    swift_unknownObjectRelease();
    goto LABEL_97;
  }

  v99 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v99)
  {
    v99 = MEMORY[0x277D84F90];
    goto LABEL_119;
  }

LABEL_120:
  p_isa = v99;
  __swift_project_boxed_opaque_existential_1(&v165, v166);
  *&v162 = sub_219BE1D74();
  *(&v162 + 1) = v121;
  sub_219BE3254();

  __swift_destroy_boxed_opaque_existential_1(&v165);
  v4 = v150;
LABEL_101:
  v100 = v130;
  v101 = sub_218FE6B38(v130, v4, v18);
  v102 = [v18 *(v42 + 3848)];

  v103 = sub_219BF5924();
  LOBYTE(v102) = sub_21941AD5C(v103, v101);

  if (v102)
  {

    swift_unknownObjectRelease();
  }

  else
  {
    v104 = sub_219BF5904();

    [v18 setViewControllers:v104 animated:0];

    p_isa = &v100->super.super.isa;
    sub_2186CFDE4(0, &unk_280EE7DD8);
    v105 = v100;
    if (swift_dynamicCast())
    {
      sub_2186CB1F0(&v162, &v165);
      v106 = v4 + OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_sidebarDelegate;
      if (swift_unknownObjectWeakLoadStrong() && (v107 = *(v106 + 8), ObjectType = swift_getObjectType(), __swift_project_boxed_opaque_existential_1(&v165, v166), v4 = v150, v109 = sub_219BE1D74(), v111 = (*(v107 + 40))(v4, v109, v110, ObjectType, v107), swift_unknownObjectRelease(), , v111))
      {
        v112 = [v111 identifier];
        v113 = sub_219BF5414();
        v115 = v114;

        swift_unknownObjectRelease();
        v116 = (v4 + OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_previousSelectedElementIdentifier);
        *v116 = v113;
        v116[1] = v115;
      }

      else
      {
        swift_unknownObjectRelease();

        v117 = (v4 + OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_previousSelectedElementIdentifier);
        *v117 = 0;
        v117[1] = 0;
      }

      __swift_destroy_boxed_opaque_existential_1(&v165);
    }

    else
    {

      swift_unknownObjectRelease();
      v164 = 0;
      v162 = 0u;
      v163 = 0u;
      sub_2187453AC(&v162, &qword_280EE7DD0, &unk_280EE7DD8, MEMORY[0x277D6CAA8], sub_2186C6F70);
    }
  }
}