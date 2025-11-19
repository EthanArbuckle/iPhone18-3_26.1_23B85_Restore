id sub_1D677A430(uint64_t a1, __int16 a2)
{
  v79 = sub_1D7259D1C();
  v5 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79, v6);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1D7259CFC();
  v64 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65, v9);
  v78 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1D725A19C();
  v11 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74, v12);
  v75 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1D7259F5C();
  v76 = *(v77 - 8);
  *&v15 = MEMORY[0x1EEE9AC00](v77, v14).n128_u64[0];
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v2 view];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v19 = result;
  v20 = *&v2[OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_collectionView];
  sub_1D67F6CC8(0, 1, 0, 0, 2u, a2 & 0x1FF, v80);
  v21 = v80[66];
  [v19 bounds];
  v22 = sub_1D6E24328(a2, v19);
  v24 = v23;
  v63 = a1;
  if (a2 >= 0x1Bu)
  {
    if (a2 - 27 >= 6)
    {
      v26 = MEMORY[0x1E69E7CD0];
      goto LABEL_5;
    }

    v25 = &unk_1F5118C68;
  }

  else
  {
    v25 = &unk_1F5118C90;
  }

  v26 = sub_1D5E29338(v25);
LABEL_5:
  v27 = sub_1D61867BC(v21, v26);

  if (v27 & v21)
  {
    v28 = v24;
  }

  else
  {
    v28 = v22;
  }

  if ((v27 & v21 & 1) == 0)
  {
    v22 = v24;
  }

  v29 = [v19 traitCollection];
  MEMORY[0x1EEE9AC00](v29, v30);
  v61 = v80;
  v31 = sub_1D72630DC();

  [v19 layoutMargins];
  sub_1D6F79CFC(a2);
  sub_1D7262E0C();
  sub_1D7262DFC();
  v73 = v32;
  v72 = v33;
  v71 = v34;
  v70 = v35;
  [v20 safeAreaInsets];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  if ((a2 - 33) >= 2u)
  {
    sub_1D7262DFC();
    sub_1D7262E0C();
    v69 = v43;
    v38 = v44;
    v40 = v45;
    v42 = v46;
  }

  else
  {
    v69 = v36;
  }

  v68 = sub_1D6E24200(v20, v28, v22, v38, v42);
  v67 = v47;
  sub_1D725A64C();
  sub_1D726332C();
  v66 = v48;
  v49 = [objc_opt_self() mainScreen];
  [v49 nativeBounds];

  v50 = [v31 preferredContentSizeCategory];
  (*(v11 + 104))(v75, *MEMORY[0x1E69D7278], v74);
  v58[0] = 0;
  v58[1] = 0;
  v61 = v40;
  v62 = v42;
  v60 = v38;
  v59 = v69;
  sub_1D7259E5C();

  v51 = v79;
  (*(v5 + 104))(v8, *MEMORY[0x1E69D7110], v79);
  v52 = v78;
  sub_1D7259D0C();
  (*(v5 + 8))(v8, v51);
  v53 = type metadata accessor for DebugFormatWorkspace();
  MEMORY[0x1EEE9AC00](v53, v54);
  v59 = v55;
  LOWORD(v60) = a2 & 0x1FF;
  v61 = v17;
  v62 = *&v52;
  v57 = sub_1D5ECBA9C(sub_1D677E3A8, v58, v56);
  (*(v64 + 8))(v52, v65);
  (*(v76 + 8))(v17, v77);
  return v57;
}

uint64_t sub_1D677ABF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int16 a8)
{
  *(v8 + 356) = a8;
  *(v8 + 136) = a6;
  *(v8 + 144) = a7;
  *(v8 + 120) = a4;
  *(v8 + 128) = a5;
  type metadata accessor for DebugFormatWorkspace();
  *(v8 + 152) = swift_task_alloc();
  sub_1D677A398(0);
  *(v8 + 160) = swift_task_alloc();
  *(v8 + 168) = swift_task_alloc();
  sub_1D677A3CC(0, &qword_1EC88B4D0, type metadata accessor for DebugFormatCanvasBindResult, type metadata accessor for DebugFormatWorkspaceCanvasItemState);
  *(v8 + 176) = v9;
  *(v8 + 184) = swift_task_alloc();
  *(v8 + 192) = type metadata accessor for DebugFormatCanvasBindResult();
  *(v8 + 200) = swift_task_alloc();
  v10 = type metadata accessor for DebugFormatWorkspaceCanvasSection();
  *(v8 + 208) = v10;
  *(v8 + 216) = *(v10 - 8);
  *(v8 + 224) = swift_task_alloc();
  sub_1D726290C();
  *(v8 + 232) = sub_1D72628FC();
  v12 = sub_1D726285C();
  *(v8 + 240) = v12;
  *(v8 + 248) = v11;

  return MEMORY[0x1EEE6DFA0](sub_1D677ADE4, v12, v11);
}

uint64_t sub_1D677ADE4()
{
  v39 = v0;
  v1 = *(v0 + 120);
  v2 = *(v1 + 16);
  *(v0 + 256) = v2;
  if (!v2)
  {
LABEL_14:

    v16 = *(*(v0 + 128) + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_editor);

    sub_1D725972C();

    if ((*(v0 + 358) & 1) == 0)
    {
      goto LABEL_19;
    }

    v17 = sub_1D67728D8();

    sub_1D725972C();

    v18 = *(v0 + 120);
    if (*(v0 + 359))
    {
      v19 = v17;
      v20 = sub_1D60CAD44(v18, v19, &v38);
    }

    else
    {

      v20 = *(v0 + 120);
    }

    v21 = *(v0 + 128);
    *&v21[OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_sections] = v20;

    v22 = objc_opt_self();
    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_1D677E6A0;
    *(v24 + 24) = v23;
    *(v0 + 48) = sub_1D677E6A4;
    *(v0 + 56) = v24;
    *(v0 + 16) = MEMORY[0x1E69E9820];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_1D69C9704;
    *(v0 + 40) = &block_descriptor_57;
    v25 = _Block_copy((v0 + 16));
    v26 = v21;

    [v22 performWithoutAnimation_];
    _Block_release(v25);
    LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

    if ((v22 & 1) == 0)
    {
LABEL_19:
      v27 = *(v0 + 168);

      sub_1D725B31C();

      v28 = type metadata accessor for DebugFormatWorkspaceCanvasSelection();
      v29 = *(v28 - 8);
      v30 = (*(v29 + 48))(v27, 1, v28);
      sub_1D677DBBC(v27, sub_1D677A398);
      if (v30 == 1)
      {
        v32 = *(v0 + 152);
        v31 = *(v0 + 160);
        v33 = *(v0 + 356);
        v34 = *(v0 + 128);
        sub_1D677E3E4(*(v0 + 144), v32, type metadata accessor for DebugFormatWorkspace);
        v35 = *(v34 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_sections);

        sub_1D6A3B508(v32, v33 & 0x1FF, v16, v35, v31);
        (*(v29 + 56))(v31, 0, 1, v28);
        sub_1D67731E8(v31);
      }

      v36 = *(v0 + 8);

      return v36();
    }

    __break(1u);
    goto LABEL_25;
  }

  v3 = 0;
  v4 = *(v0 + 216);
  v5 = *(v4 + 80);
  *(v0 + 352) = v5;
  v6 = *(v4 + 72);
  *(v0 + 264) = v6;
  while (1)
  {
    *(v0 + 272) = v3;
    v7 = *(v0 + 224);
    v8 = *(v0 + 208);
    sub_1D677E3E4(v1 + ((v5 + 32) & ~v5) + v6 * v3, v7, type metadata accessor for DebugFormatWorkspaceCanvasSection);
    v10 = *(v7 + *(v8 + 40));
    *(v0 + 280) = v10;
    if (v10 >> 62)
    {
      break;
    }

    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 288) = v11;
    if (v11)
    {
      goto LABEL_8;
    }

LABEL_5:
    v12 = *(v0 + 256);
    v13 = *(v0 + 272) + 1;
    sub_1D677DBBC(*(v0 + 224), type metadata accessor for DebugFormatWorkspaceCanvasSection);
    if (v13 == v12)
    {
      goto LABEL_14;
    }

    v6 = *(v0 + 264);
    v3 = *(v0 + 272) + 1;
    LOBYTE(v5) = *(v0 + 352);
    v1 = *(v0 + 120);
  }

  v11 = sub_1D7263BFC();
  *(v0 + 288) = v11;
  if (!v11)
  {
    goto LABEL_5;
  }

LABEL_8:
  *(v0 + 296) = 0;
  v14 = *(v0 + 280);
  if ((v14 & 0xC000000000000001) != 0)
  {
LABEL_25:
    v15 = MEMORY[0x1DA6FB460](0);
    goto LABEL_11;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_11:
    *(v0 + 304) = v15;
    *(v0 + 312) = 1;
    *(v0 + 320) = sub_1D67726D8();
    v11 = sub_1D677B378;
    v14 = 0;
    v9 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](v11, v14, v9);
}

void sub_1D677B378()
{
  v1 = v0[40];
  v2 = v0[37];
  v3 = v0[38];
  v4 = v0[28];
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  v6[2] = v3;
  v6[3] = v4;
  v6[4] = v1;
  os_unfair_lock_lock((v5 + 24));
  sub_1D60CEB68((v5 + 16), v0 + 14);
  os_unfair_lock_unlock((v5 + 24));
  if (!v2)
  {
    v7 = v0[14];
    v0[41] = v7;

    v8 = swift_task_alloc();
    v0[42] = v8;
    v9 = sub_1D5BA6EF4();
    *v8 = v0;
    v8[1] = sub_1D677B4B0;
    v11 = v0[24];
    v10 = v0[25];
    v12 = MEMORY[0x1E69E7288];

    MEMORY[0x1EEE6DA10](v10, v7, v11, v9, v12);
  }
}

