uint64_t sub_218C543E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BED8D4();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C54BD0(0, &qword_27CC0FD90, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for FeaturedIssueMagazineFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218C54B18();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_218C54C34(&unk_280E92630, MEMORY[0x277D31C50]);
    sub_219BF7734();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_218C54B6C(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218C54694(uint64_t a1)
{
  v2 = sub_218C54B18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218C546D0(uint64_t a1)
{
  v2 = sub_218C54B18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218C54724(void *a1)
{
  sub_218C54BD0(0, &qword_27CC0FDA0, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218C54B18();
  sub_219BF7B44();
  sub_219BED8D4();
  sub_218C54C34(&qword_280E92640, MEMORY[0x277D31C50]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_218C548AC(uint64_t a1)
{
  v2 = sub_218C54C34(&qword_280EACF60, type metadata accessor for FeaturedIssueMagazineFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_218C5493C(void *a1)
{
  a1[1] = sub_218C54C34(&qword_280EACF60, type metadata accessor for FeaturedIssueMagazineFeedGroup);
  a1[2] = sub_218C54C34(&qword_27CC0FD78, type metadata accessor for FeaturedIssueMagazineFeedGroup);
  result = sub_218C54C34(&qword_27CC0FD80, type metadata accessor for FeaturedIssueMagazineFeedGroup);
  a1[3] = result;
  return result;
}

uint64_t sub_218C54AC0(uint64_t a1)
{
  result = sub_218C54C34(&qword_27CC0FD88, type metadata accessor for FeaturedIssueMagazineFeedGroup);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_218C54B18()
{
  result = qword_27CC0FD98;
  if (!qword_27CC0FD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0FD98);
  }

  return result;
}

uint64_t sub_218C54B6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeaturedIssueMagazineFeedGroup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218C54BD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218C54B18();
    v7 = a3(a1, &type metadata for FeaturedIssueMagazineFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218C54C34(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_218C54C90()
{
  result = qword_27CC0FDA8;
  if (!qword_27CC0FDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0FDA8);
  }

  return result;
}

unint64_t sub_218C54CE8()
{
  result = qword_27CC0FDB0;
  if (!qword_27CC0FDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0FDB0);
  }

  return result;
}

unint64_t sub_218C54D40()
{
  result = qword_27CC0FDB8;
  if (!qword_27CC0FDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0FDB8);
  }

  return result;
}

id sub_218C54D94()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC7NewsUI215ShortcutService_shortcutList] removeObserver_];
  [*&v0[OBJC_IVAR____TtC7NewsUI215ShortcutService_subscriptionController] removeObserver_];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_218C54F50()
{
  v0 = sub_218C552B4();
  v1 = v0;
  v31 = MEMORY[0x277D84F90];
  if (v0 >> 62)
  {
LABEL_29:
    v2 = sub_219BF7214();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v25 = OBJC_IVAR____TtC7NewsUI215ShortcutService_featureAvailability;
      v26 = OBJC_IVAR____TtC7NewsUI215ShortcutService_tagService;
      v27 = v1 & 0xFFFFFFFFFFFFFF8;
      v28 = v1 & 0xC000000000000001;
      while (1)
      {
        if (v28)
        {
          v4 = MEMORY[0x21CECE0F0](v3, v1);
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_26:
            __break(1u);
LABEL_27:
            v23 = v31;
            goto LABEL_31;
          }
        }

        else
        {
          if (v3 >= *(v27 + 16))
          {
            __break(1u);
            goto LABEL_29;
          }

          v4 = *(v1 + 8 * v3 + 32);
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_26;
          }
        }

        v30 = v5;
        v6 = v2;
        v7 = v1;
        v8 = *(v29 + v26);
        v9 = v4;
        v10 = [v4 identifier];
        v11 = v10;
        v12 = v10;
        v13 = v10;
        if (!v10)
        {
          sub_219BF5414();
          v13 = sub_219BF53D4();

          sub_219BF5414();
          v12 = sub_219BF53D4();

          sub_219BF5414();
          v11 = sub_219BF53D4();
        }

        v14 = objc_opt_self();
        v15 = v10;
        LODWORD(v14) = [v14 isPuzzleTypeIdentifier_];

        if (!v14)
        {
          break;
        }

        v16 = [*(v8 + 24) cachedPuzzleTypeForID_];

        v1 = v7;
        v2 = v6;
        v17 = v30;
        if (!v16)
        {
          goto LABEL_15;
        }

LABEL_16:
        swift_getObjectType();
        v19 = swift_unknownObjectRetain();
        v20 = sub_218E97A64(v19, v8);
        swift_unknownObjectRelease_n();
        if ([v20[2] asPuzzleType])
        {
          if (![*(v29 + v25) puzzlesEnabled])
          {
            swift_unknownObjectRelease();
LABEL_22:

LABEL_23:

            goto LABEL_5;
          }

          swift_getObjectType();
          v21 = sub_219BF68F4();
          swift_unknownObjectRelease();
          if ((v21 & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        v22 = [objc_opt_self() isTagAllowedForNewsVersion_];

        if ((v22 & 1) == 0)
        {
          goto LABEL_23;
        }

LABEL_4:
        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
LABEL_5:
        ++v3;
        if (v17 == v2)
        {
          goto LABEL_27;
        }
      }

      v1 = v7;
      v2 = v6;
      v17 = v30;
LABEL_15:
      v18 = [*(v8 + 16) slowCachedTagForID_];

      if (!v18)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  v23 = MEMORY[0x277D84F90];
LABEL_31:

  return v23;
}

uint64_t sub_218C552B4()
{
  sub_219BE1AB4();
  v1 = OBJC_IVAR____TtC7NewsUI215ShortcutService_unsafeOrderedShortcuts;
  v2 = *(v0 + OBJC_IVAR____TtC7NewsUI215ShortcutService_unsafeOrderedShortcuts);
  if (!v2)
  {
    v3 = [*(v0 + OBJC_IVAR____TtC7NewsUI215ShortcutService_shortcutList) orderedShortcuts];
    v4 = [v3 array];

    v5 = sub_219BF5924();
    v6 = sub_218B0C4D8(v5);

    v2 = *(v0 + v1);
    if (v6)
    {
      *(v0 + v1) = v6;

      v2 = *(v0 + v1);
    }
  }

  if (v2)
  {
    v7 = v2;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  sub_219BE1AC4();
  return v7;
}

void sub_218C553A4(uint64_t a1)
{
  v2 = sub_219BDBD34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + OBJC_IVAR____TtC7NewsUI215ShortcutService_subscriptionController);
  v7 = sub_219BF53D4();
  LODWORD(v6) = [v6 hasSubscriptionToTagID_];

  if (v6)
  {
    sub_219BDBD24();
    v8 = sub_218C552B4();
    if (v8 >> 62)
    {
      v9 = sub_219BF7214();
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v11 = objc_allocWithZone(MEMORY[0x277D312E0]);
    v12 = sub_219BF53D4();
    v13 = sub_219BDBC04();
    v14 = [v11 initWithIdentifier:v12 dateAdded:v13 order:v10 shortcutType:0];

    (*(v3 + 8))(v5, v2);
    if (qword_280EE5F18 != -1)
    {
      swift_once();
    }

    v15 = sub_219BE5434();
    __swift_project_value_buffer(v15, qword_280F62538);
    v16 = v14;
    v17 = sub_219BE5414();
    v18 = sub_219BF6214();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v27 = v20;
      *v19 = 136315138;
      v21 = [v16 identifier];
      v22 = sub_219BF5414();
      v24 = v23;

      v25 = sub_2186D1058(v22, v24, &v27);

      *(v19 + 4) = v25;
      _os_log_impl(&dword_2186C1000, v17, v18, "Added favorited shortcut=%s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x21CECF960](v20, -1, -1);
      MEMORY[0x21CECF960](v19, -1, -1);
    }

    [*(a1 + OBJC_IVAR____TtC7NewsUI215ShortcutService_shortcutList) addShortcut_];
  }
}

BOOL sub_218C556E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_218C552B4();
  v5 = v4;
  v6 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 >> 62)
  {
LABEL_21:
    v18 = sub_219BF7214();
  }

  else
  {
    v18 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  do
  {
    v8 = v7;
    if (v18 == v7)
    {
      break;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x21CECE0F0](v7, v5);
    }

    else
    {
      if (v7 >= *(v6 + 16))
      {
        goto LABEL_20;
      }

      v9 = *(v5 + 8 * v7 + 32);
    }

    v10 = v9;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v11 = [v9 identifier];
    v12 = sub_219BF5414();
    v14 = v13;

    if (v12 == a1 && v14 == a2)
    {

      break;
    }

    v16 = sub_219BF78F4();

    v7 = v8 + 1;
  }

  while ((v16 & 1) == 0);

  return v18 != v8;
}

id sub_218C55854(void *a1, uint64_t a2)
{
  v5 = [a1 identifier];
  v6 = sub_219BF5414();
  v8 = v7;

  LOBYTE(v5) = sub_218C556E8(v6, v8);

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v9 = *(v2 + OBJC_IVAR____TtC7NewsUI215ShortcutService_shortcutList);
  result = [a1 identifier];
  v11 = result;
  if (!result)
  {
    sub_219BF5414();
    v11 = sub_219BF53D4();
  }

  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v12 = [v9 moveShortcutWithIdentifier:v11 toIndex:a2];

    return v12;
  }

  return result;
}

void *sub_218C55948(uint64_t a1, uint64_t a2)
{
  v4 = sub_218C552B4();
  v5 = v4;
  if (v4 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x21CECE0F0](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v11 = [v8 identifier];
      v12 = sub_219BF5414();
      v14 = v13;

      if (v12 == a1 && v14 == a2)
      {

        return v9;
      }

      v16 = sub_219BF78F4();

      if (v16)
      {

        return v9;
      }

      ++v7;
      if (v10 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_21:

  return 0;
}

void sub_218C55B28(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = a4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_218C55B8C()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7NewsUI215ShortcutService_shortcutList);
  v2 = sub_219BF5904();
  [v1 updateShortcutOrderForOrderedIdentifiers_];
}

uint64_t sub_218C55BF8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *__swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_218C566C8(v8, a2, a3, a4, v4);
}

unint64_t sub_218C55C54(uint64_t a1)
{
  v32 = a1;
  result = sub_218C552B4();
  v3 = result;
  if (result >> 62)
  {
    result = sub_219BF7214();
    v4 = result;
    if (result)
    {
LABEL_3:
      if (v4 < 1)
      {
        __break(1u);
      }

      else
      {
        v5 = 0;
        v31 = v3 & 0xC000000000000001;
        v28 = OBJC_IVAR____TtC7NewsUI215ShortcutService_shortcutList;
        v6 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
        *&v2 = 136315138;
        v27 = v2;
        v29 = v4;
        do
        {
          if (v31)
          {
            v10 = MEMORY[0x21CECE0F0](v5, v3);
          }

          else
          {
            v10 = *(v3 + 8 * v5 + 32);
          }

          v9 = v10;
          v11 = [v10 v6[278]];
          v12 = sub_219BF5414();
          v14 = v13;

          v33[0] = v12;
          v33[1] = v14;
          MEMORY[0x28223BE20](v15);
          v26[2] = v33;
          LOBYTE(v11) = sub_2186D128C(sub_2186D1338, v26, v32);

          if (v11)
          {
            v16 = v3;
            v17 = [v9 v6[278]];
            v18 = sub_219BF5414();
            v20 = v19;

            if (sub_218C556E8(v18, v20))
            {
              if (qword_280EE5F18 != -1)
              {
                swift_once();
              }

              v21 = sub_219BE5434();
              __swift_project_value_buffer(v21, qword_280F62538);

              v22 = sub_219BE5414();
              v23 = sub_219BF6214();

              if (os_log_type_enabled(v22, v23))
              {
                v24 = swift_slowAlloc();
                v25 = swift_slowAlloc();
                v33[0] = v25;
                *v24 = v27;
                *(v24 + 4) = sub_2186D1058(v18, v20, v33);
                _os_log_impl(&dword_2186C1000, v22, v23, "Removed favorited shortcut=%s", v24, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v25);
                MEMORY[0x21CECF960](v25, -1, -1);
                v6 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
                MEMORY[0x21CECF960](v24, -1, -1);
              }

              v7 = *(v30 + v28);
              v8 = sub_219BF53D4();
              [v7 removeShortcutWithIdentifier_];

              v9 = v8;
            }

            else
            {
            }

            v3 = v16;
            v4 = v29;
          }

          ++v5;
        }

        while (v4 != v5);
      }

      return result;
    }
  }

  else
  {
    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }
  }
}

uint64_t sub_218C560E8(void *a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  sub_218C55B28(0, &qword_280E8EAA0, 255, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v22 - v10;
  sub_219BE1AB4();
  v12 = [a1 orderedShortcuts];
  v13 = [v12 array];

  v14 = sub_219BF5924();
  v15 = sub_218B0C4D8(v14);

  if (v15)
  {
    *&v4[OBJC_IVAR____TtC7NewsUI215ShortcutService_unsafeOrderedShortcuts] = v15;
  }

  sub_219BE1AC4();
  if (a2 >> 62)
  {
    if (sub_219BF7214())
    {
      goto LABEL_9;
    }
  }

  else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_9;
  }

  if (a3 >> 62)
  {
    if (sub_219BF7214())
    {
      goto LABEL_9;
    }
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_9;
  }

  if (a4 >> 62)
  {
    result = sub_219BF7214();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

LABEL_9:
  v17 = sub_219BF5BF4();
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  sub_219BF5BD4();
  v18 = v4;

  v19 = sub_219BF5BC4();
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D85700];
  v20[2] = v19;
  v20[3] = v21;
  v20[4] = v18;
  v20[5] = a2;
  v20[6] = a3;
  v20[7] = a4;
  sub_218AB3D80(0, 0, v11, &unk_219C25B58, v20);
}

uint64_t sub_218C56390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  sub_219BF5BD4();
  v7[11] = sub_219BF5BC4();
  v9 = sub_219BF5B44();

  return MEMORY[0x2822009F8](sub_218C5642C, v9, v8);
}

void sub_218C5642C()
{
  v1 = v0[7];

  v2 = v1 + OBJC_IVAR____TtC7NewsUI215ShortcutService_lockedObservers;
  os_unfair_lock_lock(v2);
  v3 = *(v2 + 8);

  os_unfair_lock_unlock(v2);
  if (v3 >> 62)
  {
    v4 = sub_219BF7214();
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
    return;
  }

  v5 = 0;
  v14 = v3;
  v15 = v3 & 0xC000000000000001;
  do
  {
    if (v15)
    {
      v6 = MEMORY[0x21CECE0F0](v5, v3);
    }

    else
    {
      v6 = *(v3 + 8 * v5 + 32);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v17 = v0[9];
      v18 = v0[10];
      v7 = v0[7];
      v16 = v0[8];
      v8 = *(v6 + 24);
      ObjectType = swift_getObjectType();
      v0[5] = type metadata accessor for ShortcutService();
      v0[6] = &off_282A3DCA0;
      v0[2] = v7;
      v10 = *(v8 + 8);
      v11 = v7;
      v12 = ObjectType;
      v3 = v14;
      v10(v0 + 2, v16, v17, v18, v12, v8);
      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_1((v0 + 2));
    }

    else
    {
    }

    ++v5;
  }

  while (v4 != v5);
LABEL_13:

  v13 = v0[1];

  v13();
}

uint64_t sub_218C566C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[3] = type metadata accessor for ShortcutService();
  v16[4] = &off_282A3DCA0;
  v16[0] = a1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(a5 + 24);
    ObjectType = swift_getObjectType();
    v12 = *(v10 + 8);
    v13 = a1;
    v12(v16, a2, a3, a4, ObjectType, v10);
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = a1;
  }

  return __swift_destroy_boxed_opaque_existential_1(v16);
}

unint64_t sub_218C5679C()
{
  result = qword_280E8E8A0;
  if (!qword_280E8E8A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E8E8A0);
  }

  return result;
}

uint64_t sub_218C567E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2187608D4;

  return sub_218C56390(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_218C568BC(uint64_t result)
{
  if (result)
  {
    v2 = v1;
    v3 = result;
    v4 = result + 56;
    v5 = 1 << *(result + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(result + 56);
    v8 = (v5 + 63) >> 6;

    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    while (1)
    {
      v11 = v9;
      if (!v7)
      {
        break;
      }

LABEL_9:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      sub_2187A1D40(*(v3 + 48) + 40 * (v12 | (v9 << 6)), v23);
      v13 = sub_219BF7274();
      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      if (v14 || (v13, v13 = sub_219BF7274(), objc_opt_self(), (v14 = swift_dynamicCastObjCClass()) != 0))
      {
        v22 = v2;
        v15 = [v14 identifier];
        v20 = sub_219BF5414();
        v21 = v16;

        sub_218B6B67C(v23);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_218840D24(0, *(v10 + 16) + 1, 1, v10);
          v10 = result;
        }

        v18 = *(v10 + 16);
        v17 = *(v10 + 24);
        if (v18 >= v17 >> 1)
        {
          result = sub_218840D24((v17 > 1), v18 + 1, 1, v10);
          v10 = result;
        }

        *(v10 + 16) = v18 + 1;
        v19 = v10 + 16 * v18;
        *(v19 + 32) = v20;
        *(v19 + 40) = v21;
        v2 = v22;
      }

      else
      {

        result = sub_218B6B67C(v23);
      }
    }

    while (1)
    {
      v9 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v8)
      {
        break;
      }

      v7 = *(v4 + 8 * v9);
      ++v11;
      if (v7)
      {
        goto LABEL_9;
      }
    }

    if (*(v10 + 16))
    {
      sub_218C55C54(v10);
    }
  }

  return result;
}

uint64_t sub_218C56AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218C55AF4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata accessor for AudioHistoryFeedRemovalResult()
{
  result = qword_27CC0FE78;
  if (!qword_27CC0FE78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218C56BA4()
{
  sub_219BF0BD4();
  if (v0 <= 0x3F)
  {
    sub_2187E7248();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_218C56C40(uint64_t a1)
{
  v39 = type metadata accessor for RecipeListRecipeBoxFeedGroup();
  MEMORY[0x28223BE20](v39);
  v38 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for RecipeBoxFeedGroup() - 8;
  MEMORY[0x28223BE20](v3);
  v37 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(a1 + 16);
  if (!v36)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = 0;
  v7 = *(v4 + 80);
  v34 = *(v4 + 72);
  v35 = a1 + ((v7 + 32) & ~v7);
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v37;
    sub_218A5D7D4(v35 + v34 * v6, v37);
    v11 = v10;
    v12 = v38;
    sub_218C572D8(v11, v38, type metadata accessor for RecipeListRecipeBoxFeedGroup);
    v13 = *(v12 + *(v39 + 24));

    sub_2189E4E08(v12);
    v14 = v13 >> 62;
    if (v13 >> 62)
    {
      v15 = sub_219BF7214();
    }

    else
    {
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = v8 >> 62;
    if (v8 >> 62)
    {
      v31 = sub_219BF7214();
      v18 = v31 + v15;
      if (__OFADD__(v31, v15))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v18 = v17 + v15;
      if (__OFADD__(v17, v15))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v16)
      {
        v19 = v8 & 0xFFFFFFFFFFFFFF8;
        if (v18 <= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_219BF7214();
      goto LABEL_15;
    }

    if (v16)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_219BF7364();
    v8 = result;
    v19 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v20 = *(v19 + 16);
    v21 = *(v19 + 24);
    if (v14)
    {
      break;
    }

    v22 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v22)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v21 >> 1) - v20) < v15)
    {
      goto LABEL_36;
    }

    v40 = v15;
    v41 = v8;
    v43 = v6;
    v23 = v19 + 8 * v20 + 32;
    v33 = v19;
    if (v14)
    {
      if (v22 < 1)
      {
        goto LABEL_38;
      }

      sub_218799754(0);
      sub_2187146BC(&qword_27CC0CBF0, sub_218799754);
      for (i = 0; i != v22; ++i)
      {
        v25 = sub_218A353D0(v42, i, v13);
        v27 = *v26;
        (v25)(v42, 0);
        *(v23 + 8 * i) = v27;
      }
    }

    else
    {
      sub_218799788();
      swift_arrayInitWithCopy();
    }

    v8 = v41;
    v6 = v43;
    if (v40 >= 1)
    {
      v28 = *(v33 + 16);
      v29 = __OFADD__(v28, v40);
      v30 = v28 + v40;
      if (v29)
      {
        goto LABEL_37;
      }

      *(v33 + 16) = v30;
    }

LABEL_4:
    if (++v6 == v36)
    {
      return v8;
    }
  }

  result = sub_219BF7214();
  v22 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v15 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_218C57020(unint64_t a1)
{
  v2 = type metadata accessor for RecipeListRecipeBoxFeedGroup();
  MEMORY[0x28223BE20](v2);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for RecipeBoxFeedGroup();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v16[-v9];
  v11 = a1 >> 61;
  if ((a1 >> 61) <= 1)
  {
    if (v11)
    {
      goto LABEL_6;
    }

LABEL_7:
    sub_218C571D4();
    v14 = swift_projectBox();
    sub_218A5D7D4(v14, v10);
    sub_218C572D8(v10, v7, type metadata accessor for RecipeBoxFeedGroup);
    sub_218C572D8(v7, v4, type metadata accessor for RecipeListRecipeBoxFeedGroup);
    v12 = *&v4[*(v2 + 24)];

    sub_2189E4E08(v4);
    return v12;
  }

  if (v11 == 2)
  {
    goto LABEL_7;
  }

  if (v11 == 3)
  {
LABEL_6:

    v12 = sub_218C56C40(v13);

    return v12;
  }

  return MEMORY[0x277D84F90];
}

void sub_218C571D4()
{
  if (!qword_27CC0FE88)
  {
    type metadata accessor for RecipeBoxFeedGroup();
    sub_218C57244();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC0FE88);
    }
  }
}

void sub_218C57244()
{
  if (!qword_27CC0FE90)
  {
    type metadata accessor for RecipeBoxFeedServiceConfig();
    sub_2187146BC(&qword_280EBA8B0, type metadata accessor for RecipeBoxFeedServiceConfig);
    v0 = sub_219BEE864();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0FE90);
    }
  }
}

