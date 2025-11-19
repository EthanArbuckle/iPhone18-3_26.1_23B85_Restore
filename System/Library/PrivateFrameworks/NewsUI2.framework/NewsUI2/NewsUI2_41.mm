size_t sub_218B64F00(unint64_t a1, char a2, void (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(unint64_t))
{
  v27 = a4;
  v28 = a3;
  v8 = type metadata accessor for Shortcut();
  v30 = *(v8 - 8);
  v31 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = (&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    return a5(a1);
  }

  v32 = MEMORY[0x277D84F90];
  v12 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_34:
    v13 = sub_219BF7214();
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v15 = 0;
    v16 = &selRef_boldSystemFontOfSize_;
    v29 = v12;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x21CECE0F0](v15, a1);
        v18 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v15 >= *(v12 + 16))
        {
          __break(1u);
          goto LABEL_34;
        }

        v17 = *(a1 + 8 * v15 + 32);

        v18 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
LABEL_18:
          __break(1u);
LABEL_19:
          v19 = v32;
          v14 = MEMORY[0x277D84F90];
          if ((v32 & 0x8000000000000000) == 0)
          {
            goto LABEL_22;
          }

          goto LABEL_35;
        }
      }

      if (([*(v17 + 16) isDeprecated] & 1) == 0 && (objc_msgSend(*(v17 + 16), v16[323]) == 1 || objc_msgSend(*(v17 + 16), v16[323]) == 3))
      {
        sub_219BF73D4();
        sub_219BF7414();
        v16 = &selRef_boldSystemFontOfSize_;
        sub_219BF7424();
        sub_219BF73E4();
        v12 = v29;
      }

      else
      {
      }

      ++v15;
      if (v18 == v13)
      {
        goto LABEL_19;
      }
    }
  }

  v19 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
    goto LABEL_35;
  }

LABEL_22:
  if ((v19 & 0x4000000000000000) == 0)
  {
    v20 = *(v19 + 16);
    if (v20)
    {
      goto LABEL_24;
    }

LABEL_36:

    v22 = MEMORY[0x277D84F90];
LABEL_37:
    v28(v22);
  }

LABEL_35:
  v20 = sub_219BF7214();
  if (!v20)
  {
    goto LABEL_36;
  }

LABEL_24:
  v32 = v14;
  result = sub_218C34348(0, v20 & ~(v20 >> 63), 0);
  if ((v20 & 0x8000000000000000) == 0)
  {
    v21 = 0;
    v22 = v32;
    do
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x21CECE0F0](v21, v19);
      }

      else
      {
        v23 = *(v19 + 8 * v21 + 32);
      }

      v24 = *(v23 + 16);
      swift_unknownObjectRetain();

      *v10 = v24;
      swift_storeEnumTagMultiPayload();
      v32 = v22;
      v26 = *(v22 + 16);
      v25 = *(v22 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_218C34348(v25 > 1, v26 + 1, 1);
        v22 = v32;
      }

      ++v21;
      *(v22 + 16) = v26 + 1;
      sub_218B6BC70(v10, v22 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v26, type metadata accessor for Shortcut);
    }

    while (v20 != v21);

    goto LABEL_37;
  }

  __break(1u);
  return result;
}

uint64_t sub_218B6528C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_218B6B09C(0, &qword_27CC0C6D8, &qword_280E8E430, &protocolRef_FCPuzzleProviding, MEMORY[0x277D6CF30]);
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v7 = a1;

  return sub_219BE2F54();
}

uint64_t sub_218B65350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_218B65374, 0, 0);
}

uint64_t sub_218B65374()
{
  v1 = (v0[3] + OBJC_IVAR____TtC7NewsUI216ShortcutsService_puzzleService);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_2189F592C;
  v6 = v0[4];
  v5 = v0[5];

  return MEMORY[0x282192258](v6, v5, v2, v3);
}

uint64_t sub_218B6543C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  v40 = a5;
  v37 = a2;
  v42 = a1;
  v7 = type metadata accessor for CuratedShortcut.Identifier(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = type metadata accessor for CuratedShortcut(0);
  MEMORY[0x28223BE20](v38);
  v39 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ShortcutCategory();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v37 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v37 - v19;
  v22 = *a4;
  v21 = a4[1];
  if (*(a3 + 16) && (v42 = *v42, v23 = sub_21870F700(v22, v21), (v24 & 1) != 0))
  {
    sub_218B6BAA4(*(a3 + 56) + *(v12 + 72) * v23, v18, type metadata accessor for ShortcutCategory);
    sub_218B6BC70(v18, v20, type metadata accessor for ShortcutCategory);
    v25 = v39;
    sub_218B6BAA4(a4, v39, type metadata accessor for CuratedShortcut);
    sub_218B6BAA4(v20, v15, type metadata accessor for ShortcutCategory);
    sub_218718690(v37 + OBJC_IVAR____TtC7NewsUI216ShortcutsService_puzzleAccessProvider, v41);
    v26 = v40;
    sub_218B6BAA4(v15, v40, type metadata accessor for ShortcutCategory);
    v27 = v42;
    swift_unknownObjectRetain();
    sub_21993568C(v9);
    v28 = sub_21993639C();
    v30 = v29;
    sub_218B6BC10(v9, type metadata accessor for CuratedShortcut.Identifier);
    v31 = _s8ResolvedVMa();
    v32 = (v26 + *(v31 + 24));
    *v32 = v28;
    v32[1] = v30;
    v33 = (v26 + *(v31 + 20));
    sub_218718690(v41, (v33 + 1));
    v34 = _s6PuzzleVMa(0);
    sub_21992EE60(v33 + *(v34 + 24));
    __swift_destroy_boxed_opaque_existential_1(v41);
    sub_218B6BC10(v15, type metadata accessor for ShortcutCategory);
    sub_218B6BC10(v25, type metadata accessor for CuratedShortcut);
    sub_218B6BC10(v20, type metadata accessor for ShortcutCategory);
    *v33 = v27;
    _s13ResolvedModelOMa();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for Shortcut();
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_218B69DE0();
    swift_allocError();
    *v36 = v22;
    *(v36 + 8) = v21;
    *(v36 + 16) = 2;
    swift_willThrow();
  }
}

uint64_t sub_218B65804(void *a1, uint64_t a2, uint64_t a3)
{
  sub_218B6AF64();
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v7 = a1;

  return sub_219BE2F54();
}

uint64_t sub_218B6589C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_218B658C0, 0, 0);
}

uint64_t sub_218B658C0()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = (v0[3] + OBJC_IVAR____TtC7NewsUI216ShortcutsService_puzzleService);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  sub_218B6C010(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v6 = swift_allocObject();
  v0[6] = v6;
  *(v6 + 16) = xmmword_219C09BA0;
  *(v6 + 32) = v2;
  *(v6 + 40) = v1;

  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_218B659EC;

  return MEMORY[0x282192240](v6, v4, v5);
}