uint64_t sub_1D677B4B0()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_1D677BCCC;
  }

  else
  {
    v2 = sub_1D677B5C4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D677B5C4()
{

  v1 = *(v0 + 240);
  v2 = *(v0 + 248);

  return MEMORY[0x1EEE6DFA0](sub_1D677B630, v1, v2);
}

uint64_t sub_1D677B630()
{
  v42 = v0;
  v1 = *(v0 + 304);
  v2 = *(v0 + 184);
  sub_1D677E2B8(*(v0 + 200), v2, type metadata accessor for DebugFormatCanvasBindResult);
  swift_storeEnumTagMultiPayload();
  v3 = OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_state;
  swift_beginAccess();
  sub_1D60CEB88(v2, v1 + v3);
  swift_endAccess();
  v4 = *(v0 + 344);
  sub_1D72629AC();
  if (!v4)
  {
    v8 = *(v0 + 312);
    v9 = *(v0 + 288);
    sub_1D676AE48();

    if (v8 == v9)
    {
      while (1)
      {
        v12 = *(v0 + 256);
        v13 = *(v0 + 272) + 1;
        sub_1D677DBBC(*(v0 + 224), type metadata accessor for DebugFormatWorkspaceCanvasSection);
        if (v13 == v12)
        {
          break;
        }

        v14 = *(v0 + 264);
        v15 = *(v0 + 272) + 1;
        *(v0 + 272) = v15;
        v16 = *(v0 + 224);
        v17 = *(v0 + 208);
        sub_1D677E3E4(*(v0 + 120) + ((*(v0 + 352) + 32) & ~*(v0 + 352)) + v14 * v15, v16, type metadata accessor for DebugFormatWorkspaceCanvasSection);
        v18 = *(v16 + *(v17 + 40));
        *(v0 + 280) = v18;
        if (v18 >> 62)
        {
          v10 = sub_1D7263BFC();
          *(v0 + 288) = v10;
          if (v10)
          {
LABEL_12:
            v19 = 0;
            goto LABEL_14;
          }
        }

        else
        {
          v10 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
          *(v0 + 288) = v10;
          if (v10)
          {
            goto LABEL_12;
          }
        }
      }

      v21 = *(*(v0 + 128) + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_editor);

      sub_1D725972C();

      if ((*(v0 + 358) & 1) == 0)
      {
        goto LABEL_26;
      }

      v22 = sub_1D67728D8();

      sub_1D725972C();

      v23 = *(v0 + 120);
      if (*(v0 + 359))
      {
        v24 = v22;
        v25 = sub_1D60CAD44(v23, v24, &v41);
      }

      else
      {

        v25 = *(v0 + 120);
      }

      v26 = *(v0 + 128);
      *&v26[OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_sections] = v25;

      v27 = objc_opt_self();
      v28 = swift_allocObject();
      *(v28 + 16) = v26;
      v29 = swift_allocObject();
      *(v29 + 16) = sub_1D677E6A0;
      *(v29 + 24) = v28;
      *(v0 + 48) = sub_1D677E6A4;
      *(v0 + 56) = v29;
      *(v0 + 16) = MEMORY[0x1E69E9820];
      *(v0 + 24) = 1107296256;
      *(v0 + 32) = sub_1D69C9704;
      *(v0 + 40) = &block_descriptor_57;
      v30 = _Block_copy((v0 + 16));
      v31 = v26;

      [v27 performWithoutAnimation_];
      _Block_release(v30);
      LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

      if ((v27 & 1) == 0)
      {
LABEL_26:
        v32 = *(v0 + 168);

        sub_1D725B31C();

        v33 = type metadata accessor for DebugFormatWorkspaceCanvasSelection();
        v34 = *(v33 - 8);
        v35 = (*(v34 + 48))(v32, 1, v33);
        sub_1D677DBBC(v32, sub_1D677A398);
        if (v35 == 1)
        {
          v37 = *(v0 + 152);
          v36 = *(v0 + 160);
          v38 = *(v0 + 356);
          v39 = *(v0 + 128);
          sub_1D677E3E4(*(v0 + 144), v37, type metadata accessor for DebugFormatWorkspace);
          v40 = *(v39 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_sections);

          sub_1D6A3B508(v37, v38 & 0x1FF, v21, v40, v36);
          (*(v34 + 56))(v36, 0, 1, v33);
          sub_1D67731E8(v36);
        }

        v6 = *(v0 + 8);
        goto LABEL_3;
      }

      goto LABEL_32;
    }

    v19 = *(v0 + 312);
LABEL_14:
    *(v0 + 296) = 0;
    v20 = *(v0 + 280);
    if ((v20 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1DA6FB460](v19);
    }

    else
    {
      if (v19 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return MEMORY[0x1EEE6DFA0](v10, v20, v11);
      }
    }

    *(v0 + 304) = v10;
    *(v0 + 312) = v19 + 1;
    if (!__OFADD__(v19, 1))
    {
      *(v0 + 320) = sub_1D67726D8();
      v10 = sub_1D677B378;
      v20 = 0;
      v11 = 0;

      return MEMORY[0x1EEE6DFA0](v10, v20, v11);
    }

    __break(1u);
    goto LABEL_31;
  }

  v5 = *(v0 + 224);

  sub_1D677DBBC(v5, type metadata accessor for DebugFormatWorkspaceCanvasSection);

  v6 = *(v0 + 8);
LABEL_3:

  return v6();
}

uint64_t sub_1D677BCCC()
{

  v1 = *(v0 + 240);
  v2 = *(v0 + 248);

  return MEMORY[0x1EEE6DFA0](sub_1D677BD38, v1, v2);
}

uint64_t sub_1D677BD38()
{
  v40 = v0;
  v1 = *(v0 + 304);
  v2 = *(v0 + 184);
  *v2 = *(v0 + 344);
  swift_storeEnumTagMultiPayload();
  v3 = OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_state;
  swift_beginAccess();
  sub_1D60CEB88(v2, v1 + v3);
  swift_endAccess();
  sub_1D72629AC();
  v5 = *(v0 + 312);
  v6 = *(v0 + 288);
  sub_1D676AE48();

  if (v5 != v6)
  {
    v16 = *(v0 + 312);
LABEL_13:
    *(v0 + 296) = 0;
    v17 = *(v0 + 280);
    if ((v17 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1DA6FB460](v16);
    }

    else
    {
      if (v16 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        return MEMORY[0x1EEE6DFA0](v7, v17, v8);
      }
    }

    *(v0 + 304) = v7;
    *(v0 + 312) = v16 + 1;
    if (!__OFADD__(v16, 1))
    {
      *(v0 + 320) = sub_1D67726D8();
      v7 = sub_1D677B378;
      v17 = 0;
      v8 = 0;

      return MEMORY[0x1EEE6DFA0](v7, v17, v8);
    }

    __break(1u);
    goto LABEL_30;
  }

  while (1)
  {
    v9 = *(v0 + 256);
    v10 = *(v0 + 272) + 1;
    sub_1D677DBBC(*(v0 + 224), type metadata accessor for DebugFormatWorkspaceCanvasSection);
    if (v10 == v9)
    {
      break;
    }

    v11 = *(v0 + 264);
    v12 = *(v0 + 272) + 1;
    *(v0 + 272) = v12;
    v13 = *(v0 + 224);
    v14 = *(v0 + 208);
    sub_1D677E3E4(*(v0 + 120) + ((*(v0 + 352) + 32) & ~*(v0 + 352)) + v11 * v12, v13, type metadata accessor for DebugFormatWorkspaceCanvasSection);
    v15 = *(v13 + *(v14 + 40));
    *(v0 + 280) = v15;
    if (v15 >> 62)
    {
      v7 = sub_1D7263BFC();
      *(v0 + 288) = v7;
      if (v7)
      {
LABEL_11:
        v16 = 0;
        goto LABEL_13;
      }
    }

    else
    {
      v7 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 288) = v7;
      if (v7)
      {
        goto LABEL_11;
      }
    }
  }

  v18 = *(*(v0 + 128) + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_editor);

  sub_1D725972C();

  if (*(v0 + 358))
  {
    v19 = sub_1D67728D8();

    sub_1D725972C();

    v20 = *(v0 + 120);
    if (*(v0 + 359))
    {
      v21 = v19;
      v22 = sub_1D60CAD44(v20, v21, &v39);
    }

    else
    {

      v22 = *(v0 + 120);
    }

    v23 = *(v0 + 128);
    *&v23[OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_sections] = v22;

    v24 = objc_opt_self();
    v25 = swift_allocObject();
    *(v25 + 16) = v23;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_1D677E6A0;
    *(v26 + 24) = v25;
    *(v0 + 48) = sub_1D677E6A4;
    *(v0 + 56) = v26;
    *(v0 + 16) = MEMORY[0x1E69E9820];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_1D69C9704;
    *(v0 + 40) = &block_descriptor_57;
    v27 = _Block_copy((v0 + 16));
    v28 = v23;

    [v24 performWithoutAnimation_];
    _Block_release(v27);
    LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

    if (v24)
    {
      goto LABEL_31;
    }
  }

  v29 = *(v0 + 168);

  sub_1D725B31C();

  v30 = type metadata accessor for DebugFormatWorkspaceCanvasSelection();
  v31 = *(v30 - 8);
  v32 = (*(v31 + 48))(v29, 1, v30);
  sub_1D677DBBC(v29, sub_1D677A398);
  if (v32 == 1)
  {
    v34 = *(v0 + 152);
    v33 = *(v0 + 160);
    v35 = *(v0 + 356);
    v36 = *(v0 + 128);
    sub_1D677E3E4(*(v0 + 144), v34, type metadata accessor for DebugFormatWorkspace);
    v37 = *(v36 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_sections);

    sub_1D6A3B508(v34, v35 & 0x1FF, v18, v37, v33);
    (*(v31 + 56))(v33, 0, 1, v30);
    sub_1D67731E8(v33);
  }

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_1D677C3B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v43 = a5;
  v44 = a1;
  v45 = a4;
  v47 = a3;
  v46 = a6;
  v48 = type metadata accessor for DebugFormatWorkspaceCanvasSection() - 8;
  MEMORY[0x1EEE9AC00](v48, v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1D7259CFC();
  v10 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40, v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v13;
  v14 = sub_1D7259F5C();
  v57 = v14;
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v18;
  v42 = type metadata accessor for DebugFormatWorkspaceGroup() - 8;
  MEMORY[0x1EEE9AC00](v42, v19);
  v21 = (&v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for DebugFormatWorkspace();
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v41 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D677E3E4(a2, v41, type metadata accessor for DebugFormatWorkspace);
  sub_1D677E3E4(v44, v21, type metadata accessor for DebugFormatWorkspaceGroup);
  v44 = v15;
  v39 = *(v15 + 16);
  v39(v18, v45, v14);
  v45 = v10;
  v25 = *(v10 + 16);
  v26 = v40;
  v25(v13, v43, v40);
  v27 = v21[1];
  *v9 = *v21;
  *(v9 + 1) = v27;
  v28 = v47;
  v9[17] = v47;
  LODWORD(v43) = (v28 >> 8) & 1;
  v9[18] = v43;
  v29 = v48;
  sub_1D677E3E4(v21, &v9[*(v48 + 36)], type metadata accessor for DebugFormatWorkspaceGroup);
  v39(&v9[*(v29 + 40)], v49, v57);
  v30 = v38;
  v25(&v9[*(v29 + 44)], v38, v26);
  v31 = v41;
  v32 = *(v21 + *(v42 + 36));
  v56 = v30;

  sub_1D62ED9D8(sub_1D60CEC1C, v55, v32);
  v33 = sub_1D72626EC();

  v51 = v31;
  v52 = v21;
  v53 = v47;
  v54 = v43;
  v34 = sub_1D5ECBB04(sub_1D60CEC3C, v50, v33);

  *&v9[*(v48 + 48)] = v34;
  if (v34 >> 62)
  {
    v35 = sub_1D7263BFC();
  }

  else
  {
    v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  (*(v44 + 8))(v49, v57);
  v9[16] = v35 < 2;
  sub_1D677E2B8(v9, v46, type metadata accessor for DebugFormatWorkspaceCanvasSection);
  (*(v45 + 8))(v30, v26);
  sub_1D677DBBC(v21, type metadata accessor for DebugFormatWorkspaceGroup);
  return sub_1D677DBBC(v31, type metadata accessor for DebugFormatWorkspace);
}

id sub_1D677C898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();

  return v6;
}

void sub_1D677C914()
{
  v1 = v0;
  sub_1D677A398(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = aBlock - v8;
  *(v1 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___navigationItemManager) = 0;
  *(v1 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___generator) = 0;
  *(v1 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___exporter) = 0;
  *(v1 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___sorter) = 0;
  v10 = OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_styler;
  type metadata accessor for DebugFormatStyler();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v1 + v10) = v11;
  v12 = OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_collectionView;
  v13 = objc_allocWithZone(MEMORY[0x1E69DC808]);
  aBlock[4] = sub_1D70DF728;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D677C898;
  aBlock[3] = &block_descriptor_86;
  v14 = _Block_copy(aBlock);
  v15 = [v13 initWithSectionProvider_];
  _Block_release(v14);

  v16 = [objc_allocWithZone(MEMORY[0x1E69DC7F0]) initWithFrame:v15 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  *(v1 + v12) = v16;
  *(v1 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___devicesBarButtonItem) = 0;
  *(v1 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___userInterfaceBarButtonItem) = 0;
  *(v1 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___interfaceLayoutDirectionBarButtonItem) = 0;
  *(v1 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___activateBarButtonItem) = 0;
  *(v1 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___snapshotExportBarButtonItem) = 0;
  *(v1 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___dimissBarButtonItem) = 0;
  *(v1 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___statusView) = 0;
  *(v1 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_prewarmTask) = 0;
  *(v1 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_exportTask) = 0;
  v17 = OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController__selection;
  v18 = type metadata accessor for DebugFormatWorkspaceCanvasSelection();
  (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
  sub_1D677E3E4(v9, v5, sub_1D677A398);
  sub_1D677A3CC(0, &unk_1EC88B450, sub_1D677A398, MEMORY[0x1E69D6748]);
  swift_allocObject();
  v19 = sub_1D725B2FC();
  sub_1D677DBBC(v9, sub_1D677A398);
  *(v1 + v17) = v19;
  *(v1 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_sections) = MEMORY[0x1E69E7CC0];
  v20 = OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_workspace;
  v21 = type metadata accessor for DebugFormatWorkspace();
  (*(*(v21 - 8) + 56))(v1 + v20, 1, 1, v21);
  sub_1D726402C();
  __break(1u);
}

uint64_t sub_1D677CCC4()
{

  sub_1D725972C();

  if (v1 <= 2)
  {

    sub_1D725973C();
  }

  return result;
}

uint64_t sub_1D677CD60()
{

  sub_1D725972C();

  if (v1 <= 1)
  {

    sub_1D725973C();
  }

  return result;
}

uint64_t sub_1D677CDFC()
{
  v1 = v0;
  sub_1D677A3CC(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v49 = &v43 - v4;
  sub_1D677A398(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DebugFormatWorkspaceCanvasSelection();
  v48 = *(v9 - 8);
  v10 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v9, v11);
  v46 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v47 = &v43 - v14;
  sub_1D60CB67C(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DebugFormatWorkspace();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19, v22);
  v45 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v43 - v25;
  v27 = OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_workspace;
  swift_beginAccess();
  sub_1D677E3E4(v1 + v27, v18, sub_1D60CB67C);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    v28 = sub_1D60CB67C;
    v29 = v18;
  }

  else
  {
    sub_1D677E2B8(v18, v26, type metadata accessor for DebugFormatWorkspace);

    sub_1D725B31C();

    v30 = v48;
    if ((*(v48 + 48))(v8, 1, v9) == 1)
    {
      sub_1D677DBBC(v26, type metadata accessor for DebugFormatWorkspace);
      v28 = sub_1D677A398;
      v29 = v8;
    }

    else
    {
      v44 = type metadata accessor for DebugFormatWorkspaceCanvasSelection;
      v31 = v8;
      v32 = v47;
      sub_1D677E2B8(v31, v47, type metadata accessor for DebugFormatWorkspaceCanvasSelection);
      v33 = sub_1D726294C();
      (*(*(v33 - 8) + 56))(v49, 1, 1, v33);
      v34 = v46;
      sub_1D677E3E4(v32, v46, type metadata accessor for DebugFormatWorkspaceCanvasSelection);
      v35 = v45;
      sub_1D677E3E4(v26, v45, type metadata accessor for DebugFormatWorkspace);
      sub_1D726290C();
      v36 = v1;
      v37 = sub_1D72628FC();
      v38 = (*(v30 + 80) + 40) & ~*(v30 + 80);
      v39 = (v10 + *(v20 + 80) + v38) & ~*(v20 + 80);
      v40 = swift_allocObject();
      v41 = MEMORY[0x1E69E85E0];
      v40[2] = v37;
      v40[3] = v41;
      v40[4] = v36;
      sub_1D677E2B8(v34, v40 + v38, v44);
      sub_1D677E2B8(v35, v40 + v39, type metadata accessor for DebugFormatWorkspace);
      sub_1D6736BD4(0, 0, v49, &unk_1D72E9490, v40);

      sub_1D677DBBC(v32, type metadata accessor for DebugFormatWorkspaceCanvasSelection);
      v28 = type metadata accessor for DebugFormatWorkspace;
      v29 = v26;
    }
  }

  return sub_1D677DBBC(v29, v28);
}

unint64_t sub_1D677D34C()
{
  v1 = sub_1D725EF8C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DebugFormatWorkspaceCanvasSection();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1D7258DAC();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v12 = *(v0 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_sections);
    if (result < *(v12 + 16))
    {
      sub_1D677E3E4(v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * result, v10, type metadata accessor for DebugFormatWorkspaceCanvasSection);
      type metadata accessor for DebugFormatWorkspaceCanvasHeaderView();
      (*(v2 + 104))(v5, *MEMORY[0x1E69D8478], v1);
      v13 = sub_1D7262F7C();
      (*(v2 + 8))(v5, v1);
      v14 = *(v13 + OBJC_IVAR____TtC8NewsFeed36DebugFormatWorkspaceCanvasHeaderView_label);
      v15 = sub_1D6769DC8();
      [v14 setAttributedText_];

      sub_1D677DBBC(v10, type metadata accessor for DebugFormatWorkspaceCanvasSection);
      return v13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D677D598(uint64_t a1)
{
  v2 = v1;
  v53 = a1;
  sub_1D677A398(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v51 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v51 - v8;
  v52 = type metadata accessor for DebugFormatWorkspaceCanvasSelection();
  v56 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52, v10);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DebugFormatWorkspaceCanvasSection();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v54 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D60CB67C(0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DebugFormatWorkspace();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_workspace;
  swift_beginAccess();
  v55 = v2;
  sub_1D677E3E4(v2 + v26, v20, sub_1D60CB67C);
  v28 = *(v22 + 48);
  v27 = v22 + 48;
  if (v28(v20, 1, v21) == 1)
  {
    v29 = sub_1D60CB67C;
    v30 = v20;
    return sub_1D677DBBC(v30, v29);
  }

  sub_1D677E2B8(v20, v25, type metadata accessor for DebugFormatWorkspace);
  v31 = sub_1D7258DAC();
  if ((v31 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v27 = v25;
  v32 = *(v55 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_sections);
  if (v31 >= *(v32 + 16))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v26 = v54;
  sub_1D677E3E4(v32 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v31, v54, type metadata accessor for DebugFormatWorkspaceCanvasSection);
  v33 = *(v26 + *(v13 + 40));
  result = sub_1D7258D9C();
  if ((v33 & 0xC000000000000001) != 0)
  {
LABEL_20:
    v36 = MEMORY[0x1DA6FB460]();
    v35 = v52;
    goto LABEL_9;
  }

  v35 = v52;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v36 = *(v33 + 8 * result + 32);

LABEL_9:

    sub_1D725B31C();

    v37 = *(v56 + 48);
    if (v37(v9, 1, v35) == 1)
    {
      sub_1D677E3E4(v27, v12, type metadata accessor for DebugFormatWorkspace);
      v38 = *(v26 + 17);
      v39 = *(v26 + 18);
      *&v12[*(v35 + 24)] = MEMORY[0x1E69E7CC8];
      v40 = &v12[*(v35 + 20)];
      *v40 = v38;
      v40[1] = v39;
      if (v37(v9, 1, v35) != 1)
      {
        sub_1D677DBBC(v9, sub_1D677A398);
      }
    }

    else
    {
      sub_1D677E2B8(v9, v12, type metadata accessor for DebugFormatWorkspaceCanvasSelection);
    }

    v41 = sub_1D6A3B45C(v36);
    v43 = *(v36 + OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_group);
    v42 = *(v36 + OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_group + 8);
    if (v41)
    {
      sub_1D607E1D4(*(v36 + OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_group), *(v36 + OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_group + 8));
    }

    else
    {
      v44 = v27;
      v46 = *(v36 + OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_canvas + 24);
      v45 = *(v36 + OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_canvas + 32);
      v47 = *(v35 + 24);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57 = *&v12[v47];
      v49 = v45;
      v27 = v44;
      sub_1D6D76D20(v46, v49, v43, v42, isUniquelyReferenced_nonNull_native);

      *&v12[v47] = v57;
      v26 = v54;
    }

    v50 = v51;
    sub_1D677E3E4(v12, v51, type metadata accessor for DebugFormatWorkspaceCanvasSelection);
    (*(v56 + 56))(v50, 0, 1, v35);
    sub_1D67731E8(v50);

    sub_1D677DBBC(v12, type metadata accessor for DebugFormatWorkspaceCanvasSelection);
    sub_1D677DBBC(v27, type metadata accessor for DebugFormatWorkspace);
    v29 = type metadata accessor for DebugFormatWorkspaceCanvasSection;
    v30 = v26;
    return sub_1D677DBBC(v30, v29);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D677DBBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D677DC1C()
{
  if (!qword_1EC88B460)
  {
    type metadata accessor for DebugFormatCanvasView(255);
    sub_1D677DF4C(&qword_1EC88B468, type metadata accessor for DebugFormatCanvasView);
    v0 = sub_1D725DC4C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88B460);
    }
  }
}

uint64_t sub_1D677DCB8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for DebugFormatWorkspaceCanvasSection() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1D5B64684;

  return sub_1D6779BA8(a1, v8, v9, v10, v1 + v6, v11, v12);
}

void sub_1D677DDFC(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1D677DE70(255, a3, a4, a5);
    type metadata accessor for os_unfair_lock_s(255);
    v6 = sub_1D7263E4C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D677DE70(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1D677DED8(255, a3, a4);
    v5 = sub_1D7261E1C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D677DED8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1D5BA6EF4();
    v4 = sub_1D726297C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D677DF4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D677DF94(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for DebugFormatWorkspaceCanvasSelection() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for DebugFormatWorkspace() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1D5B64684;

  return sub_1D6775F44(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_1D677E0FC(uint64_t a1, uint64_t a2)
{
  sub_1D60CB67C(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D677E164(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for DebugFormatWorkspace() - 8);
  v6 = *(v5 + 64);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[6];
  v12 = v1 + ((*(v5 + 80) + 56) & ~*(v5 + 80));
  v13 = *(v12 + v6);
  if (*(v12 + v6 + 1))
  {
    v14 = 256;
  }

  else
  {
    v14 = 0;
  }

  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1D5B64680;

  return sub_1D677ABF4(a1, v7, v8, v9, v10, v11, v12, v14 | v13);
}

uint64_t sub_1D677E2B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_1D677E320()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_collectionView);
  [v1 contentOffset];
  v3 = v2;
  v5 = v4;
  [v1 reloadData];

  return [v1 setContentOffset_];
}

uint64_t sub_1D677E3A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 25))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_1D677C3B8(a1, *(v2 + 16), v3 | *(v2 + 24), *(v2 + 32), *(v2 + 40), a2);
}

uint64_t sub_1D677E3E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D677E464(uint64_t a1)
{
  v4 = *(type metadata accessor for DebugFormatWorkspace() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D5B64680;

  return sub_1D6777BAC(a1, v6, v7, v8, v1 + v5, v9);
}

void sub_1D677E594(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D677E5E4(uint64_t a1, char a2)
{
  sub_1D72585BC();

  sub_1D677859C(a1, a2);
}

uint64_t ExportedFeedDatabase.name.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t FeedDatabaseExporter.__allocating_init(cloudContext:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t FeedDatabaseExporter.databaseURLs(for:)(uint64_t a1)
{
  v3 = *(a1 + 16);

  v1 = sub_1D677E798(&v3);

  return v1;
}

uint64_t sub_1D677E798(uint64_t *a1)
{
  v44[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1D72585BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v43 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v38 = &v34 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v34 - v13;
  v42 = *a1;
  v15 = [objc_opt_self() defaultManager];
  v16 = [*(v1 + 16) contentDirectory];
  sub_1D726207C();

  sub_1D725840C();

  v17 = sub_1D725844C();
  v36 = *(v5 + 8);
  v37 = v5 + 8;
  v36(v14, v4);
  v44[0] = 0;
  v18 = [v15 contentsOfDirectoryAtURL:v17 includingPropertiesForKeys:0 options:0 error:v44];

  v19 = v44[0];
  if (!v18)
  {
    v23 = v44[0];
    sub_1D725829C();

    swift_willThrow();
    return v23;
  }

  v20 = sub_1D726267C();
  v21 = v19;

  v41 = *(v20 + 16);
  if (!v41)
  {
    v23 = MEMORY[0x1E69E7CC0];
LABEL_16:

    return v23;
  }

  v22 = 0;
  v39 = (v5 + 32);
  v40 = v5 + 16;
  v23 = MEMORY[0x1E69E7CC0];
  v34 = v5;
  v35 = v4;
  v24 = v38;
  while (1)
  {
    if (v22 >= *(v20 + 16))
    {
      __break(1u);
    }

    v25 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v26 = *(v5 + 72);
    (*(v5 + 16))(v24, v20 + v25 + v26 * v22, v4);
    v27 = sub_1D677F5CC(v24, v42);
    if (v2)
    {
      break;
    }

    if (v27)
    {
      v28 = *v39;
      (*v39)(v43, v24, v4);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44[0] = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D69971B4(0, v23[2] + 1, 1);
        v23 = v44[0];
      }

      v31 = v23[2];
      v30 = v23[3];
      if (v31 >= v30 >> 1)
      {
        sub_1D69971B4(v30 > 1, v31 + 1, 1);
        v23 = v44[0];
      }

      v23[2] = v31 + 1;
      v32 = v23 + v25 + v31 * v26;
      v4 = v35;
      v28(v32, v43, v35);
      v5 = v34;
      v24 = v38;
    }

    else
    {
      v36(v24, v4);
    }

    if (v41 == ++v22)
    {
      goto LABEL_16;
    }
  }

  v36(v24, v4);

  __break(1u);
  return result;
}

uint64_t FeedDatabaseExporter.exportDatabase(for:)(uint64_t a1, uint64_t *a2)
{
  *(v3 + 72) = a1;
  *(v3 + 80) = v2;
  v5 = sub_1D725C7FC();
  *(v3 + 88) = v5;
  *(v3 + 96) = *(v5 - 8);
  *(v3 + 104) = swift_task_alloc();
  v6 = sub_1D725C60C();
  *(v3 + 112) = v6;
  *(v3 + 120) = *(v6 - 8);
  *(v3 + 128) = swift_task_alloc();
  v7 = sub_1D72585BC();
  *(v3 + 136) = v7;
  *(v3 + 144) = *(v7 - 8);
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = swift_task_alloc();
  v8 = sub_1D725C85C();
  *(v3 + 168) = v8;
  *(v3 + 176) = *(v8 - 8);
  v9 = swift_task_alloc();
  v10 = *a2;
  *(v3 + 184) = v9;
  *(v3 + 192) = v10;
  *(v3 + 200) = *(a2 + 1);
  *(v3 + 216) = a2[3];

  return MEMORY[0x1EEE6DFA0](sub_1D677ED94, 0, 0);
}

uint64_t sub_1D677ED94()
{
  v20 = v0[26];
  v1 = v0[22];
  v2 = v0[20];
  v15 = v0[23];
  v16 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  v14 = v0[17];
  v17 = v0[12];
  v18 = v0[13];
  v5 = v0[10];
  v19 = v0[11];
  v21 = v0[24];
  v22 = v0[25];

  MEMORY[0x1DA6F9910](6448173, 0xE300000000000000);
  v0[28] = v21;
  v0[29] = v22;
  sub_1D725C86C();
  v6 = [*(v5 + 16) contentDirectory];
  sub_1D726207C();

  sub_1D725840C();

  sub_1D725848C();
  v7 = sub_1D725852C();
  v9 = v8;
  v10 = *(v3 + 8);
  v10(v4, v14);
  v10(v2, v14);
  *v15 = v7;
  v15[1] = v9;
  (*(v1 + 104))(v15, *MEMORY[0x1E69D6280], v16);
  sub_1D677F4F8(0, &qword_1EDF023B0, MEMORY[0x1E69E6F90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D7273AE0;
  sub_1D725C5FC();
  v0[8] = v11;
  sub_1D677F4A0();
  sub_1D677F4F8(0, &qword_1EDF05340, MEMORY[0x1E69E62F8]);
  sub_1D677F558();
  sub_1D7263B6C();
  (*(v17 + 104))(v18, *MEMORY[0x1E69D6268], v19);
  v0[30] = sub_1D725C80C();
  v0[31] = v20();
  v12 = swift_task_alloc();
  v0[32] = v12;
  *v12 = v0;
  v12[1] = sub_1D677F114;

  return MEMORY[0x1EEE44EE0](v12);
}

uint64_t sub_1D677F114()
{
  *(*v1 + 264) = v0;

  if (v0)
  {

    v2 = sub_1D677F3F8;
  }

  else
  {
    v2 = sub_1D677F258;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D677F258()
{
  v14 = v0;
  v1 = v0[33];
  sub_1D725C7DC();
  if (v1)
  {
  }

  else
  {
    sub_1D725C82C();
    v4 = v0[28];
    v3 = v0[29];
    sub_1D5C3C480();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    *(inited + 32) = v4;
    *(inited + 40) = v3;
    v13 = inited;

    v6 = sub_1D677E798(&v13);
    v8 = v0[29];
    v7 = v0[30];
    v9 = v6;
    v10 = v0[28];
    v11 = v0[9];

    *v11 = v7;
    v11[1] = v10;
    v11[2] = v8;
    v11[3] = v9;
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1D677F3F8()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1D677F4A0()
{
  result = qword_1EDF174D0;
  if (!qword_1EDF174D0)
  {
    sub_1D725C60C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF174D0);
  }

  return result;
}

void sub_1D677F4F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D725C60C();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D677F558()
{
  result = qword_1EDF05338;
  if (!qword_1EDF05338)
  {
    sub_1D677F4F8(255, &qword_1EDF05340, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05338);
  }

  return result;
}

BOOL sub_1D677F5CC(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 40;
  v3 = *(a2 + 16) + 1;
  do
  {
    if (!--v3)
    {
      break;
    }

    v4 = v2 + 16;

    sub_1D725841C();
    sub_1D5BF4D9C();
    v5 = sub_1D7263ABC();

    v2 = v4;
  }

  while ((v5 & 1) == 0);
  return v3 != 0;
}

uint64_t FeedDatabaseExporter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

char *sub_1D677F734(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC8NewsFeed36DebugFormatWorkspaceCanvasHeaderView_label;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v28.receiver = v4;
  v28.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v28, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = OBJC_IVAR____TtC8NewsFeed36DebugFormatWorkspaceCanvasHeaderView_label;
  v13 = *&v11[OBJC_IVAR____TtC8NewsFeed36DebugFormatWorkspaceCanvasHeaderView_label];
  v14 = v11;
  [v14 addSubview_];
  [*&v11[v12] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v11[v12] setNumberOfLines_];
  v15 = objc_opt_self();
  sub_1D5E42B34();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D728AF30;
  v17 = [*&v11[v12] leadingAnchor];
  v18 = [v14 leadingAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  *(v16 + 32) = v19;
  v20 = [*&v11[v12] trailingAnchor];
  v21 = [v14 trailingAnchor];

  v22 = [v20 constraintEqualToAnchor_];
  *(v16 + 40) = v22;
  v23 = [*&v11[v12] bottomAnchor];
  v24 = [v14 bottomAnchor];

  v25 = [v23 constraintEqualToAnchor_];
  *(v16 + 48) = v25;
  sub_1D60D0DF4();
  v26 = sub_1D726265C();

  [v15 activateConstraints_];

  return v14;
}

uint64_t sub_1D677FAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[515] = v6;
  v7[514] = a6;
  v7[513] = a5;
  v7[512] = a4;
  v7[511] = a3;
  v7[510] = a2;
  v7[509] = a1;
  v8 = sub_1D725895C();
  v7[516] = v8;
  v7[517] = *(v8 - 8);
  v7[518] = swift_task_alloc();
  v9 = sub_1D7259D1C();
  v7[519] = v9;
  v7[520] = *(v9 - 8);
  v7[521] = swift_task_alloc();
  v7[522] = swift_task_alloc();
  v10 = sub_1D7259CFC();
  v7[523] = v10;
  v7[524] = *(v10 - 8);
  v7[525] = swift_task_alloc();
  v7[526] = swift_task_alloc();
  v11 = sub_1D725A19C();
  v7[527] = v11;
  v7[528] = *(v11 - 8);
  v7[529] = swift_task_alloc();
  v12 = sub_1D7259F5C();
  v7[530] = v12;
  v7[531] = *(v12 - 8);
  v7[532] = swift_task_alloc();
  v7[533] = swift_task_alloc();
  v13 = sub_1D7257A4C();
  v7[534] = v13;
  v7[535] = *(v13 - 8);
  v7[536] = swift_task_alloc();
  v14 = sub_1D72585BC();
  v7[537] = v14;
  v7[538] = *(v14 - 8);
  v7[539] = swift_task_alloc();
  v7[540] = swift_task_alloc();
  v7[541] = swift_task_alloc();
  v7[542] = swift_task_alloc();
  v7[543] = swift_task_alloc();
  v7[544] = swift_task_alloc();
  v7[545] = swift_task_alloc();
  v7[546] = type metadata accessor for DebugFormatWorkspaceSnapshotManifest();
  v7[547] = swift_task_alloc();
  v15 = sub_1D725891C();
  v7[548] = v15;
  v7[549] = *(v15 - 8);
  v7[550] = swift_task_alloc();
  v7[551] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D677FF00, 0, 0);
}

uint64_t sub_1D677FF00()
{
  v1 = *(v0 + 4408);
  v2 = *(v0 + 4400);
  v3 = *(v0 + 4392);
  v4 = *(v0 + 4384);
  v5 = *(v0 + 4376);
  v6 = *(v0 + 4368);
  sub_1D725890C();
  v7 = *(v3 + 16);
  v7(v2, v1, v4);
  v8 = *(v6 + 32);
  *(v0 + 1060) = v8;
  *(v5 + v8) = MEMORY[0x1E69E7CC0];
  v7(v5, v2, v4);
  if (qword_1EDF3CA50 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 4376);
  v10 = *(v0 + 4368);
  v11 = sub_1D725BD1C();
  v12 = __swift_project_value_buffer(v11, qword_1EDF3CA58);
  v13 = *(v10 + 20);
  v14 = *(*(v11 - 8) + 16);
  v14(v9 + v13, v12, v11);
  if (qword_1EDF3CA98 != -1)
  {
    swift_once();
  }

  v15 = *(v0 + 4376);
  v16 = *(v0 + 4368);
  v17 = __swift_project_value_buffer(v11, qword_1EDF3CAA0);
  v14(v15 + *(v16 + 24), v17, v11);
  if (qword_1EC87DA80 != -1)
  {
    swift_once();
  }

  v18 = *(v0 + 4400);
  v19 = *(v0 + 4392);
  v20 = *(v0 + 4384);
  v21 = *(v0 + 4376);
  v22 = *(v0 + 4368);
  v23 = *(v19 + 8);
  *(v0 + 4416) = v23;
  *(v0 + 4424) = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v137 = v23;
  v23(v18, v20);
  v24 = __swift_project_value_buffer(v11, qword_1EC9BAC88);
  v14(v21 + *(v22 + 28), v24, v11);
  v25 = NSTemporaryDirectory();
  v140 = sub_1D726207C();
  v27 = v26;

  if (qword_1EDF272B0 != -1)
  {
    swift_once();
  }

  v28 = qword_1EDFFCAA0;
  v29 = sub_1D725881C();
  v30 = [v28 stringFromDate_];

  v31 = sub_1D726207C();
  v33 = v32;

  MEMORY[0x1DA6F9910](v31, v33);

  v34 = 0x636170736B726F77;
  v35 = 0xEA00000000002D65;
  sub_1D725796C();

  *(v0 + 3992) = 0x636170736B726F77;
  *(v0 + 4000) = 0xEA00000000002D65;
  sub_1D5BF4D9C();
  v36 = sub_1D7263A1C();
  v38 = v37;
  v40 = v39;

  if (v40)
  {
    v41 = 0xEA00000000002D65;
  }

  else
  {
    do
    {
      v34 = sub_1D6C2BD5C(v36, v38, 45, 0xE100000000000000, v34, v35);
      v41 = v42;

      *(v0 + 3992) = v34;
      *(v0 + 4000) = v41;
      v36 = sub_1D7263A1C();
      v38 = v43;
      v45 = v44;

      v35 = v41;
    }

    while ((v45 & 1) == 0);
  }

  (*(*(v0 + 4280) + 8))(*(v0 + 4288), *(v0 + 4272));
  *(v0 + 3976) = v34;
  *(v0 + 3984) = v41;
  *(v0 + 3960) = v140;
  *(v0 + 3968) = v27;
  sub_1D726235C();
  sub_1D726226C();

  sub_1D725840C();

  v46 = objc_opt_self();
  v47 = [v46 defaultManager];
  v48 = sub_1D725844C();
  *(v0 + 4056) = 0;
  v49 = [v47 removeItemAtURL:v48 error:v0 + 4056];

  v50 = *(v0 + 4056);
  if (v49)
  {
    v51 = v50;
  }

  else
  {
    v52 = v50;
    v53 = sub_1D725829C();

    swift_willThrow();
  }

  v54 = [v46 defaultManager];
  v55 = sub_1D725844C();
  *(v0 + 4048) = 0;
  v56 = [v54 createDirectoryAtURL:v55 withIntermediateDirectories:0 attributes:0 error:v0 + 4048];

  v57 = *(v0 + 4048);
  if (v56)
  {
    v58 = v57;
  }

  else
  {
    v59 = v57;
    v60 = sub_1D725829C();

    swift_willThrow();
  }

  sub_1D725849C();
  v61 = [v46 defaultManager];
  v62 = sub_1D725844C();
  *(v0 + 4040) = 0;
  v63 = [v61 createDirectoryAtURL:v62 withIntermediateDirectories:0 attributes:0 error:v0 + 4040];

  v64 = *(v0 + 4040);
  if (v63)
  {
    v65 = *(v0 + 4088);
    *(v0 + 4032) = MEMORY[0x1E69E7CC8];
    v66 = *(v65 + 16);
    *(v0 + 4432) = v66;
    if (v66)
    {
      *(v0 + 1244) = *MEMORY[0x1E69D7278];
      *(v0 + 1428) = *MEMORY[0x1E69D7110];
      v67 = v64;
      v68 = 0;
      while (1)
      {
        *(v0 + 4448) = MEMORY[0x1E69E7CC0];
        *(v0 + 4440) = v68;
        v69 = *(v0 + 4088) + 2 * v68;
        v70 = *(v69 + 32);
        *(v0 + 1243) = v70;
        v71 = *(v69 + 33);
        *(v0 + 1427) = v71;
        *(v0 + 3944) = sub_1D6E23ADC(v70);
        *(v0 + 3952) = v72;
        MEMORY[0x1DA6F9910](95, 0xE100000000000000);
        v73 = v71 ? 0x70616373646E616CLL : 0x7469617274726F70;
        v74 = v71 ? 0xE900000000000065 : 0xE800000000000000;
        MEMORY[0x1DA6F9910](v73, v74);

        *(v0 + 4456) = *(v0 + 3944);
        *(v0 + 4464) = *(v0 + 3952);
        sub_1D72629AC();
        v75 = *(*(v0 + 4096) + 16);
        *(v0 + 4472) = v75;
        if (v75)
        {
          break;
        }

        v68 = *(v0 + 4440) + 1;
        if (v68 == *(v0 + 4432))
        {
          goto LABEL_32;
        }
      }

      v91 = *(v0 + 4120);
      *(v0 + 4480) = sub_1D726290C();
      *(v0 + 1611) = sub_1D6F79CFC(v70);
      *(v0 + 4488) = objc_opt_self();
      *(v0 + 4496) = *(v91 + 16);
      *(v0 + 4536) = 0u;
      *(v0 + 4552) = 0u;
      *(v0 + 4504) = 0u;
      *(v0 + 4520) = 0u;
      v92 = *(v0 + 4096);
      *(v0 + 1612) = *(v92 + 32);
      *(v0 + 4568) = *(v92 + 40);
      *(v0 + 1613) = *(v92 + 48);
      *(v0 + 1614) = *(v92 + 49);
      *(v0 + 4576) = sub_1D72628FC();
      v94 = sub_1D726285C();

      return MEMORY[0x1EEE6DFA0](sub_1D6781138, v94, v93);
    }

    else
    {
      v84 = v64;
LABEL_32:

      sub_1D725849C();
      sub_1D678ED98(&qword_1EC88B4F0, type metadata accessor for DebugFormatWorkspaceSnapshotManifest);
      v85 = sub_1D72578BC();
      *(v0 + 4936) = v85;
      *(v0 + 4944) = v86;
      v87 = v85;
      v88 = v86;
      sub_1D725869C();
      v139 = v87;
      v142 = v88;
      v95 = *(v0 + 4136);
      v136 = *(v0 + 4144);
      v138 = *(v0 + 4128);
      v96 = *(v0 + 4080);
      sub_1D725849C();
      v97 = (v96 + *(type metadata accessor for DebugFormatWorkspace() + 20));
      v98 = v97[8];
      v99 = v97[9];
      v100 = v97[10];
      *(v0 + 2895) = *(v97 + 175);
      *(v0 + 2864) = v99;
      *(v0 + 2880) = v100;
      *(v0 + 2848) = v98;
      v101 = v97[4];
      v102 = v97[5];
      v103 = v97[7];
      *(v0 + 2816) = v97[6];
      *(v0 + 2832) = v103;
      *(v0 + 2784) = v101;
      *(v0 + 2800) = v102;
      v104 = *v97;
      v105 = v97[1];
      v106 = v97[3];
      *(v0 + 2752) = v97[2];
      *(v0 + 2768) = v106;
      *(v0 + 2720) = v104;
      *(v0 + 2736) = v105;
      v108 = v97[2];
      v107 = v97[3];
      *(v0 + 3456) = v97[1];
      *(v0 + 3472) = v108;
      *(v0 + 3488) = v107;
      v109 = v97[7];
      v111 = v97[4];
      v110 = v97[5];
      *(v0 + 3536) = v97[6];
      *(v0 + 3552) = v109;
      *(v0 + 3504) = v111;
      *(v0 + 3520) = v110;
      v113 = v97[9];
      v112 = v97[10];
      v114 = v97[8];
      *(v0 + 3615) = *(v97 + 175);
      *(v0 + 3584) = v113;
      *(v0 + 3600) = v112;
      *(v0 + 3568) = v114;
      sub_1D5ECF1C0(v0 + 2720, v0 + 2536);
      sub_1D725894C();
      v115 = sub_1D725893C();
      v117 = v116;
      *(v0 + 4952) = v115;
      *(v0 + 4960) = v116;
      (*(v95 + 8))(v136, v138);

      *(v0 + 2904) = v115;
      *(v0 + 2912) = v117;
      v118 = *(v0 + 3472);
      *(v0 + 2920) = *(v0 + 3456);
      *(v0 + 2936) = v118;
      v119 = *(v0 + 3536);
      *(v0 + 2984) = *(v0 + 3520);
      *(v0 + 3000) = v119;
      v120 = *(v0 + 3504);
      *(v0 + 2952) = *(v0 + 3488);
      *(v0 + 2968) = v120;
      v121 = *(v0 + 3568);
      *(v0 + 3016) = *(v0 + 3552);
      *(v0 + 3032) = v121;
      v122 = *(v0 + 3600);
      *(v0 + 3048) = *(v0 + 3584);
      *(v0 + 3064) = v122;
      *(v0 + 3079) = *(v0 + 3615);
      v123 = *(v0 + 3048);
      *(v0 + 2480) = *(v0 + 3032);
      *(v0 + 2496) = v123;
      *(v0 + 2512) = *(v0 + 3064);
      *(v0 + 2527) = *(v0 + 3079);
      v124 = *(v0 + 2984);
      *(v0 + 2416) = *(v0 + 2968);
      *(v0 + 2432) = v124;
      v125 = *(v0 + 3016);
      *(v0 + 2448) = *(v0 + 3000);
      *(v0 + 2464) = v125;
      v126 = *(v0 + 2920);
      *(v0 + 2352) = *(v0 + 2904);
      *(v0 + 2368) = v126;
      v127 = *(v0 + 2952);
      *(v0 + 2384) = *(v0 + 2936);
      *(v0 + 2400) = v127;
      sub_1D5ECF1C0(v0 + 2904, v0 + 2168);
      sub_1D5E3303C();
      *(v0 + 4968) = sub_1D72578BC();
      *(v0 + 4976) = v128;
      v129 = *(v0 + 2496);
      *(v0 + 1744) = *(v0 + 2480);
      *(v0 + 1760) = v129;
      *(v0 + 1776) = *(v0 + 2512);
      *(v0 + 1791) = *(v0 + 2527);
      v130 = *(v0 + 2432);
      *(v0 + 1680) = *(v0 + 2416);
      *(v0 + 1696) = v130;
      v131 = *(v0 + 2464);
      *(v0 + 1712) = *(v0 + 2448);
      *(v0 + 1728) = v131;
      v132 = *(v0 + 2368);
      *(v0 + 1616) = *(v0 + 2352);
      *(v0 + 1632) = v132;
      v133 = *(v0 + 2400);
      *(v0 + 1648) = *(v0 + 2384);
      *(v0 + 1664) = v133;
      sub_1D5ECF21C(v0 + 1616);
      sub_1D725869C();
      v134 = swift_task_alloc();
      *(v0 + 4984) = v134;
      *v134 = v0;
      v134[1] = sub_1D67893C8;

      return sub_1D678CD4C(v139, v142);
    }
  }

  else
  {
    v76 = *(v0 + 4408);
    v77 = *(v0 + 4384);
    v141 = *(v0 + 4376);
    v78 = *(v0 + 4360);
    v79 = *(v0 + 4352);
    v80 = *(v0 + 4304);
    v81 = *(v0 + 4296);
    v135 = *(v0 + 4120);
    v82 = v64;
    sub_1D725829C();

    swift_willThrow();
    v83 = *(v80 + 8);
    v83(v79, v81);
    v83(v78, v81);
    v137(v76, v77);
    sub_1D678EB84(v141, type metadata accessor for DebugFormatWorkspaceSnapshotManifest);
    sub_1D678ADBC(v135);

    v89 = *(v0 + 8);

    return v89();
  }
}

uint64_t sub_1D6781138()
{
  v1 = *(v0 + 1614);
  v2 = *(v0 + 1613);
  v3 = *(v0 + 4568);
  v4 = *(v0 + 1612);
  v5 = *(v0 + 1427);
  v6 = *(v0 + 1243);
  v7 = *(v0 + 4104);

  if (v1)
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  if (v5)
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  sub_1D67F6CC8(1, 0, v4, v3, v8 | v2, v9 | v6, v0 + 3696);
  v10 = *(v0 + 3762);
  [v7 bounds];
  v11 = sub_1D6E24328(v6, v7);
  v13 = v12;
  if (v6 < 0x1B)
  {
    v14 = &unk_1F5118C90;
LABEL_9:
    v15 = sub_1D5E29338(v14);
    goto LABEL_10;
  }

  if (v6 - 27 < 6)
  {
    v14 = &unk_1F5118C68;
    goto LABEL_9;
  }

  v15 = MEMORY[0x1E69E7CD0];
LABEL_10:
  v16 = *(v0 + 4112);
  v17 = *(v0 + 4104);
  v18 = *(v0 + 1243) - 33;
  v19 = sub_1D61867BC(v10, v15);

  v20 = [v17 traitCollection];
  *(swift_task_alloc() + 16) = v0 + 3696;
  v21 = sub_1D72630DC();

  [v17 layoutMargins];
  sub_1D7262E0C();
  sub_1D7262DFC();
  [v16 safeAreaInsets];
  v23 = v22;
  v25 = v24;
  if (v18 >= 2)
  {
    sub_1D7262DFC();
    sub_1D7262E0C();
    v23 = v26;
    v25 = v27;
  }

  if (v19 & v10)
  {
    v28 = v11;
  }

  else
  {
    v28 = v13;
  }

  if (v19 & v10)
  {
    v11 = v13;
  }

  v29 = *(v0 + 4488);
  v30 = *(v0 + 1244);
  v31 = *(v0 + 4232);
  v32 = *(v0 + 4224);
  v33 = *(v0 + 4216);
  sub_1D6E24200(*(v0 + 4112), v11, v28, v23, v25);
  sub_1D725A64C();
  sub_1D726332C();
  v34 = [v29 mainScreen];
  [v34 nativeBounds];

  v35 = [v21 preferredContentSizeCategory];
  v36 = *(v32 + 104);
  *(v0 + 4584) = v36;
  *(v0 + 4592) = (v32 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v36(v31, v30, v33);
  sub_1D7259E5C();

  return MEMORY[0x1EEE6DFA0](sub_1D6781578, 0, 0);
}

uint64_t sub_1D6781578()
{
  v1 = *(v0 + 4504);
  v2 = *(v0 + 1428);
  v3 = *(v0 + 4176);
  v4 = *(v0 + 4160);
  v5 = *(v0 + 4152);
  v6 = *(v4 + 104);
  *(v0 + 4600) = v6;
  *(v0 + 4608) = (v4 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v6(v3, v2, v5);
  sub_1D7259D0C();
  if (v1)
  {
    v7 = *(v0 + 4520);
    v8 = *(v0 + 4264);
    v9 = *(v0 + 4248);
    v10 = *(v0 + 4240);
    v11 = *(v0 + 4176);
    v12 = *(v0 + 4160);
    v13 = *(v0 + 4152);

    (*(v12 + 8))(v11, v13);
    (*(v9 + 8))(v8, v10);

    if (v7)
    {
      v14 = *(v0 + 4552);
      v15 = *(v0 + 4536);
      v48 = *(v0 + 4520);

      v49 = v15;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *(v0 + 4448);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v17 = sub_1D69949A4(0, *(v17 + 2) + 1, 1, *(v0 + 4448));
      }

      v19 = *(v17 + 2);
      v18 = *(v17 + 3);
      if (v19 >= v18 >> 1)
      {
        v17 = sub_1D69949A4((v18 > 1), v19 + 1, 1, v17);
      }

      v43 = *(v0 + 4528);
      v44 = *(v0 + 4544);
      v20 = *(v0 + 4512);
      v42 = *(v0 + 4416);
      v46 = *(v0 + 4520);
      v47 = *(v0 + 1060);
      v21 = *(v0 + 4408);
      v22 = *(v0 + 4384);
      v45 = *(v0 + 4376);
      v23 = *(v0 + 4360);
      v24 = *(v0 + 4296);
      v25 = *(*(v0 + 4304) + 8);
      v25(*(v0 + 4352), v24);
      v25(v23, v24);
      v42(v21, v22);
      *(v17 + 2) = v19 + 1;
      v26 = &v17[48 * v19];
      *(v26 + 4) = v20;
      *(v26 + 5) = v48;
      *(v26 + 6) = v43;
      *(v26 + 7) = v49;
      *(v26 + 8) = v44;
      *(v26 + 9) = v14;
      sub_1D678E758(v20, v46);
      *(v45 + v47) = v17;
    }

    else
    {
      v31 = *(v0 + 4416);
      v32 = *(v0 + 4408);
      v33 = *(v0 + 4384);
      v34 = *(v0 + 4360);
      v35 = *(v0 + 4296);
      v36 = *(*(v0 + 4304) + 8);
      v36(*(v0 + 4352), v35);
      v36(v34, v35);
      v31(v32, v33);
    }

    v37 = *(v0 + 4120);
    sub_1D678EB84(*(v0 + 4376), type metadata accessor for DebugFormatWorkspaceSnapshotManifest);
    sub_1D678ADBC(v37);

    v38 = *(v0 + 8);

    return v38();
  }

  else
  {
    v27 = *(v0 + 4176);
    v28 = *(v0 + 4160);
    v29 = *(v0 + 4152);
    v30 = *(v28 + 8);
    *(v0 + 4616) = v30;
    *(v0 + 4624) = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v30(v27, v29);
    sub_1D72629AC();
    *(v0 + 4632) = 0;
    *(v0 + 4640) = sub_1D72628FC();
    v41 = sub_1D726285C();

    return MEMORY[0x1EEE6DFA0](sub_1D6781C08, v41, v40);
  }
}

uint64_t sub_1D6781C08()
{
  v1 = *(v0 + 1614);
  v2 = *(v0 + 1613);
  v3 = *(v0 + 4568);
  v4 = *(v0 + 1612);
  v5 = *(v0 + 1427);
  v6 = *(v0 + 1243);
  v7 = *(v0 + 4104);

  if (v1)
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  if (v5)
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  sub_1D67F6CC8(2, 0, v4, v3, v8 | v2, v9 | v6, v0 + 3624);
  v10 = *(v0 + 3690);
  [v7 bounds];
  v11 = sub_1D6E24328(v6, v7);
  v13 = v12;
  if (v6 < 0x1B)
  {
    v14 = &unk_1F5118C90;
LABEL_9:
    v15 = sub_1D5E29338(v14);
    goto LABEL_10;
  }

  if (v6 - 27 < 6)
  {
    v14 = &unk_1F5118C68;
    goto LABEL_9;
  }

  v15 = MEMORY[0x1E69E7CD0];
LABEL_10:
  v16 = *(v0 + 4112);
  v17 = *(v0 + 4104);
  v18 = *(v0 + 1243) - 33;
  v19 = sub_1D61867BC(v10, v15);

  v20 = [v17 traitCollection];
  *(swift_task_alloc() + 16) = v0 + 3624;
  v21 = sub_1D72630DC();

  [v17 layoutMargins];
  sub_1D7262E0C();
  sub_1D7262DFC();
  [v16 safeAreaInsets];
  v23 = v22;
  v25 = v24;
  if (v18 >= 2)
  {
    sub_1D7262DFC();
    sub_1D7262E0C();
    v23 = v26;
    v25 = v27;
  }

  if (v19 & v10)
  {
    v28 = v11;
  }

  else
  {
    v28 = v13;
  }

  if (v19 & v10)
  {
    v11 = v13;
  }

  v29 = *(v0 + 4584);
  v30 = *(v0 + 4488);
  v31 = *(v0 + 1244);
  v32 = *(v0 + 4232);
  v33 = *(v0 + 4216);
  sub_1D6E24200(*(v0 + 4112), v11, v28, v23, v25);
  sub_1D725A64C();
  sub_1D726332C();
  v34 = [v30 mainScreen];
  [v34 nativeBounds];

  v35 = [v21 preferredContentSizeCategory];
  v29(v32, v31, v33);
  sub_1D7259E5C();

  return MEMORY[0x1EEE6DFA0](sub_1D6782030, 0, 0);
}

uint64_t sub_1D6782030()
{
  v1 = *(v0 + 4632);
  (*(v0 + 4600))(*(v0 + 4168), *(v0 + 1428), *(v0 + 4152));
  sub_1D7259D0C();
  v2 = *(v0 + 4616);
  if (v1)
  {
    v52 = *(v0 + 4264);
    v54 = *(v0 + 4520);
    v3 = *(v0 + 4256);
    v4 = *(v0 + 4248);
    v5 = *(v0 + 4240);
    v50 = *(v0 + 4208);
    v6 = *(v0 + 4192);
    v7 = *(v0 + 4184);
    v8 = *(v0 + 4168);
    v9 = *(v0 + 4152);

    v2(v8, v9);
    v10 = *(v4 + 8);
    v10(v3, v5);
    (*(v6 + 8))(v50, v7);
    v10(v52, v5);

    if (v54)
    {
      v11 = *(v0 + 4552);
      v12 = *(v0 + 4536);
      v51 = *(v0 + 4520);

      v53 = v12;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = *(v0 + 4448);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v14 = sub_1D69949A4(0, *(v14 + 2) + 1, 1, *(v0 + 4448));
      }

      v16 = *(v14 + 2);
      v15 = *(v14 + 3);
      if (v16 >= v15 >> 1)
      {
        v14 = sub_1D69949A4((v15 > 1), v16 + 1, 1, v14);
      }

      v45 = *(v0 + 4528);
      v46 = *(v0 + 4544);
      v17 = *(v0 + 4512);
      v44 = *(v0 + 4416);
      v48 = *(v0 + 4520);
      v49 = *(v0 + 1060);
      v18 = *(v0 + 4408);
      v19 = *(v0 + 4384);
      v47 = *(v0 + 4376);
      v20 = *(v0 + 4360);
      v21 = *(v0 + 4296);
      v22 = *(*(v0 + 4304) + 8);
      v22(*(v0 + 4352), v21);
      v22(v20, v21);
      v44(v18, v19);
      *(v14 + 2) = v16 + 1;
      v23 = &v14[48 * v16];
      *(v23 + 4) = v17;
      *(v23 + 5) = v51;
      *(v23 + 6) = v45;
      *(v23 + 7) = v53;
      *(v23 + 8) = v46;
      *(v23 + 9) = v11;
      sub_1D678E758(v17, v48);
      *(v47 + v49) = v14;
    }

    else
    {
      v25 = *(v0 + 4416);
      v26 = *(v0 + 4408);
      v27 = *(v0 + 4384);
      v28 = *(v0 + 4360);
      v29 = *(v0 + 4296);
      v30 = *(*(v0 + 4304) + 8);
      v30(*(v0 + 4352), v29);
      v30(v28, v29);
      v25(v26, v27);
    }

    v31 = *(v0 + 4120);
    sub_1D678EB84(*(v0 + 4376), type metadata accessor for DebugFormatWorkspaceSnapshotManifest);
    sub_1D678ADBC(v31);

    v32 = *(v0 + 8);

    return v32();
  }

  else
  {
    v2(*(v0 + 4168), *(v0 + 4152));
    sub_1D72629AC();
    v24 = *(v0 + 4520);
    if (v24)
    {
      v34 = *(v0 + 4552);
      v35 = *(v0 + 4544);
      v36 = *(v0 + 4536);
      v37 = *(v0 + 4528);
      v38 = *(v0 + 4512);
    }

    else
    {
      v39 = *(v0 + 1243);
      v35 = sub_1D7259CCC();
      v38 = sub_1D6E236D4(v39);
      v36 = 0xE800000000000000;
      if (*(v0 + 1427))
      {
        v36 = 0xE900000000000065;
      }

      v37 = 0x70616373646E614CLL;
      if (!*(v0 + 1427))
      {
        v37 = 0x7469617274726F50;
      }

      v34 = MEMORY[0x1E69E7CC0];
    }

    *(v0 + 4688) = v34;
    *(v0 + 4680) = v35;
    *(v0 + 4672) = v36;
    *(v0 + 4664) = v37;
    *(v0 + 4656) = v24;
    *(v0 + 4648) = v38;
    v40 = swift_task_alloc();
    *(v0 + 4696) = v40;
    *v40 = v0;
    v40[1] = sub_1D67827A0;
    v41 = *(v0 + 4208);
    v42 = *(v0 + 4120);
    v43 = *(v0 + 4080);

    return sub_1D678AE80(v0 + 4032, v41, v42, v43);
  }
}

uint64_t sub_1D67827A0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 4704) = a1;
  *(v3 + 4712) = v1;

  if (v1)
  {

    v4 = sub_1D6789C4C;
  }

  else
  {
    v4 = sub_1D6782900;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D6782900()
{
  v1 = *(v0 + 4712);
  sub_1D72629AC();
  *(v0 + 4720) = v1;
  if (v1)
  {
    v45 = *(v0 + 4688);
    v44 = *(v0 + 4672);
    v2 = *(v0 + 4656);
    v42 = *(v0 + 4264);
    v3 = *(v0 + 4256);
    v4 = *(v0 + 4248);
    v5 = *(v0 + 4240);
    v6 = *(v0 + 4208);
    v7 = *(v0 + 4200);
    v8 = *(v0 + 4192);
    v9 = *(v0 + 4184);

    v10 = *(v8 + 8);
    v10(v7, v9);
    v11 = *(v4 + 8);
    v11(v3, v5);
    v10(v6, v9);
    v11(v42, v5);

    v43 = v2;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v0 + 4448);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_1D69949A4(0, *(v13 + 2) + 1, 1, *(v0 + 4448));
    }

    v15 = *(v13 + 2);
    v14 = *(v13 + 3);
    if (v15 >= v14 >> 1)
    {
      v13 = sub_1D69949A4((v14 > 1), v15 + 1, 1, v13);
    }

    v36 = *(v0 + 4664);
    v37 = *(v0 + 4680);
    v16 = *(v0 + 4648);
    v35 = *(v0 + 4416);
    v40 = *(v0 + 1060);
    v17 = *(v0 + 4408);
    v18 = *(v0 + 4384);
    v38 = *(v0 + 4376);
    v39 = *(v0 + 4656);
    v19 = *(v0 + 4360);
    v20 = *(v0 + 4296);
    v41 = *(v0 + 4120);
    v21 = *(*(v0 + 4304) + 8);
    v21(*(v0 + 4352), v20);
    v21(v19, v20);
    v35(v17, v18);
    *(v13 + 2) = v15 + 1;
    v22 = &v13[48 * v15];
    *(v22 + 4) = v16;
    *(v22 + 5) = v43;
    *(v22 + 6) = v36;
    *(v22 + 7) = v44;
    *(v22 + 8) = v37;
    *(v22 + 9) = v45;
    sub_1D678E758(v16, v39);
    *(v38 + v40) = v13;
    sub_1D678EB84(v38, type metadata accessor for DebugFormatWorkspaceSnapshotManifest);
    sub_1D678ADBC(v41);

    v23 = *(v0 + 8);

    return v23();
  }

  else
  {
    v25 = *(v0 + 4472);
    v26 = *(v0 + 4560) + 1;
    if (*(v0 + 1427))
    {
      v27 = 0x70616373646E614CLL;
    }

    else
    {
      v27 = 0x7469617274726F50;
    }

    if (*(v0 + 1427))
    {
      v28 = 0xE900000000000065;
    }

    else
    {
      v28 = 0xE800000000000000;
    }

    *(v0 + 4728) = *(*(v0 + 4704) + 16);
    *(v0 + 3912) = 0;
    *(v0 + 3920) = 0xE000000000000000;
    v29 = *(v0 + 1243);

    sub_1D7263D4C();

    *(v0 + 3928) = 0xD000000000000019;
    *(v0 + 3936) = 0x80000001D73D4460;
    v30 = sub_1D6E236D4(v29);
    MEMORY[0x1DA6F9910](v30);

    MEMORY[0x1DA6F9910](2108704, 0xE300000000000000);
    MEMORY[0x1DA6F9910](v27, v28);

    MEMORY[0x1DA6F9910](10272, 0xE200000000000000);
    *(v0 + 4024) = v26;
    v31 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v31);

    MEMORY[0x1DA6F9910](543584032, 0xE400000000000000);
    *(v0 + 4016) = v25;
    v32 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v32);

    MEMORY[0x1DA6F9910](774778409, 0xE400000000000000);
    *(v0 + 4736) = *(v0 + 3928);
    *(v0 + 4744) = *(v0 + 3936);
    *(v0 + 4752) = sub_1D72628FC();
    v34 = sub_1D726285C();

    return MEMORY[0x1EEE6DFA0](sub_1D6782EF8, v34, v33);
  }
}

uint64_t sub_1D6782EF8()
{
  v1 = v0[593];
  v2 = v0[592];
  v3 = v0[591];
  v4 = v0[562];

  type metadata accessor for DebugFormatWorkspaceCanvasStatusProgress();
  swift_allocObject();
  v0[595] = sub_1D676AC6C(v4, v3, v2, v1);

  return MEMORY[0x1EEE6DFA0](sub_1D6782FE0, 0, 0);
}

uint64_t sub_1D6782FE0()
{
  v2 = -112;
  v3 = *(v1 + 4568);
  v4 = sub_1D5EDF2A8(*(v1 + 1612));
  v6 = v5;
  *(v1 + 4768) = v4;
  *(v1 + 4776) = v5;
  if (v3)
  {
    if (v3 == 1)
    {
      v7 = 0xED00007466654C20;
      v8 = 0x6F74207468676952;
    }

    else
    {
      v7 = 0xE700000000000000;
      v8 = 0x6E776F6E6B6E75;
    }
  }

  else
  {
    v7 = 0xED00007468676952;
    v8 = 0x206F74207466654CLL;
  }

  *(v1 + 4792) = v7;
  *(v1 + 4784) = v8;
  v9 = *(v1 + 4704);
  v10 = *(v1 + 1614);
  *(v1 + 5008) = *(v1 + 1613);
  *(v1 + 1059) = v10;
  v11 = *(v9 + 16);
  *(v1 + 4800) = v11;
  v12 = *(v1 + 4720);
  if (!v11)
  {
    v39 = *(v1 + 4688);

    v40 = sub_1D6E1B254(MEMORY[0x1E69E7CC0]);

    v238 = *(v1 + 5008);
    v235 = *(v1 + 1059);

    v243 = v40;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = sub_1D699486C(0, *(v39 + 2) + 1, 1, v39);
    }

    v42 = *(v39 + 2);
    v41 = *(v39 + 3);
    v250 = v12;
    if (v42 >= v41 >> 1)
    {
      v246 = sub_1D699486C((v41 > 1), v42 + 1, 1, v39);
    }

    else
    {
      v246 = v39;
    }

    v224 = *(v1 + 4784);
    v228 = *(v1 + 4792);
    v216 = *(v1 + 4768);
    v220 = *(v1 + 4776);
    v43 = *(v1 + 4560);
    v231 = *(v1 + 4472);
    v214 = *(v1 + 4264);
    v44 = *(v1 + 4256);
    v45 = *(v1 + 4248);
    v46 = *(v1 + 4240);
    v47 = *(v1 + 4208);
    v48 = *(v1 + 4200);
    v49 = *(v1 + 4192);
    v50 = *(v1 + 4184);

    v221 = v43 + 1;
    v51 = *(v49 + 8);
    v51(v48, v50);
    v52 = *(v45 + 8);
    v52(v44, v46);
    v51(v47, v50);
    v52(v214, v46);
    v53 = v246;
    *(v246 + 2) = v42 + 1;
    v54 = &v246[48 * v42];
    *(v54 + 4) = v216;
    *(v54 + 5) = v220;
    *(v54 + 6) = v224;
    *(v54 + 7) = v228;
    v54[64] = v238;
    v54[65] = v235;
    *(v54 + 9) = v243;

    if (v221 == v231)
    {
      v55 = *(v1 + 4656);

      if (v55)
      {
        v56 = *(v1 + 4672);
        v57 = *(v1 + 4656);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v59 = *(v1 + 4448);
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v59 = sub_1D69949A4(0, *(v59 + 2) + 1, 1, *(v1 + 4448));
        }

        v61 = *(v59 + 2);
        v60 = *(v59 + 3);
        if (v61 >= v60 >> 1)
        {
          v59 = sub_1D69949A4((v60 > 1), v61 + 1, 1, v59);
        }

        v62 = *(v1 + 4680);
        v63 = *(v1 + 4664);
        v64 = *(v1 + 4656);
        v65 = *(v1 + 4648);
        v66 = *(v1 + 1060);
        v67 = *(v1 + 4376);
        *(v59 + 2) = v61 + 1;
        v68 = &v59[48 * v61];
        *(v68 + 4) = v65;
        *(v68 + 5) = v57;
        *(v68 + 6) = v63;
        *(v68 + 7) = v56;
        *(v68 + 8) = v62;
        *(v68 + 9) = v246;
        sub_1D678E758(v65, v64);
        *(v67 + v66) = v59;
      }

      else
      {
        v59 = *(v1 + 4448);
      }

      v134 = *(v1 + 4440) + 1;
      if (v134 == *(v1 + 4432))
      {
        goto LABEL_40;
      }

      *(v1 + 4448) = v59;
      *(v1 + 4440) = v134;
      v144 = *(v1 + 4088) + 2 * v134;
      v145 = *(v144 + 32);
      *(v1 + 1243) = v145;
      v146 = *(v144 + 33);
      *(v1 + 1427) = v146;
      *(v1 + 3944) = sub_1D6E23ADC(v145);
      *(v1 + 3952) = v147;
      MEMORY[0x1DA6F9910](95, 0xE100000000000000);
      if (v146)
      {
        v148 = 0x70616373646E616CLL;
      }

      else
      {
        v148 = 0x7469617274726F70;
      }

      if (v146)
      {
        v149 = 0xE900000000000065;
      }

      else
      {
        v149 = 0xE800000000000000;
      }

      MEMORY[0x1DA6F9910](v148, v149);

      *(v1 + 4456) = *(v1 + 3944);
      *(v1 + 4464) = *(v1 + 3952);
      sub_1D72629AC();
      if (v250)
      {
        v150 = *(v1 + 4416);
        v151 = *(v1 + 4408);
        v152 = *(v1 + 4384);
        v252 = *(v1 + 4376);
        v153 = *(v1 + 4360);
        v154 = *(v1 + 4352);
        v155 = *(v1 + 4304);
        v156 = *(v1 + 4296);
        v247 = *(v1 + 4120);

        v157 = *(v155 + 8);
        v157(v154, v156);
        v157(v153, v156);
        v150(v151, v152);
        sub_1D678EB84(v252, type metadata accessor for DebugFormatWorkspaceSnapshotManifest);
        goto LABEL_51;
      }

      v161 = *(*(v1 + 4096) + 16);
      *(v1 + 4472) = v161;
      if (!v161)
      {

        v200 = *(v1 + 4440) + 1;
        if (v200 == *(v1 + 4432))
        {
          v250 = 0;
LABEL_40:

          sub_1D725849C();
          sub_1D678ED98(&qword_1EC88B4F0, type metadata accessor for DebugFormatWorkspaceSnapshotManifest);
          v135 = sub_1D72578BC();
          *(v1 + 4936) = v135;
          *(v1 + 4944) = v136;
          if (!v250)
          {
            v158 = v135;
            v159 = v136;
            sub_1D725869C();
            v240 = v159;
            v164 = *(v1 + 4144);
            v248 = *(v1 + 4136);
            v253 = *(v1 + 4128);
            v165 = *(v1 + 4080);
            sub_1D725849C();
            v166 = (v165 + *(type metadata accessor for DebugFormatWorkspace() + 20));
            v167 = v166[8];
            v168 = v166[9];
            v169 = v166[10];
            *(v1 + 2895) = *(v166 + 175);
            *(v1 + 2864) = v168;
            *(v1 + 2880) = v169;
            *(v1 + 2848) = v167;
            v170 = v166[4];
            v171 = v166[5];
            v172 = v166[7];
            *(v1 + 2816) = v166[6];
            *(v1 + 2832) = v172;
            *(v1 + 2784) = v170;
            *(v1 + 2800) = v171;
            v173 = *v166;
            v174 = v166[1];
            v175 = v166[3];
            *(v1 + 2752) = v166[2];
            *(v1 + 2768) = v175;
            *(v1 + 2720) = v173;
            *(v1 + 2736) = v174;
            v177 = v166[2];
            v176 = v166[3];
            *(v1 + 3456) = v166[1];
            *(v1 + 3472) = v177;
            *(v1 + 3488) = v176;
            v178 = v166[7];
            v180 = v166[4];
            v179 = v166[5];
            *(v1 + 3536) = v166[6];
            *(v1 + 3552) = v178;
            *(v1 + 3504) = v180;
            *(v1 + 3520) = v179;
            v182 = v166[9];
            v181 = v166[10];
            v183 = v166[8];
            *(v1 + 3615) = *(v166 + 175);
            *(v1 + 3584) = v182;
            *(v1 + 3600) = v181;
            *(v1 + 3568) = v183;
            sub_1D5ECF1C0(v1 + 2720, v1 + 2536);
            sub_1D725894C();
            v184 = sub_1D725893C();
            v186 = v185;
            *(v1 + 4952) = v184;
            *(v1 + 4960) = v185;
            v187 = v164;
            v188 = v184;
            (*(v248 + 8))(v187, v253);

            *(v1 + 2904) = v188;
            *(v1 + 2912) = v186;
            v189 = *(v1 + 3472);
            *(v1 + 2920) = *(v1 + 3456);
            *(v1 + 2936) = v189;
            v190 = *(v1 + 3536);
            *(v1 + 2984) = *(v1 + 3520);
            *(v1 + 3000) = v190;
            v191 = *(v1 + 3504);
            *(v1 + 2952) = *(v1 + 3488);
            *(v1 + 2968) = v191;
            v192 = *(v1 + 3568);
            *(v1 + 3016) = *(v1 + 3552);
            *(v1 + 3032) = v192;
            v193 = *(v1 + 3600);
            *(v1 + 3048) = *(v1 + 3584);
            *(v1 + 3064) = v193;
            *(v1 + 3079) = *(v1 + 3615);
            v194 = *(v1 + 3048);
            *(v1 + 2480) = *(v1 + 3032);
            *(v1 + 2496) = v194;
            *(v1 + 2512) = *(v1 + 3064);
            *(v1 + 2527) = *(v1 + 3079);
            v195 = *(v1 + 2984);
            *(v1 + 2416) = *(v1 + 2968);
            *(v1 + 2432) = v195;
            v196 = *(v1 + 3016);
            *(v1 + 2448) = *(v1 + 3000);
            *(v1 + 2464) = v196;
            v197 = *(v1 + 2920);
            *(v1 + 2352) = *(v1 + 2904);
            *(v1 + 2368) = v197;
            v198 = *(v1 + 2952);
            *(v1 + 2384) = *(v1 + 2936);
            *(v1 + 2400) = v198;
            sub_1D5ECF1C0(v1 + 2904, v1 + 2168);
            sub_1D5E3303C();
            *(v1 + 4968) = sub_1D72578BC();
            *(v1 + 4976) = v199;
            v207 = *(v1 + 2496);
            *(v1 + 1744) = *(v1 + 2480);
            *(v1 + 1760) = v207;
            *(v1 + 1776) = *(v1 + 2512);
            *(v1 + 1791) = *(v1 + 2527);
            v208 = *(v1 + 2432);
            *(v1 + 1680) = *(v1 + 2416);
            *(v1 + 1696) = v208;
            v209 = *(v1 + 2464);
            *(v1 + 1712) = *(v1 + 2448);
            *(v1 + 1728) = v209;
            v210 = *(v1 + 2368);
            *(v1 + 1616) = *(v1 + 2352);
            *(v1 + 1632) = v210;
            v211 = *(v1 + 2400);
            *(v1 + 1648) = *(v1 + 2384);
            *(v1 + 1664) = v211;
            sub_1D5ECF21C(v1 + 1616);
            sub_1D725869C();
            v212 = swift_task_alloc();
            *(v1 + 4984) = v212;
            *v212 = v1;
            v212[1] = sub_1D67893C8;

            return sub_1D678CD4C(v158, v240);
          }

          v137 = *(v1 + 4416);
          v138 = *(v1 + 4408);
          v139 = *(v1 + 4384);
          v251 = *(v1 + 4376);
          v140 = *(v1 + 4360);
          v141 = *(v1 + 4352);
          v142 = *(v1 + 4296);
          v247 = *(v1 + 4120);
          v143 = *(*(v1 + 4304) + 8);
          v143(*(v1 + 4328), v142);
          v143(v141, v142);
          v143(v140, v142);
          v137(v138, v139);
          sub_1D678EB84(v251, type metadata accessor for DebugFormatWorkspaceSnapshotManifest);
LABEL_51:
          v133 = v247;
LABEL_52:
          sub_1D678ADBC(v133);

          v160 = *(v1 + 8);

          return v160();
        }

        while (1)
        {
          *(v1 + 4448) = v59;
          *(v1 + 4440) = v200;
          v201 = *(v1 + 4088) + 2 * v200;
          v145 = *(v201 + 32);
          *(v1 + 1243) = v145;
          v202 = *(v201 + 33);
          *(v1 + 1427) = v202;
          *(v1 + 3944) = sub_1D6E23ADC(v145);
          *(v1 + 3952) = v203;
          MEMORY[0x1DA6F9910](95, 0xE100000000000000);
          v204 = v202 ? 0x70616373646E616CLL : 0x7469617274726F70;
          v205 = v202 ? 0xE900000000000065 : 0xE800000000000000;
          MEMORY[0x1DA6F9910](v204, v205);

          *(v1 + 4456) = *(v1 + 3944);
          *(v1 + 4464) = *(v1 + 3952);
          sub_1D72629AC();
          v206 = *(*(v1 + 4096) + 16);
          *(v1 + 4472) = v206;
          if (v206)
          {
            break;
          }

          v250 = 0;
          v200 = *(v1 + 4440) + 1;
          if (v200 == *(v1 + 4432))
          {
            goto LABEL_40;
          }
        }
      }

      v162 = *(v1 + 4120);
      *(v1 + 4480) = sub_1D726290C();
      *(v1 + 1611) = sub_1D6F79CFC(v145);
      v163 = objc_opt_self();
      v122 = 0;
      v118 = 0;
      v53 = 0;
      v121 = 0;
      *(v1 + 4488) = v163;
      *(v1 + 4496) = *(v162 + 16);
      v120 = 0uLL;
      v119 = 0uLL;
    }

    else
    {
      v118 = *(v1 + 4680);
      v119 = *(v1 + 4664);
      v120 = *(v1 + 4648);
      v121 = *(v1 + 4560) + 1;
      v122 = v250;
    }

    *(v1 + 4560) = v121;
    *(v1 + 4552) = v53;
    *(v1 + 4544) = v118;
    *(v1 + 4528) = v119;
    *(v1 + 4512) = v120;
    *(v1 + 4504) = v122;
    v123 = *(v1 + 4096) + 24 * v121;
    *(v1 + 1612) = *(v123 + 32);
    *(v1 + 4568) = *(v123 + 40);
    *(v1 + 1613) = *(v123 + 48);
    *(v1 + 1614) = *(v123 + 49);
    *(v1 + 4576) = sub_1D72628FC();
    v125 = sub_1D726285C();

    return MEMORY[0x1EEE6DFA0](sub_1D6781138, v125, v124);
  }

  *(v1 + 4808) = MEMORY[0x1E69E7CC0];
  *(v1 + 4816) = 0;
  if (!*(v9 + 16))
  {
    __break(1u);
    goto LABEL_72;
  }

  v13 = *(v9 + 32);

  sub_1D72629AC();
  if (v12)
  {
    v7 = *(v1 + 4808);
    v0 = *(v1 + 4688);

    v6 = sub_1D6E1B254(v7);

    LOBYTE(v7) = *(v1 + 5008);
    v2 = *(v1 + 1059);

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_10:
      v15 = *(v0 + 2);
      v14 = *(v0 + 3);
      v244 = v6;
      v241 = v7;
      v237 = v2;
      if (v15 >= v14 >> 1)
      {
        v249 = sub_1D699486C((v14 > 1), v15 + 1, 1, v0);
      }

      else
      {
        v249 = v0;
      }

      v226 = *(v1 + 4784);
      v229 = *(v1 + 4792);
      v222 = *(v1 + 4776);
      v233 = *(v1 + 4656);
      v215 = *(v1 + 4264);
      v218 = *(v1 + 4768);
      v16 = *(v1 + 4256);
      v17 = *(v1 + 4248);
      v18 = *(v1 + 4240);
      v19 = *(v1 + 4208);
      v20 = *(v1 + 4200);
      v21 = *(v1 + 4192);
      v22 = *(v1 + 4184);

      v23 = *(v21 + 8);
      v23(v20, v22);
      v24 = *(v17 + 8);
      v24(v16, v18);
      v23(v19, v22);
      v24(v215, v18);
      *(v249 + 2) = v15 + 1;
      v25 = &v249[48 * v15];
      *(v25 + 4) = v218;
      *(v25 + 5) = v222;
      *(v25 + 6) = v226;
      *(v25 + 7) = v229;
      v25[64] = v241;
      v25[65] = v237;
      *(v25 + 9) = v244;

      if (v233)
      {
        v26 = *(v1 + 4672);
        v27 = *(v1 + 4656);

        v28 = swift_isUniquelyReferenced_nonNull_native();
        v29 = *(v1 + 4448);
        v245 = v26;
        if ((v28 & 1) == 0)
        {
          v29 = sub_1D69949A4(0, *(v29 + 2) + 1, 1, v29);
        }

        v31 = *(v29 + 2);
        v30 = *(v29 + 3);
        v242 = v27;
        if (v31 >= v30 >> 1)
        {
          v29 = sub_1D69949A4((v30 > 1), v31 + 1, 1, v29);
        }

        v230 = *(v1 + 4656);
        v32 = *(v1 + 4648);
        v219 = *(v1 + 4664);
        v213 = *(v1 + 4416);
        v234 = *(v1 + 1060);
        v33 = *(v1 + 4408);
        v34 = *(v1 + 4384);
        v223 = *(v1 + 4680);
        v227 = *(v1 + 4376);
        v35 = *(v1 + 4360);
        v36 = *(v1 + 4296);
        v37 = *(*(v1 + 4304) + 8);
        v37(*(v1 + 4352), v36);
        v37(v35, v36);
        v213(v33, v34);
        *(v29 + 2) = v31 + 1;
        v38 = &v29[48 * v31];
        *(v38 + 4) = v32;
        *(v38 + 5) = v242;
        *(v38 + 6) = v219;
        *(v38 + 7) = v245;
        *(v38 + 8) = v223;
        *(v38 + 9) = v249;
        sub_1D678E758(v32, v230);
        *(v227 + v234) = v29;
      }

      else
      {
        v126 = *(v1 + 4416);
        v127 = *(v1 + 4408);
        v128 = *(v1 + 4384);
        v129 = *(v1 + 4360);
        v130 = *(v1 + 4296);
        v131 = *(*(v1 + 4304) + 8);
        v131(*(v1 + 4352), v130);
        v131(v129, v130);
        v126(v127, v128);
      }

      v132 = *(v1 + 4120);
      sub_1D678EB84(*(v1 + 4376), type metadata accessor for DebugFormatWorkspaceSnapshotManifest);
      v133 = v132;
      goto LABEL_52;
    }

LABEL_72:
    v0 = sub_1D699486C(0, *(v0 + 2) + 1, 1, v0);
    goto LABEL_10;
  }

  v232 = *(v1 + 4464);
  v225 = *(v1 + 4456);
  v217 = *(v1 + 1427);
  v69 = *(v1 + 1243);
  v70 = *(v1 + 4144);
  v71 = *(v1 + 4136);
  v72 = *(v1 + 4128);
  v73 = *(v1 + 4080);
  sub_1D725894C();
  v74 = sub_1D725893C();
  v236 = v75;
  v239 = v74;
  *(v1 + 4824) = v74;
  *(v1 + 4832) = v75;
  (*(v71 + 8))(v70, v72);
  v76 = type metadata accessor for DebugFormatWorkspace();
  v77 = (v73 + *(v76 + 20));
  v79 = *v77;
  v78 = v77[1];
  v81 = *(v77 + 2);
  v80 = *(v77 + 3);
  v82 = *(v77 + 1);
  *(v1 + 3088) = *v77;
  *(v1 + 3104) = v82;
  *(v1 + 3120) = v81;
  *(v1 + 3136) = v80;
  v83 = *(v77 + 175);
  v84 = *(v77 + 10);
  v85 = *(v77 + 8);
  *(v1 + 3232) = *(v77 + 9);
  *(v1 + 3248) = v84;
  *(v1 + 3263) = v83;
  *(v1 + 3216) = v85;
  v87 = *(v77 + 6);
  v86 = *(v77 + 7);
  v88 = *(v77 + 4);
  *(v1 + 3168) = *(v77 + 5);
  *(v1 + 3184) = v87;
  *(v1 + 3200) = v86;
  *(v1 + 3152) = v88;
  v89 = *(v73 + *(v76 + 32));
  v90 = *v77;
  v91 = *(v77 + 1);
  v92 = *(v77 + 3);
  *(v1 + 496) = *(v77 + 2);
  *(v1 + 512) = v92;
  *(v1 + 464) = v90;
  *(v1 + 480) = v91;
  v93 = *(v77 + 4);
  v94 = *(v77 + 5);
  v95 = *(v77 + 7);
  *(v1 + 560) = *(v77 + 6);
  *(v1 + 576) = v95;
  *(v1 + 528) = v93;
  *(v1 + 544) = v94;
  v96 = *(v77 + 8);
  v97 = *(v77 + 9);
  v98 = *(v77 + 10);
  *(v1 + 639) = *(v77 + 175);
  *(v1 + 608) = v97;
  *(v1 + 624) = v98;
  *(v1 + 592) = v96;
  *(v1 + 448) = v79;
  *(v1 + 456) = v78;
  *(v1 + 643) = v69;
  *(v1 + 644) = v217;
  *(v1 + 648) = v89;
  *(v1 + 656) = v13;
  *(v1 + 3816) = 0;
  *(v1 + 3824) = 0xE000000000000000;

  sub_1D5ECF1C0(v1 + 3088, v1 + 880);

  sub_1D7263D4C();
  *(v1 + 4064) = sub_1D7259CCC();
  v99 = sub_1D72644BC();
  v101 = v100;

  *(v1 + 3832) = v99;
  *(v1 + 3840) = v101;
  MEMORY[0x1DA6F9910](95, 0xE100000000000000);
  MEMORY[0x1DA6F9910](v225, v232);
  MEMORY[0x1DA6F9910](95, 0xE100000000000000);
  v102 = sub_1D71D6228();
  MEMORY[0x1DA6F9910](v102);

  MEMORY[0x1DA6F9910](95, 0xE100000000000000);
  MEMORY[0x1DA6F9910](v239, v236);
  MEMORY[0x1DA6F9910](0x702E746867696C5FLL, 0xEA0000000000676ELL);
  v103 = sub_1D726210C();
  v105 = v104;

  *(v1 + 4840) = v103;
  *(v1 + 4848) = v105;
  sub_1D725849C();
  v106 = *(v1 + 624);
  *(v1 + 824) = *(v1 + 608);
  *(v1 + 840) = v106;
  *(v1 + 856) = *(v1 + 640);
  *(v1 + 872) = *(v1 + 656);
  v107 = *(v1 + 560);
  *(v1 + 760) = *(v1 + 544);
  *(v1 + 776) = v107;
  v108 = *(v1 + 592);
  *(v1 + 792) = *(v1 + 576);
  *(v1 + 808) = v108;
  v109 = *(v1 + 496);
  *(v1 + 696) = *(v1 + 480);
  *(v1 + 712) = v109;
  v110 = *(v1 + 528);
  *(v1 + 728) = *(v1 + 512);
  *(v1 + 744) = v110;
  v111 = *(v1 + 464);
  *(v1 + 664) = *(v1 + 448);
  *(v1 + 680) = v111;
  v112 = swift_task_alloc();
  *(v1 + 4856) = v112;
  *v112 = v1;
  v112[1] = sub_1D678472C;
  v113 = *(v1 + 4344);
  v114 = *(v1 + 4264);
  v115 = *(v1 + 4208);
  v116 = *(v1 + 4104);

  return sub_1D678BDFC(v1 + 664, v116, v114, v115, v113);
}

uint64_t sub_1D678472C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 4864) = a1;
  *(v3 + 4872) = v1;

  if (v1)
  {

    v4 = sub_1D678A000;
  }

  else
  {
    v4 = sub_1D67848B8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D67848B8()
{
  v2 = (v0 + 1059);
  v3 = (v0 + 448);
  if (*(v0 + 4864))
  {
    v4 = v0 + 232;
    v253 = *(v0 + 4824);
    v258 = *(v0 + 4832);
    v5 = *(v0 + 4464);
    v6 = *(v0 + 4456);
    *(v0 + 3864) = 0;
    *(v0 + 3872) = 0xE000000000000000;
    sub_1D7263D4C();
    *(v0 + 4008) = sub_1D7259CCC();
    v7 = sub_1D72644BC();
    v9 = v8;

    *(v0 + 3848) = v7;
    *(v0 + 3856) = v9;
    MEMORY[0x1DA6F9910](95, 0xE100000000000000);
    MEMORY[0x1DA6F9910](v6, v5);
    MEMORY[0x1DA6F9910](95, 0xE100000000000000);
    v10 = sub_1D71D6228();
    MEMORY[0x1DA6F9910](v10);

    MEMORY[0x1DA6F9910](95, 0xE100000000000000);
    MEMORY[0x1DA6F9910](v253, v258);

    MEMORY[0x1DA6F9910](0x6E702E6B7261645FLL, 0xE900000000000067);
    v11 = sub_1D726210C();
    v13 = v12;

    *(v0 + 4880) = v11;
    *(v0 + 4888) = v13;
    sub_1D725849C();
    v14 = *(v0 + 624);
    *(v0 + 392) = *(v0 + 608);
    *(v0 + 408) = v14;
    *(v0 + 424) = *(v0 + 640);
    v15 = *(v0 + 560);
    *(v0 + 328) = *(v0 + 544);
    *(v0 + 344) = v15;
    v16 = *(v0 + 592);
    *(v0 + 360) = *(v0 + 576);
    *(v0 + 376) = v16;
    v17 = *(v0 + 496);
    *(v0 + 264) = *(v0 + 480);
    *(v0 + 280) = v17;
    v18 = *(v0 + 528);
    *(v0 + 296) = *(v0 + 512);
    *(v0 + 312) = v18;
    v19 = *(v0 + 464);
    *(v0 + 232) = *v3;
    *(v0 + 440) = *(v0 + 656);
    *(v0 + 248) = v19;
    v20 = swift_task_alloc();
    *(v0 + 4896) = v20;
    *v20 = v0;
    v20[1] = sub_1D67861D4;
    v21 = *(v0 + 4336);
    v22 = *(v0 + 4256);
    v23 = *(v0 + 4200);
LABEL_3:
    v24 = *(v0 + 4104);

    return sub_1D678BDFC(v4, v24, v22, v23, v21);
  }

  v26 = -112;
  (*(*(v0 + 4304) + 8))(*(v0 + 4344), *(v0 + 4296));
  sub_1D5F2B134(v0 + 448);

  v27 = *(v0 + 4872);
  v28 = *(v0 + 4816) + 1;
  if (v28 != *(v0 + 4800))
  {
    *(v0 + 4816) = v28;
    v60 = *(v0 + 4704);
    if (v28 >= *(v60 + 16))
    {
      __break(1u);
    }

    else
    {
      v61 = *(v60 + 8 * v28 + 32);

      sub_1D72629AC();
      if (!v27)
      {
        v4 = v0 + 664;
        v247 = *(v0 + 4464);
        v241 = *(v0 + 4456);
        v233 = *(v0 + 1427);
        v230 = *(v0 + 1243);
        v97 = *(v0 + 4144);
        v98 = *(v0 + 4136);
        v99 = *(v0 + 4128);
        v100 = *(v0 + 4080);
        sub_1D725894C();
        v101 = sub_1D725893C();
        v252 = v102;
        v256 = v101;
        *(v0 + 4824) = v101;
        *(v0 + 4832) = v102;
        (*(v98 + 8))(v97, v99);
        v103 = type metadata accessor for DebugFormatWorkspace();
        v104 = (v100 + *(v103 + 20));
        v106 = *v104;
        v105 = v104[1];
        v108 = *(v104 + 2);
        v107 = *(v104 + 3);
        v109 = *(v104 + 1);
        *(v0 + 3088) = *v104;
        *(v0 + 3104) = v109;
        *(v0 + 3120) = v108;
        *(v0 + 3136) = v107;
        v110 = *(v104 + 175);
        v111 = *(v104 + 10);
        v112 = *(v104 + 8);
        *(v0 + 3232) = *(v104 + 9);
        *(v0 + 3248) = v111;
        *(v0 + 3263) = v110;
        *(v0 + 3216) = v112;
        v113 = *(v104 + 7);
        v114 = *(v104 + 4);
        v115 = *(v104 + 5);
        *(v0 + 3184) = *(v104 + 6);
        *(v0 + 3200) = v113;
        *(v0 + 3152) = v114;
        *(v0 + 3168) = v115;
        v116 = *(v100 + *(v103 + 32));
        v117 = *v104;
        v118 = *(v104 + 1);
        v119 = *(v104 + 3);
        *(v0 + 496) = *(v104 + 2);
        *(v0 + 512) = v119;
        *(v0 + 464) = v117;
        *(v0 + 480) = v118;
        v120 = *(v104 + 4);
        v121 = *(v104 + 5);
        v122 = *(v104 + 7);
        *(v0 + 560) = *(v104 + 6);
        *(v0 + 576) = v122;
        *(v0 + 528) = v120;
        *(v0 + 544) = v121;
        v123 = *(v104 + 8);
        v124 = *(v104 + 9);
        v125 = *(v104 + 10);
        *(v0 + 639) = *(v104 + 175);
        *(v0 + 608) = v124;
        *(v0 + 624) = v125;
        *(v0 + 592) = v123;
        *(v0 + 448) = v106;
        *(v0 + 456) = v105;
        *(v0 + 643) = v230;
        *(v0 + 644) = v233;
        *(v0 + 648) = v116;
        *(v0 + 656) = v61;
        *(v0 + 3816) = 0;
        *(v0 + 3824) = 0xE000000000000000;

        sub_1D5ECF1C0(v0 + 3088, v0 + 880);

        sub_1D7263D4C();
        *(v0 + 4064) = sub_1D7259CCC();
        v126 = sub_1D72644BC();
        v128 = v127;

        *(v0 + 3832) = v126;
        *(v0 + 3840) = v128;
        MEMORY[0x1DA6F9910](95, 0xE100000000000000);
        MEMORY[0x1DA6F9910](v241, v247);
        MEMORY[0x1DA6F9910](95, 0xE100000000000000);
        v129 = sub_1D71D6228();
        MEMORY[0x1DA6F9910](v129);

        MEMORY[0x1DA6F9910](95, 0xE100000000000000);
        MEMORY[0x1DA6F9910](v256, v252);
        MEMORY[0x1DA6F9910](0x702E746867696C5FLL, 0xEA0000000000676ELL);
        v130 = sub_1D726210C();
        v132 = v131;

        *(v0 + 4840) = v130;
        *(v0 + 4848) = v132;
        sub_1D725849C();
        v133 = *(v0 + 624);
        *(v0 + 824) = *(v0 + 608);
        *(v0 + 840) = v133;
        *(v0 + 856) = *(v0 + 640);
        *(v0 + 872) = *(v0 + 656);
        v134 = *(v0 + 560);
        *(v0 + 760) = *(v0 + 544);
        *(v0 + 776) = v134;
        v135 = *(v0 + 592);
        *(v0 + 792) = *(v0 + 576);
        *(v0 + 808) = v135;
        v136 = *(v0 + 496);
        *(v0 + 696) = *(v0 + 480);
        *(v0 + 712) = v136;
        v137 = *(v0 + 528);
        *(v0 + 728) = *(v0 + 512);
        *(v0 + 744) = v137;
        v138 = *(v0 + 464);
        *(v0 + 664) = *v3;
        *(v0 + 680) = v138;
        v139 = swift_task_alloc();
        *(v0 + 4856) = v139;
        *v139 = v0;
        v139[1] = sub_1D678472C;
        v21 = *(v0 + 4344);
        v22 = *(v0 + 4264);
        v23 = *(v0 + 4208);
        goto LABEL_3;
      }

      v62 = *(v0 + 4808);
      v3 = *(v0 + 4688);

      v2 = sub_1D6E1B254(v62);

      v1 = *(v0 + 5008);
      v26 = *(v0 + 1059);

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_21;
      }
    }

    v3 = sub_1D699486C(0, *(v3 + 2) + 1, 1, v3);
LABEL_21:
    v64 = *(v3 + 2);
    v63 = *(v3 + 3);
    v262 = v2;
    v260 = v1;
    v255 = v26;
    if (v64 >= v63 >> 1)
    {
      v267 = sub_1D699486C((v63 > 1), v64 + 1, 1, v3);
    }

    else
    {
      v267 = v3;
    }

    v243 = *(v0 + 4784);
    v245 = *(v0 + 4792);
    v239 = *(v0 + 4776);
    v249 = *(v0 + 4656);
    v232 = *(v0 + 4264);
    v235 = *(v0 + 4768);
    v65 = *(v0 + 4256);
    v66 = *(v0 + 4248);
    v67 = *(v0 + 4240);
    v68 = *(v0 + 4208);
    v69 = *(v0 + 4200);
    v70 = *(v0 + 4192);
    v71 = *(v0 + 4184);

    v72 = *(v70 + 8);
    v72(v69, v71);
    v73 = *(v66 + 8);
    v73(v65, v67);
    v72(v68, v71);
    v73(v232, v67);
    *(v267 + 2) = v64 + 1;
    v74 = &v267[48 * v64];
    *(v74 + 4) = v235;
    *(v74 + 5) = v239;
    *(v74 + 6) = v243;
    *(v74 + 7) = v245;
    v74[64] = v260;
    v74[65] = v255;
    *(v74 + 9) = v262;

    if (v249)
    {
      v75 = *(v0 + 4672);
      v76 = *(v0 + 4656);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v78 = *(v0 + 4448);
      v263 = v75;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v78 = sub_1D69949A4(0, *(v78 + 2) + 1, 1, v78);
      }

      v80 = *(v78 + 2);
      v79 = *(v78 + 3);
      v261 = v76;
      if (v80 >= v79 >> 1)
      {
        v78 = sub_1D69949A4((v79 > 1), v80 + 1, 1, v78);
      }

      v246 = *(v0 + 4656);
      v81 = *(v0 + 4648);
      v236 = *(v0 + 4664);
      v229 = *(v0 + 4416);
      v250 = *(v0 + 1060);
      v82 = *(v0 + 4408);
      v83 = *(v0 + 4384);
      v240 = *(v0 + 4680);
      v244 = *(v0 + 4376);
      v84 = *(v0 + 4360);
      v85 = *(v0 + 4296);
      v86 = *(*(v0 + 4304) + 8);
      v86(*(v0 + 4352), v85);
      v86(v84, v85);
      v229(v82, v83);
      *(v78 + 2) = v80 + 1;
      v87 = &v78[48 * v80];
      *(v87 + 4) = v81;
      *(v87 + 5) = v261;
      *(v87 + 6) = v236;
      *(v87 + 7) = v263;
      *(v87 + 8) = v240;
      *(v87 + 9) = v267;
      sub_1D678E758(v81, v246);
      *(v244 + v250) = v78;
    }

    else
    {
      v140 = *(v0 + 4416);
      v141 = *(v0 + 4408);
      v142 = *(v0 + 4384);
      v143 = *(v0 + 4360);
      v144 = *(v0 + 4296);
      v145 = *(*(v0 + 4304) + 8);
      v145(*(v0 + 4352), v144);
      v145(v143, v144);
      v140(v141, v142);
    }

    v146 = *(v0 + 4120);
    sub_1D678EB84(*(v0 + 4376), type metadata accessor for DebugFormatWorkspaceSnapshotManifest);
    v147 = v146;
    goto LABEL_50;
  }

  v29 = *(v0 + 4808);
  v30 = *(v0 + 4688);

  v31 = sub_1D6E1B254(v29);

  v251 = *(v0 + 5008);
  v248 = *v2;

  v254 = v31;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v30 = sub_1D699486C(0, *(v30 + 2) + 1, 1, v30);
  }

  v33 = *(v30 + 2);
  v32 = *(v30 + 3);
  v266 = v27;
  if (v33 >= v32 >> 1)
  {
    v259 = sub_1D699486C((v32 > 1), v33 + 1, 1, v30);
  }

  else
  {
    v259 = v30;
  }

  v237 = *(v0 + 4784);
  v238 = *(v0 + 4792);
  v228 = *(v0 + 4768);
  v231 = *(v0 + 4776);
  v34 = *(v0 + 4560);
  v242 = *(v0 + 4472);
  v227 = *(v0 + 4264);
  v35 = *(v0 + 4256);
  v36 = *(v0 + 4248);
  v37 = *(v0 + 4240);
  v38 = *(v0 + 4208);
  v39 = *(v0 + 4200);
  v40 = *(v0 + 4192);
  v41 = *(v0 + 4184);

  v234 = v34 + 1;
  v42 = *(v40 + 8);
  v42(v39, v41);
  v43 = *(v36 + 8);
  v43(v35, v37);
  v42(v38, v41);
  v43(v227, v37);
  v44 = v259;
  *(v259 + 2) = v33 + 1;
  v45 = &v259[48 * v33];
  *(v45 + 4) = v228;
  *(v45 + 5) = v231;
  *(v45 + 6) = v237;
  *(v45 + 7) = v238;
  v45[64] = v251;
  v45[65] = v248;
  *(v45 + 9) = v254;

  if (v234 != v242)
  {
    v88 = *(v0 + 4680);
    v89 = v0 + 1059;
    v90 = *(v0 + 4664);
    v91 = *(v0 + 4648);
    v92 = *(v0 + 4560) + 1;
    v93 = v266;
LABEL_30:
    *(v0 + 4560) = v92;
    *(v0 + 4552) = v44;
    *(v0 + 4544) = v88;
    *(v0 + 4528) = v90;
    *(v0 + 4512) = v91;
    *(v0 + 4504) = v93;
    v94 = *(v0 + 4096) + 24 * v92;
    *(v0 + 1612) = *(v94 + 32);
    *(v0 + 4568) = *(v94 + 40);
    *(v89 + 554) = *(v94 + 48);
    *(v89 + 555) = *(v94 + 49);
    *(v0 + 4576) = sub_1D72628FC();
    v96 = sub_1D726285C();

    return MEMORY[0x1EEE6DFA0](sub_1D6781138, v96, v95);
  }

  v46 = *(v0 + 4656);

  if (v46)
  {
    v47 = *(v0 + 4672);
    v48 = *(v0 + 4656);

    v49 = swift_isUniquelyReferenced_nonNull_native();
    v50 = *(v0 + 4448);
    if ((v49 & 1) == 0)
    {
      v50 = sub_1D69949A4(0, *(v50 + 2) + 1, 1, *(v0 + 4448));
    }

    v52 = *(v50 + 2);
    v51 = *(v50 + 3);
    if (v52 >= v51 >> 1)
    {
      v50 = sub_1D69949A4((v51 > 1), v52 + 1, 1, v50);
    }

    v53 = *(v0 + 4680);
    v54 = *(v0 + 4664);
    v55 = *(v0 + 4656);
    v56 = *(v0 + 4648);
    v57 = *(v0 + 1060);
    v58 = *(v0 + 4376);
    *(v50 + 2) = v52 + 1;
    v59 = &v50[48 * v52];
    *(v59 + 4) = v56;
    *(v59 + 5) = v48;
    *(v59 + 6) = v54;
    *(v59 + 7) = v47;
    *(v59 + 8) = v53;
    *(v59 + 9) = v259;
    sub_1D678E758(v56, v55);
    *(v58 + v57) = v50;
  }

  else
  {
    v50 = *(v0 + 4448);
  }

  v148 = *(v0 + 4440) + 1;
  if (v148 == *(v0 + 4432))
  {
    goto LABEL_38;
  }

  *(v0 + 4448) = v50;
  *(v0 + 4440) = v148;
  v158 = *(v0 + 4088) + 2 * v148;
  v159 = *(v158 + 32);
  *(v0 + 1243) = v159;
  v160 = *(v158 + 33);
  *(v0 + 1427) = v160;
  *(v0 + 3944) = sub_1D6E23ADC(v159);
  *(v0 + 3952) = v161;
  MEMORY[0x1DA6F9910](95, 0xE100000000000000);
  if (v160)
  {
    v162 = 0x70616373646E616CLL;
  }

  else
  {
    v162 = 0x7469617274726F70;
  }

  if (v160)
  {
    v163 = 0xE900000000000065;
  }

  else
  {
    v163 = 0xE800000000000000;
  }

  MEMORY[0x1DA6F9910](v162, v163);

  *(v0 + 4456) = *(v0 + 3944);
  *(v0 + 4464) = *(v0 + 3952);
  sub_1D72629AC();
  if (v266)
  {
    v164 = *(v0 + 4416);
    v165 = *(v0 + 4408);
    v166 = *(v0 + 4384);
    v269 = *(v0 + 4376);
    v167 = *(v0 + 4360);
    v168 = *(v0 + 4352);
    v169 = *(v0 + 4304);
    v170 = *(v0 + 4296);
    v264 = *(v0 + 4120);

    v171 = *(v169 + 8);
    v171(v168, v170);
    v171(v167, v170);
    v164(v165, v166);
    sub_1D678EB84(v269, type metadata accessor for DebugFormatWorkspaceSnapshotManifest);
    goto LABEL_49;
  }

  v175 = *(*(v0 + 4096) + 16);
  *(v0 + 4472) = v175;
  if (v175)
  {
LABEL_54:
    v176 = *(v0 + 4120);
    *(v0 + 4480) = sub_1D726290C();
    *(v0 + 1611) = sub_1D6F79CFC(v159);
    v177 = objc_opt_self();
    v93 = 0;
    v88 = 0;
    v44 = 0;
    v92 = 0;
    *(v0 + 4488) = v177;
    *(v0 + 4496) = *(v176 + 16);
    v91 = 0uLL;
    v90 = 0uLL;
    v89 = v0 + 1059;
    goto LABEL_30;
  }

  v214 = *(v0 + 4440) + 1;
  if (v214 != *(v0 + 4432))
  {
    while (1)
    {
      *(v0 + 4448) = v50;
      *(v0 + 4440) = v214;
      v215 = *(v0 + 4088) + 2 * v214;
      v159 = *(v215 + 32);
      *(v0 + 1243) = v159;
      v216 = *(v215 + 33);
      *(v0 + 1427) = v216;
      *(v0 + 3944) = sub_1D6E23ADC(v159);
      *(v0 + 3952) = v217;
      MEMORY[0x1DA6F9910](95, 0xE100000000000000);
      v218 = v216 ? 0x70616373646E616CLL : 0x7469617274726F70;
      v219 = v216 ? 0xE900000000000065 : 0xE800000000000000;
      MEMORY[0x1DA6F9910](v218, v219);

      *(v0 + 4456) = *(v0 + 3944);
      *(v0 + 4464) = *(v0 + 3952);
      sub_1D72629AC();
      v220 = *(*(v0 + 4096) + 16);
      *(v0 + 4472) = v220;
      if (v220)
      {
        goto LABEL_54;
      }

      v266 = 0;
      v214 = *(v0 + 4440) + 1;
      if (v214 == *(v0 + 4432))
      {
        goto LABEL_38;
      }
    }
  }

  v266 = 0;
LABEL_38:

  sub_1D725849C();
  sub_1D678ED98(&qword_1EC88B4F0, type metadata accessor for DebugFormatWorkspaceSnapshotManifest);
  v149 = sub_1D72578BC();
  *(v0 + 4936) = v149;
  *(v0 + 4944) = v150;
  if (v266)
  {
    v151 = *(v0 + 4416);
    v152 = *(v0 + 4408);
    v153 = *(v0 + 4384);
    v268 = *(v0 + 4376);
    v154 = *(v0 + 4360);
    v155 = *(v0 + 4352);
    v156 = *(v0 + 4296);
    v264 = *(v0 + 4120);
    v157 = *(*(v0 + 4304) + 8);
    v157(*(v0 + 4328), v156);
    v157(v155, v156);
    v157(v154, v156);
    v151(v152, v153);
    sub_1D678EB84(v268, type metadata accessor for DebugFormatWorkspaceSnapshotManifest);
LABEL_49:
    v147 = v264;
LABEL_50:
    sub_1D678ADBC(v147);

    v174 = *(v0 + 8);

    return v174();
  }

  v172 = v149;
  v173 = v150;
  sub_1D725869C();
  v257 = v173;
  v178 = *(v0 + 4144);
  v265 = *(v0 + 4136);
  v270 = *(v0 + 4128);
  v179 = *(v0 + 4080);
  sub_1D725849C();
  v180 = (v179 + *(type metadata accessor for DebugFormatWorkspace() + 20));
  v181 = v180[8];
  v182 = v180[9];
  v183 = v180[10];
  *(v0 + 2895) = *(v180 + 175);
  *(v0 + 2864) = v182;
  *(v0 + 2880) = v183;
  *(v0 + 2848) = v181;
  v184 = v180[4];
  v185 = v180[5];
  v186 = v180[7];
  *(v0 + 2816) = v180[6];
  *(v0 + 2832) = v186;
  *(v0 + 2784) = v184;
  *(v0 + 2800) = v185;
  v187 = *v180;
  v188 = v180[1];
  v189 = v180[3];
  *(v0 + 2752) = v180[2];
  *(v0 + 2768) = v189;
  *(v0 + 2720) = v187;
  *(v0 + 2736) = v188;
  v191 = v180[2];
  v190 = v180[3];
  *(v0 + 3456) = v180[1];
  *(v0 + 3472) = v191;
  *(v0 + 3488) = v190;
  v192 = v180[7];
  v194 = v180[4];
  v193 = v180[5];
  *(v0 + 3536) = v180[6];
  *(v0 + 3552) = v192;
  *(v0 + 3504) = v194;
  *(v0 + 3520) = v193;
  v196 = v180[9];
  v195 = v180[10];
  v197 = v180[8];
  *(v0 + 3615) = *(v180 + 175);
  *(v0 + 3584) = v196;
  *(v0 + 3600) = v195;
  *(v0 + 3568) = v197;
  sub_1D5ECF1C0(v0 + 2720, v0 + 2536);
  sub_1D725894C();
  v198 = sub_1D725893C();
  v200 = v199;
  *(v0 + 4952) = v198;
  *(v0 + 4960) = v199;
  v201 = v178;
  v202 = v198;
  (*(v265 + 8))(v201, v270);

  *(v0 + 2904) = v202;
  *(v0 + 2912) = v200;
  v203 = *(v0 + 3472);
  *(v0 + 2920) = *(v0 + 3456);
  *(v0 + 2936) = v203;
  v204 = *(v0 + 3536);
  *(v0 + 2984) = *(v0 + 3520);
  *(v0 + 3000) = v204;
  v205 = *(v0 + 3504);
  *(v0 + 2952) = *(v0 + 3488);
  *(v0 + 2968) = v205;
  v206 = *(v0 + 3568);
  *(v0 + 3016) = *(v0 + 3552);
  *(v0 + 3032) = v206;
  v207 = *(v0 + 3600);
  *(v0 + 3048) = *(v0 + 3584);
  *(v0 + 3064) = v207;
  *(v0 + 3079) = *(v0 + 3615);
  v208 = *(v0 + 3048);
  *(v0 + 2480) = *(v0 + 3032);
  *(v0 + 2496) = v208;
  *(v0 + 2512) = *(v0 + 3064);
  *(v0 + 2527) = *(v0 + 3079);
  v209 = *(v0 + 2984);
  *(v0 + 2416) = *(v0 + 2968);
  *(v0 + 2432) = v209;
  v210 = *(v0 + 3016);
  *(v0 + 2448) = *(v0 + 3000);
  *(v0 + 2464) = v210;
  v211 = *(v0 + 2920);
  *(v0 + 2352) = *(v0 + 2904);
  *(v0 + 2368) = v211;
  v212 = *(v0 + 2952);
  *(v0 + 2384) = *(v0 + 2936);
  *(v0 + 2400) = v212;
  sub_1D5ECF1C0(v0 + 2904, v0 + 2168);
  sub_1D5E3303C();
  *(v0 + 4968) = sub_1D72578BC();
  *(v0 + 4976) = v213;
  v221 = *(v0 + 2496);
  *(v0 + 1744) = *(v0 + 2480);
  *(v0 + 1760) = v221;
  *(v0 + 1776) = *(v0 + 2512);
  *(v0 + 1791) = *(v0 + 2527);
  v222 = *(v0 + 2432);
  *(v0 + 1680) = *(v0 + 2416);
  *(v0 + 1696) = v222;
  v223 = *(v0 + 2464);
  *(v0 + 1712) = *(v0 + 2448);
  *(v0 + 1728) = v223;
  v224 = *(v0 + 2368);
  *(v0 + 1616) = *(v0 + 2352);
  *(v0 + 1632) = v224;
  v225 = *(v0 + 2400);
  *(v0 + 1648) = *(v0 + 2384);
  *(v0 + 1664) = v225;
  sub_1D5ECF21C(v0 + 1616);
  sub_1D725869C();
  v226 = swift_task_alloc();
  *(v0 + 4984) = v226;
  *v226 = v0;
  v226[1] = sub_1D67893C8;

  return sub_1D678CD4C(v172, v257);
}

uint64_t sub_1D67861D4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 4904) = v1;

  if (v1)
  {

    v5 = sub_1D678A544;
  }

  else
  {
    *(v4 + 4912) = a1;
    v5 = sub_1D6786364;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D6786364()
{
  v278 = v0;
  v277 = *MEMORY[0x1E69E9840];
  v1 = (v0 + 448);
  if (*(v0 + 4912))
  {
    v2 = *(v0 + 4888);
    v3 = *(v0 + 4864);
    v4 = *(v0 + 4848);
    v5 = *(v0 + 4840);
    v264 = *(v0 + 4880);

    v6 = *(v0 + 624);
    v275[10] = *(v0 + 608);
    v275[11] = v6;
    v275[12] = *(v0 + 640);
    v276 = *(v0 + 656);
    v7 = *(v0 + 560);
    v275[6] = *(v0 + 544);
    v275[7] = v7;
    v8 = *(v0 + 592);
    v275[8] = *(v0 + 576);
    v275[9] = v8;
    v9 = *(v0 + 496);
    v275[2] = *(v0 + 480);
    v275[3] = v9;
    v10 = *(v0 + 528);
    v275[4] = *(v0 + 512);
    v275[5] = v10;
    v11 = *(v0 + 464);
    v275[0] = *v1;
    v275[1] = v11;
    *(v0 + 3880) = 0x2F736567616D69;
    *(v0 + 3888) = 0xE700000000000000;
    sub_1D5F2B0D8(v0 + 448, v0 + 16);

    MEMORY[0x1DA6F9910](v5, v4);

    v12 = *(v0 + 3880);
    v13 = *(v0 + 3888);
    *(v0 + 3896) = 0x2F736567616D69;
    *(v0 + 3904) = 0xE700000000000000;
    MEMORY[0x1DA6F9910](v264, v2);

    sub_1D6E1C2B8(v275, v3, v12, v13, *(v0 + 3896), *(v0 + 3904), (v0 + 3768));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v0 + 4808);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = sub_1D6994ADC(0, *(v15 + 2) + 1, 1, v15);
    }

    v17 = *(v15 + 2);
    v16 = *(v15 + 3);
    if (v17 >= v16 >> 1)
    {
      v15 = sub_1D6994ADC((v16 > 1), v17 + 1, 1, v15);
    }

    *(v0 + 4920) = v15;
    *(v15 + 2) = v17 + 1;
    v18 = &v15[48 * v17];
    v19 = *(v0 + 3768);
    v20 = *(v0 + 3800);
    *(v18 + 3) = *(v0 + 3784);
    *(v18 + 4) = v20;
    *(v18 + 2) = v19;
    *(v0 + 4928) = sub_1D72628FC();
    v21 = sub_1D726285C();
    v23 = sub_1D6787C18;
    goto LABEL_7;
  }

  v24 = (v0 + 1059);
  v25 = *(v0 + 4344);
  v26 = *(v0 + 4336);
  v27 = *(v0 + 4304);
  v28 = *(v0 + 4296);

  sub_1D5F2B134(v0 + 448);
  v30 = *(v27 + 8);
  v29 = v27 + 8;
  v30(v26, v28);
  v30(v25, v28);
  v31 = *(v0 + 4904);
  v32 = *(v0 + 4816) + 1;
  if (v32 != *(v0 + 4800))
  {
    *(v0 + 4816) = v32;
    v65 = *(v0 + 4704);
    if (v32 >= *(v65 + 16))
    {
      __break(1u);
    }

    else
    {
      v66 = *(v65 + 8 * v32 + 32);

      sub_1D72629AC();
      if (!v31)
      {
        v252 = *(v0 + 4464);
        v246 = *(v0 + 4456);
        v238 = *(v0 + 1427);
        v235 = *(v0 + 1243);
        v98 = *(v0 + 4144);
        v99 = *(v0 + 4136);
        v100 = *(v0 + 4128);
        v101 = *(v0 + 4080);
        sub_1D725894C();
        v263 = sub_1D725893C();
        v257 = v102;
        *(v0 + 4824) = v263;
        *(v0 + 4832) = v102;
        (*(v99 + 8))(v98, v100);
        v103 = type metadata accessor for DebugFormatWorkspace();
        v104 = (v101 + *(v103 + 20));
        v106 = *v104;
        v105 = v104[1];
        v108 = *(v104 + 2);
        v107 = *(v104 + 3);
        v109 = *(v104 + 1);
        *(v0 + 3088) = *v104;
        *(v0 + 3104) = v109;
        *(v0 + 3120) = v108;
        *(v0 + 3136) = v107;
        v110 = *(v104 + 175);
        v111 = *(v104 + 10);
        v112 = *(v104 + 8);
        *(v0 + 3232) = *(v104 + 9);
        *(v0 + 3248) = v111;
        *(v0 + 3263) = v110;
        *(v0 + 3216) = v112;
        v113 = *(v104 + 7);
        v114 = *(v104 + 4);
        v115 = *(v104 + 5);
        *(v0 + 3184) = *(v104 + 6);
        *(v0 + 3200) = v113;
        *(v0 + 3152) = v114;
        *(v0 + 3168) = v115;
        v116 = *(v101 + *(v103 + 32));
        v117 = *v104;
        v118 = *(v104 + 1);
        v119 = *(v104 + 3);
        *(v0 + 496) = *(v104 + 2);
        *(v0 + 512) = v119;
        *(v0 + 464) = v117;
        *(v0 + 480) = v118;
        v120 = *(v104 + 4);
        v121 = *(v104 + 5);
        v122 = *(v104 + 7);
        *(v0 + 560) = *(v104 + 6);
        *(v0 + 576) = v122;
        *(v0 + 528) = v120;
        *(v0 + 544) = v121;
        v123 = *(v104 + 8);
        v124 = *(v104 + 9);
        v125 = *(v104 + 10);
        *(v0 + 639) = *(v104 + 175);
        *(v0 + 608) = v124;
        *(v0 + 624) = v125;
        *(v0 + 592) = v123;
        *(v0 + 448) = v106;
        *(v0 + 456) = v105;
        *(v0 + 643) = v235;
        *(v0 + 644) = v238;
        *(v0 + 648) = v116;
        *(v0 + 656) = v66;
        *(v0 + 3816) = 0;
        *(v0 + 3824) = 0xE000000000000000;

        sub_1D5ECF1C0(v0 + 3088, v0 + 880);

        sub_1D7263D4C();
        *(v0 + 4064) = sub_1D7259CCC();
        v126 = sub_1D72644BC();
        v128 = v127;

        *(v0 + 3832) = v126;
        *(v0 + 3840) = v128;
        MEMORY[0x1DA6F9910](95, 0xE100000000000000);
        MEMORY[0x1DA6F9910](v246, v252);
        MEMORY[0x1DA6F9910](95, 0xE100000000000000);
        v129 = sub_1D71D6228();
        MEMORY[0x1DA6F9910](v129);

        MEMORY[0x1DA6F9910](95, 0xE100000000000000);
        MEMORY[0x1DA6F9910](v263, v257);
        MEMORY[0x1DA6F9910](0x702E746867696C5FLL, 0xEA0000000000676ELL);
        v130 = sub_1D726210C();
        v132 = v131;

        *(v0 + 4840) = v130;
        *(v0 + 4848) = v132;
        sub_1D725849C();
        v133 = *(v0 + 624);
        *(v0 + 824) = *(v0 + 608);
        *(v0 + 840) = v133;
        *(v0 + 856) = *(v0 + 640);
        *(v0 + 872) = *(v0 + 656);
        v134 = *(v0 + 560);
        *(v0 + 760) = *(v0 + 544);
        *(v0 + 776) = v134;
        v135 = *(v0 + 592);
        *(v0 + 792) = *(v0 + 576);
        *(v0 + 808) = v135;
        v136 = *(v0 + 496);
        *(v0 + 696) = *(v0 + 480);
        *(v0 + 712) = v136;
        v137 = *(v0 + 528);
        *(v0 + 728) = *(v0 + 512);
        *(v0 + 744) = v137;
        v138 = *(v0 + 464);
        *(v0 + 664) = *v1;
        *(v0 + 680) = v138;
        v139 = swift_task_alloc();
        *(v0 + 4856) = v139;
        *v139 = v0;
        v139[1] = sub_1D678472C;
        v140 = *(v0 + 4344);
        v141 = *(v0 + 4264);
        v142 = *(v0 + 4208);
        v143 = *(v0 + 4104);

        return sub_1D678BDFC(v0 + 664, v143, v141, v142, v140);
      }

      v25 = *(v0 + 4808);
      v1 = *(v0 + 4688);

      v29 = sub_1D6E1B254(v25);

      LOBYTE(v25) = *(v0 + 5008);
      LOBYTE(v24) = *(v0 + 1059);

      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_25:
        v68 = *(v1 + 2);
        v67 = *(v1 + 3);
        v266 = v29;
        v259 = v25;
        v261 = v24;
        if (v68 >= v67 >> 1)
        {
          v271 = sub_1D699486C((v67 > 1), v68 + 1, 1, v1);
        }

        else
        {
          v271 = v1;
        }

        v248 = *(v0 + 4784);
        v250 = *(v0 + 4792);
        v244 = *(v0 + 4776);
        v254 = *(v0 + 4656);
        v237 = *(v0 + 4264);
        v240 = *(v0 + 4768);
        v69 = *(v0 + 4256);
        v70 = *(v0 + 4248);
        v71 = *(v0 + 4240);
        v72 = *(v0 + 4208);
        v73 = *(v0 + 4200);
        v74 = *(v0 + 4192);
        v75 = *(v0 + 4184);

        v76 = *(v74 + 8);
        v76(v73, v75);
        v77 = *(v70 + 8);
        v77(v69, v71);
        v76(v72, v75);
        v77(v237, v71);
        *(v271 + 2) = v68 + 1;
        v78 = &v271[48 * v68];
        *(v78 + 4) = v240;
        *(v78 + 5) = v244;
        *(v78 + 6) = v248;
        *(v78 + 7) = v250;
        v78[64] = v259;
        v78[65] = v261;
        *(v78 + 9) = v266;

        if (v254)
        {
          v79 = *(v0 + 4672);
          v80 = *(v0 + 4656);

          v81 = swift_isUniquelyReferenced_nonNull_native();
          v82 = *(v0 + 4448);
          v267 = v79;
          if ((v81 & 1) == 0)
          {
            v82 = sub_1D69949A4(0, *(v82 + 2) + 1, 1, v82);
          }

          v84 = *(v82 + 2);
          v83 = *(v82 + 3);
          v262 = v80;
          if (v84 >= v83 >> 1)
          {
            v82 = sub_1D69949A4((v83 > 1), v84 + 1, 1, v82);
          }

          v251 = *(v0 + 4656);
          v85 = *(v0 + 4648);
          v241 = *(v0 + 4664);
          v234 = *(v0 + 4416);
          v255 = *(v0 + 1060);
          v86 = *(v0 + 4408);
          v87 = *(v0 + 4384);
          v245 = *(v0 + 4680);
          v249 = *(v0 + 4376);
          v88 = *(v0 + 4360);
          v89 = *(v0 + 4296);
          v90 = *(*(v0 + 4304) + 8);
          v90(*(v0 + 4352), v89);
          v90(v88, v89);
          v234(v86, v87);
          *(v82 + 2) = v84 + 1;
          v91 = &v82[48 * v84];
          *(v91 + 4) = v85;
          *(v91 + 5) = v262;
          *(v91 + 6) = v241;
          *(v91 + 7) = v267;
          *(v91 + 8) = v245;
          *(v91 + 9) = v271;
          sub_1D678E758(v85, v251);
          *(v249 + v255) = v82;
        }

        else
        {
          v144 = *(v0 + 4416);
          v145 = *(v0 + 4408);
          v146 = *(v0 + 4384);
          v147 = *(v0 + 4360);
          v148 = *(v0 + 4296);
          v149 = *(*(v0 + 4304) + 8);
          v149(*(v0 + 4352), v148);
          v149(v147, v148);
          v144(v145, v146);
        }

        v150 = *(v0 + 4120);
        sub_1D678EB84(*(v0 + 4376), type metadata accessor for DebugFormatWorkspaceSnapshotManifest);
        v151 = v150;
        goto LABEL_54;
      }
    }

    v1 = sub_1D699486C(0, *(v1 + 2) + 1, 1, v1);
    goto LABEL_25;
  }

  v33 = *(v0 + 4808);
  v34 = *(v0 + 4688);

  v35 = sub_1D6E1B254(v33);

  v256 = *(v0 + 5008);
  v253 = *v24;

  v258 = v35;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v34 = sub_1D699486C(0, *(v34 + 2) + 1, 1, v34);
  }

  v37 = *(v34 + 2);
  v36 = *(v34 + 3);
  v265 = v31;
  if (v37 >= v36 >> 1)
  {
    v270 = sub_1D699486C((v36 > 1), v37 + 1, 1, v34);
  }

  else
  {
    v270 = v34;
  }

  v242 = *(v0 + 4784);
  v243 = *(v0 + 4792);
  v233 = *(v0 + 4768);
  v236 = *(v0 + 4776);
  v38 = *(v0 + 4560);
  v247 = *(v0 + 4472);
  v232 = *(v0 + 4264);
  v39 = *(v0 + 4256);
  v40 = *(v0 + 4248);
  v41 = *(v0 + 4240);
  v42 = *(v0 + 4208);
  v43 = *(v0 + 4200);
  v44 = *(v0 + 4192);
  v45 = *(v0 + 4184);

  v239 = v38 + 1;
  v46 = *(v44 + 8);
  v46(v43, v45);
  v47 = *(v40 + 8);
  v47(v39, v41);
  v46(v42, v45);
  v47(v232, v41);
  v48 = v270;
  *(v270 + 2) = v37 + 1;
  v49 = &v270[48 * v37];
  *(v49 + 4) = v233;
  *(v49 + 5) = v236;
  *(v49 + 6) = v242;
  *(v49 + 7) = v243;
  v49[64] = v256;
  v49[65] = v253;
  *(v49 + 9) = v258;

  if (v239 != v247)
  {
    v92 = *(v0 + 4680);
    v51 = v0 + 1059;
    v93 = v265;
    v94 = *(v0 + 4664);
    v95 = *(v0 + 4648);
    v96 = *(v0 + 4560) + 1;
LABEL_34:
    *(v0 + 4560) = v96;
    *(v0 + 4552) = v48;
    *(v0 + 4544) = v92;
    *(v0 + 4528) = v94;
    *(v0 + 4512) = v95;
    *(v0 + 4504) = v93;
    v97 = *(v0 + 4096) + 24 * v96;
    *(v0 + 1612) = *(v97 + 32);
    *(v0 + 4568) = *(v97 + 40);
    *(v51 + 554) = *(v97 + 48);
    *(v51 + 555) = *(v97 + 49);
    *(v0 + 4576) = sub_1D72628FC();
    v21 = sub_1D726285C();
    v23 = sub_1D6781138;
LABEL_7:

    return MEMORY[0x1EEE6DFA0](v23, v21, v22);
  }

  v50 = *(v0 + 4656);

  v51 = v0 + 1059;
  if (v50)
  {
    v52 = *(v0 + 4672);
    v53 = *(v0 + 4656);

    v54 = swift_isUniquelyReferenced_nonNull_native();
    v55 = *(v0 + 4448);
    if ((v54 & 1) == 0)
    {
      v55 = sub_1D69949A4(0, *(v55 + 2) + 1, 1, *(v0 + 4448));
    }

    v57 = *(v55 + 2);
    v56 = *(v55 + 3);
    if (v57 >= v56 >> 1)
    {
      v55 = sub_1D69949A4((v56 > 1), v57 + 1, 1, v55);
    }

    v58 = *(v0 + 4680);
    v59 = *(v0 + 4664);
    v60 = *(v0 + 4656);
    v61 = *(v0 + 4648);
    v62 = *(v0 + 1060);
    v63 = *(v0 + 4376);
    *(v55 + 2) = v57 + 1;
    v64 = &v55[48 * v57];
    *(v64 + 4) = v61;
    *(v64 + 5) = v53;
    *(v64 + 6) = v59;
    *(v64 + 7) = v52;
    *(v64 + 8) = v58;
    *(v64 + 9) = v270;
    sub_1D678E758(v61, v60);
    *(v63 + v62) = v55;
  }

  else
  {
    v55 = *(v0 + 4448);
  }

  v152 = *(v0 + 4440) + 1;
  if (v152 == *(v0 + 4432))
  {
    goto LABEL_42;
  }

  *(v0 + 4448) = v55;
  *(v0 + 4440) = v152;
  v162 = *(v0 + 4088) + 2 * v152;
  v163 = *(v162 + 32);
  *(v0 + 1243) = v163;
  v164 = *(v162 + 33);
  *(v0 + 1427) = v164;
  *(v0 + 3944) = sub_1D6E23ADC(v163);
  *(v0 + 3952) = v165;
  MEMORY[0x1DA6F9910](95, 0xE100000000000000);
  if (v164)
  {
    v166 = 0x70616373646E616CLL;
  }

  else
  {
    v166 = 0x7469617274726F70;
  }

  if (v164)
  {
    v167 = 0xE900000000000065;
  }

  else
  {
    v167 = 0xE800000000000000;
  }

  MEMORY[0x1DA6F9910](v166, v167);

  *(v0 + 4456) = *(v0 + 3944);
  *(v0 + 4464) = *(v0 + 3952);
  sub_1D72629AC();
  if (v265)
  {
    v168 = *(v0 + 4416);
    v169 = *(v0 + 4408);
    v170 = *(v0 + 4384);
    v171 = *(v0 + 4360);
    v172 = *(v0 + 4352);
    v173 = *(v0 + 4304);
    v174 = *(v0 + 4296);
    v268 = *(v0 + 4120);
    v273 = *(v0 + 4376);

    v175 = *(v173 + 8);
    v175(v172, v174);
    v175(v171, v174);
    v168(v169, v170);
    sub_1D678EB84(v273, type metadata accessor for DebugFormatWorkspaceSnapshotManifest);
    goto LABEL_53;
  }

  v179 = *(*(v0 + 4096) + 16);
  *(v0 + 4472) = v179;
  if (v179)
  {
LABEL_58:
    v180 = *(v0 + 4120);
    *(v0 + 4480) = sub_1D726290C();
    *(v0 + 1611) = sub_1D6F79CFC(v163);
    v181 = objc_opt_self();
    v93 = 0;
    v92 = 0;
    v48 = 0;
    v96 = 0;
    *(v0 + 4488) = v181;
    *(v0 + 4496) = *(v180 + 16);
    v95 = 0uLL;
    v94 = 0uLL;
    goto LABEL_34;
  }

  v218 = *(v0 + 4440) + 1;
  if (v218 != *(v0 + 4432))
  {
    while (1)
    {
      *(v0 + 4448) = v55;
      *(v0 + 4440) = v218;
      v219 = *(v0 + 4088) + 2 * v218;
      v163 = *(v219 + 32);
      *(v0 + 1243) = v163;
      v220 = *(v219 + 33);
      *(v0 + 1427) = v220;
      *(v0 + 3944) = sub_1D6E23ADC(v163);
      *(v0 + 3952) = v221;
      MEMORY[0x1DA6F9910](95, 0xE100000000000000);
      v222 = v220 ? 0x70616373646E616CLL : 0x7469617274726F70;
      v223 = v220 ? 0xE900000000000065 : 0xE800000000000000;
      MEMORY[0x1DA6F9910](v222, v223);

      *(v0 + 4456) = *(v0 + 3944);
      *(v0 + 4464) = *(v0 + 3952);
      sub_1D72629AC();
      v224 = *(*(v0 + 4096) + 16);
      *(v0 + 4472) = v224;
      if (v224)
      {
        goto LABEL_58;
      }

      v265 = 0;
      v218 = *(v0 + 4440) + 1;
      if (v218 == *(v0 + 4432))
      {
        goto LABEL_42;
      }
    }
  }

  v265 = 0;
LABEL_42:

  sub_1D725849C();
  sub_1D678ED98(&qword_1EC88B4F0, type metadata accessor for DebugFormatWorkspaceSnapshotManifest);
  v153 = sub_1D72578BC();
  *(v0 + 4936) = v153;
  *(v0 + 4944) = v154;
  if (v265)
  {
    v155 = *(v0 + 4416);
    v156 = *(v0 + 4408);
    v157 = *(v0 + 4384);
    v158 = *(v0 + 4360);
    v159 = *(v0 + 4352);
    v160 = *(v0 + 4296);
    v268 = *(v0 + 4120);
    v272 = *(v0 + 4376);
    v161 = *(*(v0 + 4304) + 8);
    v161(*(v0 + 4328), v160);
    v161(v159, v160);
    v161(v158, v160);
    v155(v156, v157);
    sub_1D678EB84(v272, type metadata accessor for DebugFormatWorkspaceSnapshotManifest);
LABEL_53:
    v151 = v268;
LABEL_54:
    sub_1D678ADBC(v151);

    v178 = *(v0 + 8);

    return v178();
  }

  v176 = v153;
  v177 = v154;
  sub_1D725869C();
  v260 = v177;
  v182 = *(v0 + 4144);
  v269 = *(v0 + 4136);
  v274 = *(v0 + 4128);
  v183 = *(v0 + 4080);
  sub_1D725849C();
  v184 = (v183 + *(type metadata accessor for DebugFormatWorkspace() + 20));
  v185 = v184[8];
  v186 = v184[9];
  v187 = v184[10];
  *(v0 + 2895) = *(v184 + 175);
  *(v0 + 2864) = v186;
  *(v0 + 2880) = v187;
  *(v0 + 2848) = v185;
  v188 = v184[4];
  v189 = v184[5];
  v190 = v184[7];
  *(v0 + 2816) = v184[6];
  *(v0 + 2832) = v190;
  *(v0 + 2784) = v188;
  *(v0 + 2800) = v189;
  v191 = *v184;
  v192 = v184[1];
  v193 = v184[3];
  *(v0 + 2752) = v184[2];
  *(v0 + 2768) = v193;
  *(v0 + 2720) = v191;
  *(v0 + 2736) = v192;
  v195 = v184[2];
  v194 = v184[3];
  *(v0 + 3456) = v184[1];
  *(v0 + 3472) = v195;
  *(v0 + 3488) = v194;
  v196 = v184[7];
  v198 = v184[4];
  v197 = v184[5];
  *(v0 + 3536) = v184[6];
  *(v0 + 3552) = v196;
  *(v0 + 3504) = v198;
  *(v0 + 3520) = v197;
  v200 = v184[9];
  v199 = v184[10];
  v201 = v184[8];
  *(v0 + 3615) = *(v184 + 175);
  *(v0 + 3584) = v200;
  *(v0 + 3600) = v199;
  *(v0 + 3568) = v201;
  sub_1D5ECF1C0(v0 + 2720, v0 + 2536);
  sub_1D725894C();
  v202 = sub_1D725893C();
  v204 = v203;
  *(v0 + 4952) = v202;
  *(v0 + 4960) = v203;
  v205 = v182;
  v206 = v202;
  (*(v269 + 8))(v205, v274);

  *(v0 + 2904) = v206;
  *(v0 + 2912) = v204;
  v207 = *(v0 + 3472);
  *(v0 + 2920) = *(v0 + 3456);
  *(v0 + 2936) = v207;
  v208 = *(v0 + 3536);
  *(v0 + 2984) = *(v0 + 3520);
  *(v0 + 3000) = v208;
  v209 = *(v0 + 3504);
  *(v0 + 2952) = *(v0 + 3488);
  *(v0 + 2968) = v209;
  v210 = *(v0 + 3568);
  *(v0 + 3016) = *(v0 + 3552);
  *(v0 + 3032) = v210;
  v211 = *(v0 + 3600);
  *(v0 + 3048) = *(v0 + 3584);
  *(v0 + 3064) = v211;
  *(v0 + 3079) = *(v0 + 3615);
  v212 = *(v0 + 3048);
  *(v0 + 2480) = *(v0 + 3032);
  *(v0 + 2496) = v212;
  *(v0 + 2512) = *(v0 + 3064);
  *(v0 + 2527) = *(v0 + 3079);
  v213 = *(v0 + 2984);
  *(v0 + 2416) = *(v0 + 2968);
  *(v0 + 2432) = v213;
  v214 = *(v0 + 3016);
  *(v0 + 2448) = *(v0 + 3000);
  *(v0 + 2464) = v214;
  v215 = *(v0 + 2920);
  *(v0 + 2352) = *(v0 + 2904);
  *(v0 + 2368) = v215;
  v216 = *(v0 + 2952);
  *(v0 + 2384) = *(v0 + 2936);
  *(v0 + 2400) = v216;
  sub_1D5ECF1C0(v0 + 2904, v0 + 2168);
  sub_1D5E3303C();
  *(v0 + 4968) = sub_1D72578BC();
  *(v0 + 4976) = v217;
  v225 = *(v0 + 2496);
  *(v0 + 1744) = *(v0 + 2480);
  *(v0 + 1760) = v225;
  *(v0 + 1776) = *(v0 + 2512);
  *(v0 + 1791) = *(v0 + 2527);
  v226 = *(v0 + 2432);
  *(v0 + 1680) = *(v0 + 2416);
  *(v0 + 1696) = v226;
  v227 = *(v0 + 2464);
  *(v0 + 1712) = *(v0 + 2448);
  *(v0 + 1728) = v227;
  v228 = *(v0 + 2368);
  *(v0 + 1616) = *(v0 + 2352);
  *(v0 + 1632) = v228;
  v229 = *(v0 + 2400);
  *(v0 + 1648) = *(v0 + 2384);
  *(v0 + 1664) = v229;
  sub_1D5ECF21C(v0 + 1616);
  sub_1D725869C();
  v230 = swift_task_alloc();
  *(v0 + 4984) = v230;
  *v230 = v0;
  v230[1] = sub_1D67893C8;

  return sub_1D678CD4C(v176, v260);
}