uint64_t sub_218C572D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218C57368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v39 = a3;
  v38 = a2;
  v40 = a4;
  sub_218C57C64(0, &qword_27CC0FE98, sub_2186EF13C);
  MEMORY[0x28223BE20](v5 - 8);
  v35 = &v33 - v6;
  v37 = type metadata accessor for ArticleListSharedWithYouFeedGroupKnobs();
  v7 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C57C64(0, &qword_27CC0FEA8, type metadata accessor for ArticleListSharedWithYouFeedGroupKnobs);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - v13;
  sub_218C57C64(0, &qword_27CC0FEB0, type metadata accessor for SharedWithYouFeedGroupKnobs);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v33 - v16;
  v18 = type metadata accessor for SharedWithYouFeedGroupKnobs();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C57CB8(a1, v17, &qword_27CC0FEB0, type metadata accessor for SharedWithYouFeedGroupKnobs);
  v22 = *(v19 + 48);
  if (v22(v17, 1, v18) == 1)
  {
    v34 = a1;
    v23 = v37;
    (*(v7 + 56))(v14, 1, 1, v37);
    sub_218C57CB8(v14, v12, &qword_27CC0FEA8, type metadata accessor for ArticleListSharedWithYouFeedGroupKnobs);
    v24 = *(v7 + 48);
    if (v24(v12, 1, v23) == 1)
    {
      sub_2186EF13C();
      v26 = *(*(v25 - 8) + 56);
      v33 = v22;
      v27 = v35;
      v26(v35, 1, 1, v25);
      v28 = v36;
      v29 = v27;
      v22 = v33;
      sub_219BA5644(v29, 0, v36);
      sub_218C57D24(v14, &qword_27CC0FEA8, type metadata accessor for ArticleListSharedWithYouFeedGroupKnobs);
      if (v24(v12, 1, v37) != 1)
      {
        sub_218C57D24(v12, &qword_27CC0FEA8, type metadata accessor for ArticleListSharedWithYouFeedGroupKnobs);
      }
    }

    else
    {
      sub_218C57D24(v14, &qword_27CC0FEA8, type metadata accessor for ArticleListSharedWithYouFeedGroupKnobs);
      v28 = v36;
      sub_218C57D80(v12, v36, type metadata accessor for ArticleListSharedWithYouFeedGroupKnobs);
    }

    sub_218C57D80(v28, v21, type metadata accessor for ArticleListSharedWithYouFeedGroupKnobs);
    sub_218C57D24(v34, &qword_27CC0FEB0, type metadata accessor for SharedWithYouFeedGroupKnobs);
    if (v22(v17, 1, v18) != 1)
    {
      sub_218C57D24(v17, &qword_27CC0FEB0, type metadata accessor for SharedWithYouFeedGroupKnobs);
    }
  }

  else
  {
    sub_218C57D24(a1, &qword_27CC0FEB0, type metadata accessor for SharedWithYouFeedGroupKnobs);
    sub_218C57D80(v17, v21, type metadata accessor for SharedWithYouFeedGroupKnobs);
  }

  v30 = v40;
  sub_218C57D80(v21, v40, type metadata accessor for SharedWithYouFeedGroupKnobs);
  if (v39)
  {
    v31 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v31 = v38 & ~(v38 >> 63);
  }

  result = type metadata accessor for SharedWithYouFeedKnobsConfig();
  *(v30 + *(result + 20)) = v31;
  return result;
}

uint64_t sub_218C578D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  sub_218C57C64(0, &qword_27CC0FEB0, type metadata accessor for SharedWithYouFeedGroupKnobs);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  sub_218C57DE8();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218C57E44();
  sub_219BF7B34();
  if (!v2)
  {
    type metadata accessor for SharedWithYouFeedGroupKnobs();
    v18 = 0;
    sub_2186EA4A4(&qword_27CC0FEC8, type metadata accessor for SharedWithYouFeedGroupKnobs);
    sub_219BF7674();
    v17 = 1;
    sub_219BF7674();
    sub_218C57368(v6, v15, v16, v14);
    (*(v9 + 8))(v11, v8);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218C57B04@<X0>(char *a1@<X8>)
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

uint64_t sub_218C57B64@<X0>(char *a1@<X8>)
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

uint64_t sub_218C57BC8(uint64_t a1)
{
  v2 = sub_218C57E44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218C57C04(uint64_t a1)
{
  v2 = sub_218C57E44();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_218C57C64(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_218C57CB8(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_218C57C64(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_218C57D24(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_218C57C64(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218C57D80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_218C57DE8()
{
  if (!qword_27CC0FEB8)
  {
    sub_218C57E44();
    v0 = sub_219BF7774();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0FEB8);
    }
  }
}

unint64_t sub_218C57E44()
{
  result = qword_27CC0FEC0;
  if (!qword_27CC0FEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0FEC0);
  }

  return result;
}

uint64_t sub_218C57E98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedWithYouFeedGroupKnobs();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_218C57F10()
{
  result = qword_27CC0FED0;
  if (!qword_27CC0FED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0FED0);
  }

  return result;
}

unint64_t sub_218C57F68()
{
  result = qword_27CC0FED8;
  if (!qword_27CC0FED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0FED8);
  }

  return result;
}

unint64_t sub_218C57FC0()
{
  result = qword_27CC0FEE0;
  if (!qword_27CC0FEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0FEE0);
  }

  return result;
}

void sub_218C58014(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 2)
  {
    sub_218B66A9C(a1, a1 + 32, 1, (2 * v1) | 1);
  }
}

uint64_t TagView.isSelectable.getter()
{
  v1 = OBJC_IVAR____TtC7NewsUI27TagView_isSelectable;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t TagView.isSelectable.setter(char a1)
{
  v3 = OBJC_IVAR____TtC7NewsUI27TagView_isSelectable;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t TagView.isHighlightable.getter()
{
  v1 = OBJC_IVAR____TtC7NewsUI27TagView_isHighlightable;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t TagView.isHighlightable.setter(char a1)
{
  v3 = OBJC_IVAR____TtC7NewsUI27TagView_isHighlightable;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

_BYTE *sub_218C5824C()
{
  v1 = OBJC_IVAR____TtC7NewsUI27TagView__dislikeButton;
  v2 = *(v0 + OBJC_IVAR____TtC7NewsUI27TagView__dislikeButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7NewsUI27TagView__dislikeButton);
  }

  else
  {
    v4 = v0;
    type metadata accessor for DislikeButton();
    v5 = [swift_getObjCClassFromMetadata() buttonWithType_];
    v5[qword_27CC13E18] = 1;
    sub_218F7D374();
    v6 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t TagView.keyCommandBlocks.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7NewsUI27TagView_keyCommandBlocks;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t TagView.tsaxAccessibilityLabelForReordering.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC7NewsUI27TagView_tsaxAccessibilityLabelForReordering);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t TagView.tsaxAccessibilityLabelForReordering.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC7NewsUI27TagView_tsaxAccessibilityLabelForReordering);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t TagView.isSelected.getter()
{
  v1 = OBJC_IVAR____TtC7NewsUI27TagView_isSelected;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t TagView.isSelected.setter(char a1)
{
  v3 = OBJC_IVAR____TtC7NewsUI27TagView_isSelected;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t TagView.isHighlighted.getter()
{
  v1 = OBJC_IVAR____TtC7NewsUI27TagView_isHighlighted;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t TagView.isHighlighted.setter(char a1)
{
  v3 = OBJC_IVAR____TtC7NewsUI27TagView_isHighlighted;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *sub_218C587F4(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC7NewsUI27TagView_titleLabel;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v11 = OBJC_IVAR____TtC7NewsUI27TagView_imageView;
  v12 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  [v12 setTag_];
  [v12 setAccessibilityIgnoresInvertColors_];
  [v12 setTintAdjustmentMode_];

  *&v4[v11] = v12;
  v13 = OBJC_IVAR____TtC7NewsUI27TagView_imageBorder;
  *&v4[v13] = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v14 = OBJC_IVAR____TtC7NewsUI27TagView_subtitleLabel;
  *&v4[v14] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v15 = OBJC_IVAR____TtC7NewsUI27TagView_badgeView;
  *&v4[v15] = [objc_allocWithZone(type metadata accessor for TagViewBadgeView()) initWithFrame_];
  v16 = OBJC_IVAR____TtC7NewsUI27TagView_countLabel;
  *&v4[v16] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v17 = OBJC_IVAR____TtC7NewsUI27TagView_accessoryView;
  *&v4[v17] = [objc_allocWithZone(sub_219BE7694()) initWithFrame_];
  v4[OBJC_IVAR____TtC7NewsUI27TagView_isSelectable] = 1;
  v4[OBJC_IVAR____TtC7NewsUI27TagView_isHighlightable] = 1;
  v18 = OBJC_IVAR____TtC7NewsUI27TagView_isEditing;
  sub_218C5BB2C(0, &qword_280EE39E0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6EBB8]);
  *&v4[v18] = [objc_allocWithZone(v19) init];
  v20 = &v4[OBJC_IVAR____TtC7NewsUI27TagView_titleFrame];
  *v20 = 0u;
  v20[1] = 0u;
  v21 = &v4[OBJC_IVAR____TtC7NewsUI27TagView_editingTitleFrame];
  *v21 = 0u;
  v21[1] = 0u;
  v22 = &v4[OBJC_IVAR____TtC7NewsUI27TagView_subtitleFrame];
  *v22 = 0u;
  v22[1] = 0u;
  v23 = &v4[OBJC_IVAR____TtC7NewsUI27TagView_editingSubtitleFrame];
  *v23 = 0u;
  v23[1] = 0u;
  *&v4[OBJC_IVAR____TtC7NewsUI27TagView_contentAccessibilityElement] = 0;
  *&v4[OBJC_IVAR____TtC7NewsUI27TagView__notificationSwitch] = 0;
  *&v4[OBJC_IVAR____TtC7NewsUI27TagView__likeButton] = 0;
  *&v4[OBJC_IVAR____TtC7NewsUI27TagView__dislikeButton] = 0;
  *&v4[OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton] = 0;
  *&v4[OBJC_IVAR____TtC7NewsUI27TagView_keyCommandBlocks] = MEMORY[0x277D84F90];
  v24 = &v4[OBJC_IVAR____TtC7NewsUI27TagView_tsaxAccessibilityLabelForReordering];
  *v24 = 0;
  v24[1] = 0;
  v4[OBJC_IVAR____TtC7NewsUI27TagView_isSelected] = 0;
  v4[OBJC_IVAR____TtC7NewsUI27TagView_isHighlighted] = 0;
  v31.receiver = v4;
  v31.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v31, sel_initWithFrame_, a1, a2, a3, a4);
  v26 = objc_allocWithZone(type metadata accessor for TagView.ContentAccessibilityElement());
  v27 = v25;
  v28 = [v26 initWithAccessibilityContainer_];
  v29 = *&v27[OBJC_IVAR____TtC7NewsUI27TagView_contentAccessibilityElement];
  *&v27[OBJC_IVAR____TtC7NewsUI27TagView_contentAccessibilityElement] = v28;

  [v27 addSubview_];
  [v27 addSubview_];
  [v27 addSubview_];
  [v27 addSubview_];
  [v27 addSubview_];
  [v27 addSubview_];
  [v27 addSubview_];

  return v27;
}

uint64_t TagView.title.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC7NewsUI27TagView_titleLabel) text];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_219BF5414();

  return v3;
}

id TagView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_218C58F1C()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC7NewsUI27TagView_isSelectable;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_218C58F64()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC7NewsUI27TagView_isSelected;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_218C58FAC(char a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI27TagView_isSelected;
  result = swift_beginAccess();
  *(v3 + v4) = a1;
  return result;
}

uint64_t sub_218C59064()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC7NewsUI27TagView_isHighlightable;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_218C590AC()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC7NewsUI27TagView_isHighlighted;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_218C590F4(char a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI27TagView_isHighlighted;
  result = swift_beginAccess();
  *(v3 + v4) = a1;
  return result;
}

Swift::Void __swiftcall TagView.prepareForReuse()()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC7NewsUI27TagView__likeButton);
  if (v2)
  {
    sub_219BE6204();
    v3 = sub_219BE6214();
    v4 = v2;
    v3();
    v5 = sub_219BE61F4();
    swift_allocObject();
    swift_unknownObjectUnownedInit();
    v6 = sub_219BEA804();
  }

  v7 = *(v1 + OBJC_IVAR____TtC7NewsUI27TagView__dislikeButton);
  if (v7)
  {
    v8 = v7;
    sub_219BE61E4();
  }

  v9 = *(v1 + OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton);
  if (v9)
  {
    sub_219BE6204();
    v10 = sub_219BE6214();
    v11 = v9;
    v10();
    v12 = sub_219BE61F4();
    swift_allocObject();
    swift_unknownObjectUnownedInit();
    v13 = sub_219BEA804();
  }

  v14 = *(v1 + OBJC_IVAR____TtC7NewsUI27TagView__notificationSwitch);
  if (v14)
  {
    v15 = v14;
    v16 = sub_219BEA814();
  }

  v17 = sub_219BEA814();
}

void sub_218C59430(uint64_t a1, uint64_t a2)
{
  sub_218C5BB7C(&qword_280E92C00, a2, type metadata accessor for TagView);

  JUMPOUT(0x21CEC1E40);
}

uint64_t sub_218C5949C(uint64_t a1, uint64_t a2)
{
  v43 = sub_219BE5C64();
  v4 = *(v43 - 8);
  result = MEMORY[0x28223BE20](v43);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(a1 + 472) + 16);
  v9 = *(v8 + 16);
  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
    v33 = MEMORY[0x277D84F90];
    goto LABEL_26;
  }

  v45 = MEMORY[0x277D84F90];
  sub_219BF73F4();
  v11 = (a2 + OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton);
  v12 = (a2 + OBJC_IVAR____TtC7NewsUI27TagView__likeButton);
  v13 = (a2 + OBJC_IVAR____TtC7NewsUI27TagView__dislikeButton);
  v14 = (v8 + 32);
  v40 = *MEMORY[0x277D6D340];
  v38 = (v4 + 8);
  v39 = (v4 + 104);
  v41 = (a2 + OBJC_IVAR____TtC7NewsUI27TagView__likeButton);
  v42 = (a2 + OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton);
  v44 = (a2 + OBJC_IVAR____TtC7NewsUI27TagView__dislikeButton);
  do
  {
    v16 = *v14++;
    v15 = v16;
    if ((v16 - 3) < 6)
    {
      goto LABEL_3;
    }

    if (v15)
    {
      if (v15 == 1)
      {
        v17 = *v13;
        if (*v13)
        {
          goto LABEL_23;
        }

        type metadata accessor for DislikeButton();
        v18 = [swift_getObjCClassFromMetadata() buttonWithType_];
        v18[qword_27CC13E18] = 1;
        sub_218F7D374();
        v19 = v13;
      }

      else
      {
        v17 = *v11;
        if (*v11)
        {
          goto LABEL_23;
        }

        type metadata accessor for AccessoryButton();
        v25 = [swift_getObjCClassFromMetadata() buttonWithType_];
        v26 = qword_280EDB508;
        v27 = v25[qword_280EDB508];
        v25[qword_280EDB508] = 1;
        v18 = v25;
        sub_219BE61D4();
        if (v27 != v25[v26] || !*&v18[qword_280F620E8] || !*&v18[qword_280F620E0])
        {
          sub_218EC2D64(0);
        }

        v28 = v43;
        (*v39)(v7, v40, v43);
        sub_218C5BB7C(&qword_280EDB500, 255, type metadata accessor for AccessoryButton);
        sub_219BEB694();
        (*v38)(v7, v28);
        v29 = sub_219BE61F4();

        swift_allocObject();
        swift_unknownObjectUnownedInit();

        v12 = v41;
        v11 = v42;
        v19 = v42;
      }
    }

    else
    {
      v17 = *v12;
      if (*v12)
      {
        goto LABEL_23;
      }

      type metadata accessor for AccessoryButton();
      v20 = [swift_getObjCClassFromMetadata() buttonWithType_];
      v21 = qword_280EDB508;
      v22 = v20[qword_280EDB508];
      v20[qword_280EDB508] = 0;
      v18 = v20;
      sub_219BE61D4();
      if (v22 != v20[v21] || !*&v18[qword_280F620E8] || !*&v18[qword_280F620E0])
      {
        sub_218EC2D64(0);
      }

      v23 = v43;
      (*v39)(v7, v40, v43);
      sub_218C5BB7C(&qword_280EDB500, 255, type metadata accessor for AccessoryButton);
      sub_219BEB694();
      (*v38)(v7, v23);
      v24 = sub_219BE61F4();

      swift_allocObject();
      swift_unknownObjectUnownedInit();

      v12 = v41;
      v11 = v42;
      v19 = v41;
    }

    v30 = *v19;
    *v19 = v18;
    v31 = v18;

    v13 = v44;
LABEL_23:
    v32 = v17;
LABEL_3:
    sub_219BF73D4();
    sub_219BF7414();
    sub_219BF7424();
    result = sub_219BF73E4();
    --v9;
  }

  while (v9);
  v33 = v45;
  v10 = MEMORY[0x277D84F90];
LABEL_26:
  v34 = 0;
  v45 = v10;
  v35 = *(v33 + 16);
  while (1)
  {
    if (v35 == v34)
    {

      return v10;
    }

    if (v34 >= *(v33 + 16))
    {
      break;
    }

    v36 = *(v33 + 8 * v34++ + 32);
    if (v36)
    {
      v37 = v36;
      MEMORY[0x21CECC690]();
      if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_219BF5A14();
      }

      result = sub_219BF5A54();
      v10 = v45;
    }
  }

  __break(1u);
  return result;
}

unint64_t TagView.accessibilityTraits.getter()
{
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v9, sel_accessibilityTraits);
  v2 = [v0 superview];
  if (v2)
  {
    v3 = v2;
    while (1)
    {
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        break;
      }

      v5 = [v3 superview];

      v3 = v5;
      if (!v5)
      {
        return v1;
      }
    }

    if ([v4 isSelected])
    {
      v6 = *MEMORY[0x277D76598];

      if ((v6 & ~v1) != 0)
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }

      v1 |= v7;
    }

    else
    {
    }
  }

  return v1;
}

id TagView.accessibilityTraits.setter(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, sel_setAccessibilityTraits_, a1);
}

void (*TagView.accessibilityTraits.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  *(v3 + 48) = swift_getObjectType();
  *(v4 + 32) = TagView.accessibilityTraits.getter();
  return sub_218C59CAC;
}

void sub_218C59CAC(void **a1, char a2)
{
  v2 = *a1;
  v3 = 2;
  if (a2)
  {
    v3 = 0;
  }

  v4 = 3;
  if (a2)
  {
    v4 = 1;
  }

  v5 = v2[6];
  v6 = v2[4];
  v2[v3] = v2[5];
  v2[v4] = v5;
  objc_msgSendSuper2(&v2[v3], sel_setAccessibilityTraits_, v6);

  free(v2);
}

id sub_218C59EAC(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  v5 = [v4 accessibilityContainer];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = v5;
  result = [v5 respondsToSelector_];
  if ((result & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v8 = [v6 *a3];
  swift_unknownObjectRelease();
  if (v8)
  {
    sub_219BF5414();

    v9 = sub_219BF53D4();

    v10 = v9;
  }

  else
  {
LABEL_5:

    v10 = 0;
  }

  return v10;
}

id sub_218C5A26C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TagView.ContentAccessibilityElement();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t TagView.accessibilityElements.getter()
{
  sub_218C5BB2C(0, &qword_280E8B590, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
  result = swift_allocObject();
  *(result + 16) = xmmword_219C09BA0;
  v2 = *(v0 + OBJC_IVAR____TtC7NewsUI27TagView_contentAccessibilityElement);
  if (v2)
  {
    v3 = result;
    *(result + 56) = sub_2186C6148(0, &unk_280E8DFC8);
    *(v3 + 4) = v2;
    if (*(v0 + OBJC_IVAR____TtC7NewsUI27TagView__notificationSwitch))
    {
      v4 = v2;
    }

    else
    {
      v5 = *(v0 + OBJC_IVAR____TtC7NewsUI27TagView_accessoryView);
      v9 = sub_219BE7694();
      *&v8 = v5;
      v6 = v2;
      v7 = v5;
      v3 = sub_2191F7FC8(1, 2, 1, v3);
      *(v3 + 2) = 2;
      sub_218751558(&v8, v3 + 4);
    }

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void TagView.accessibilityFrame.getter()
{
  ObjectType = swift_getObjectType();
  if (*&v0[OBJC_IVAR____TtC7NewsUI27TagView__notificationSwitch])
  {
    v2 = [v0 superview];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 superview];

      if (v4)
      {
        objc_opt_self();
        v5 = swift_dynamicCastObjCClass();
        if (v5)
        {
          v6 = v5;
          v15.receiver = v0;
          v15.super_class = ObjectType;
          objc_msgSendSuper2(&v15, sel_accessibilityFrame);
          v8 = v7;
          v10 = v9;
          v12 = v11;
          v14 = v13;
          [v6 frame];
          CGRectGetWidth(v17);
          v18.origin.x = v8;
          v18.origin.y = v10;
          v18.size.width = v12;
          v18.size.height = v14;
          CGRectGetHeight(v18);

          return;
        }
      }
    }
  }

  v16.receiver = v0;
  v16.super_class = ObjectType;
  objc_msgSendSuper2(&v16, sel_accessibilityFrame);
}

void (*TagView.accessibilityFrame.modify(uint64_t *a1))(void **a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x40uLL);
  }

  v6 = v5;
  *a1 = v5;
  if (!*&v2[OBJC_IVAR____TtC7NewsUI27TagView__notificationSwitch])
  {
    goto LABEL_10;
  }

  v7 = [v2 superview];
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = v7;
  v9 = [v7 superview];

  if (!v9)
  {
    goto LABEL_10;
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {

LABEL_10:
    v6[2].receiver = v2;
    v6[2].super_class = ObjectType;
    objc_msgSendSuper2(v6 + 2, sel_accessibilityFrame);
    goto LABEL_11;
  }

  v11 = v10;
  v6[3].receiver = v2;
  v6[3].super_class = ObjectType;
  objc_msgSendSuper2(v6 + 3, sel_accessibilityFrame);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [v11 frame];
  Width = CGRectGetWidth(v27);
  v28.origin.x = v13;
  v28.origin.y = v15;
  v28.size.width = v17;
  v28.size.height = v19;
  Height = CGRectGetHeight(v28);

  v22 = Height;
  v23 = Width;
  v24 = v15;
  v25 = v13;
LABEL_11:
  *&v6->receiver = v25;
  *&v6->super_class = v24;
  *&v6[1].receiver = v23;
  *&v6[1].super_class = v22;
  return sub_218C5A768;
}

uint64_t TagView.accessibilityValue.getter()
{
  v1 = *&v0[OBJC_IVAR____TtC7NewsUI27TagView__notificationSwitch];
  if (v1)
  {
    [v1 isOn];
    v2 = [objc_opt_self() mainBundle];
    v4 = sub_219BDB5E4();
  }

  else
  {
    v7.receiver = v0;
    v7.super_class = swift_getObjectType();
    v3 = objc_msgSendSuper2(&v7, sel_accessibilityValue);
    if (!v3)
    {
      return 0;
    }

    v2 = v3;
    v4 = sub_219BF5414();
  }

  v5 = v4;

  return v5;
}

void TagView.accessibilityValue.setter(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (a2)
  {
    v5 = sub_219BF53D4();
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = v2;
  v6.super_class = ObjectType;
  objc_msgSendSuper2(&v6, sel_setAccessibilityValue_, v5);
}

void (*TagView.accessibilityValue.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  *(v3 + 56) = swift_getObjectType();
  *v4 = TagView.accessibilityValue.getter();
  v4[1] = v5;
  return sub_218C5AAC8;
}

void sub_218C5AAC8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  if (a2)
  {
    if (v3)
    {

      v4 = sub_219BF53D4();
    }

    else
    {
      v4 = 0;
    }

    *(v2 + 16) = *(v2 + 48);
    objc_msgSendSuper2((v2 + 16), sel_setAccessibilityValue_, v4);
  }

  else
  {
    if (v3)
    {
      v5 = sub_219BF53D4();
    }

    else
    {
      v5 = 0;
    }

    *(v2 + 32) = *(v2 + 48);
    objc_msgSendSuper2((v2 + 32), sel_setAccessibilityValue_, v5);
  }

  free(v2);
}

id sub_218C5ABCC(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();

  if (v5)
  {
    v6 = sub_219BF5904();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t TagView.accessibilityUserInputLabels.getter()
{
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v13, sel_accessibilityUserInputLabels);
  if (v1)
  {
    v2 = v1;
    v3 = sub_219BF5924();
  }

  else
  {
    v3 = 0;
  }

  v4 = [*&v0[OBJC_IVAR____TtC7NewsUI27TagView_titleLabel] text];
  if (v4)
  {
    v5 = v4;
    v6 = sub_219BF5414();
    v8 = v7;

    if (v3)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_218840D24(0, *(v3 + 16) + 1, 1, v3);
      }

      v10 = *(v3 + 16);
      v9 = *(v3 + 24);
      if (v10 >= v9 >> 1)
      {
        v3 = sub_218840D24((v9 > 1), v10 + 1, 1, v3);
      }

      *(v3 + 16) = v10 + 1;
      v11 = v3 + 16 * v10;
      *(v11 + 32) = v6;
      *(v11 + 40) = v8;
    }

    else
    {
    }
  }

  return v3;
}

Swift::Bool __swiftcall TagView.accessibilityActivate()()
{
  ObjectType = swift_getObjectType();
  v2 = sub_219BE5C64();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v0[OBJC_IVAR____TtC7NewsUI27TagView__notificationSwitch];
  if (v6)
  {
    v7 = v6;
    v8 = [v7 isOn];
    v9 = MEMORY[0x277D6D340];
    if (!v8)
    {
      v9 = MEMORY[0x277D6D338];
    }

    (*(v3 + 104))(v5, *v9, v2);
    v10 = 1;
    sub_219608044(v5, 1);
    v11 = (*(v3 + 8))(v5, v2);
    MEMORY[0x21CEC15C0](v11);
  }

  else
  {
    v13.receiver = v0;
    v13.super_class = ObjectType;
    return objc_msgSendSuper2(&v13, sel_accessibilityActivate);
  }

  return v10;
}

uint64_t TagView.accessibilityCustomActions.getter()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if ((*MEMORY[0x277D76580] & ~TagView.accessibilityTraits.getter()) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v45.receiver = v0;
  v45.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v45, sel_accessibilityCustomActions);
  if (v4)
  {
    v5 = v4;
    sub_2186C6148(0, &qword_280E8DCF0);
    v6 = sub_219BF5924();

    result = v6;
  }

  else
  {
    result = MEMORY[0x277D84F90];
  }

  v7 = *&v1[OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton];
  v46 = result;
  if (v7)
  {
    v8 = v7;
    v9 = [v8 isSelected];
    v10 = [objc_opt_self() mainBundle];
    if (v9)
    {
      v38 = 0x8000000219CEDD90;
    }

    else
    {
      v38 = 0x8000000219CEDD40;
    }

    sub_219BDB5E4();

    v11 = swift_allocObject();
    *(v11 + 16) = v8;
    v12 = objc_allocWithZone(MEMORY[0x277D75088]);
    v13 = v8;
    v14 = sub_219BF53D4();

    v43 = sub_218C5BBCC;
    v44 = v11;
    aBlock = MEMORY[0x277D85DD0];
    v40 = 1107296256;
    v41 = sub_218C5B6F8;
    v42 = &block_descriptor_21;
    v15 = _Block_copy(&aBlock);
    v16 = [v12 initWithName:v14 actionHandler:{v15, v38}];

    _Block_release(v15);

    v17 = v16;
    MEMORY[0x21CECC690]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_219BF5A14();
    }

    sub_219BF5A54();

    result = v46;
  }

  v18 = *&v1[OBJC_IVAR____TtC7NewsUI27TagView__likeButton];
  if (v18)
  {
    v19 = objc_opt_self();
    v20 = v18;
    v21 = [v19 mainBundle];
    sub_219BDB5E4();

    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    v23 = objc_allocWithZone(MEMORY[0x277D75088]);
    v24 = v20;
    v25 = sub_219BF53D4();

    v43 = sub_218C5B750;
    v44 = v22;
    aBlock = MEMORY[0x277D85DD0];
    v40 = 1107296256;
    v41 = sub_218C5B6F8;
    v42 = &block_descriptor_15_0;
    v26 = _Block_copy(&aBlock);
    [v23 initWithName:v25 actionHandler:{v26, 0x8000000219CEDCE0}];

    _Block_release(v26);

    MEMORY[0x21CECC690](v27);
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_219BF5A14();
    }

    sub_219BF5A54();

    result = v46;
  }

  v28 = *&v1[OBJC_IVAR____TtC7NewsUI27TagView__dislikeButton];
  if (v28)
  {
    v29 = objc_opt_self();
    v30 = v28;
    v31 = [v29 mainBundle];
    sub_219BDB5E4();

    v32 = swift_allocObject();
    *(v32 + 16) = v30;
    v33 = objc_allocWithZone(MEMORY[0x277D75088]);
    v34 = v30;
    v35 = sub_219BF53D4();

    v43 = sub_218C5BBCC;
    v44 = v32;
    aBlock = MEMORY[0x277D85DD0];
    v40 = 1107296256;
    v41 = sub_218C5B6F8;
    v42 = &block_descriptor_40;
    v36 = _Block_copy(&aBlock);
    [v33 initWithName:v35 actionHandler:{v36, 0x8000000219CEDC90}];

    _Block_release(v36);

    MEMORY[0x21CECC690](v37);
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_219BF5A14();
    }

    sub_219BF5A54();

    return v46;
  }

  return result;
}