uint64_t sub_218B659EC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_218B65B40;
  }

  else
  {

    *(v4 + 72) = a1;
    v5 = sub_218B65B1C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_218B65B40()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218B65BA4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t *a5@<X5>, uint64_t a6@<X8>)
{
  v46 = a6;
  v47 = a2;
  v10 = type metadata accessor for CuratedShortcut.Identifier(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (&v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = type metadata accessor for CuratedShortcut(0);
  MEMORY[0x28223BE20](v45);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ShortcutCategory() - 8;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v44 - v20;
  MEMORY[0x28223BE20](v19);
  v24 = &v44 - v23;
  v25 = *a1;
  if (v25 >> 62)
  {
    v44 = v14;
    v42 = v22;
    result = sub_219BF7214();
    v22 = v42;
    v14 = v44;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_11:
    sub_218B69DE0();
    swift_allocError();
    *v43 = v47;
    *(v43 + 8) = a3;
    *(v43 + 16) = 1;
    swift_willThrow();
  }

  result = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_3:
  v44 = v14;
  if ((v25 & 0xC000000000000001) != 0)
  {
    v27 = v22;
    v47 = MEMORY[0x21CECE0F0](0, v25);
  }

  else
  {
    if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v27 = v22;
    v47 = *(v25 + 32);
    swift_unknownObjectRetain();
  }

  v29 = *a5;
  v28 = a5[1];
  if (*(a4 + 16) && (v30 = sub_21870F700(*a5, a5[1]), (v31 & 1) != 0))
  {
    sub_218B6BAA4(*(a4 + 56) + *(v27 + 72) * v30, v21, type metadata accessor for ShortcutCategory);
    sub_218B6BC70(v21, v24, type metadata accessor for ShortcutCategory);
    v32 = v44;
    sub_218B6BAA4(a5, v44, type metadata accessor for CuratedShortcut);
    sub_218B6BAA4(v24, v18, type metadata accessor for ShortcutCategory);
    v33 = v46;
    sub_218B6BAA4(v18, v46, type metadata accessor for ShortcutCategory);
    sub_21993568C(v12);
    v34 = sub_21993639C();
    v36 = v35;
    sub_218B6BC10(v12, type metadata accessor for CuratedShortcut.Identifier);
    v37 = _s8ResolvedVMa();
    v38 = (v33 + *(v37 + 24));
    *v38 = v34;
    v38[1] = v36;
    v39 = (v33 + *(v37 + 20));
    v40 = _s10PuzzleFeedVMa(0);
    sub_21992EE60(v39 + *(v40 + 20));
    sub_218B6BC10(v18, type metadata accessor for ShortcutCategory);
    sub_218B6BC10(v32, type metadata accessor for CuratedShortcut);
    sub_218B6BC10(v24, type metadata accessor for ShortcutCategory);
    *v39 = v47;
    _s13ResolvedModelOMa();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for Shortcut();
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_218B69DE0();
    swift_allocError();
    *v41 = v29;
    *(v41 + 8) = v28;
    *(v41 + 16) = 2;
    swift_willThrow();

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_218B65FF8@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v47 = a4;
  v48 = a1;
  v6 = type metadata accessor for CuratedShortcut.Identifier(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for CuratedShortcut(0);
  MEMORY[0x28223BE20](v46);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ShortcutCategory() - 8;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v15);
  v19 = &v45 - v18;
  v20 = *a3;
  v21 = a3[1];
  if (*(a2 + 16) && (v45 = *v48, v48 = v17, v22 = v8, v23 = v10, v24 = v16, v25 = sub_21870F700(v20, v21), v26 = v24, v27 = v23, v28 = v22, v29 = v14, v30 = v19, v31 = a3, v32 = v48, (v33 & 1) != 0))
  {
    sub_218B6BAA4(*(a2 + 56) + *(v26 + 72) * v25, v48, type metadata accessor for ShortcutCategory);
    sub_218B6BC70(v32, v30, type metadata accessor for ShortcutCategory);
    sub_218B6BAA4(v31, v27, type metadata accessor for CuratedShortcut);
    sub_218B6BAA4(v30, v29, type metadata accessor for ShortcutCategory);
    v34 = v47;
    sub_218B6BAA4(v29, v47, type metadata accessor for ShortcutCategory);
    v35 = v45;
    swift_unknownObjectRetain();
    sub_21993568C(v28);
    v36 = sub_21993639C();
    v38 = v37;
    sub_218B6BC10(v28, type metadata accessor for CuratedShortcut.Identifier);
    v39 = _s8ResolvedVMa();
    v40 = (v34 + *(v39 + 24));
    *v40 = v36;
    v40[1] = v38;
    v41 = (v34 + *(v39 + 20));
    v42 = _s11SportsEventVMa();
    sub_21992EE60(v41 + *(v42 + 20));
    sub_218B6BC10(v29, type metadata accessor for ShortcutCategory);
    sub_218B6BC10(v27, type metadata accessor for CuratedShortcut);
    sub_218B6BC10(v30, type metadata accessor for ShortcutCategory);
    *v41 = v35;
    _s13ResolvedModelOMa();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for Shortcut();
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_218B69DE0();
    swift_allocError();
    *v44 = v20;
    *(v44 + 8) = v21;
    *(v44 + 16) = 2;
    swift_willThrow();
  }
}

uint64_t sub_218B663B4(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_218C811C0(v2);
  }

  v3 = v2[2];
  v19[0] = (v2 + 4);
  v19[1] = v3;
  result = sub_219BF7884();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = (v2 + 5);
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12[8];
          if (v12[2] >= v13)
          {
            break;
          }

          v14 = *(v12 + 2);
          v15 = *(v12 + 3);
          *(v12 + 1) = *(v12 - 2);
          *(v12 + 4) = *(v12 + 1);
          *(v12 - 1) = v14;
          *v12 = v15;
          v12[2] = v13;
          v12 -= 6;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 6;
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
      sub_218B6A62C();
      v7 = sub_219BF5A34();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v17[0] = v7 + 32;
    v17[1] = v6;
    sub_218B67AC8(v17, v18, v19, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

void sub_218B66540(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_218B665D4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 < 1)
    {
      if (v5 != a3)
      {
LABEL_7:
        sub_2186C6148(0, a5);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_218B6C010(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v11 = v10 - 32;
      if (v10 < 32)
      {
        v11 = v10 - 25;
      }

      v9[2] = v6;
      v9[3] = (2 * (v11 >> 3)) | 1;
      if (v5 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_218B666EC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_218B6C010(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_218B66808(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void))
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 < 1)
    {
      if (v5 != a3)
      {
LABEL_7:
        a5(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_218B6C010(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v11 = v10 - 32;
      if (v10 < 32)
      {
        v11 = v10 - 25;
      }

      v9[2] = v6;
      v9[3] = (2 * (v11 >> 3)) | 1;
      if (v5 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_218B66968(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_218B6C010(0, &unk_280E8BCE0, &type metadata for LocalNewsTodayFeedGroupConfigData.Channel, MEMORY[0x277D84560]);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_218B66A9C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_218B6C010(0, &qword_280E8B9B8, &type metadata for HighlightsTagFeedGroupSection, MEMORY[0x277D84560]);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_218B66BCC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 16 * a3), 16 * v5);
        return;
      }
    }

    else
    {
      sub_218B6C010(0, &qword_280E8BAF0, &type metadata for HeroSelectionStrategy, MEMORY[0x277D84560]);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 17;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_218B66CC8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 < 1)
    {
      if (v5 != a3)
      {
LABEL_7:
        sub_2186D6710(0, a5);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_218B6C010(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v11 = v10 - 32;
      if (v10 < 32)
      {
        v11 = v10 - 25;
      }

      v9[2] = v6;
      v9[3] = (2 * (v11 >> 3)) | 1;
      if (v5 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

int64_t sub_218B66DF4(void *a1)
{
  sub_218B6C010(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v2);
  v4 = result - 32;
  if (result < 32)
  {
    v4 = result - 25;
  }

  v2[2] = 1;
  v2[3] = (2 * (v4 >> 3)) | 1;
  if (a1)
  {
    v2[4] = a1;
    v5 = a1;
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_218B66E9C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_218B6C010(0, &unk_280E8BB90, &type metadata for SportsTopicCluster, MEMORY[0x277D84560]);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 1;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 5);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_218B66F8C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_218B6C010(0, &unk_280E8BAC0, &type metadata for SportsSectionHeadline, MEMORY[0x277D84560]);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 24);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_218B670D0(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_2194B7E58(v2, 0);

    v1 = sub_218B683AC(&v5, (v3 + 32), v2, v1);

    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = sub_219BF7214();
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

void sub_218B6722C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_218B6C010(0, &unk_27CC0E3C0, &type metadata for ChannelPickerSectionItem, MEMORY[0x277D84560]);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 176);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

char *sub_218B67514(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t *, char *, uint64_t, uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v6 = sub_219BF7214();
  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    a2 = (a2)(v6, 0);

    a3 = a3(&v8, a2 + 32, v6, a1);
    sub_21892DE98();
    if (a3 == v6)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v6 = *(a1 + 16);
    if (!v6)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return a2;
}

void sub_218B67600(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5, uint64_t a6)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v7)
  {
    if (v7 < 1)
    {
      if (v6 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_218B6C010(0, a5, a6, MEMORY[0x277D84560]);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v11 = v10 - 32;
      if (v10 < 32)
      {
        v11 = v10 - 17;
      }

      v9[2] = v7;
      v9[3] = 2 * (v11 >> 4);
      if (v6 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_218B67714(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void), uint64_t (*a6)(void))
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v7)
  {
    if (v7 < 1)
    {
      if (v6 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      a5(0);
      v10 = *(a6(0) - 8);
      v11 = *(v10 + 72);
      v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v13 = swift_allocObject();
      v14 = _swift_stdlib_malloc_size(v13);
      if (!v11)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v14 - v12 == 0x8000000000000000 && v11 == -1)
      {
        goto LABEL_16;
      }

      v13[2] = v7;
      v13[3] = 2 * ((v14 - v12) / v11);
      if (v6 != a3)
      {
LABEL_10:
        a6(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

size_t sub_218B678B8(uint64_t *a1)
{
  sub_218B6B97C();
  MEMORY[0x28223BE20](v2);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B6BA10();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v16[0] = a1[1];
  v16[1] = v8;
  sub_21880B928();
  sub_218B6BE94(&qword_280EE3730, sub_21880B928);
  v9 = sub_219BF5E74();
  if (!v9)
  {
    return MEMORY[0x277D84F90];
  }

  v10 = v9;
  v11 = sub_21947D4B8(v9, 0);
  sub_2187FAD00();
  v13 = (*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80);
  sub_218B6BAA4(a1, v4, sub_218B6B97C);
  v14 = sub_218B6891C(v7, v11 + v13, v10);
  sub_218B6BC10(v7, sub_218B6BA10);
  if (v14 != v10)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v11;
}

uint64_t sub_218B67AC8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v93 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_88:
    v94 = *v93;
    if (!*v93)
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

    v85 = (v7 + 16);
    v86 = *(v7 + 16);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = (v7 + 16 * v86);
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_218B68080((*a3 + 24 * *v87), (*a3 + 24 * *v89), *a3 + 24 * v90, v94);
        if (v4)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_114;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_115;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_116;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v92 = a4;
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
      v14 = (v11 + 40);
      while (v5 != v13)
      {
        v15 = *v14;
        v16 = v14[6];
        v14 += 6;
        ++v13;
        if (v12 < v9 == v15 >= v16)
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
        v17 = 24 * v6 - 8;
        v18 = v6;
        v19 = v8;
        do
        {
          if (v19 != --v18)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = (v26 + v10);
            v21 = (v26 + v17);
            v22 = *v20;
            v23 = v20[1];
            v24 = *(v20 + 4);
            v25 = *v21;
            *v20 = *(v21 - 1);
            v20[2] = v25;
            *(v21 - 2) = v22;
            *(v21 - 1) = v23;
            *v21 = v24;
          }

          ++v19;
          v17 -= 24;
          v10 += 24;
        }

        while (v19 < v18);
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

    v38 = *(v7 + 16);
    v37 = *(v7 + 24);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      result = sub_2191F6B60((v37 > 1), v38 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v39;
    v40 = v7 + 32;
    v41 = (v7 + 32 + 16 * v38);
    *v41 = v8;
    v41[1] = v6;
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_127;
    }

    if (v38)
    {
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = *(v7 + 32);
          v44 = *(v7 + 40);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_57:
          if (v46)
          {
            goto LABEL_104;
          }

          v59 = (v7 + 16 * v39);
          v61 = *v59;
          v60 = v59[1];
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = (v40 + 16 * v42);
          v67 = *v65;
          v66 = v65[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_111;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v39 < 2)
        {
          goto LABEL_112;
        }

        v69 = (v7 + 16 * v39);
        v71 = *v69;
        v70 = v69[1];
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_72:
        if (v64)
        {
          goto LABEL_108;
        }

        v72 = (v40 + 16 * v42);
        v74 = *v72;
        v73 = v72[1];
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_110;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v42 - 1 >= v39)
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

        v80 = (v40 + 16 * (v42 - 1));
        v81 = *v80;
        v82 = (v40 + 16 * v42);
        v83 = v82[1];
        sub_218B68080((*a3 + 24 * *v80), (*a3 + 24 * *v82), *a3 + 24 * v83, v94);
        if (v4)
        {
        }

        if (v83 < v81)
        {
          goto LABEL_99;
        }

        if (v42 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v80 = v81;
        v80[1] = v83;
        v84 = *(v7 + 16);
        if (v42 >= v84)
        {
          goto LABEL_101;
        }

        v39 = v84 - 1;
        result = memmove((v40 + 16 * v42), v82 + 2, 16 * (v84 - 1 - v42));
        *(v7 + 16) = v84 - 1;
        if (v84 <= 2)
        {
          goto LABEL_3;
        }
      }

      v47 = v40 + 16 * v39;
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_102;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_103;
      }

      v54 = (v7 + 16 * v39);
      v56 = *v54;
      v55 = v54[1];
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_105;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_107;
      }

      if (v58 >= v50)
      {
        v76 = (v40 + 16 * v42);
        v78 = *v76;
        v77 = v76[1];
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_113;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v92;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 24 * v6 - 24;
  v29 = v8 - v6;
LABEL_30:
  v30 = v29;
  v31 = v28;
  while (1)
  {
    v32 = *(v31 + 40);
    if (*(v31 + 16) >= v32)
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

    v34 = *(v31 + 24);
    v33 = *(v31 + 32);
    v35 = *(v31 + 16);
    *(v31 + 24) = *v31;
    *(v31 + 40) = v35;
    *v31 = v34;
    *(v31 + 8) = v33;
    *(v31 + 16) = v32;
    v31 -= 24;
    if (__CFADD__(v30++, 1))
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

uint64_t sub_218B68080(float *__dst, float *__src, unint64_t a3, float *a4)
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
    v12 = 6 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12 * 4);
    }

    v13 = &v4[v12];
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

      if (v4[4] < v6[4])
      {
        break;
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 6;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 6;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v15 = v7 == v6;
    v6 += 6;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v16 = *v14;
    *(v7 + 2) = *(v14 + 2);
    *v7 = v16;
    goto LABEL_9;
  }

  v17 = 6 * v11;
  if (a4 != __src || &__src[v17] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v13 = &v4[v17];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v5 -= 24;
    do
    {
      v18 = (v5 + 24);
      if (*(v6 - 2) < *(v13 - 2))
      {
        v21 = v6 - 6;
        if (v18 != v6)
        {
          v22 = *v21;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v22;
        }

        if (v13 <= v4 || (v6 -= 6, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v19 = v13 - 6;
      if (v18 != v13)
      {
        v20 = *v19;
        *(v5 + 16) = *(v13 - 1);
        *v5 = v20;
      }

      v5 -= 24;
      v13 -= 6;
    }

    while (v19 > v4);
    v13 = v19;
  }

LABEL_31:
  v23 = 6 * ((v13 - v4) / 24);
  if (v6 != v4 || v6 >= &v4[v23])
  {
    memmove(v6, v4, v23 * 4);
  }

  return 1;
}

void *sub_218B682AC(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v8 = result;
  v9 = a7 >> 1;
  if (!a2)
  {
LABEL_11:
    v10 = 0;
    goto LABEL_14;
  }

  v10 = a3;
  if (!a3)
  {
LABEL_14:
    *v8 = a4;
    v8[1] = a5;
    v8[2] = a6;
    v8[3] = a7;
    v8[4] = v9;
    return v10;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v19 = a4;
    v20 = a5;
    v21 = a7;
    v12 = 0;
    v13 = v9 - a6;
    v14 = a3 - 1;
    v15 = a5 - 8;
    v18 = a7 >> 1;
    while (1)
    {
      if (v13 == v12)
      {
        v9 = a6;
        v10 = v13;
        goto LABEL_13;
      }

      if (v9 <= a6)
      {
        break;
      }

      v16 = *(v15 + 8 * v9);
      *(a2 + 8 * v12) = v16;
      if (v14 == v12)
      {
        v17 = v16;
        v9 = ~v12 + v18;
LABEL_13:
        a5 = v20;
        a7 = v21;
        a4 = v19;
        goto LABEL_14;
      }

      result = v16;
      ++v12;
      --v9;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218B683AC(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v7 = result;
  if (!(a4 >> 62))
  {
    v8 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_24:
    v10 = v8;
    v8 = 0;
    goto LABEL_25;
  }

LABEL_23:
  result = sub_219BF7214();
  v8 = result;
  if (!v6)
  {
    goto LABEL_24;
  }

LABEL_3:
  if (!a3)
  {
    v10 = v8;
    v8 = 0;
LABEL_25:
    *v7 = a4;
    v7[1] = v10;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = 1;
    v10 = v8;
    while (v10)
    {
      v11 = __OFSUB__(v10--, 1);
      if (v11)
      {
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      if ((a4 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x21CECE0F0](v10, a4);
      }

      else
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_20;
        }

        if (v10 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }
      }

      *v6 = v12;
      if (a3 == v9)
      {
        v8 = a3;
        goto LABEL_25;
      }

      ++v6;
      v11 = __OFADD__(v9++, 1);
      if (v11)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

  __break(1u);
  return result;
}

void sub_218B684D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  if (qword_280EE5F18 != -1)
  {
    swift_once();
  }

  v8 = sub_219BE5434();
  __swift_project_value_buffer(v8, qword_280F62538);

  v9 = sub_219BE5414();
  v10 = sub_219BF6214();

  v40 = a4;
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v41 = v12;
    *v11 = 136381187;
    v13 = sub_2186C6148(0, &qword_280E8E8A0);
    v14 = MEMORY[0x21CECC6D0](a1, v13);
    v16 = sub_2186D1058(v14, v15, &v41);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2081;
    v17 = MEMORY[0x21CECC6D0](a2, v13);
    v19 = sub_2186D1058(v17, v18, &v41);

    *(v11 + 14) = v19;
    *(v11 + 22) = 2081;
    v20 = MEMORY[0x21CECC6D0](a3, v13);
    v22 = sub_2186D1058(v20, v21, &v41);

    *(v11 + 24) = v22;
    _os_log_impl(&dword_2186C1000, v9, v10, "ShortcutsService observed favorited shortcuts added=%{private}s, changed=%{private}s, removed=%{private}s", v11, 0x20u);
    swift_arrayDestroy();
    v23 = v12;
    a4 = v40;
    MEMORY[0x21CECF960](v23, -1, -1);
    MEMORY[0x21CECF960](v11, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1((a4 + OBJC_IVAR____TtC7NewsUI216ShortcutsService_favoritedShortcutService), *(a4 + OBJC_IVAR____TtC7NewsUI216ShortcutsService_favoritedShortcutService + 24));
  v24 = sub_218C54F50();
  v25 = v24;
  if (!(v24 >> 62))
  {
    v26 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26)
    {
      goto LABEL_7;
    }

LABEL_17:

    MEMORY[0x28223BE20](v38);
    sub_218B6BFAC(0, &qword_280E8EFD0, type metadata accessor for TagModel, MEMORY[0x277D83940]);
    sub_219BE3204();

    v39 = sub_219BE1C44();
    sub_219BE2F94();

    return;
  }

  v26 = sub_219BF7214();
  if (!v26)
  {
    goto LABEL_17;
  }

LABEL_7:
  v41 = MEMORY[0x277D84F90];
  sub_21870B65C(0, v26 & ~(v26 >> 63), 0);
  if ((v26 & 0x8000000000000000) == 0)
  {
    v27 = 0;
    v28 = v41;
    do
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x21CECE0F0](v27, v25);
      }

      else
      {
        v29 = *(v25 + 8 * v27 + 32);
      }

      v30 = v29;
      v31 = [v29 identifier];
      v32 = sub_219BF5414();
      v34 = v33;

      v41 = v28;
      v36 = *(v28 + 16);
      v35 = *(v28 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_21870B65C((v35 > 1), v36 + 1, 1);
        v28 = v41;
      }

      ++v27;
      *(v28 + 16) = v36 + 1;
      v37 = v28 + 16 * v36;
      *(v37 + 32) = v32;
      *(v37 + 40) = v34;
    }

    while (v26 != v27);
    goto LABEL_17;
  }

  __break(1u);
}

uint64_t sub_218B6891C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v33 = a1;
  sub_2187FAD00();
  v8 = *(v7 - 8);
  v40 = v7;
  v41 = v8;
  MEMORY[0x28223BE20](v7);
  v39 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B6BA10();
  v11 = v10;
  MEMORY[0x28223BE20](v10);
  v13 = (&v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = a2;
  v48 = a3;
  sub_218B6B97C();
  v38 = v14;
  v43 = v3;
  v44 = sub_218B6BB0C;
  v45 = &v46;
  sub_21880B928();
  v16 = v15;
  sub_218B6BE94(&qword_280EE3738, sub_21880B928);
  sub_218B6BB78();
  sub_219BF5754();
  if ((v50 & 1) == 0)
  {
LABEL_11:
    a3 = v49[2];
    v49[0] = *v4;
    sub_218B6BE94(&qword_280EE3730, sub_21880B928);
    v29 = v33;
    sub_219BF5E64();
    v30 = sub_218B6B97C;
    v31 = v4;
    v32 = v29;
LABEL_13:
    sub_218B6BC70(v31, v32, v30);
    return a3;
  }

  v17 = v33;
  v37 = v16;
  sub_218B6BAA4(v4, v13, sub_218B6B97C);
  v18 = *(v11 + 36);
  v19 = *v4;
  result = sub_218B6BC10(v4, sub_218B6B97C);
  *(v13 + v18) = v19;
  if (!a2)
  {
    sub_218B6BC70(v13, v17, sub_218B6BA10);
    return 0;
  }

  if (!a3)
  {
LABEL_12:
    v30 = sub_218B6BA10;
    v31 = v13;
    v32 = v33;
    goto LABEL_13;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v21 = a2;
    v22 = v13[1];
    v35 = (v41 + 16);
    v34 = (v41 + 32);
    v4 = 1;
    v36 = a3;
    v23 = v39;
    while (*(v13 + v18) != v22)
    {
      v49[0] = *v13;
      v49[1] = v22;
      v24 = v22;
      sub_218B6BE94(&qword_280EE3730, sub_21880B928);
      v42 = v21;
      sub_219BF5E24();
      v25 = sub_219BF5EC4();
      v26 = v40;
      (*v35)(v23);
      v25(v49, 0);
      a3 = v36;
      v27 = v42;
      sub_219BF5E94();
      (*v34)(v27, v23, v26);
      if (a3 == v4)
      {
        goto LABEL_12;
      }

      v21 = v27 + *(v41 + 72);
      v28 = __OFADD__(v4++, 1);
      v22 = v24;
      if (v28)
      {
        __break(1u);
        goto LABEL_11;
      }
    }

    sub_218B6BC70(v13, v33, sub_218B6BA10);
    return v4 - 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_218B68DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  if (a2 && a4)
  {
    if (a2 >= a4)
    {
      v5 = a4;
    }

    else
    {
      v5 = a2;
    }

    sub_2187FAD00();
    v7 = v6;
    swift_arrayInitWithCopy();
    v4 += *(*(v7 - 8) + 72) * v5;
  }

  else if (a1)
  {
    sub_2187FAD00();
  }

  return v4;
}

void *sub_218B68F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v112 = a3;
  v122 = _s8ResolvedVMa();
  MEMORY[0x28223BE20](v122);
  v121 = &v111 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for Shortcut();
  v6 = MEMORY[0x28223BE20](v128);
  v118 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v120 = (&v111 - v9);
  v10 = MEMORY[0x28223BE20](v8);
  v126 = (&v111 - v11);
  v12 = MEMORY[0x28223BE20](v10);
  v127 = &v111 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v125 = &v111 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v124 = &v111 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v119 = &v111 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v123 = (&v111 - v21);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v111 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = (&v111 - v26);
  MEMORY[0x28223BE20](v25);
  v30 = &v111 - v29;
  v31 = *(a2 + 16);
  v32 = MEMORY[0x277D84F90];
  v114 = v28;
  v113 = a2;
  if (v31)
  {
    v116 = a1;
    v129 = MEMORY[0x277D84F90];
    v33 = v28;
    sub_21870B65C(0, v31, 0);
    v32 = v129;
    v34 = a2 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
    v117 = *(v33 + 72);
    do
    {
      sub_218B6BAA4(v34, v30, type metadata accessor for Shortcut);
      sub_218B6BAA4(v30, v27, type metadata accessor for Shortcut);
      if (swift_getEnumCaseMultiPayload())
      {
        v37 = [*v27 identifier];
        v38 = sub_219BF5414();
        v40 = v39;
        swift_unknownObjectRelease();
      }

      else
      {
        v35 = v121;
        sub_218B6BC70(v27, v121, _s8ResolvedVMa);
        v36 = (v35 + *(v122 + 24));
        v38 = *v36;
        v40 = v36[1];

        sub_218B6BC10(v35, _s8ResolvedVMa);
      }

      sub_218B6BC10(v30, type metadata accessor for Shortcut);
      v129 = v32;
      v42 = *(v32 + 16);
      v41 = *(v32 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_21870B65C((v41 > 1), v42 + 1, 1);
        v32 = v129;
      }

      *(v32 + 16) = v42 + 1;
      v43 = v32 + 16 * v42;
      *(v43 + 32) = v38;
      *(v43 + 40) = v40;
      v34 += v117;
      --v31;
    }

    while (v31);
    a1 = v116;
  }

  v44 = sub_218845F78(v32);

  v117 = *(a1 + 16);
  if (v117)
  {
    v45 = 0;
    v115 = (*(v114 + 80) + 32) & ~*(v114 + 80);
    v116 = a1 + v115;
    v46 = *(v114 + 72);
    v47 = v44 + 56;
    v48 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_218B6BAA4(v116 + v46 * v45, v24, type metadata accessor for Shortcut);
      sub_218B6BAA4(v24, v123, type metadata accessor for Shortcut);
      v49 = v48;
      if (swift_getEnumCaseMultiPayload())
      {
        v54 = [*v123 identifier];
        v53 = sub_219BF5414();
        v52 = v55;
        swift_unknownObjectRelease();

        if (!*(v44 + 16))
        {
          goto LABEL_26;
        }
      }

      else
      {
        v50 = v121;
        sub_218B6BC70(v123, v121, _s8ResolvedVMa);
        v51 = (v50 + *(v122 + 24));
        v53 = *v51;
        v52 = v51[1];

        sub_218B6BC10(v50, _s8ResolvedVMa);
        if (!*(v44 + 16))
        {
          goto LABEL_26;
        }
      }

      sub_219BF7AA4();
      sub_219BF5524();
      v56 = sub_219BF7AE4();
      v57 = -1 << *(v44 + 32);
      v58 = v56 & ~v57;
      if ((*(v47 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58))
      {
        v59 = ~v57;
        while (1)
        {
          v60 = (*(v44 + 48) + 16 * v58);
          v61 = *v60 == v53 && v60[1] == v52;
          if (v61 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v58 = (v58 + 1) & v59;
          if (((*(v47 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58) & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        sub_218B6BC10(v24, type metadata accessor for Shortcut);
        v48 = v49;
        goto LABEL_13;
      }

LABEL_26:

      sub_218B6BAA4(v24, v119, type metadata accessor for Shortcut);
      v48 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = sub_2191F6B2C(0, v49[2] + 1, 1, v49);
      }

      v63 = v48[2];
      v62 = v48[3];
      if (v63 >= v62 >> 1)
      {
        v48 = sub_2191F6B2C(v62 > 1, v63 + 1, 1, v48);
      }

      sub_218B6BC10(v24, type metadata accessor for Shortcut);
      v48[2] = v63 + 1;
      sub_218B6BC70(v119, v48 + v115 + v63 * v46, type metadata accessor for Shortcut);
LABEL_13:
      if (++v45 == v117)
      {
        goto LABEL_32;
      }
    }
  }

  v48 = MEMORY[0x277D84F90];
LABEL_32:
  v64 = v48[2];
  v65 = MEMORY[0x277D84F90];
  if (v64)
  {
    v129 = MEMORY[0x277D84F90];

    sub_21870B65C(0, v64, 0);
    v65 = v129;
    v66 = v48 + ((*(v114 + 80) + 32) & ~*(v114 + 80));
    v67 = *(v114 + 72);
    do
    {
      v68 = v124;
      sub_218B6BAA4(v66, v124, type metadata accessor for Shortcut);
      sub_218B6BAA4(v68, v125, type metadata accessor for Shortcut);
      if (swift_getEnumCaseMultiPayload())
      {
        v71 = [*v125 identifier];
        v72 = sub_219BF5414();
        v74 = v73;
        swift_unknownObjectRelease();
      }

      else
      {
        v69 = v121;
        sub_218B6BC70(v125, v121, _s8ResolvedVMa);
        v70 = (v69 + *(v122 + 24));
        v72 = *v70;
        v74 = v70[1];

        sub_218B6BC10(v69, _s8ResolvedVMa);
      }

      sub_218B6BC10(v124, type metadata accessor for Shortcut);
      v129 = v65;
      v76 = *(v65 + 16);
      v75 = *(v65 + 24);
      if (v76 >= v75 >> 1)
      {
        sub_21870B65C((v75 > 1), v76 + 1, 1);
        v65 = v129;
      }

      *(v65 + 16) = v76 + 1;
      v77 = v65 + 16 * v76;
      *(v77 + 32) = v72;
      *(v77 + 40) = v74;
      v66 += v67;
      --v64;
    }

    while (v64);
  }

  v117 = v48;
  v78 = sub_218845F78(v65);

  v124 = *(v112 + 16);
  if (v124)
  {
    v79 = 0;
    v119 = (*(v114 + 80) + 32) & ~*(v114 + 80);
    v123 = (v112 + v119);
    v125 = *(v114 + 72);
    v80 = v44 + 56;
    v81 = v78 + 56;
    v82 = MEMORY[0x277D84F90];
    do
    {
      v83 = v127;
      sub_218B6BAA4(v123 + v125 * v79, v127, type metadata accessor for Shortcut);
      sub_218B6BAA4(v83, v126, type metadata accessor for Shortcut);
      if (swift_getEnumCaseMultiPayload())
      {
        v88 = [*v126 identifier];
        v87 = sub_219BF5414();
        v86 = v89;
        swift_unknownObjectRelease();

        if (!*(v44 + 16))
        {
          goto LABEL_57;
        }
      }

      else
      {
        v84 = v121;
        sub_218B6BC70(v126, v121, _s8ResolvedVMa);
        v85 = (v84 + *(v122 + 24));
        v87 = *v85;
        v86 = v85[1];

        sub_218B6BC10(v84, _s8ResolvedVMa);
        if (!*(v44 + 16))
        {
          goto LABEL_57;
        }
      }

      sub_219BF7AA4();
      sub_219BF5524();
      v90 = sub_219BF7AE4();
      v91 = -1 << *(v44 + 32);
      v92 = v90 & ~v91;
      if ((*(v80 + ((v92 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v92))
      {
        v93 = ~v91;
        do
        {
          v94 = (*(v44 + 48) + 16 * v92);
          v95 = *v94 == v87 && v94[1] == v86;
          if (v95 || (sub_219BF78F4() & 1) != 0)
          {
            goto LABEL_43;
          }

          v92 = (v92 + 1) & v93;
        }

        while (((*(v80 + ((v92 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v92) & 1) != 0);
      }

LABEL_57:

      sub_218B6BAA4(v127, v120, type metadata accessor for Shortcut);
      if (swift_getEnumCaseMultiPayload())
      {
        v100 = [*v120 identifier];
        v99 = sub_219BF5414();
        v98 = v101;
        swift_unknownObjectRelease();

        if (!*(v78 + 16))
        {
          goto LABEL_69;
        }
      }

      else
      {
        v96 = v121;
        sub_218B6BC70(v120, v121, _s8ResolvedVMa);
        v97 = (v96 + *(v122 + 24));
        v99 = *v97;
        v98 = v97[1];

        sub_218B6BC10(v96, _s8ResolvedVMa);
        if (!*(v78 + 16))
        {
          goto LABEL_69;
        }
      }

      sub_219BF7AA4();
      sub_219BF5524();
      v102 = sub_219BF7AE4();
      v103 = -1 << *(v78 + 32);
      v104 = v102 & ~v103;
      if (((*(v81 + ((v104 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v104) & 1) == 0)
      {
LABEL_69:

        sub_218B6BAA4(v127, v118, type metadata accessor for Shortcut);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v82 = sub_2191F6B2C(0, v82[2] + 1, 1, v82);
        }

        v109 = v82[2];
        v108 = v82[3];
        if (v109 >= v108 >> 1)
        {
          v82 = sub_2191F6B2C(v108 > 1, v109 + 1, 1, v82);
        }

        sub_218B6BC10(v127, type metadata accessor for Shortcut);
        v82[2] = v109 + 1;
        sub_218B6BC70(v118, v82 + v119 + v109 * v125, type metadata accessor for Shortcut);
        goto LABEL_44;
      }

      v105 = ~v103;
      while (1)
      {
        v106 = (*(v78 + 48) + 16 * v104);
        v107 = *v106 == v99 && v106[1] == v98;
        if (v107 || (sub_219BF78F4() & 1) != 0)
        {
          break;
        }

        v104 = (v104 + 1) & v105;
        if (((*(v81 + ((v104 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v104) & 1) == 0)
        {
          goto LABEL_69;
        }
      }

LABEL_43:

      sub_218B6BC10(v127, type metadata accessor for Shortcut);
LABEL_44:
      ++v79;
    }

    while (v79 != v124);
  }

  return v117;
}

unint64_t sub_218B69DE0()
{
  result = qword_27CC0E348;
  if (!qword_27CC0E348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0E348);
  }

  return result;
}

void sub_218B69E70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a2 == 5 || a2 == 2)
  {
    if (!a1)
    {
      __break(1u);
      return;
    }

    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 56);
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

LABEL_11:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      sub_2187A1D40(*(a1 + 48) + 40 * (v12 | (v9 << 6)), v52);
      v13 = sub_219BF7274();
      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      if (v14)
      {
        oslog = v3;
        v15 = [v14 identifier];

        v16 = sub_219BF5414();
        v48 = v17;
        v49 = v16;

        sub_218B6B67C(v52);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_218840D24(0, *(v10 + 2) + 1, 1, v10);
        }

        v19 = *(v10 + 2);
        v18 = *(v10 + 3);
        if (v19 >= v18 >> 1)
        {
          v10 = sub_218840D24((v18 > 1), v19 + 1, 1, v10);
        }

        *(v10 + 2) = v19 + 1;
        v20 = &v10[16 * v19];
        *(v20 + 4) = v49;
        *(v20 + 5) = v48;
        v3 = oslog;
      }

      else
      {

        sub_218B6B67C(v52);
      }
    }

    while (1)
    {
      v9 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v9 >= v8)
      {

        if (*(v10 + 2))
        {
          if (qword_280EE5F18 == -1)
          {
            goto LABEL_20;
          }

          goto LABEL_45;
        }

        if (qword_280EE5F18 == -1)
        {
LABEL_41:
          v44 = sub_219BE5434();
          __swift_project_value_buffer(v44, qword_280F62538);
          v45 = sub_219BE5414();
          v46 = sub_219BF6214();
          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            *v47 = 0;
            _os_log_impl(&dword_2186C1000, v45, v46, "Nothing to process for shortcuts from subscription change, tag ids are empty", v47, 2u);
            MEMORY[0x21CECF960](v47, -1, -1);
          }

          return;
        }

LABEL_49:
        swift_once();
        goto LABEL_41;
      }

      v7 = *(a1 + 56 + 8 * v9);
      ++v11;
      if (v7)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_45:
    swift_once();
LABEL_20:
    v21 = sub_219BE5434();
    __swift_project_value_buffer(v21, qword_280F62538);

    v22 = sub_219BE5414();
    v23 = sub_219BF6214();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = v3;
      v26 = swift_slowAlloc();
      v52[0] = v26;
      *v24 = 136315138;
      v27 = MEMORY[0x21CECC6D0](v10, MEMORY[0x277D837D0]);
      v29 = sub_2186D1058(v27, v28, v52);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_2186C1000, v22, v23, "Observed subscription change prompting shortcuts refresh request, tagIds=%s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      v30 = v26;
      v3 = v25;
      MEMORY[0x21CECF960](v30, -1, -1);
      MEMORY[0x21CECF960](v24, -1, -1);
    }

    __swift_project_boxed_opaque_existential_1((&v3->isa + OBJC_IVAR____TtC7NewsUI216ShortcutsService_cacheManager), *(&v3[3].isa + OBJC_IVAR____TtC7NewsUI216ShortcutsService_cacheManager));

    v32 = sub_218845F78(v31);

    sub_2189AC4A8(v32, v33);

    v34 = OBJC_IVAR____TtC7NewsUI216ShortcutsService_observers;
    swift_beginAccess();
    v35 = *(&v3->isa + v34);
    if (v35 >> 62)
    {
      v36 = sub_219BF7214();
      if (!v36)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v36)
      {
        goto LABEL_47;
      }
    }

    if (v36 < 1)
    {
      __break(1u);
      goto LABEL_49;
    }

    for (i = 0; i != v36; ++i)
    {
      if ((v35 & 0xC000000000000001) != 0)
      {
        v38 = MEMORY[0x21CECE0F0](i, v35);
      }

      else
      {
        v38 = *(v35 + 8 * i + 32);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v39 = *(v38 + 24);
        ObjectType = swift_getObjectType();
        (*(v39 + 24))(v10, 0, ObjectType, v39);
        swift_unknownObjectRelease();
      }
    }

LABEL_47:

    return;
  }

  if (qword_280EE5F18 != -1)
  {
    swift_once();
  }

  v41 = sub_219BE5434();
  __swift_project_value_buffer(v41, qword_280F62538);
  osloga = sub_219BE5414();
  v42 = sub_219BF6214();
  if (os_log_type_enabled(osloga, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_2186C1000, osloga, v42, "Nothing to process for shortcuts from subscription change", v43, 2u);
    MEMORY[0x21CECF960](v43, -1, -1);
  }
}

uint64_t sub_218B6A480@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (([a1 respondsToSelector_] & 1) == 0)
  {
    v11 = 0;
LABEL_8:
    sub_218B6B414();
    swift_allocError();
    *v12 = v11;
    swift_willThrow();
    return swift_unknownObjectRelease();
  }

  v4 = [a1 maxCuratedShortcutsCount];
  if (([a1 respondsToSelector_] & 1) == 0)
  {
    v11 = 1;
    goto LABEL_8;
  }

  v5 = [a1 maxSuggestedShortcutsCount];
  result = [a1 respondsToSelector_];
  if ((result & 1) == 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  v7 = [a1 shortcutsCurationResourceId];
  if (v7)
  {
    v8 = v7;
    v19 = sub_219BF5414();
    v10 = v9;
  }

  else
  {
    v19 = 0;
    v10 = 0;
  }

  result = [a1 respondsToSelector_];
  if ((result & 1) == 0)
  {
    goto LABEL_16;
  }

  v13 = v5;
  v14 = [a1 shortcutsConfigResourceId];
  if (v14)
  {
    v15 = v14;
    v16 = sub_219BF5414();
    v18 = v17;

    result = swift_unknownObjectRelease();
  }

  else
  {
    result = swift_unknownObjectRelease();
    v16 = 0;
    v18 = 0;
  }

  *a2 = v4;
  a2[1] = v13;
  a2[2] = v19;
  a2[3] = v10;
  a2[4] = v16;
  a2[5] = v18;
  return result;
}

void sub_218B6A62C()
{
  if (!qword_280E8F970)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8F970);
    }
  }
}

void sub_218B6A6E0()
{
  if (!qword_27CC0E378)
  {
    sub_218B68EEC(255);
    sub_218B6BFAC(255, &unk_280E8EB00, sub_218A450F0, MEMORY[0x277D83940]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC0E378);
    }
  }
}

uint64_t sub_218B6A910()
{
  v0 = off_282A4D750[0];
  type metadata accessor for TagService();
  return v0();
}

uint64_t objectdestroy_17Tm_1()
{
  v1 = type metadata accessor for CuratedShortcut(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);

  v3 = v0 + v2;

  v4 = v0 + v2 + v1[5];
  _s5ModelOMa();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        if (EnumCaseMultiPayload != 2)
        {
          goto LABEL_17;
        }

        v6 = _s9IssueDataVMa(0);
        goto LABEL_15;
      }

LABEL_12:

      v6 = _s7TagDataVMa(0);
      goto LABEL_15;
    }

    v6 = _s12HeadlineDataVMa(0);
LABEL_15:
    v8 = *(v6 + 20);
    v9 = sub_219BDB954();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v4 + v8, 1, v9))
    {
      (*(v10 + 8))(v4 + v8, v9);
    }

    goto LABEL_17;
  }

  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload != 3)
    {

      v6 = _s14PuzzleFeedDataVMa(0);
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 5)
  {

    v6 = _s10PuzzleDataVMa(0);
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v7 = sub_219BDB954();
    (*(*(v7 - 8) + 8))(v4, v7);
  }

LABEL_17:

  v11 = v1[8];
  v12 = sub_219BE3184();
  v13 = *(*(v12 - 8) + 8);
  v13(v3 + v11, v12);
  v13(v3 + v1[9], v12);

  return swift_deallocObject();
}

void sub_218B6AE60(unint64_t a1, char a2)
{
  v5 = *(type metadata accessor for CuratedShortcut(0) - 8);
  v6 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_218B63BCC(a1, a2 & 1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), (v2 + v6), *(v2 + v7), *(v2 + v7 + 8));
}

void sub_218B6AF64()
{
  if (!qword_280EE6A30)
  {
    sub_218B6B09C(255, &qword_280E8EBA0, &qword_280E8E130, &protocolRef_FCPuzzleTypeProviding, MEMORY[0x277D83940]);
    v0 = sub_219BE3114();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE6A30);
    }
  }
}

uint64_t sub_218B6AFE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2187609C8;

  return sub_218B6589C(a1, v4, v5, v6);
}

void sub_218B6B09C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2186D6710(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t objectdestroy_41Tm()
{

  return swift_deallocObject();
}

uint64_t sub_218B6B144(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2187608D4;

  return sub_218B65350(a1, v4, v5, v6);
}

void sub_218B6B254()
{
  if (!qword_280E8FAA0)
  {
    sub_2186C6148(255, &qword_280E8E8B0);
    v0 = sub_219BF52A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8FAA0);
    }
  }
}

unint64_t sub_218B6B2F0()
{
  result = qword_27CC0E3A0;
  if (!qword_27CC0E3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0E3A0);
  }

  return result;
}

unint64_t sub_218B6B344()
{
  result = qword_27CC0E3A8;
  if (!qword_27CC0E3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0E3A8);
  }

  return result;
}

unint64_t sub_218B6B414()
{
  result = qword_27CC0E3B8;
  if (!qword_27CC0E3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0E3B8);
  }

  return result;
}

uint64_t sub_218B6B49C()
{
  v0 = off_282A4D758;
  type metadata accessor for TagService();
  return v0();
}

uint64_t get_enum_tag_for_layout_string_7NewsUI216ShortcutsServiceC5Error33_7830F407DC9B06788404BF38DE63A192LLO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_218B6B6FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_218B6B744(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_218B6B788(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_218B6B7B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_218B6B7F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_218B6B858(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_218B6B8B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_218B6B928()
{
  result = qword_27CC0E3E0;
  if (!qword_27CC0E3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0E3E0);
  }

  return result;
}

void sub_218B6B97C()
{
  if (!qword_27CC0E3E8)
  {
    sub_21880B928();
    sub_218B6BE94(&qword_280EE3730, sub_21880B928);
    v0 = sub_219BF7A64();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0E3E8);
    }
  }
}

void sub_218B6BA10()
{
  if (!qword_27CC0E3F0)
  {
    sub_218B6B97C();
    sub_218B6BE94(&qword_27CC0E3F8, sub_218B6B97C);
    v0 = sub_219BF7494();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0E3F0);
    }
  }
}

uint64_t sub_218B6BAA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218B6BB0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_218B68DCC(a1, a2, *(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
    a3[1] = v7;
    a3[2] = v8;
  }

  return result;
}

void *sub_218B6BB40@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_218B6BCD8(a1, *(v2 + 16), *(v2 + 24));
  if (!v3)
  {
    *a2 = result;
    a2[1] = v6;
    a2[2] = v7;
  }

  return result;
}

void sub_218B6BB78()
{
  if (!qword_27CC0E400)
  {
    sub_218B6BFAC(255, &qword_27CC0E408, sub_2187FAD00, MEMORY[0x277D836E0]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC0E400);
    }
  }
}

uint64_t sub_218B6BC10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218B6BC70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_218B6BCD8(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, uint64_t, void *))
{
  sub_218B6B97C();
  sub_21880B928();
  sub_218B6BE94(&qword_280EE3730, sub_21880B928);
  sub_219BF5DF4();
  v5 = sub_219BF5E74();
  result = sub_219BF5E74();
  if (__OFADD__(v5, result))
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = result;
  if (result + v5 < v5)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v8 = 0;
  if (a1)
  {
    sub_2187FAD00();
    v8 = a1 + *(*(v9 - 8) + 72) * v5;
  }

  result = a3(&v11, v8, v7);
  if (!v10)
  {
    return v11;
  }

  return result;
}

uint64_t sub_218B6BE94(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_218B6BFAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_218B6C010(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t type metadata accessor for TopicsSearchFeedGroup()
{
  result = qword_280EC9458;
  if (!qword_280EC9458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218B6C108(uint64_t a1)
{
  v2 = sub_218B6C210(&unk_27CC0E470);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_218B6C210(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TopicsSearchFeedGroup();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_218B6C254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v123 = a3;
  v113 = a2;
  v5 = MEMORY[0x277D83D88];
  sub_218B6F8F8(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v88 - v7;
  sub_218B6F8F8(0, &qword_280E90150, MEMORY[0x277D33EC8], v5);
  MEMORY[0x28223BE20](v9 - 8);
  v105 = &v88 - v10;
  sub_218B6F8F8(0, &qword_280E919F0, sub_2186FF4C0, v5);
  MEMORY[0x28223BE20](v11 - 8);
  v101 = &v88 - v12;
  sub_2186FF3C0(0, &qword_27CC0E4F0, type metadata accessor for SearchFeedServiceConfig, sub_2186FF508, MEMORY[0x277D31C68]);
  v117 = v13;
  v99 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v100 = &v88 - v14;
  v109 = sub_219BF2AB4();
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v107 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B6F8F8(0, &unk_280E91B60, MEMORY[0x277D32040], v5);
  MEMORY[0x28223BE20](v16 - 8);
  v104 = &v88 - v17;
  v18 = sub_219BEF554();
  v106 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v103 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v102 = &v88 - v21;
  v22 = type metadata accessor for SportsSearchFeedGroupConfigData();
  MEMORY[0x28223BE20](v22 - 8);
  v114 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_219BF0BD4();
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v93 = &v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_219BF3E84();
  v110 = *(v111 - 8);
  v25 = MEMORY[0x28223BE20](v111);
  v98 = &v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v88 - v27;
  v97 = sub_219BF2124();
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v30 = (&v88 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v116 = sub_219BF14C4();
  v115 = *(v116 - 8);
  v31 = MEMORY[0x28223BE20](v116);
  v112 = &v88 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v34 = &v88 - v33;
  v35 = type metadata accessor for SearchFeedServiceConfig();
  MEMORY[0x28223BE20](v35);
  v37 = &v88 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B6F704(a1, v118);
  if (!v118[0])
  {
    sub_218B6F78C(v118, &qword_27CC0E4F8, &type metadata for SearchFeedPool);
    v119 = 0u;
    v120 = 0u;
    v121 = 0u;
    goto LABEL_10;
  }

  v38 = v118[5];

  sub_218B6F84C(v118);
  if (!*(v38 + 16))
  {

    v120 = 0u;
    v121 = 0u;
    v119 = 0u;
    goto LABEL_10;
  }

  sub_218B6F318(v38 + 32, &v119);

  if (!v119)
  {
LABEL_10:
    sub_218B6F78C(&v119, &qword_27CC0E500, &type metadata for SearchFeedPool.TagSearchResults);
    v49 = sub_219BEEDD4();
    sub_218713720(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    (*(*(v49 - 8) + 104))(v50, *MEMORY[0x277D323A8], v49);
    swift_willThrow();
    return v49;
  }

  v89 = v18;
  v91 = v3;
  v122[0] = v119;
  v122[1] = v120;
  v122[2] = v121;
  sub_219BED8F4();
  v39 = *&v37[*(v35 + 36)];
  sub_218B6F4E4(v37, type metadata accessor for SearchFeedServiceConfig);
  v90 = v8;
  if (v39 == 7)
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v41 = [objc_opt_self() bundleForClass_];
    sub_219BDB5E4();

    sub_219BF20F4();

    sub_219BF14A4();
    v92 = "r sports search results";
    sub_218B6F8F8(0, &qword_280E8B860, MEMORY[0x277D333A8], MEMORY[0x277D84560]);
    v42 = v115;
    v43 = (*(v115 + 80) + 32) & ~*(v115 + 80);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_219C09BA0;
    (*(v42 + 16))(v44 + v43, v34, v116);
    v45 = MEMORY[0x277D84F90];
    sub_218F0B984(MEMORY[0x277D84F90]);
    sub_218F0BA7C(v45);
    sub_218F0BB90(v45);
    sub_219BF3E74();
    v46 = sub_2191F6E6C(0, 1, 1, v45);
    v48 = *(v46 + 2);
    v47 = *(v46 + 3);
    if (v48 >= v47 >> 1)
    {
      v46 = sub_2191F6E6C(v47 > 1, v48 + 1, 1, v46);
    }

    (*(v115 + 8))(v34, v116);
    *(v46 + 2) = v48 + 1;
    (*(v110 + 32))(&v46[((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v48], v28, v111);
  }

  else
  {
    v46 = MEMORY[0x277D84F90];
  }

  v92 = v46;
  sub_219BED8F4();
  v51 = *&v37[*(v35 + 36)];
  sub_218B6F4E4(v37, type metadata accessor for SearchFeedServiceConfig);
  if (v51 == 7 || (v52 = *(*&v122[0] + 16), type metadata accessor for SportsSearchFeedGroupKnobs(), v53 = v93, sub_219BED8E4(), sub_219BEF524(), (*(v94 + 8))(v53, v95), v118[0] >= v52))
  {
    sub_218B6F8A0();
    v55 = swift_allocBox();
    LOBYTE(v118[0]) = 0;
    v56 = MEMORY[0x277D84F90];
    sub_219BF2704();
    *v30 = v55;
    (*(v96 + 104))(v30, *MEMORY[0x277D33758], v97);
    v57 = v112;
    sub_219BF14A4();
    sub_218B6F8F8(0, &qword_280E8B860, MEMORY[0x277D333A8], MEMORY[0x277D84560]);
    v58 = v115;
    v59 = (*(v115 + 80) + 32) & ~*(v115 + 80);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_219C09BA0;
    (*(v58 + 16))(v60 + v59, v57, v116);
    sub_218F0B984(v56);
    sub_218F0BA7C(v56);
    sub_218F0BB90(v56);
    v61 = v98;
    sub_219BF3E74();
    v62 = v92;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = v103;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v62 = sub_2191F6E6C(0, *(v62 + 2) + 1, 1, v62);
    }

    v65 = *(v62 + 2);
    v64 = *(v62 + 3);
    if (v65 >= v64 >> 1)
    {
      v62 = sub_2191F6E6C(v64 > 1, v65 + 1, 1, v62);
    }

    (*(v115 + 8))(v112, v116);
    *(v62 + 2) = v65 + 1;
    v66 = *(v110 + 32);
    v67 = (*(v110 + 80) + 32) & ~*(v110 + 80);
    v92 = v62;
    v66(&v62[v67 + *(v110 + 72) * v65], v61, v111);
  }

  else
  {
    v54 = v103;
  }

  v68 = v113;
  v69 = *(v113 + OBJC_IVAR____TtC7NewsUI228SportsSearchFeedGroupEmitter_formatService + 24);
  v115 = *(v113 + OBJC_IVAR____TtC7NewsUI228SportsSearchFeedGroupEmitter_formatService + 32);
  v116 = __swift_project_boxed_opaque_existential_1((v113 + OBJC_IVAR____TtC7NewsUI228SportsSearchFeedGroupEmitter_formatService), v69);
  sub_21872EF54();
  sub_219BEDD14();
  v70 = v102;
  sub_219BEDCC4();
  sub_219BEDCC4();
  v71 = sub_219BEE5D4();
  v72 = v104;
  (*(*(v71 - 8) + 56))(v104, 1, 1, v71);
  (*(v99 + 16))(v100, v123, v117);
  v73 = OBJC_IVAR____TtC7NewsUI228SportsSearchFeedGroupEmitter_knobs;
  sub_2186FF4C0(0);
  v75 = v74;
  v76 = *(v74 - 8);
  v77 = v68 + v73;
  v78 = v101;
  (*(v76 + 16))(v101, v77, v74);
  (*(v76 + 56))(v78, 0, 1, v75);
  v79 = sub_219BF35D4();
  (*(*(v79 - 8) + 56))(v105, 1, 1, v79);
  LOBYTE(v118[0]) = 3;
  sub_2186FF3C0(0, &qword_27CC0E508, type metadata accessor for SearchFeedServiceConfig, sub_2186FF508, MEMORY[0x277D33F88]);
  swift_allocObject();
  sub_219BF38E4();
  v80 = sub_219BF2774();
  (*(*(v80 - 8) + 56))(v90, 1, 1, v80);
  v81 = qword_280E8D828;
  *MEMORY[0x277D30B98];
  if (v81 != -1)
  {
    swift_once();
  }

  qword_280F61720;
  v82 = v107;
  sub_219BF2A84();
  v83 = v114;
  v49 = sub_218F0AF50(v114, 0x7374726F7073, 0xE600000000000000, v70, v54, v92, v72, v82, v69, v115);

  (*(v108 + 8))(v82, v109);
  sub_218B6F374(v72, &unk_280E91B60, MEMORY[0x277D32040]);
  v84 = *(v106 + 8);
  v85 = v89;
  v84(v54, v89);
  v84(v70, v85);
  v86 = sub_219BF1934();
  (*(*(v86 - 8) + 8))(v83, v86);
  sub_218B6F544(v122);
  return v49;
}

uint64_t sub_218B6D544(uint64_t a1)
{
  v2 = sub_219BED8D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = type metadata accessor for FormatGroupFeedGroupEmitterCursor();
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + OBJC_IVAR____TtC7NewsUI233FormatGroupFeedGroupEmitterCursor_formatGroup, v5, v2);
  v9[3] = v6;
  v9[0] = v7;
  sub_218A80D28();
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_218B6D688(uint64_t a1)
{
  v2 = type metadata accessor for SearchFeedServiceConfig();
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BEF0B4();
  v6 = *&v5[*(v3 + 44)];
  sub_218B6F4E4(v5, type metadata accessor for SearchFeedServiceConfig);
  type metadata accessor for FormatGroupFeedGroupEmitterCursor();
  sub_219BE3204();

  v7 = sub_219BE2E54();
  sub_218B6F1EC();
  sub_219BE2F64();

  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = a1;

  v9 = sub_219BE2E54();
  sub_218B6F29C(0);
  sub_219BE2F84();

  v10 = sub_219BE2E54();
  v11 = sub_219BE3054();

  return v11;
}

uint64_t sub_218B6D89C()
{
  sub_219BEF0C4();

  v0 = sub_219BE2E54();
  sub_218B6F1EC();
  v1 = sub_219BE2F74();

  return v1;
}

uint64_t sub_218B6D938(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v92 = a2;
  v93 = a4;
  sub_218B6F29C(0);
  v87 = v6;
  MEMORY[0x28223BE20](v6);
  v88 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D83D88];
  sub_218B6F8F8(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v72 - v10;
  sub_218B6F8F8(0, &unk_280E8FE90, MEMORY[0x277D343A8], v8);
  MEMORY[0x28223BE20](v12 - 8);
  v86 = &v72 - v13;
  sub_218B6F8F8(0, &qword_280E91210, MEMORY[0x277D32A30], v8);
  MEMORY[0x28223BE20](v14 - 8);
  v85 = &v72 - v15;
  sub_218B6F8F8(0, &qword_280E907B0, MEMORY[0x277D33528], v8);
  MEMORY[0x28223BE20](v16 - 8);
  v83 = &v72 - v17;
  sub_218B6F8F8(0, &qword_280EE9C40, MEMORY[0x277CC9578], v8);
  MEMORY[0x28223BE20](v18 - 8);
  v90 = &v72 - v19;
  v78 = sub_219BDBD64();
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v76 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_219BF1904();
  v81 = *(v21 - 8);
  v82 = v21;
  MEMORY[0x28223BE20](v21);
  v89 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B6F8F8(0, &qword_280E90840, MEMORY[0x277D33470], v8);
  MEMORY[0x28223BE20](v23 - 8);
  v80 = &v72 - v24;
  v94 = sub_219BF04A4();
  v25 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v27 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for SearchFeedGroup();
  MEMORY[0x28223BE20](v79);
  v84 = &v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_219BF0BD4();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v72 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1[1];
  if (!*(v33 + 16))
  {
    v37 = sub_219BEEDD4();
    sub_218713720(&qword_280E917E0, MEMORY[0x277D32430]);
    v38 = swift_allocError();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D323A8], v37);
    v91 = v38;
    swift_willThrow();
    return v37;
  }

  v34 = *a1;
  sub_218B6F318(v33 + 32, &v95);
  v75 = v11;
  if (a3 == 7)
  {
    v35 = v95;
    v36 = *(v95 + 16);
  }

  else
  {
    type metadata accessor for SportsSearchFeedGroupKnobs();

    sub_219BEF134();
    sub_219BEF524();
    (*(v30 + 8))(v32, v29);
    v36 = v97;
    v35 = v95;
  }

  result = sub_219A780D8(v36, v35);
  v93 = v42;
  v44 = v43 >> 1;
  if (v41 == v43 >> 1)
  {
    v37 = sub_219BEEDD4();
    sub_218713720(&qword_280E917E0, MEMORY[0x277D32430]);
    v45 = swift_allocError();
    (*(*(v37 - 8) + 104))(v46, *MEMORY[0x277D323A8], v37);
    v91 = v45;
    swift_willThrow();

LABEL_22:
    swift_unknownObjectRelease();

    sub_218B6F544(&v95);
    return v37;
  }

  v47 = v41;
  v74 = result;
  v48 = v44 - v41;
  if (__OFSUB__(v44, v41))
  {
LABEL_25:
    __break(1u);
  }

  else
  {
    if (!v48)
    {

      v51 = MEMORY[0x277D84F90];
      if (MEMORY[0x277D84F90] >> 62)
      {
LABEL_20:
        if (sub_219BF7214())
        {
          goto LABEL_18;
        }

        goto LABEL_21;
      }

LABEL_17:
      if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_18:
        v93 = OBJC_IVAR____TtC7NewsUI233FormatGroupFeedGroupEmitterCursor_formatGroup;
        v94 = v51;
        sub_219BED874();
        v52 = v76;
        sub_219BDBD54();
        sub_219BDBD44();
        (*(v77 + 8))(v52, v78);
        v53 = sub_219BDBD34();
        (*(*(v53 - 8) + 56))(v90, 1, 1, v53);
        v54 = sub_219BF1AD4();
        v55 = v83;
        (*(*(v54 - 8) + 56))(v83, 1, 1, v54);
        v56 = sub_219BEFC64();
        v57 = v85;
        (*(*(v56 - 8) + 56))(v85, 1, 1, v56);
        v58 = sub_219BF4334();
        v59 = v86;
        (*(*(v58 - 8) + 56))(v86, 1, 1, v58);
        v60 = sub_219BEC004();
        v61 = v75;
        (*(*(v60 - 8) + 56))(v75, 1, 1, v60);
        v62 = v80;
        v63 = v89;
        sub_219BF1854();

        sub_218B6F374(v61, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
        sub_218B6F374(v59, &unk_280E8FE90, MEMORY[0x277D343A8]);
        sub_218B6F374(v57, &qword_280E91210, MEMORY[0x277D32A30]);
        sub_218B6F374(v55, &qword_280E907B0, MEMORY[0x277D33528]);
        sub_218B6F374(v90, &qword_280EE9C40, MEMORY[0x277CC9578]);
        v65 = v81;
        v64 = v82;
        (*(v81 + 8))(v63, v82);
        (*(v65 + 56))(v62, 0, 1, v64);
        v66 = v84;
        sub_219BED824();
        sub_218B6F374(v62, &qword_280E90840, MEMORY[0x277D33470]);
        v67 = type metadata accessor for SportsSearchFeedGroup();
        sub_218B6F47C(&v96, v66 + *(v67 + 24), sub_218A32864);
        *(v66 + *(v67 + 20)) = v94;
        swift_storeEnumTagMultiPayload();
        sub_218B6F3E4();
        v69 = (v88 + *(v68 + 48));
        sub_218B6F47C(v66, v88, type metadata accessor for SearchFeedGroup);
        v69[3] = type metadata accessor for FormatGroupFeedGroupEmitterCursor();
        *v69 = v34;
        swift_storeEnumTagMultiPayload();
        sub_218B6F8F8(0, &qword_27CC0E4E0, sub_218B6F29C, MEMORY[0x277D6CF30]);
        swift_allocObject();

        v37 = sub_219BE3014();

        swift_unknownObjectRelease();
        sub_218B6F4E4(v66, type metadata accessor for SearchFeedGroup);
        sub_218B6F544(&v95);
        return v37;
      }

LABEL_21:

      v37 = sub_219BEEDD4();
      sub_218713720(&qword_280E917E0, MEMORY[0x277D32430]);
      v70 = swift_allocError();
      (*(*(v37 - 8) + 104))(v71, *MEMORY[0x277D323A8], v37);
      v91 = v70;
      swift_willThrow();
      goto LABEL_22;
    }

    v73 = v34;
    v97 = MEMORY[0x277D84F90];

    result = sub_219BF73F4();
    if ((v48 & 0x8000000000000000) == 0)
    {
      v92 = v25 + 16;
      if (v47 <= v44)
      {
        v49 = v44;
      }

      else
      {
        v49 = v47;
      }

      do
      {
        if (v49 == v47)
        {
          __break(1u);
          goto LABEL_25;
        }

        v50 = v94;
        (*(v25 + 16))(v27, v93 + *(v25 + 72) * v47, v94);
        sub_219BF0404();
        (*(v25 + 8))(v27, v50);
        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        result = sub_219BF73E4();
        ++v47;
      }

      while (v44 != v47);
      v51 = v97;
      v34 = v73;
      if (v97 >> 62)
      {
        goto LABEL_20;
      }

      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_218B6E72C(uint64_t a1)
{
  sub_218B6F29C(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = 0;
  v8 = 0xE000000000000000;
  sub_219BF7314();
  MEMORY[0x21CECC330](0xD000000000000028, 0x8000000219CE91A0);
  v9 = a1;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  v5 = v8;
  *v4 = v7;
  v4[1] = v5;
  swift_storeEnumTagMultiPayload();
  sub_218B6F8F8(0, &qword_27CC0E4E0, sub_218B6F29C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_218B6E894()
{
  v1 = OBJC_IVAR____TtC7NewsUI228SportsSearchFeedGroupEmitter_config;
  sub_21872EF54();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_218B6F4E4(v0 + OBJC_IVAR____TtC7NewsUI228SportsSearchFeedGroupEmitter_knobs, type metadata accessor for SportsSearchFeedGroupKnobs);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI228SportsSearchFeedGroupEmitter_formatService);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SportsSearchFeedGroupEmitter()
{
  result = qword_27CC0E498;
  if (!qword_27CC0E498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218B6E9B8()
{
  sub_21872EF54();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SportsSearchFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_218B6EA8C(uint64_t a1)
{
  sub_2186FF3C0(0, &qword_27CC0E4F0, type metadata accessor for SearchFeedServiceConfig, sub_2186FF508, MEMORY[0x277D31C68]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v14[-v5];
  v15 = a1;
  v7 = MEMORY[0x277D83D88];
  sub_218B6F7FC(0, &qword_27CC0E4F8, &type metadata for SearchFeedPool, MEMORY[0x277D83D88]);
  sub_219BE3204();
  (*(v4 + 16))(v6, a1, v3);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  (*(v4 + 32))(v9 + v8, v6, v3);
  v10 = sub_219BE2E54();
  sub_219BED8D4();
  sub_219BE2F84();

  v11 = sub_219BE2E54();
  sub_218B6F7FC(0, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, v7);
  v12 = sub_219BE2F64();

  return v12;
}

uint64_t sub_218B6ED2C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI228SportsSearchFeedGroupEmitter_config;
  sub_21872EF54();
  (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
  type metadata accessor for SearchFeedGroupConfig();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_218B6EDC0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI228SportsSearchFeedGroupEmitter_knobs;
  a1[3] = type metadata accessor for SportsSearchFeedGroupKnobs();
  a1[4] = sub_218713720(&qword_280EBA060, type metadata accessor for SportsSearchFeedGroupKnobs);
  a1[5] = sub_218713720(&qword_27CC0E510, type metadata accessor for SportsSearchFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_218B6F47C(v3 + v4, boxed_opaque_existential_1, type metadata accessor for SportsSearchFeedGroupKnobs);
}

uint64_t sub_218B6EEC4@<X0>(uint64_t *a1@<X8>)
{
  sub_218B6F8F8(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_21872EF54();
  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_218B6F4E4(inited + 32, sub_2188317B0);
  sub_218B6F8F8(0, &qword_27CC0E518, type metadata accessor for SportsSearchFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a1[3] = v5;
  a1[4] = sub_218B6F95C();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_218B6F040()
{
  sub_218713720(&qword_27CC0E4B8, type metadata accessor for SportsSearchFeedGroupEmitter);

  return sub_219BE2324();
}

void sub_218B6F1EC()
{
  if (!qword_27CC0E4C8)
  {
    type metadata accessor for FormatGroupFeedGroupEmitterCursor();
    sub_218B6F7FC(255, &qword_27CC0E4D0, &type metadata for SearchFeedPool.TagSearchResults, MEMORY[0x277D83940]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC0E4C8);
    }
  }
}

uint64_t sub_218B6F374(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_218B6F8F8(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_218B6F3E4()
{
  if (!qword_27CC0E4E8)
  {
    type metadata accessor for SearchFeedGroup();
    sub_218B6F7FC(255, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC0E4E8);
    }
  }
}

uint64_t sub_218B6F47C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218B6F4E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218B6F598@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_218B6F704(uint64_t a1, uint64_t a2)
{
  sub_218B6F7FC(0, &qword_27CC0E4F8, &type metadata for SearchFeedPool, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218B6F78C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_218B6F7FC(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_218B6F7FC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_218B6F8A0()
{
  if (!qword_280E903A0)
  {
    v0 = sub_219BF2724();
    if (!v1)
    {
      atomic_store(v0, &qword_280E903A0);
    }
  }
}

void sub_218B6F8F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_218B6F95C()
{
  result = qword_27CC0E520;
  if (!qword_27CC0E520)
  {
    sub_218B6F8F8(255, &qword_27CC0E518, type metadata accessor for SportsSearchFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0E520);
  }

  return result;
}

uint64_t sub_218B6F9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v66 = a3;
  v60 = a1;
  v5 = type metadata accessor for TagFeedLayoutSectionDescriptor.Footer(0);
  v53 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v54 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v55 = (&v52 - v8);
  sub_218954350();
  v58 = *(v9 - 8);
  v59 = v9;
  MEMORY[0x28223BE20](v9);
  v56 = v10;
  v57 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_219BF00D4();
  v65 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v64 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TagFeedLayoutSectionDescriptor.Header(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v52 - v17;
  v19 = sub_219BE9834();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B589C8();
  sub_219BE8184();
  v23 = v75;
  v67 = v76;
  v62 = v77;
  LODWORD(v24) = v78;
  if (v78)
  {
    goto LABEL_17;
  }

  sub_219BE95F4();
  v25 = (*(v20 + 88))(v22, v19);
  v26 = *MEMORY[0x277D6E758];
  v61 = v23;
  if (v25 == v26)
  {
    v27 = sub_219BE9604();
    if ((v27 & 0x8000000000000000) == 0)
    {
      v24 = *(v23 + 16);
      if (v27 < v24)
      {
        v28 = v23 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v27;
        v55 = type metadata accessor for TagFeedLayoutSectionDescriptor.Header;
        sub_218B7065C(v28, v18, type metadata accessor for TagFeedLayoutSectionDescriptor.Header);
        sub_218B7065C(v18, v16, type metadata accessor for TagFeedLayoutSectionDescriptor.Header);
        v29 = v64;
        v30 = v65;
        (*(v65 + 32))(v64, v16, v68);
        v53 = a4;
        v31 = v63[7];
        v54 = v63[8];
        v52 = __swift_project_boxed_opaque_existential_1(v63 + 4, v31);
        v32 = swift_allocObject();
        swift_weakInit();
        v33 = v58;
        v34 = v59;
        v35 = v57;
        (*(v58 + 16))(v57, v60, v59);
        v36 = (*(v33 + 80) + 24) & ~*(v33 + 80);
        v37 = swift_allocObject();
        *(v37 + 16) = v32;
        (*(v33 + 32))(v37 + v36, v35, v34);

        v38 = sub_219BF0234();

        (*(v30 + 8))(v29, v68);
        sub_218B70738(v18, v55);

        return v38;
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v25 == *MEMORY[0x277D6E750])
  {
    v39 = sub_219BE9604();
    v40 = *(v23 + 16);
    v41 = __OFSUB__(v39, v40);
    v24 = v39 - v40;
    if (!v41)
    {
      if ((v24 & 0x8000000000000000) == 0)
      {
        if (v24 < *(v67 + 16))
        {
          v42 = v55;
          sub_218B7065C(v67 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v24, v55, type metadata accessor for TagFeedLayoutSectionDescriptor.Footer);
          v43 = v54;
          sub_218B7065C(v42, v54, type metadata accessor for TagFeedLayoutSectionDescriptor.Footer);
          v45 = v64;
          v44 = v65;
          v46 = v68;
          (*(v65 + 32))(v64, v43, v68);
          __swift_project_boxed_opaque_existential_1(v63 + 4, v63[7]);
          v38 = sub_219BF0234();

          (*(v44 + 8))(v45, v46);
          sub_218B70738(v42, type metadata accessor for TagFeedLayoutSectionDescriptor.Footer);
          return v38;
        }

        goto LABEL_16;
      }

LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      if (v24 == 1 || v24 == 2)
      {
      }

      v75 = 0;
      v76 = 0xE000000000000000;
      sub_219BF7314();
      v73 = v75;
      v74 = v76;
      sub_219BE8184();
      v48 = v75;
      v49 = v76;
      v50 = v77;
      v51 = v78;
      v69 = v75;
      v70 = v76;
      v71 = v77;
      v72 = v78;
      sub_219BF7484();
      sub_218B70608(v48, v49, v50, v51);
      MEMORY[0x21CECC330](0xD00000000000002CLL, 0x8000000219CE1A00);
      goto LABEL_21;
    }

    goto LABEL_13;
  }

LABEL_21:
  result = sub_219BF7514();
  __break(1u);
  return result;
}

uint64_t sub_218B701F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_219BF0894();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  sub_219BEDF44();
  if ((*(v5 + 88))(v10, v4) == *MEMORY[0x277D32F88])
  {
    (*(v5 + 16))(v8, v10, v4);
    (*(v5 + 96))(v8, v4);
    v11 = sub_219BF13B4();
    v12 = *(v11 - 8);
    v13 = (*(v12 + 88))(v8, v11);
    if (v13 != *MEMORY[0x277D33338])
    {
      if (v13 == *MEMORY[0x277D33330])
      {
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v16 = *(*(Strong + OBJC_IVAR____TtC7NewsUI221TagFeedViewController_eventHandler) + 40);
            ObjectType = swift_getObjectType();
            (*(v16 + 56))(a3, ObjectType, v16);

            swift_unknownObjectRelease();
          }

          else
          {
          }
        }
      }

      else if (v13 != *MEMORY[0x277D33328])
      {
        (*(v12 + 8))(v8, v11);
      }
    }
  }

  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_218B70548(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218B70608(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 2u)
  {
  }

  return result;
}

uint64_t sub_218B7065C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218B706C4(uint64_t a1)
{
  sub_218954350();
  v4 = *(v1 + 16);
  v5 = v1 + ((*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80));

  return sub_218B701F0(a1, v4, v5);
}

uint64_t sub_218B70738(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for ShortcutsTodayFeedGroupKnobs()
{
  result = qword_280EB2CC8;
  if (!qword_280EB2CC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218B7080C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a2;
  sub_2189AF700(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AE9B4(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v29 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AF720(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AE994(0);
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1;
  sub_2189AF794(a1, v14, sub_2189AF720);
  v20 = *(v17 + 48);
  if (v20(v14, 1, v16) == 1)
  {
    type metadata accessor for TodayFeedServiceConfig();
    v26 = v10;
    sub_2186DF908(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
    v10 = v26;
    sub_219BEE974();
    if (v20(v14, 1, v16) != 1)
    {
      sub_2189AF7FC(v14, sub_2189AF720);
    }
  }

  else
  {
    (*(v17 + 32))(v19, v14, v16);
  }

  (*(v17 + 32))(a3, v19, v16);
  v21 = v27;
  sub_2189AF794(v27, v7, sub_2189AF700);
  v22 = *(v10 + 48);
  if (v22(v7, 1, v9) == 1)
  {
    type metadata accessor for TodayFeedServiceConfig();
    sub_2186DF908(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
    v23 = v29;
    sub_219BEEC74();
    sub_2189AF7FC(v21, sub_2189AF700);
    sub_2189AF7FC(v28, sub_2189AF720);
    if (v22(v7, 1, v9) != 1)
    {
      sub_2189AF7FC(v7, sub_2189AF700);
    }
  }

  else
  {
    sub_2189AF7FC(v21, sub_2189AF700);
    sub_2189AF7FC(v28, sub_2189AF720);
    v23 = v29;
    (*(v10 + 32))(v29, v7, v9);
  }

  v24 = type metadata accessor for ShortcutsTodayFeedGroupKnobs();
  return (*(v10 + 32))(a3 + *(v24 + 20), v23, v9);
}

uint64_t sub_218B70CF4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  sub_2189AF700(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AF720(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B712B0(0, &qword_280E8CC00, MEMORY[0x277D844C8]);
  v11 = v10;
  v15 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v15 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B7125C();
  sub_219BF7B34();
  if (!v2)
  {
    sub_2189AE994(0);
    v18 = 0;
    sub_2186DF908(&qword_280E91A28, sub_2189AE994);
    sub_219BF7674();
    sub_2189AE9B4(0);
    v17 = 1;
    sub_2186DF908(&qword_280E91868, sub_2189AE9B4);
    sub_219BF7674();
    sub_218B7080C(v9, v6, v16);
    (*(v15 + 8))(v13, v11);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218B70FA4(void *a1)
{
  sub_218B712B0(0, &qword_280E8C438, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B7125C();
  sub_219BF7B44();
  v9[15] = 0;
  sub_2189AE994(0);
  sub_2186DF908(&qword_280E91A30, sub_2189AE994);
  sub_219BF7834();
  if (!v1)
  {
    type metadata accessor for ShortcutsTodayFeedGroupKnobs();
    v9[14] = 1;
    sub_2189AE9B4(0);
    sub_2186DF908(&unk_280E91870, sub_2189AE9B4);
    sub_219BF7834();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_218B711B4(uint64_t a1)
{
  v2 = sub_218B7125C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218B711F0(uint64_t a1)
{
  v2 = sub_218B7125C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_218B7125C()
{
  result = qword_280EB2CF8[0];
  if (!qword_280EB2CF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EB2CF8);
  }

  return result;
}

void sub_218B712B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218B7125C();
    v7 = a3(a1, &type metadata for ShortcutsTodayFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218B71328()
{
  result = qword_27CC0E528;
  if (!qword_27CC0E528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0E528);
  }

  return result;
}

unint64_t sub_218B71380()
{
  result = qword_280EB2CE8;
  if (!qword_280EB2CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB2CE8);
  }

  return result;
}

unint64_t sub_218B713D8()
{
  result = qword_280EB2CF0;
  if (!qword_280EB2CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB2CF0);
  }

  return result;
}

void sub_218B7142C()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();
  v4 = v3;

  qword_27CC0E530 = v2;
  qword_27CC0E538 = v4;
}

uint64_t static WebViewerConfigOption.doneString.getter()
{
  if (qword_27CC07D70 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27CC0E530;

  return v0;
}

uint64_t static WebViewerConfigOption.doneString.setter(uint64_t a1, uint64_t a2)
{
  if (qword_27CC07D70 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27CC0E530 = a1;
  qword_27CC0E538 = a2;
}

uint64_t (*static WebViewerConfigOption.doneString.modify())()
{
  if (qword_27CC07D70 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess_0;
}

uint64_t sub_218B71680@<X0>(void *a1@<X8>)
{
  if (qword_27CC07D70 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27CC0E538;
  *a1 = qword_27CC0E530;
  a1[1] = v2;
}

uint64_t sub_218B71700(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = qword_27CC07D70;

  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27CC0E530 = v2;
  qword_27CC0E538 = v1;
}

uint64_t sub_218B71798(uint64_t a1, unint64_t a2)
{
  v4 = a1;
  sub_2188383F8(a1, v2 + OBJC_IVAR____TtC7NewsUI215WebViewerConfig_url);
  if (a2)
  {
    v44 = v4;
    v5 = *(a2 + 16);
    if (v5)
    {
      v50 = 0;
      v51 = 0;
      v47 = 0;
      v48 = 0;
      v46 = 0;
      v52 = 0;
      v53 = 0;
      v49 = 0;
      v6 = 0;
      v7 = 0;
      v54 = 0;
      v55 = 0;
      v8 = 0;
      v9 = 0;
      v10 = (a2 + 48);
      do
      {
        v11 = *(v10 - 2);
        v12 = *(v10 - 1);
        v13 = *v10;
        if (v13 > 2)
        {
          if (v13 == 3)
          {

            v47 = v11;
            v52 = v12;
          }

          else if (v13 == 4)
          {

            v49 = v11;
            v53 = v12;
          }

          else
          {
            v15 = v11 ^ 2 | v12;
            v16 = v11 ^ 3 | v12;
            v17 = v16 == 0;
            if (v16)
            {
              v18 = 1;
            }

            else
            {
              v18 = v9;
            }

            if (v17)
            {
              v19 = 1;
            }

            else
            {
              v19 = v8;
            }

            v20 = v15 == 0;
            if (v15)
            {
              v21 = v18;
            }

            else
            {
              v21 = v9;
            }

            if (v20)
            {
              v22 = v8;
            }

            else
            {
              v22 = v19;
            }

            v23 = v55;
            if (v20)
            {
              v24 = 1;
            }

            else
            {
              v24 = v55;
            }

            v25 = v54;
            if (v11 | v12)
            {
              v26 = v54;
            }

            else
            {
              v26 = 1;
            }

            if (v11 | v12)
            {
              v27 = 1;
            }

            else
            {
              v27 = v7;
            }

            if (v11 > 1)
            {
              v9 = v21;
              v8 = v22;
              v23 = v24;
            }

            v55 = v23;
            if (v11 <= 1)
            {
              v25 = v26;
            }

            v54 = v25;
            if (v11 <= 1)
            {
              v7 = v27;
            }
          }
        }

        else if (*v10)
        {
          if (v13 == 1)
          {

            v46 = v11;
            v51 = v12;
          }

          else
          {
            v14 = v11;

            v6 = v11;
          }
        }

        else
        {

          v48 = v11;
          v50 = v12;
        }

        v10 += 24;
        --v5;
      }

      while (v5);
    }

    else
    {
      LOBYTE(v9) = 0;
      LOBYTE(v8) = 0;
      LOBYTE(v55) = 0;
      LOBYTE(v54) = 0;
      LOBYTE(v7) = 0;
      v6 = 0;
      v48 = 0;
      v49 = 0;
      v52 = 0;
      v53 = 0;
      v46 = 0;
      v47 = 0;
      v50 = 0;
      v51 = 0;
    }

    v45 = v7;

    v4 = v44;
    v31 = v52;
    a2 = v53;
    v28 = v6;
    v35 = v50;
    v33 = v51;
    v34 = v48;
    v29 = v49;
    v32 = v46;
    v30 = v47;
  }

  else
  {
    LOBYTE(v9) = 0;
    LOBYTE(v8) = 0;
    LOBYTE(v55) = 0;
    LOBYTE(v54) = 0;
    v45 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
  }

  v36 = (v2 + OBJC_IVAR____TtC7NewsUI215WebViewerConfig_title);
  *v36 = v32;
  v36[1] = v33;
  v37 = (v2 + OBJC_IVAR____TtC7NewsUI215WebViewerConfig_errorTitle);
  *v37 = v30;
  v37[1] = v31;
  v38 = (v2 + OBJC_IVAR____TtC7NewsUI215WebViewerConfig_errorDescription);
  *v38 = v29;
  v38[1] = a2;
  v39 = (v2 + OBJC_IVAR____TtC7NewsUI215WebViewerConfig_dismissButtonText);
  *v39 = v34;
  v39[1] = v35;
  if (v28)
  {

    v40 = v28;
  }

  else
  {
    v41 = objc_allocWithZone(MEMORY[0x277CE3858]);

    v40 = [v41 init];
    v28 = 0;
  }

  v42 = v28;
  sub_218838478(v4);
  *(v2 + OBJC_IVAR____TtC7NewsUI215WebViewerConfig_webConfiguration) = v40;
  *(v2 + OBJC_IVAR____TtC7NewsUI215WebViewerConfig_forceInitialError) = v45 & 1;
  *(v2 + OBJC_IVAR____TtC7NewsUI215WebViewerConfig_hideBarShadow) = v54 & 1;
  *(v2 + OBJC_IVAR____TtC7NewsUI215WebViewerConfig_disableZoom) = v55 & 1;
  *(v2 + OBJC_IVAR____TtC7NewsUI215WebViewerConfig_errorIfOffline) = v8 & 1;
  *(v2 + OBJC_IVAR____TtC7NewsUI215WebViewerConfig_preventResizing) = v9 & 1;

  return v2;
}

BOOL sub_218B71B40()
{
  v1 = *(v0 + OBJC_IVAR____TtC7NewsUI215WebViewerConfig_title + 8);
  if (v1)
  {
    if ((v1 & 0x2000000000000000) != 0 ? HIBYTE(v1) & 0xF : *(v0 + OBJC_IVAR____TtC7NewsUI215WebViewerConfig_title) & 0xFFFFFFFFFFFFLL)
    {
      return 1;
    }
  }

  v4 = *(v0 + OBJC_IVAR____TtC7NewsUI215WebViewerConfig_dismissButtonText + 8);
  if (!v4)
  {
    return 0;
  }

  if ((v4 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(v4) & 0xF;
  }

  else
  {
    v5 = *(v0 + OBJC_IVAR____TtC7NewsUI215WebViewerConfig_dismissButtonText) & 0xFFFFFFFFFFFFLL;
  }

  return v5 != 0;
}

uint64_t sub_218B71BB0(int a1)
{
  v2 = v1;
  v31 = a1;
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2188383F8(v1 + OBJC_IVAR____TtC7NewsUI215WebViewerConfig_url, v5);
  v6 = *(v1 + OBJC_IVAR____TtC7NewsUI215WebViewerConfig_dismissButtonText);
  v29 = *(v1 + OBJC_IVAR____TtC7NewsUI215WebViewerConfig_dismissButtonText + 8);
  v30 = v6;
  v8 = *(v1 + OBJC_IVAR____TtC7NewsUI215WebViewerConfig_title);
  v7 = *(v1 + OBJC_IVAR____TtC7NewsUI215WebViewerConfig_title + 8);
  v9 = *(v1 + OBJC_IVAR____TtC7NewsUI215WebViewerConfig_errorTitle);
  v10 = *(v1 + OBJC_IVAR____TtC7NewsUI215WebViewerConfig_errorTitle + 8);
  v11 = v1 + OBJC_IVAR____TtC7NewsUI215WebViewerConfig_errorDescription;
  v12 = *(v1 + OBJC_IVAR____TtC7NewsUI215WebViewerConfig_errorDescription);
  v13 = *(v11 + 8);
  v14 = *(v2 + OBJC_IVAR____TtC7NewsUI215WebViewerConfig_webConfiguration);
  LODWORD(v6) = *(v2 + OBJC_IVAR____TtC7NewsUI215WebViewerConfig_forceInitialError);
  v28 = *(v2 + OBJC_IVAR____TtC7NewsUI215WebViewerConfig_disableZoom);
  LODWORD(v11) = *(v2 + OBJC_IVAR____TtC7NewsUI215WebViewerConfig_errorIfOffline);
  v26 = v6;
  v27 = v11;
  v25 = *(v2 + OBJC_IVAR____TtC7NewsUI215WebViewerConfig_preventResizing);
  v15 = swift_allocObject();
  sub_218AB007C(v5, v15 + OBJC_IVAR____TtC7NewsUI215WebViewerConfig_url);
  v16 = (v15 + OBJC_IVAR____TtC7NewsUI215WebViewerConfig_title);
  *v16 = v8;
  v16[1] = v7;
  v17 = (v15 + OBJC_IVAR____TtC7NewsUI215WebViewerConfig_errorTitle);
  *v17 = v9;
  v17[1] = v10;
  v18 = (v15 + OBJC_IVAR____TtC7NewsUI215WebViewerConfig_errorDescription);
  *v18 = v12;
  v18[1] = v13;
  v19 = (v15 + OBJC_IVAR____TtC7NewsUI215WebViewerConfig_dismissButtonText);
  v20 = v29;
  *v19 = v30;
  v19[1] = v20;
  *(v15 + OBJC_IVAR____TtC7NewsUI215WebViewerConfig_webConfiguration) = v14;
  *(v15 + OBJC_IVAR____TtC7NewsUI215WebViewerConfig_forceInitialError) = v26;
  *(v15 + OBJC_IVAR____TtC7NewsUI215WebViewerConfig_hideBarShadow) = v31;
  v21 = v27;
  *(v15 + OBJC_IVAR____TtC7NewsUI215WebViewerConfig_disableZoom) = v28;
  *(v15 + OBJC_IVAR____TtC7NewsUI215WebViewerConfig_errorIfOffline) = v21;
  *(v15 + OBJC_IVAR____TtC7NewsUI215WebViewerConfig_preventResizing) = v25;

  v22 = v14;

  return v15;
}

uint64_t sub_218B71DF4()
{
  sub_218838478(v0 + OBJC_IVAR____TtC7NewsUI215WebViewerConfig_url);

  return swift_deallocClassInstance();
}

BOOL _s7NewsUI221WebViewerConfigOptionO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      if (v7 != 3)
      {
        goto LABEL_57;
      }

      v12 = *a1;
      if (v2 != v5 || v3 != v6)
      {
        v14 = sub_219BF78F4();
        sub_218B7264C(v5, v6, 3u);
        sub_218B7264C(v2, v3, 3u);
        sub_218B72694(v2, v3, 3u);
        v15 = v5;
        v16 = v6;
        v17 = 3;
        goto LABEL_42;
      }

      sub_218B7264C(v12, v3, 3u);
      sub_218B7264C(v2, v3, 3u);
      sub_218B72694(v2, v3, 3u);
      v9 = v2;
      v10 = v3;
      v11 = 3;
    }

    else if (v4 == 4)
    {
      if (v7 != 4)
      {
        goto LABEL_57;
      }

      if (v2 != v5 || v3 != v6)
      {
        v14 = sub_219BF78F4();
        sub_218B7264C(v5, v6, 4u);
        sub_218B7264C(v2, v3, 4u);
        sub_218B72694(v2, v3, 4u);
        v15 = v5;
        v16 = v6;
        v17 = 4;
        goto LABEL_42;
      }

      sub_218B7264C(*a1, v3, 4u);
      sub_218B7264C(v2, v3, 4u);
      sub_218B72694(v2, v3, 4u);
      v9 = v2;
      v10 = v3;
      v11 = 4;
    }

    else
    {
      if (v2 <= 1)
      {
        if (v2 | v3)
        {
          if (v7 == 5 && v5 == 1 && !v6)
          {
            sub_218B72694(*a1, v3, 5u);
            v8 = 1;
            sub_218B72694(1, 0, 5u);
            return v8;
          }

          goto LABEL_57;
        }

        if (v7 != 5 || v6 | v5)
        {
LABEL_57:
          sub_218B7264C(*a2, *(a2 + 8), v7);
          sub_218B7264C(v2, v3, v4);
          sub_218B72694(v2, v3, v4);
          v19 = v5;
          v20 = v6;
          v21 = v7;
LABEL_58:
          sub_218B72694(v19, v20, v21);
          return 0;
        }

        sub_218B72694(*a1, v3, 5u);
        v9 = 0;
      }

      else if (v2 ^ 2 | v3)
      {
        if (v2 ^ 3 | v3)
        {
          if (v7 != 5 || v5 != 4 || v6)
          {
            goto LABEL_57;
          }

          sub_218B72694(*a1, v3, 5u);
          v9 = 4;
        }

        else
        {
          if (v7 != 5 || v5 != 3 || v6)
          {
            goto LABEL_57;
          }

          sub_218B72694(*a1, v3, 5u);
          v9 = 3;
        }
      }

      else
      {
        if (v7 != 5 || v5 != 2 || v6)
        {
          goto LABEL_57;
        }

        sub_218B72694(*a1, v3, 5u);
        v9 = 2;
      }

      v10 = 0;
      v11 = 5;
    }

LABEL_52:
    sub_218B72694(v9, v10, v11);
    return 1;
  }

  if (!*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      goto LABEL_57;
    }

    if (v3)
    {
      if (v6)
      {
        if (v2 == v5 && v3 == v6)
        {
          sub_218B7264C(*a1, v3, 0);
          sub_218B7264C(v2, v3, 0);
          sub_218B72694(v2, v3, 0);
          v9 = v2;
          v10 = v3;
          v11 = 0;
          goto LABEL_52;
        }

        v22 = sub_219BF78F4();
        sub_218B7264C(v5, v6, 0);
        sub_218B7264C(v2, v3, 0);
        sub_218B72694(v2, v3, 0);
        sub_218B72694(v5, v6, 0);
        return (v22 & 1) != 0;
      }

      sub_218B7264C(*a2, 0, 0);
      sub_218B7264C(v5, 0, 0);
      sub_218B7264C(v2, v3, 0);
      sub_218B72694(v2, v3, 0);
    }

    else
    {

      sub_218B7264C(v5, v6, 0);
      sub_218B7264C(v2, 0, 0);
      sub_218B72694(v2, 0, 0);
      sub_218B72694(v5, v6, 0);
      if (!v6)
      {
        return 1;
      }
    }

    v19 = v5;
    v20 = v6;
    v21 = 0;
    goto LABEL_58;
  }

  if (v4 != 1)
  {
    if (v7 != 2)
    {
      goto LABEL_57;
    }

    sub_2189666A0();
    sub_218B7264C(v5, v6, 2u);
    sub_218B7264C(v2, v3, 2u);
    v14 = sub_219BF6DD4();
    sub_218B72694(v2, v3, 2u);
    v15 = v5;
    v16 = v6;
    v17 = 2;
LABEL_42:
    sub_218B72694(v15, v16, v17);
    return v14 & 1;
  }

  if (v7 != 1)
  {
    goto LABEL_57;
  }

  if (v2 != v5 || v3 != v6)
  {
    v14 = sub_219BF78F4();
    sub_218B7264C(v5, v6, 1u);
    sub_218B7264C(v2, v3, 1u);
    sub_218B72694(v2, v3, 1u);
    v15 = v5;
    v16 = v6;
    v17 = 1;
    goto LABEL_42;
  }

  v8 = 1;
  sub_218B7264C(*a1, v3, 1u);
  sub_218B7264C(v2, v3, 1u);
  sub_218B72694(v2, v3, 1u);
  sub_218B72694(v2, v3, 1u);
  return v8;
}

uint64_t get_enum_tag_for_layout_string_7NewsUI221WebViewerConfigOptionO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_218B72484(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_218B724CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

uint64_t sub_218B72510(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t type metadata accessor for WebViewerConfig()
{
  result = qword_27CC0E540;
  if (!qword_27CC0E540)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218B7258C()
{
  sub_21873F65C(319);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_218B7264C(id result, id a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  if (a3 == 2)
  {
    return result;
  }

  if (a3 == 3 || a3 == 4)
  {
  }

  return result;
}

void sub_218B72694(void *a1, id a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    goto LABEL_5;
  }

  if (a3 == 2)
  {
  }

  else if (a3 == 3 || a3 == 4)
  {
LABEL_5:
  }
}

unint64_t sub_218B726F0()
{
  result = qword_27CC0E550;
  if (!qword_27CC0E550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0E550);
  }

  return result;
}

unint64_t sub_218B72744()
{
  v1 = v0;
  v21 = sub_219BDC104();
  v2 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v1 collectionViewLayout];
  [v1 bounds];
  v6 = [v5 layoutAttributesForElementsInRect_];

  if (v6)
  {
    sub_218B72B54();
    v7 = sub_219BF5924();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = sub_218C3DB14(&unk_282A22818);
  v23 = v8;
  if (v7 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v8 = 0;
    v20 = v7 & 0xC000000000000001;
    v10 = v7 & 0xFFFFFFFFFFFFFF8;
    v11 = (v2 + 1);
    while (1)
    {
      if (v20)
      {
        v12 = MEMORY[0x21CECE0F0](v8, v7);
      }

      else
      {
        if (v8 >= *(v10 + 16))
        {
          goto LABEL_16;
        }

        v12 = *(v7 + 8 * v8 + 32);
      }

      v13 = v12;
      v14 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v15 = [v12 indexPath];
      sub_219BDC0B4();

      v16 = v7;
      v17 = sub_219BDC0F4();
      (*v11)(v4, v21);
      v2 = &v23;
      v18 = v17;
      v7 = v16;
      sub_2194992B4(&v22, v18);

      ++v8;
      if (v14 == i)
      {
        v8 = v23;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_14:

  return v8;
}

uint64_t sub_218B729A0(uint64_t a1)
{
  v2 = v1;
  sub_218747BDC(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BDC104();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A1BF30(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_218A1C0F4(v6);
  }

  (*(v8 + 32))(v10, v6, v7);
  v12 = sub_219BDC094();
  v13 = [v2 cellForItemAtIndexPath_];

  if (v13)
  {
    [v13 setFocusGroupPriority_];
  }

  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_218B72B54()
{
  result = qword_280E8DBF0;
  if (!qword_280E8DBF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E8DBF0);
  }

  return result;
}

uint64_t sub_218B72BA0()
{
  sub_219BF7314();
  MEMORY[0x21CECC330](0x6365526465646461, 0xEF3D734449657069);
  v1 = MEMORY[0x277D837D0];
  v2 = MEMORY[0x21CECC6D0](*v0, MEMORY[0x277D837D0]);
  MEMORY[0x21CECC330](v2);

  MEMORY[0x21CECC330](0xD000000000000013, 0x8000000219CE9400);
  v3 = MEMORY[0x21CECC6D0](v0[1], v1);
  MEMORY[0x21CECC330](v3);

  MEMORY[0x21CECC330](0xD000000000000016, 0x8000000219CE9420);
  v4 = MEMORY[0x21CECC6D0](v0[2], v1);
  MEMORY[0x21CECC330](v4);

  MEMORY[0x21CECC330](0x6F4364656566202CLL, 0xEE003D747865746ELL);
  type metadata accessor for RecipeBoxRefreshRequest();
  sub_219BF0BD4();
  sub_219BF7484();
  return 0;
}

uint64_t type metadata accessor for RecipeBoxRefreshRequest()
{
  result = qword_27CC0E558;
  if (!qword_27CC0E558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218B72DA0()
{
  sub_2186D0BA8();
  if (v0 <= 0x3F)
  {
    sub_219BF0BD4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_218B72E64@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  sub_218B73358(0, &qword_27CC0C468, sub_2187148B8);
  MEMORY[0x28223BE20](v4 - 8);
  v38 = &v29 - v5;
  v36 = type metadata accessor for RecipeListRecipeBoxFeedGroupKnobs();
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B73358(0, &qword_27CC0E568, type metadata accessor for RecipeListRecipeBoxFeedGroupKnobs);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v43 = &v29 - v12;
  sub_218B733AC();
  v14 = v13;
  v37 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B73408();
  sub_219BF7B34();
  if (v2)
  {
    v17 = a1;
  }

  else
  {
    v31 = v11;
    v18 = v34;
    v33 = a1;
    v39 = 0x694C657069636572;
    v40 = 0xEA00000000007473;
    v41 = 0;
    v42 = 1;
    sub_218714674(&qword_27CC0C478, type metadata accessor for RecipeListRecipeBoxFeedGroupKnobs);
    v19 = v36;
    v32 = v14;
    sub_219BF76E4();
    v30 = v16;
    v20 = v7;
    v21 = v38;
    v22 = v31;
    v23 = v43;
    sub_218B7345C(v43, v31);
    v24 = *(v18 + 48);
    v25 = v24(v22, 1, v19);
    v26 = v33;
    if (v25 == 1)
    {
      sub_2187148B8(0);
      (*(*(v27 - 8) + 56))(v21, 1, 1, v27);
      sub_2189E3688(v21, v20);
      sub_218B734DC(v23);
      if (v24(v22, 1, v19) != 1)
      {
        sub_218B734DC(v22);
      }
    }

    else
    {
      sub_218B734DC(v23);
      sub_218B73554(v22, v20);
    }

    sub_218B73554(v20, v35);
    (*(v37 + 8))(v30, v32);
    v17 = v26;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_218B732C8(uint64_t a1)
{
  v2 = sub_218B73408();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218B73304(uint64_t a1)
{
  v2 = sub_218B73408();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_218B73358(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_218B733AC()
{
  if (!qword_27CC0E570)
  {
    sub_218B73408();
    v0 = sub_219BF7774();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0E570);
    }
  }
}

unint64_t sub_218B73408()
{
  result = qword_27CC0E578;
  if (!qword_27CC0E578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0E578);
  }

  return result;
}

uint64_t sub_218B7345C(uint64_t a1, uint64_t a2)
{
  sub_218B73358(0, &qword_27CC0E568, type metadata accessor for RecipeListRecipeBoxFeedGroupKnobs);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218B734DC(uint64_t a1)
{
  sub_218B73358(0, &qword_27CC0E568, type metadata accessor for RecipeListRecipeBoxFeedGroupKnobs);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218B73554(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeListRecipeBoxFeedGroupKnobs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_218B735CC()
{
  result = qword_27CC0E580;
  if (!qword_27CC0E580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0E580);
  }

  return result;
}

unint64_t sub_218B73624()
{
  result = qword_27CC0E588;
  if (!qword_27CC0E588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0E588);
  }

  return result;
}

unint64_t sub_218B7367C()
{
  result = qword_27CC0E590;
  if (!qword_27CC0E590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0E590);
  }

  return result;
}

uint64_t type metadata accessor for HistoryFeedGroup()
{
  result = qword_280ED86F0;
  if (!qword_280ED86F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_218B737B0()
{
  result = qword_27CC0E598;
  if (!qword_27CC0E598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0E598);
  }

  return result;
}

unint64_t sub_218B73808()
{
  result = qword_27CC0E5A0;
  if (!qword_27CC0E5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0E5A0);
  }

  return result;
}

unint64_t sub_218B73860()
{
  result = qword_280ECE810;
  if (!qword_280ECE810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECE810);
  }

  return result;
}

unint64_t sub_218B738B8()
{
  result = qword_280ECE800;
  if (!qword_280ECE800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECE800);
  }

  return result;
}

uint64_t sub_218B73954()
{
  v1 = type metadata accessor for ArticleListHistoryFeedGroup();
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B73EE8(v0, v6);
  sub_218B73F4C(v6, v4);
  v7 = sub_218CFBAD4();
  sub_218B73FB0(v4);
  return v7;
}

uint64_t sub_218B73A30(uint64_t a1)
{
  v2 = sub_218B7400C(&qword_280ED8740, type metadata accessor for HistoryFeedGroup);

  return MEMORY[0x282191918](a1, v2);
}

uint64_t sub_218B73AAC()
{
  sub_218B7400C(qword_280ED8750, type metadata accessor for HistoryFeedGroup);

  return sub_219BF1174();
}

uint64_t sub_218B73B30()
{
  v1 = type metadata accessor for ArticleListHistoryFeedGroup();
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = (&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B73EE8(v0, v6);
  sub_218B73F4C(v6, v4);
  v7 = *v4;

  sub_218B73FB0(v4);
  return v7;
}

uint64_t sub_218B73C10(uint64_t a1)
{
  v2 = sub_218B7400C(qword_280ED8750, type metadata accessor for HistoryFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_218B73C7C()
{
  sub_218B7400C(&qword_280ED8730, type metadata accessor for HistoryFeedGroup);

  return sub_219BE2324();
}

uint64_t sub_218B73DC0@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for ArticleListHistoryFeedGroup();
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B73EE8(v1, v8);
  sub_218B73F4C(v8, v6);
  a1[3] = v3;
  a1[4] = sub_218B7400C(&qword_27CC0E5A8, type metadata accessor for ArticleListHistoryFeedGroup);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_218B73F4C(v6, boxed_opaque_existential_1);
}

uint64_t sub_218B73EE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HistoryFeedGroup();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218B73F4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleListHistoryFeedGroup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218B73FB0(uint64_t a1)
{
  v2 = type metadata accessor for ArticleListHistoryFeedGroup();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218B7400C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218B74054(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleListHistoryFeedGroup();

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_21889123C);
}

uint64_t sub_218B740AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ArticleListHistoryFeedGroup();

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_2188912E8);
}

uint64_t sub_218B74114(uint64_t a1)
{
  result = type metadata accessor for ArticleListHistoryFeedGroup();
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t sub_218B74204(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_219BDC934();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_219BDC944();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_219BF5414();
  *v11 = sub_219BF5414();
  v11[1] = v12;
  (*(v9 + 104))(v11, *MEMORY[0x277D6D0A0], v8);
  (*(v5 + 104))(v7, *MEMORY[0x277D6D098], v4);
  v14[15] = 0;
  sub_21871A648();
  swift_allocObject();
  result = sub_219BDC9F4();
  *a3 = result;
  return result;
}

uint64_t sub_218B7441C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for MagazineCatalogModule();
    v7 = swift_allocObject();
    result = sub_2186CB1F0(v8, v7 + 16);
    *(v7 + 56) = v5;
    a2[3] = v6;
    a2[4] = &off_282A9DCD0;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218B744CC()
{
  type metadata accessor for MagazineCatalogViewController();
  sub_219BE2904();

  sub_2186C709C(0, &qword_27CC0E5C0);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC0E5C8);
  sub_219BE2914();
  type metadata accessor for MagazineCatalogRouter();
  sub_219BE19C4();

  sub_2186C709C(0, &qword_27CC0E5D0);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC0E5D8);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC0E5E0);
  sub_219BE2914();

  sub_2186C709C(0, &unk_27CC0E5E8);
  sub_219BE2914();

  sub_2189876FC();
  sub_219BE2904();

  type metadata accessor for MagazineCatalogBlueprintModifierFactory();
  sub_219BE2904();

  sub_218B78E70();
  sub_219BE2904();
  sub_219BE19D4();

  sub_218B7973C();
  sub_219BE2904();

  sub_219BE9C54();
  sub_219BE2904();

  sub_218B78F5C();
  sub_219BE2904();

  sub_218B79878();
  sub_219BE2904();

  sub_218B793E4();
  sub_219BE2904();

  type metadata accessor for MagazineCatalogBlueprintLayoutBuilder();
  sub_219BE2904();

  sub_218B79964();
  sub_219BE2904();

  sub_218B799F8();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C6148(0, &qword_280E8E4C0);
  sub_219BE2904();

  sub_218B79098();
  sub_219BE2904();

  sub_2186C709C(0, &qword_280EE3DE0);
  sub_219BE2914();
  sub_219BE95A4();
  sub_219BE19C4();

  sub_21879AAE0(0, &qword_280EE44C0, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D6E608]);
  sub_219BE2904();

  sub_218B79214();
  sub_219BE2904();
  sub_219BE19D4();

  sub_218B794D0();
  sub_219BE2904();
  sub_219BE19D4();

  sub_218B79650();
  sub_219BE2904();

  type metadata accessor for MagazineCatalogBlueprintViewCellProvider();
  sub_219BE2904();

  type metadata accessor for MagazineCatalogBlueprintViewSupplementaryViewProvider();
  sub_219BE2904();
  sub_219BE19D4();

  sub_218B79B34();
  sub_219BE2904();

  sub_219BE70E4();
  sub_219BE2904();

  sub_218B79BC8();
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE8A54();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C709C(0, &unk_280EE3C80);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC0E6E8);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC0E6F0);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC0E6F8);
  sub_219BE2914();

  sub_218B79CB4();
  sub_219BE2904();
}

uint64_t sub_218B74F3C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC0E5C0);
  result = sub_219BE1E34();
  if (!v23)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC0E5D0);
  result = sub_219BE1E34();
  v3 = v20;
  if (!v20)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B799F8();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
    MEMORY[0x28223BE20](v6);
    v8 = (v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8);
    v10 = *v8;
    v18 = type metadata accessor for MagazineCatalogStyler();
    v19 = &off_282A795A0;
    v17[0] = v10;
    v11 = objc_allocWithZone(type metadata accessor for MagazineCatalogViewController());
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
    MEMORY[0x28223BE20](v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = sub_218B7A014(*v14, v3, v4, v5, v11);
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v17);
    __swift_destroy_boxed_opaque_existential_1(v22);
    return v16;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_218B7521C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_218718690(a1, v11);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE33B0);
  result = sub_219BE1E34();
  if (!v10)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21876A328(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MagazineMoreActionsFactory();
  result = sub_219BE1E24();
  if (result)
  {
    v7 = result;
    type metadata accessor for MagazineCatalogRouter();
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8[4] = 0;
    swift_unknownObjectWeakInit();
    sub_2186CB1F0(v11, (v8 + 5));
    v8[10] = v5;
    result = sub_2186CB1F0(&v9, (v8 + 11));
    v8[16] = v6;
    v8[17] = v7;
    *a2 = v8;
    a2[1] = &off_282A55998;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_218B753F8(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for MagazineCatalogViewController();
  v2 = sub_219BE1E24();
  swift_unknownObjectWeakAssign();
}

uint64_t sub_218B75478@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC0E5D8);
  result = sub_219BE1E34();
  v5 = v26;
  if (!v26)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v27;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC0E5C8);
  result = sub_219BE1E34();
  v7 = v24;
  if (!v24)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC0E5E0);
  result = sub_219BE1E34();
  if (v23)
  {
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
    MEMORY[0x28223BE20](v9);
    v11 = (v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = *v11;
    v14 = type metadata accessor for MagazineCatalogTracker();
    v21[3] = v14;
    v21[4] = &off_282A86460;
    v21[0] = v13;
    type metadata accessor for MagazineCatalogEventHandler();
    v15 = swift_allocObject();
    v16 = __swift_mutable_project_boxed_opaque_existential_1(v21, v14);
    MEMORY[0x28223BE20](v16);
    v18 = (v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18);
    v20 = sub_218B7A148(v5, v6, v7, v8, *v18, v15);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v21);
    result = __swift_destroy_boxed_opaque_existential_1(v22);
    *a2 = v20;
    a2[1] = &off_282A49BE8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_218B75774@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_27CC0E5E8);
  result = sub_219BE1E34();
  if (!v16)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B78E70();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MagazineCatalogBlueprintModifierFactory();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90580);
  result = sub_219BE1E34();
  if (!v15)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_21876A328(0, &qword_280E90690, sub_2186F1660, &type metadata for MagazineFeedOfflineModel, MEMORY[0x277D33538]);
  v8 = objc_allocWithZone(v7);
  v9 = sub_219BF1B04();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B7A520();
  result = sub_219BE1E24();
  if (result)
  {
    v10 = result;
    sub_218B7A584();
    v11 = swift_allocObject();
    *(v11 + 3) = 0;
    swift_unknownObjectWeakInit();
    v12 = *(*v11 + 128);
    v13 = type metadata accessor for MagazineCategoryConfig(0);
    (*(*(v13 - 8) + 56))(&v11[v12], 1, 1, v13);
    *&v11[*(*v11 + 136)] = 0;
    v14 = &v11[*(*v11 + 160)];
    *v14 = 0x6465727574616566;
    *(v14 + 1) = 0xE800000000000000;
    *(v11 + 6) = v16;
    *(v11 + 7) = v17;
    *(v11 + 4) = v5;
    *(v11 + 5) = v6;
    *&v11[*(*v11 + 144)] = v9;
    *&v11[*(*v11 + 152)] = v10;
    *(v16 + 24) = &off_282A93568;
    result = swift_unknownObjectWeakAssign();
    *a2 = v11;
    a2[1] = &off_282A93578;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_218B75A7C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v23 = sub_219BE14C4();
  v4 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE14A4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v12 = result;
  v21 = v8;
  v22 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE0204();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v13 = result;
  v20 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218716B60();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v14 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FDF0);
  result = sub_219BE1E34();
  if (v25)
  {
    v15 = type metadata accessor for MagazineCatalogTracker();
    v16 = swift_allocObject();
    v16[2] = v12;
    v16[3] = v13;
    v16[4] = v14;
    sub_218718690(v24, (v16 + 5));
    (*(v4 + 104))(v6, *MEMORY[0x277D2F2C8], v23);
    sub_219BE1484();
    sub_218B7A618(&qword_280EE8010, MEMORY[0x277D2F280]);
    v17 = v22;
    sub_219BDD1F4();
    (*(v21 + 8))(v10, v17);
    result = __swift_destroy_boxed_opaque_existential_1(v24);
    v18 = v20;
    v20[3] = v15;
    v18[4] = &off_282A86460;
    *v18 = v16;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_218B75DC8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EA3480);
  result = sub_219BE1E34();
  if (!v20)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E9FDE0);
  result = sub_219BE1E34();
  if (!v18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EC30E0);
  result = sub_219BE1E34();
  v5 = v16[0];
  if (v16[0])
  {
    v6 = v16[1];
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
    MEMORY[0x28223BE20](v7);
    v9 = (v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9);
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
    MEMORY[0x28223BE20](v11);
    v13 = (v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13);
    v15 = sub_218B7A334(*v9, *v13, v5, v6);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v17);
    result = __swift_destroy_boxed_opaque_existential_1(v19);
    *a2 = v15;
    a2[1] = &off_282A75E50;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_218B760A4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EA6010);
  result = sub_219BE1E34();
  if (v16)
  {
    v2 = __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
    MEMORY[0x28223BE20](v2);
    v4 = (v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v5 + 16))(v4);
    v6 = *v4;
    v7 = type metadata accessor for MagazineGridItemModelFactory();
    v14[3] = v7;
    v14[4] = &off_282A39B30;
    v14[0] = v6;
    type metadata accessor for MagazineCatalogBlueprintModifierFactory();
    v8 = swift_allocObject();
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v14, v7);
    MEMORY[0x28223BE20](v9);
    v11 = (v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = *v11;
    v8[5] = v7;
    v8[6] = &off_282A39B30;
    v8[2] = v13;
    __swift_destroy_boxed_opaque_existential_1(v14);
    __swift_destroy_boxed_opaque_existential_1(v15);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218B762B4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189876FC();
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_218B78F5C();
    result = sub_219BE1E24();
    if (result)
    {
      sub_218B78E70();
      swift_allocObject();
      return sub_219BE6EB4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218B7639C(uint64_t a1, void *a2)
{
  sub_218B79E3C();
  swift_allocObject();
  sub_219BE96E4();
  sub_218B79F28();
  swift_allocObject();
  sub_218B7A618(&qword_27CC0E758, sub_218B79E3C);
  sub_219BE8FA4();
  sub_219BE6ED4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_218B7973C();
  result = sub_219BE1E24();
  if (result)
  {
    swift_allocObject();
    sub_218B7A618(&qword_27CC0E760, sub_218B7973C);
    sub_219BE8FA4();
    sub_219BE6ED4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218B76518(void *a1)
{
  sub_218B79DE4();
  MEMORY[0x28223BE20](v2 - 8);
  sub_219BEA594();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MagazineCatalogBlueprintLayoutBuilder();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B79878();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B79964();
  result = sub_219BE1E24();
  if (result)
  {
    sub_218B7973C();
    swift_allocObject();
    return sub_219BEA474();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_218B766AC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B79098();
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EE39D0);
    result = sub_219BE1E34();
    if (v3)
    {
      sub_218B78F5C();
      swift_allocObject();
      return sub_219BE72C4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218B76804(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void))
{
  a2(0);
  swift_allocObject();
  return a3();
}

uint64_t sub_218B76848(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21879AAE0(0, &unk_280E91DA0, MEMORY[0x277D33AC8], MEMORY[0x277D33AC0], MEMORY[0x277D31F40]);
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_27CC0E6F8);
    result = sub_219BE1E34();
    if (v18)
    {
      v4 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
      MEMORY[0x28223BE20](v4);
      v6 = (v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v7 + 16))(v6);
      v8 = *v6;
      v9 = type metadata accessor for MagazineCatalogSectionHeaderViewLayoutAttributesFactory();
      v16[3] = v9;
      v16[4] = &off_282A800E8;
      v16[0] = v8;
      type metadata accessor for MagazineCatalogBlueprintLayoutBuilder();
      v10 = swift_allocObject();
      v11 = __swift_mutable_project_boxed_opaque_existential_1(v16, v9);
      MEMORY[0x28223BE20](v11);
      v13 = (v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v14 + 16))(v13);
      v15 = *v13;
      v10[6] = v9;
      v10[7] = &off_282A800E8;
      v10[2] = v3;
      v10[3] = v15;
      __swift_destroy_boxed_opaque_existential_1(v16);
      __swift_destroy_boxed_opaque_existential_1(v17);
      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218B76AD4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B793E4();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE9C54();
  result = sub_219BE1DE4();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE3DE0);
  result = sub_219BE1DF4();
  if (v3)
  {
    sub_218B79964();
    swift_allocObject();
    return sub_219BE99A4();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_218B76C50(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189876FC();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B79098();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE3DE0);
  result = sub_219BE1DF4();
  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE39D0);
  result = sub_219BE1E34();
  if (!v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B79B34();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE70E4();
  result = sub_219BE1DE4();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (!v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    sub_218B7A618(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
    sub_218B799F8();
    v4 = objc_allocWithZone(v3);
    return sub_219BE8754();
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_218B76F5C(uint64_t a1, void *a2)
{
  v3 = sub_219BE8FC4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BF3E94();
  if (sub_219BE1E24())
  {
    sub_218B7A618(&qword_280E8FF80, MEMORY[0x277D34268]);
  }

  sub_219BE8704();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_218B79CB4();
  v8 = v7;
  v9 = sub_219BE1E24();
  v10 = v9;
  if (v9)
  {
    v9 = sub_218B7A618(&qword_27CC0E740, sub_218B79CB4);
  }

  else
  {
    v8 = 0;
    v18 = 0;
    v19 = 0;
  }

  v17 = v10;
  v20 = v8;
  v21 = v9;
  sub_219BE86F4();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_218B79964();
  v12 = v11;
  v13 = sub_219BE1E24();
  v14 = v13;
  if (v13)
  {
    v13 = sub_218B7A618(&qword_27CC0E738, sub_218B79964);
  }

  else
  {
    v12 = 0;
    v18 = 0;
    v19 = 0;
  }

  v17 = v14;
  v20 = v12;
  v21 = v13;
  sub_219BE8724();
  (*(v4 + 104))(v6, *MEMORY[0x277D6E3C8], v3);
  return sub_219BE86C4();
}

uint64_t sub_218B771EC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21879AAE0(0, &qword_280EE44C0, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D6E608]);
  result = sub_219BE1DE4();
  if (result)
  {
    v2 = result;
    v3 = [objc_allocWithZone(MEMORY[0x277D752A0]) initWithFrame:result collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218B772D4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E4C0);
  result = sub_219BE1DE4();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B79214();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B794D0();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B79650();
  result = sub_219BE1E24();
  if (result)
  {
    sub_218B79098();
    swift_allocObject();
    return sub_219BE7BB4();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_218B77448@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B79098();
  result = sub_219BE1E24();
  if (result)
  {
    sub_219BE7BC4();

    sub_219BE95A4();
    swift_allocObject();
    result = sub_219BE9594();
    v4 = MEMORY[0x277D6E690];
    *a2 = result;
    a2[1] = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218B77500()
{
  v0 = sub_219BE80A4();
  MEMORY[0x28223BE20](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6DDE0]);
  return sub_219BE9574();
}

uint64_t sub_218B775D0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE9C54();
  result = sub_219BE1DE4();
  if (result)
  {
    sub_21879AAE0(0, &qword_280EE44C0, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D6E608]);
    v3 = objc_allocWithZone(v2);
    return sub_219BE9454();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218B776A0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189876FC();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B793E4();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MagazineCatalogBlueprintViewCellProvider();
  sub_218718690(a1, v8);
  v4 = swift_allocObject();
  sub_2186CB1F0(v8, v4 + 16);
  v5 = sub_219BE1E04();

  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MagazineCatalogBlueprintViewSupplementaryViewProvider();
  result = sub_219BE1E24();
  if (result)
  {
    *&v8[0] = v3;
    sub_218B79214();
    v7 = objc_allocWithZone(v6);
    return sub_219BE9B64();
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_218B7783C(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C6148(0, &qword_280E8E4C0);
  v3 = sub_219BE1DE4();
  if (v3)
  {
    sub_2186C6148(0, &qword_280E8E790);
    sub_219BE1BB4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_218B77954(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280EE3C80);
  result = sub_219BE1DF4();
  if (v4)
  {
    __swift_project_boxed_opaque_existential_1(v3, v4);
    sub_219BEA274();
    sub_219BE9B74();

    return __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218B77A30(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189876FC();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B793E4();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B79B34();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (!v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_218B7A618(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE4800);
  result = sub_219BE1E34();
  if (v5)
  {
    sub_218B794D0();
    v4 = objc_allocWithZone(v3);
    return sub_219BE9744();
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_218B77C80(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BE70E4();
  sub_219BE1DE4();
  sub_219BE9764();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_218B79BC8();
  if (sub_219BE1E24())
  {
    sub_218B7A618(&qword_27CC0E730, sub_218B79BC8);
  }

  sub_219BE9774();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for MagazineCatalogViewController();
  sub_219BE1E24();
  return sub_219BE9714();
}

uint64_t sub_218B77DC0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189876FC();
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_218B793E4();
    result = sub_219BE1E24();
    if (result)
    {
      sub_218B79650();
      v4 = objc_allocWithZone(v3);
      return sub_219BE9F24();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_218B77E80(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E91810);
  result = sub_219BE1E34();
  if (v5)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, qword_280EC41D0);
    result = sub_219BE1E34();
    if (v3)
    {
      type metadata accessor for MagazineCatalogBlueprintViewCellProvider();
      result = swift_allocObject();
      result[2] = v5;
      result[3] = v6;
      result[4] = v3;
      result[5] = v4;
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

uint64_t sub_218B77F78(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC0E6E8);
  result = sub_219BE1E34();
  if (v16)
  {
    v2 = __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
    MEMORY[0x28223BE20](v2);
    v4 = (v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v5 + 16))(v4);
    v6 = *v4;
    v7 = type metadata accessor for MagazineCatalogSectionHeaderViewRenderer();
    v14[3] = v7;
    v14[4] = &off_282A4A770;
    v14[0] = v6;
    type metadata accessor for MagazineCatalogBlueprintViewSupplementaryViewProvider();
    v8 = swift_allocObject();
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v14, v7);
    MEMORY[0x28223BE20](v9);
    v11 = (v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = *v11;
    v8[7] = v7;
    v8[8] = &off_282A4A770;
    v8[3] = 0;
    v8[4] = v13;
    swift_unknownObjectWeakInit();
    v8[9] = 0;
    __swift_destroy_boxed_opaque_existential_1(v14);
    __swift_destroy_boxed_opaque_existential_1(v15);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_218B78198(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for MagazineCatalogViewController();
  v4 = sub_219BE1E24();
  v3 = &off_282A9A630;
  if (!v4)
  {
    v3 = 0;
  }

  *(v2 + 24) = v3;
  swift_unknownObjectWeakAssign();
}

uint64_t sub_218B7822C(void *a1)
{
  v2 = sub_219BE9BC4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_219BE9BE4();
  MEMORY[0x28223BE20](v6 - 8);
  sub_218B79D48();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189876FC();
  result = sub_219BE1E24();
  if (result)
  {
    v13 = result;
    (*(v9 + 104))(v11, *MEMORY[0x277D6E378], v8);
    *v5 = 0;
    (*(v3 + 104))(v5, *MEMORY[0x277D6E828], v2);
    sub_219BE9BD4();
    v14[1] = v13;
    sub_218B79B34();
    swift_allocObject();
    return sub_219BE8EC4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218B78484(void *a1)
{
  sub_2187F2110();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C09EC0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B79BC8();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = sub_218B7A618(&qword_27CC0E720, sub_218B79BC8);
    *(v2 + 32) = v4;
    *(v2 + 40) = v5;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219BE8A54();
    result = sub_219BE1DE4();
    if (result)
    {
      v6 = MEMORY[0x277D6E168];
      *(v2 + 48) = result;
      *(v2 + 56) = v6;
      sub_219BE70E4();
      swift_allocObject();
      return sub_219BE70D4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218B785C8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B79098();
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2189876FC();
    result = sub_219BE1E24();
    if (result)
    {
      sub_218B79BC8();
      swift_allocObject();
      return sub_219BE9AB4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218B786DC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B79098();
  result = sub_219BE1E24();
  if (result)
  {
    sub_219BE7BC4();

    sub_219BE8A54();
    swift_allocObject();
    return sub_219BE8A44();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218B78798(uint64_t a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_218B799F8();
  v7 = sub_219BE1E24();
  if (v7)
  {
    v8 = v7;
    v9 = sub_218B7A618(a3, sub_218B799F8);
    v7 = v8;
  }

  else
  {
    v9 = 0;
  }

  return a5(v7, v9);
}

uint64_t sub_218B7884C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B799F8();
  v4 = v3;
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    a2[3] = v4;
    result = sub_218B7A618(&qword_27CC0E708, sub_218B799F8);
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218B78934@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EDC810);
  result = sub_219BE1E34();
  if (v24)
  {
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
    MEMORY[0x28223BE20](v8);
    v10 = (v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10);
    v12 = *v10;
    v13 = type metadata accessor for BaseStyler();
    v22[3] = v13;
    v14 = sub_218B7A618(&qword_280EDFED0, type metadata accessor for BaseStyler);
    v22[4] = v14;
    v22[0] = v12;
    v15 = a2(0);
    v16 = swift_allocObject();
    v17 = __swift_mutable_project_boxed_opaque_existential_1(v22, v13);
    MEMORY[0x28223BE20](v17);
    v19 = (v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19);
    v21 = *v19;
    v16[5] = v13;
    v16[6] = v14;
    v16[2] = v21;
    __swift_destroy_boxed_opaque_existential_1(v22);
    result = __swift_destroy_boxed_opaque_existential_1(v23);
    a4[3] = v15;
    a4[4] = a3;
    *a4 = v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218B78BC0@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC0E6F0);
  result = sub_219BE1E34();
  if (v23)
  {
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
    MEMORY[0x28223BE20](v8);
    v10 = (v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10);
    v12 = *v10;
    v13 = type metadata accessor for MagazineCatalogSectionHeaderViewStyler();
    v21[3] = v13;
    v21[4] = &off_282A4EC88;
    v21[0] = v12;
    v14 = a2(0);
    v15 = swift_allocObject();
    v16 = __swift_mutable_project_boxed_opaque_existential_1(v21, v13);
    MEMORY[0x28223BE20](v16);
    v18 = (v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18);
    v20 = *v18;
    v15[5] = v13;
    v15[6] = &off_282A4EC88;
    v15[2] = v20;
    __swift_destroy_boxed_opaque_existential_1(v21);
    result = __swift_destroy_boxed_opaque_existential_1(v22);
    a4[3] = v14;
    a4[4] = a3;
    *a4 = v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218B78DF8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B79098();
  result = sub_219BE1E24();
  if (result)
  {
    sub_218B79CB4();
    swift_allocObject();
    return sub_219BE8914();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_218B78E70()
{
  if (!qword_27CC0E5F8)
  {
    sub_2189876FC();
    sub_218B78F5C();
    sub_218B7A618(&qword_27CC0B858, sub_2189876FC);
    sub_218B7A618(&qword_27CC0E688, sub_218B78F5C);
    v0 = sub_219BE6F54();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0E5F8);
    }
  }
}

void sub_218B78F5C()
{
  if (!qword_27CC0E600)
  {
    type metadata accessor for MagazineCatalogSectionDescriptor(255);
    type metadata accessor for MagazineCatalogModel();
    sub_218B79098();
    sub_218B7A618(&unk_27CC0AE10, type metadata accessor for MagazineCatalogSectionDescriptor);
    sub_218B7A618(&qword_27CC0B870, type metadata accessor for MagazineCatalogModel);
    sub_218B7A618(&qword_27CC0E680, sub_218B79098);
    v0 = sub_219BE72E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0E600);
    }
  }
}

void sub_218B79098()
{
  if (!qword_27CC0E608)
  {
    sub_2186C6148(255, &qword_280E8E4C0);
    sub_218B79214();
    sub_218B794D0();
    sub_218B79650();
    type metadata accessor for MagazineCatalogViewController();
    sub_218B7A618(&qword_27CC0E668, sub_218B79214);
    sub_218B7A618(&qword_27CC0E670, sub_218B794D0);
    sub_218B7A618(&qword_27CC0E678, sub_218B79650);
    v0 = sub_219BE7BE4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0E608);
    }
  }
}

void sub_218B79214()
{
  if (!qword_27CC0E618)
  {
    sub_2189876FC();
    sub_218B793E4();
    type metadata accessor for MagazineCatalogBlueprintViewCellProvider();
    type metadata accessor for MagazineCatalogBlueprintViewSupplementaryViewProvider();
    sub_218B7A618(&qword_27CC0B858, sub_2189876FC);
    sub_218B7A618(&qword_27CC0E630, sub_218B793E4);
    sub_218B7A618(&qword_27CC0E638, type metadata accessor for MagazineCatalogBlueprintViewCellProvider);
    sub_218B7A618(&qword_27CC0E640, type metadata accessor for MagazineCatalogBlueprintViewSupplementaryViewProvider);
    sub_218B7A618(&qword_27CC0E648, type metadata accessor for MagazineCatalogLayoutModel);
    v0 = sub_219BE9B94();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0E618);
    }
  }
}

void sub_218B793E4()
{
  if (!qword_27CC0E620)
  {
    type metadata accessor for MagazineCatalogLayoutSectionDescriptor();
    type metadata accessor for MagazineCatalogLayoutModel();
    sub_218B7A618(&qword_27CC0AD38, type metadata accessor for MagazineCatalogLayoutSectionDescriptor);
    sub_218B7A618(&qword_27CC0AE30, type metadata accessor for MagazineCatalogLayoutModel);
    v0 = sub_219BE8564();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0E620);
    }
  }
}

void sub_218B794D0()
{
  if (!qword_27CC0E650)
  {
    sub_2189876FC();
    sub_218B793E4();
    type metadata accessor for MagazineCatalogViewController();
    sub_218B7A618(&qword_27CC0B858, sub_2189876FC);
    sub_218B7A618(&qword_27CC0E630, sub_218B793E4);
    sub_218B7A618(&qword_27CC0E658, type metadata accessor for MagazineCatalogViewController);
    sub_218B7A618(&qword_27CC0E648, type metadata accessor for MagazineCatalogLayoutModel);
    v0 = sub_219BE9794();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0E650);
    }
  }
}

void sub_218B79650()
{
  if (!qword_27CC0E660)
  {
    sub_2189876FC();
    sub_218B793E4();
    sub_218B7A618(&qword_27CC0B858, sub_2189876FC);
    sub_218B7A618(&qword_27CC0E630, sub_218B793E4);
    v0 = sub_219BE9F34();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0E660);
    }
  }
}

void sub_218B7973C()
{
  if (!qword_27CC0E690)
  {
    sub_218B793E4();
    type metadata accessor for MagazineCatalogBlueprintLayoutBuilder();
    sub_218B79878();
    sub_218B7A618(&qword_27CC0E630, sub_218B793E4);
    sub_218B7A618(&qword_27CC0E6A8, type metadata accessor for MagazineCatalogBlueprintLayoutBuilder);
    sub_218B7A618(&qword_27CC0E6B0, sub_218B79878);
    v0 = sub_219BEA4A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0E690);
    }
  }
}

void sub_218B79878()
{
  if (!qword_27CC0E698)
  {
    type metadata accessor for MagazineCatalogLayoutSectionDescriptor();
    type metadata accessor for MagazineCatalogLayoutModel();
    sub_218B7A618(&qword_27CC0E6A0, type metadata accessor for MagazineCatalogLayoutSectionDescriptor);
    sub_218B7A618(&qword_27CC0E648, type metadata accessor for MagazineCatalogLayoutModel);
    v0 = sub_219BE9974();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0E698);
    }
  }
}

void sub_218B79964()
{
  if (!qword_27CC0E6B8)
  {
    sub_218B793E4();
    sub_218B7A618(&qword_27CC0E630, sub_218B793E4);
    v0 = sub_219BE99B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0E6B8);
    }
  }
}

void sub_218B799F8()
{
  if (!qword_27CC0E6C0)
  {
    sub_2189876FC();
    sub_218B79098();
    type metadata accessor for MagazineCatalogViewController();
    sub_218B7A618(&qword_27CC0B858, sub_2189876FC);
    sub_218B7A618(&qword_27CC0E680, sub_218B79098);
    sub_218B7A618(&qword_27CC0E658, type metadata accessor for MagazineCatalogViewController);
    v0 = sub_219BE8774();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0E6C0);
    }
  }
}

void sub_218B79B34()
{
  if (!qword_27CC0E6C8)
  {
    sub_2189876FC();
    sub_218B7A618(&qword_27CC0B858, sub_2189876FC);
    v0 = sub_219BE8ED4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0E6C8);
    }
  }
}

void sub_218B79BC8()
{
  if (!qword_27CC0E6D0)
  {
    sub_218B79098();
    sub_2189876FC();
    sub_218B7A618(&qword_27CC0E680, sub_218B79098);
    sub_218B7A618(&unk_27CC0E6D8, sub_2189876FC);
    v0 = sub_219BE9AD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0E6D0);
    }
  }
}

void sub_218B79CB4()
{
  if (!qword_27CC0E700)
  {
    sub_218B79098();
    sub_218B7A618(&qword_27CC0E680, sub_218B79098);
    v0 = sub_219BE8934();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0E700);
    }
  }
}

void sub_218B79D48()
{
  if (!qword_27CC0E728)
  {
    sub_2189876FC();
    sub_218B7A618(&qword_27CC0B858, sub_2189876FC);
    v0 = sub_219BE8EB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0E728);
    }
  }
}

void sub_218B79DE4()
{
  if (!qword_280EE3A90)
  {
    sub_219BEA5A4();
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE3A90);
    }
  }
}

void sub_218B79E3C()
{
  if (!qword_27CC0E748)
  {
    type metadata accessor for MagazineCatalogSectionDescriptor(255);
    type metadata accessor for MagazineCatalogModel();
    sub_218B7A618(&unk_27CC0AE10, type metadata accessor for MagazineCatalogSectionDescriptor);
    sub_218B7A618(&qword_27CC0B870, type metadata accessor for MagazineCatalogModel);
    v0 = sub_219BE96F4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0E748);
    }
  }
}

void sub_218B79F28()
{
  if (!qword_27CC0E750)
  {
    type metadata accessor for MagazineCatalogSectionDescriptor(255);
    type metadata accessor for MagazineCatalogModel();
    sub_218B7A618(&unk_27CC0AE10, type metadata accessor for MagazineCatalogSectionDescriptor);
    sub_218B7A618(&qword_27CC0B870, type metadata accessor for MagazineCatalogModel);
    v0 = sub_219BE8FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0E750);
    }
  }
}

char *sub_218B7A014(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char *a5)
{
  ObjectType = swift_getObjectType();
  v20[3] = type metadata accessor for MagazineCatalogStyler();
  v20[4] = &off_282A795A0;
  v20[0] = a1;
  sub_218718690(v20, &a5[OBJC_IVAR____TtC7NewsUI229MagazineCatalogViewController_styler]);
  v11 = &a5[OBJC_IVAR____TtC7NewsUI229MagazineCatalogViewController_eventHandler];
  *v11 = a2;
  *(v11 + 1) = a3;
  *&a5[OBJC_IVAR____TtC7NewsUI229MagazineCatalogViewController_blueprintViewController] = a4;
  v12 = &a5[OBJC_IVAR____TtC7NewsUI229MagazineCatalogViewController_presentation];
  *v12 = 0;
  *(v12 + 1) = 0;
  v19.receiver = a5;
  v19.super_class = ObjectType;
  swift_unknownObjectRetain();
  v13 = a4;
  v14 = objc_msgSendSuper2(&v19, sel_initWithNibName_bundle_, 0, 0);
  *(*&v14[OBJC_IVAR____TtC7NewsUI229MagazineCatalogViewController_eventHandler] + 24) = &off_282A9A648;
  swift_unknownObjectWeakAssign();
  v15 = *&v14[OBJC_IVAR____TtC7NewsUI229MagazineCatalogViewController_blueprintViewController];
  v16 = v14;
  v17 = v15;
  sub_219BE8744();

  __swift_destroy_boxed_opaque_existential_1(v20);
  return v16;
}

void *sub_218B7A148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v16[3] = type metadata accessor for MagazineCatalogTracker();
  v16[4] = &off_282A86460;
  v16[0] = a5;
  a6[3] = 0;
  swift_unknownObjectWeakInit();
  a6[4] = a1;
  a6[5] = a2;
  a6[6] = a3;
  a6[7] = a4;
  sub_218718690(v16, (a6 + 8));
  ObjectType = swift_getObjectType();
  v13 = *(a2 + 16);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  v13(v14, &off_282A49BA0, ObjectType, a2);
  __swift_destroy_boxed_opaque_existential_1(v16);
  *(a6[6] + 32) = &off_282A49BD8;
  swift_unknownObjectWeakAssign();
  return a6;
}

uint64_t sub_218B7A24C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[3] = type metadata accessor for MagazineCategoryConfigService();
  v13[4] = &off_282A6EDE8;
  v13[0] = a1;
  v12[3] = type metadata accessor for MagazineGridModelLoaderFactory();
  v12[4] = &off_282A58670;
  v12[0] = a2;
  *(a5 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a5 + 104) = 0;
  *(a5 + 88) = 0u;
  *(a5 + 72) = 0u;
  sub_218718690(v13, a5 + 32);
  sub_218718690(v12, a5 + 112);
  *(a5 + 152) = a3;
  *(a5 + 160) = a4;
  swift_unknownObjectRetain();

  sub_219274EC8(v10, a3);

  __swift_destroy_boxed_opaque_existential_1(v12);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return a5;
}

uint64_t sub_218B7A334(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v23 = type metadata accessor for MagazineCategoryConfigService();
  v24 = &off_282A6EDE8;
  v22[0] = a1;
  v20 = type metadata accessor for MagazineGridModelLoaderFactory();
  v21 = &off_282A58670;
  v19[0] = a2;
  type metadata accessor for MagazineCatalogDataManager();
  v8 = swift_allocObject();
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
  MEMORY[0x28223BE20](v9);
  v11 = (v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
  MEMORY[0x28223BE20](v13);
  v15 = (v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = sub_218B7A24C(*v11, *v15, a3, a4, v8);
  __swift_destroy_boxed_opaque_existential_1(v19);
  __swift_destroy_boxed_opaque_existential_1(v22);
  return v17;
}

unint64_t sub_218B7A520()
{
  result = qword_280E8DC20;
  if (!qword_280E8DC20)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280E8DC20);
  }

  return result;
}

void sub_218B7A584()
{
  if (!qword_27CC0E768)
  {
    type metadata accessor for MagazineCatalogBlueprintModifierFactory();
    sub_218B7A618(&qword_27CC0E770, type metadata accessor for MagazineCatalogBlueprintModifierFactory);
    v0 = type metadata accessor for MagazineCatalogInteractor();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0E768);
    }
  }
}

uint64_t sub_218B7A618(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_218B7A7F4(void *a1)
{
  v3 = sub_219BDCAF4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BF2A64();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v1 + 64), *(v1 + 88));
  sub_219BF2C64();
  v11 = sub_219BF2A34();
  (*(v8 + 8))(v10, v7);
  [a1 setBackgroundColor_];

  v12 = [a1 layer];
  sub_219BF0CD4();
  (*(v4 + 104))(v6, *MEMORY[0x277D6D198], v3);
  sub_219BF0CC4();
  v14 = v13;
  (*(v4 + 8))(v6, v3);
  [v12 setCornerRadius_];

  v15 = [a1 layer];
  [v15 setCornerCurve_];
}

void sub_218B7AA58(void *a1)
{
  v2 = v1;
  v17 = sub_219BF2A64();
  v4 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BDCAF4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 layer];
  sub_219BF0CD4();
  (*(v8 + 104))(v10, *MEMORY[0x277D6D198], v7);
  sub_219BF0CC4();
  v13 = v12;
  (*(v8 + 8))(v10, v7);
  [v11 setCornerRadius_];

  v14 = [a1 layer];
  [v14 setCornerCurve_];

  __swift_project_boxed_opaque_existential_1((v2 + 64), *(v2 + 88));
  sub_219BF2C64();
  v15 = sub_219BF2A54();
  (*(v4 + 8))(v6, v17);
  [a1 setTintColor_];
}

uint64_t sub_218B7ACC4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_218B7AD88()
{
  result = sub_219BF3034();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_218B7AE04(void *a1)
{
  sub_218B7B7B8(0, &qword_280E8C6B0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B7B6A4();
  sub_219BF7B44();
  v9[15] = 0;
  sub_219BF77F4();
  if (!v1)
  {
    v9[14] = 1;
    sub_219BF77F4();
    type metadata accessor for TodayLocalNewsArticle(0);
    v9[13] = 2;
    sub_219BF3034();
    sub_218B7B81C(&qword_280E90218);
    sub_219BF7834();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_218B7AFE0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v23 = sub_219BF3034();
  v20 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B7B7B8(0, &qword_280E8CFE8, MEMORY[0x277D844C8]);
  v24 = v6;
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = type metadata accessor for TodayLocalNewsArticle(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B7B6A4();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = a1;
  v12 = v22;
  v13 = v23;
  v27 = 0;
  *v11 = sub_219BF76F4();
  v11[1] = v14;
  v26 = 1;
  v11[2] = sub_219BF76F4();
  v11[3] = v15;
  v25 = 2;
  sub_218B7B81C(&unk_280E90208);
  v18 = v5;
  sub_219BF7734();
  (*(v12 + 8))(v8, v24);
  (*(v20 + 32))(v11 + *(v9 + 24), v18, v13);
  sub_218B7B6F8(v11, v21);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return sub_218B7B75C(v11);
}

uint64_t sub_218B7B374()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x49656C6369747261;
  }
}

uint64_t sub_218B7B3E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_218B7BA7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_218B7B408(uint64_t a1)
{
  v2 = sub_218B7B6A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218B7B444(uint64_t a1)
{
  v2 = sub_218B7B6A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218B7B4B0()
{
  v1 = v0;
  sub_219BF7314();

  MEMORY[0x21CECC330](*v1, v1[1]);
  MEMORY[0x21CECC330](0x697461636F6C202CLL, 0xEC000000203A6E6FLL);
  MEMORY[0x21CECC330](v1[2], v1[3]);
  MEMORY[0x21CECC330](41, 0xE100000000000000);
  return 0x656C636974726128;
}

void sub_218B7B564()
{
  v1 = *(v0 + 8);
  v2 = [v1 asSection];
  if (v2)
  {
    v3 = [v2 parentID];
    if (v3)
    {
      v4 = v3;
      v6 = [objc_opt_self() nss:v3 NewsURLForTagID:?];

      sub_219BDB8B4();
      swift_unknownObjectRelease();
      goto LABEL_8;
    }

    swift_unknownObjectRelease();
  }

  v5 = [v1 identifier];
  if (!v5)
  {
    sub_219BF5414();
    v5 = sub_219BF53D4();
  }

  v6 = [objc_opt_self() nss:v5 NewsURLForTagID:?];

  sub_219BDB8B4();
LABEL_8:
}

unint64_t sub_218B7B6A4()
{
  result = qword_280EE2EC0;
  if (!qword_280EE2EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE2EC0);
  }

  return result;
}

uint64_t sub_218B7B6F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TodayLocalNewsArticle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218B7B75C(uint64_t a1)
{
  v2 = type metadata accessor for TodayLocalNewsArticle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_218B7B7B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218B7B6A4();
    v7 = a3(a1, &type metadata for TodayLocalNewsArticle.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218B7B81C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_219BF3034();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_218B7B8B8()
{
  result = sub_2186D6710(319, &qword_280E8E260);
  if (v1 <= 0x3F)
  {
    result = sub_2186D6710(319, &qword_280E8E680);
    if (v2 <= 0x3F)
    {
      result = sub_219BF3034();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_218B7B978()
{
  result = qword_27CC0E778;
  if (!qword_27CC0E778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0E778);
  }

  return result;
}

unint64_t sub_218B7B9D0()
{
  result = qword_280EE2EB0;
  if (!qword_280EE2EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE2EB0);
  }

  return result;
}

unint64_t sub_218B7BA28()
{
  result = qword_280EE2EB8;
  if (!qword_280EE2EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE2EB8);
  }

  return result;
}

uint64_t sub_218B7BA7C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49656C6369747261 && a2 == 0xE900000000000044;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000219CE9560 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CD9270 == a2)
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

uint64_t sub_218B7BBAC(uint64_t a1)
{
  sub_218B7E0DC(0, &qword_27CC0E780, MEMORY[0x277D6DA48]);
  v3 = v2;
  v125 = *(v2 - 8);
  v123 = *(v125 + 64);
  MEMORY[0x28223BE20](v2);
  v124 = &v102 - v4;
  v117 = type metadata accessor for MyMagazinesModel();
  MEMORY[0x28223BE20](v117);
  v140 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D83D88];
  sub_218B7E304(0, &unk_280EE87A0, MEMORY[0x277D2DAB8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v109 = &v102 - v8;
  sub_218B7E304(0, &unk_280EE8380, MEMORY[0x277D2E6C8], v6);
  MEMORY[0x28223BE20](v9 - 8);
  v108 = &v102 - v10;
  v116 = sub_219BE16E4();
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v121 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_219BDF584();
  v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v119 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  v141 = v13;
  MEMORY[0x28223BE20](v13);
  v107 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B7E028();
  v134 = v15;
  MEMORY[0x28223BE20](v15);
  v136 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B7E0BC(0);
  v126 = v17;
  v128 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v133 = &v102 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v127 = &v102 - v20;
  sub_218953F20();
  v22 = v21;
  v23 = *(v21 - 8);
  v24 = MEMORY[0x28223BE20](v21);
  v135 = &v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v102 - v26;
  sub_218B7E0DC(0, &qword_27CC0E790, MEMORY[0x277D6EC60]);
  v29 = v28;
  v30 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v32 = &v102 - v31;
  sub_218B7E19C(0);
  v34 = MEMORY[0x28223BE20](v33 - 8);
  v36 = &v102 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v38 = &v102 - v37;
  sub_219BE7594();
  v130 = a1;
  v131 = v3;
  sub_219BE7564();
  sub_219BE5F84();
  v132 = v23;
  v39 = *(v23 + 8);
  v118 = v27;
  v138 = v23 + 8;
  v139 = v22;
  v40 = v22;
  v41 = v126;
  v137 = v39;
  v39(v27, v40);
  sub_219BEB244();

  v42 = *(v30 + 8);
  v110 = v32;
  v43 = v32;
  v44 = v128;
  v112 = v29;
  v111 = v30 + 8;
  v42(v43, v29);
  v120 = swift_allocBox();
  v46 = v45;
  v47 = sub_219BE16D4();
  v48 = *(v47 - 8);
  v49 = *(v48 + 56);
  v50 = v48 + 56;
  v49(v46, 1, 1, v47);
  v122 = v38;
  sub_218B7E368(v38, v36, sub_218B7E19C);
  if ((*(v44 + 48))(v36, 1, v41) == 1)
  {
    sub_218B7E3D0(v36, sub_218B7E19C);
    v51 = v129;
LABEL_11:
    v67 = v118;
    sub_219BE7564();
    v68 = v139;
    v69 = v140;
    sub_219BE5FC4();
    v137(v67, v68);
    v70 = *v69;
    v71 = *(v69 + 2);
    sub_218B7E1D0();
    v141 = *(v72 + 48);
    __swift_project_boxed_opaque_existential_1((v51 + 88), *(v51 + 112));
    v73 = [v70 identifier];
    sub_219BF5414();
    v74 = v51;

    LOBYTE(v68) = sub_219BF4774();

    v75 = sub_219BF0744();
    (*(*(v75 - 8) + 8))(&v141[v69], v75);
    v76 = v125;
    v77 = v124;
    v78 = v131;
    (*(v125 + 16))(v124, v130, v131);
    v79 = (*(v76 + 80) + 16) & ~*(v76 + 80);
    v80 = (v79 + v123 + 7) & 0xFFFFFFFFFFFFFFF8;
    v81 = (v79 + v123 + 23) & 0xFFFFFFFFFFFFFFF8;
    v82 = swift_allocObject();
    (*(v76 + 32))(v82 + v79, v77, v78);
    v83 = v82 + v80;
    *v83 = v74;
    *(v83 + 8) = v68 & 1;
    *(v82 + v81) = v120;

    sub_219BDD154();

    sub_218B7E3D0(v122, sub_218B7E19C);
  }

  v102 = v50;
  v104 = v47;
  v105 = v46;
  v52 = v127;
  (*(v44 + 32))(v127, v36, v41);
  (*(v44 + 16))(v133, v52, v41);
  sub_218B7E430(&unk_27CC173E0, sub_218B7E0BC);
  v53 = v136;
  sub_219BF56A4();
  v54 = *(v134 + 36);
  v55 = sub_218B7E430(&qword_27CC0E788, sub_218B7E0BC);
  sub_219BF5E84();
  v56 = *&v54[v53] == v142;
  v103 = v49;
  v106 = v42;
  if (v56)
  {
    v84 = MEMORY[0x277D84F90];
  }

  else
  {
    v132 += 2;
    v84 = MEMORY[0x277D84F90];
    v133 = v54;
    v134 = v55;
    do
    {
      v85 = sub_219BF5EC4();
      v86 = v135;
      v87 = v139;
      (*v132)(v135);
      v85(&v142, 0);
      v88 = v41;
      sub_219BF5E94();
      v89 = v140;
      sub_219BE5FC4();
      v90 = *v89;
      v91 = *(v89 + 2);
      sub_218B7E1D0();
      v93 = *(v92 + 48);
      v94 = [v90 identifier];
      v95 = sub_219BF5414();
      v141 = v96;

      v137(v86, v87);
      v97 = sub_219BF0744();
      (*(*(v97 - 8) + 8))(&v89[v93], v97);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v84 = sub_218840D24(0, *(v84 + 2) + 1, 1, v84);
      }

      v99 = *(v84 + 2);
      v98 = *(v84 + 3);
      v41 = v88;
      v53 = v136;
      if (v99 >= v98 >> 1)
      {
        v84 = sub_218840D24((v98 > 1), v99 + 1, 1, v84);
      }

      *(v84 + 2) = v99 + 1;
      v100 = &v84[16 * v99];
      v101 = v141;
      *(v100 + 4) = v95;
      *(v100 + 5) = v101;
      sub_219BF5E84();
    }

    while (*&v133[v53] != v142);
  }

  v141 = v84;
  sub_218B7E3D0(v53, sub_218B7E028);
  __swift_project_boxed_opaque_existential_1((v129 + 48), *(v129 + 72));
  sub_219BE6944();
  v57 = v110;
  sub_219BE7594();
  sub_218B7DFD4();
  sub_218B7E430(&qword_27CC0B160, type metadata accessor for MyMagazinesModel);
  v58 = sub_219BF00E4();

  v106(v57, v112);
  (*(v113 + 104))(v119, *MEMORY[0x277D2DB58], v114);
  (*(v115 + 104))(v121, *MEMORY[0x277D2F5E8], v116);
  sub_219BE6944();
  sub_219BF5DF4();
  sub_219BF5E84();
  result = sub_219BF5E74();
  if (result > 0x7FFFFFFF)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v58 < 0xFFFFFFFF80000000 || result < 0xFFFFFFFF80000000)
  {
    goto LABEL_19;
  }

  if (v58 <= 0x7FFFFFFF)
  {
    v60 = *MEMORY[0x277D2E6A0];
    v61 = sub_219BE0674();
    v62 = *(v61 - 8);
    v63 = v41;
    v64 = v108;
    (*(v62 + 104))(v108, v60, v61);
    (*(v62 + 56))(v64, 0, 1, v61);
    v65 = sub_219BDF474();
    (*(*(v65 - 8) + 56))(v109, 1, 1, v65);
    v51 = v129;
    v66 = v107;
    sub_219BE15E4();
    (*(v128 + 8))(v127, v63);
    v103(v66, 0, 1, v104);
    sub_218B58ECC(v66, v105);
    goto LABEL_11;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_218B7CBD8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v106 = a4;
  v95 = a3;
  v125 = a2;
  v135 = a1;
  v112 = sub_219BDBD34();
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v110 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v5 - 8);
  v107 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_219BE16D4();
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v84 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_219BDF8A4();
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v103 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_219BE0B64();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_219BE09E4();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v96 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_219BDF104();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v91 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_219BDF1A4();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v88 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_219BDFCE4();
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v85 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_219BDBD64();
  v118 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v115 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_219BDFFB4();
  v120 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v116 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_219BE1714();
  v114 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v17 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for MyMagazinesModel();
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953F20();
  v22 = v21;
  v23 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v25 = &v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = swift_projectBox();
  sub_218B7E0DC(0, &qword_27CC0E780, MEMORY[0x277D6DA48]);
  v124 = v26;
  sub_219BE7564();
  sub_219BE5FC4();
  (*(v23 + 8))(v25, v22);
  v27 = *v20;
  v102 = v20;
  v122 = *(v20 + 2);
  v123 = v27;
  sub_21934C4BC();
  sub_218B7E304(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v132 = v28;
  v29 = sub_219BDCD44();
  v30 = *(v29 - 8);
  v31 = *(v30 + 80);
  v32 = (v31 + 32) & ~v31;
  v130 = v32 + *(v30 + 72);
  v33 = swift_allocObject();
  v134 = xmmword_219C09BA0;
  *(v33 + 16) = xmmword_219C09BA0;
  v34 = *MEMORY[0x277CEAD18];
  v36 = *(v30 + 104);
  v35 = v30 + 104;
  v36(v33 + v32, v34, v29);
  v133 = "";
  sub_218B7E430(&unk_280EE7F60, MEMORY[0x277D2F890]);
  v37 = v113;
  sub_219BDCCC4();

  (*(v114 + 8))(v17, v37);
  v38 = v115;
  sub_219BDBD54();
  sub_219BDBD44();
  (*(v118 + 8))(v38, v117);
  v39 = v116;
  sub_219BDFFA4();
  v40 = swift_allocObject();
  *(v40 + 16) = v134;
  v131 = v34;
  v129 = v29;
  v127 = v36;
  v36(v40 + v32, v34, v29);
  sub_218B7E430(&unk_280EE84F0, MEMORY[0x277D2E290]);
  v41 = v119;
  sub_219BDCCC4();

  (*(v120 + 8))(v39, v41);
  sub_218B7E430(&qword_27CC0E7A0, type metadata accessor for MyMagazinesModel);
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

  v43 = v85;
  sub_219BDFCD4();
  v128 = v31;
  v44 = swift_allocObject();
  *(v44 + 16) = v134;
  v126 = (v31 + 32) & ~v31;
  v45 = v129;
  v46 = v127;
  v127(v44 + v126, v131, v129);
  v121 = v35;
  sub_218B7E430(&unk_280EE8590, MEMORY[0x277D2E058]);
  v47 = v87;
  sub_219BDCCC4();

  (*(v86 + 8))(v43, v47);
  v48 = v88;
  sub_219BF6AC4();
  v49 = swift_allocObject();
  *(v49 + 16) = v134;
  v50 = v126;
  v51 = v131;
  v46(v49 + v126, v131, v45);
  sub_218B7E430(&unk_280EE8850, MEMORY[0x277D2D950]);
  v52 = v90;
  sub_219BDCCC4();

  (*(v89 + 8))(v48, v52);
  v120 = *(v95 + 40);
  v53 = v123;
  v54 = [v123 sourceChannel];
  v55 = v91;
  sub_219BE01F4();
  swift_unknownObjectRelease();
  v56 = swift_allocObject();
  *(v56 + 16) = v134;
  v127(v56 + v50, v51, v45);
  sub_218B7E430(&unk_280EE8890, MEMORY[0x277D2D8B8]);
  v57 = v93;
  sub_219BDCCC4();

  (*(v92 + 8))(v55, v57);
  v58 = [v53 sourceChannel];
  v59 = v96;
  sub_219BE01E4();
  swift_unknownObjectRelease();
  v60 = swift_allocObject();
  *(v60 + 16) = v134;
  v61 = v131;
  v62 = v129;
  v63 = v127;
  v127(v60 + v50, v131, v129);
  sub_218B7E430(&qword_280EE8270, MEMORY[0x277D2E9C0]);
  v64 = v98;
  sub_219BDCCC4();

  (*(v97 + 8))(v59, v64);
  v65 = v99;
  sub_219BE0B54();
  v66 = swift_allocObject();
  *(v66 + 16) = v134;
  v67 = v126;
  v63(v66 + v126, v61, v62);
  sub_218B7E430(&qword_27CC0C628, MEMORY[0x277D2EB60]);
  v68 = v101;
  sub_219BDCCC4();

  (*(v100 + 8))(v65, v68);
  v69 = v103;
  sub_219BDF894();
  v70 = v131;
  v71 = swift_allocObject();
  *(v71 + 16) = v134;
  v63(v71 + v67, v70, v129);
  sub_218B7E430(&qword_280EE8640, MEMORY[0x277D2DE40]);
  v72 = v105;
  sub_219BDCCC4();

  (*(v104 + 8))(v69, v72);
  v73 = v94;
  swift_beginAccess();
  v74 = v107;
  sub_218B7E368(v73, v107, sub_218B58D58);
  v75 = v108;
  v76 = v109;
  if ((*(v108 + 48))(v74, 1, v109) == 1)
  {
    sub_218B7E3D0(v74, sub_218B58D58);
  }

  else
  {
    v77 = v84;
    (*(v75 + 32))(v84, v74, v76);
    v78 = swift_allocObject();
    *(v78 + 16) = v134;
    v63(v78 + v126, v70, v129);
    sub_218B7E430(&unk_280EE7FB0, MEMORY[0x277D2F590]);
    sub_219BDCCC4();

    (*(v75 + 8))(v77, v76);
  }

  sub_218B7E1D0();
  *&v134 = *(v79 + 48);
  sub_219BE0274();
  v80 = v110;
  sub_219BE75A4();
  sub_218B7E430(&unk_280EE8460, MEMORY[0x277D2E418]);
  sub_219BDCC64();
  v81 = *(v111 + 8);
  v82 = v112;
  v81(v80, v112);
  sub_219BE7574();
  sub_219BDCC74();

  v81(v80, v82);
  v83 = sub_219BF0744();
  return (*(*(v83 - 8) + 8))(&v102[v134], v83);
}

uint64_t sub_218B7DF58()
{

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 48);
  __swift_destroy_boxed_opaque_existential_1(v0 + 88);

  return swift_deallocClassInstance();
}

unint64_t sub_218B7DFD4()
{
  result = qword_27CC157D0;
  if (!qword_27CC157D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC157D0);
  }

  return result;
}

void sub_218B7E028()
{
  if (!qword_27CC173D0)
  {
    sub_218B7E0BC(255);
    sub_218B7E430(&qword_27CC0E788, sub_218B7E0BC);
    v0 = sub_219BF7494();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC173D0);
    }
  }
}

void sub_218B7E0DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for MyMagazinesSectionDescriptor;
    v8[1] = type metadata accessor for MyMagazinesModel();
    v8[2] = sub_218B7DFD4();
    v8[3] = sub_218B7E430(&qword_27CC0B160, type metadata accessor for MyMagazinesModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218B7E1D0()
{
  if (!qword_27CC15850)
  {
    sub_219BF0744();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC15850);
    }
  }
}

uint64_t sub_218B7E238(uint64_t a1)
{
  sub_218B7E0DC(0, &qword_27CC0E780, MEMORY[0x277D6DA48]);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = v1 + ((v5 + *(v4 + 64) + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);

  return sub_218B7CBD8(a1, v1 + v5, v7, v8);
}

void sub_218B7E304(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218B7E368(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218B7E3D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218B7E430(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_218B7E48C()
{
  if (!qword_27CC0FBB0)
  {
    type metadata accessor for AudioPlaylistFeedModel();
    sub_218B7F1DC(&unk_27CC0B7F0, type metadata accessor for AudioPlaylistFeedModel);
    v0 = sub_219BE5FE4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0FBB0);
    }
  }
}

uint64_t type metadata accessor for AudioPlaylistFeedDragAndDropBlueprintModifier()
{
  result = qword_27CC0E7A8;
  if (!qword_27CC0E7A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218B7E580()
{
  sub_218B7E48C();
  if (v0 <= 0x3F)
  {
    sub_219BDC104();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_218B7E604(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v49 = a3;
  v50 = a2;
  sub_218B7EF80(0, &qword_27CC0D2C8, MEMORY[0x277D6DF88]);
  v48 = v4;
  v46 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v45 = &v43 - v5;
  sub_218A6C984(0);
  v7 = v6;
  v53 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v44 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v52 = &v43 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v43 - v13;
  MEMORY[0x28223BE20](v12);
  v59 = &v43 - v15;
  sub_218B7F074();
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A6C9A4(0);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v43 = v22;
  v24 = *(v22 + 16);
  v51 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24();
  (v24)(v19, a1, v21);
  v25 = v7;
  v26 = *(v17 + 44);
  sub_218B7F1DC(&qword_27CC0D310, sub_218A6C9A4);
  v47 = a1;
  sub_219BF5DF4();
  sub_219BF5E84();
  if (*&v19[v26] != v61[0])
  {
    v57 = (v53 + 32);
    v58 = (v53 + 16);
    v54 = v25;
    v55 = (v53 + 8);
    v56 = v21;
    v27 = v59;
    do
    {
      v29 = sub_219BF5EC4();
      v30 = *v58;
      (*v58)(v27);
      v29(v61, 0);
      sub_219BF5E94();
      (*v57)(v14, v27, v25);
      sub_218B7F1DC(&qword_27CC0E7C8, sub_218A6C984);
      v31 = v60;
      v32 = sub_219BF5744();
      if (v32 == 2)
      {
        MEMORY[0x28223BE20](v32);
        *(&v43 - 2) = v31;
        v28 = sub_218FAE014(sub_218B7F108, (&v43 - 4));
        v25 = v54;
        if (v28)
        {
          goto LABEL_7;
        }
      }

      else if (v32)
      {
LABEL_7:
        v33 = v52;
        (v30)(v52, v14, v25);
        sub_219BE69D4();
        v21 = v56;
        sub_219BEB234();
        v34 = *v55;
        (*v55)(v33, v54);
        v34(v14, v54);
        v25 = v54;
        break;
      }

      (*v55)(v14, v25);
      v21 = v56;
      sub_219BF5E84();
    }

    while (*&v19[v26] != v61[0]);
  }

  sub_218B7F128(v19);
  type metadata accessor for AudioPlaylistFeedDragAndDropBlueprintModifier();
  sub_219BDC0F4();
  v36 = v51;
  v35 = v52;
  sub_219BEB364();
  v37 = v21;
  v38 = v53;
  v39 = v44;
  (*(v53 + 16))(v44, v35, v25);
  sub_219BDC0D4();
  sub_219BE69A4();
  sub_219BEB234();
  type metadata accessor for AudioPlaylistFeedSectionDescriptor();
  type metadata accessor for AudioPlaylistFeedModel();
  sub_218B7F1DC(&unk_27CC11BE0, type metadata accessor for AudioPlaylistFeedSectionDescriptor);
  sub_218B7F1DC(&unk_27CC0B7F0, type metadata accessor for AudioPlaylistFeedModel);
  v40 = v45;
  sub_219BE85B4();
  v50(v40);
  (*(v46 + 8))(v40, v48);
  v41 = *(v38 + 8);
  v41(v39, v25);
  v41(v35, v25);
  return (*(v43 + 8))(v36, v37);
}

uint64_t sub_218B7ED1C()
{
  sub_218B7F184();
  v0 = sub_219BE81C4();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09BA0;
  (*(v1 + 104))(v3 + v2, *MEMORY[0x277D6DE40], v0);
  v4 = sub_218847E58(v3);
  swift_setDeallocating();
  (*(v1 + 8))(v3 + v2, v0);
  swift_deallocClassInstance();
  return v4;
}

uint64_t sub_218B7EE3C(uint64_t a1)
{
  v2 = sub_218B7F1DC(&qword_27CC0E7D0, type metadata accessor for AudioPlaylistFeedDragAndDropBlueprintModifier);

  return MEMORY[0x2821D4040](a1, v2);
}

void sub_218B7EF80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for AudioPlaylistFeedSectionDescriptor();
    v8[1] = type metadata accessor for AudioPlaylistFeedModel();
    v8[2] = sub_218B7F1DC(&unk_27CC11BE0, type metadata accessor for AudioPlaylistFeedSectionDescriptor);
    v8[3] = sub_218B7F1DC(&unk_27CC0B7F0, type metadata accessor for AudioPlaylistFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218B7F074()
{
  if (!qword_27CC0E7C0)
  {
    sub_218A6C9A4(255);
    sub_218B7F1DC(&qword_27CC0D310, sub_218A6C9A4);
    v0 = sub_219BF7494();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0E7C0);
    }
  }
}

uint64_t sub_218B7F128(uint64_t a1)
{
  sub_218B7F074();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_218B7F184()
{
  if (!qword_280E8BDD0)
  {
    sub_219BE81C4();
    v0 = sub_219BF78A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8BDD0);
    }
  }
}

uint64_t sub_218B7F1DC(unint64_t *a1, void (*a2)(uint64_t))
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