uint64_t sub_1D6787C18()
{

  sub_1D676AE48();

  return MEMORY[0x1EEE6DFA0](sub_1D6787CB4, 0, 0);
}

uint64_t sub_1D6787CB4()
{
  v1 = (v0 + 1059);
  v2 = (v0 + 448);
  v3 = *(v0 + 4816);
  v4 = *(v0 + 4800);
  v5 = *(v0 + 4344);
  v6 = *(v0 + 4336);
  v7 = *(v0 + 4304);
  v8 = *(v0 + 4296);

  sub_1D5F2B134(v0 + 448);
  v11 = *(v7 + 8);
  v9 = v7 + 8;
  v10 = v11;
  v11(v6, v8);
  v11(v5, v8);
  v12 = *(v0 + 4920);
  v13 = *(v0 + 4904);
  if (v3 + 1 != v4)
  {
    v45 = *(v0 + 4816) + 1;
    *(v0 + 4808) = v12;
    *(v0 + 4816) = v45;
    v46 = *(v0 + 4704);
    if (v45 >= *(v46 + 16))
    {
      __break(1u);
    }

    else
    {
      v47 = *(v46 + 8 * v45 + 32);

      sub_1D72629AC();
      if (!v13)
      {
        v237 = *(v0 + 4464);
        v231 = *(v0 + 4456);
        v223 = *(v0 + 1427);
        v220 = *(v0 + 1243);
        v82 = *(v0 + 4144);
        v83 = *(v0 + 4136);
        v84 = *(v0 + 4128);
        v85 = *(v0 + 4080);
        sub_1D725894C();
        v86 = sub_1D725893C();
        v242 = v87;
        v245 = v86;
        *(v0 + 4824) = v86;
        *(v0 + 4832) = v87;
        (*(v83 + 8))(v82, v84);
        v88 = type metadata accessor for DebugFormatWorkspace();
        v89 = (v85 + *(v88 + 20));
        v91 = *v89;
        v90 = v89[1];
        v93 = *(v89 + 2);
        v92 = *(v89 + 3);
        v94 = *(v89 + 1);
        *(v0 + 3088) = *v89;
        *(v0 + 3104) = v94;
        *(v0 + 3120) = v93;
        *(v0 + 3136) = v92;
        v95 = *(v89 + 175);
        v96 = *(v89 + 10);
        v97 = *(v89 + 8);
        *(v0 + 3232) = *(v89 + 9);
        *(v0 + 3248) = v96;
        *(v0 + 3263) = v95;
        *(v0 + 3216) = v97;
        v98 = *(v89 + 7);
        v99 = *(v89 + 4);
        v100 = *(v89 + 5);
        *(v0 + 3184) = *(v89 + 6);
        *(v0 + 3200) = v98;
        *(v0 + 3152) = v99;
        *(v0 + 3168) = v100;
        v101 = *(v85 + *(v88 + 32));
        v102 = *v89;
        v103 = *(v89 + 1);
        v104 = *(v89 + 3);
        *(v0 + 496) = *(v89 + 2);
        *(v0 + 512) = v104;
        *(v0 + 464) = v102;
        *(v0 + 480) = v103;
        v105 = *(v89 + 4);
        v106 = *(v89 + 5);
        v107 = *(v89 + 7);
        *(v0 + 560) = *(v89 + 6);
        *(v0 + 576) = v107;
        *(v0 + 528) = v105;
        *(v0 + 544) = v106;
        v108 = *(v89 + 8);
        v109 = *(v89 + 9);
        v110 = *(v89 + 10);
        *(v0 + 639) = *(v89 + 175);
        *(v0 + 608) = v109;
        *(v0 + 624) = v110;
        *(v0 + 592) = v108;
        *(v0 + 448) = v91;
        *(v0 + 456) = v90;
        *(v0 + 643) = v220;
        *(v0 + 644) = v223;
        *(v0 + 648) = v101;
        *(v0 + 656) = v47;
        *(v0 + 3816) = 0;
        *(v0 + 3824) = 0xE000000000000000;

        sub_1D5ECF1C0(v0 + 3088, v0 + 880);

        sub_1D7263D4C();
        *(v0 + 4064) = sub_1D7259CCC();
        v111 = sub_1D72644BC();
        v113 = v112;

        *(v0 + 3832) = v111;
        *(v0 + 3840) = v113;
        MEMORY[0x1DA6F9910](95, 0xE100000000000000);
        MEMORY[0x1DA6F9910](v231, v237);
        MEMORY[0x1DA6F9910](95, 0xE100000000000000);
        v114 = sub_1D71D6228();
        MEMORY[0x1DA6F9910](v114);

        MEMORY[0x1DA6F9910](95, 0xE100000000000000);
        MEMORY[0x1DA6F9910](v245, v242);
        MEMORY[0x1DA6F9910](0x702E746867696C5FLL, 0xEA0000000000676ELL);
        v115 = sub_1D726210C();
        v117 = v116;

        *(v0 + 4840) = v115;
        *(v0 + 4848) = v117;
        sub_1D725849C();
        v118 = *(v0 + 624);
        *(v0 + 824) = *(v0 + 608);
        *(v0 + 840) = v118;
        *(v0 + 856) = *(v0 + 640);
        *(v0 + 872) = *(v0 + 656);
        v119 = *(v0 + 560);
        *(v0 + 760) = *(v0 + 544);
        *(v0 + 776) = v119;
        v120 = *(v0 + 592);
        *(v0 + 792) = *(v0 + 576);
        *(v0 + 808) = v120;
        v121 = *(v0 + 496);
        *(v0 + 696) = *(v0 + 480);
        *(v0 + 712) = v121;
        v122 = *(v0 + 528);
        *(v0 + 728) = *(v0 + 512);
        *(v0 + 744) = v122;
        v123 = *(v0 + 464);
        *(v0 + 664) = *v2;
        *(v0 + 680) = v123;
        v124 = swift_task_alloc();
        *(v0 + 4856) = v124;
        *v124 = v0;
        v124[1] = sub_1D678472C;
        v125 = *(v0 + 4344);
        v126 = *(v0 + 4264);
        v127 = *(v0 + 4208);
        v128 = *(v0 + 4104);

        return sub_1D678BDFC(v0 + 664, v128, v126, v127, v125);
      }

      v12 = *(v0 + 4808);
      v48 = *(v0 + 4688);

      v2 = v48;

      v9 = sub_1D6E1B254(v12);

      LOBYTE(v12) = *(v0 + 5008);
      v10 = *v1;

      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_16:
        v50 = *(v2 + 2);
        v49 = *(v2 + 3);
        v248 = v9;
        v244 = v12;
        v251 = v10;
        if (v50 >= v49 >> 1)
        {
          v255 = sub_1D699486C((v49 > 1), v50 + 1, 1, v2);
        }

        else
        {
          v255 = v2;
        }

        v233 = *(v0 + 4784);
        v235 = *(v0 + 4792);
        v229 = *(v0 + 4776);
        v239 = *(v0 + 4656);
        v222 = *(v0 + 4264);
        v225 = *(v0 + 4768);
        v51 = *(v0 + 4256);
        v52 = *(v0 + 4248);
        v53 = *(v0 + 4240);
        v54 = *(v0 + 4208);
        v55 = *(v0 + 4200);
        v56 = *(v0 + 4192);
        v57 = *(v0 + 4184);

        v58 = *(v56 + 8);
        v58(v55, v57);
        v59 = *(v52 + 8);
        v59(v51, v53);
        v58(v54, v57);
        v59(v222, v53);
        *(v255 + 2) = v50 + 1;
        v60 = &v255[48 * v50];
        *(v60 + 4) = v225;
        *(v60 + 5) = v229;
        *(v60 + 6) = v233;
        *(v60 + 7) = v235;
        v60[64] = v244;
        v60[65] = v251;
        *(v60 + 9) = v248;

        if (v239)
        {
          v61 = *(v0 + 4672);
          v62 = *(v0 + 4656);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v64 = *(v0 + 4448);
          v252 = v61;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v64 = sub_1D69949A4(0, *(v64 + 2) + 1, 1, v64);
          }

          v66 = *(v64 + 2);
          v65 = *(v64 + 3);
          v249 = v62;
          if (v66 >= v65 >> 1)
          {
            v64 = sub_1D69949A4((v65 > 1), v66 + 1, 1, v64);
          }

          v236 = *(v0 + 4656);
          v67 = *(v0 + 4648);
          v226 = *(v0 + 4664);
          v219 = *(v0 + 4416);
          v240 = *(v0 + 1060);
          v68 = *(v0 + 4408);
          v69 = *(v0 + 4384);
          v230 = *(v0 + 4680);
          v234 = *(v0 + 4376);
          v70 = *(v0 + 4360);
          v71 = *(v0 + 4296);
          v72 = *(*(v0 + 4304) + 8);
          v72(*(v0 + 4352), v71);
          v72(v70, v71);
          v219(v68, v69);
          *(v64 + 2) = v66 + 1;
          v73 = &v64[48 * v66];
          *(v73 + 4) = v67;
          *(v73 + 5) = v249;
          *(v73 + 6) = v226;
          *(v73 + 7) = v252;
          *(v73 + 8) = v230;
          *(v73 + 9) = v255;
          sub_1D678E758(v67, v236);
          *(v234 + v240) = v64;
        }

        else
        {
          v129 = *(v0 + 4416);
          v130 = *(v0 + 4408);
          v131 = *(v0 + 4384);
          v132 = *(v0 + 4360);
          v133 = *(v0 + 4296);
          v134 = *(*(v0 + 4304) + 8);
          v134(*(v0 + 4352), v133);
          v134(v132, v133);
          v129(v130, v131);
        }

        v135 = *(v0 + 4120);
        sub_1D678EB84(*(v0 + 4376), type metadata accessor for DebugFormatWorkspaceSnapshotManifest);
        v136 = v135;
        goto LABEL_47;
      }
    }

    v2 = sub_1D699486C(0, *(v2 + 2) + 1, 1, v2);
    goto LABEL_16;
  }

  v14 = *(v0 + 4688);

  v15 = sub_1D6E1B254(v12);

  v241 = *(v0 + 5008);
  v238 = *v1;

  v243 = v15;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_1D699486C(0, *(v14 + 2) + 1, 1, v14);
  }

  v17 = *(v14 + 2);
  v16 = *(v14 + 3);
  v254 = v13;
  if (v17 >= v16 >> 1)
  {
    v247 = sub_1D699486C((v16 > 1), v17 + 1, 1, v14);
  }

  else
  {
    v247 = v14;
  }

  v227 = *(v0 + 4784);
  v228 = *(v0 + 4792);
  v218 = *(v0 + 4768);
  v221 = *(v0 + 4776);
  v18 = *(v0 + 4560);
  v232 = *(v0 + 4472);
  v217 = *(v0 + 4264);
  v19 = *(v0 + 4256);
  v20 = *(v0 + 4248);
  v21 = *(v0 + 4240);
  v22 = *(v0 + 4208);
  v23 = *(v0 + 4200);
  v24 = *(v0 + 4192);
  v25 = *(v0 + 4184);

  v224 = v18 + 1;
  v26 = *(v24 + 8);
  v26(v23, v25);
  v27 = *(v20 + 8);
  v27(v19, v21);
  v26(v22, v25);
  v27(v217, v21);
  v28 = v247;
  *(v247 + 2) = v17 + 1;
  v29 = &v247[48 * v17];
  *(v29 + 4) = v218;
  *(v29 + 5) = v221;
  *(v29 + 6) = v227;
  *(v29 + 7) = v228;
  v29[64] = v241;
  v29[65] = v238;
  *(v29 + 9) = v243;

  if (v224 != v232)
  {
    v74 = *(v0 + 4680);
    v31 = v0 + 1059;
    v75 = *(v0 + 4664);
    v76 = *(v0 + 4648);
    v77 = *(v0 + 4560) + 1;
    v78 = v254;
LABEL_25:
    *(v0 + 4560) = v77;
    *(v0 + 4552) = v28;
    *(v0 + 4544) = v74;
    *(v0 + 4528) = v75;
    *(v0 + 4512) = v76;
    *(v0 + 4504) = v78;
    v79 = *(v0 + 4096) + 24 * v77;
    *(v0 + 1612) = *(v79 + 32);
    *(v0 + 4568) = *(v79 + 40);
    *(v31 + 554) = *(v79 + 48);
    *(v31 + 555) = *(v79 + 49);
    *(v0 + 4576) = sub_1D72628FC();
    v81 = sub_1D726285C();

    return MEMORY[0x1EEE6DFA0](sub_1D6781138, v81, v80);
  }

  v30 = *(v0 + 4656);

  v31 = v0 + 1059;
  if (v30)
  {
    v32 = *(v0 + 4672);
    v33 = *(v0 + 4656);

    v34 = swift_isUniquelyReferenced_nonNull_native();
    v35 = *(v0 + 4448);
    if ((v34 & 1) == 0)
    {
      v35 = sub_1D69949A4(0, *(v35 + 2) + 1, 1, *(v0 + 4448));
    }

    v37 = *(v35 + 2);
    v36 = *(v35 + 3);
    if (v37 >= v36 >> 1)
    {
      v35 = sub_1D69949A4((v36 > 1), v37 + 1, 1, v35);
    }

    v38 = *(v0 + 4680);
    v39 = *(v0 + 4664);
    v40 = *(v0 + 4656);
    v41 = *(v0 + 4648);
    v42 = *(v0 + 1060);
    v43 = *(v0 + 4376);
    *(v35 + 2) = v37 + 1;
    v44 = &v35[48 * v37];
    *(v44 + 4) = v41;
    *(v44 + 5) = v33;
    *(v44 + 6) = v39;
    *(v44 + 7) = v32;
    *(v44 + 8) = v38;
    *(v44 + 9) = v247;
    sub_1D678E758(v41, v40);
    *(v43 + v42) = v35;
  }

  else
  {
    v35 = *(v0 + 4448);
  }

  v137 = *(v0 + 4440) + 1;
  if (v137 == *(v0 + 4432))
  {
    goto LABEL_35;
  }

  *(v0 + 4448) = v35;
  *(v0 + 4440) = v137;
  v147 = *(v0 + 4088) + 2 * v137;
  v148 = *(v147 + 32);
  *(v0 + 1243) = v148;
  v149 = *(v147 + 33);
  *(v0 + 1427) = v149;
  *(v0 + 3944) = sub_1D6E23ADC(v148);
  *(v0 + 3952) = v150;
  MEMORY[0x1DA6F9910](95, 0xE100000000000000);
  if (v149)
  {
    v151 = 0x70616373646E616CLL;
  }

  else
  {
    v151 = 0x7469617274726F70;
  }

  if (v149)
  {
    v152 = 0xE900000000000065;
  }

  else
  {
    v152 = 0xE800000000000000;
  }

  MEMORY[0x1DA6F9910](v151, v152);

  *(v0 + 4456) = *(v0 + 3944);
  *(v0 + 4464) = *(v0 + 3952);
  sub_1D72629AC();
  if (v254)
  {
    v153 = *(v0 + 4416);
    v154 = *(v0 + 4408);
    v155 = *(v0 + 4384);
    v256 = *(v0 + 4376);
    v156 = *(v0 + 4360);
    v157 = *(v0 + 4352);
    v158 = *(v0 + 4304);
    v159 = *(v0 + 4296);
    v253 = *(v0 + 4120);

    v160 = *(v158 + 8);
    v160(v157, v159);
    v160(v156, v159);
    v153(v154, v155);
    goto LABEL_46;
  }

  v164 = *(*(v0 + 4096) + 16);
  *(v0 + 4472) = v164;
  if (v164)
  {
LABEL_51:
    v165 = *(v0 + 4120);
    *(v0 + 4480) = sub_1D726290C();
    *(v0 + 1611) = sub_1D6F79CFC(v148);
    v166 = objc_opt_self();
    v78 = 0;
    v74 = 0;
    v28 = 0;
    v77 = 0;
    *(v0 + 4488) = v166;
    *(v0 + 4496) = *(v165 + 16);
    v76 = 0uLL;
    v75 = 0uLL;
    goto LABEL_25;
  }

  v203 = *(v0 + 4440) + 1;
  if (v203 != *(v0 + 4432))
  {
    while (1)
    {
      *(v0 + 4448) = v35;
      *(v0 + 4440) = v203;
      v204 = *(v0 + 4088) + 2 * v203;
      v148 = *(v204 + 32);
      *(v0 + 1243) = v148;
      v205 = *(v204 + 33);
      *(v0 + 1427) = v205;
      *(v0 + 3944) = sub_1D6E23ADC(v148);
      *(v0 + 3952) = v206;
      MEMORY[0x1DA6F9910](95, 0xE100000000000000);
      v207 = v205 ? 0x70616373646E616CLL : 0x7469617274726F70;
      v208 = v205 ? 0xE900000000000065 : 0xE800000000000000;
      MEMORY[0x1DA6F9910](v207, v208);

      *(v0 + 4456) = *(v0 + 3944);
      *(v0 + 4464) = *(v0 + 3952);
      sub_1D72629AC();
      v209 = *(*(v0 + 4096) + 16);
      *(v0 + 4472) = v209;
      if (v209)
      {
        goto LABEL_51;
      }

      v254 = 0;
      v203 = *(v0 + 4440) + 1;
      if (v203 == *(v0 + 4432))
      {
        goto LABEL_35;
      }
    }
  }

  v254 = 0;