uint64_t sub_218C5B6F8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

void sub_218C5B80C()
{
  v1 = OBJC_IVAR____TtC7NewsUI27TagView_titleLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v2 = OBJC_IVAR____TtC7NewsUI27TagView_imageView;
  v3 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  [v3 setTag_];
  [v3 setAccessibilityIgnoresInvertColors_];
  [v3 setTintAdjustmentMode_];

  *(v0 + v2) = v3;
  v4 = OBJC_IVAR____TtC7NewsUI27TagView_imageBorder;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v5 = OBJC_IVAR____TtC7NewsUI27TagView_subtitleLabel;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v6 = OBJC_IVAR____TtC7NewsUI27TagView_badgeView;
  *(v0 + v6) = [objc_allocWithZone(type metadata accessor for TagViewBadgeView()) initWithFrame_];
  v7 = OBJC_IVAR____TtC7NewsUI27TagView_countLabel;
  *(v0 + v7) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v8 = OBJC_IVAR____TtC7NewsUI27TagView_accessoryView;
  *(v0 + v8) = [objc_allocWithZone(sub_219BE7694()) initWithFrame_];
  *(v0 + OBJC_IVAR____TtC7NewsUI27TagView_isSelectable) = 1;
  *(v0 + OBJC_IVAR____TtC7NewsUI27TagView_isHighlightable) = 1;
  v9 = OBJC_IVAR____TtC7NewsUI27TagView_isEditing;
  sub_218C5BB2C(0, &qword_280EE39E0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6EBB8]);
  *(v0 + v9) = [objc_allocWithZone(v10) init];
  v11 = (v0 + OBJC_IVAR____TtC7NewsUI27TagView_titleFrame);
  *v11 = 0u;
  v11[1] = 0u;
  v12 = (v0 + OBJC_IVAR____TtC7NewsUI27TagView_editingTitleFrame);
  *v12 = 0u;
  v12[1] = 0u;
  v13 = (v0 + OBJC_IVAR____TtC7NewsUI27TagView_subtitleFrame);
  *v13 = 0u;
  v13[1] = 0u;
  v14 = (v0 + OBJC_IVAR____TtC7NewsUI27TagView_editingSubtitleFrame);
  *v14 = 0u;
  v14[1] = 0u;
  *(v0 + OBJC_IVAR____TtC7NewsUI27TagView_contentAccessibilityElement) = 0;
  *(v0 + OBJC_IVAR____TtC7NewsUI27TagView__notificationSwitch) = 0;
  *(v0 + OBJC_IVAR____TtC7NewsUI27TagView__likeButton) = 0;
  *(v0 + OBJC_IVAR____TtC7NewsUI27TagView__dislikeButton) = 0;
  *(v0 + OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton) = 0;
  *(v0 + OBJC_IVAR____TtC7NewsUI27TagView_keyCommandBlocks) = MEMORY[0x277D84F90];
  v15 = (v0 + OBJC_IVAR____TtC7NewsUI27TagView_tsaxAccessibilityLabelForReordering);
  *v15 = 0;
  v15[1] = 0;
  *(v0 + OBJC_IVAR____TtC7NewsUI27TagView_isSelected) = 0;
  *(v0 + OBJC_IVAR____TtC7NewsUI27TagView_isHighlighted) = 0;
  sub_219BF7514();
  __break(1u);
}

void sub_218C5BB2C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_218C5BB7C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_218C5BBE4(void *a1, char a2)
{
  if (!a1)
  {
    goto LABEL_8;
  }

  v4 = a1;
  [v4 bounds];
  if (CGRectGetHeight(v22) <= 0.0)
  {

LABEL_8:
    *(v2 + 32) = 0;
    return;
  }

  v5 = v2;
  sub_219BE8664();
  v6 = sub_219BE7BC4();

  [v4 bounds];
  [v4 convertRect:v6 toCoordinateSpace:?];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [v6 bounds];
  v24.origin.x = v15;
  v24.origin.y = v16;
  v24.size.width = v17;
  v24.size.height = v18;
  v23.origin.x = v8;
  v23.origin.y = v10;
  v23.size.width = v12;
  v23.size.height = v14;
  v19 = CGRectIntersectsRect(v23, v24);

  if (v19)
  {
    v20 = 1;
  }

  else
  {
    v20 = 2;
  }

  v21 = v20;
  sub_218C5BD10(v5, &v21, a2 & 1);
}

uint64_t sub_218C5BD10(uint64_t result, unsigned __int8 *a2, char a3)
{
  v3 = result;
  v4 = *a2;
  if ((*(result + 32) == 2) | a3 & 1)
  {
    if (v4 == 1)
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v5 = *(v3 + 24);
        ObjectType = swift_getObjectType();
        (*(v5 + 8))(ObjectType, v5);
        result = swift_unknownObjectRelease();
      }
    }
  }

  *(v3 + 32) = v4;
  return result;
}

uint64_t sub_218C5BD94()
{
  sub_218774F78(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_218C5BDE8()
{
  result = qword_27CC10000;
  if (!qword_27CC10000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10000);
  }

  return result;
}

uint64_t sub_218C5BE3C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BED8D4();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C5C644(0, &qword_27CC10028, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for SportsKeyPlayersTagFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218C5C58C();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_218C5C6A8(&unk_280E92630, MEMORY[0x277D31C50]);
    sub_219BF7734();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_218C5C5E0(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218C5C0E8(uint64_t a1)
{
  v2 = sub_218C5C58C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218C5C124(uint64_t a1)
{
  v2 = sub_218C5C58C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218C5C1A0(void *a1)
{
  sub_218C5C644(0, &qword_27CC10038, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218C5C58C();
  sub_219BF7B44();
  sub_219BED8D4();
  sub_218C5C6A8(&qword_280E92640, MEMORY[0x277D31C50]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_218C5C400(uint64_t a1)
{
  result = sub_218C5C6A8(&qword_27CC10018, type metadata accessor for SportsKeyPlayersTagFeedGroup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_218C5C458(void *a1)
{
  a1[1] = sub_218C5C6A8(&qword_27CC10020, type metadata accessor for SportsKeyPlayersTagFeedGroup);
  a1[2] = sub_218C5C6A8(&unk_27CC1C750, type metadata accessor for SportsKeyPlayersTagFeedGroup);
  result = sub_218C5C6A8(&unk_27CC1C860, type metadata accessor for SportsKeyPlayersTagFeedGroup);
  a1[3] = result;
  return result;
}

uint64_t sub_218C5C504(uint64_t a1)
{
  v2 = sub_218C5C6A8(&qword_27CC10020, type metadata accessor for SportsKeyPlayersTagFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

unint64_t sub_218C5C58C()
{
  result = qword_27CC10030;
  if (!qword_27CC10030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10030);
  }

  return result;
}

uint64_t sub_218C5C5E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsKeyPlayersTagFeedGroup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218C5C644(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218C5C58C();
    v7 = a3(a1, &type metadata for SportsKeyPlayersTagFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218C5C6A8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_218C5C704()
{
  result = qword_27CC10040;
  if (!qword_27CC10040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10040);
  }

  return result;
}

unint64_t sub_218C5C75C()
{
  result = qword_27CC10048;
  if (!qword_27CC10048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10048);
  }

  return result;
}

unint64_t sub_218C5C7B4()
{
  result = qword_27CC10050;
  if (!qword_27CC10050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10050);
  }

  return result;
}

uint64_t sub_218C5C808()
{
  sub_219BE6774();
  swift_allocObject();
  result = sub_219BE6764();
  qword_280F62500 = result;
  return result;
}

uint64_t sub_218C5C868()
{
  v0 = sub_219BE7F34();
  v17 = *(v0 - 8);
  v18 = v0;
  MEMORY[0x28223BE20](v0);
  v16 = &v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_219BE81E4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_219BE7854();
  __swift_allocate_value_buffer(v6, qword_280F624E8);
  v15 = __swift_project_value_buffer(v6, qword_280F624E8);
  if (qword_280EE38A0 != -1)
  {
    swift_once();
  }

  v7 = qword_280E92EC8;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = qword_280E92ED0;
  *v5 = qword_280E92ED0;
  (*(v3 + 104))(v5, *MEMORY[0x277D6DE78], v2);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = objc_opt_self();
  v11 = v8;
  v12 = [v10 bundleForClass_];
  sub_219BDB5E4();

  v13 = [v10 bundleForClass_];
  sub_219BDB5E4();

  (*(v17 + 104))(v16, *MEMORY[0x277D6DDB8], v18);
  return sub_219BE7844();
}

uint64_t sub_218C5CBD0()
{
  v0 = sub_219BE7F34();
  v17 = *(v0 - 8);
  v18 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_219BE81E4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_219BE7854();
  __swift_allocate_value_buffer(v7, qword_280F62508);
  v16[1] = __swift_project_value_buffer(v7, qword_280F62508);
  if (qword_280EE38B8 != -1)
  {
    swift_once();
  }

  v8 = qword_280E92EA0;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_280E92EA8;
  *v6 = qword_280E92EA8;
  (*(v4 + 104))(v6, *MEMORY[0x277D6DE78], v3);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = objc_opt_self();
  v12 = v9;
  v13 = [v11 bundleForClass_];
  sub_219BDB5E4();

  v14 = [v11 bundleForClass_];
  sub_219BDB5E4();

  (*(v17 + 104))(v2, *MEMORY[0x277D6DDB8], v18);
  return sub_219BE7844();
}

uint64_t sub_218C5CF30@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_218718690(a1, v22);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186CFDE4(0, &unk_280ECFCF8);
  result = sub_219BE1E34();
  if (v21)
  {
    v5 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    MEMORY[0x28223BE20](v5);
    v7 = (&v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7);
    v9 = *v7;
    v10 = type metadata accessor for TipModelFactory();
    v19[3] = v10;
    v19[4] = &off_282A78838;
    v19[0] = v9;
    v11 = type metadata accessor for TipsModule();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v10);
    MEMORY[0x28223BE20](v13);
    v15 = (&v19[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15);
    v17 = *v15;
    v12[10] = v10;
    v12[11] = &off_282A78838;
    v12[7] = v17;
    sub_2186CB1F0(v22, (v12 + 2));
    __swift_destroy_boxed_opaque_existential_1(v19);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    a2[3] = v11;
    a2[4] = &off_282A49860;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218C5D174()
{
  sub_2186CFDE4(0, &qword_280EE8B70);
  sub_219BE2914();

  sub_2186CFDE4(0, &qword_280EE8D48);
  sub_219BE2914();

  sub_2186CFDE4(0, &unk_280EE8DD0);
  sub_219BE2914();

  sub_219BDDA94();
  sub_219BE2904();
}

uint64_t sub_218C5D2A0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_219BDE324();
  swift_allocObject();
  result = sub_219BDE314();
  v4 = MEMORY[0x277D2FF80];
  a1[3] = v2;
  a1[4] = v4;
  *a1 = result;
  return result;
}

uint64_t sub_218C5D2F8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186CFDE4(0, &unk_280EE8DD0);
  result = sub_219BE1E34();
  if (v6)
  {
    v4 = sub_219BDD784();
    swift_allocObject();
    result = sub_219BDD774();
    v5 = MEMORY[0x277D2FAA8];
    a2[3] = v4;
    a2[4] = v5;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_218C5D3A4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE1E34();
  v5 = v13;
  if (v13 == 255)
  {
    __break(1u);
  }

  else
  {
    v6 = v12;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186CFDE4(0, &qword_280EE5700);
    result = sub_219BE1E34();
    if (v10)
    {
      v7 = type metadata accessor for TipInteractor();
      v8 = swift_allocObject();
      *(v8 + 16) = v11;
      *(v8 + 24) = v6;
      *(v8 + 32) = v5;
      sub_2186CB1F0(&v9, v8 + 40);
      a2[3] = v7;
      result = sub_218C5D708();
      a2[4] = result;
      *a2 = v8;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_218C5D4B4(void *a1)
{
  sub_218C5D6B0();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = sub_219BDD5D4();
  sub_219BE1E34();
  result = (*(*(v5 - 8) + 48))(v4, 1, v5);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186CFDE4(0, &qword_280EE8D48);
  result = sub_219BE1E34();
  if (!v12)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186CFDE4(0, &qword_280EE8B70);
  result = sub_219BE1E34();
  if (v11)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186CFDE4(0, &qword_280EE8BC0);
    sub_219BE1E34();
    v7 = sub_219BDDA94();
    memset(v9, 0, sizeof(v9));
    v10 = 0;
    v8 = objc_allocWithZone(v7);
    return sub_219BDDA84();
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_218C5D6B0()
{
  if (!qword_280EE8E48)
  {
    sub_219BDD5D4();
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE8E48);
    }
  }
}

unint64_t sub_218C5D708()
{
  result = qword_280EDD2F0;
  if (!qword_280EDD2F0)
  {
    type metadata accessor for TipInteractor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EDD2F0);
  }

  return result;
}

uint64_t sub_218C5D774(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for CuratedMagazineFeedGroupEmitter()
{
  result = qword_280EA98C8;
  if (!qword_280EA98C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218C5D81C()
{
  sub_2186ECF58();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CuratedMagazineFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      sub_218C5D8B8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_218C5D8B8()
{
  result = qword_280E90510;
  if (!qword_280E90510)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280E90510);
  }

  return result;
}

uint64_t sub_218C5D91C()
{
  sub_2186E45F8(0, &qword_280EE6910, sub_21880702C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_218C5D99C(uint64_t a1)
{
  v3 = type metadata accessor for CuratedMagazineFeedGroupEmitter();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE3204();
  sub_218C607E8(v1, v6, type metadata accessor for CuratedMagazineFeedGroupEmitter);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18[1] = v7 + v5;
  v8 = (v7 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  sub_218C5E7A4(v6, v9 + v7);
  *(v9 + v8) = a1;

  v10 = sub_219BE2E54();
  sub_219BF2754();
  sub_219BE2F64();

  v11 = v18[0];
  sub_218C607E8(v18[0], v6, type metadata accessor for CuratedMagazineFeedGroupEmitter);
  v12 = swift_allocObject();
  sub_218C5E7A4(v6, v12 + v7);
  *(v12 + v8) = a1;

  v13 = sub_219BE2E54();
  sub_218C5FB88();
  sub_219BE2F74();

  sub_218C607E8(v11, v6, type metadata accessor for CuratedMagazineFeedGroupEmitter);
  v14 = swift_allocObject();
  sub_218C5E7A4(v6, v14 + v7);
  v15 = sub_219BE2E54();
  v16 = sub_219BE3064();

  return v16;
}

uint64_t sub_218C5DC4C()
{
  v0 = type metadata accessor for CuratedMagazineFeedGroupConfigData();
  v1 = v0 - 8;
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[0] = 0x2064657461727543;
  v8[1] = 0xE900000000000028;
  sub_2186ECF58();
  sub_219BEDD14();
  v4 = &v3[*(v1 + 44)];
  v5 = *v4;
  v6 = *(v4 + 1);

  sub_218C60788(v3, type metadata accessor for CuratedMagazineFeedGroupConfigData);
  MEMORY[0x21CECC330](v5, v6);

  MEMORY[0x21CECC330](41, 0xE100000000000000);
  return v8[0];
}

uint64_t sub_218C5DD44@<X0>(unint64_t *a1@<X8>)
{
  sub_2186ECF58();
  v4 = v3;
  v5 = swift_allocBox();
  result = (*(*(v4 - 8) + 16))(v6, v1, v4);
  *a1 = v5 | 0xD000000000000000;
  return result;
}

uint64_t sub_218C5DDC0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for CuratedMagazineFeedGroupKnobs();
  a2[4] = sub_218C5D774(&qword_280EB1108, type metadata accessor for CuratedMagazineFeedGroupKnobs);
  a2[5] = sub_218C5D774(&qword_280EB1110, type metadata accessor for CuratedMagazineFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_218C607E8(v2 + v4, boxed_opaque_existential_1, type metadata accessor for CuratedMagazineFeedGroupKnobs);
}

uint64_t sub_218C5DE88()
{
  v1 = sub_219BF1934();
  v25 = *(v1 - 8);
  v26 = v1;
  MEMORY[0x28223BE20](v1);
  v24 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for CuratedMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v22);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BF0BD4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CuratedMagazineFeedGroupEmitter();
  v23 = v0;
  v31 = 13;
  sub_2186E3B14();
  v28 = sub_219BEE964();
  sub_2186E45F8(0, &unk_280E8B8B0, sub_218C6086C, MEMORY[0x277D84560]);
  sub_218C6086C(0);
  v27 = v9;
  v10 = *(v9 - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C09BA0;
  type metadata accessor for CuratedMagazineFeedGroupKnobs();
  sub_219BEF134();
  sub_219BEF524();
  (*(v6 + 8))(v8, v5);
  v13 = 0;
  v14 = 0;
  if (v30 == 1)
  {
    sub_2186ECF58();
    sub_219BEDD14();
    v16 = v24;
    v15 = v25;
    v17 = v26;
    (*(v25 + 16))(v24, &v4[*(v22 + 32)], v26);
    sub_218C60788(v4, type metadata accessor for CuratedMagazineFeedGroupConfigData);
    v13 = sub_219BF1784();
    v14 = v18;
    (*(v15 + 8))(v16, v17);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = v13;
  *(v19 + 24) = v14;
  sub_2186F8BF4(0, &unk_280E91220, MEMORY[0x277D328E0]);
  swift_allocObject();
  *(v12 + v11) = sub_219BEFB94();
  (*(v10 + 104))(v12 + v11, *MEMORY[0x277D32308], v27);
  v29 = v28;
  sub_2191EE154(v12);
  return v29;
}

uint64_t sub_218C5E2A4()
{
  sub_2186ECF58();

  return sub_219BEDCA4();
}

uint64_t sub_218C5E2D4@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for CuratedMagazineFeedGroupConfigData();
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = 0x2064657461727543;
  v16 = 0xE900000000000028;
  sub_2186ECF58();
  sub_219BEDD14();
  v6 = &v5[*(v3 + 44)];
  v7 = *v6;
  v8 = v6[1];

  sub_218C60788(v5, type metadata accessor for CuratedMagazineFeedGroupConfigData);
  MEMORY[0x21CECC330](v7, v8);

  MEMORY[0x21CECC330](41, 0xE100000000000000);
  sub_2186E45F8(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  v10 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v10;
  *(inited + 56) = v11;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_218C60788(inited + 32, sub_2188317B0);
  sub_218C60894(0);
  a1[3] = v12;
  a1[4] = sub_218C5D774(&qword_280EE7838, sub_218C60894);
  __swift_allocate_boxed_opaque_existential_1(a1);
  type metadata accessor for CuratedMagazineFeedGroupEmitter();
  return sub_219BE2334();
}

uint64_t sub_218C5E518()
{
  sub_218C5D774(&qword_280EA98E0, type metadata accessor for CuratedMagazineFeedGroupEmitter);

  return sub_219BE2324();
}

uint64_t sub_218C5E6EC()
{
  type metadata accessor for MagazineFeedPool();
  sub_219BE3204();
  v0 = sub_219BE2E54();
  v1 = sub_219BE2F64();

  return v1;
}

uint64_t sub_218C5E7A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CuratedMagazineFeedGroupEmitter();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218C5E808(_OWORD *a1)
{
  v3 = *(type metadata accessor for CuratedMagazineFeedGroupEmitter() - 8);
  v4 = *(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = a1[3];
  v8[2] = a1[2];
  v8[3] = v5;
  v8[4] = a1[4];
  v6 = a1[1];
  v8[0] = *a1;
  v8[1] = v6;
  return sub_218C5E8C8(v4, v8);
}

uint64_t sub_218C5E8C8(uint64_t a1, uint64_t a2)
{
  v127 = a2;
  v132 = a1;
  v3 = MEMORY[0x277D83D88];
  sub_2186E45F8(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v124 = &v93 - v5;
  v6 = sub_219BEDC14();
  MEMORY[0x28223BE20](v6 - 8);
  v96 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E45F8(0, &qword_280E90150, MEMORY[0x277D33EC8], v3);
  MEMORY[0x28223BE20](v8 - 8);
  v120 = (&v93 - v9);
  sub_2186E45F8(0, &unk_280E919B0, sub_2186E3B14, v3);
  MEMORY[0x28223BE20](v10 - 8);
  v131 = &v93 - v11;
  v12 = sub_219BF2AB4();
  v122 = *(v12 - 8);
  v123 = v12;
  MEMORY[0x28223BE20](v12);
  v121 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_219BEF9C4();
  v110 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v111 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E4FBC(0);
  MEMORY[0x28223BE20](v15 - 8);
  v106 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E45F8(0, &unk_280E90FA0, MEMORY[0x277D32C48], v3);
  MEMORY[0x28223BE20](v17 - 8);
  v108 = &v93 - v18;
  v104 = sub_219BEF564();
  v102 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v101 = &v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_219BEFBD4();
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v126 = (&v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v95 = sub_219BF0BD4();
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v125 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E45F8(0, &qword_280E90300, MEMORY[0x277D33AA8], v3);
  MEMORY[0x28223BE20](v22 - 8);
  v129 = &v93 - v23;
  v119 = sub_219BF2774();
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v135 = &v93 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_219BF2034();
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v130 = &v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A89A94(0);
  MEMORY[0x28223BE20](v26 - 8);
  v115 = &v93 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FE720();
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v93 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for CuratedMagazineFeedGroupConfigData();
  v32 = MEMORY[0x28223BE20](v31);
  v103 = &v93 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v35 = &v93 - v34;
  v36 = sub_219BF1934();
  v37 = *(v36 - 8);
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v93 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v42 = &v93 - v41;
  sub_2186ECF58();
  v44 = v43;
  v133 = v2;
  sub_219BEDD14();
  v105 = v31;
  (*(v37 + 16))(v40, &v35[*(v31 + 32)], v36);
  v128 = v35;
  sub_218C60788(v35, type metadata accessor for CuratedMagazineFeedGroupConfigData);
  v107 = v44;
  sub_219BEDCA4();
  v45 = sub_219BEC004();
  (*(*(v45 - 8) + 56))(v30, 1, 1, v45);
  sub_218A42400(0);
  v47 = v115;
  (*(*(v46 - 8) + 56))(v115, 1, 1, v46);
  sub_219BF1764();

  sub_218C60788(v47, sub_218A89A94);
  sub_218C60788(v30, sub_2186FE720);
  v48 = *(v37 + 8);
  v115 = v36;
  v114 = v37 + 8;
  v109 = v48;
  v48(v40, v36);
  v49 = v132;
  v113 = v42;
  v50 = v127;
  sub_219B6CEDC(v42, v130);
  sub_219BEF134();
  v98 = type metadata accessor for CuratedMagazineFeedGroupEmitter();
  v51 = v133 + *(v98 + 20);
  v52 = type metadata accessor for CuratedMagazineFeedGroupKnobs();
  v134[3] = v52;
  v134[4] = sub_218C5D774(&unk_280EB1118, type metadata accessor for CuratedMagazineFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v134);
  sub_218C607E8(v51, boxed_opaque_existential_1, type metadata accessor for CuratedMagazineFeedGroupKnobs);
  v54 = v129;
  sub_219BF2AC4();
  v55 = sub_219BF2AD4();
  (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
  v97 = sub_218C6047C(v49);
  v127 = *(v50 + 8);

  v56 = sub_219BEF0A4();
  v57 = sub_21921D080(v56);

  v58 = sub_219BEF074();
  v59 = sub_21921D080(v58);

  sub_2194796A0(v59, v57);
  (*(v99 + 104))(v126, *MEMORY[0x277D32930], v100);
  (*(v102 + 104))();
  v60 = v106;
  sub_218C607E8(v51 + *(v52 + 40), v106, sub_2186E4FBC);
  v61 = sub_219BEF814();
  v62 = *(v61 - 8);
  if ((*(v62 + 48))(v60, 1, v61) == 1)
  {
    sub_218C60788(v60, sub_2186E4FBC);
    v63 = 1;
    v64 = v108;
  }

  else
  {
    v65 = v125;
    sub_219BEF134();
    v64 = v108;
    sub_219BEF7E4();
    (*(v94 + 8))(v65, v95);
    (*(v62 + 8))(v60, v61);
    v63 = 0;
  }

  v66 = sub_219BF02F4();
  (*(*(v66 - 8) + 56))(v64, v63, 1, v66);
  (*(v110 + 104))(v111, *MEMORY[0x277D32840], v112);

  sub_219BF2764();
  v67 = (v133 + *(v98 + 24));
  v68 = v67[3];
  v129 = v67[4];
  v126 = __swift_project_boxed_opaque_existential_1(v67, v68);
  sub_2186E3B14();
  v70 = v69;
  v71 = *(v69 - 8);
  v72 = v131;
  (*(v71 + 16))(v131, v51, v69);
  (*(v71 + 56))(v72, 0, 1, v70);
  v73 = v103;
  sub_219BEDD14();
  v74 = v105;

  sub_218C60788(v73, type metadata accessor for CuratedMagazineFeedGroupConfigData);
  v75 = v128;
  sub_219BEDD14();
  LODWORD(v70) = *(v75 + *(v74 + 64));
  sub_218C60788(v75, type metadata accessor for CuratedMagazineFeedGroupConfigData);
  if (v70 == 1)
  {
    sub_219BF5D04();
    v76 = v120;
    *v120 = v77;
    v78 = *MEMORY[0x277D33EC0];
    v79 = sub_219BF35D4();
    v80 = v78;
    v81 = v76;
    (*(*(v79 - 8) + 104))(v76, v80, v79);
  }

  else
  {
    sub_219BEF084();
    v81 = v120;
    sub_219BF35E4();
  }

  v82 = v118;
  v83 = sub_219BF35D4();
  (*(*(v83 - 8) + 56))(v81, 0, 1, v83);
  LOBYTE(v134[0]) = 13;
  sub_2186F8BF4(0, &qword_280E90058, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  v84 = v128;
  sub_219BEDD14();
  sub_2192DF25C();
  sub_218C60788(v84, type metadata accessor for CuratedMagazineFeedGroupConfigData);
  v85 = v124;
  v86 = v119;
  (*(v82 + 16))(v124, v135, v119);
  (*(v82 + 56))(v85, 0, 1, v86);
  v87 = qword_280E8D920;
  *MEMORY[0x277D30B70];
  if (v87 != -1)
  {
    swift_once();
  }

  qword_280F617C8;
  v88 = v121;
  sub_219BF2A84();
  v89 = v113;
  v90 = v130;
  v91 = sub_219BF2184();
  (*(v122 + 8))(v88, v123);
  (*(v82 + 8))(v135, v86);
  (*(v116 + 8))(v90, v117);
  v109(v89, v115);
  return v91;
}

uint64_t sub_218C5FA88@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_218C5FC1C(a2, *a1, a3);
  sub_218C5FB88();
  return swift_storeEnumTagMultiPayload();
}

void sub_218C5FB88()
{
  if (!qword_280E916F0)
  {
    type metadata accessor for MagazineFeedGroup();
    sub_218C5D774(&qword_280ED5E20, type metadata accessor for MagazineFeedGroup);
    v0 = sub_219BEF1A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E916F0);
    }
  }
}

uint64_t sub_218C5FC1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a3;
  v46 = a2;
  v37 = a1;
  v3 = sub_219BF0BD4();
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x28223BE20](v3);
  v39 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BEF8A4();
  v41 = *(v5 - 8);
  v42 = v5;
  MEMORY[0x28223BE20](v5);
  v40 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E45F8(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v8 = type metadata accessor for CuratedMagazineFeedGroupConfigData();
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BEF554();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33[0] = v16;
  MEMORY[0x28223BE20](v14);
  v38 = sub_219BED8D4();
  v36 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v34 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186ECF58();
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v35 = v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))();

  v22 = sub_219BEDCB4();
  v33[1] = v23;
  v33[2] = v22;
  sub_219BEDCC4();
  sub_219BEDD14();
  (*(v13 + 16))(v16, &v11[*(v9 + 36)], v12);
  sub_218C60788(v11, type metadata accessor for CuratedMagazineFeedGroupConfigData);
  type metadata accessor for CuratedMagazineFeedGroupEmitter();
  sub_2186E3B14();
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  type metadata accessor for CuratedMagazineFeedGroupKnobs();
  sub_2186F8BF4(0, &qword_280E91830, MEMORY[0x277D32318]);
  sub_219BEEC84();
  v24 = v34;
  sub_219BED834();
  v25 = v39;
  sub_219BEF134();
  sub_219BEF524();
  (*(v43 + 8))(v25, v44);
  v27 = v40;
  v26 = v41;
  v28 = MEMORY[0x277D32768];
  if (!v47)
  {
    v28 = MEMORY[0x277D32760];
  }

  v29 = v42;
  (*(v41 + 104))(v40, *v28, v42);
  v30 = v45;
  (*(v20 + 32))(v45, v35, v19);
  v31 = type metadata accessor for CuratedMagazineFeedGroup();
  (*(v36 + 32))(v30 + *(v31 + 20), v24, v38);
  (*(v26 + 32))(v30 + *(v31 + 24), v27, v29);
  type metadata accessor for MagazineFeedGroup();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_218C60244()
{
  v0 = type metadata accessor for CuratedMagazineFeedGroupConfigData();
  v1 = v0 - 8;
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[0] = 0x2064657461727543;
  v8[1] = 0xE900000000000028;
  sub_2186ECF58();
  sub_219BEDD14();
  v4 = &v3[*(v1 + 44)];
  v5 = *v4;
  v6 = *(v4 + 1);

  sub_218C60788(v3, type metadata accessor for CuratedMagazineFeedGroupConfigData);
  MEMORY[0x21CECC330](v5, v6);

  MEMORY[0x21CECC330](41, 0xE100000000000000);
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  type metadata accessor for MagazineFeedGroup();
  sub_218C5D774(&qword_280ED5E20, type metadata accessor for MagazineFeedGroup);
  sub_219BEF194();
}

uint64_t sub_218C6047C(uint64_t a1)
{
  v21 = a1;
  v1 = sub_219BF3924();
  v2 = *(v1 - 8);
  v3 = v2;
  v4 = MEMORY[0x28223BE20](v1);
  v19 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v18 = &v18 - v6;
  v20 = sub_219BF0BD4();
  v7 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E45F8(0, &unk_280E8B7B0, MEMORY[0x277D33FB8], MEMORY[0x277D84560]);
  v10 = *(v2 + 72);
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C09EC0;
  v13 = *(v3 + 104);
  v13(v12 + v11, *MEMORY[0x277D33F90], v1);
  v13(v12 + v11 + v10, *MEMORY[0x277D33FA8], v1);
  v14 = sub_2194B2A30(v12);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v23 = v14;
  type metadata accessor for CuratedMagazineFeedGroupEmitter();
  type metadata accessor for CuratedMagazineFeedGroupKnobs();
  sub_219BEF134();
  sub_219BEF524();
  (*(v7 + 8))(v9, v20);
  if (v22 == 1)
  {
    v15 = v19;
    v13(v19, *MEMORY[0x277D33F98], v1);
    v16 = v18;
    sub_2194995E4(v18, v15);
    (*(v3 + 8))(v16, v1);
  }

  return v23;
}

uint64_t sub_218C60788(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218C607E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218C608C8(uint64_t a1)
{
  v38 = type metadata accessor for ArticleListSharedWithYouFeedGroup();
  MEMORY[0x28223BE20](v38);
  v37 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for SharedWithYouFeedGroup() - 8;
  MEMORY[0x28223BE20](v3);
  v36 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(a1 + 16);
  if (!v35)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = 0;
  v7 = *(v4 + 80);
  v33 = *(v4 + 72);
  v34 = a1 + ((v7 + 32) & ~v7);
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v36;
    sub_218C60F58(v34 + v33 * v6, v36);
    v11 = v10;
    v12 = v37;
    sub_218C60FBC(v11, v37, type metadata accessor for ArticleListSharedWithYouFeedGroup);
    v13 = *(v12 + *(v38 + 24));

    sub_218C61024(v12);
    v14 = v13 >> 62;
    if (v13 >> 62)
    {
      v15 = sub_219BF7214();
    }

    else
    {
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = v8 >> 62;
    if (v8 >> 62)
    {
      v31 = sub_219BF7214();
      v18 = v31 + v15;
      if (__OFADD__(v31, v15))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v18 = v17 + v15;
      if (__OFADD__(v17, v15))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v16)
      {
        v19 = v8 & 0xFFFFFFFFFFFFFF8;
        if (v18 <= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_219BF7214();
      goto LABEL_15;
    }

    if (v16)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_219BF7364();
    v8 = result;
    v19 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v20 = *(v19 + 16);
    v21 = *(v19 + 24);
    if (v14)
    {
      break;
    }

    v22 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v22)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v21 >> 1) - v20) < v15)
    {
      goto LABEL_36;
    }

    v39 = v15;
    v40 = v6;
    v42 = v8;
    v23 = v19 + 8 * v20 + 32;
    if (v14)
    {
      if (v22 < 1)
      {
        goto LABEL_38;
      }

      sub_2187E7248();
      sub_2186EA4EC(&qword_280E8EBE0, sub_2187E7248);
      for (i = 0; i != v22; ++i)
      {
        v25 = sub_218A352D0(v41, i, v13);
        v27 = *v26;
        swift_unknownObjectRetain();
        (v25)(v41, 0);
        *(v23 + 8 * i) = v27;
      }
    }

    else
    {
      sub_218731D50();
      swift_arrayInitWithCopy();
    }

    v6 = v40;
    v8 = v42;
    if (v39 >= 1)
    {
      v28 = *(v19 + 16);
      v29 = __OFADD__(v28, v39);
      v30 = v28 + v39;
      if (v29)
      {
        goto LABEL_37;
      }

      *(v19 + 16) = v30;
    }

LABEL_4:
    if (++v6 == v35)
    {
      return v8;
    }
  }

  result = sub_219BF7214();
  v22 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v15 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_218C60CA0(unint64_t a1)
{
  v2 = type metadata accessor for ArticleListSharedWithYouFeedGroup();
  MEMORY[0x28223BE20](v2);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for SharedWithYouFeedGroup();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v16[-v9];
  v11 = a1 >> 61;
  if ((a1 >> 61) <= 1)
  {
    if (v11)
    {
      goto LABEL_6;
    }

LABEL_7:
    sub_218C60E54();
    v14 = swift_projectBox();
    sub_218C60F58(v14, v10);
    sub_218C60FBC(v10, v7, type metadata accessor for SharedWithYouFeedGroup);
    sub_218C60FBC(v7, v4, type metadata accessor for ArticleListSharedWithYouFeedGroup);
    v12 = *&v4[*(v2 + 24)];

    sub_218C61024(v4);
    return v12;
  }

  if (v11 == 2)
  {
    goto LABEL_7;
  }

  if (v11 == 3)
  {
LABEL_6:

    v12 = sub_218C608C8(v13);

    return v12;
  }

  return MEMORY[0x277D84F90];
}

void sub_218C60E54()
{
  if (!qword_27CC10060)
  {
    type metadata accessor for SharedWithYouFeedGroup();
    sub_218C60EC4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC10060);
    }
  }
}

void sub_218C60EC4()
{
  if (!qword_27CC10068)
  {
    type metadata accessor for SharedWithYouFeedServiceConfig();
    sub_2186EA4EC(&qword_280EAB3F0, type metadata accessor for SharedWithYouFeedServiceConfig);
    v0 = sub_219BEE864();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC10068);
    }
  }
}

uint64_t sub_218C60F58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedWithYouFeedGroup();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218C60FBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218C61024(uint64_t a1)
{
  v2 = type metadata accessor for ArticleListSharedWithYouFeedGroup();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id FollowingEngagementBannerView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void *FollowingEngagementBannerView.engagementView.getter()
{
  v1 = OBJC_IVAR____TtC7NewsUI229FollowingEngagementBannerView_engagementView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void FollowingEngagementBannerView.engagementView.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC7NewsUI229FollowingEngagementBannerView_engagementView;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (v4)
  {
    v5 = [v4 superview];
    if (v5)
    {
      v6 = v5;

      if (v6 == v1)
      {
        v7 = *&v1[v3];
        if (v7)
        {
          if (v7 == a1)
          {
            goto LABEL_7;
          }

          goto LABEL_6;
        }

        if (a1)
        {
LABEL_6:
          [v7 removeFromSuperview];
        }
      }
    }
  }

LABEL_7:
  v8 = *&v1[v3];
  *&v1[v3] = a1;
  v9 = a1;

  if (a1)
  {
    v10 = [v9 superview];
    if (!v10 || (v11 = v10, v10, v11 != v1))
    {
      [v1 addSubview_];
    }
  }
}

void (*FollowingEngagementBannerView.engagementView.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = OBJC_IVAR____TtC7NewsUI229FollowingEngagementBannerView_engagementView;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_218C612CC;
}

void sub_218C612CC(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    v5 = v3;
    FollowingEngagementBannerView.engagementView.setter(v3);
  }

  else
  {
    FollowingEngagementBannerView.engagementView.setter(*(*a1 + 24));
  }

  free(v2);
}

id FollowingEngagementBannerView.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC7NewsUI229FollowingEngagementBannerView_engagementView] = 0;
  v11.receiver = v4;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_initWithFrame_, a1, a2, a3, a4);
}

id FollowingEngagementBannerView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id FollowingEngagementBannerView.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC7NewsUI229FollowingEngagementBannerView_engagementView] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id FollowingEngagementBannerView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_218C615B0()
{
  v1 = OBJC_IVAR____TtC7NewsUI229FollowingEngagementBannerView_engagementView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void (*sub_218C61600(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = OBJC_IVAR____TtC7NewsUI229FollowingEngagementBannerView_engagementView;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_218C612CC;
}

void sub_218C616FC()
{
  sub_218C61790(&qword_280EB09C8);

  JUMPOUT(0x21CEC1E40);
}

uint64_t sub_218C61790(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FollowingEngagementBannerView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_218C61878(void *a1)
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

unint64_t sub_218C6194C()
{
  result = qword_280E8E790;
  if (!qword_280E8E790)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E8E790);
  }

  return result;
}

uint64_t sub_218C61998(void *a1)
{
  sub_2186F20D4();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C09BA0;
  sub_219BF7314();
  MEMORY[0x21CECC330](0x3D6761747BLL, 0xE500000000000000);
  MEMORY[0x21CECC330](*a1, a1[1]);
  MEMORY[0x21CECC330](0x657269707865202CLL, 0xEE003D7265746641);
  sub_219BF5CB4();
  MEMORY[0x21CECC330](125, 0xE100000000000000);
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 64) = sub_2186FC3BC();
  *(v2 + 32) = 0;
  *(v2 + 40) = 0xE000000000000000;
  sub_219BF6214();
  sub_219BE5314();

  sub_218C628FC(0, &unk_280EE6A40, sub_2187E7248, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE30B4();
}

void sub_218C61B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  sub_218C62960();
  v11 = *(a5 + 40);
  swift_getObjectType();
  v12 = *(a6 + 16);
  v13 = *(a5 + 32);

  swift_unknownObjectRetain();
  v14 = v12;

  v15 = sub_218C629AC(v11, v14, v13);
  swift_unknownObjectRelease();

  [v15 setPurpose_];
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v18 = *(a5 + 16);
  *(v17 + 24) = *a5;
  *(v17 + 40) = v18;
  v19 = *(a5 + 48);
  *(v17 + 56) = *(a5 + 32);
  *(v17 + 16) = v16;
  *(v17 + 72) = v19;
  *(v17 + 88) = a3;
  *(v17 + 96) = a4;
  *(v17 + 104) = sub_2189EB59C;
  *(v17 + 112) = v10;
  aBlock[4] = sub_218C62A48;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2194528D8;
  aBlock[3] = &block_descriptor_41;
  v20 = _Block_copy(aBlock);
  sub_218C62A5C(a5, v23);

  [v15 setFetchCompletionHandler_];
  _Block_release(v20);
  [v15 start];
}

void sub_218C61D74(unint64_t a1, void *a2, uint64_t a3, void *a4, void (*a5)(void), uint64_t a6, void (*a7)(unint64_t))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (a1)
    {
      v11 = sub_218C62B0C(a1, a4);
      sub_2186F20D4();
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_219C0B8C0;
      if (a1 >> 62)
      {
        v27 = v12;
        v13 = sub_219BF7214();
        v12 = v27;
      }

      else
      {
        v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v14 = MEMORY[0x277D83B88];
      v15 = MEMORY[0x277D83C10];
      *(v12 + 56) = MEMORY[0x277D83B88];
      *(v12 + 64) = v15;
      *(v12 + 32) = v13;
      if (v11 >> 62)
      {
        v28 = v12;
        v16 = sub_219BF7214();
        v12 = v28;
      }

      else
      {
        v16 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v12 + 96) = v14;
      *(v12 + 104) = v15;
      *(v12 + 72) = v16;
      v17 = v12;
      sub_219BF7314();
      MEMORY[0x21CECC330](0x3D6761747BLL, 0xE500000000000000);
      MEMORY[0x21CECC330](*a4, a4[1]);
      MEMORY[0x21CECC330](0x657269707865202CLL, 0xEE003D7265746641);
      sub_219BF5CB4();
      MEMORY[0x21CECC330](125, 0xE100000000000000);
      v17[17] = MEMORY[0x277D837D0];
      v17[18] = sub_2186FC3BC();
      v17[14] = 0;
      v17[15] = 0xE000000000000000;
      sub_219BF6214();
      sub_219BE5314();

      a7(v11);
    }

    else
    {
      v29 = a5;
      if (a2)
      {
        v21 = a2;
      }

      else
      {
        sub_218C62AB8();
        v21 = swift_allocError();
        *v22 = 1;
      }

      v23 = a2;
      sub_219BF61F4();
      sub_2186F20D4();
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_219C09EC0;
      sub_219BF7314();
      MEMORY[0x21CECC330](0x3D6761747BLL, 0xE500000000000000);
      MEMORY[0x21CECC330](*a4, a4[1]);
      MEMORY[0x21CECC330](0x657269707865202CLL, 0xEE003D7265746641);
      sub_219BF5CB4();
      MEMORY[0x21CECC330](125, 0xE100000000000000);
      v25 = MEMORY[0x277D837D0];
      *(v24 + 56) = MEMORY[0x277D837D0];
      v26 = sub_2186FC3BC();
      *(v24 + 64) = v26;
      *(v24 + 32) = 0;
      *(v24 + 40) = 0xE000000000000000;
      sub_2186CFDE4(0, &qword_280E8B580);
      sub_219BF7484();
      *(v24 + 96) = v25;
      *(v24 + 104) = v26;
      *(v24 + 72) = 0;
      *(v24 + 80) = 0xE000000000000000;
      sub_219BE5314();

      (v29)(v21);
    }
  }

  else
  {
    sub_2186F20D4();
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_219C09BA0;
    sub_219BF7314();
    MEMORY[0x21CECC330](0x3D6761747BLL, 0xE500000000000000);
    MEMORY[0x21CECC330](*a4, a4[1]);
    MEMORY[0x21CECC330](0x657269707865202CLL, 0xEE003D7265746641);
    sub_219BF5CB4();
    MEMORY[0x21CECC330](125, 0xE100000000000000);
    *(v18 + 56) = MEMORY[0x277D837D0];
    *(v18 + 64) = sub_2186FC3BC();
    *(v18 + 32) = 0;
    *(v18 + 40) = 0xE000000000000000;
    sub_219BF6214();
    sub_219BE5314();

    sub_218C62AB8();
    v19 = swift_allocError();
    *v20 = 0;
    a5();
  }
}

uint64_t sub_218C622C8(id *a1, void *a2)
{
  v3 = *a1;
  if ([*a1 isDeleted] & 1) != 0 || (objc_msgSend(v3, sel_isHiddenFromFeeds) & 1) != 0 || (v4 = objc_msgSend(v3, sel_clusterID)) != 0 && (v5 = v4, v6 = sub_219BF5414(), v8 = v7, v5, LOBYTE(v5) = sub_2188537B8(v6, v8, a2[7]), , (v5))
  {
    sub_2186F20D4();
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_219C09EC0;
    sub_219BF7314();
    MEMORY[0x21CECC330](0x3D6761747BLL, 0xE500000000000000);
    MEMORY[0x21CECC330](*a2, a2[1]);
    MEMORY[0x21CECC330](0x657269707865202CLL, 0xEE003D7265746641);
    sub_219BF5CB4();
    MEMORY[0x21CECC330](125, 0xE100000000000000);
    v10 = MEMORY[0x277D837D0];
    *(v9 + 56) = MEMORY[0x277D837D0];
    v11 = sub_2186FC3BC();
    *(v9 + 64) = v11;
    *(v9 + 32) = 0;
    *(v9 + 40) = 0xE000000000000000;
    v12 = [v3 identifier];
    v13 = sub_219BF5414();
    v15 = v14;

    *(v9 + 96) = v10;
    *(v9 + 104) = v11;
    *(v9 + 72) = v13;
    *(v9 + 80) = v15;
    sub_219BF6214();
LABEL_6:
    sub_219BE5314();

    return 0;
  }

  v17 = a2[6];
  v18 = [v3 identifier];
  v19 = sub_219BF5414();
  v21 = v20;

  LOBYTE(v17) = sub_2188537B8(v19, v21, v17);

  if (v17)
  {
    sub_2186F20D4();
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_219C09EC0;
    sub_219BF7314();
    MEMORY[0x21CECC330](0x3D6761747BLL, 0xE500000000000000);
    MEMORY[0x21CECC330](*a2, a2[1]);
    MEMORY[0x21CECC330](0x657269707865202CLL, 0xEE003D7265746641);
    sub_219BF5CB4();
    MEMORY[0x21CECC330](125, 0xE100000000000000);
    v23 = MEMORY[0x277D837D0];
    *(v22 + 56) = MEMORY[0x277D837D0];
    v24 = sub_2186FC3BC();
    *(v22 + 64) = v24;
    *(v22 + 32) = 0;
    *(v22 + 40) = 0xE000000000000000;
    v25 = [v3 identifier];
    v26 = sub_219BF5414();
    v28 = v27;

    *(v22 + 96) = v23;
    *(v22 + 104) = v24;
    *(v22 + 72) = v26;
    *(v22 + 80) = v28;
    sub_219BF6214();
    goto LABEL_6;
  }

  return 1;
}

uint64_t sub_218C628B4()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_218C628FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_218C62960()
{
  result = qword_280E8DB58;
  if (!qword_280E8DB58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E8DB58);
  }

  return result;
}

id sub_218C629AC(uint64_t a1, uint64_t a2, double a3)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_219BF53D4();

  v8 = [v6 initWithConfiguration:a1 cloudContext:a2 tagID:v7 expireAfterTimeWindow:a3];

  return v8;
}

unint64_t sub_218C62AB8()
{
  result = qword_27CC100B0;
  if (!qword_27CC100B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC100B0);
  }

  return result;
}

uint64_t sub_218C62B0C(unint64_t a1, void *a2)
{
  v11 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_16:
    v4 = sub_219BF7214();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v6 = a1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x21CECE0F0](v5, a1);
          v8 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_13:
            __break(1u);
            return v11;
          }
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(a1 + 8 * v5 + 32);
          swift_unknownObjectRetain();
          v8 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_13;
          }
        }

        v10 = v7;
        if (sub_218C622C8(&v10, a2))
        {
          sub_219BF73D4();
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
          v6 = a1 & 0xFFFFFFFFFFFFFF8;
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v5;
        if (v8 == v4)
        {
          return v11;
        }
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_218C62C9C()
{
  sub_21896FA3C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - v6;
  v8 = *(v0 + 24);
  v9 = swift_allocObject();
  *(v9 + 40) = &type metadata for AlertStoryUnavailable;
  *(v9 + 48) = sub_218C6330C();
  *(v9 + 56) = 1;
  v10 = sub_219BDFA44();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v34 = 0;
  memset(v33, 0, sizeof(v33));
  v32 = 0;
  memset(v31, 0, sizeof(v31));
  v30 = v8;
  sub_2187B14CC(v31, &v26, &unk_280EE7DB0, &qword_280EE7DC0);
  if (*(&v27 + 1))
  {
    sub_21875F93C(&v26, v28);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v12 = qword_280ED32D8;
    v11 = qword_280ED32E0;
    v13 = qword_280ED32E8;

    sub_2188202A8(v11);
    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  else
  {
    sub_2187448D0(&v26, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v12 = qword_280ED32D8;
    v11 = qword_280ED32E0;
    v13 = qword_280ED32E8;

    sub_2188202A8(v11);
  }

  v25 = v9;
  v27 = 0u;
  v26 = 0u;
  sub_2189B4E2C(v7, v5);
  sub_2187B14CC(v33, v28, &qword_280EE33A0, &qword_280EE33B0);
  v14 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v15 = (v3 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 47) & 0xFFFFFFFFFFFFFFF8;
  v24 = v7;
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  sub_2189B4EAC(v5, v17 + v14);
  v18 = v17 + v15;
  v19 = v28[1];
  *v18 = v28[0];
  *(v18 + 16) = v19;
  *(v18 + 32) = v29;
  v20 = (v17 + v16);
  v21 = (v17 + ((v16 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v20 = 0;
  v20[1] = 0;
  *v21 = v12;
  v21[1] = v11;
  v21[2] = v13;

  sub_2188202A8(v11);
  sub_2186CF94C();
  sub_218C63360(&qword_280EE5A90, 255, sub_2186CF94C);
  sub_219BEB464();

  sub_2187FABEC(v11);
  sub_2187448D0(v31, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  sub_2187448D0(v33, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_218A42D80(v24);
  sub_2187448D0(&v26, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);

  return 1;
}

unint64_t sub_218C6330C()
{
  result = qword_27CC100B8;
  if (!qword_27CC100B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC100B8);
  }

  return result;
}

uint64_t sub_218C63360(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_218C633D0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v39 = type metadata accessor for AudioPlaylistFeedConfig();
  MEMORY[0x28223BE20](v39);
  v40 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x277D83D88];
  sub_2186DD2A0(0, &qword_280E91B80, MEMORY[0x277D32028], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v38 - v6;
  sub_2186DD2A0(0, &qword_280EE7CF0, sub_218C63EF8, v4);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v38 - v8;
  sub_2186DD2A0(0, &qword_280EE9C40, MEMORY[0x277CC9578], v4);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  sub_218C6407C(0, &qword_280EE72B8, MEMORY[0x277D6CE98]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v17 = &v38 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218C63FC4();
  v18 = v43;
  sub_219BF7B04();
  if (v18)
  {
    v31 = a1;
  }

  else
  {
    v19 = v15;
    v43 = a1;
    v20 = v42;
    sub_219BDBD34();
    v46 = 0;
    sub_218C641B8(&unk_280EE9C70, MEMORY[0x277CC9578]);
    v21 = v17;
    sub_219BE2C94();
    v38 = v12;
    sub_218C63EF8();
    v23 = v22;
    v45 = 1;
    sub_218C641B8(&qword_280EE7D00, sub_218C63EF8);
    v24 = v9;
    sub_219BE2C94();
    v25 = v19;
    v26 = *(v23 - 8);
    if ((*(v26 + 48))(v24, 1, v23) == 1)
    {
      sub_218710300(v24, &qword_280EE7CF0, sub_218C63EF8);
      v27 = 0;
    }

    else
    {
      v28 = sub_219BE1E44();
      v29 = v24;
      v27 = v28;
      (*(v26 + 8))(v29, v23);
    }

    v30 = v40;
    sub_219BEE5B4();
    v44 = 2;
    sub_218C641B8(&qword_280E91B88, MEMORY[0x277D32028]);
    sub_219BE2C94();
    v33 = MEMORY[0x277CC9578];
    v34 = v27;
    v35 = v38;
    sub_21872A988(v38, v30, &qword_280EE9C40, MEMORY[0x277CC9578]);
    if (!v34)
    {
      v34 = MEMORY[0x277D84F90];
    }

    sub_218710300(v35, &qword_280EE9C40, v33);
    (*(v25 + 8))(v21, v14);
    v36 = v20;
    v37 = v39;
    *(v30 + *(v39 + 20)) = v34;
    sub_2189A1E30(v41, v30 + *(v37 + 24));
    sub_218C64018(v30, v36);
    v31 = v43;
  }

  return __swift_destroy_boxed_opaque_existential_1(v31);
}

uint64_t sub_218C639C4(void *a1)
{
  v3 = v1;
  sub_218C6407C(0, &qword_27CC100C8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218C63FC4();
  sub_219BF7B44();
  v13 = 0;
  sub_219BDBD34();
  sub_218C641B8(&qword_280EE9CA0, MEMORY[0x277CC9578]);
  sub_219BF77E4();
  if (!v2)
  {
    v12 = *(v3 + *(type metadata accessor for AudioPlaylistFeedConfig() + 20));
    v11[15] = 1;
    sub_2186DD2A0(0, &qword_280E8F080, type metadata accessor for AudioPlaylistFeedGroupConfig, MEMORY[0x277D83940]);
    sub_218C640E0();
    sub_219BF7834();
    v11[14] = 2;
    sub_219BEE5B4();
    sub_218C641B8(&unk_280E91B90, MEMORY[0x277D32028]);
    sub_219BF77E4();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218C63C54(uint64_t a1)
{
  v2 = sub_218C63FC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218C63C90(uint64_t a1)
{
  v2 = sub_218C63FC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218C63D48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v8 = MEMORY[0x277CC9578];
  sub_2186DD2A0(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v13 - v10;
  sub_21872A988(v5, &v13 - v10, &qword_280EE9C40, v8);
  sub_21872A988(v5 + *(a2 + 24), a3 + *(a2 + 24), &qword_280E91B80, MEMORY[0x277D32028]);
  sub_21872A988(v11, a3, &qword_280EE9C40, v8);

  result = sub_218710300(v11, &qword_280EE9C40, v8);
  *(a3 + *(a2 + 20)) = a1;
  return result;
}

void sub_218C63EF8()
{
  if (!qword_280EE7CF8)
  {
    type metadata accessor for AudioPlaylistFeedGroupConfig();
    sub_218C641B8(&qword_280EB5588, type metadata accessor for AudioPlaylistFeedGroupConfig);
    sub_218C641B8(&qword_280EB5590, type metadata accessor for AudioPlaylistFeedGroupConfig);
    v0 = sub_219BE1E54();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE7CF8);
    }
  }
}

unint64_t sub_218C63FC4()
{
  result = qword_280EC5D08;
  if (!qword_280EC5D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC5D08);
  }

  return result;
}

uint64_t sub_218C64018(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioPlaylistFeedConfig();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218C6407C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218C63FC4();
    v7 = a3(a1, &type metadata for AudioPlaylistFeedConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218C640E0()
{
  result = qword_27CC100D0;
  if (!qword_27CC100D0)
  {
    sub_2186DD2A0(255, &qword_280E8F080, type metadata accessor for AudioPlaylistFeedGroupConfig, MEMORY[0x277D83940]);
    sub_218C641B8(&qword_280EB5590, type metadata accessor for AudioPlaylistFeedGroupConfig);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC100D0);
  }

  return result;
}

uint64_t sub_218C641B8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_218C64214()
{
  result = qword_27CC100D8;
  if (!qword_27CC100D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC100D8);
  }

  return result;
}

unint64_t sub_218C6426C()
{
  result = qword_280EC5CF8;
  if (!qword_280EC5CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC5CF8);
  }

  return result;
}

unint64_t sub_218C642C4()
{
  result = qword_280EC5D00;
  if (!qword_280EC5D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC5D00);
  }

  return result;
}

uint64_t sub_218C64318(void *a1)
{
  v3 = v1;
  sub_218C64E4C(0, &qword_280E8C2F0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218C64CE4();
  sub_219BF7B44();
  LOBYTE(v15) = 0;
  sub_219BED8D4();
  sub_218C64EB0(&qword_280E92640, MEMORY[0x277D31C50]);
  sub_219BF7834();
  if (!v2)
  {
    v10 = (v3 + *(type metadata accessor for PuzzleContinuePlayingTagFeedGroup() + 20));
    v11 = *v10;
    v12 = v10[1];
    v15 = v11;
    v16 = v12;
    v14[15] = 1;
    sub_218C64EF8();
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218C64504@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v29 = sub_219BED8D4();
  v26 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C64E4C(0, &qword_27CC100E0, MEMORY[0x277D844C8]);
  v7 = *(v6 - 8);
  v27 = v6;
  v28 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - v8;
  v10 = type metadata accessor for PuzzleContinuePlayingTagFeedGroup();
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218C64CE4();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = v10;
  v13 = v12;
  v14 = v26;
  LOBYTE(v30) = 0;
  sub_218C64EB0(&unk_280E92630, MEMORY[0x277D31C50]);
  v15 = v29;
  v16 = v27;
  sub_219BF7734();
  v17 = *(v14 + 32);
  v23 = v13;
  v17(v13, v5, v15);
  v32 = 1;
  sub_218C64D38();
  sub_219BF7734();
  (*(v28 + 8))(v9, v16);
  v18 = v31;
  v19 = v23;
  v20 = (v23 + *(v24 + 20));
  *v20 = v30;
  v20[1] = v18;
  sub_218C64D8C(v19, v25);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_218C64DF0(v19);
}

uint64_t sub_218C64880()
{
  if (*v0)
  {
    return 0x666E6F43626F6E6BLL;
  }

  else
  {
    return 0x724774616D726F66;
  }
}

uint64_t sub_218C648C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x724774616D726F66 && a2 == 0xEB0000000070756FLL;
  if (v6 || (sub_219BF78F4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x666E6F43626F6E6BLL && a2 == 0xEA00000000006769)
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

uint64_t sub_218C649B0(uint64_t a1)
{
  v2 = sub_218C64CE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218C649EC(uint64_t a1)
{
  v2 = sub_218C64CE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218C64B58(uint64_t a1)
{
  result = sub_218C64EB0(&unk_280EA28A0, type metadata accessor for PuzzleContinuePlayingTagFeedGroup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_218C64BB0(void *a1)
{
  a1[1] = sub_218C64EB0(&qword_280EA28D8, type metadata accessor for PuzzleContinuePlayingTagFeedGroup);
  a1[2] = sub_218C64EB0(&qword_280EA28B0, type metadata accessor for PuzzleContinuePlayingTagFeedGroup);
  result = sub_218C64EB0(&qword_280EA28C0, type metadata accessor for PuzzleContinuePlayingTagFeedGroup);
  a1[3] = result;
  return result;
}

uint64_t sub_218C64C5C(uint64_t a1)
{
  v2 = sub_218C64EB0(&qword_280EA28D8, type metadata accessor for PuzzleContinuePlayingTagFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

unint64_t sub_218C64CE4()
{
  result = qword_280EA28F0;
  if (!qword_280EA28F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA28F0);
  }

  return result;
}

unint64_t sub_218C64D38()
{
  result = qword_27CC100E8;
  if (!qword_27CC100E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC100E8);
  }

  return result;
}

uint64_t sub_218C64D8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PuzzleContinuePlayingTagFeedGroup();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218C64DF0(uint64_t a1)
{
  v2 = type metadata accessor for PuzzleContinuePlayingTagFeedGroup();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_218C64E4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218C64CE4();
    v7 = a3(a1, &type metadata for PuzzleContinuePlayingTagFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218C64EB0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_218C64EF8()
{
  result = qword_280E98268;
  if (!qword_280E98268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E98268);
  }

  return result;
}

unint64_t sub_218C64F60()
{
  result = qword_27CC100F0;
  if (!qword_27CC100F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC100F0);
  }

  return result;
}

unint64_t sub_218C64FB8()
{
  result = qword_280EA28E0;
  if (!qword_280EA28E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA28E0);
  }

  return result;
}

unint64_t sub_218C65010()
{
  result = qword_280EA28E8;
  if (!qword_280EA28E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA28E8);
  }

  return result;
}

unint64_t sub_218C65064(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x73657069636572;
    v7 = 0x676E69646E657274;
    if (a1 != 10)
    {
      v7 = 0xD000000000000011;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000011;
    v9 = 0x6867696C68676968;
    if (a1 != 7)
    {
      v9 = 0x6165486C61636F6CLL;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6974724164656566;
    v2 = 0xD000000000000019;
    v3 = 0x73656C7A7A7570;
    if (a1 != 4)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000017;
    if (a1 == 1)
    {
      v4 = 0x736575737369;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_218C65210(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_218C65064(*a1);
  v5 = v4;
  if (v3 == sub_218C65064(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_219BF78F4();
  }

  return v8 & 1;
}

uint64_t sub_218C65298@<X0>(_BYTE *a1@<X8>)
{
  result = sub_218C65474();
  *a1 = result;
  return result;
}

unint64_t sub_218C652C8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_218C65064(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_218C652F4()
{
  v1 = *v0;
  sub_219BF7AA4();
  sub_218C65064(v1);
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_218C65358()
{
  sub_218C65064(*v0);
  sub_219BF5524();
}

uint64_t sub_218C653AC()
{
  v1 = *v0;
  sub_219BF7AA4();
  sub_218C65064(v1);
  sub_219BF5524();

  return sub_219BF7AE4();
}

unint64_t sub_218C65420()
{
  result = qword_280EBCDA8;
  if (!qword_280EBCDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBCDA8);
  }

  return result;
}

uint64_t sub_218C65474()
{
  v0 = sub_219BF7614();

  if (v0 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_218C654EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
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

uint64_t sub_218C6556C(uint64_t a1)
{
  v2 = sub_218C659C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218C655A8(uint64_t a1)
{
  v2 = sub_218C659C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218C655E4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218C65A18(0, &qword_27CC10118, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218C659C4();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = sub_219BF76F4();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v10;
  a2[1] = v12;
  return result;
}

uint64_t sub_218C65770(void *a1)
{
  sub_218C65A18(0, &qword_27CC10120, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218C659C4();
  sub_219BF7B44();
  sub_219BF77F4();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_218C658C0()
{
  result = qword_27CC100F8;
  if (!qword_27CC100F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC100F8);
  }

  return result;
}

unint64_t sub_218C65918()
{
  result = qword_27CC10100;
  if (!qword_27CC10100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10100);
  }

  return result;
}

unint64_t sub_218C65970()
{
  result = qword_27CC10108;
  if (!qword_27CC10108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10108);
  }

  return result;
}

unint64_t sub_218C659C4()
{
  result = qword_27CC10110;
  if (!qword_27CC10110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10110);
  }

  return result;
}

void sub_218C65A18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218C659C4();
    v7 = a3(a1, &type metadata for AutocompleteSearchResultItem.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218C65A7C(uint64_t a1)
{
  v2 = v1;
  v55 = a1;
  v3 = sub_219BF1934();
  v52 = *(v3 - 8);
  v53 = v3;
  MEMORY[0x28223BE20](v3);
  v51 = v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_219BF0BD4();
  v5 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v7 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EDA54(0, &qword_280E91898, type metadata accessor for AudioFeedServiceConfig, sub_2186E71C8, MEMORY[0x277D32310]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = (v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v15 = (v45 - v14);
  v49 = type metadata accessor for CuratedAudioFeedGroupConfigData();
  v16 = MEMORY[0x28223BE20](v49);
  v50 = v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = v45 - v18;
  v20 = OBJC_IVAR____TtC7NewsUI228CuratedAudioFeedGroupEmitter_config;
  sub_2186FA2D8();
  v47 = v21;
  v48 = v20;
  sub_219BEDD14();

  v22 = sub_219BF7614();

  sub_218C68E84(v19, type metadata accessor for CuratedAudioFeedGroupConfigData);
  if (!v22)
  {
    v23 = sub_219BF78F4();

    if (v23)
    {
      goto LABEL_5;
    }

LABEL_8:
    v31 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  if (v22 != 1)
  {
    goto LABEL_8;
  }

LABEL_5:
  v45[1] = v2;
  v46 = v13;
  sub_218C68F54(0, &qword_280E8B8A0, MEMORY[0x277D32F00], MEMORY[0x277D84560]);
  v24 = sub_219BF0644();
  v25 = *(v24 - 8);
  v26 = v9;
  v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_219C09BA0;
  (*(v25 + 104))(v28 + v27, *MEMORY[0x277D32EF8], v24);
  v29 = sub_2194B3180(v28);
  swift_setDeallocating();
  v30 = v28 + v27;
  v9 = v26;
  (*(v25 + 8))(v30, v24);
  swift_deallocClassInstance();
  *v15 = v29;
  (*(v10 + 104))(v15, *MEMORY[0x277D322C8], v26);
  v31 = sub_2191F8260(0, 1, 1, MEMORY[0x277D84F90]);
  v33 = v31[2];
  v32 = v31[3];
  if (v33 >= v32 >> 1)
  {
    v31 = sub_2191F8260(v32 > 1, v33 + 1, 1, v31);
  }

  v31[2] = v33 + 1;
  (*(v10 + 32))(v31 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v33, v15, v26);
  v13 = v46;
LABEL_9:
  type metadata accessor for CuratedAudioFeedGroupKnobs();
  sub_219BEF134();
  sub_219BEF524();
  (*(v5 + 8))(v7, v54);
  v34 = 0;
  v35 = 0;
  if (v58 == 1)
  {
    v36 = v50;
    sub_219BEDD14();
    v37 = v51;
    v38 = v52;
    v39 = v53;
    (*(v52 + 16))(v51, v36 + *(v49 + 20), v53);
    sub_218C68E84(v36, type metadata accessor for CuratedAudioFeedGroupConfigData);
    v34 = sub_219BF1784();
    v35 = v40;
    (*(v38 + 8))(v37, v39);
  }

  v41 = swift_allocObject();
  *(v41 + 16) = v34;
  *(v41 + 24) = v35;
  sub_2186EDA54(0, &qword_280E91238, type metadata accessor for AudioFeedServiceConfig, sub_2186E71C8, MEMORY[0x277D328E0]);
  swift_allocObject();
  *v13 = sub_219BEFB94();
  (*(v10 + 104))(v13, *MEMORY[0x277D32308], v9);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v31 = sub_2191F8260(0, v31[2] + 1, 1, v31);
  }

  v43 = v31[2];
  v42 = v31[3];
  if (v43 >= v42 >> 1)
  {
    v31 = sub_2191F8260(v42 > 1, v43 + 1, 1, v31);
  }

  v31[2] = v43 + 1;
  (*(v10 + 32))(v31 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v43, v13, v9);
  v57 = 4;
  sub_2186E7180(0);
  v56 = sub_219BEE964();
  sub_2191EE19C(v31);
  return v56;
}

uint64_t sub_218C66248(uint64_t a1)
{
  sub_2186DEEA0(0, &qword_280EDE378);
  sub_219BE3204();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = v1;

  v4 = sub_219BE2E54();
  sub_219BF2754();
  sub_219BE2F64();

  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = a1;

  v6 = sub_219BE2E54();
  sub_218C68E08(0);
  sub_219BE2F64();

  v7 = sub_219BE2E54();
  v8 = sub_219BE3054();

  return v8;
}

uint64_t sub_218C663E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v144 = a3;
  v137 = a2;
  v3 = MEMORY[0x277D83D88];
  sub_218C68F54(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v133 = &v101 - v5;
  sub_218C68F54(0, &qword_280E90150, MEMORY[0x277D33EC8], v3);
  MEMORY[0x28223BE20](v6 - 8);
  v129 = &v101 - v7;
  sub_218C68F54(0, &qword_280E91A50, sub_2186E7180, v3);
  MEMORY[0x28223BE20](v8 - 8);
  v128 = &v101 - v9;
  v132 = sub_219BF2AB4();
  v131 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v130 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C68F54(0, &unk_280E8FF30, sub_218A42400, v3);
  MEMORY[0x28223BE20](v11 - 8);
  v140 = &v101 - v12;
  v142 = type metadata accessor for CuratedAudioFeedGroupConfigData();
  v13 = MEMORY[0x28223BE20](v142);
  v127 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v126 = &v101 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v119 = &v101 - v18;
  MEMORY[0x28223BE20](v17);
  v123 = &v101 - v19;
  v149 = sub_219BF1934();
  v145 = *(v149 - 8);
  v20 = MEMORY[0x28223BE20](v149);
  v118 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v138 = &v101 - v23;
  MEMORY[0x28223BE20](v22);
  v143 = &v101 - v24;
  v117 = sub_219BEF9C4();
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v115 = &v101 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C68F54(0, &qword_280E912E0, MEMORY[0x277D32720], v3);
  MEMORY[0x28223BE20](v26 - 8);
  v106 = &v101 - v27;
  sub_218C68F54(0, &unk_280E90FA0, MEMORY[0x277D32C48], v3);
  MEMORY[0x28223BE20](v28 - 8);
  v114 = &v101 - v29;
  v113 = sub_219BEF564();
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v105 = &v101 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_219BEFBD4();
  v109 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v134 = &v101 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_219BF0BD4();
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v104 = &v101 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C68F54(0, &qword_280E90300, MEMORY[0x277D33AA8], v3);
  MEMORY[0x28223BE20](v33 - 8);
  v135 = (&v101 - v34);
  v125 = sub_219BF2774();
  v124 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v147 = &v101 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_219BEDC14();
  MEMORY[0x28223BE20](v36 - 8);
  v103 = &v101 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_219BF35D4();
  v139 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v146 = &v101 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C68F54(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], v3);
  MEMORY[0x28223BE20](v39 - 8);
  v41 = &v101 - v40;
  v122 = sub_219BF2034();
  v121 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v43 = &v101 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_219BEC004();
  v45 = *(v44 - 8);
  v46 = *(v45 + 56);
  v110 = v44;
  v108 = v46;
  v107 = v45 + 56;
  (v46)(v41, 1, 1);
  v47 = MEMORY[0x277D84F90];
  sub_219A95188(MEMORY[0x277D84F90]);
  sub_219A95188(v47);
  sub_219A951A0(v47);
  sub_219A951B8(v47);
  sub_219A952CC(v47);
  sub_219A952E4(v47);
  sub_219A953F8(v47);
  v136 = v41;
  v48 = v43;
  v49 = v106;
  v50 = v105;
  v51 = v137;
  sub_219BF2024();
  sub_219BEF084();
  sub_219BF35E4();
  v52 = v104;
  sub_219BEF134();
  v53 = v144 + OBJC_IVAR____TtC7NewsUI228CuratedAudioFeedGroupEmitter_knobs;
  v54 = type metadata accessor for CuratedAudioFeedGroupKnobs();
  v148[3] = v54;
  v148[4] = sub_2186FA4D8(&qword_280EBBC48, type metadata accessor for CuratedAudioFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v148);
  sub_218C68EE4(v53, boxed_opaque_existential_1, type metadata accessor for CuratedAudioFeedGroupKnobs);
  v56 = v135;
  sub_219BF2AC4();
  v57 = sub_219BF2AD4();
  (*(*(v57 - 8) + 56))(v56, 0, 1, v57);
  v103 = sub_218C67804(v51);
  (*(v109 + 104))(v134, *MEMORY[0x277D329D8], v111);
  (*(v112 + 104))(v50, *MEMORY[0x277D32668], v113);
  v58 = *(v54 + 36);
  v113 = v53;
  sub_2189B7614(v53 + v58, v49);
  v59 = sub_219BEF814();
  v60 = *(v59 - 8);
  v61 = (*(v60 + 48))(v49, 1, v59);
  v120 = v48;
  if (v61 == 1)
  {
    sub_218817318(v49, &qword_280E912E0, MEMORY[0x277D32720]);
    v62 = 1;
    v63 = v114;
  }

  else
  {
    sub_219BEF134();
    v63 = v114;
    sub_219BEF7E4();
    (*(v101 + 8))(v52, v102);
    (*(v60 + 8))(v49, v59);
    v62 = 0;
  }

  v64 = sub_219BF02F4();
  (*(*(v64 - 8) + 56))(v63, v62, 1, v64);
  (v116[13])(v115, *MEMORY[0x277D32840], v117);
  sub_219BF2764();
  v65 = *(v144 + OBJC_IVAR____TtC7NewsUI228CuratedAudioFeedGroupEmitter_formatService + 24);
  v117 = *(v144 + OBJC_IVAR____TtC7NewsUI228CuratedAudioFeedGroupEmitter_formatService + 32);
  v134 = v65;
  v116 = __swift_project_boxed_opaque_existential_1((v144 + OBJC_IVAR____TtC7NewsUI228CuratedAudioFeedGroupEmitter_formatService), v65);
  v66 = OBJC_IVAR____TtC7NewsUI228CuratedAudioFeedGroupEmitter_config;
  sub_2186FA2D8();
  v115 = v66;
  v67 = v123;
  v114 = v68;
  sub_219BEDD14();
  v69 = v142;
  v70 = v145;
  v71 = *(v145 + 16);
  v71(v138, v67 + *(v142 + 20), v149);
  v135 = type metadata accessor for CuratedAudioFeedGroupConfigData;
  sub_218C68E84(v67, type metadata accessor for CuratedAudioFeedGroupConfigData);
  v108(v136, 1, 1, v110);
  sub_218A42400(0);
  (*(*(v72 - 8) + 56))(v140, 1, 1, v72);
  v73 = v119;
  sub_219BEDD14();
  v74 = v118;
  v75 = v149;
  v71(v118, v73 + *(v69 + 20), v149);
  v76 = v135;
  sub_218C68E84(v73, v135);
  v77 = sub_219BF1914();
  v78 = *(v70 + 8);
  v78(v74, v75);
  sub_2194B1FF0(&unk_282A23248, v77);
  sub_2189AD3D8(&unk_282A23268);
  v79 = v140;
  v80 = v136;
  v81 = v138;
  sub_219BF1764();

  sub_218817318(v79, &unk_280E8FF30, sub_218A42400);
  sub_218817318(v80, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
  v140 = v78;
  v145 = v70 + 8;
  v78(v81, v75);
  sub_2186E7180(0);
  v83 = v82;
  v84 = *(v82 - 8);
  v85 = v128;
  (*(v84 + 16))(v128, v113, v82);
  (*(v84 + 56))(v85, 0, 1, v83);
  sub_219BEDD14();

  sub_218C68E84(v67, v76);
  v86 = v139;
  v87 = v129;
  v88 = v141;
  (*(v139 + 16))(v129, v146, v141);
  (*(v86 + 56))(v87, 0, 1, v88);
  LOBYTE(v148[0]) = 4;
  sub_2186EDA54(0, &qword_280E90080, type metadata accessor for AudioFeedServiceConfig, sub_2186E71C8, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  v89 = v126;
  sub_219BEDD14();
  sub_2190D0DD0();
  v90 = v135;
  sub_218C68E84(v89, v135);
  v91 = v127;
  sub_219BEDD14();
  sub_218C68E84(v91, v90);
  v92 = v124;
  v93 = v133;
  v94 = v125;
  (*(v124 + 16))(v133, v147, v125);
  (*(v92 + 56))(v93, 0, 1, v94);
  v95 = qword_280E8D7D8;
  *MEMORY[0x277D30B50];
  if (v95 != -1)
  {
    swift_once();
  }

  qword_280F616F8;
  v96 = v130;
  sub_219BF2A84();
  v97 = v143;
  v98 = v120;
  v99 = sub_219BF2184();
  (*(v131 + 8))(v96, v132);
  (v140)(v97, v149);
  (*(v92 + 8))(v147, v94);
  (*(v139 + 8))(v146, v141);
  (*(v121 + 8))(v98, v122);
  return v99;
}

uint64_t sub_218C67804(uint64_t a1)
{
  v21 = a1;
  v1 = sub_219BF3924();
  v2 = *(v1 - 8);
  v3 = v2;
  v4 = MEMORY[0x28223BE20](v1);
  v19 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v18 = &v18 - v6;
  v20 = sub_219BF0BD4();
  v7 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C68F54(0, &unk_280E8B7B0, MEMORY[0x277D33FB8], MEMORY[0x277D84560]);
  v10 = *(v2 + 72);
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C09EC0;
  v13 = *(v3 + 104);
  v13(v12 + v11, *MEMORY[0x277D33F90], v1);
  v13(v12 + v11 + v10, *MEMORY[0x277D33FA8], v1);
  v14 = sub_2194B2A30(v12);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v23 = v14;
  type metadata accessor for CuratedAudioFeedGroupKnobs();
  sub_219BEF134();
  sub_219BEF524();
  (*(v7 + 8))(v9, v20);
  if (v22 == 1)
  {
    v15 = v19;
    v13(v19, *MEMORY[0x277D33F98], v1);
    v16 = v18;
    sub_2194995E4(v18, v15);
    (*(v3 + 8))(v16, v1);
  }

  return v23;
}

uint64_t sub_218C67B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a3;
  sub_218C68E08(0);
  v53 = v4;
  MEMORY[0x28223BE20](v4);
  v54 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CuratedAudioFeedGroupConfigData();
  MEMORY[0x28223BE20](v6 - 8);
  v50 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for CuratedAudioFeedGroup();
  MEMORY[0x28223BE20](v49);
  v52 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_219BF1904();
  v58 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v61 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BF0BD4();
  v59 = *(v10 - 8);
  v60 = v10;
  MEMORY[0x28223BE20](v10);
  v57 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C68F54(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v48 - v13;
  v15 = sub_219BEF554();
  v16 = MEMORY[0x28223BE20](v15 - 8);
  MEMORY[0x28223BE20](v16);
  v17 = sub_219BED8D4();
  v62 = *(v17 - 8);
  v63 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC7NewsUI228CuratedAudioFeedGroupEmitter_config;
  sub_2186FA2D8();

  v21 = sub_219BEDCB4();
  v55 = v22;
  v56 = v21;
  sub_219BEDCC4();
  v48[1] = v20;
  sub_219BEDCC4();
  v51 = a2;
  sub_2186E7180(0);
  sub_219BEE9B4();
  sub_219BEE984();
  v23 = sub_219BEE5D4();
  (*(*(v23 - 8) + 56))(v14, 1, 1, v23);
  v24 = v58;
  v25 = v19;
  sub_219BED834();
  type metadata accessor for CuratedAudioFeedGroupKnobs();
  v26 = v57;
  sub_219BEF134();
  sub_219BEF524();
  (*(v59 + 8))(v26, v60);
  v27 = v66;
  v28 = v61;
  v29 = v25;
  sub_219BED874();
  v30 = sub_219BF18E4();
  v31 = *(v24 + 8);
  v32 = v28;
  v31(v28, v64);
  v33 = *(v30 + 16);

  if (v33 >= v27)
  {
    v40 = v62;
    v39 = v63;
    v41 = v52;
    v42 = v29;
    (*(v62 + 16))(v52, v29, v63);
    v43 = v50;
    sub_219BEDD14();
    v45 = *v43;
    v44 = v43[1];

    sub_218C68E84(v43, type metadata accessor for CuratedAudioFeedGroupConfigData);
    v46 = (v41 + *(v49 + 20));
    *v46 = v45;
    v46[1] = v44;
    sub_218C68EE4(v41, v54, type metadata accessor for CuratedAudioFeedGroup);
    type metadata accessor for AudioFeedGroup();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_218C68F54(0, &unk_280EE6C70, sub_218C68E08, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v38 = sub_219BE3014();
    sub_218C68E84(v41, type metadata accessor for CuratedAudioFeedGroup);
    (*(v40 + 8))(v42, v39);
  }

  else
  {
    v34 = sub_219BEEDD4();
    sub_2186FA4D8(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    v36 = v35;
    v48[0] = v29;
    sub_219BED874();
    v37 = sub_219BF18E4();
    v31(v32, v64);
    v38 = *(v37 + 16);

    *v36 = v27;
    v36[1] = v38;
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D32400], v34);
    swift_willThrow();
    (*(v62 + 8))(v48[0], v63);
  }

  return v38;
}

uint64_t sub_218C682C4(uint64_t a1)
{
  sub_218C68E08(0);
  v10 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = (&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_280E8D7D8 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2186F20D4();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C09BA0;
  v11 = 0;
  v12 = 0xE000000000000000;
  v13 = a1;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  v7 = v11;
  v6 = v12;
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = sub_2186FC3BC();
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;
  sub_219BE5314();

  v11 = 0;
  v12 = 0xE000000000000000;
  sub_219BF7314();
  MEMORY[0x21CECC330](0xD000000000000027, 0x8000000219CEE7C0);
  v13 = a1;
  sub_219BF7484();
  v8 = v12;
  *v4 = v11;
  v4[1] = v8;
  swift_storeEnumTagMultiPayload();
  sub_218C68F54(0, &unk_280EE6C70, sub_218C68E08, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_218C68518()
{
  v1 = OBJC_IVAR____TtC7NewsUI228CuratedAudioFeedGroupEmitter_config;
  sub_2186FA2D8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_218C68E84(v0 + OBJC_IVAR____TtC7NewsUI228CuratedAudioFeedGroupEmitter_knobs, type metadata accessor for CuratedAudioFeedGroupKnobs);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI228CuratedAudioFeedGroupEmitter_formatService);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI228CuratedAudioFeedGroupEmitter_offlineContentManager);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CuratedAudioFeedGroupEmitter()
{
  result = qword_280EB4B58;
  if (!qword_280EB4B58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218C6864C()
{
  sub_2186FA2D8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CuratedAudioFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_218C68748()
{
  v0 = type metadata accessor for CuratedAudioFeedGroupConfigData();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = (v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6[0] = 0x2064657461727543;
  v6[1] = 0xE900000000000028;
  sub_2186FA2D8();
  sub_219BEDD14();
  v3 = *v2;
  v4 = v2[1];

  sub_218C68E84(v2, type metadata accessor for CuratedAudioFeedGroupConfigData);
  MEMORY[0x21CECC330](v3, v4);

  MEMORY[0x21CECC330](41, 0xE100000000000000);
  return v6[0];
}

uint64_t sub_218C68844@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI228CuratedAudioFeedGroupEmitter_config;
  sub_2186FA2D8();
  (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
  type metadata accessor for AudioFeedGroupConfig();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_218C688D8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI228CuratedAudioFeedGroupEmitter_knobs;
  a1[3] = type metadata accessor for CuratedAudioFeedGroupKnobs();
  a1[4] = sub_2186FA4D8(&qword_280EBBC40, type metadata accessor for CuratedAudioFeedGroupKnobs);
  a1[5] = sub_2186FA4D8(&qword_27CC10128, type metadata accessor for CuratedAudioFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_218C68EE4(v3 + v4, boxed_opaque_existential_1, type metadata accessor for CuratedAudioFeedGroupKnobs);
}

uint64_t sub_218C68A00@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for CuratedAudioFeedGroupConfigData();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = 0x2064657461727543;
  v14 = 0xE900000000000028;
  sub_2186FA2D8();
  sub_219BEDD14();
  v5 = *v4;
  v6 = v4[1];

  sub_218C68E84(v4, type metadata accessor for CuratedAudioFeedGroupConfigData);
  MEMORY[0x21CECC330](v5, v6);

  MEMORY[0x21CECC330](41, 0xE100000000000000);
  sub_218C68F54(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  v8 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v8;
  *(inited + 56) = v9;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_218C68E84(inited + 32, sub_2188317B0);
  sub_218C68F54(0, &qword_280EE7950, type metadata accessor for CuratedAudioFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a1[3] = v10;
  a1[4] = sub_218C68FB8();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_218C68C44()
{
  sub_2186FA4D8(&qword_280EB4B70, type metadata accessor for CuratedAudioFeedGroupEmitter);

  return sub_219BE2324();
}

uint64_t sub_218C68E84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218C68EE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_218C68F54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_218C68FB8()
{
  result = qword_280EE7958;
  if (!qword_280EE7958)
  {
    sub_218C68F54(255, &qword_280EE7950, type metadata accessor for CuratedAudioFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE7958);
  }

  return result;
}

uint64_t sub_218C69050(char *a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  v61 = a4;
  v71 = a3;
  v73 = a2;
  sub_218C6994C(0, &qword_280EE4B40, MEMORY[0x277D6DF88]);
  v72 = v5;
  v70 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v69 = (&v56 - v6);
  v62 = type metadata accessor for FollowingModel();
  MEMORY[0x28223BE20](v62);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C6994C(0, &qword_280EE3760, MEMORY[0x277D6EC60]);
  v10 = v9;
  v66 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v63 = &v56 - v11;
  sub_218A7BA30(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950B84();
  v16 = v15;
  v68 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v65 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v67 = &v56 - v19;
  sub_218A2D984(0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C6994C(0, &qword_280EE5750, MEMORY[0x277D6D710]);
  v24 = v23;
  v25 = *(v23 - 8);
  v26 = MEMORY[0x28223BE20](v23);
  v64 = &v56 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v56 - v28;
  sub_219BEB354();
  if ((*(v25 + 48))(v22, 1, v24) == 1)
  {
    v30 = sub_218A2D984;
    v31 = v22;
LABEL_5:
    sub_218C69A30(v31, v30);
    sub_218C699DC();
    v33 = swift_allocError();
    v35 = v69;
    v34 = v70;
    *v69 = v33;
    v36 = v72;
    (*(v34 + 104))(v35, *MEMORY[0x277D6DF68], v72);
    v73(v35);
    return (*(v34 + 8))(v35, v36);
  }

  (*(v25 + 32))(v29, v22, v24);
  sub_219BEB1C4();
  v32 = v68;
  if ((*(v68 + 48))(v14, 1, v16) == 1)
  {
    (*(v25 + 8))(v29, v24);
    v30 = sub_218A7BA30;
    v31 = v14;
    goto LABEL_5;
  }

  v38 = *(v32 + 32);
  v60 = v16;
  v38(v67, v14, v16);
  (*(v25 + 16))(v64, v29, v24);
  v39 = v10;
  v40 = *(v66 + 16);
  v41 = v63;
  v58 = v66 + 16;
  v59 = a1;
  v57 = v40;
  v40(v63, a1, v10);
  *v8 = v61;
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  v8[32] = 1;
  swift_storeEnumTagMultiPayload();
  sub_218C698F4();
  sub_219BE5FB4();
  sub_219BE69E4();
  v42 = v41;
  sub_219BEB234();
  sub_218A7BAF8();
  sub_2187490E4();
  sub_219BE78F4();
  __swift_project_boxed_opaque_existential_1(v74, v74[3]);
  v43 = v29;
  if (sub_219BE6E54())
  {
    v44 = MEMORY[0x277D6DF80];
    v45 = v69;
  }

  else
  {
    sub_218A7BB4C();
    v47 = *(v46 + 48);
    v48 = *(v46 + 64);
    v45 = v69;
    v57(v69, v41, v39);
    sub_218718690(v74, v45 + v47);
    v49 = *MEMORY[0x277D6D868];
    v50 = sub_219BE6DF4();
    (*(*(v50 - 8) + 104))(v45 + v48, v49, v50);
    v44 = MEMORY[0x277D6DF78];
  }

  v51 = v70;
  v52 = v72;
  (*(v70 + 104))(v45, *v44, v72);
  v73(v45);
  (*(v51 + 8))(v45, v52);
  v53 = *(v68 + 8);
  v54 = v60;
  v53(v65, v60);
  (*(v66 + 8))(v42, v39);
  v55 = *(v25 + 8);
  v55(v64, v24);
  v53(v67, v54);
  v55(v43, v24);
  return __swift_destroy_boxed_opaque_existential_1(v74);
}

uint64_t sub_218C6985C(uint64_t a1)
{
  v2 = sub_218B12830();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_218C6989C()
{
  result = qword_27CC10130;
  if (!qword_27CC10130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10130);
  }

  return result;
}

unint64_t sub_218C698F4()
{
  result = qword_280EDC630;
  if (!qword_280EDC630)
  {
    type metadata accessor for FollowingModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EDC630);
  }

  return result;
}

void sub_218C6994C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for FollowingDescriptor;
    v8[1] = type metadata accessor for FollowingModel();
    v8[2] = sub_2187490E4();
    v8[3] = sub_218C698F4();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_218C699DC()
{
  result = qword_27CC10138;
  if (!qword_27CC10138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10138);
  }

  return result;
}

uint64_t sub_218C69A30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_218C69AA4()
{
  result = qword_27CC10140;
  if (!qword_27CC10140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10140);
  }

  return result;
}

uint64_t sub_218C69B08(uint64_t a1, uint64_t a2)
{
  sub_2186FAADC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_218C69B74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2186FAADC();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_218C69BF0()
{
  sub_2186FAADC();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C6A8DC(v0, v8);
  (*(v3 + 32))(v6, v8, v2);
  v9 = sub_219BEDCA4();
  (*(v3 + 8))(v6, v2);
  return v9;
}

uint64_t sub_218C69D80(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_2186FAADC();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C6A8DC(v3, v12);
  (*(v7 + 32))(v10, v12, v6);
  a3(v6);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_218C69F30(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_2186FAADC();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C6A8DC(v3, v12);
  (*(v7 + 32))(v10, v12, v6);
  v13 = a3(v6);
  (*(v7 + 8))(v10, v6);
  return v13;
}

uint64_t sub_218C6A078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2186EA310(&qword_27CC10180, type metadata accessor for SharedWithYouFeedGroupConfig);

  return MEMORY[0x282190458](a1, a2, a3, v6);
}

uint64_t sub_218C6A21C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  sub_2186FAADC();
  v5 = v4;
  v18 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C6A7D8();
  v9 = v8;
  v21 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218C6A834();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v21;
    v16 = v5;
    v17 = v7;
    sub_218C6A888();
    sub_219BF7734();
    sub_218718690(a1, v20);
    type metadata accessor for ArticleListSharedWithYouFeedGroupConfigData();
    sub_2186EA310(&qword_280E947F0, type metadata accessor for ArticleListSharedWithYouFeedGroupConfigData);
    sub_2186EA310(qword_280E947F8, type metadata accessor for ArticleListSharedWithYouFeedGroupConfigData);
    v13 = v17;
    sub_219BEDD24();
    (*(v12 + 8))(v11, v9);
    (*(v18 + 32))(v19, v13, v16);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218C6A4DC@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_219BF7614();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_218C6A534(uint64_t a1)
{
  v2 = sub_218C6A834();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218C6A570(uint64_t a1)
{
  v2 = sub_218C6A834();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218C6A680()
{
  v1 = v0;
  sub_2186FAADC();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C6A8DC(v1, v9);
  (*(v4 + 32))(v7, v9, v3);
  sub_219BEDD64();
  return (*(v4 + 8))(v7, v3);
}

void sub_218C6A7D8()
{
  if (!qword_27CC10168)
  {
    sub_218C6A834();
    v0 = sub_219BF7774();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC10168);
    }
  }
}

unint64_t sub_218C6A834()
{
  result = qword_27CC10170;
  if (!qword_27CC10170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10170);
  }

  return result;
}

unint64_t sub_218C6A888()
{
  result = qword_27CC10178;
  if (!qword_27CC10178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10178);
  }

  return result;
}

uint64_t sub_218C6A8DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedWithYouFeedGroupConfig();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_218C6A964()
{
  result = qword_27CC10188;
  if (!qword_27CC10188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10188);
  }

  return result;
}

unint64_t sub_218C6A9BC()
{
  result = qword_27CC10190;
  if (!qword_27CC10190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10190);
  }

  return result;
}

unint64_t sub_218C6AA14()
{
  result = qword_27CC10198;
  if (!qword_27CC10198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10198);
  }

  return result;
}

unint64_t sub_218C6AA6C()
{
  result = qword_27CC101A0;
  if (!qword_27CC101A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC101A0);
  }

  return result;
}

unint64_t sub_218C6AAC0()
{
  result = qword_27CC101A8;
  if (!qword_27CC101A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC101A8);
  }

  return result;
}

uint64_t type metadata accessor for TrendingRecipesTagFeedGroupKnobs()
{
  result = qword_280EA40D0;
  if (!qword_280EA40D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218C6AB88()
{
  sub_2189AD5C8();
  if (v0 <= 0x3F)
  {
    sub_2186F9548();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_218C6AC0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_2189ADE0C();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AD5C8();
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189ADE64(a1, v10);
  v16 = *(v13 + 48);
  if (v16(v10, 1, v12) == 1)
  {
    type metadata accessor for TagFeedServiceConfig();
    v19 = a2;
    sub_21877C750(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    a2 = v19;
    sub_219BEE974();
    if (v16(v10, 1, v12) != 1)
    {
      sub_2189ADEC8(v10);
    }
  }

  else
  {
    (*(v13 + 32))(v15, v10, v12);
  }

  (*(v13 + 32))(a4, v15, v12);
  if (!a2)
  {
    v20 = 6;
    sub_2186F9548();
    swift_allocObject();
    a2 = sub_219BEF534();
  }

  v17 = type metadata accessor for TrendingRecipesTagFeedGroupKnobs();
  *(a4 + *(v17 + 20)) = a2;
  if (!a3)
  {
    v20 = 6;
    sub_2186F9548();
    swift_allocObject();
    a3 = sub_219BEF534();
  }

  result = sub_2189ADEC8(a1);
  *(a4 + *(v17 + 24)) = a3;
  return result;
}

uint64_t sub_218C6AF00@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  sub_2189AD5C8();
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x28223BE20](v3);
  v48 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TrendingRecipesTagFeedGroupKnobs();
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189ADE0C();
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v51 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v50 = &v39 - v11;
  sub_218C6B9A8(0, &qword_280E8C9E0, MEMORY[0x277D844C8]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v39 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218C6B8F0();
  v17 = v52;
  sub_219BF7B34();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v42 = 0;
  v43 = v14;
  v44 = a1;
  v52 = v7;
  LOBYTE(v55) = 0;
  sub_21877C750(&qword_280E91A88, sub_2189AD5C8);
  v19 = v50;
  v20 = v47;
  sub_219BF7674();
  sub_2186F9548();
  LOBYTE(v54) = 1;
  sub_21877C750(&qword_280E913B8, sub_2186F9548);
  sub_219BF7674();
  v40 = v55;
  LOBYTE(v53) = 2;
  v21 = v13;
  v45 = v16;
  sub_219BF7674();
  v41 = v54;
  v22 = v19;
  v23 = v51;
  sub_2189ADE64(v22, v51);
  v24 = v46;
  v25 = *(v46 + 48);
  v26 = v25(v23, 1, v20);
  v27 = v20;
  if (v26 == 1)
  {
    type metadata accessor for TagFeedServiceConfig();
    sub_21877C750(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    v28 = v48;
    sub_219BEE974();
    v29 = v25(v51, 1, v20);
    v30 = v28;
    v31 = v43;
    v32 = v44;
    if (v29 != 1)
    {
      sub_2189ADEC8(v51);
    }
  }

  else
  {
    v30 = v48;
    (*(v24 + 32))(v48, v51, v20);
    v31 = v43;
    v32 = v44;
  }

  v33 = v52;
  (*(v24 + 32))(v52, v30, v27);
  v34 = v40;
  if (!v40)
  {
    v53 = 6;
    swift_allocObject();
    v34 = sub_219BEF534();
  }

  v35 = v45;
  *(v33 + *(v5 + 20)) = v34;
  v36 = v49;
  v37 = v41;
  if (v41)
  {
    sub_2189ADEC8(v50);
    (*(v31 + 8))(v35, v21);
  }

  else
  {
    v53 = 6;
    v38 = v50;
    swift_allocObject();
    v37 = sub_219BEF534();
    sub_2189ADEC8(v38);
    (*(v31 + 8))(v45, v21);
  }

  *(v33 + *(v5 + 24)) = v37;
  sub_218C6B944(v33, v36);
  return __swift_destroy_boxed_opaque_existential_1(v32);
}

uint64_t sub_218C6B498(void *a1)
{
  v3 = v1;
  sub_218C6B9A8(0, &qword_27CC101B0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218C6B8F0();
  sub_219BF7B44();
  LOBYTE(v14) = 0;
  sub_2189AD5C8();
  sub_21877C750(&qword_27CC0BEC8, sub_2189AD5C8);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for TrendingRecipesTagFeedGroupKnobs();
    v14 = *(v3 + *(v10 + 20));
    v13 = 1;
    sub_2186F9548();
    sub_21877C750(&qword_280E913C0, sub_2186F9548);
    sub_219BF7834();
    v14 = *(v3 + *(v10 + 24));
    v13 = 2;
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218C6B6FC()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x73656C7572;
  }
}

uint64_t sub_218C6B75C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_218C6BB24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_218C6B784(uint64_t a1)
{
  v2 = sub_218C6B8F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218C6B7C0(uint64_t a1)
{
  v2 = sub_218C6B8F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218C6B82C()
{
  type metadata accessor for TagFeedServiceConfig();
  sub_21877C750(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
  if (sub_219BEE9F4() & 1) != 0 && (sub_2186F9548(), (sub_219BEF504()))
  {
    return sub_219BEF504() & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_218C6B8F0()
{
  result = qword_280EA40F8[0];
  if (!qword_280EA40F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EA40F8);
  }

  return result;
}

uint64_t sub_218C6B944(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TrendingRecipesTagFeedGroupKnobs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218C6B9A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218C6B8F0();
    v7 = a3(a1, &type metadata for TrendingRecipesTagFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218C6BA20()
{
  result = qword_27CC101B8;
  if (!qword_27CC101B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC101B8);
  }

  return result;
}

unint64_t sub_218C6BA78()
{
  result = qword_280EA40E8;
  if (!qword_280EA40E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA40E8);
  }

  return result;
}

unint64_t sub_218C6BAD0()
{
  result = qword_280EA40F0;
  if (!qword_280EA40F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA40F0);
  }

  return result;
}

uint64_t sub_218C6BB24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCC90 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCCB0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_218C6BC48@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BED8D4();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C6C458(0, &qword_27CC101E0, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for TrendingRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218C6C3A0();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_218C6C4BC(&unk_280E92630, MEMORY[0x277D31C50]);
    sub_219BF7734();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_218C6C3F4(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218C6BEF4(uint64_t a1)
{
  v2 = sub_218C6C3A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218C6BF30(uint64_t a1)
{
  v2 = sub_218C6C3A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218C6BFAC(void *a1)
{
  sub_218C6C458(0, &qword_27CC101F0, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218C6C3A0();
  sub_219BF7B44();
  sub_219BED8D4();
  sub_218C6C4BC(&qword_280E92640, MEMORY[0x277D31C50]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_218C6C20C(uint64_t a1)
{
  result = sub_218C6C4BC(&unk_27CC1C590, type metadata accessor for TrendingRecipesTagFeedGroup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_218C6C264(void *a1)
{
  a1[1] = sub_218C6C4BC(&qword_27CC101D8, type metadata accessor for TrendingRecipesTagFeedGroup);
  a1[2] = sub_218C6C4BC(&unk_27CC1C6D0, type metadata accessor for TrendingRecipesTagFeedGroup);
  result = sub_218C6C4BC(&unk_27CC1C7E0, type metadata accessor for TrendingRecipesTagFeedGroup);
  a1[3] = result;
  return result;
}

uint64_t sub_218C6C310(uint64_t a1)
{
  v2 = sub_218C6C4BC(&qword_27CC101D8, type metadata accessor for TrendingRecipesTagFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

unint64_t sub_218C6C3A0()
{
  result = qword_27CC101E8;
  if (!qword_27CC101E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC101E8);
  }

  return result;
}

uint64_t sub_218C6C3F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TrendingRecipesTagFeedGroup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218C6C458(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218C6C3A0();
    v7 = a3(a1, &type metadata for TrendingRecipesTagFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218C6C4BC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_218C6C518()
{
  result = qword_27CC101F8;
  if (!qword_27CC101F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC101F8);
  }

  return result;
}

unint64_t sub_218C6C570()
{
  result = qword_27CC10200;
  if (!qword_27CC10200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10200);
  }

  return result;
}

unint64_t sub_218C6C5C8()
{
  result = qword_27CC10208;
  if (!qword_27CC10208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10208);
  }

  return result;
}

uint64_t type metadata accessor for TrendingRecipesTagFeedGroupConfigData()
{
  result = qword_280E98728;
  if (!qword_280E98728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218C6C690@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BF1934();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v18 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C6CBC0(0, &qword_280E8C7A0, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218C6CB6C();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v16;
    v11 = v17;
    v19 = 1;
    sub_218933D7C(&qword_280E90808);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    *v11 = 44;
    v13 = type metadata accessor for TrendingRecipesTagFeedGroupConfigData();
    (*(v12 + 32))(&v11[*(v13 + 20)], v18, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218C6C8F8(void *a1)
{
  v3 = v1;
  sub_218C6CBC0(0, &qword_27CC10210, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218C6CB6C();
  sub_219BF7B44();
  v11[15] = *v3;
  v11[14] = 0;
  sub_218933D28();
  sub_219BF7834();
  if (!v2)
  {
    type metadata accessor for TrendingRecipesTagFeedGroupConfigData();
    v11[13] = 1;
    sub_219BF1934();
    sub_218933D7C(&qword_280E90810);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218C6CAC4(uint64_t a1)
{
  v2 = sub_218C6CB6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218C6CB00(uint64_t a1)
{
  v2 = sub_218C6CB6C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_218C6CB6C()
{
  result = qword_280E98760[0];
  if (!qword_280E98760[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E98760);
  }

  return result;
}

void sub_218C6CBC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218C6CB6C();
    v7 = a3(a1, &type metadata for TrendingRecipesTagFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218C6CC38()
{
  result = qword_27CC10218;
  if (!qword_27CC10218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10218);
  }

  return result;
}

unint64_t sub_218C6CC90()
{
  result = qword_280E98750;
  if (!qword_280E98750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E98750);
  }

  return result;
}

unint64_t sub_218C6CCE8()
{
  result = qword_280E98758;
  if (!qword_280E98758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E98758);
  }

  return result;
}

void sub_218C6CD50()
{
  if (!qword_280E920D8)
  {
    type metadata accessor for TrendingRecipesTagFeedGroupConfigData();
    sub_218C6CE1C(&qword_280E98740, type metadata accessor for TrendingRecipesTagFeedGroupConfigData);
    sub_218C6CE1C(&qword_280E98748, type metadata accessor for TrendingRecipesTagFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E920D8);
    }
  }
}

uint64_t sub_218C6CE1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for TrendingRecipesTagFeedGroupEmitter()
{
  result = qword_280E9E270;
  if (!qword_280E9E270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218C6CEC4()
{
  sub_218C6CD50();
  if (v0 <= 0x3F)
  {
    type metadata accessor for TrendingRecipesTagFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      sub_2186CFDE4(319, &qword_280E90510);
      if (v2 <= 0x3F)
      {
        sub_2186CFDE4(319, qword_280EBE990);
        if (v3 <= 0x3F)
        {
          sub_2186CFDE4(319, &qword_280EE9E00);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_218C6CFC8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v5 = sub_219BF2034();
  v3[5] = v5;
  v3[6] = *(v5 - 8);
  v6 = swift_task_alloc();
  v3[7] = v6;
  v7 = swift_task_alloc();
  v3[8] = v7;
  *v7 = v3;
  v7[1] = sub_218C6D0D4;

  return sub_218C6DB74(v6, a2);
}

uint64_t sub_218C6D0D4()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_218C6D370, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[10] = v3;
    *v3 = v2;
    v3[1] = sub_218C6D248;
    v4 = v2[7];
    v5 = v2[3];

    return sub_218C6ED4C(v5, v4);
  }
}

uint64_t sub_218C6D248(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = sub_218C6D49C;
  }

  else
  {
    *(v4 + 96) = a1;
    v5 = sub_218C6D3D4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_218C6D370()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218C6D3D4()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_218C6F5F8(v0[12], v0[2]);

  (*(v2 + 8))(v1, v3);
  sub_218A59C84();
  swift_storeEnumTagMultiPayload();

  v4 = v0[1];

  return v4();
}

uint64_t sub_218C6D49C()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_218C6D518@<X0>(unint64_t *a1@<X8>)
{
  sub_218C6CD50();
  v4 = v3;
  v5 = swift_allocBox();
  result = (*(*(v4 - 8) + 16))(v6, v1, v4);
  *a1 = v5 | 0xB000000000000000;
  return result;
}

uint64_t sub_218C6D594@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for TrendingRecipesTagFeedGroupKnobs();
  a2[4] = sub_218C6CE1C(&qword_280EA40E0, type metadata accessor for TrendingRecipesTagFeedGroupKnobs);
  a2[5] = sub_218C6CE1C(&qword_27CC10240, type metadata accessor for TrendingRecipesTagFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);

  return sub_218C6FB34(v2 + v4, boxed_opaque_existential_1);
}

uint64_t sub_218C6D654()
{
  type metadata accessor for TrendingRecipesTagFeedGroupEmitter();
  sub_2189AD5C8();
  v0 = sub_219BEE964();
  sub_2186E465C(0, &qword_280E8B8E0, sub_218A59E00, MEMORY[0x277D84560]);
  sub_218A59E00(0);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C09BA0;
  sub_218C6FAA0();
  swift_allocObject();
  *(v5 + v4) = sub_219BEFB94();
  (*(v3 + 104))(v5 + v4, *MEMORY[0x277D32308], v2);
  sub_2191EDA0C(v5);
  return v0;
}

uint64_t sub_218C6D804()
{
  sub_218C6CD50();

  return sub_219BEDCA4();
}

uint64_t sub_218C6D830@<X0>(uint64_t *a1@<X8>)
{
  sub_2186E465C(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_218C6CD50();

  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_218A426AC(inited + 32);
  sub_218C6FB98(0);
  a1[3] = v5;
  a1[4] = sub_218C6CE1C(&qword_27CC10250, sub_218C6FB98);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_218C6D9A0()
{
  sub_218C6CE1C(&qword_27CC10230, type metadata accessor for TrendingRecipesTagFeedGroupEmitter);

  return sub_219BE2324();
}

uint64_t sub_218C6DB74(uint64_t a1, uint64_t a2)
{
  v3[41] = a2;
  v3[42] = v2;
  v3[40] = a1;
  sub_2186E465C(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], MEMORY[0x277D83D88]);
  v3[43] = swift_task_alloc();
  v4 = sub_219BF3C84();
  v3[44] = v4;
  v3[45] = *(v4 - 8);
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v5 = sub_219BF0BD4();
  v3[48] = v5;
  v3[49] = *(v5 - 8);
  v3[50] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218C6DCFC, 0, 0);
}

uint64_t sub_218C6DCFC()
{
  sub_219BEF164();
  v1 = *(v0 + 96);
  *(v0 + 208) = *(v0 + 80);
  *(v0 + 224) = v1;
  v2 = *(v0 + 128);
  *(v0 + 240) = *(v0 + 112);
  *(v0 + 256) = v2;
  v3 = *(v0 + 32);
  *(v0 + 144) = *(v0 + 16);
  *(v0 + 160) = v3;
  v4 = *(v0 + 64);
  *(v0 + 176) = *(v0 + 48);
  *(v0 + 192) = v4;
  *(v0 + 408) = *(v0 + 176);

  sub_218A410EC(v0 + 144);
  v5 = swift_task_alloc();
  *(v0 + 416) = v5;
  *v5 = v0;
  v5[1] = sub_218C6DE54;

  return MEMORY[0x2821D23D8](v0 + 272);
}

uint64_t sub_218C6DE54()
{
  *(*v1 + 424) = v0;

  if (v0)
  {
    v2 = sub_218C6EBDC;
  }

  else
  {

    v2 = sub_218C6DF70;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_218C6DF70()
{
  v19 = v0;
  v2 = v0[34];
  v1 = v0[35];
  v0[54] = v2;
  v0[55] = v1;
  v4 = v0[36];
  v3 = v0[37];
  v0[56] = v4;
  v0[57] = v3;
  if (v3 < 0)
  {
  }

  else
  {
    sub_2189B6874();
    sub_218F97E88(v2, v1, v4, v18);

    v4 = v18[2];
  }

  v17 = v4;
  v0[58] = v4;
  v6 = v0[49];
  v5 = v0[50];
  v7 = v0[48];

  v8 = type metadata accessor for TrendingRecipesTagFeedGroupEmitter();
  v0[59] = v8;
  type metadata accessor for TrendingRecipesTagFeedGroupKnobs();
  sub_219BEF134();
  sub_219BEF524();
  v9 = *(v6 + 8);
  v9(v5, v7);
  v16 = v0[38];
  v0[60] = v16;
  sub_219BEF134();
  sub_219BEF524();
  v9(v5, v7);
  v10 = v0[39];
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  v11 = v0[42];
  v12 = qword_280F61708;
  v0[61] = qword_280F61708;
  __swift_project_boxed_opaque_existential_1((v11 + *(v8 + 28)), *(v11 + *(v8 + 28) + 24));
  v13 = v12;
  v14 = swift_task_alloc();
  v0[62] = v14;
  *v14 = v0;
  v14[1] = sub_218C6E1D0;

  return sub_21950020C(v17, v16, v10, v13);
}

uint64_t sub_218C6E1D0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[63] = a1;
  v4[64] = a2;
  v4[65] = v2;

  if (v2)
  {
    v5 = sub_218C6E4D8;
  }

  else
  {
    v5 = sub_218C6E2E8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_218C6E2E8()
{
  v1 = (v0[42] + *(v0[59] + 32));
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = swift_task_alloc();
  v0[66] = v4;
  v5 = sub_218C6FA54();
  *v4 = v0;
  v4[1] = sub_218C6E3C0;
  v6 = v0[63];

  return MEMORY[0x2821922A0](v6, v3, v5, v2);
}

uint64_t sub_218C6E3C0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 536) = a1;
  *(v3 + 544) = v1;

  if (v1)
  {
    v4 = sub_218C6EC70;
  }

  else
  {
    v4 = sub_218C6E598;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_218C6E4D8()
{
  v1 = v0[61];
  v2 = v0[57];
  v4 = v0[55];
  v3 = v0[56];
  v5 = v0[54];

  sub_218C6F990(v5, v4, v3, v2);

  v6 = v0[1];

  return v6();
}

size_t sub_218C6E598()
{
  v1 = *(v0 + 536);
  if (v1 >> 62)
  {
    v2 = sub_219BF7214();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = *(v0 + 480);
  if (v2 >= v3)
  {
    sub_2186E465C(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
    sub_219BF3E84();
    *(swift_allocObject() + 16) = xmmword_219C09BA0;
    v10 = MEMORY[0x277D84F90];
    if (v2)
    {
      v39 = MEMORY[0x277D84F90];
      result = sub_218C34A88(0, v2 & ~(v2 >> 63), 0);
      if (v2 < 0)
      {
        __break(1u);
        return result;
      }

      if ((v1 & 0xC000000000000001) != 0)
      {
        v12 = 0;
        v13 = *(v0 + 360);
        v14 = *MEMORY[0x277D34120];
        do
        {
          v15 = *(v0 + 376);
          v16 = *(v0 + 352);
          *v15 = MEMORY[0x21CECE0F0](v12, *(v0 + 536));
          (*(v13 + 104))(v15, v14, v16);
          v18 = *(v39 + 16);
          v17 = *(v39 + 24);
          if (v18 >= v17 >> 1)
          {
            sub_218C34A88(v17 > 1, v18 + 1, 1);
          }

          v19 = *(v0 + 376);
          v20 = *(v0 + 352);
          ++v12;
          *(v39 + 16) = v18 + 1;
          (*(v13 + 32))(v39 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v18, v19, v20);
        }

        while (v2 != v12);
      }

      else
      {
        v21 = *(v0 + 360);
        v22 = (*(v0 + 536) + 32);
        v36 = *(v21 + 104);
        do
        {
          v23 = *v22;
          **(v0 + 368) = *v22;
          v36();
          v24 = *(v39 + 16);
          v25 = *(v39 + 24);
          v26 = v23;
          if (v24 >= v25 >> 1)
          {
            sub_218C34A88(v25 > 1, v24 + 1, 1);
          }

          v27 = *(v0 + 368);
          v28 = *(v0 + 352);
          *(v39 + 16) = v24 + 1;
          (*(v21 + 32))(v39 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v24, v27, v28);
          ++v22;
          --v2;
        }

        while (v2);
      }

      v10 = MEMORY[0x277D84F90];
    }

    else
    {
    }

    v35 = *(v0 + 488);
    v34 = *(v0 + 456);
    v32 = *(v0 + 440);
    v33 = *(v0 + 448);
    v31 = *(v0 + 432);
    v29 = *(v0 + 344);
    sub_218F0B984(v10);
    sub_218F0BA7C(v10);
    sub_218F0BB90(v10);
    sub_219BF3E74();
    v30 = sub_219BEC004();
    (*(*(v30 - 8) + 56))(v29, 1, 1, v30);
    sub_219A95188(v10);
    sub_219A95188(v10);
    sub_219A951A0(v10);
    sub_219A951B8(v10);
    sub_219A952CC(v10);
    sub_219A952E4(v10);
    sub_219A953F8(v10);
    sub_219BF2024();
    sub_218C6F990(v31, v32, v33, v34);

    v9 = *(v0 + 8);
  }

  else
  {
    v4 = *(v0 + 488);
    v38 = *(v0 + 456);
    v5 = *(v0 + 440);
    v37 = *(v0 + 448);
    v6 = *(v0 + 432);

    v7 = sub_219BEEDD4();
    sub_218C6CE1C(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    *v8 = v3;
    v8[1] = v2;
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277D32400], v7);
    swift_willThrow();

    sub_218C6F990(v6, v5, v37, v38);

    v9 = *(v0 + 8);
  }

  return v9();
}

uint64_t sub_218C6EBDC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218C6EC70()
{
  v1 = v0[61];
  v2 = v0[57];
  v4 = v0[55];
  v3 = v0[56];
  v5 = v0[54];

  sub_218C6F990(v5, v4, v3, v2);

  v6 = v0[1];

  return v6();
}

uint64_t sub_218C6ED4C(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = MEMORY[0x277D83D88];
  sub_2186E465C(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  v3[8] = swift_task_alloc();
  sub_2186E465C(0, &qword_280E90150, MEMORY[0x277D33EC8], v4);
  v3[9] = swift_task_alloc();
  sub_2186E465C(0, &qword_280E91A70, sub_2189AD5C8, v4);
  v3[10] = swift_task_alloc();
  v5 = sub_219BF2AB4();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = type metadata accessor for TrendingRecipesTagFeedGroupConfigData();
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218C6EF38, 0, 0);
}

uint64_t sub_218C6EF38()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 56);
  v21 = *(v0 + 64);
  v6 = type metadata accessor for TrendingRecipesTagFeedGroupEmitter();
  v7 = (v5 + *(v6 + 24));
  v23 = v7[4];
  v24 = v7[3];
  __swift_project_boxed_opaque_existential_1(v7, v24);
  sub_218C6CD50();
  v25 = v2;
  sub_219BEDD14();
  v22 = *(v1 + 20);
  *(v0 + 144) = v22;
  v8 = *(v6 + 20);
  sub_2189AD5C8();
  v10 = v9;
  v11 = *(v9 - 8);
  (*(v11 + 16))(v4, v5 + v8, v9);
  (*(v11 + 56))(v4, 0, 1, v10);
  sub_219BEF0B4();
  v12 = *(*(v0 + 16) + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v13 = sub_219BF35D4();
  (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
  *(v0 + 148) = 44;
  sub_218C6F8FC();
  swift_allocObject();

  sub_219BF38D4();
  sub_219BEF0B4();
  sub_218CB8CBC();

  sub_219BEF0B4();
  v14 = *(*(v0 + 32) + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  sub_219BF3914();
  swift_allocObject();
  sub_219BF3904();
  v15 = sub_219BF2774();
  (*(*(v15 - 8) + 56))(v21, 1, 1, v15);
  v16 = qword_280E8D7F8;
  *MEMORY[0x277D30BC0];
  if (v16 != -1)
  {
    swift_once();
  }

  qword_280F61708;
  sub_219BF2A84();
  v17 = swift_task_alloc();
  *(v0 + 128) = v17;
  *v17 = v0;
  v17[1] = sub_218C6F2E0;
  v18 = *(v0 + 104);
  v19 = *(v0 + 48);

  return MEMORY[0x2821921B8](v25 + v22, v19, v18, v24, v23);
}

uint64_t sub_218C6F2E0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(v4 + 136) = v1;

  v6 = *(v4 + 144);
  v7 = *(v4 + 120);
  v8 = *(v4 + 96);
  if (v1)
  {
    (*(v8 + 8))(*(v4 + 104), *(v4 + 88));
    v9 = sub_219BF1934();
    (*(*(v9 - 8) + 8))(v7 + v6, v9);

    return MEMORY[0x2822009F8](sub_218C6F560, 0, 0);
  }

  else
  {
    (*(v8 + 8))();
    v10 = sub_219BF1934();
    (*(*(v10 - 8) + 8))(v7 + v6, v10);

    v11 = *(v5 + 8);

    return v11(a1);
  }
}

uint64_t sub_218C6F560()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218C6F5F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11 = a1;
  v14 = a2;
  sub_2186E465C(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v12 = &v11 - v3;
  v4 = sub_219BEF554();
  v5 = MEMORY[0x28223BE20](v4 - 8);
  MEMORY[0x28223BE20](v5);
  v13 = sub_219BED8D4();
  v6 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C6CD50();

  sub_219BEDCC4();
  sub_219BEDCC4();
  type metadata accessor for TrendingRecipesTagFeedGroupEmitter();
  sub_2189AD5C8();
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  v9 = sub_219BEE5D4();
  (*(*(v9 - 8) + 56))(v12, 1, 1, v9);
  sub_219BED844();
  (*(v6 + 32))(v14, v8, v13);
  type metadata accessor for TagFeedGroup();
  return swift_storeEnumTagMultiPayload();
}

void sub_218C6F8FC()
{
  if (!qword_280E90090)
  {
    type metadata accessor for TagFeedServiceConfig();
    sub_218C6CE1C(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    v0 = sub_219BF38F4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E90090);
    }
  }
}

void sub_218C6F990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 < 0)
  {
  }

  else
  {

    sub_218C6FA10();
  }
}

uint64_t sub_218C6FA10()
{
}

unint64_t sub_218C6FA54()
{
  result = qword_280E8E810;
  if (!qword_280E8E810)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E8E810);
  }

  return result;
}

void sub_218C6FAA0()
{
  if (!qword_280E91240)
  {
    type metadata accessor for TagFeedServiceConfig();
    sub_218C6CE1C(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    v0 = sub_219BEFBA4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E91240);
    }
  }
}

uint64_t sub_218C6FB34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TrendingRecipesTagFeedGroupKnobs();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218C6FBF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v39 = a3;
  v38 = a2;
  v40 = a4;
  sub_218C704EC(0, &qword_27CC0C468, sub_2187148B8);
  MEMORY[0x28223BE20](v5 - 8);
  v35 = &v33 - v6;
  v37 = type metadata accessor for RecipeListRecipeBoxFeedGroupKnobs();
  v7 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C704EC(0, &qword_27CC0E568, type metadata accessor for RecipeListRecipeBoxFeedGroupKnobs);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - v13;
  sub_218C704EC(0, &qword_27CC10258, type metadata accessor for RecipeBoxFeedGroupKnobs);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v33 - v16;
  v18 = type metadata accessor for RecipeBoxFeedGroupKnobs();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C70540(a1, v17, &qword_27CC10258, type metadata accessor for RecipeBoxFeedGroupKnobs);
  v22 = *(v19 + 48);
  if (v22(v17, 1, v18) == 1)
  {
    v34 = a1;
    v23 = v37;
    (*(v7 + 56))(v14, 1, 1, v37);
    sub_218C70540(v14, v12, &qword_27CC0E568, type metadata accessor for RecipeListRecipeBoxFeedGroupKnobs);
    v24 = *(v7 + 48);
    if (v24(v12, 1, v23) == 1)
    {
      sub_2187148B8(0);
      v26 = *(*(v25 - 8) + 56);
      v33 = v22;
      v27 = v35;
      v26(v35, 1, 1, v25);
      v28 = v36;
      v29 = v27;
      v22 = v33;
      sub_2189E3688(v29, v36);
      sub_218C705AC(v14, &qword_27CC0E568, type metadata accessor for RecipeListRecipeBoxFeedGroupKnobs);
      if (v24(v12, 1, v37) != 1)
      {
        sub_218C705AC(v12, &qword_27CC0E568, type metadata accessor for RecipeListRecipeBoxFeedGroupKnobs);
      }
    }

    else
    {
      sub_218C705AC(v14, &qword_27CC0E568, type metadata accessor for RecipeListRecipeBoxFeedGroupKnobs);
      v28 = v36;
      sub_218C70608(v12, v36, type metadata accessor for RecipeListRecipeBoxFeedGroupKnobs);
    }

    sub_218C70608(v28, v21, type metadata accessor for RecipeListRecipeBoxFeedGroupKnobs);
    sub_218C705AC(v34, &qword_27CC10258, type metadata accessor for RecipeBoxFeedGroupKnobs);
    if (v22(v17, 1, v18) != 1)
    {
      sub_218C705AC(v17, &qword_27CC10258, type metadata accessor for RecipeBoxFeedGroupKnobs);
    }
  }

  else
  {
    sub_218C705AC(a1, &qword_27CC10258, type metadata accessor for RecipeBoxFeedGroupKnobs);
    sub_218C70608(v17, v21, type metadata accessor for RecipeBoxFeedGroupKnobs);
  }

  v30 = v40;
  sub_218C70608(v21, v40, type metadata accessor for RecipeBoxFeedGroupKnobs);
  if (v39)
  {
    v31 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v31 = v38 & ~(v38 >> 63);
  }

  result = type metadata accessor for RecipeBoxFeedKnobsConfig();
  *(v30 + *(result + 20)) = v31;
  return result;
}

uint64_t sub_218C70160@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  sub_218C704EC(0, &qword_27CC10258, type metadata accessor for RecipeBoxFeedGroupKnobs);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  sub_218C70670();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218C706CC();
  sub_219BF7B34();
  if (!v2)
  {
    type metadata accessor for RecipeBoxFeedGroupKnobs();
    v18 = 0;
    sub_218714704(&qword_27CC10270, type metadata accessor for RecipeBoxFeedGroupKnobs);
    sub_219BF7674();
    v17 = 1;
    sub_219BF7674();
    sub_218C6FBF4(v6, v15, v16, v14);
    (*(v9 + 8))(v11, v8);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218C7038C@<X0>(char *a1@<X8>)
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

uint64_t sub_218C703EC@<X0>(char *a1@<X8>)
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

uint64_t sub_218C70450(uint64_t a1)
{
  v2 = sub_218C706CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218C7048C(uint64_t a1)
{
  v2 = sub_218C706CC();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_218C704EC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_218C70540(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_218C704EC(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_218C705AC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_218C704EC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218C70608(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_218C70670()
{
  if (!qword_27CC10260)
  {
    sub_218C706CC();
    v0 = sub_219BF7774();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC10260);
    }
  }
}

unint64_t sub_218C706CC()
{
  result = qword_27CC10268;
  if (!qword_27CC10268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10268);
  }

  return result;
}

uint64_t sub_218C70720(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeBoxFeedGroupKnobs();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_218C70798()
{
  result = qword_27CC10278;
  if (!qword_27CC10278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10278);
  }

  return result;
}

unint64_t sub_218C707F0()
{
  result = qword_27CC10280;
  if (!qword_27CC10280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10280);
  }

  return result;
}

unint64_t sub_218C70848()
{
  result = qword_27CC10288[0];
  if (!qword_27CC10288[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CC10288);
  }

  return result;
}

uint64_t sub_218C7089C(uint64_t a1)
{
  v2 = MEMORY[0x277D83D88];
  sub_218747DF4(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v55 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v57 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v5;
  MEMORY[0x28223BE20](v4);
  v61 = v54 - v6;
  sub_218747DF4(0, &unk_280EE9D00, MEMORY[0x277CC9260], v2);
  MEMORY[0x28223BE20](v7 - 8);
  v63 = (v54 - v8);
  v62 = sub_219BDB954();
  v58 = *(v62 - 8);
  v9 = MEMORY[0x28223BE20](v62);
  v54[0] = v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v59 = v54 - v12;
  MEMORY[0x28223BE20](v11);
  v60 = v54 - v13;
  v14 = sub_219BE22B4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_219BE22F4();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = v54 - v23;
  sub_218747DF4(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  v54[1] = a1;
  sub_219BE2594();
  sub_219BE22D4();
  v25 = *(v19 + 8);
  v25(v24, v18);
  sub_219BE22C4();
  v27 = v26;
  (*(v15 + 8))(v17, v14);
  if (!v27)
  {
    return 0;
  }

  v28 = v63;
  sub_219BDB914();

  v29 = v58;
  v30 = v28;
  v31 = v62;
  if ((*(v58 + 48))(v30, 1, v62) == 1)
  {
    sub_218744E6C(v63, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_218747DF4);
    return 0;
  }

  (*(v29 + 32))(v60, v63, v31);
  sub_219BE2594();
  v33 = v54[0];
  sub_219BE22A4();
  v25(v22, v18);
  v34 = v59;
  sub_219BF2464();
  v63 = *(v29 + 8);
  v63(v33, v31);
  v35 = *(v54[2] + 24);
  v36 = swift_allocBox();
  (*(v29 + 16))(v37, v34, v31);
  v58 = v36;
  v38 = sub_219BDFA44();
  v39 = v61;
  (*(*(v38 - 8) + 56))(v61, 1, 1, v38);
  v73 = 0;
  memset(v72, 0, sizeof(v72));
  v71 = 0;
  memset(v70, 0, sizeof(v70));
  v69 = v35;
  sub_2187B15C0(v70, &v65, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  if (*(&v66 + 1))
  {
    sub_21875F93C(&v65, v67);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v40 = qword_280ED32D8;
    v41 = qword_280ED32E0;
    v42 = qword_280ED32E8;

    sub_2188202A8(v41);
    __swift_destroy_boxed_opaque_existential_1(v67);
  }

  else
  {
    sub_218744E6C(&v65, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v40 = qword_280ED32D8;
    v41 = qword_280ED32E0;
    v42 = qword_280ED32E8;

    sub_2188202A8(v41);
  }

  v64 = v36 | 0xA000000000000006;
  v66 = 0u;
  v65 = 0u;
  v43 = v57;
  sub_2187B15C0(v39, v57, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218747DF4);
  sub_2187B15C0(v72, v67, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  v44 = (*(v55 + 80) + 24) & ~*(v55 + 80);
  v45 = (v56 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = (v45 + 47) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  *(v47 + 16) = 0;
  sub_2189B4EAC(v43, v47 + v44);
  v48 = v47 + v45;
  v49 = v67[1];
  *v48 = v67[0];
  *(v48 + 16) = v49;
  *(v48 + 32) = v68;
  v50 = (v47 + v46);
  v51 = (v47 + ((v46 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v50 = 0;
  v50[1] = 0;
  *v51 = v40;
  v51[1] = v41;
  v51[2] = v42;

  sub_2188202A8(v41);
  sub_2186CF94C();
  sub_218C71658(&qword_280EE5A90, 255, sub_2186CF94C);
  sub_219BEB464();

  sub_2187FABEC(v41);
  sub_218744E6C(v70, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  sub_218744E6C(v72, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_218744E6C(v61, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218747DF4);
  v52 = v62;
  v53 = v63;
  v63(v59, v62);
  v53(v60, v52);
  sub_218744E6C(&v65, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);

  return 1;
}

uint64_t sub_218C71564(void *a1)
{
  sub_218747DF4(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v4 = (*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2194DAC9C(a1, *(v1 + 16), v1 + v4, v1 + v5, *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_218C71658(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_218C716D8()
{
  v2 = *v0;
  v1 = v0[1];
  sub_218C71780();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x73676E6974746573;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = v2;
  *(inited + 56) = v1;

  v4 = sub_218831A70(inited);
  swift_setDeallocating();
  sub_218A426AC(inited + 32);
  return v4;
}

void sub_218C71780()
{
  if (!qword_280E8B6A0)
  {
    sub_2188317B0();
    v0 = sub_219BF78A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8B6A0);
    }
  }
}

uint64_t sub_218C717E8()
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

uint64_t sub_218C718A0(uint64_t *a1)
{
  v2 = v1;
  v3 = *v1;
  sub_218C7199C(*a1);
  (*(*(v3 + 88) + 40))();

  sub_2189B099C();
  sub_218C72074();
  sub_219BE6EF4();
  v4 = *(v2 + *(*v2 + 120));
  sub_219274E98(v4, *(v4 + 32));
}

uint64_t sub_218C7199C(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v2 = off_282AA0C88;
    type metadata accessor for FollowingDislikedDataManager();
    v1 = v2();
  }

  return v1;
}

uint64_t sub_218C71A24()
{
  v0 = sub_219BE91F4();
  v28 = *(v0 - 8);
  v29 = v0;
  MEMORY[0x28223BE20](v0);
  v27 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_219BE89F4();
  v30 = *(v2 - 8);
  v31 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C72018();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE7634();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE9064();
  v14 = (*(v11 + 88))(v13, v10);
  v15 = *MEMORY[0x277D6DA70];
  (*(v11 + 8))(v13, v10);
  if (v14 != v15)
  {
    return sub_219BE9074();
  }

  sub_219BE9054();
  sub_219BE5FC4();
  (*(v7 + 8))(v9, v6);
  v16 = v33;
  sub_219BEAEF4();
  v17 = *(*((v16 & 0x7FFFFFFFFFFFFFFFLL) + 0x18) + 16);
  swift_unknownObjectRetain();
  sub_21892DE98();
  v32 = v17;
  v19 = v30;
  v18 = v31;
  (*(v30 + 104))(v4, *MEMORY[0x277D6E0F8], v31);
  v33 = 0u;
  v34 = 0u;
  v35 = 1;
  sub_219BE89D4();

  (*(v19 + 8))(v4, v18);
  swift_unknownObjectRelease();
  v20 = *MEMORY[0x277D6E438];
  v22 = v27;
  v21 = v28;
  v23 = *(v28 + 104);
  v24 = v29;
  v23(v27, v20, v29);
  sub_219BE9034();
  v25 = *(v21 + 8);
  v25(v22, v24);
  v23(v22, v20, v24);
  sub_219BE9204();

  return (v25)(v22, v24);
}

uint64_t *sub_218C71EB4()
{
  v1 = *v0;
  sub_218774F78((v0 + 2));

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_218C71F74()
{
  sub_218C71EB4();

  return swift_deallocClassInstance();
}

void sub_218C72018()
{
  if (!qword_27CC0F960)
  {
    sub_218952904();
    v0 = sub_219BE5FE4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0F960);
    }
  }
}

unint64_t sub_218C72074()
{
  result = qword_27CC10310;
  if (!qword_27CC10310)
  {
    sub_2189B099C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10310);
  }

  return result;
}

uint64_t sub_218C720CC(uint64_t result, char a2)
{
  if (a2 == 2)
  {
    (*(*(*v2 + 88) + 48))(result, *(*v2 + 80));
    sub_2189B099C();
    sub_218C72074();
    sub_219BE6EF4();
  }

  return result;
}

uint64_t sub_218C72188(uint64_t a1, uint64_t a2)
{
  v26 = *v2;
  v5 = sub_219BE61B4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v27 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C72544();
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 56);
  v13 = *(v6 + 16);
  v13(v11, a1, v5);
  v13(&v11[v12], a2, v5);
  v14 = *(v6 + 88);
  v15 = v14(&v11[v12], v5);
  v16 = v15;
  v17 = *MEMORY[0x277D6D518];
  if (v15 == *MEMORY[0x277D6D518])
  {
    v18 = v14(v11, v5);
    v19 = *MEMORY[0x277D6D510];
    if (v18 == *MEMORY[0x277D6D510])
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        v20 = v27;
        (*(v6 + 104))(v27, v16, v5);
        sub_219268C9C(v20);
        swift_unknownObjectRelease();
        v21 = *(v6 + 8);
        v21(v20, v5);
      }

      else
      {
        v21 = *(v6 + 8);
      }

      return (v21)(&v11[v12], v5);
    }

    goto LABEL_8;
  }

  v19 = *MEMORY[0x277D6D510];
  if (v15 != *MEMORY[0x277D6D510])
  {
LABEL_8:
    v24 = v14(v11, v5);
    if (v24 == *MEMORY[0x277D6D520] || v24 == v17 || v24 == v19)
    {
      return (*(v6 + 8))(&v11[v12], v5);
    }

    result = sub_219BF7514();
    __break(1u);
    return result;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v22 = v27;
    (*(v6 + 104))(v27, v16, v5);
    sub_219268C9C(v22);
    swift_unknownObjectRelease();
    v23 = *(v6 + 8);
    v23(v22, v5);
  }

  else
  {
    v23 = *(v6 + 8);
  }

  v23(&v11[v12], v5);
  return (v23)(v11, v5);
}

void sub_218C72544()
{
  if (!qword_27CC10318)
  {
    sub_219BE61B4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC10318);
    }
  }
}

unint64_t sub_218C725BC()
{
  result = qword_27CC10320;
  if (!qword_27CC10320)
  {
    sub_218C72614();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10320);
  }

  return result;
}

void sub_218C72614()
{
  if (!qword_27CC10328)
  {
    v0 = sub_219BF5B14();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC10328);
    }
  }
}

uint64_t sub_218C72664()
{
  sub_219BF7AA4();
  sub_219BF5524();
  return sub_219BF7AE4();
}

uint64_t sub_218C726C0()
{
  sub_219BF7AA4();
  sub_219BF5524();
  return sub_219BF7AE4();
}

uint64_t sub_218C72718@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_219BF7614();

  *a1 = v2 != 0;
  return result;
}

unint64_t sub_218C72830()
{
  result = qword_280EBC250;
  if (!qword_280EBC250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBC250);
  }

  return result;
}

unint64_t sub_218C72884()
{
  result = qword_27CC10330;
  if (!qword_27CC10330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10330);
  }

  return result;
}

uint64_t sub_218C728E8()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_280F62308);
  __swift_project_value_buffer(v0, qword_280F62308);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  sub_218C73534();
  v5 = sub_219BF1564();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_219C09BA0;
  (*(v6 + 104))(v8 + v7, *MEMORY[0x277D333B0], v5);
  return sub_219BF1514();
}

uint64_t sub_218C72B3C()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_280F622F0);
  __swift_project_value_buffer(v0, qword_280F622F0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  sub_218C73534();
  v5 = sub_219BF1564();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_219C09BA0;
  (*(v6 + 104))(v8 + v7, *MEMORY[0x277D333B0], v5);
  return sub_219BF1514();
}

uint64_t sub_218C72D8C()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD84B0);
  __swift_project_value_buffer(v0, qword_27CCD84B0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  sub_218C73534();
  v5 = sub_219BF1564();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_219C09BA0;
  (*(v6 + 104))(v8 + v7, *MEMORY[0x277D333B0], v5);
  return sub_219BF1514();
}

uint64_t sub_218C72FDC()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD84C8);
  __swift_project_value_buffer(v0, qword_27CCD84C8);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  sub_218C73534();
  v5 = sub_219BF1564();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_219C09BA0;
  (*(v6 + 104))(v8 + v7, *MEMORY[0x277D333B0], v5);
  return sub_219BF1514();
}

uint64_t sub_218C7322C()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD84E0);
  __swift_project_value_buffer(v0, qword_27CCD84E0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  sub_218C73534();
  v5 = sub_219BF1564();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_219C09BA0;
  (*(v6 + 104))(v8 + v7, *MEMORY[0x277D333B0], v5);
  return sub_219BF1514();
}

void sub_218C73534()
{
  if (!qword_280E8B858)
  {
    sub_219BF1564();
    v0 = sub_219BF78A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8B858);
    }
  }
}

uint64_t type metadata accessor for TopResultSearchFeedGroup()
{
  result = qword_280EBFE08;
  if (!qword_280EBFE08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218C73600()
{
  result = sub_219BED8D4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_218C73690(uint64_t a1)
{
  v2 = sub_218C737A0(&qword_27CC10358);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_218C737A0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TopResultSearchFeedGroup();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_218C737E4(char a1)
{
  v2 = v1;
  isEscapingClosureAtFileLocation = sub_219BE8DD4();
  v5 = *(isEscapingClosureAtFileLocation - 8);
  MEMORY[0x28223BE20](isEscapingClosureAtFileLocation);
  v7 = (aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    sub_219BE20E4();
    v8 = (*(v5 + 88))(v7, isEscapingClosureAtFileLocation);
    if (v8 == *MEMORY[0x277D6E328])
    {
      (*(v5 + 96))(v7, isEscapingClosureAtFileLocation);
      [*(v2 + 136) solveForTime_];
      v10 = v9;
      v11 = *(v2 + 112);
      v12 = *(v2 + 120);
      __swift_project_boxed_opaque_existential_1((v2 + 88), v11);
      v13 = (*(v12 + 8))(v11, v12);
      [v13 setContentAlpha_];

      return;
    }
  }

  else
  {
    v14 = objc_opt_self();
    v15 = swift_allocObject();
    swift_weakInit();
    v2 = swift_allocObject();
    *(v2 + 16) = sub_218C74694;
    *(v2 + 24) = v15;
    aBlock[4] = sub_218807CE0;
    v24 = v2;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_218807CE4;
    aBlock[3] = &block_descriptor_12_1;
    v7 = _Block_copy(aBlock);
    v5 = v24;

    [v14 performWithoutAnimation_];
    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  if (v8 == *MEMORY[0x277D6E318] || v8 == *MEMORY[0x277D6E320])
  {
    v17 = *(v2 + 112);
    v18 = *(v2 + 120);
    __swift_project_boxed_opaque_existential_1((v2 + 88), v17);
    v19 = (*(v18 + 8))(v17, v18);
    sub_218ED42D0(v19);
  }

  else if (v8 == *MEMORY[0x277D6E310])
  {
    v20 = *(v2 + 112);
    v21 = *(v2 + 120);
    __swift_project_boxed_opaque_existential_1((v2 + 88), v20);
    v22 = (*(v21 + 8))(v20, v21);
    sub_218ED448C(v22);
  }

  else
  {
    (*(v5 + 8))(v7, isEscapingClosureAtFileLocation);
  }
}