LABEL_35:

  sub_1D725849C();
  sub_1D678ED98(&qword_1EC88B4F0, type metadata accessor for DebugFormatWorkspaceSnapshotManifest);
  v138 = sub_1D72578BC();
  *(v0 + 4936) = v138;
  *(v0 + 4944) = v139;
  if (v254)
  {
    v140 = *(v0 + 4416);
    v141 = *(v0 + 4408);
    v142 = *(v0 + 4384);
    v256 = *(v0 + 4376);
    v143 = *(v0 + 4360);
    v144 = *(v0 + 4352);
    v145 = *(v0 + 4296);
    v253 = *(v0 + 4120);
    v146 = *(*(v0 + 4304) + 8);
    v146(*(v0 + 4328), v145);
    v146(v144, v145);
    v146(v143, v145);
    v140(v141, v142);
LABEL_46:
    sub_1D678EB84(v256, type metadata accessor for DebugFormatWorkspaceSnapshotManifest);
    v136 = v253;
LABEL_47:
    sub_1D678ADBC(v136);

    v163 = *(v0 + 8);

    return v163();
  }

  v161 = v138;
  v162 = v139;
  sub_1D725869C();
  v257 = v162;
  v167 = *(v0 + 4144);
  v246 = *(v0 + 4136);
  v250 = *(v0 + 4128);
  v168 = *(v0 + 4080);
  sub_1D725849C();
  v169 = (v168 + *(type metadata accessor for DebugFormatWorkspace() + 20));
  v170 = v169[8];
  v171 = v169[9];
  v172 = v169[10];
  *(v0 + 2895) = *(v169 + 175);
  *(v0 + 2864) = v171;
  *(v0 + 2880) = v172;
  *(v0 + 2848) = v170;
  v173 = v169[4];
  v174 = v169[5];
  v175 = v169[7];
  *(v0 + 2816) = v169[6];
  *(v0 + 2832) = v175;
  *(v0 + 2784) = v173;
  *(v0 + 2800) = v174;
  v176 = *v169;
  v177 = v169[1];
  v178 = v169[3];
  *(v0 + 2752) = v169[2];
  *(v0 + 2768) = v178;
  *(v0 + 2720) = v176;
  *(v0 + 2736) = v177;
  v180 = v169[2];
  v179 = v169[3];
  *(v0 + 3456) = v169[1];
  *(v0 + 3472) = v180;
  *(v0 + 3488) = v179;
  v181 = v169[7];
  v183 = v169[4];
  v182 = v169[5];
  *(v0 + 3536) = v169[6];
  *(v0 + 3552) = v181;
  *(v0 + 3504) = v183;
  *(v0 + 3520) = v182;
  v185 = v169[9];
  v184 = v169[10];
  v186 = v169[8];
  *(v0 + 3615) = *(v169 + 175);
  *(v0 + 3584) = v185;
  *(v0 + 3600) = v184;
  *(v0 + 3568) = v186;
  sub_1D5ECF1C0(v0 + 2720, v0 + 2536);
  sub_1D725894C();
  v187 = sub_1D725893C();
  v189 = v188;
  *(v0 + 4952) = v187;
  *(v0 + 4960) = v188;
  v190 = v167;
  v191 = v187;
  (*(v246 + 8))(v190, v250);

  *(v0 + 2904) = v191;
  *(v0 + 2912) = v189;
  v192 = *(v0 + 3472);
  *(v0 + 2920) = *(v0 + 3456);
  *(v0 + 2936) = v192;
  v193 = *(v0 + 3536);
  *(v0 + 2984) = *(v0 + 3520);
  *(v0 + 3000) = v193;
  v194 = *(v0 + 3504);
  *(v0 + 2952) = *(v0 + 3488);
  *(v0 + 2968) = v194;
  v195 = *(v0 + 3568);
  *(v0 + 3016) = *(v0 + 3552);
  *(v0 + 3032) = v195;
  v196 = *(v0 + 3600);
  *(v0 + 3048) = *(v0 + 3584);
  *(v0 + 3064) = v196;
  *(v0 + 3079) = *(v0 + 3615);
  v197 = *(v0 + 3048);
  *(v0 + 2480) = *(v0 + 3032);
  *(v0 + 2496) = v197;
  *(v0 + 2512) = *(v0 + 3064);
  *(v0 + 2527) = *(v0 + 3079);
  v198 = *(v0 + 2984);
  *(v0 + 2416) = *(v0 + 2968);
  *(v0 + 2432) = v198;
  v199 = *(v0 + 3016);
  *(v0 + 2448) = *(v0 + 3000);
  *(v0 + 2464) = v199;
  v200 = *(v0 + 2920);
  *(v0 + 2352) = *(v0 + 2904);
  *(v0 + 2368) = v200;
  v201 = *(v0 + 2952);
  *(v0 + 2384) = *(v0 + 2936);
  *(v0 + 2400) = v201;
  sub_1D5ECF1C0(v0 + 2904, v0 + 2168);
  sub_1D5E3303C();
  *(v0 + 4968) = sub_1D72578BC();
  *(v0 + 4976) = v202;
  v210 = *(v0 + 2496);
  *(v0 + 1744) = *(v0 + 2480);
  *(v0 + 1760) = v210;
  *(v0 + 1776) = *(v0 + 2512);
  *(v0 + 1791) = *(v0 + 2527);
  v211 = *(v0 + 2432);
  *(v0 + 1680) = *(v0 + 2416);
  *(v0 + 1696) = v211;
  v212 = *(v0 + 2464);
  *(v0 + 1712) = *(v0 + 2448);
  *(v0 + 1728) = v212;
  v213 = *(v0 + 2368);
  *(v0 + 1616) = *(v0 + 2352);
  *(v0 + 1632) = v213;
  v214 = *(v0 + 2400);
  *(v0 + 1648) = *(v0 + 2384);
  *(v0 + 1664) = v214;
  sub_1D5ECF21C(v0 + 1616);
  sub_1D725869C();
  v215 = swift_task_alloc();
  *(v0 + 4984) = v215;
  *v215 = v0;
  v215[1] = sub_1D67893C8;

  return sub_1D678CD4C(v161, v257);
}

uint64_t sub_1D67893C8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 4992) = a1;
  *(v3 + 5000) = v1;

  if (v1)
  {
    v4 = sub_1D678AAB0;
  }

  else
  {
    v4 = sub_1D678950C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D678950C()
{
  v1 = *(v0 + 4992);
  v67 = v1[2];
  v63 = (v0 + 3456);
  if (v67)
  {
    v2 = (*(v0 + 4304) + 8);
    v3 = *(v0 + 5000);
    v4 = v1[6];
    v5 = v1[7];

    sub_1D725849C();

    v6 = sub_1D6011D6C(v4, v5);
    v8 = v7;

    sub_1D725869C();
    v66 = v2;
    if (v3)
    {
      v9 = *(v0 + 4976);
      v10 = *(v0 + 4968);
      v64 = *(v0 + 4960);
      v62 = *(v0 + 4952);
      v55 = *(v0 + 4944);
      v11 = *(v0 + 4936);
      v12 = *(v0 + 4416);
      v60 = *(v0 + 4408);
      v59 = *(v0 + 4384);
      v61 = *(v0 + 4376);
      v57 = *(v0 + 4352);
      v58 = *(v0 + 4360);
      v56 = *(v0 + 4328);
      v54 = *(v0 + 4320);
      v13 = *(v0 + 4312);
      v14 = *(v0 + 4296);
      v68 = *(v0 + 4120);

      sub_1D5B952F8(v6, v8);
      sub_1D5B952F8(v10, v9);
      sub_1D5B952F8(v11, v55);
      v15 = *v66;
      (*v66)(v13, v14);
      v15(v54, v14);
      v15(v56, v14);
      v15(v57, v14);
      v15(v58, v14);
      v12(v60, v59);
      sub_1D678EB84(v61, type metadata accessor for DebugFormatWorkspaceSnapshotManifest);
      *(v0 + 1064) = v62;
      *(v0 + 1072) = v64;
      v16 = *(v0 + 3600);
      *(v0 + 1208) = *(v0 + 3584);
      *(v0 + 1224) = v16;
      *(v0 + 1239) = *(v0 + 3615);
      v17 = *(v0 + 3536);
      *(v0 + 1144) = *(v0 + 3520);
      *(v0 + 1160) = v17;
      v18 = *(v0 + 3568);
      *(v0 + 1176) = *(v0 + 3552);
      *(v0 + 1192) = v18;
      v19 = *(v0 + 3472);
      *(v0 + 1080) = *v63;
      *(v0 + 1096) = v19;
      v20 = *(v0 + 3504);
      *(v0 + 1112) = *(v0 + 3488);
      *(v0 + 1128) = v20;
      sub_1D5ECF21C(v0 + 1064);
      sub_1D678ADBC(v68);

      v21 = *(v0 + 8);
      goto LABEL_9;
    }

    v65 = *v2;
    (*v2)(*(v0 + 4312), *(v0 + 4296));
    sub_1D5B952F8(v6, v8);
    if (v67 != 1)
    {
      v22 = v1 + 11;
      v23 = 1;
      do
      {
        if (v23 >= v1[2])
        {
          __break(1u);
        }

        v24 = *(v22 - 1);
        v25 = *v22;

        sub_1D725849C();

        v26 = sub_1D6011D6C(v24, v25);
        v28 = v27;

        sub_1D725869C();
        ++v23;
        v65(*(v0 + 4312), *(v0 + 4296));
        sub_1D5B952F8(v26, v28);
        v22 += 4;
      }

      while (v67 != v23);
    }
  }

  v52 = *(v0 + 4952);
  v53 = *(v0 + 4960);
  v46 = *(v0 + 4976);
  v47 = *(v0 + 4944);
  v44 = *(v0 + 4968);
  v45 = *(v0 + 4936);
  v51 = *(v0 + 4416);
  v49 = *(v0 + 4384);
  v50 = *(v0 + 4408);
  v29 = *(v0 + 4376);
  v30 = *(v0 + 4360);
  v48 = *(v0 + 4352);
  v31 = *(v0 + 4328);
  v32 = *(v0 + 4320);
  v33 = *(v0 + 4304);
  v34 = *(v0 + 4296);
  v35 = *(v0 + 4120);
  v36 = *(v0 + 4072);

  sub_1D678D40C(v29, v30, v36);
  sub_1D5B952F8(v44, v46);
  sub_1D5B952F8(v45, v47);
  v37 = *(v33 + 8);
  v37(v32, v34);
  v37(v31, v34);
  v37(v48, v34);
  v37(v30, v34);
  v51(v50, v49);
  sub_1D678EB84(v29, type metadata accessor for DebugFormatWorkspaceSnapshotManifest);
  *(v0 + 3272) = v52;
  *(v0 + 3280) = v53;
  v38 = *(v0 + 3600);
  *(v0 + 3416) = *(v0 + 3584);
  *(v0 + 3432) = v38;
  *(v0 + 3447) = *(v0 + 3615);
  v39 = *(v0 + 3536);
  *(v0 + 3352) = *(v0 + 3520);
  *(v0 + 3368) = v39;
  v40 = *(v0 + 3568);
  *(v0 + 3384) = *(v0 + 3552);
  *(v0 + 3400) = v40;
  v41 = *(v0 + 3472);
  *(v0 + 3288) = *v63;
  *(v0 + 3304) = v41;
  v42 = *(v0 + 3504);
  *(v0 + 3320) = *(v0 + 3488);
  *(v0 + 3336) = v42;
  sub_1D5ECF21C(v0 + 3272);
  sub_1D678ADBC(v35);

  v21 = *(v0 + 8);
LABEL_9:

  return v21();
}

uint64_t sub_1D6789C4C()
{
  v33 = *(v0 + 4688);
  v1 = *(v0 + 4672);
  v2 = *(v0 + 4656);
  v31 = *(v0 + 4264);
  v3 = *(v0 + 4256);
  v4 = *(v0 + 4248);
  v5 = *(v0 + 4240);
  v29 = *(v0 + 4208);
  v6 = *(v0 + 4184);
  v7 = *(*(v0 + 4192) + 8);
  v7(*(v0 + 4200), v6);
  v8 = *(v4 + 8);
  v8(v3, v5);
  v7(v29, v6);
  v8(v31, v5);
  v30 = v2;

  v32 = v1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v0 + 4448);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_1D69949A4(0, *(v10 + 2) + 1, 1, *(v0 + 4448));
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = sub_1D69949A4((v11 > 1), v12 + 1, 1, v10);
  }

  v13 = *(v0 + 4664);
  v14 = *(v0 + 4648);
  v24 = *(v0 + 4680);
  v27 = *(v0 + 1060);
  v22 = *(v0 + 4408);
  v23 = *(v0 + 4416);
  v15 = *(v0 + 4384);
  v25 = *(v0 + 4376);
  v26 = *(v0 + 4656);
  v16 = *(v0 + 4360);
  v17 = *(v0 + 4296);
  v28 = *(v0 + 4120);
  v18 = *(*(v0 + 4304) + 8);
  v18(*(v0 + 4352), v17);
  v18(v16, v17);
  v23(v22, v15);
  *(v10 + 2) = v12 + 1;
  v19 = &v10[48 * v12];
  *(v19 + 4) = v14;
  *(v19 + 5) = v30;
  *(v19 + 6) = v13;
  *(v19 + 7) = v32;
  *(v19 + 8) = v24;
  *(v19 + 9) = v33;
  sub_1D678E758(v14, v26);
  *(v25 + v27) = v10;
  sub_1D678EB84(v25, type metadata accessor for DebugFormatWorkspaceSnapshotManifest);
  sub_1D678ADBC(v28);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1D678A000()
{
  v1 = *(v0 + 4808);
  v2 = *(v0 + 4688);
  v52 = *(*(v0 + 4304) + 8);
  v52(*(v0 + 4344), *(v0 + 4296));
  sub_1D5F2B134(v0 + 448);
  v3 = sub_1D6E1B254(v1);

  v48 = *(v0 + 5008);
  v47 = *(v0 + 1059);

  v50 = v3;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D699486C(0, *(v2 + 2) + 1, 1, v2);
  }

  v5 = *(v2 + 2);
  v4 = *(v2 + 3);
  if (v5 >= v4 >> 1)
  {
    v53 = sub_1D699486C((v4 > 1), v5 + 1, 1, v2);
  }

  else
  {
    v53 = v2;
  }

  v41 = *(v0 + 4784);
  v43 = *(v0 + 4792);
  v37 = *(v0 + 4768);
  v39 = *(v0 + 4776);
  v45 = *(v0 + 4656);
  v36 = *(v0 + 4264);
  v6 = *(v0 + 4256);
  v7 = *(v0 + 4248);
  v8 = *(v0 + 4240);
  v9 = *(v0 + 4208);
  v10 = *(v0 + 4200);
  v11 = *(v0 + 4192);
  v12 = *(v0 + 4184);

  v13 = *(v11 + 8);
  v13(v10, v12);
  v14 = *(v7 + 8);
  v14(v6, v8);
  v13(v9, v12);
  v14(v36, v8);
  *(v53 + 2) = v5 + 1;
  v15 = &v53[48 * v5];
  *(v15 + 4) = v37;
  *(v15 + 5) = v39;
  *(v15 + 6) = v41;
  *(v15 + 7) = v43;
  v15[64] = v48;
  v15[65] = v47;
  *(v15 + 9) = v50;

  if (v45)
  {
    v16 = *(v0 + 4672);
    v49 = *(v0 + 4656);

    v51 = v16;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v0 + 4448);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = sub_1D69949A4(0, *(v18 + 2) + 1, 1, *(v0 + 4448));
    }

    v20 = *(v18 + 2);
    v19 = *(v18 + 3);
    if (v20 >= v19 >> 1)
    {
      v18 = sub_1D69949A4((v19 > 1), v20 + 1, 1, v18);
    }

    v38 = *(v0 + 4664);
    v40 = *(v0 + 4680);
    v21 = *(v0 + 4648);
    v35 = *(v0 + 4416);
    v46 = *(v0 + 1060);
    v22 = *(v0 + 4408);
    v23 = *(v0 + 4384);
    v42 = *(v0 + 4376);
    v44 = *(v0 + 4656);
    v24 = *(v0 + 4360);
    v25 = *(v0 + 4296);
    v52(*(v0 + 4352), v25);
    v52(v24, v25);
    v35(v22, v23);
    *(v18 + 2) = v20 + 1;
    v26 = &v18[48 * v20];
    *(v26 + 4) = v21;
    *(v26 + 5) = v49;
    *(v26 + 6) = v38;
    *(v26 + 7) = v51;
    *(v26 + 8) = v40;
    *(v26 + 9) = v53;
    sub_1D678E758(v21, v44);
    *(v42 + v46) = v18;
  }

  else
  {
    v27 = *(v0 + 4416);
    v28 = *(v0 + 4408);
    v29 = *(v0 + 4384);
    v30 = *(v0 + 4360);
    v31 = *(v0 + 4296);
    v52(*(v0 + 4352), v31);
    v52(v30, v31);
    v27(v28, v29);
  }

  v32 = *(v0 + 4120);
  sub_1D678EB84(*(v0 + 4376), type metadata accessor for DebugFormatWorkspaceSnapshotManifest);
  sub_1D678ADBC(v32);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_1D678A544()
{
  v1 = *(v0 + 4808);
  v2 = *(v0 + 4688);
  v3 = *(v0 + 4344);
  v4 = *(v0 + 4336);
  v5 = *(v0 + 4304);
  v6 = *(v0 + 4296);

  v7 = *(v5 + 8);
  v7(v4, v6);
  v57 = v7;
  v7(v3, v6);
  sub_1D5F2B134(v0 + 448);
  v8 = sub_1D6E1B254(v1);

  v53 = *(v0 + 5008);
  v52 = *(v0 + 1059);

  v55 = v8;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D699486C(0, *(v2 + 2) + 1, 1, v2);
  }

  v10 = *(v2 + 2);
  v9 = *(v2 + 3);
  if (v10 >= v9 >> 1)
  {
    v58 = sub_1D699486C((v9 > 1), v10 + 1, 1, v2);
  }

  else
  {
    v58 = v2;
  }

  v46 = *(v0 + 4784);
  v48 = *(v0 + 4792);
  v42 = *(v0 + 4768);
  v44 = *(v0 + 4776);
  v50 = *(v0 + 4656);
  v41 = *(v0 + 4264);
  v11 = *(v0 + 4256);
  v12 = *(v0 + 4248);
  v13 = *(v0 + 4240);
  v14 = *(v0 + 4208);
  v15 = *(v0 + 4200);
  v16 = *(v0 + 4192);
  v17 = *(v0 + 4184);

  v18 = *(v16 + 8);
  v18(v15, v17);
  v19 = *(v12 + 8);
  v19(v11, v13);
  v18(v14, v17);
  v19(v41, v13);
  *(v58 + 2) = v10 + 1;
  v20 = &v58[48 * v10];
  *(v20 + 4) = v42;
  *(v20 + 5) = v44;
  *(v20 + 6) = v46;
  *(v20 + 7) = v48;
  v20[64] = v53;
  v20[65] = v52;
  *(v20 + 9) = v55;

  if (v50)
  {
    v21 = *(v0 + 4672);
    v54 = *(v0 + 4656);

    v56 = v21;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v0 + 4448);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v23 = sub_1D69949A4(0, *(v23 + 2) + 1, 1, *(v0 + 4448));
    }

    v25 = *(v23 + 2);
    v24 = *(v23 + 3);
    if (v25 >= v24 >> 1)
    {
      v23 = sub_1D69949A4((v24 > 1), v25 + 1, 1, v23);
    }

    v43 = *(v0 + 4664);
    v45 = *(v0 + 4680);
    v26 = *(v0 + 4648);
    v40 = *(v0 + 4416);
    v51 = *(v0 + 1060);
    v27 = *(v0 + 4408);
    v28 = *(v0 + 4384);
    v47 = *(v0 + 4376);
    v49 = *(v0 + 4656);
    v29 = *(v0 + 4360);
    v30 = *(v0 + 4296);
    v57(*(v0 + 4352), v30);
    v57(v29, v30);
    v40(v27, v28);
    *(v23 + 2) = v25 + 1;
    v31 = &v23[48 * v25];
    *(v31 + 4) = v26;
    *(v31 + 5) = v54;
    *(v31 + 6) = v43;
    *(v31 + 7) = v56;
    *(v31 + 8) = v45;
    *(v31 + 9) = v58;
    sub_1D678E758(v26, v49);
    *(v47 + v51) = v23;
  }

  else
  {
    v32 = *(v0 + 4416);
    v33 = *(v0 + 4408);
    v34 = *(v0 + 4384);
    v35 = *(v0 + 4360);
    v36 = *(v0 + 4296);
    v57(*(v0 + 4352), v36);
    v57(v35, v36);
    v32(v33, v34);
  }

  v37 = *(v0 + 4120);
  sub_1D678EB84(*(v0 + 4376), type metadata accessor for DebugFormatWorkspaceSnapshotManifest);
  sub_1D678ADBC(v37);

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_1D678AAB0()
{
  v17 = *(v0 + 4960);
  v1 = *(v0 + 4944);
  v2 = *(v0 + 4936);
  v14 = *(v0 + 4416);
  v13 = *(v0 + 4408);
  v3 = *(v0 + 4384);
  v15 = *(v0 + 4376);
  v16 = *(v0 + 4952);
  v4 = *(v0 + 4360);
  v5 = *(v0 + 4352);
  v6 = *(v0 + 4328);
  v7 = *(v0 + 4320);
  v8 = *(v0 + 4304);
  v9 = *(v0 + 4296);
  v18 = *(v0 + 4120);
  sub_1D5B952F8(*(v0 + 4968), *(v0 + 4976));
  sub_1D5B952F8(v2, v1);
  v10 = *(v8 + 8);
  v10(v7, v9);
  v10(v6, v9);
  v10(v5, v9);
  v10(v4, v9);
  v14(v13, v3);
  sub_1D678EB84(v15, type metadata accessor for DebugFormatWorkspaceSnapshotManifest);
  *(v0 + 1248) = v16;
  *(v0 + 1256) = v17;
  *(v0 + 1376) = *(v0 + 3568);
  *(v0 + 1392) = *(v0 + 3584);
  *(v0 + 1408) = *(v0 + 3600);
  *(v0 + 1423) = *(v0 + 3615);
  *(v0 + 1312) = *(v0 + 3504);
  *(v0 + 1328) = *(v0 + 3520);
  *(v0 + 1344) = *(v0 + 3536);
  *(v0 + 1360) = *(v0 + 3552);
  *(v0 + 1264) = *(v0 + 3456);
  *(v0 + 1280) = *(v0 + 3472);
  *(v0 + 1296) = *(v0 + 3488);
  sub_1D5ECF21C(v0 + 1248);
  sub_1D678ADBC(v18);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1D678ADBC(uint64_t a1)
{
  v1 = *(*(a1 + 16) + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_workspaceManager);
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;

  sub_1D725B32C();

  sub_1D725B32C();
}

uint64_t sub_1D678AE80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D678AEA4, 0, 0);
}

uint64_t sub_1D678AEA4()
{
  v1 = v0[2];
  v2 = sub_1D7259CCC();
  if (*(*v1 + 16) && (sub_1D5C5E034(v2), (v3 & 1) != 0))
  {
    v10 = v0[1];

    return v10(v4);
  }

  else
  {
    v6 = v0[5];
    v7 = *(v6 + *(type metadata accessor for DebugFormatWorkspace() + 36));
    v8 = sub_1D7259CCC();
    v9 = swift_task_alloc();
    v0[6] = v9;
    *v9 = v0;
    v9[1] = sub_1D678AFCC;

    return sub_1D678B1D4(v7, v8);
  }
}

uint64_t sub_1D678AFCC(uint64_t a1)
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
    *(v4 + 56) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1D678B118, 0, 0);
  }
}

uint64_t sub_1D678B118()
{
  v1 = v0[7];
  v2 = v0[2];
  v3 = sub_1D7259CCC();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  *v2 = 0x8000000000000000;
  sub_1D6D7B168(v1, v3, isUniquelyReferenced_nonNull_native);
  *v2 = v8;
  v5 = v0[7];
  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_1D678B1D4(uint64_t a1, uint64_t a2)
{
  v3[45] = a2;
  v3[46] = v2;
  v3[44] = a1;
  sub_1D5C8F9E0();
  v3[47] = *(v4 - 8);
  v3[48] = swift_task_alloc();
  v5 = type metadata accessor for DebugFormatWorkspaceGroup();
  v3[49] = v5;
  v3[50] = *(v5 - 8);
  v3[51] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D678B2F0, 0, 0);
}

uint64_t sub_1D678B2F0()
{
  v1 = *(v0 + 352);
  v2 = *(v1 + 16);
  *(v0 + 416) = v2;
  if (v2)
  {
    v3 = 0;
    v4 = *(v0 + 400);
    v5 = *(v4 + 80);
    *(v0 + 488) = v5;
    v6 = *(v4 + 72);
    *(v0 + 424) = v6;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      *(v0 + 432) = v3;
      *(v0 + 440) = v7;
      v8 = *(v0 + 408);
      v9 = *(v0 + 392);
      sub_1D678ECFC(v1 + ((v5 + 32) & ~v5) + v6 * v3, v8, type metadata accessor for DebugFormatWorkspaceGroup);
      v10 = *(v8 + *(v9 + 20));
      *(v0 + 448) = v10;
      if (v10)
      {
        v11 = *(v10 + 16) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__groups;
        swift_beginAccess();
        v12 = *(v11 + 8);
        if (*(v12 + 16))
        {
          v13 = sub_1D5C5E034(*(v0 + 360));
          if (v14)
          {
            break;
          }
        }
      }

      v15 = *(v0 + 416);
      v16 = *(v0 + 432) + 1;
      sub_1D678EB84(*(v0 + 408), type metadata accessor for DebugFormatWorkspaceGroup);
      if (v16 == v15)
      {
        goto LABEL_8;
      }

      v6 = *(v0 + 424);
      v3 = *(v0 + 432) + 1;
      LOBYTE(v5) = *(v0 + 488);
      v1 = *(v0 + 352);
    }

    v20 = *(*(v12 + 56) + 8 * v13);
    v21 = *(v20 + 16);
    if (v21)
    {
      v22 = *(v0 + 376);
      *(v0 + 328) = v7;

      sub_1D5D65D3C(0, v21, 0);
      v23 = v20;
      v24 = *(v0 + 328);
      v25 = v23 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
      v48 = *(v22 + 72);
      for (i = v21 - 1; ; --i)
      {
        v27 = *(v0 + 384);
        sub_1D678ECFC(v25, v27, sub_1D5C8F9E0);
        *(v0 + 16) = *v27;
        v28 = v27[4];
        v30 = v27[1];
        v29 = v27[2];
        *(v0 + 64) = v27[3];
        *(v0 + 80) = v28;
        *(v0 + 32) = v30;
        *(v0 + 48) = v29;
        v31 = v27[8];
        v33 = v27[5];
        v32 = v27[6];
        *(v0 + 128) = v27[7];
        *(v0 + 144) = v31;
        *(v0 + 96) = v33;
        *(v0 + 112) = v32;
        sub_1D5D65D5C(v0 + 16, v0 + 160);
        sub_1D678EB84(v27, sub_1D5C8F9E0);
        *(v0 + 328) = v24;
        v35 = *(v24 + 16);
        v34 = *(v24 + 24);
        if (v35 >= v34 >> 1)
        {
          sub_1D5D65D3C((v34 > 1), v35 + 1, 1);
          v24 = *(v0 + 328);
        }

        *(v24 + 16) = v35 + 1;
        v36 = (v24 + 144 * v35);
        v36[2] = *(v0 + 16);
        v37 = *(v0 + 32);
        v38 = *(v0 + 48);
        v39 = *(v0 + 80);
        v36[5] = *(v0 + 64);
        v36[6] = v39;
        v36[3] = v37;
        v36[4] = v38;
        v40 = *(v0 + 96);
        v41 = *(v0 + 112);
        v42 = *(v0 + 144);
        v36[9] = *(v0 + 128);
        v36[10] = v42;
        v36[7] = v40;
        v36[8] = v41;
        if (!i)
        {
          break;
        }

        v25 += v48;
      }
    }

    else
    {

      v24 = MEMORY[0x1E69E7CC0];
    }

    *(v0 + 456) = v24;
    sub_1D725B77C();
    v43 = *(v0 + 336);
    *(v0 + 464) = v43;
    v44 = swift_task_alloc();
    *(v0 + 472) = v44;
    v45 = type metadata accessor for DebugFormatBindingResult();
    v46 = sub_1D5BA6EF4();
    *v44 = v0;
    v44[1] = sub_1D678B718;
    v47 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v0 + 344, v43, v45, v46, v47);
  }

  else
  {
LABEL_8:
    v17 = sub_1D678E090(MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0]);

    v18 = *(v0 + 8);

    return v18(v17);
  }
}

uint64_t sub_1D678B718()
{
  *(*v1 + 480) = v0;

  if (v0)
  {

    v2 = sub_1D678BD64;
  }

  else
  {
    v2 = sub_1D678B868;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D678B868()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 456);
  v3 = *(v0 + 408);
  v4 = *(v0 + 344);
  v5 = swift_task_alloc();
  v5[2] = v3;
  v5[3] = v4;
  v5[4] = v1;
  v6 = sub_1D5ECCD20(sub_1D678ECD8, v5, v2);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + 440);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1D69945B8(0, v8[2] + 1, 1, *(v0 + 440));
  }

  v10 = v8[2];
  v9 = v8[3];
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1D69945B8((v9 > 1), v10 + 1, 1, v8);
  }

  v8[2] = v10 + 1;
  v8[v10 + 4] = v6;
  v11 = *(v0 + 416);
  v12 = *(v0 + 432) + 1;
  sub_1D678EB84(*(v0 + 408), type metadata accessor for DebugFormatWorkspaceGroup);
  if (v12 == v11)
  {
LABEL_6:
    v13 = sub_1D678E090(v8, MEMORY[0x1E69E7CC0]);

    v14 = *(v0 + 8);

    return v14(v13);
  }

  else
  {
    while (1)
    {
      v18 = *(v0 + 424);
      v19 = *(v0 + 432) + 1;
      *(v0 + 432) = v19;
      *(v0 + 440) = v8;
      v20 = *(v0 + 408);
      v21 = *(v0 + 392);
      sub_1D678ECFC(*(v0 + 352) + ((*(v0 + 488) + 32) & ~*(v0 + 488)) + v18 * v19, v20, type metadata accessor for DebugFormatWorkspaceGroup);
      v22 = *(v20 + *(v21 + 20));
      *(v0 + 448) = v22;
      if (v22)
      {
        v23 = *(v22 + 16) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__groups;
        swift_beginAccess();
        v24 = *(v23 + 8);
        if (*(v24 + 16))
        {
          v25 = sub_1D5C5E034(*(v0 + 360));
          if (v26)
          {
            break;
          }
        }
      }

      v16 = *(v0 + 416);
      v17 = *(v0 + 432) + 1;
      sub_1D678EB84(*(v0 + 408), type metadata accessor for DebugFormatWorkspaceGroup);
      if (v17 == v16)
      {
        goto LABEL_6;
      }
    }

    v27 = *(*(v24 + 56) + 8 * v25);
    v28 = *(v27 + 16);
    if (v28)
    {
      v29 = *(v0 + 376);
      *(v0 + 328) = MEMORY[0x1E69E7CC0];

      sub_1D5D65D3C(0, v28, 0);
      v30 = *(v0 + 328);
      v31 = v27 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
      v54 = *(v29 + 72);
      for (i = v28 - 1; ; --i)
      {
        v33 = *(v0 + 384);
        sub_1D678ECFC(v31, v33, sub_1D5C8F9E0);
        *(v0 + 16) = *v33;
        v34 = v33[4];
        v36 = v33[1];
        v35 = v33[2];
        *(v0 + 64) = v33[3];
        *(v0 + 80) = v34;
        *(v0 + 32) = v36;
        *(v0 + 48) = v35;
        v37 = v33[8];
        v39 = v33[5];
        v38 = v33[6];
        *(v0 + 128) = v33[7];
        *(v0 + 144) = v37;
        *(v0 + 96) = v39;
        *(v0 + 112) = v38;
        sub_1D5D65D5C(v0 + 16, v0 + 160);
        sub_1D678EB84(v33, sub_1D5C8F9E0);
        *(v0 + 328) = v30;
        v41 = *(v30 + 16);
        v40 = *(v30 + 24);
        if (v41 >= v40 >> 1)
        {
          sub_1D5D65D3C((v40 > 1), v41 + 1, 1);
          v30 = *(v0 + 328);
        }

        *(v30 + 16) = v41 + 1;
        v42 = (v30 + 144 * v41);
        v42[2] = *(v0 + 16);
        v43 = *(v0 + 32);
        v44 = *(v0 + 48);
        v45 = *(v0 + 80);
        v42[5] = *(v0 + 64);
        v42[6] = v45;
        v42[3] = v43;
        v42[4] = v44;
        v46 = *(v0 + 96);
        v47 = *(v0 + 112);
        v48 = *(v0 + 144);
        v42[9] = *(v0 + 128);
        v42[10] = v48;
        v42[7] = v46;
        v42[8] = v47;
        if (!i)
        {
          break;
        }

        v31 += v54;
      }
    }

    else
    {

      v30 = MEMORY[0x1E69E7CC0];
    }

    *(v0 + 456) = v30;
    sub_1D725B77C();
    v49 = *(v0 + 336);
    *(v0 + 464) = v49;
    v50 = swift_task_alloc();
    *(v0 + 472) = v50;
    v51 = type metadata accessor for DebugFormatBindingResult();
    v52 = sub_1D5BA6EF4();
    *v50 = v0;
    v50[1] = sub_1D678B718;
    v53 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v0 + 344, v49, v51, v52, v53);
  }
}

uint64_t sub_1D678BD64()
{
  v1 = *(v0 + 408);

  sub_1D678EB84(v1, type metadata accessor for DebugFormatWorkspaceGroup);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D678BDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 472) = a5;
  *(v6 + 480) = v5;
  *(v6 + 456) = a3;
  *(v6 + 464) = a4;
  *(v6 + 448) = a2;
  sub_1D678EBEC(0);
  *(v6 + 488) = swift_task_alloc();
  v8 = type metadata accessor for DebugFormatCanvasBindResult();
  *(v6 + 496) = v8;
  *(v6 + 504) = *(v8 - 8);
  *(v6 + 512) = swift_task_alloc();
  *(v6 + 520) = type metadata accessor for DebugFormatCanvasBindRequest();
  *(v6 + 528) = swift_task_alloc();
  v9 = *(a1 + 176);
  *(v6 + 176) = *(a1 + 160);
  *(v6 + 192) = v9;
  *(v6 + 208) = *(a1 + 192);
  *(v6 + 224) = *(a1 + 208);
  v10 = *(a1 + 112);
  *(v6 + 112) = *(a1 + 96);
  *(v6 + 128) = v10;
  v11 = *(a1 + 144);
  *(v6 + 144) = *(a1 + 128);
  *(v6 + 160) = v11;
  v12 = *(a1 + 48);
  *(v6 + 48) = *(a1 + 32);
  *(v6 + 64) = v12;
  v13 = *(a1 + 80);
  *(v6 + 80) = *(a1 + 64);
  *(v6 + 96) = v13;
  v14 = *(a1 + 16);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v14;
  *(v6 + 536) = sub_1D726290C();
  *(v6 + 544) = sub_1D72628FC();
  v16 = sub_1D726285C();
  *(v6 + 552) = v16;
  *(v6 + 560) = v15;

  return MEMORY[0x1EEE6DFA0](sub_1D678BFA0, v16, v15);
}

uint64_t sub_1D678BFA0()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 520);
  v3 = *(v0 + 480);
  v4 = *(v0 + 456);
  v5 = *(v0 + 464);
  v6 = v2[5];
  v7 = sub_1D7259F5C();
  (*(*(v7 - 8) + 16))(&v1[v6], v4, v7);
  v8 = v2[6];
  v9 = sub_1D7259CFC();
  (*(*(v9 - 8) + 16))(&v1[v8], v5, v9);
  *v1 = 1;
  v10 = &v1[v2[7]];
  v11 = *(v0 + 176);
  v12 = *(v0 + 192);
  v13 = *(v0 + 208);
  *(v10 + 26) = *(v0 + 224);
  *(v10 + 11) = v12;
  *(v10 + 12) = v13;
  *(v10 + 10) = v11;
  v14 = *(v0 + 112);
  v15 = *(v0 + 128);
  v16 = *(v0 + 160);
  *(v10 + 8) = *(v0 + 144);
  *(v10 + 9) = v16;
  *(v10 + 6) = v14;
  *(v10 + 7) = v15;
  v17 = *(v0 + 48);
  v18 = *(v0 + 64);
  v19 = *(v0 + 96);
  *(v10 + 4) = *(v0 + 80);
  *(v10 + 5) = v19;
  *(v10 + 2) = v17;
  *(v10 + 3) = v18;
  v20 = *(v0 + 32);
  *v10 = *(v0 + 16);
  *(v10 + 1) = v20;
  *(v0 + 568) = *(v3 + 32);
  *(v0 + 576) = type metadata accessor for DebugFormatCanvasTracer();
  v21 = swift_allocObject();
  *(v0 + 584) = v21;
  sub_1D61F55EC();
  *(v0 + 592) = v22;
  v23 = swift_allocObject();
  *(v23 + 24) = 0;
  *(v23 + 16) = MEMORY[0x1E69E7CC0];
  *(v21 + 16) = v23;
  sub_1D5F2B0D8(v0 + 16, v0 + 232);

  return MEMORY[0x1EEE6DFA0](sub_1D678C150, 0, 0);
}

uint64_t sub_1D678C150()
{
  v1 = v0[73];
  v2 = v0[71];
  v3 = v0[66];
  v4 = swift_task_alloc();
  v0[75] = v4;
  v4[2] = v2;
  v4[3] = v3;
  v4[4] = v1;
  v5 = swift_task_alloc();
  v0[76] = v5;
  *v5 = v0;
  v5[1] = sub_1D678C254;
  v6 = v0[61];
  v7 = v0[62];

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000017, 0x80000001D73CECD0, sub_1D61F5678, v4, v7);
}

uint64_t sub_1D678C254()
{
  v2 = *v1;
  *(*v1 + 616) = v0;

  if (v0)
  {

    v3 = sub_1D678C5E4;
    v4 = 0;
    v5 = 0;
  }

  else
  {

    v5 = *(v2 + 560);
    v4 = *(v2 + 552);
    v3 = sub_1D678C3B4;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D678C3B4()
{
  v1 = v0[77];
  v2 = v0[64];
  v3 = v0[61];
  (*(v0[63] + 56))(v3, 0, 1, v0[62]);
  sub_1D678EC20(v3, v2, type metadata accessor for DebugFormatCanvasBindResult);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = MEMORY[0x1E69E7CC0];
  *(v4 + 16) = v5;
  v6 = sub_1D5F2882C(v2, v4);
  v0[78] = v6;

  sub_1D72629AC();
  if (v1)
  {
    sub_1D678EB84(v0[64], type metadata accessor for DebugFormatCanvasBindResult);

    sub_1D678EB84(v0[66], type metadata accessor for DebugFormatCanvasBindRequest);

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[56];
    v10 = OBJC_IVAR____TtC8NewsFeed27DebugFormatCanvasViewResult_debugView;
    v0[79] = OBJC_IVAR____TtC8NewsFeed27DebugFormatCanvasViewResult_debugView;
    [v9 insertSubview:*(v6 + v10) atIndex:0];
    v0[80] = sub_1D72628FC();
    v12 = sub_1D726285C();
    v0[81] = v12;
    v0[82] = v11;

    return MEMORY[0x1EEE6DFA0](sub_1D678C740, v12, v11);
  }
}

uint64_t sub_1D678C5E4()
{

  v1 = *(v0 + 560);
  v2 = *(v0 + 552);

  return MEMORY[0x1EEE6DFA0](sub_1D678C64C, v2, v1);
}

uint64_t sub_1D678C64C()
{
  v1 = v0[66];
  v2 = v0[62];
  v3 = v0[63];
  v4 = v0[61];

  (*(v3 + 56))(v4, 1, 1, v2);
  sub_1D678EB84(v1, type metadata accessor for DebugFormatCanvasBindRequest);
  sub_1D678EB84(v4, sub_1D678EBEC);

  v5 = v0[1];

  return v5(0);
}

uint64_t sub_1D678C740()
{
  v1 = *(*(v0[78] + v0[79]) + OBJC_IVAR____TtC8NewsFeed20DebugGroupLayoutView_contentView);
  v0[83] = v1;
  v2 = v1;
  v3 = swift_task_alloc();
  v0[84] = v3;
  *v3 = v0;
  v3[1] = sub_1D678C800;

  return sub_1D6CDA64C(v2);
}

uint64_t sub_1D678C800()
{
  v2 = *v1;
  *(*v1 + 680) = v0;

  if (v0)
  {
    v3 = *(v2 + 656);
    v4 = *(v2 + 648);
    v5 = sub_1D678CBEC;
  }

  else
  {

    v3 = *(v2 + 656);
    v4 = *(v2 + 648);
    v5 = sub_1D678C924;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D678C924()
{

  v1 = *(v0 + 560);
  v2 = *(v0 + 552);

  return MEMORY[0x1EEE6DFA0](sub_1D678C98C, v2, v1);
}

uint64_t sub_1D678C98C()
{
  v1 = v0[85];

  sub_1D72629AC();
  v2 = *(v0[78] + v0[79]);
  if (v1)
  {
    v3 = v0[64];
    [v2 removeFromSuperview];
    sub_1D678EB84(v3, type metadata accessor for DebugFormatCanvasBindResult);

    sub_1D678EB84(v0[66], type metadata accessor for DebugFormatCanvasBindRequest);

    v10 = v0[1];

    return v10();
  }

  else
  {
    v4 = v2;
    v5 = sub_1D678E7A8(v4);
    v7 = v6;

    sub_1D72629AC();
    sub_1D725869C();
    v8 = v0[79];
    v9 = v0[78];
    v12 = v0[66];
    v13 = v0[64];

    sub_1D5B952F8(v5, v7);
    [*(v9 + v8) removeFromSuperview];
    sub_1D678EB84(v13, type metadata accessor for DebugFormatCanvasBindResult);

    sub_1D678EB84(v12, type metadata accessor for DebugFormatCanvasBindRequest);

    v14 = v0[1];

    return v14(v9);
  }
}

uint64_t sub_1D678CBEC()
{

  v1 = *(v0 + 560);
  v2 = *(v0 + 552);

  return MEMORY[0x1EEE6DFA0](sub_1D678CC60, v2, v1);
}

uint64_t sub_1D678CC60()
{
  v1 = v0[79];
  v2 = v0[78];
  v3 = v0[64];

  [*(v2 + v1) removeFromSuperview];
  sub_1D678EB84(v3, type metadata accessor for DebugFormatCanvasBindResult);

  sub_1D678EB84(v0[66], type metadata accessor for DebugFormatCanvasBindRequest);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D678CD4C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_1D72577EC();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  sub_1D5B4D3E0();
  v3[9] = swift_task_alloc();
  v5 = sub_1D72585BC();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D678CEA4, 0, 0);
}

uint64_t sub_1D678CEA4()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  sub_1D6A9DC44(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1D678EB84(v0[9], sub_1D5B4D3E0);

    v4 = v0[1];
    v5 = MEMORY[0x1E69E7CC0];

    return v4(v5);
  }

  else
  {
    v7 = v0[8];
    v8 = v0[4];
    v9 = v0[5];
    v10 = v0[3];
    (*(v0[11] + 32))(v0[13], v0[9], v0[10]);
    sub_1D725849C();
    sub_1D72577AC();
    sub_1D725774C();
    sub_1D72577DC();
    sub_1D5E3E824(v10, v8);
    sub_1D72577CC();
    v11 = *(v9 + 24);
    v12 = swift_task_alloc();
    *(v12 + 16) = v7;
    *(v12 + 24) = v11;
    sub_1D6726A04(0, &qword_1EC88B4F8, &type metadata for DebugFormatWorkspaceSnapshotBundle, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    v0[14] = sub_1D725BBAC();

    v13 = swift_task_alloc();
    v0[15] = v13;
    *v13 = v0;
    v13[1] = sub_1D678D14C;

    return MEMORY[0x1EEE44EE0](v0 + 2);
  }
}

uint64_t sub_1D678D14C()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1D678D344;
  }

  else
  {
    v2 = sub_1D678D27C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D678D27C()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  (*(v0[11] + 8))(v0[13], v0[10]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[2];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1D678D344()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[7];
  (*(v0[11] + 8))(v0[13], v0[10]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D678D40C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v33 = a1;
  v5 = type metadata accessor for DebugFormatWorkspaceSnapshotManifest();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v8);
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v28 - v15;
  v17 = *(v3 + 16);
  v30 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_workspaceManager;
  v31 = v17;
  aBlock = 0xD00000000000001DLL;
  v35 = 0x80000001D73D4480;

  sub_1D725B32C();

  v18 = sub_1D72585BC();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v16, 1, 1, v18);
  v20 = [objc_allocWithZone(MEMORY[0x1E696ABF8]) init];
  v29 = a2;
  v21 = sub_1D725844C();
  sub_1D678ECFC(v33, &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DebugFormatWorkspaceSnapshotManifest);
  v22 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v23 = swift_allocObject();
  sub_1D678EC20(&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for DebugFormatWorkspaceSnapshotManifest);
  *(v23 + ((v7 + v22 + 7) & 0xFFFFFFFFFFFFFFF8)) = v16;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1D678EAE8;
  *(v24 + 24) = v23;
  v38 = sub_1D5E469B4;
  v39 = v24;
  aBlock = MEMORY[0x1E69E9820];
  v35 = 1107296256;
  v36 = sub_1D678DEB4;
  v37 = &block_descriptor_43;
  v25 = _Block_copy(&aBlock);

  [v20 coordinateReadingItemAtURL:v21 options:8 error:0 byAccessor:v25];

  _Block_release(v25);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
  }

  else
  {
    sub_1D678ECFC(v16, v12, sub_1D5B4D3E0);
    v27 = *(v19 + 48);
    if (v27(v12, 1, v18) == 1)
    {
      (*(v19 + 16))(v32, v29, v18);
      if (v27(v12, 1, v18) != 1)
      {
        sub_1D678EB84(v12, sub_1D5B4D3E0);
      }
    }

    else
    {
      (*(v19 + 32))(v32, v12, v18);
    }

    sub_1D678EB84(v16, sub_1D5B4D3E0);
    aBlock = 0;
    v35 = 0xE000000000000000;

    sub_1D725B32C();
  }

  return result;
}

void sub_1D678D8AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v66[3] = *MEMORY[0x1E69E9840];
  v5 = sub_1D7257A4C();
  v61 = *(v5 - 8);
  v62 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D72585BC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v56 - v16;
  v60 = objc_opt_self();
  v18 = [v60 defaultManager];
  v63 = a1;
  v19 = sub_1D725844C();
  v66[0] = 0;
  v20 = [v18 URLForDirectory:99 inDomain:1 appropriateForURL:v19 create:1 error:v66];

  v21 = v66[0];
  if (v20)
  {
    v56 = a3;
    v57 = v13;
    sub_1D72584EC();
    v22 = v21;

    v66[0] = 0;
    v66[1] = 0xE000000000000000;
    if (qword_1EDF272B0 != -1)
    {
      swift_once();
    }

    v58 = v10;
    v59 = v9;
    v23 = qword_1EDFFCAA0;
    v24 = sub_1D725881C();
    v25 = [v23 stringFromDate_];

    v26 = sub_1D726207C();
    v28 = v27;

    v64 = 0x636170736B726F77;
    v65 = 0xEA00000000002D65;
    MEMORY[0x1DA6F9910](v26, v28);

    v30 = v64;
    v29 = v65;
    sub_1D725796C();
    sub_1D5BF4D9C();

    v64 = v30;
    v65 = v29;
    v31 = sub_1D7263A1C();
    v33 = v32;
    LOBYTE(v26) = v34;

    if (v26)
    {
      v35 = v29;
    }

    else
    {
      do
      {
        v30 = sub_1D6C2BD5C(v31, v33, 45, 0xE100000000000000, v30, v29);
        v35 = v38;

        v64 = v30;
        v65 = v35;
        v31 = sub_1D7263A1C();
        v33 = v39;
        v41 = v40;

        v29 = v35;
      }

      while ((v41 & 1) == 0);
    }

    (*(v61 + 8))(v8, v62);
    MEMORY[0x1DA6F9910](v30, v35);

    MEMORY[0x1DA6F9910](1885960750, 0xE400000000000000);
    v42 = v57;
    sub_1D725848C();

    v43 = [v60 defaultManager];
    v44 = sub_1D725844C();
    v45 = sub_1D725844C();
    v66[0] = 0;
    v46 = [v43 moveItemAtURL:v44 toURL:v45 error:v66];

    if (v46)
    {
      v47 = v58;
      v48 = *(v58 + 8);
      v49 = v66[0];
      v50 = v59;
      v48(v17, v59);
      v51 = v56;
      sub_1D678EB84(v56, sub_1D5B4D3E0);
      (*(v47 + 32))(v51, v42, v50);
      (*(v47 + 56))(v51, 0, 1, v50);
      return;
    }

    v52 = v66[0];
    v37 = sub_1D725829C();

    swift_willThrow();
    v53 = v59;
    v54 = *(v58 + 8);
    v54(v42, v59);
    v54(v17, v53);
  }

  else
  {
    v36 = v66[0];
    v37 = sub_1D725829C();

    swift_willThrow();
  }

  v55 = v37;
  if (qword_1EC87D498 != -1)
  {
    swift_once();
  }

  sub_1D5F5EBA0(v37, 0, 0, 0xD00000000000002DLL, 0x80000001D73D44B0);
}

uint64_t sub_1D678DEB4(uint64_t a1)
{
  v2 = sub_1D72585BC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_1D72584EC();
  v7(v6);
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1D678DF98@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a1[7];
  v21[6] = a1[6];
  v21[7] = v9;
  v21[8] = a1[8];
  v10 = a1[3];
  v21[2] = a1[2];
  v21[3] = v10;
  v11 = a1[5];
  v21[4] = a1[4];
  v21[5] = v11;
  v12 = a1[1];
  v21[0] = *a1;
  v21[1] = v12;
  sub_1D678ECFC(a2, a5, type metadata accessor for FormatWorkspaceGroup);
  v13 = type metadata accessor for DebugFormatEditorWorkspaceGroup();
  *(a5 + v13[5]) = a3;
  *(a5 + v13[6]) = a4;
  v14 = (a5 + v13[7]);
  v15 = a1[7];
  v14[6] = a1[6];
  v14[7] = v15;
  v14[8] = a1[8];
  v16 = a1[3];
  v14[2] = a1[2];
  v14[3] = v16;
  v17 = a1[5];
  v14[4] = a1[4];
  v14[5] = v17;
  v18 = a1[1];
  *v14 = *a1;
  v14[1] = v18;
  sub_1D5D65D5C(v21, &v20);
}

void *sub_1D678E090(void *a1, void *a2)
{
  v3 = a1[2];
  if (!v3)
  {
    sub_1D5B547F4(0, &unk_1EC88F270, sub_1D678ED64, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1D7273AE0;
    *(v11 + 32) = a2;

    return v11;
  }

  v4 = a1;
  v5 = a1[4];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v3 - 1) > v4[3] >> 1)
  {
    v4 = sub_1D69945B8(isUniquelyReferenced_nonNull_native, v3, 1, v4);
  }

  sub_1D5EC4040(0, 1, 0);
  v7 = *(v5 + 16);
  if (!v7)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v8 = *(type metadata accessor for DebugFormatEditorWorkspaceGroup() - 8);
  v27 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v9 = v5 + v27;
  v26 = a2[2];
  v10 = *(v8 + 72);
  sub_1D5B547F4(0, &qword_1EC88EE90, type metadata accessor for DebugFormatEditorWorkspaceGroup, MEMORY[0x1E69E6F90]);
  v11 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1D7273AE0;
    sub_1D678ECFC(v9, v13 + v27, type metadata accessor for DebugFormatEditorWorkspaceGroup);

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || (v14 = a2[3] >> 1, v15 = a2, v14 <= v26))
    {
      result = sub_1D699164C(result, v26 + 1, 1, a2);
      v15 = result;
      v14 = result[3] >> 1;
    }

    if (v14 <= v15[2])
    {
      break;
    }

    v16 = v10;
    swift_arrayInitWithCopy();

    ++v15[2];
    v17 = v4;
    v18 = sub_1D678E090(v4, v15);

    v19 = *(v18 + 16);
    v20 = *(v11 + 16);
    v21 = v20 + v19;
    if (__OFADD__(v20, v19))
    {
      goto LABEL_30;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v21 > *(v11 + 24) >> 1)
    {
      if (v20 <= v21)
      {
        v22 = v20 + v19;
      }

      else
      {
        v22 = v20;
      }

      result = sub_1D69945B8(result, v22, 1, v11);
      v11 = result;
    }

    v10 = v16;
    if (*(v18 + 16))
    {
      if ((*(v11 + 24) >> 1) - *(v11 + 16) < v19)
      {
        goto LABEL_32;
      }

      sub_1D678ED64(0);
      swift_arrayInitWithCopy();

      v4 = v17;
      if (v19)
      {
        v23 = *(v11 + 16);
        v24 = __OFADD__(v23, v19);
        v25 = v23 + v19;
        if (v24)
        {
          goto LABEL_33;
        }

        *(v11 + 16) = v25;
      }
    }

    else
    {

      v4 = v17;
      if (v19)
      {
        goto LABEL_31;
      }
    }

    v9 += v16;
    if (!--v7)
    {

      return v11;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_1D678E45C()
{

  return swift_deallocClassInstance();
}

void *sub_1D678E4D0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D725785C();
  MEMORY[0x1EEE9AC00](v4, v5);
  type metadata accessor for DebugFormatService();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v2[2] = a1;
  v2[3] = v6;
  type metadata accessor for DebugFormatCanvasGenerator();
  swift_allocObject();
  v7 = swift_retain_n();
  v2[4] = sub_1D5F26CE8(v7);
  type metadata accessor for FormatJSONEncoder();
  swift_allocObject();
  v8 = sub_1D6BCED58(&unk_1F5118C40);
  sub_1D5B547F4(0, &qword_1EC8813F0, MEMORY[0x1E6967F78], MEMORY[0x1E69E6F90]);
  *(swift_allocObject() + 16) = xmmword_1D7279970;

  sub_1D725783C();
  sub_1D725782C();
  sub_1D725784C();
  sub_1D678ED98(&qword_1EC8813F8, MEMORY[0x1E6967F78]);
  sub_1D678EDE0(0);
  sub_1D678ED98(&qword_1EC881408, sub_1D678EDE0);
  sub_1D7263B6C();
  sub_1D725786C();

  v2[5] = v8;
  return v2;
}

uint64_t sub_1D678E758(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1D678E7A8(void *a1)
{
  v1 = a1;
  [a1 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_1D7259EBC();
  v11 = [objc_opt_self() formatForTraitCollection_];

  v12 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithBounds:v11 format:{v3, v5, v7, v9}];
  v32 = 0;
  v13 = swift_allocObject();
  *(v13 + 16) = &v32;
  *(v13 + 24) = v1;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1D678EC88;
  *(v14 + 24) = v13;
  aBlock[4] = sub_1D6139588;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D62E78B0;
  aBlock[3] = &block_descriptor_25_1;
  v15 = _Block_copy(aBlock);
  v16 = v1;

  v17 = [(UIImage *)v12 PNGDataWithActions:v15];
  _Block_release(v15);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {
    v19 = sub_1D725867C();
    v21 = v20;

    if ((v32 & 1) != 0 || ([v16 bounds], v33.width = v22, v33.height = v23, UIGraphicsBeginImageContextWithOptions(v33, 0, 0.0), (v24 = UIGraphicsGetCurrentContext()) == 0))
    {
    }

    else
    {
      v25 = v24;
      v26 = [v16 layer];
      [v26 renderInContext_];

      v27 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
      if (v27)
      {
        v28 = UIImagePNGRepresentation(v27);
        if (v28)
        {
          v29 = v28;
          v30 = sub_1D725867C();
          sub_1D5B952F8(v19, v21);

          v12 = v27;
          v19 = v30;
        }

        else
        {

          v12 = v27;
        }
      }

      else
      {

        v12 = v25;
      }
    }

    return v19;
  }

  return result;
}

void sub_1D678EAE8(uint64_t a1)
{
  v3 = *(type metadata accessor for DebugFormatWorkspaceSnapshotManifest() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1D678D8AC(a1, v1 + v4, v5);
}

uint64_t sub_1D678EB84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D678EC20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_1D678EC88()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  [v1 bounds];
  result = [v1 drawViewHierarchyInRect:1 afterScreenUpdates:?];
  *v2 = result;
  return result;
}

uint64_t sub_1D678ECFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D678ED98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D678EE84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  if (*(a1 + 16) && (v8 = sub_1D5B69D90(a2, a3), (v9 & 1) != 0))
  {
    sub_1D5B68374(*(a1 + 56) + 40 * v8, v15);
    sub_1D5B49474(0, qword_1EDF431A0);
    v10 = a4(0);
    v11 = swift_dynamicCast();
    return (*(*(v10 - 8) + 56))(a5, v11 ^ 1u, 1, v10);
  }

  else
  {
    v13 = a4(0);
    v14 = *(*(v13 - 8) + 56);

    return v14(a5, 1, 1, v13);
  }
}

uint64_t FeedGroupItem.hash(into:)()
{
  sub_1D5D50ED0();
  sub_1D72621EC();
}

uint64_t FeedGroupItem.hashValue.getter()
{
  sub_1D7264A0C();
  sub_1D5D50ED0();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D678F0E0()
{
  sub_1D7264A0C();
  sub_1D5D50ED0();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D678F13C()
{
  sub_1D5D50ED0();
  sub_1D72621EC();
}

uint64_t sub_1D678F18C()
{
  sub_1D7264A0C();
  sub_1D5D50ED0();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D678F1E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FeedGroupItem();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v20 - v11;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a1 + 56);
  v16 = (v13 + 63) >> 6;

  v18 = 0;
  if (v15)
  {
    while (1)
    {
      v19 = v18;
LABEL_8:
      sub_1D5D50814(*(a1 + 48) + *(v5 + 72) * (__clz(__rbit64(v15)) | (v19 << 6)), v12, type metadata accessor for FeedGroupItem);
      sub_1D5D65494(v12, v8, type metadata accessor for FeedGroupItem);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        break;
      }

      v15 &= v15 - 1;
      result = sub_1D5D5113C(v8, type metadata accessor for FeedGroupItem);
      v18 = v19;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    *a2 = *v8;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v16)
      {

        *a2 = 0;
        *(a2 + 8) = 0;
        return result;
      }

      v15 = *(a1 + 56 + 8 * v19);
      ++v18;
      if (v15)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D678F3E8(uint64_t a1)
{
  v2 = type metadata accessor for FeedGroupItem();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v26 - v9;
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a1 + 56);
  v14 = (v11 + 63) >> 6;

  v16 = 0;
  if (v13)
  {
    while (1)
    {
      v17 = v16;
LABEL_8:
      sub_1D5D50814(*(a1 + 48) + *(v3 + 72) * (__clz(__rbit64(v13)) | (v17 << 6)), v10, type metadata accessor for FeedGroupItem);
      sub_1D5D65494(v10, v6, type metadata accessor for FeedGroupItem);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        break;
      }

      v13 &= v13 - 1;
      result = sub_1D5D5113C(v6, type metadata accessor for FeedGroupItem);
      v16 = v17;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    v18 = *(v6 + 13);
    v27 = *(v6 + 12);
    v28 = v18;
    v29 = *(v6 + 14);
    v30 = *(v6 + 30);
    v19 = *(v6 + 9);
    v26[8] = *(v6 + 8);
    v26[9] = v19;
    v20 = *(v6 + 11);
    v26[10] = *(v6 + 10);
    v26[11] = v20;
    v21 = *(v6 + 5);
    v26[4] = *(v6 + 4);
    v26[5] = v21;
    v22 = *(v6 + 7);
    v26[6] = *(v6 + 6);
    v26[7] = v22;
    v23 = *(v6 + 1);
    v26[0] = *v6;
    v26[1] = v23;
    v24 = *(v6 + 3);
    v26[2] = *(v6 + 2);
    v26[3] = v24;
    v25 = *(&v27 + 1);
    if (*(&v27 + 1))
    {

      sub_1D5F2DFAC(v26);
      return v25;
    }

    else
    {
      sub_1D5F2DFAC(v26);

      return MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v14)
      {

        return 0;
      }

      v13 = *(a1 + 56 + 8 * v17);
      ++v16;
      if (v13)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D678F664(uint64_t a1)
{
  v31 = MEMORY[0x1E69E7CD0];
  result = sub_1D5BCB16C(a1);
  v2 = result;
  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  v9 = qword_1EDF431A0;
  v10 = &qword_1EDF208C0;
  if (v7)
  {
    goto LABEL_6;
  }

LABEL_7:
  while (1)
  {
    v11 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      return v31;
    }

    v7 = *(v4 + 8 * v11);
    ++v3;
    if (v7)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        sub_1D5B68374(*(v2 + 56) + 40 * (v12 | (v11 << 6)), v30);
        sub_1D5B63F14(v30, v26);
        sub_1D5B49474(0, v9);
        sub_1D5B49474(0, v10);
        if (swift_dynamicCast())
        {
          sub_1D5B63F14(v24, v27);
          v13 = v9;
          v14 = v2;
          v15 = v10;
          v16 = v28;
          v17 = v29;
          __swift_project_boxed_opaque_existential_1(v27, v28);
          v18 = (*(v17 + 24))(v16, v17);
          sub_1D5B87D50(v18);

          v19 = v28;
          v20 = v29;
          __swift_project_boxed_opaque_existential_1(v27, v28);
          v21 = *(v20 + 32);
          v22 = v20;
          v10 = v15;
          v2 = v14;
          v23 = v21(v19, v22);
          sub_1D5B87D50(v23);
          v9 = v13;

          result = __swift_destroy_boxed_opaque_existential_1(v27);
          v3 = v11;
          if (!v7)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v25 = 0;
          memset(v24, 0, sizeof(v24));
          result = sub_1D5D5113C(v24, sub_1D6792440);
          v3 = v11;
          if (!v7)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v11 = v3;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t FeedGroupItem.debugIdentifier.getter()
{
  v0 = type metadata accessor for FeedRecipe();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v65 = (&v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = type metadata accessor for FeedSponsorshipBannerAd();
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FeedPuzzleStatistic();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B69BE0(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = (&v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for FeedWebEmbed();
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = (&v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for FeedHeadline(0);
  v64 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = (&v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = type metadata accessor for FeedGroupItem();
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D50814(v66, v26, type metadata accessor for FeedGroupItem);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v50 = *(v26 + 7);
      v73 = *(v26 + 6);
      v74[0] = v50;
      *(v74 + 9) = *(v26 + 121);
      v51 = *(v26 + 1);
      v67 = *v26;
      v68 = v51;
      v52 = *(v26 + 3);
      v69 = *(v26 + 2);
      v53 = *(v26 + 4);
      v72 = *(v26 + 5);
      v70 = v52;
      v71 = v53;
      v54 = [v67 identifier];
      v34 = sub_1D726207C();

      sub_1D5ECF320(&v67);
      return v34;
    case 2u:
      sub_1D5D5113C(v26, type metadata accessor for FeedGroupItem);
      return 0x736E6F6974706FLL;
    case 3u:
      sub_1D5D5113C(v26, type metadata accessor for FeedGroupItem);
      return 0x72656874616577;
    case 4u:
      sub_1D5D5113C(v26, type metadata accessor for FeedGroupItem);
      return 0x6C6C6177796170;
    case 5u:
      sub_1D5D65494(v26, v22, type metadata accessor for FeedHeadline);
      v55 = [v22[5] identifier];
      v34 = sub_1D726207C();

      v35 = type metadata accessor for FeedHeadline;
      v36 = v22;
      goto LABEL_21;
    case 6u:
      sub_1D5D65494(v26, v18, type metadata accessor for FeedWebEmbed);
      sub_1D5D50814(v18 + *(v15 + 48), v14, sub_1D5B69BE0);
      if ((*(v64 + 48))(v14, 1, v19) == 1)
      {
        sub_1D5D5113C(v14, sub_1D5B69BE0);
        v34 = sub_1D72583DC();
      }

      else
      {
        v61 = [v14[5] identifier];
        v34 = sub_1D726207C();

        sub_1D5D5113C(v14, type metadata accessor for FeedHeadline);
      }

      v57 = type metadata accessor for FeedWebEmbed;
      goto LABEL_20;
    case 7u:
      v43 = *v26;
      v44 = [*v26 backingTag];
      v45 = [v44 identifier];
      v46 = sub_1D726207C();
      v48 = v47;

      v72 = xmmword_1D7279980;
      v73 = 0u;
      memset(v74, 0, sizeof(v74));
      LOBYTE(v75) = 0;
      *&v67 = v46;
      *(&v67 + 1) = v48;
      *&v68 = v44;
      BYTE8(v68) = 0;
      *&v70 = 0;
      *(&v70 + 1) = 0xE000000000000000;
      *&v69 = 0;
      BYTE8(v69) = 0;
      *&v71 = 0;
      *(&v71 + 1) = MEMORY[0x1E69E7CD0];
      v49 = [v44 identifier];
      v34 = sub_1D726207C();

      goto LABEL_10;
    case 8u:
      v60 = [*(v26 + 2) identifier];
      v34 = sub_1D726207C();
      swift_unknownObjectRelease();

      return v34;
    case 9u:
      v37 = *(v26 + 11);
      v76 = *(v26 + 10);
      v77 = v37;
      v78 = *(v26 + 12);
      v38 = *(v26 + 7);
      v73 = *(v26 + 6);
      v74[0] = v38;
      v39 = *(v26 + 9);
      v74[1] = *(v26 + 8);
      v75 = v39;
      v40 = *(v26 + 3);
      v69 = *(v26 + 2);
      v41 = *(v26 + 4);
      v72 = *(v26 + 5);
      v70 = v40;
      v71 = v41;
      v42 = *v26;
      v68 = *(v26 + 1);
      v67 = v42;
      v34 = *(&v69 + 1);

      sub_1D5F2DF58(&v67);
      return v34;
    case 0xAu:
      v58 = *(v26 + 3);
      v59 = *(v26 + 4);
      v34 = *(v26 + 5);

      sub_1D5BF6680(v58, v59);
      swift_unknownObjectRelease();

      return v34;
    case 0xBu:
      sub_1D5D65494(v26, v10, type metadata accessor for FeedPuzzleStatistic);
      v34 = *(v10 + 5);

      v35 = type metadata accessor for FeedPuzzleStatistic;
      v36 = v10;
      goto LABEL_21;
    case 0xCu:
      sub_1D5D65494(v26, v6, type metadata accessor for FeedSponsorshipBannerAd);
      v34 = sub_1D726088C();
      v35 = type metadata accessor for FeedSponsorshipBannerAd;
      v36 = v6;
      goto LABEL_21;
    case 0xDu:
      v18 = v65;
      sub_1D5D65494(v26, v65, type metadata accessor for FeedRecipe);
      v56 = [v18[7] identifier];
      v34 = sub_1D726207C();

      v57 = type metadata accessor for FeedRecipe;
LABEL_20:
      v35 = v57;
      v36 = v18;
LABEL_21:
      sub_1D5D5113C(v36, v35);
      break;
    default:
      v27 = *v26;
      v28 = *(v26 + 1);
      v29 = [swift_unknownObjectRetain() identifier];
      v30 = sub_1D726207C();
      v32 = v31;

      v72 = xmmword_1D7279980;
      v73 = 0u;
      memset(v74, 0, sizeof(v74));
      LOBYTE(v75) = 0;
      *&v67 = v30;
      *(&v67 + 1) = v32;
      *&v68 = v27;
      BYTE8(v68) = 0;
      *&v70 = 0;
      *(&v70 + 1) = 0xE000000000000000;
      *&v69 = 0;
      BYTE8(v69) = 0;
      *&v71 = 0;
      *(&v71 + 1) = MEMORY[0x1E69E7CD0];
      v33 = [v27 identifier];
      v34 = sub_1D726207C();
      swift_unknownObjectRelease();

LABEL_10:
      sub_1D5EE5B54(&v67);
      break;
  }

  return v34;
}

uint64_t FeedGroupItem.debugSourceName.getter()
{
  v1 = v0;
  v2 = type metadata accessor for FeedRecipe();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = (&v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B69BE0(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = (&v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for FeedWebEmbed();
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FeedHeadline(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = (&v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for FeedGroupItem();
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D50814(v1, v22, type metadata accessor for FeedGroupItem);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v31 = *(v22 + 7);
      v57 = *(v22 + 6);
      v58[0] = v31;
      *(v58 + 9) = *(v22 + 121);
      v32 = *(v22 + 1);
      v51 = *v22;
      v52 = v32;
      v33 = *(v22 + 3);
      v53 = *(v22 + 2);
      v54 = v33;
      v34 = *(v22 + 5);
      v55 = *(v22 + 4);
      v35 = [objc_msgSend(v51 sourceChannel];
      swift_unknownObjectRelease();
      v36 = sub_1D726207C();

      sub_1D5ECF320(&v51);
      return v36;
    case 2u:
    case 3u:
    case 4u:
    case 9u:
    case 0xBu:
    case 0xCu:
      v23 = type metadata accessor for FeedGroupItem;
      v24 = v22;
      goto LABEL_3;
    case 5u:
      sub_1D5D65494(v22, v18, type metadata accessor for FeedHeadline);
      v45 = [v18[5] sourceChannel];
      if (v45)
      {
        v46 = [v45 name];
        swift_unknownObjectRelease();
        v47 = sub_1D726207C();
      }

      else
      {
        v47 = 0;
      }

      sub_1D5D5113C(v18, type metadata accessor for FeedHeadline);
      return v47;
    case 6u:
      sub_1D5D65494(v22, v13, type metadata accessor for FeedWebEmbed);
      sub_1D5D50814(&v13[*(v10 + 48)], v9, sub_1D5B69BE0);
      if ((*(v15 + 48))(v9, 1, v14) == 1)
      {
        sub_1D5D5113C(v13, type metadata accessor for FeedWebEmbed);
        v23 = sub_1D5B69BE0;
        v24 = v9;
LABEL_3:
        sub_1D5D5113C(v24, v23);
        return 0;
      }

      else
      {
        v48 = [v9[5] sourceChannel];
        if (v48)
        {
          v49 = [v48 name];
          swift_unknownObjectRelease();
          v50 = sub_1D726207C();
        }

        else
        {
          v50 = 0;
        }

        sub_1D5D5113C(v13, type metadata accessor for FeedWebEmbed);
        sub_1D5D5113C(v9, type metadata accessor for FeedHeadline);
        return v50;
      }

    case 7u:
      v39 = *v22;
      v40 = [*v22 backingTag];
      v41 = [v40 identifier];
      v42 = sub_1D726207C();
      v44 = v43;

      v56 = xmmword_1D7279980;
      v57 = 0u;
      memset(v58, 0, sizeof(v58));
      v59 = 0;

      *&v51 = v42;
      *(&v51 + 1) = v44;
      *&v52 = v40;
      goto LABEL_13;
    case 8u:
      goto LABEL_5;
    case 0xAu:
      sub_1D5BF6680(*(v22 + 3), *(v22 + 4));
LABEL_5:
      swift_unknownObjectRelease();

      return 0;
    case 0xDu:
      sub_1D5D65494(v22, v5, type metadata accessor for FeedRecipe);
      v37 = [objc_msgSend(v5[7] sourceChannel)];
      swift_unknownObjectRelease();
      v36 = sub_1D726207C();

      sub_1D5D5113C(v5, type metadata accessor for FeedRecipe);
      return v36;
    default:
      v25 = *v22;
      v26 = *(v22 + 1);
      v27 = [swift_unknownObjectRetain() identifier];
      v28 = sub_1D726207C();
      v30 = v29;

      v56 = xmmword_1D7279980;
      v57 = 0u;
      memset(v58, 0, sizeof(v58));
      v59 = 0;
      swift_unknownObjectRelease();

      *&v51 = v28;
      *(&v51 + 1) = v30;
      *&v52 = v25;
LABEL_13:
      BYTE8(v52) = 0;
      *&v54 = 0;
      *(&v54 + 1) = 0xE000000000000000;
      *&v53 = 0;
      BYTE8(v53) = 0;
      *&v55 = 0;
      *(&v55 + 1) = MEMORY[0x1E69E7CD0];
      sub_1D5EE5B54(&v51);
      return 0;
  }
}

uint64_t FeedGroupItem.debugTitle.getter()
{
  v1 = type metadata accessor for FeedRecipe();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = (&v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for FeedWebEmbed();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = (&v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for FeedGroupItem();
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D50814(v0, v16, type metadata accessor for FeedGroupItem);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v44 = *(v16 + 7);
      v63 = *(v16 + 6);
      *v64 = v44;
      *&v64[9] = *(v16 + 121);
      v45 = *(v16 + 1);
      v57 = *v16;
      v46 = *(v16 + 2);
      v47 = *(v16 + 3);
      v58 = v45;
      v59 = v46;
      v48 = *(v16 + 4);
      v62 = *(v16 + 5);
      v49 = [v57 coverDate];
      v17 = sub_1D726207C();

      sub_1D5ECF320(&v57);
      return v17;
    case 2u:
    case 3u:
    case 4u:
    case 0xBu:
    case 0xCu:
      sub_1D5D5113C(v16, type metadata accessor for FeedGroupItem);
      return 0;
    case 5u:
      sub_1D5D65494(v16, v12, type metadata accessor for FeedHeadline);
      v50 = [v12[5] title];
      if (v50)
      {
        v51 = v50;
        v17 = sub_1D726207C();
      }

      else
      {
        v17 = 0;
      }

      v53 = type metadata accessor for FeedHeadline;
      v54 = v12;
      goto LABEL_22;
    case 6u:
      sub_1D5D65494(v16, v8, type metadata accessor for FeedWebEmbed);
      v17 = FeedWebEmbed.debugTitle.getter();
      v53 = type metadata accessor for FeedWebEmbed;
      v54 = v8;
      goto LABEL_22;
    case 7u:
      v30 = *v16;
      v31 = [*v16 backingTag];
      v32 = [v31 identifier];
      v33 = sub_1D726207C();
      v35 = v34;

      LOBYTE(v65) = 0;
      BYTE8(v58) = 0;
      BYTE8(v59) = 0;
      v36 = [v31 name];
      v17 = sub_1D726207C();

      goto LABEL_10;
    case 8u:
      v55 = [*(v16 + 2) name];
      v17 = sub_1D726207C();
      swift_unknownObjectRelease();

      return v17;
    case 9u:
      v18 = *(v16 + 11);
      v66 = *(v16 + 10);
      v67 = v18;
      v68 = *(v16 + 12);
      v19 = *(v16 + 7);
      v63 = *(v16 + 6);
      *v64 = v19;
      v20 = *(v16 + 9);
      *&v64[16] = *(v16 + 8);
      v65 = v20;
      v21 = *(v16 + 3);
      v59 = *(v16 + 2);
      v60 = v21;
      v22 = *(v16 + 5);
      v61 = *(v16 + 4);
      v62 = v22;
      v23 = *v16;
      v58 = *(v16 + 1);
      v24 = [*(&v60 + 1) title];
      if (v24)
      {
        v25 = v24;
        v17 = sub_1D726207C();
      }

      else
      {
        v17 = 0;
      }

      sub_1D5F2DF58(&v57);
      return v17;
    case 0xAu:
      v26 = *(v16 + 3);
      v27 = *(v16 + 4);
      v28 = [*(v16 + 7) name];
      if (v28)
      {
        v29 = v28;
        v17 = sub_1D726207C();

        sub_1D5BF6680(v26, v27);
        swift_unknownObjectRelease();
      }

      else
      {
        sub_1D5BF6680(v26, v27);
        swift_unknownObjectRelease();

        return 0;
      }

      return v17;
    case 0xDu:
      sub_1D5D65494(v16, v4, type metadata accessor for FeedRecipe);
      v52 = [v4[7] title];
      v17 = sub_1D726207C();

      v53 = type metadata accessor for FeedRecipe;
      v54 = v4;
LABEL_22:
      sub_1D5D5113C(v54, v53);
      break;
    default:
      v37 = *v16;
      v38 = *(v16 + 1);
      v39 = [swift_unknownObjectRetain() identifier];
      v40 = sub_1D726207C();
      v42 = v41;

      LOBYTE(v65) = 0;
      BYTE8(v58) = 0;
      BYTE8(v59) = 0;
      v43 = [v37 name];
      v17 = sub_1D726207C();
      swift_unknownObjectRelease();

LABEL_10:
      sub_1D5EE5B54(&v57);
      break;
  }

  return v17;
}

id FeedGroupItem.debugAssetHandle.getter()
{
  v1 = v0;
  v2 = type metadata accessor for FeedRecipe();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = (&v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B69BE0(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = (&v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for FeedWebEmbed();
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FeedHeadline(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = (&v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for FeedGroupItem();
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = (&v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5D50814(v1, v22, type metadata accessor for FeedGroupItem);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v48 = *(v22 + 7);
      v64 = *(v22 + 6);
      v65[0] = v48;
      *(v65 + 9) = *(v22 + 121);
      v49 = *(v22 + 1);
      v58 = *v22;
      v59 = v49;
      v50 = *(v22 + 3);
      v60 = *(v22 + 2);
      v51 = [v58 coverImageAssetHandle];
      sub_1D5ECF320(&v58);
      return v51;
    case 2u:
    case 3u:
    case 4u:
    case 0xBu:
    case 0xCu:
      v23 = type metadata accessor for FeedGroupItem;
      v24 = v22;
      goto LABEL_3;
    case 5u:
      sub_1D5D65494(v22, v18, type metadata accessor for FeedHeadline);
      v52 = [v18[5] thumbnail];
      v53 = [v52 thumbnailAssetHandle];

      sub_1D5D5113C(v18, type metadata accessor for FeedHeadline);
      return v53;
    case 6u:
      sub_1D5D65494(v22, v13, type metadata accessor for FeedWebEmbed);
      sub_1D5D50814(&v13[*(v10 + 48)], v9, sub_1D5B69BE0);
      if ((*(v15 + 48))(v9, 1, v14) == 1)
      {
        sub_1D5D5113C(v13, type metadata accessor for FeedWebEmbed);
        v23 = sub_1D5B69BE0;
        v24 = v9;
LABEL_3:
        sub_1D5D5113C(v24, v23);
        return 0;
      }

      else
      {
        v56 = [v9[5] thumbnail];
        v57 = [v56 thumbnailAssetHandle];

        sub_1D5D5113C(v13, type metadata accessor for FeedWebEmbed);
        sub_1D5D5113C(v9, type metadata accessor for FeedHeadline);
        return v57;
      }

    case 7u:
      v35 = *v22;
      v36 = [*v22 backingTag];
      v37 = [v36 identifier];
      v38 = sub_1D726207C();
      v40 = v39;

      v63 = xmmword_1D7279980;
      v64 = 0u;
      memset(v65, 0, sizeof(v65));
      LOBYTE(v66) = 0;
      *&v58 = v38;
      *(&v58 + 1) = v40;
      *&v59 = v36;
      BYTE8(v59) = 0;
      *&v61 = 0;
      *(&v61 + 1) = 0xE000000000000000;
      *&v60 = 0;
      BYTE8(v60) = 0;
      *&v62 = 0;
      *(&v62 + 1) = MEMORY[0x1E69E7CD0];
      v41 = FeedTag.debugAssetHandle.getter();

      goto LABEL_8;
    case 8u:
      swift_unknownObjectRelease();

      return 0;
    case 9u:
      v26 = *(v22 + 11);
      v67 = *(v22 + 10);
      v68 = v26;
      v69 = *(v22 + 12);
      v27 = *(v22 + 7);
      v64 = *(v22 + 6);
      v65[0] = v27;
      v28 = *(v22 + 9);
      v65[1] = *(v22 + 8);
      v66 = v28;
      v29 = *(v22 + 3);
      v60 = *(v22 + 2);
      v30 = *(v22 + 4);
      v63 = *(v22 + 5);
      v61 = v29;
      v62 = v30;
      v31 = [*(&v29 + 1) thumbnailSmallImageAssetHandle];
      sub_1D5F2DF58(&v58);
      return v31;
    case 0xAu:
      v32 = v22[3];
      v33 = v22[4];
      v34 = [v22[7] coverImageAssetHandle];
      sub_1D5BF6680(v32, v33);
      swift_unknownObjectRelease();

      return v34;
    case 0xDu:
      sub_1D5D65494(v22, v5, type metadata accessor for FeedRecipe);
      v54 = [v5[7] thumbnailMedium];
      v55 = [v54 thumbnailAssetHandle];

      sub_1D5D5113C(v5, type metadata accessor for FeedRecipe);
      return v55;
    default:
      v42 = *v22;
      v43 = v22[1];
      v44 = [swift_unknownObjectRetain() identifier];
      v45 = sub_1D726207C();
      v47 = v46;

      v63 = xmmword_1D7279980;
      v64 = 0u;
      memset(v65, 0, sizeof(v65));
      LOBYTE(v66) = 0;
      *&v58 = v45;
      *(&v58 + 1) = v47;
      *&v59 = v42;
      BYTE8(v59) = 0;
      *&v61 = 0;
      *(&v61 + 1) = 0xE000000000000000;
      *&v60 = 0;
      BYTE8(v60) = 0;
      *&v62 = 0;
      *(&v62 + 1) = MEMORY[0x1E69E7CD0];
      v41 = FeedTag.debugAssetHandle.getter();
      swift_unknownObjectRelease();

LABEL_8:
      sub_1D5EE5B54(&v58);
      return v41;
  }
}

uint64_t FeedGroupItem.debugKind.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FeedRecipe();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FeedPuzzleStatistic();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FeedWebEmbed();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for FeedGroupItem();
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D50814(v2, v23, type metadata accessor for FeedGroupItem);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v38 = *(v23 + 121);
      v39 = *(v23 + 7);
      v62 = *(v23 + 6);
      v63[0] = v39;
      *(v63 + 9) = v38;
      v40 = *(v23 + 3);
      v58 = *(v23 + 2);
      v59 = v40;
      v41 = *(v23 + 5);
      v60 = *(v23 + 4);
      v61 = v41;
      v42 = *v23;
      v57 = *(v23 + 1);
      v56 = v42;
      v28 = *(&v63[0] + 1);
      v29 = *&v63[1];
      sub_1D5BF2DDC(*(&v63[0] + 1), *&v63[1]);
      result = sub_1D5ECF320(&v56);
      goto LABEL_15;
    case 2u:
    case 4u:
      result = sub_1D5D5113C(v23, type metadata accessor for FeedGroupItem);
      v25 = xmmword_1D72E9600;
      goto LABEL_18;
    case 3u:
    case 0xCu:
      *a1 = xmmword_1D72E9600;
      return sub_1D5D5113C(v23, type metadata accessor for FeedGroupItem);
    case 5u:
      sub_1D5D65494(v23, v19, type metadata accessor for FeedHeadline);
      v44 = &v19[*(v16 + 48)];
      v28 = *v44;
      v29 = v44[1];
      sub_1D5BF2DDC(*v44, v29);
      v30 = type metadata accessor for FeedHeadline;
      v31 = v19;
      goto LABEL_13;
    case 6u:
      sub_1D5D65494(v23, v15, type metadata accessor for FeedWebEmbed);
      v28 = *(v15 + 3);
      v29 = *(v15 + 4);
      sub_1D5BF2DDC(v28, v29);
      v30 = type metadata accessor for FeedWebEmbed;
      v31 = v15;
      goto LABEL_13;
    case 7u:
      v51 = *v23;
      v32 = [v51 backingTag];
      v52 = [v32 identifier];
      v53 = sub_1D726207C();
      v55 = v54;

      v61 = xmmword_1D7279980;
      v62 = 0u;
      memset(v63, 0, sizeof(v63));
      LOBYTE(v64) = 0;

      *&v56 = v53;
      *(&v56 + 1) = v55;
      goto LABEL_17;
    case 8u:
      swift_unknownObjectRelease();

      v25 = xmmword_1D72E0D50;
      goto LABEL_18;
    case 9u:
      v45 = *(v23 + 11);
      v65 = *(v23 + 10);
      v66 = v45;
      v67 = *(v23 + 12);
      v46 = *(v23 + 7);
      v62 = *(v23 + 6);
      v63[0] = v46;
      v47 = *(v23 + 9);
      v63[1] = *(v23 + 8);
      v64 = v47;
      v48 = *(v23 + 3);
      v58 = *(v23 + 2);
      v59 = v48;
      v49 = *(v23 + 5);
      v60 = *(v23 + 4);
      v61 = v49;
      v50 = *v23;
      v57 = *(v23 + 1);
      v56 = v50;
      v28 = *(&v57 + 1);
      v29 = v58;
      sub_1D5BF2DDC(*(&v57 + 1), v58);
      result = sub_1D5F2DF58(&v56);
      goto LABEL_15;
    case 0xAu:
      v26 = *(v23 + 3);
      v27 = *(v23 + 4);
      sub_1D5BF2DDC(v26, v27);
      sub_1D5BF6680(v26, v27);
      swift_unknownObjectRelease();

      *a1 = v26;
      goto LABEL_11;
    case 0xBu:
      sub_1D5D65494(v23, v11, type metadata accessor for FeedPuzzleStatistic);
      v28 = *(v11 + 3);
      v29 = *(v11 + 4);
      sub_1D5BF2DDC(v28, v29);
      v30 = type metadata accessor for FeedPuzzleStatistic;
      v31 = v11;
LABEL_13:
      result = sub_1D5D5113C(v31, v30);
LABEL_15:
      *a1 = v28;
      *(a1 + 8) = v29;
      break;
    case 0xDu:
      sub_1D5D65494(v23, v7, type metadata accessor for FeedRecipe);
      v43 = *(v7 + 4);
      v27 = *(v7 + 5);
      sub_1D5BF2DDC(v43, v27);
      result = sub_1D5D5113C(v7, type metadata accessor for FeedRecipe);
      *a1 = v43;
LABEL_11:
      *(a1 + 8) = v27;
      break;
    default:
      v32 = *v23;
      v33 = *(v23 + 1);
      v34 = [swift_unknownObjectRetain() identifier];
      v35 = sub_1D726207C();
      v37 = v36;

      v61 = xmmword_1D7279980;
      v62 = 0u;
      memset(v63, 0, sizeof(v63));
      LOBYTE(v64) = 0;
      swift_unknownObjectRelease();

      *&v56 = v35;
      *(&v56 + 1) = v37;
LABEL_17:
      *&v57 = v32;
      BYTE8(v57) = 0;
      *&v59 = 0;
      *(&v59 + 1) = 0xE000000000000000;
      *&v58 = 0;
      BYTE8(v58) = 0;
      *&v60 = 0;
      *(&v60 + 1) = MEMORY[0x1E69E7CD0];
      result = sub_1D5EE5B54(&v56);
      v25 = xmmword_1D727F020;
LABEL_18:
      *a1 = v25;
      break;
  }

  return result;
}

id FeedGroupItem.debugScoreProfile.getter()
{
  v1 = v0;
  v2 = type metadata accessor for FeedRecipe();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = (&v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B69BE0(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = (&v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for FeedWebEmbed();
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FeedHeadline(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = (&v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for FeedGroupItem();
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D50814(v1, v22, type metadata accessor for FeedGroupItem);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v32 = *(v22 + 7);
      v52 = *(v22 + 6);
      v53[0] = v32;
      *(v53 + 9) = *(v22 + 121);
      v33 = *(v22 + 3);
      v48 = *(v22 + 2);
      v49 = v33;
      v34 = *(v22 + 5);
      v50 = *(v22 + 4);
      v51 = v34;
      v35 = *(v22 + 1);
      v46 = *v22;
      v47 = v35;
      v36 = *(&v49 + 1);
      sub_1D5ECF320(&v46);
      goto LABEL_15;
    case 2u:
    case 3u:
    case 4u:
    case 9u:
    case 0xBu:
    case 0xCu:
      v23 = type metadata accessor for FeedGroupItem;
      v24 = v22;
      goto LABEL_3;
    case 5u:
      sub_1D5D65494(v22, v18, type metadata accessor for FeedHeadline);
      v36 = [v18[5] scoreProfile];
      v37 = type metadata accessor for FeedHeadline;
      v38 = v18;
      goto LABEL_14;
    case 6u:
      sub_1D5D65494(v22, v13, type metadata accessor for FeedWebEmbed);
      sub_1D5D50814(&v13[*(v10 + 48)], v9, sub_1D5B69BE0);
      if ((*(v15 + 48))(v9, 1, v14) == 1)
      {
        sub_1D5D5113C(v13, type metadata accessor for FeedWebEmbed);
        v23 = sub_1D5B69BE0;
        v24 = v9;
LABEL_3:
        sub_1D5D5113C(v24, v23);
        result = 0;
      }

      else
      {
        v45 = [v9[5] scoreProfile];
        sub_1D5D5113C(v13, type metadata accessor for FeedWebEmbed);
        sub_1D5D5113C(v9, type metadata accessor for FeedHeadline);
        result = v45;
      }

      break;
    case 7u:
      v39 = *v22;
      v40 = [*v22 backingTag];
      v41 = [v40 identifier];
      v42 = sub_1D726207C();
      v44 = v43;

      v51 = xmmword_1D7279980;
      v52 = 0u;
      memset(v53, 0, sizeof(v53));
      v54 = 0;

      *&v46 = v42;
      *(&v46 + 1) = v44;
      *&v47 = v40;
      goto LABEL_12;
    case 8u:
      goto LABEL_5;
    case 0xAu:
      sub_1D5BF6680(*(v22 + 3), *(v22 + 4));
LABEL_5:
      swift_unknownObjectRelease();

      result = 0;
      break;
    case 0xDu:
      sub_1D5D65494(v22, v5, type metadata accessor for FeedRecipe);
      v36 = [v5[7] scoreProfile];
      v37 = type metadata accessor for FeedRecipe;
      v38 = v5;
LABEL_14:
      sub_1D5D5113C(v38, v37);
LABEL_15:
      result = v36;
      break;
    default:
      v26 = *v22;
      v27 = *(v22 + 1);
      v28 = [swift_unknownObjectRetain() identifier];
      v29 = sub_1D726207C();
      v31 = v30;

      v51 = xmmword_1D7279980;
      v52 = 0u;
      memset(v53, 0, sizeof(v53));
      v54 = 0;
      swift_unknownObjectRelease();

      *&v46 = v29;
      *(&v46 + 1) = v31;
      *&v47 = v26;
LABEL_12:
      BYTE8(v47) = 0;
      *&v49 = 0;
      *(&v49 + 1) = 0xE000000000000000;
      *&v48 = 0;
      BYTE8(v48) = 0;
      *&v50 = 0;
      *(&v50 + 1) = MEMORY[0x1E69E7CD0];
      sub_1D5EE5B54(&v46);
      result = 0;
      break;
  }

  return result;
}

uint64_t _s8NewsFeed0B9GroupItemO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1D67924A8();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &v7[*(v8 + 56)];
  sub_1D5D50814(a1, v7, type metadata accessor for FeedGroupItem);
  sub_1D5D50814(a2, v9, type metadata accessor for FeedGroupItem);
  type metadata accessor for FeedGroupItem();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1D5D5113C(v7, type metadata accessor for FeedGroupItem);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        goto LABEL_30;
      }

      goto LABEL_10;
    case 2u:
      sub_1D5D5113C(v7, type metadata accessor for FeedGroupItem);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_10;
      }

      goto LABEL_30;
    case 3u:
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_9;
      }

      goto LABEL_5;
    case 4u:
      sub_1D5D5113C(v7, type metadata accessor for FeedGroupItem);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_10;
      }

      goto LABEL_30;
    case 5u:
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_9;
      }

      goto LABEL_5;
    case 6u:
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_9;
      }

      goto LABEL_5;
    case 7u:
      sub_1D5D5113C(v7, type metadata accessor for FeedGroupItem);
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_10;
      }

      goto LABEL_30;
    case 8u:
      sub_1D5D5113C(v7, type metadata accessor for FeedGroupItem);
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        goto LABEL_30;
      }

      goto LABEL_10;
    case 9u:
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_9;
      }

      goto LABEL_5;
    case 0xAu:
      sub_1D5D5113C(v7, type metadata accessor for FeedGroupItem);
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_10;
      }

      goto LABEL_30;
    case 0xBu:
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_9;
      }

      goto LABEL_5;
    case 0xDu:
      if (swift_getEnumCaseMultiPayload() == 13)
      {
LABEL_5:
        sub_1D5D5113C(v9, type metadata accessor for FeedGroupItem);
        v10 = 1;
        v9 = v7;
      }

      else
      {
LABEL_9:
        sub_1D5D5113C(v7, type metadata accessor for FeedGroupItem);
LABEL_10:
        v10 = 0;
      }

      break;
    default:
      sub_1D5D5113C(v7, type metadata accessor for FeedGroupItem);
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_10;
      }

LABEL_30:
      v10 = 1;
      break;
  }

  sub_1D5D5113C(v9, type metadata accessor for FeedGroupItem);
  return v10;
}

void sub_1D6792440()
{
  if (!qword_1EDF208B8)
  {
    sub_1D5B49474(255, &qword_1EDF208C0);
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF208B8);
    }
  }
}

void sub_1D67924A8()
{
  if (!qword_1EDF34960)
  {
    type metadata accessor for FeedGroupItem();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF34960);
    }
  }
}

uint64_t sub_1D679250C()
{
  v1 = type metadata accessor for SportsDataVisualizationResponseScoreItem();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = (v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for SportsDataVisualizationResponseItem();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = (v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D6794728(v0, v8, type metadata accessor for SportsDataVisualizationResponseItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v10 = *v8;
        v11 = v8[1];
        v18[0] = 0;
        v18[1] = 0xE000000000000000;
        sub_1D7263D4C();

        strcpy(v18, "injuryReport::");
        HIBYTE(v18[1]) = -18;

LABEL_15:
        MEMORY[0x1DA6F9910](v10, v11);

        swift_bridgeObjectRelease_n();
        goto LABEL_16;
      }

      v10 = *v8;
      v11 = v8[1];
      v12 = 0x6579616C5079656BLL;
      v13 = 0xEB000000003A3A72;
    }

    else
    {
      v10 = *v8;
      v11 = v8[1];
      if (EnumCaseMultiPayload == 3)
      {
        v12 = 0x65726F6353786F62;
        v13 = 0xEA00000000003A3ALL;
      }

      else
      {
        v12 = 0x726F6353656E696CLL;
        v13 = 0xEB000000003A3A65;
      }
    }

    v18[0] = v12;
    v18[1] = v13;

    goto LABEL_15;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1D6794934(v8, v4, type metadata accessor for SportsDataVisualizationResponseScoreItem);
    strcpy(v18, "score::");
    v18[1] = 0xE700000000000000;
    MEMORY[0x1DA6F9910](*v4, v4[1]);
    v16 = v18[0];
    sub_1D6794790(v4, type metadata accessor for SportsDataVisualizationResponseScoreItem);
    return v16;
  }

  v14 = *v8;
  v15 = v8[1];
  if (EnumCaseMultiPayload == 1)
  {
    strcpy(v18, "standing::");
    BYTE3(v18[1]) = 0;
    HIDWORD(v18[1]) = -369098752;

    MEMORY[0x1DA6F9910](v14, v15);

    swift_bridgeObjectRelease_n();
  }

  else
  {
    strcpy(v18, "bracket::");
    WORD1(v18[1]) = 0;
    HIDWORD(v18[1]) = -385875968;

    MEMORY[0x1DA6F9910](v14, v15);

    swift_bridgeObjectRelease_n();
  }

LABEL_16:

  return v18[0];
}

uint64_t sub_1D6792888()
{
  v1 = type metadata accessor for SportsDataVisualizationResponseScoreItem();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for SportsDataVisualizationResponseItem();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D6794728(v0, v8, type metadata accessor for SportsDataVisualizationResponseItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    v10 = *v8;
LABEL_6:

    goto LABEL_7;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1D6794934(v8, v4, type metadata accessor for SportsDataVisualizationResponseScoreItem);
    v10 = *v4;

    sub_1D6794790(v4, type metadata accessor for SportsDataVisualizationResponseScoreItem);
    return v10;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v10 = *v8;

    goto LABEL_6;
  }

  v10 = *v8;

LABEL_7:

  return v10;
}

uint64_t sub_1D6792A50()
{
  v1 = v0;
  v2 = type metadata accessor for SportsDataVisualizationResponseScoreItem();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v33 - v9;
  v11 = type metadata accessor for SportsDataVisualizationResponseItem();
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = (&v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D6794728(v1, v14, type metadata accessor for SportsDataVisualizationResponseItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        v23 = v14[8];

        v24 = *(v23 + 16);
        if (v24)
        {
          v25 = v23 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
          v26 = *(v3 + 72);
          v20 = MEMORY[0x1E69E7CC0];
          do
          {
            sub_1D6794728(v25, v6, type metadata accessor for SportsDataVisualizationResponseScoreItem);
            v29 = *(v6 + 2);
            v28 = *(v6 + 3);

            sub_1D6794790(v6, type metadata accessor for SportsDataVisualizationResponseScoreItem);
            if (v28)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v20 = sub_1D5B858EC(0, *(v20 + 16) + 1, 1, v20);
              }

              v31 = *(v20 + 16);
              v30 = *(v20 + 24);
              if (v31 >= v30 >> 1)
              {
                v20 = sub_1D5B858EC((v30 > 1), v31 + 1, 1, v20);
              }

              *(v20 + 16) = v31 + 1;
              v27 = v20 + 16 * v31;
              *(v27 + 32) = v29;
              *(v27 + 40) = v28;
            }

            v25 += v26;
            --v24;
          }

          while (v24);
          goto LABEL_6;
        }

        return MEMORY[0x1E69E7CC0];
      }

      v16 = type metadata accessor for SportsDataVisualizationResponseItem;
      v17 = v14;
    }

    else
    {
      sub_1D6794934(v14, v10, type metadata accessor for SportsDataVisualizationResponseScoreItem);
      v21 = *(v10 + 3);
      if (v21)
      {
        v22 = *(v10 + 2);
        sub_1D5C3C480();
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_1D7273AE0;
        *(v20 + 32) = v22;
        *(v20 + 40) = v21;

        sub_1D6794790(v10, type metadata accessor for SportsDataVisualizationResponseScoreItem);
        return v20;
      }

      v16 = type metadata accessor for SportsDataVisualizationResponseScoreItem;
      v17 = v10;
    }

    sub_1D6794790(v17, v16);
    return MEMORY[0x1E69E7CC0];
  }

  v18 = v14[2];
  v19 = v14[3];
  sub_1D5C3C480();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1D7273AE0;
  *(v20 + 32) = v18;
  *(v20 + 40) = v19;

LABEL_6:

  return v20;
}

uint64_t sub_1D6792DFC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  sub_1D6794F28(0, &qword_1EDF03888, sub_1D679488C, &type metadata for SportsDataVisualizationResponseItem.CodingKeys, MEMORY[0x1E69E6F48]);
  v66 = v3;
  v60 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v55 - v5;
  v59 = type metadata accessor for SportsDataVisualizationResponseItem();
  MEMORY[0x1EEE9AC00](v59, v7);
  v63 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v62 = &v55 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v61 = &v55 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v58 = (&v55 - v17);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v55 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v55 - v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v55 - v28;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v55 - v32;
  v34 = a1[3];
  v83 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v34);
  sub_1D679488C();
  v64 = v6;
  v35 = v67;
  sub_1D7264B0C();
  if (v35)
  {
    return __swift_destroy_boxed_opaque_existential_1(v83);
  }

  v36 = v29;
  v56 = v25;
  v57 = v21;
  v37 = v61;
  v38 = v62;
  v39 = v63;
  v67 = v33;
  v40 = v65;
  sub_1D67948E0();
  v41 = v64;
  sub_1D726431C();
  if (LOBYTE(v69[0]) <= 2u)
  {
    if (LOBYTE(v69[0]))
    {
      if (LOBYTE(v69[0]) == 1)
      {
        sub_1D5B68374(v83, v68);
        sub_1D683C508(v68, v69);
        (*(v60 + 8))(v41, v66);
        v45 = v69[1];
        v46 = v72;
        v44 = v56;
        *v56 = v69[0];
        v44[1] = v45;
        v47 = v71;
        *(v44 + 1) = v70;
        *(v44 + 2) = v47;
        *(v44 + 48) = v46;
      }

      else
      {
        sub_1D5B68374(v83, v69);
        sub_1D6EBE570(v69, v73);
        (*(v60 + 8))(v41, v66);
        v51 = v74[0];
        v44 = v57;
        *(v57 + 2) = v73[2];
        *(v44 + 3) = v51;
        *(v44 + 57) = *(v74 + 9);
        v52 = v73[1];
        *v44 = v73[0];
        *(v44 + 1) = v52;
      }

      goto LABEL_17;
    }

    sub_1D5B68374(v83, v69);
    v39 = v36;
    sub_1D69BF4FC(v69, v36);
    (*(v60 + 8))(v41, v66);
    goto LABEL_18;
  }

  if (LOBYTE(v69[0]) > 4u)
  {
    if (LOBYTE(v69[0]) == 5)
    {
      sub_1D5B68374(v83, v69);
      sub_1D5F0E06C(v69, v79);
      (*(v60 + 8))(v41, v66);
      v48 = v79[1];
      *v38 = v79[0];
      v38[1] = v48;
      v38[2] = v80[0];
      *(v38 + 41) = *(v80 + 9);
      swift_storeEnumTagMultiPayload();
      v49 = v38;
      goto LABEL_19;
    }

    sub_1D5B68374(v83, v69);
    sub_1D6725B10(v69, v81);
    (*(v60 + 8))(v41, v66);
    v53 = v81[1];
    *v39 = v81[0];
    v39[1] = v53;
    v39[2] = v82[0];
    *(v39 + 41) = *(v82 + 9);
LABEL_18:
    swift_storeEnumTagMultiPayload();
    v49 = v39;
    goto LABEL_19;
  }

  if (LOBYTE(v69[0]) == 3)
  {
    sub_1D5B68374(v83, v69);
    sub_1D7046504(v69, v75);
    (*(v60 + 8))(v41, v66);
    v43 = v75[1];
    v44 = v58;
    *v58 = v75[0];
    *(v44 + 1) = v43;
    *(v44 + 2) = v76[0];
    *(v44 + 41) = *(v76 + 9);
LABEL_17:
    swift_storeEnumTagMultiPayload();
    v49 = v44;
    goto LABEL_19;
  }

  sub_1D5B68374(v83, v69);
  sub_1D70740A8(v69, v77);
  (*(v60 + 8))(v41, v66);
  v50 = v77[1];
  *v37 = v77[0];
  v37[1] = v50;
  v37[2] = v78[0];
  *(v37 + 41) = *(v78 + 9);
  swift_storeEnumTagMultiPayload();
  v49 = v37;
LABEL_19:
  v54 = v67;
  sub_1D6794934(v49, v67, type metadata accessor for SportsDataVisualizationResponseItem);
  sub_1D6794934(v54, v40, type metadata accessor for SportsDataVisualizationResponseItem);
  return __swift_destroy_boxed_opaque_existential_1(v83);
}