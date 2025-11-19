uint64_t sub_1D2319C94()
{
  v2 = *v1;
  *(*v1 + 440) = v0;

  if (v0)
  {
    v3 = *(v2 + 328);
    v4 = *(v2 + 336);
    v5 = sub_1D231AEF8;
  }

  else
  {

    v3 = *(v2 + 328);
    v4 = *(v2 + 336);
    v5 = sub_1D2319DBC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D2319DBC()
{

  v1 = v0[43];
  v3 = v0[34];
  v2 = v0[35];
  v4 = v0[33];
  swift_getKeyPath();
  v0[24] = v1;
  sub_1D28719E8();

  v5 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__pregeneratedImageForLoadedRecipe;
  swift_beginAccess();
  sub_1D22BD1D0(v1 + v5, v4, &unk_1EC6DE5A0);
  if ((*(v2 + 48))(v4, 1, v3) == 1)
  {
    v6 = v0[33];

    sub_1D22BD238(v6, &unk_1EC6DE5A0);
  }

  else
  {
    v7 = v0[43];
    v8 = v0[36];
    v9 = v0[34];
    sub_1D233FFEC(v0[33], v8, type metadata accessor for PlaygroundImage);
    __swift_project_boxed_opaque_existential_1((v7 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_imageGenerationManager), *(v7 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_imageGenerationManager + 24));
    v0[5] = v9;
    v0[6] = &protocol witness table for PlaygroundImage;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
    sub_1D233DEB0(v8, boxed_opaque_existential_1, type metadata accessor for PlaygroundImage);
    sub_1D2673418();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1D0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1D287F500;
    sub_1D22D7044((v0 + 2), v11 + 32);
    sub_1D2398E1C(v11);

    sub_1D22FD9A8(v8, type metadata accessor for PlaygroundImage);
    __swift_destroy_boxed_opaque_existential_0((v0 + 2));
  }

  v12 = v0[46];
  v13 = v0[43];
  if (*(v13 + v12))
  {
    swift_getKeyPath();
    v14 = swift_task_alloc();
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    v0[21] = v13;
    sub_1D28719D8();
  }

  else
  {
    *(v13 + v12) = 0;
    sub_1D23068A8(0);
  }

  v15 = v0[43];
  sub_1D23098E0(&OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___footerViewModel, sub_1D23087E8);
  sub_1D22CA210();
  sub_1D254A228();

  sub_1D22C9C60();
  sub_1D24A3688(1);

  if (*(v15 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__state) == 1)
  {
    sub_1D2324CC4();
  }

  else
  {
    v16 = v0[43];
    swift_getKeyPath();
    v17 = swift_task_alloc();
    *(v17 + 16) = v16;
    *(v17 + 24) = 1;
    v0[20] = v16;
    sub_1D28719D8();
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_1D231A214(char a1)
{
  v2 = *v1;
  *(*v1 + 497) = a1;

  v3 = *(v2 + 336);
  v4 = *(v2 + 328);

  return MEMORY[0x1EEE6DFA0](sub_1D231A360, v4, v3);
}

uint64_t sub_1D231A360()
{
  if (*(v0 + 497))
  {
    v1 = *(v0 + 416);
    v2 = *(v0 + 344);
    v3 = *(v0 + 216);
    swift_getKeyPath();
    *(v0 + 200) = v2;
    sub_1D28719E8();

    v4 = *(v2 + 40);
    v5 = swift_allocObject();
    swift_weakInit();
    v6 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___imageConditioningRepresentationsManager);
    v7 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___creationContextFactory);
    v8 = swift_allocObject();
    *(v0 + 464) = v8;
    *(v8 + 72) = 0u;
    *(v8 + 88) = 0u;
    *(v8 + 104) = 0u;
    *(v8 + 120) = 0;
    *(v8 + 128) = 1;
    *(v8 + 16) = v3;
    *(v8 + 24) = v4;
    *(v8 + 32) = sub_1D2341890;
    *(v8 + 40) = v5;
    *(v8 + 48) = 0;
    *(v8 + 56) = v6;
    *(v8 + 64) = v7;
    v9 = v3;
    sub_1D2870F78();
    sub_1D2870F78();
    sub_1D2340EEC(0);
    *(v0 + 472) = *(v2 + v1);
    sub_1D2870F78();
    sub_1D2870F78();
    v10 = swift_task_alloc();
    *(v0 + 480) = v10;
    *v10 = v0;
    v10[1] = sub_1D231A968;

    return sub_1D27F9C50(v8, &off_1EEC2DB40);
  }

  else
  {

    v12 = *(v0 + 344);
    v13 = *(v0 + 272);
    v14 = *(v0 + 280);
    v15 = *(v0 + 264);
    swift_getKeyPath();
    *(v0 + 192) = v12;
    sub_1D28719E8();

    v16 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__pregeneratedImageForLoadedRecipe;
    swift_beginAccess();
    sub_1D22BD1D0(v12 + v16, v15, &unk_1EC6DE5A0);
    if ((*(v14 + 48))(v15, 1, v13) == 1)
    {
      v17 = *(v0 + 264);

      sub_1D22BD238(v17, &unk_1EC6DE5A0);
    }

    else
    {
      v18 = *(v0 + 344);
      v19 = *(v0 + 288);
      v20 = *(v0 + 272);
      sub_1D233FFEC(*(v0 + 264), v19, type metadata accessor for PlaygroundImage);
      __swift_project_boxed_opaque_existential_1((v18 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_imageGenerationManager), *(v18 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_imageGenerationManager + 24));
      *(v0 + 40) = v20;
      *(v0 + 48) = &protocol witness table for PlaygroundImage;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
      sub_1D233DEB0(v19, boxed_opaque_existential_1, type metadata accessor for PlaygroundImage);
      sub_1D2673418();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1D0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1D287F500;
      sub_1D22D7044(v0 + 16, v22 + 32);
      sub_1D2398E1C(v22);

      sub_1D22FD9A8(v19, type metadata accessor for PlaygroundImage);
      __swift_destroy_boxed_opaque_existential_0(v0 + 16);
    }

    v23 = *(v0 + 368);
    v24 = *(v0 + 344);
    if (*(v24 + v23))
    {
      swift_getKeyPath();
      v25 = swift_task_alloc();
      *(v25 + 16) = v24;
      *(v25 + 24) = 0;
      *(v0 + 168) = v24;
      sub_1D28719D8();
    }

    else
    {
      *(v24 + v23) = 0;
      sub_1D23068A8(0);
    }

    v26 = *(v0 + 344);
    sub_1D23098E0(&OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___footerViewModel, sub_1D23087E8);
    sub_1D22CA210();
    sub_1D254A228();

    sub_1D22C9C60();
    sub_1D24A3688(1);

    if (*(v26 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__state) == 1)
    {
      sub_1D2324CC4();
    }

    else
    {
      v27 = *(v0 + 344);
      swift_getKeyPath();
      v28 = swift_task_alloc();
      *(v28 + 16) = v27;
      *(v28 + 24) = 1;
      *(v0 + 160) = v27;
      sub_1D28719D8();
    }

    v29 = *(v0 + 8);

    return v29();
  }
}

uint64_t sub_1D231A968()
{
  v2 = *v1;
  *(*v1 + 488) = v0;

  if (v0)
  {
    v3 = *(v2 + 328);
    v4 = *(v2 + 336);
    v5 = sub_1D231B55C;
  }

  else
  {

    v3 = *(v2 + 328);
    v4 = *(v2 + 336);
    v5 = sub_1D231AA8C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D231AA8C()
{

  v1 = *(v0 + 344);
  v3 = *(v0 + 272);
  v2 = *(v0 + 280);
  v4 = *(v0 + 264);
  swift_getKeyPath();
  *(v0 + 192) = v1;
  sub_1D28719E8();

  v5 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__pregeneratedImageForLoadedRecipe;
  swift_beginAccess();
  sub_1D22BD1D0(v1 + v5, v4, &unk_1EC6DE5A0);
  if ((*(v2 + 48))(v4, 1, v3) == 1)
  {
    v6 = *(v0 + 264);

    sub_1D22BD238(v6, &unk_1EC6DE5A0);
  }

  else
  {
    v7 = *(v0 + 344);
    v8 = *(v0 + 288);
    v9 = *(v0 + 272);
    sub_1D233FFEC(*(v0 + 264), v8, type metadata accessor for PlaygroundImage);
    __swift_project_boxed_opaque_existential_1((v7 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_imageGenerationManager), *(v7 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_imageGenerationManager + 24));
    *(v0 + 40) = v9;
    *(v0 + 48) = &protocol witness table for PlaygroundImage;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    sub_1D233DEB0(v8, boxed_opaque_existential_1, type metadata accessor for PlaygroundImage);
    sub_1D2673418();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1D0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1D287F500;
    sub_1D22D7044(v0 + 16, v11 + 32);
    sub_1D2398E1C(v11);

    sub_1D22FD9A8(v8, type metadata accessor for PlaygroundImage);
    __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  }

  v12 = *(v0 + 368);
  v13 = *(v0 + 344);
  if (*(v13 + v12))
  {
    swift_getKeyPath();
    v14 = swift_task_alloc();
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v0 + 168) = v13;
    sub_1D28719D8();
  }

  else
  {
    *(v13 + v12) = 0;
    sub_1D23068A8(0);
  }

  v15 = *(v0 + 344);
  sub_1D23098E0(&OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___footerViewModel, sub_1D23087E8);
  sub_1D22CA210();
  sub_1D254A228();

  sub_1D22C9C60();
  sub_1D24A3688(1);

  if (*(v15 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__state) == 1)
  {
    sub_1D2324CC4();
  }

  else
  {
    v16 = *(v0 + 344);
    swift_getKeyPath();
    v17 = swift_task_alloc();
    *(v17 + 16) = v16;
    *(v17 + 24) = 1;
    *(v0 + 160) = v16;
    sub_1D28719D8();
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1D231AEF8()
{
  v1 = *(v0 + 440);

  *(v0 + 184) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 440);
  if (v3)
  {

    v6 = *(v0 + 128);
    v5 = *(v0 + 136);
    *(v0 + 448) = v5;
    v7 = swift_task_alloc();
    *(v0 + 456) = v7;
    *v7 = v0;
    v7[1] = sub_1D231A214;

    return sub_1D231BAEC(v6, v5);
  }

  else
  {

    sub_1D2872658();
    v9 = v4;
    v10 = sub_1D2873CA8();
    v11 = sub_1D2878A18();

    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 440);
    if (v12)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = v13;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_1D226E000, v10, v11, "Could not load GP Recipe with error: %@", v14, 0xCu);
      sub_1D22BD238(v15, qword_1EC6DA930);
      MEMORY[0x1D38A3520](v15, -1, -1);
      MEMORY[0x1D38A3520](v14, -1, -1);
    }

    else
    {
    }

    (*(*(v0 + 232) + 8))(*(v0 + 248), *(v0 + 224));
    v18 = *(v0 + 344);
    v19 = *(v0 + 272);
    v20 = *(v0 + 280);
    v21 = *(v0 + 264);
    swift_getKeyPath();
    *(v0 + 192) = v18;
    sub_1D28719E8();

    v22 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__pregeneratedImageForLoadedRecipe;
    swift_beginAccess();
    sub_1D22BD1D0(v18 + v22, v21, &unk_1EC6DE5A0);
    if ((*(v20 + 48))(v21, 1, v19) == 1)
    {
      v23 = *(v0 + 264);

      sub_1D22BD238(v23, &unk_1EC6DE5A0);
    }

    else
    {
      v24 = *(v0 + 344);
      v25 = *(v0 + 288);
      v26 = *(v0 + 272);
      sub_1D233FFEC(*(v0 + 264), v25, type metadata accessor for PlaygroundImage);
      __swift_project_boxed_opaque_existential_1((v24 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_imageGenerationManager), *(v24 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_imageGenerationManager + 24));
      *(v0 + 40) = v26;
      *(v0 + 48) = &protocol witness table for PlaygroundImage;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
      sub_1D233DEB0(v25, boxed_opaque_existential_1, type metadata accessor for PlaygroundImage);
      sub_1D2673418();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1D0);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1D287F500;
      sub_1D22D7044(v0 + 16, v28 + 32);
      sub_1D2398E1C(v28);

      sub_1D22FD9A8(v25, type metadata accessor for PlaygroundImage);
      __swift_destroy_boxed_opaque_existential_0(v0 + 16);
    }

    v29 = *(v0 + 368);
    v30 = *(v0 + 344);
    if (*(v30 + v29))
    {
      swift_getKeyPath();
      v31 = swift_task_alloc();
      *(v31 + 16) = v30;
      *(v31 + 24) = 0;
      *(v0 + 168) = v30;
      sub_1D28719D8();
    }

    else
    {
      *(v30 + v29) = 0;
      sub_1D23068A8(0);
    }

    v32 = *(v0 + 344);
    sub_1D23098E0(&OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___footerViewModel, sub_1D23087E8);
    sub_1D22CA210();
    sub_1D254A228();

    sub_1D22C9C60();
    sub_1D24A3688(1);

    if (*(v32 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__state) == 1)
    {
      sub_1D2324CC4();
    }

    else
    {
      v33 = *(v0 + 344);
      swift_getKeyPath();
      v34 = swift_task_alloc();
      *(v34 + 16) = v33;
      *(v34 + 24) = 1;
      *(v0 + 160) = v33;
      sub_1D28719D8();
    }

    v35 = *(v0 + 8);

    return v35();
  }
}

uint64_t sub_1D231B55C()
{
  v1 = *(v0 + 488);

  sub_1D2872658();
  v2 = v1;
  v3 = sub_1D2873CA8();
  v4 = sub_1D2878A18();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 488);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1D226E000, v3, v4, "Could not load GP Recipe with error: %@", v7, 0xCu);
    sub_1D22BD238(v8, qword_1EC6DA930);
    MEMORY[0x1D38A3520](v8, -1, -1);
    MEMORY[0x1D38A3520](v7, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));

  v11 = *(v0 + 344);
  v12 = *(v0 + 272);
  v13 = *(v0 + 280);
  v14 = *(v0 + 264);
  swift_getKeyPath();
  *(v0 + 192) = v11;
  sub_1D28719E8();

  v15 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__pregeneratedImageForLoadedRecipe;
  swift_beginAccess();
  sub_1D22BD1D0(v11 + v15, v14, &unk_1EC6DE5A0);
  if ((*(v13 + 48))(v14, 1, v12) == 1)
  {
    v16 = *(v0 + 264);

    sub_1D22BD238(v16, &unk_1EC6DE5A0);
  }

  else
  {
    v17 = *(v0 + 344);
    v18 = *(v0 + 288);
    v19 = *(v0 + 272);
    sub_1D233FFEC(*(v0 + 264), v18, type metadata accessor for PlaygroundImage);
    __swift_project_boxed_opaque_existential_1((v17 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_imageGenerationManager), *(v17 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_imageGenerationManager + 24));
    *(v0 + 40) = v19;
    *(v0 + 48) = &protocol witness table for PlaygroundImage;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    sub_1D233DEB0(v18, boxed_opaque_existential_1, type metadata accessor for PlaygroundImage);
    sub_1D2673418();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1D0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1D287F500;
    sub_1D22D7044(v0 + 16, v21 + 32);
    sub_1D2398E1C(v21);

    sub_1D22FD9A8(v18, type metadata accessor for PlaygroundImage);
    __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  }

  v22 = *(v0 + 368);
  v23 = *(v0 + 344);
  if (*(v23 + v22))
  {
    swift_getKeyPath();
    v24 = swift_task_alloc();
    *(v24 + 16) = v23;
    *(v24 + 24) = 0;
    *(v0 + 168) = v23;
    sub_1D28719D8();
  }

  else
  {
    *(v23 + v22) = 0;
    sub_1D23068A8(0);
  }

  v25 = *(v0 + 344);
  sub_1D23098E0(&OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___footerViewModel, sub_1D23087E8);
  sub_1D22CA210();
  sub_1D254A228();

  sub_1D22C9C60();
  sub_1D24A3688(1);

  if (*(v25 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__state) == 1)
  {
    sub_1D2324CC4();
  }

  else
  {
    v26 = *(v0 + 344);
    swift_getKeyPath();
    v27 = swift_task_alloc();
    *(v27 + 16) = v26;
    *(v27 + 24) = 1;
    *(v0 + 160) = v26;
    sub_1D28719D8();
  }

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1D231BAEC(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v3[9] = sub_1D2878568();
  v3[10] = sub_1D2878558();
  v5 = sub_1D28784F8();
  v3[11] = v5;
  v3[12] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D231BB8C, v5, v4);
}

uint64_t sub_1D231BB8C()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  sub_1D2870F68();
  sub_1D22F97E4(v3, v1);
  v4 = MEMORY[0x1E69E7CA8];
  if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__recipeToLoadContainsPhoto) == 1)
  {
    *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__recipeToLoadContainsPhoto) = 1;
  }

  else
  {
    v5 = v0[8];
    swift_getKeyPath();
    v6 = swift_task_alloc();
    *(v6 + 16) = v5;
    *(v6 + 24) = 1;
    v0[2] = v5;
    sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719D8();
  }

  v7 = v0[8];
  if (*(v7 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shouldShowExternalSharingAlert) == 1)
  {
    *(v7 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shouldShowExternalSharingAlert) = 1;
    sub_1D232E924(1);
  }

  else
  {
    swift_getKeyPath();
    v8 = swift_task_alloc();
    *(v8 + 16) = v7;
    *(v8 + 24) = 1;
    v0[3] = v7;
    sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719D8();
  }

  v0[13] = 0;
  v9 = sub_1D2878558();
  v0[14] = v9;
  v10 = swift_task_alloc();
  v0[15] = v10;
  *v10 = v0;
  v10[1] = sub_1D231BE4C;
  v11 = v0[8];
  v12 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DDE0](v10, v9, v12, 0xD00000000000003ELL, 0x80000001D28B0C30, sub_1D233FD78, v11, v4 + 8);
}

uint64_t sub_1D231BE4C()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1D231BF90, v3, v2);
}

uint64_t sub_1D231BF90()
{
  v1 = v0[8];

  swift_getKeyPath();
  v0[4] = v1;
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v2 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__confirmShareFromAlert);
  if (v2)
  {
    v3 = v0[8];
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v3;
    *(v4 + 24) = 0;
    v0[5] = v3;
    sub_1D28719D8();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__confirmShareFromAlert) = 0;
  }

  v5 = v0[1];

  return v5(v2);
}

uint64_t sub_1D231C140(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for PlaygroundImage();
  v5 = (v4 - 8);
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v25 - v10;
  v12 = (v25 + v5[11] - v10);
  *v12 = 0u;
  v12[1] = 0u;
  *(v25 + v5[12] - v10) = xmmword_1D28809A0;
  v13 = v5[13];
  v14 = sub_1D2873AA8();
  (*(*(v14 - 8) + 56))(&v11[v13], 1, 1, v14);
  *v11 = a1;
  v11[8] = 2;
  [a1 imageOrientation];
  *(v11 + 6) = sub_1D2878C88();
  *(v11 + 2) = 0;
  *(v11 + 4) = 0;
  *(v11 + 5) = 0;
  v11[v5[14]] = 0;
  sub_1D2871808();
  v15 = sub_1D28717B8();
  v17 = v16;
  sub_1D233DEB0(v11, v8, type metadata accessor for PlaygroundImage);
  sub_1D2878568();
  sub_1D2870F78();
  v18 = sub_1D2878558();
  v19 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v20 = swift_allocObject();
  v21 = MEMORY[0x1E69E85E0];
  v20[2] = v18;
  v20[3] = v21;
  v20[4] = v2;
  sub_1D233FFEC(v8, v20 + v19, type metadata accessor for PlaygroundImage);
  swift_getKeyPath();
  v26 = v2;
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__importingImageTask))
  {
    KeyPath = swift_getKeyPath();
    v25[1] = v25;
    MEMORY[0x1EEE9AC00](KeyPath);
    v25[-6] = v2;
    v25[-5] = v23;
    v25[-4] = v17;
    v25[-3] = &unk_1D2881D58;
    v25[-2] = v20;
    v26 = v2;
    sub_1D2870F78();
    sub_1D2870F68();
    sub_1D2870F78();
    sub_1D28719D8();

    sub_1D28786B8();
  }

  else
  {
    sub_1D230EA90(v15, v17, &unk_1D2881D58, v20);
  }

  return sub_1D22FD9A8(v11, type metadata accessor for PlaygroundImage);
}

uint64_t sub_1D231C53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v4[3] = a4;
  v4[4] = sub_1D2878568();
  v4[5] = sub_1D2878558();
  v4[6] = sub_1D2878558();
  v6 = sub_1D28784F8();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D231C5E4, v6, v5);
}

uint64_t sub_1D231C5E4()
{
  v7 = *(v0 + 16);
  v1 = sub_1D2878558();
  *(v0 + 72) = v1;
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *(v2 + 16) = v7;
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = sub_1D231C6F4;
  v4 = MEMORY[0x1E69E85E0];
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v3, v1, v4, 0xD000000000000014, 0x80000001D28B0BB0, sub_1D2340140, v2, v5);
}

uint64_t sub_1D231C6F4()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1D231C854, v3, v2);
}

uint64_t sub_1D231C854()
{

  v1 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D231C8D8, v1, v0);
}

uint64_t sub_1D231C8D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D231C938(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA120);
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v27 = v25 - v5;
  v26 = sub_1D2872008();
  v6 = *(v26 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v8 = sub_1D2873CB8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2872658();
  v12 = sub_1D2873CA8();
  v13 = sub_1D28789F8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v25[1] = v2;
    v15 = a1;
    v16 = v14;
    *v14 = 0;
    _os_log_impl(&dword_1D226E000, v12, v13, "ComposingViewModel - configureSelectedGenerationStyle()", v14, 2u);
    v17 = v16;
    a1 = v15;
    MEMORY[0x1D38A3520](v17, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = v26;
  (*(v6 + 16))(v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v26);
  v20 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  (*(v6 + 32))(v21 + v20, v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
  v22 = swift_allocObject();
  *(v22 + 16) = &unk_1D2881D20;
  *(v22 + 24) = v21;
  v30 = &unk_1D2881D28;
  v31 = v22;
  sub_1D2870F78();
  sub_1D2870F78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE60);
  v23 = v27;
  sub_1D2878638();

  (*(v28 + 8))(v23, v29);
}

uint64_t sub_1D231CCD4(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_1D2872008();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = sub_1D2878568();
  v2[11] = sub_1D2878558();
  v5 = sub_1D28784F8();
  v2[12] = v5;
  v2[13] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D231CDCC, v5, v4);
}

uint64_t sub_1D231CDCC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[14] = Strong;
  if (Strong)
  {
    v2 = v0[9];
    (*(v0[8] + 16))(v2, v0[6], v0[7]);
    sub_1D22F9E1C(v2);
    sub_1D22FECC4();
    v3 = sub_1D2643B64();

    if (v3)
    {
      v0[15] = sub_1D2878558();
      v5 = sub_1D28784F8();
      v0[16] = v5;
      v0[17] = v4;

      return MEMORY[0x1EEE6DFA0](sub_1D231CF28, v5, v4);
    }
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D231CF28()
{
  v1 = sub_1D2878558();
  v0[18] = v1;
  v2 = swift_task_alloc();
  v0[19] = v2;
  *v2 = v0;
  v2[1] = sub_1D231D010;
  v3 = v0[14];
  v4 = MEMORY[0x1E69E85E0];
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v2, v1, v4, 0xD000000000000025, 0x80000001D28B0B30, sub_1D23417C0, v3, v5);
}

uint64_t sub_1D231D010()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1D231D154, v3, v2);
}

uint64_t sub_1D231D154()
{

  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return MEMORY[0x1EEE6DFA0](sub_1D231D1B8, v1, v2);
}

uint64_t sub_1D231D1B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D231D22C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA120);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v44 = &v39 - v6;
  v7 = sub_1D2872008();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v43 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D60);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  MEMORY[0x1EEE9AC00](v13 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v39 - v18;
  v45 = a1;
  if (*(a1 + 16) != 1)
  {
    goto LABEL_12;
  }

  v39 = v19;
  v40 = v2;
  v41 = v5;
  v42 = v4;
  (*(v8 + 16))(&v39 - v18, v45 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v7, v20);
  v22 = *(v8 + 56);
  v22(v21, 0, 1, v7);
  sub_1D2871EC8();
  v22(v16, 0, 1, v7);
  v23 = *(v10 + 48);
  sub_1D22BD1D0(v21, v12, &qword_1EC6D9A30);
  sub_1D22BD1D0(v16, &v12[v23], &qword_1EC6D9A30);
  v24 = *(v8 + 48);
  if (v24(v12, 1, v7) == 1)
  {
    sub_1D22BD238(v16, &qword_1EC6D9A30);
    sub_1D22BD238(v21, &qword_1EC6D9A30);
    v25 = v24(&v12[v23], 1, v7);
    v4 = v42;
    if (v25 == 1)
    {
      sub_1D22BD238(v12, &qword_1EC6D9A30);
      v2 = v40;
      v5 = v41;
      goto LABEL_9;
    }

LABEL_7:
    sub_1D22BD238(v12, &unk_1EC6E1D60);
    v2 = v40;
    v5 = v41;
    goto LABEL_10;
  }

  v26 = v39;
  sub_1D22BD1D0(v12, v39, &qword_1EC6D9A30);
  if (v24(&v12[v23], 1, v7) == 1)
  {
    sub_1D22BD238(v16, &qword_1EC6D9A30);
    sub_1D22BD238(v21, &qword_1EC6D9A30);
    (*(v8 + 8))(v26, v7);
    v4 = v42;
    goto LABEL_7;
  }

  v27 = v43;
  (*(v8 + 32))(v43, &v12[v23], v7);
  sub_1D233B278(&qword_1ED8A6C08, MEMORY[0x1E696E310]);
  v28 = sub_1D2877F98();
  v29 = *(v8 + 8);
  v29(v27, v7);
  sub_1D22BD238(v16, &qword_1EC6D9A30);
  sub_1D22BD238(v21, &qword_1EC6D9A30);
  v29(v26, v7);
  sub_1D22BD238(v12, &qword_1EC6D9A30);
  v5 = v41;
  v4 = v42;
  v2 = v40;
  if ((v28 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_9:
  v30 = *(sub_1D23C6B54() + 56);

  if ((v30 & 1) == 0)
  {
LABEL_12:
    if ((*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__hideStylePickerPendingSetAllowedStyles) & 1) == 0)
    {
      *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__hideStylePickerPendingSetAllowedStyles) = 0;
      goto LABEL_17;
    }

    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v39 - 2) = v2;
    *(&v39 - 8) = 0;
    v46 = v2;
    sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
LABEL_16:
    sub_1D28719D8();

    goto LABEL_17;
  }

LABEL_10:
  if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__hideStylePickerPendingSetAllowedStyles) != 1)
  {
    v32 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v32);
    *(&v39 - 2) = v2;
    *(&v39 - 8) = 1;
    v46 = v2;
    sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    goto LABEL_16;
  }

  *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__hideStylePickerPendingSetAllowedStyles) = 1;
LABEL_17:
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  v35 = v45;
  *(v34 + 16) = v33;
  *(v34 + 24) = v35;
  v36 = swift_allocObject();
  *(v36 + 16) = &unk_1D2881D38;
  *(v36 + 24) = v34;
  v46 = &unk_1D2881D40;
  v47 = v36;
  sub_1D2870F78();
  sub_1D2870F68();
  sub_1D2870F78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE60);
  v37 = v44;
  sub_1D2878638();

  (*(v5 + 8))(v37, v4);
}

uint64_t sub_1D231DA00(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = sub_1D2872008();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D60);
  v2[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v4 = sub_1D2872068();
  v2[18] = v4;
  v2[19] = *(v4 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = sub_1D2878568();
  v2[22] = sub_1D2878558();
  v6 = sub_1D28784F8();
  v2[23] = v6;
  v2[24] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D231DBE0, v6, v5);
}

uint64_t sub_1D231DBE0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[25] = Strong;
  if (!Strong)
  {
    goto LABEL_4;
  }

  v2 = Strong;
  if (*(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__hideStylePickerPendingSetAllowedStyles))
  {
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = 0;
    v0[7] = v2;
    sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719D8();
  }

  else
  {
    *(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__hideStylePickerPendingSetAllowedStyles) = 0;
  }

  v0[26] = 0;
  v7 = v0[19];
  v6 = v0[20];
  v8 = v0[18];
  v9 = sub_1D23C6B54();
  (*(v7 + 104))(v6, *MEMORY[0x1E696E3A0], v8);
  v10 = sub_1D2872058();
  (*(v7 + 8))(v6, v8);
  if (v10)
  {
    v11 = *(*(v9 + 64) + 16);

    if (v11)
    {
      v12 = v0[9];
      v13 = sub_1D2870F68();
      sub_1D22F92E4(v13);
      if (*(v12 + 16) == 1)
      {
        v15 = v0[16];
        v14 = v0[17];
        v17 = v0[13];
        v16 = v0[14];
        v18 = v0[10];
        v19 = v0[11];
        (*(v19 + 16))(v14, v0[9] + ((*(v19 + 80) + 32) & ~*(v19 + 80)), v18);
        v20 = *(v19 + 56);
        v20(v14, 0, 1, v18);
        sub_1D2871EC8();
        v20(v15, 0, 1, v18);
        v21 = *(v17 + 48);
        sub_1D22BD1D0(v14, v16, &qword_1EC6D9A30);
        sub_1D22BD1D0(v15, v16 + v21, &qword_1EC6D9A30);
        v22 = *(v19 + 48);
        if (v22(v16, 1, v18) == 1)
        {
          v23 = v0[17];
          v24 = v0[10];
          sub_1D22BD238(v0[16], &qword_1EC6D9A30);
          sub_1D22BD238(v23, &qword_1EC6D9A30);
          if (v22(v16 + v21, 1, v24) == 1)
          {
            sub_1D22BD238(v0[14], &qword_1EC6D9A30);
            goto LABEL_23;
          }

LABEL_21:
          sub_1D22BD238(v0[14], &unk_1EC6E1D60);
          v33 = v0[26];
LABEL_27:
          v0[29] = v33;
          sub_1D22FECC4();
          v42 = sub_1D2643B64();

          if (v42)
          {
            v0[30] = sub_1D2878558();
            v44 = sub_1D28784F8();
            v0[31] = v44;
            v0[32] = v43;

            return MEMORY[0x1EEE6DFA0](sub_1D231EC0C, v44, v43);
          }

          v45 = v0[25];
          if (*(v45 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__pendingSwitchingToExternalProviderAsTheOnlyStyle))
          {
            swift_getKeyPath();
            v46 = swift_task_alloc();
            *(v46 + 16) = v45;
            *(v46 + 24) = 0;
            v0[5] = v45;
            sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
            sub_1D28719D8();

            goto LABEL_5;
          }

          *(v45 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__pendingSwitchingToExternalProviderAsTheOnlyStyle) = 0;
LABEL_4:

LABEL_5:

          v4 = v0[1];

          return v4();
        }

        v26 = v0[10];
        sub_1D22BD1D0(v0[14], v0[15], &qword_1EC6D9A30);
        v27 = v22(v16 + v21, 1, v26);
        v29 = v0[16];
        v28 = v0[17];
        v30 = v0[15];
        if (v27 == 1)
        {
          v31 = v0[10];
          v32 = v0[11];
          sub_1D22BD238(v0[16], &qword_1EC6D9A30);
          sub_1D22BD238(v28, &qword_1EC6D9A30);
          (*(v32 + 8))(v30, v31);
          goto LABEL_21;
        }

        v49 = v0[14];
        v35 = v0[11];
        v34 = v0[12];
        v36 = v0[10];
        (*(v35 + 32))(v34, v16 + v21, v36);
        sub_1D233B278(&qword_1ED8A6C08, MEMORY[0x1E696E310]);
        v37 = sub_1D2877F98();
        v38 = *(v35 + 8);
        v38(v34, v36);
        sub_1D22BD238(v29, &qword_1EC6D9A30);
        sub_1D22BD238(v28, &qword_1EC6D9A30);
        v38(v30, v36);
        sub_1D22BD238(v49, &qword_1EC6D9A30);
        if (v37)
        {
LABEL_23:
          sub_1D22FECC4();
          v39 = sub_1D2643B64();

          if (v39)
          {
            v40 = v0[25];
            v41 = sub_1D22FFBF8();
            __swift_project_boxed_opaque_existential_1((v41 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_imageGenerationManager), *(v41 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_imageGenerationManager + 24));
            sub_1D23B3A78();

            if (*(v40 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__pendingSwitchingToExternalProviderAsTheOnlyStyle) != 1)
            {
              v47 = v0[25];
              v33 = v0[26];
              swift_getKeyPath();
              v48 = swift_task_alloc();
              *(v48 + 16) = v47;
              *(v48 + 24) = 1;
              v0[6] = v47;
              sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
              sub_1D28719D8();

              goto LABEL_27;
            }

            *(v40 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__pendingSwitchingToExternalProviderAsTheOnlyStyle) = 1;
          }
        }
      }

      v33 = v0[26];
      goto LABEL_27;
    }
  }

  else
  {
  }

  v0[27] = sub_1D23C6B54();
  v25 = swift_task_alloc();
  v0[28] = v25;
  *v25 = v0;
  v25[1] = sub_1D231E45C;

  return sub_1D274BE84();
}

uint64_t sub_1D231E45C()
{
  v1 = *v0;

  v2 = *(v1 + 192);
  v3 = *(v1 + 184);

  return MEMORY[0x1EEE6DFA0](sub_1D231E5A0, v3, v2);
}

uint64_t sub_1D231E5A0()
{
  v1 = v0[9];
  v2 = sub_1D2870F68();
  sub_1D22F92E4(v2);
  if (*(v1 + 16) != 1)
  {
    goto LABEL_12;
  }

  v4 = v0[16];
  v3 = v0[17];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[10];
  v8 = v0[11];
  (*(v8 + 16))(v3, v0[9] + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v7);
  v9 = *(v8 + 56);
  v9(v3, 0, 1, v7);
  sub_1D2871EC8();
  v9(v4, 0, 1, v7);
  v10 = *(v6 + 48);
  sub_1D22BD1D0(v3, v5, &qword_1EC6D9A30);
  sub_1D22BD1D0(v4, v5 + v10, &qword_1EC6D9A30);
  v11 = *(v8 + 48);
  if (v11(v5, 1, v7) == 1)
  {
    v12 = v0[17];
    v13 = v0[10];
    sub_1D22BD238(v0[16], &qword_1EC6D9A30);
    sub_1D22BD238(v12, &qword_1EC6D9A30);
    if (v11(v5 + v10, 1, v13) == 1)
    {
      sub_1D22BD238(v0[14], &qword_1EC6D9A30);
      goto LABEL_9;
    }

LABEL_7:
    sub_1D22BD238(v0[14], &unk_1EC6E1D60);
    v21 = v0[26];
    goto LABEL_13;
  }

  v14 = v0[10];
  sub_1D22BD1D0(v0[14], v0[15], &qword_1EC6D9A30);
  v15 = v11(v5 + v10, 1, v14);
  v17 = v0[16];
  v16 = v0[17];
  v18 = v0[15];
  if (v15 == 1)
  {
    v19 = v0[10];
    v20 = v0[11];
    sub_1D22BD238(v0[16], &qword_1EC6D9A30);
    sub_1D22BD238(v16, &qword_1EC6D9A30);
    (*(v20 + 8))(v18, v19);
    goto LABEL_7;
  }

  v39 = v0[14];
  v23 = v0[11];
  v22 = v0[12];
  v24 = v0[10];
  (*(v23 + 32))(v22, v5 + v10, v24);
  sub_1D233B278(&qword_1ED8A6C08, MEMORY[0x1E696E310]);
  v25 = sub_1D2877F98();
  v26 = *(v23 + 8);
  v26(v22, v24);
  sub_1D22BD238(v17, &qword_1EC6D9A30);
  sub_1D22BD238(v16, &qword_1EC6D9A30);
  v26(v18, v24);
  sub_1D22BD238(v39, &qword_1EC6D9A30);
  if ((v25 & 1) == 0)
  {
LABEL_12:
    v21 = v0[26];
    goto LABEL_13;
  }

LABEL_9:
  sub_1D22FECC4();
  v27 = sub_1D2643B64();

  if ((v27 & 1) == 0)
  {
    goto LABEL_12;
  }

  v28 = v0[25];
  v29 = sub_1D22FFBF8();
  __swift_project_boxed_opaque_existential_1((v29 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_imageGenerationManager), *(v29 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_imageGenerationManager + 24));
  sub_1D23B3A78();

  if (*(v28 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__pendingSwitchingToExternalProviderAsTheOnlyStyle) == 1)
  {
    *(v28 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__pendingSwitchingToExternalProviderAsTheOnlyStyle) = 1;
    goto LABEL_12;
  }

  v36 = v0[25];
  v21 = v0[26];
  swift_getKeyPath();
  v37 = swift_task_alloc();
  *(v37 + 16) = v36;
  *(v37 + 24) = 1;
  v0[6] = v36;
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719D8();

LABEL_13:
  v0[29] = v21;
  sub_1D22FECC4();
  v30 = sub_1D2643B64();

  if (v30)
  {
    v0[30] = sub_1D2878558();
    v32 = sub_1D28784F8();
    v0[31] = v32;
    v0[32] = v31;

    return MEMORY[0x1EEE6DFA0](sub_1D231EC0C, v32, v31);
  }

  else
  {

    v33 = v0[25];
    if (*(v33 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__pendingSwitchingToExternalProviderAsTheOnlyStyle))
    {
      swift_getKeyPath();
      v34 = swift_task_alloc();
      *(v34 + 16) = v33;
      *(v34 + 24) = 0;
      v0[5] = v33;
      sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
      sub_1D28719D8();
    }

    else
    {
      *(v33 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__pendingSwitchingToExternalProviderAsTheOnlyStyle) = 0;
    }

    v35 = v0[1];

    return v35();
  }
}

uint64_t sub_1D231EC0C()
{
  v1 = sub_1D2878558();
  v0[33] = v1;
  v2 = swift_task_alloc();
  v0[34] = v2;
  *v2 = v0;
  v2[1] = sub_1D231ECF4;
  v3 = v0[25];
  v4 = MEMORY[0x1E69E85E0];
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v2, v1, v4, 0xD000000000000025, 0x80000001D28B0B30, sub_1D23417C0, v3, v5);
}

uint64_t sub_1D231ECF4()
{
  v1 = *v0;

  v2 = *(v1 + 256);
  v3 = *(v1 + 248);

  return MEMORY[0x1EEE6DFA0](sub_1D231EE38, v3, v2);
}

uint64_t sub_1D231EE38()
{

  v1 = *(v0 + 184);
  v2 = *(v0 + 192);

  return MEMORY[0x1EEE6DFA0](sub_1D231EE9C, v1, v2);
}

uint64_t sub_1D231EE9C()
{

  v1 = v0[25];
  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__pendingSwitchingToExternalProviderAsTheOnlyStyle))
  {
    swift_getKeyPath();
    v2 = swift_task_alloc();
    *(v2 + 16) = v1;
    *(v2 + 24) = 0;
    v0[5] = v1;
    sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719D8();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__pendingSwitchingToExternalProviderAsTheOnlyStyle) = 0;
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D231F030()
{
  v0 = sub_1D2871E18();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1D23C7044();
  v5 = *(v1 + 104);
  v5(v3, *MEMORY[0x1E696E2B0], v0);
  sub_1D233B278(&qword_1EC6DA208, MEMORY[0x1E696E2B8]);
  sub_1D2878368();
  sub_1D2878368();
  v6 = *(v1 + 8);
  v6(v3, v0);
  if (v12 == v11)
  {
    LOBYTE(v7) = 1;
    if ((*(v4 + 16) & 1) == 0)
    {
LABEL_3:
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *&v10[-16] = v4;
      v10[-8] = v7;
      v12 = v4;
      sub_1D233B278(&qword_1ED8A04F8, type metadata accessor for PersonalizationFeatures);
      sub_1D28719D8();
    }
  }

  else
  {
    v5(v3, *MEMORY[0x1E696E2A0], v0);
    sub_1D2878368();
    sub_1D2878368();
    v6(v3, v0);
    v7 = v12 == v11;
    if ((v7 ^ *(v4 + 16)))
    {
      goto LABEL_3;
    }
  }

  *(v4 + 16) = v7;
}

uint64_t sub_1D231F30C()
{
  v0 = sub_1D2872088();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1D23C7044();
  v5 = *(v1 + 104);
  v5(v3, *MEMORY[0x1E696E3B8], v0);
  sub_1D233B278(&qword_1EC6DA1F8, MEMORY[0x1E696E3C0]);
  sub_1D2878368();
  sub_1D2878368();
  v6 = *(v1 + 8);
  v6(v3, v0);
  if (v12 == v11)
  {
    LOBYTE(v7) = 1;
    if ((*(v4 + 17) & 1) == 0)
    {
LABEL_3:
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *&v10[-16] = v4;
      v10[-8] = v7;
      v12 = v4;
      sub_1D233B278(&qword_1ED8A04F8, type metadata accessor for PersonalizationFeatures);
      sub_1D28719D8();
    }
  }

  else
  {
    v5(v3, *MEMORY[0x1E696E3A8], v0);
    sub_1D2878368();
    sub_1D2878368();
    v6(v3, v0);
    v7 = v12 == v11;
    if ((v7 ^ *(v4 + 17)))
    {
      goto LABEL_3;
    }
  }

  *(v4 + 17) = v7;
}

id sub_1D231F5E8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v54 = &v47 - v1;
  v2 = sub_1D2873CB8();
  v51 = *(v2 - 8);
  v52 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v50 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PlaygroundImage();
  v47 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v48 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9490);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v47 - v7;
  v9 = type metadata accessor for ImageGeneration.PreviewImage(0);
  v53 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v49 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D2872008();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v47 - v16;
  v18 = sub_1D22FECC4();
  swift_getKeyPath();
  v55 = v18;
  sub_1D233B278(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
  sub_1D28719E8();

  v19 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__selectedItem;
  swift_beginAccess();
  (*(v12 + 16))(v17, v18 + v19, v11);

  sub_1D2871FC8();
  LOBYTE(v19) = MEMORY[0x1D389AA00](v17, v14);
  v20 = *(v12 + 8);
  v20(v14, v11);
  v20(v17, v11);
  if ((v19 & 1) == 0)
  {
    v21 = swift_allocObject();
    swift_weakInit();
    v22 = sub_1D28785F8();
    v23 = v54;
    (*(*(v22 - 8) + 56))(v54, 1, 1, v22);
    sub_1D2878568();
    swift_retain_n();
    v24 = sub_1D2878558();
    v25 = swift_allocObject();
    v26 = MEMORY[0x1E69E85E0];
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = &unk_1D28820A8;
    v25[5] = v21;
    sub_1D22AE01C(0, 0, v23, &unk_1D28820B0, v25);
  }

  sub_1D23015FC(v8);
  if ((*(v53 + 48))(v8, 1, v9) == 1)
  {
    sub_1D22BD238(v8, &qword_1EC6D9490);
LABEL_10:
    v40 = v50;
    sub_1D2872658();
    v41 = sub_1D2873CA8();
    v42 = sub_1D2878A18();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_1D226E000, v41, v42, "Failed to fetch genmoji result from preview", v43, 2u);
      MEMORY[0x1D38A3520](v43, -1, -1);
    }

    return (*(v51 + 8))(v40, v52);
  }

  v28 = v9;
  v29 = v49;
  sub_1D233FFEC(v8, v49, type metadata accessor for ImageGeneration.PreviewImage);
  sub_1D2317108(&v55);
  v30 = v55;
  if (!v55)
  {
    sub_1D22FD9A8(v29, type metadata accessor for ImageGeneration.PreviewImage);
    goto LABEL_10;
  }

  v31 = v56;
  v32 = v57;
  v33 = v58;
  v34 = v59;
  v36 = v60;
  v35 = v61;
  v37 = *(v29 + *(v28 + 28));
  if (*(v37 + 16))
  {
    v54 = v60;
    v38 = v48;
    sub_1D233DEB0(v37 + ((*(v47 + 80) + 32) & ~*(v47 + 80)), v48, type metadata accessor for PlaygroundImage);
    if (*(v38 + 8) == 2)
    {
      v39 = *v38;
    }

    else
    {
      v53 = v35;
      v44 = sub_1D262B684();
      if (v44)
      {
        v45 = v44;
        result = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage:v44 imageOrientation:sub_1D263073C(*(v38 + 24))];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v39 = result;
      }

      else
      {
        v39 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
      }

      v35 = v53;
    }

    sub_1D22FD9A8(v38, type metadata accessor for PlaygroundImage);
    v36 = v54;
  }

  else
  {
    v39 = 0;
  }

  v55 = v30;
  v56 = v31;
  v57 = v32;
  v58 = v33;
  v59 = v34;
  v60 = v36;
  v61 = v35;
  v46 = sub_1D22F7304();
  sub_1D23413F4(v30);
  sub_1D27F85E0(v46, v39);

  return sub_1D22FD9A8(v29, type metadata accessor for ImageGeneration.PreviewImage);
}

uint64_t sub_1D231FD78(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  sub_1D2878568();
  v2[7] = sub_1D2878558();
  v4 = sub_1D28784F8();
  v2[8] = v4;
  v2[9] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D231FE10, v4, v3);
}

uint64_t sub_1D231FE10()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_1D231FF4C;
    v3 = v0[5];

    return sub_1D2301CE4(v3);
  }

  else
  {
    v5 = v0[5];

    v6 = type metadata accessor for PlaygroundImage();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1D231FF4C()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1D232006C, v3, v2);
}

uint64_t sub_1D232006C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D23200EC()
{
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  return sub_1D2870F78();
}

uint64_t sub_1D2320190()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDE70);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v49 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v54 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v49 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v52 = &v49 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v49 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v49 - v16;
  swift_getKeyPath();
  v18 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel___observationRegistrar;
  v66 = v1;
  v19 = sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  v56 = v18;
  v61 = v19;
  sub_1D28719E8();

  v20 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__pausePhotoImportForConfirmationContinuation;
  swift_beginAccess();
  sub_1D22BD1D0(v1 + v20, v17, &qword_1EC6D9A80);
  v59 = *(v3 + 48);
  v60 = v3 + 48;
  v21 = v59(v17, 1, v2);
  v55 = v5;
  if (v21)
  {
    sub_1D22BD238(v17, &qword_1EC6D9A80);
  }

  else
  {
    (*(v3 + 16))(v5, v17, v2);
    sub_1D22BD238(v17, &qword_1EC6D9A80);
    sub_1D2878518();
    (*(v3 + 8))(v5, v2);
  }

  v57 = *(v3 + 56);
  v58 = v3 + 56;
  v57(v14, 1, 1, v2);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  *(&v49 - 2) = v1;
  *(&v49 - 1) = v14;
  v65 = v1;
  v23 = v14;
  v24 = v3;
  sub_1D28719D8();
  v51 = 0;

  v25 = v23;
  sub_1D22BD238(v23, &qword_1EC6D9A80);
  swift_getKeyPath();
  v65 = v1;
  sub_1D28719E8();

  v26 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__pauseRecipeLoadingForConfirmationContinuation;
  swift_beginAccess();
  v27 = v52;
  sub_1D22BD1D0(v1 + v26, v52, &qword_1EC6D9A80);
  v28 = v59(v27, 1, v2);
  v50 = v24;
  if (v28)
  {
    sub_1D22BD238(v27, &qword_1EC6D9A80);
  }

  else
  {
    v29 = v55;
    (*(v24 + 16))(v55, v27, v2);
    sub_1D22BD238(v27, &qword_1EC6D9A80);
    sub_1D2878518();
    (*(v24 + 8))(v29, v2);
  }

  v57(v23, 1, 1, v2);
  v30 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v30);
  *(&v49 - 2) = v1;
  *(&v49 - 1) = v23;
  v64 = v1;
  sub_1D28719D8();

  sub_1D22BD238(v23, &qword_1EC6D9A80);
  swift_getKeyPath();
  v64 = v1;
  sub_1D28719E8();

  v31 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__waitForSwitchingToExternalStyleContinuation;
  swift_beginAccess();
  v32 = v53;
  sub_1D22BD1D0(v1 + v31, v53, &qword_1EC6D9A80);
  if (v59(v32, 1, v2))
  {
    sub_1D22BD238(v32, &qword_1EC6D9A80);
  }

  else
  {
    v33 = v50;
    v34 = v55;
    (*(v50 + 16))(v55, v32, v2);
    sub_1D22BD238(v32, &qword_1EC6D9A80);
    sub_1D2878518();
    (*(v33 + 8))(v34, v2);
  }

  v57(v25, 1, 1, v2);
  v35 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v35);
  *(&v49 - 2) = v1;
  *(&v49 - 1) = v25;
  v63 = v1;
  sub_1D28719D8();

  sub_1D22BD238(v25, &qword_1EC6D9A80);
  swift_getKeyPath();
  v63 = v1;
  sub_1D28719E8();

  v36 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__pausePhotoImportForStyleSuggestionContinuation;
  swift_beginAccess();
  v37 = v54;
  sub_1D22BD1D0(v1 + v36, v54, &qword_1EC6D9A80);
  if (v59(v37, 1, v2))
  {
    sub_1D22BD238(v37, &qword_1EC6D9A80);
  }

  else
  {
    v38 = v50;
    v39 = v55;
    (*(v50 + 16))(v55, v37, v2);
    sub_1D22BD238(v37, &qword_1EC6D9A80);
    sub_1D2878518();
    (*(v38 + 8))(v39, v2);
  }

  v57(v25, 1, 1, v2);
  v40 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v40);
  *(&v49 - 2) = v1;
  *(&v49 - 1) = v25;
  v62 = v1;
  sub_1D28719D8();

  result = sub_1D22BD238(v25, &qword_1EC6D9A80);
  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__recipeToLoadContainsPhoto))
  {
    v42 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v42);
    *(&v49 - 2) = v1;
    *(&v49 - 8) = 0;
    v62 = v1;
    sub_1D28719D8();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__recipeToLoadContainsPhoto) = 0;
  }

  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__pendingSwitchingToExternalProviderAsTheOnlyStyle))
  {
    v43 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v43);
    *(&v49 - 2) = v1;
    *(&v49 - 8) = 0;
    v62 = v1;
    sub_1D28719D8();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__pendingSwitchingToExternalProviderAsTheOnlyStyle) = 0;
  }

  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__confirmShareFromAlert))
  {
    v44 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v44);
    *(&v49 - 2) = v1;
    *(&v49 - 8) = 0;
    v62 = v1;
    sub_1D28719D8();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__confirmShareFromAlert) = 0;
  }

  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shouldShowExternalSharingAlert))
  {
    v45 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v45);
    *(&v49 - 2) = v1;
    *(&v49 - 8) = 0;
    v62 = v1;
    sub_1D28719D8();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shouldShowExternalSharingAlert) = 0;
  }

  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__hideStylePickerPendingSetAllowedStyles))
  {
    v46 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v46);
    *(&v49 - 2) = v1;
    *(&v49 - 8) = 0;
    v62 = v1;
    sub_1D28719D8();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__hideStylePickerPendingSetAllowedStyles) = 0;
  }

  v47 = (v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__externalSharingAlertPersonName);
  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__externalSharingAlertPersonName + 8))
  {
    v48 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v48);
    *(&v49 - 3) = 0;
    *(&v49 - 2) = 0;
    *(&v49 - 4) = v1;
    v62 = v1;
    sub_1D28719D8();
  }

  else
  {
    *v47 = 0;
    v47[1] = 0;
  }

  return result;
}

uint64_t sub_1D2320E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 160) = a5;
  *(v5 + 96) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  *(v5 + 104) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9490);
  *(v5 + 112) = swift_task_alloc();
  v6 = type metadata accessor for ImageGeneration.PreviewImage(0);
  *(v5 + 120) = v6;
  *(v5 + 128) = *(v6 - 8);
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = sub_1D2878568();
  *(v5 + 152) = sub_1D2878558();
  v8 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D2320FAC, v8, v7);
}

uint64_t sub_1D2320FAC()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 112);

  sub_1D23015FC(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1D22BD238(*(v0 + 112), &qword_1EC6D9490);
    goto LABEL_34;
  }

  sub_1D233FFEC(*(v0 + 112), *(v0 + 136), type metadata accessor for ImageGeneration.PreviewImage);
  if (sub_1D23006FC())
  {
    v4 = sub_1D230BE78();
    v5 = *(v0 + 96);
    if (!v4)
    {
      v20 = sub_1D23C7CA8();
      v21 = sub_1D2878068();
      v22 = sub_1D2878068();
      v23 = sub_1D25D7060(MEMORY[0x1E69E7CC0]);
      if (*(v20 + 48))
      {
        sub_1D2870F68();
        v24 = sub_1D2878068();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1D24E8054(v24, 0x444974706D6F7250, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
      }

      v26 = sub_1D2878068();
      v27 = sub_1D2418030(v23);

      if (v27)
      {
        type metadata accessor for IAPayloadKey(0);
        sub_1D22BCFD0(0, &qword_1ED89CC48);
        sub_1D233B278(&qword_1ED89CDD0, type metadata accessor for IAPayloadKey);
        v28 = sub_1D2877E78();
      }

      else
      {
        v28 = 0;
      }

      v79 = *(v0 + 136);
      v38 = *(v0 + 160);
      v40 = *(v0 + 96);
      v39 = *(v0 + 104);
      [objc_opt_self() asyncSendSignal:v22 toChannel:v21 withNullableUniqueStringID:v26 withPayload:v28];

      sub_1D23098E0(&OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___footerViewModel, sub_1D23087E8);
      sub_1D22CBE98();

      v41 = sub_1D28785F8();
      (*(*(v41 - 8) + 56))(v39, 1, 1, v41);
      sub_1D2870F78();
      v42 = sub_1D2878558();
      v43 = swift_allocObject();
      v44 = MEMORY[0x1E69E85E0];
      *(v43 + 16) = v42;
      *(v43 + 24) = v44;
      *(v43 + 32) = v40;
      *(v43 + 40) = v38;
      sub_1D22AE01C(0, 0, v39, &unk_1D2881458, v43);

      v19 = v79;
      goto LABEL_33;
    }

    swift_getKeyPath();
    *(v0 + 64) = v5;
    sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719E8();

    v6 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__savedStickers;
    swift_beginAccess();
    if (*(*(v5 + v6) + 16) && (v7 = *(v0 + 136), sub_1D2870F68(), sub_1D25D064C(v7), LOBYTE(v7) = v8, , (v7 & 1) != 0) && (v9 = *(v0 + 96), swift_getKeyPath(), *(v0 + 88) = v9, sub_1D28719E8(), , *(v9 + 40) - 5 <= 1))
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1D2568E18(0);
        swift_unknownObjectRelease();
      }

      v10 = sub_1D23C7CA8();
      v11 = sub_1D2878068();
      v12 = sub_1D2878068();
      v13 = sub_1D25D7060(MEMORY[0x1E69E7CC0]);
      if (*(v10 + 48))
      {
        sub_1D2870F68();
        v14 = sub_1D2878068();

        v15 = swift_isUniquelyReferenced_nonNull_native();
        sub_1D24E8054(v14, 0x444974706D6F7250, 0xE800000000000000, v15);
      }

      v16 = sub_1D2878068();
      v17 = sub_1D2418030(v13);

      if (v17)
      {
        type metadata accessor for IAPayloadKey(0);
        sub_1D22BCFD0(0, &qword_1ED89CC48);
        sub_1D233B278(&qword_1ED89CDD0, type metadata accessor for IAPayloadKey);
        v18 = sub_1D2877E78();
      }

      else
      {
        v18 = 0;
      }

      v65 = *(v0 + 136);
      v67 = *(v0 + 96);
      v66 = *(v0 + 104);
      [objc_opt_self() asyncSendSignal:v12 toChannel:v11 withNullableUniqueStringID:v16 withPayload:v18];

      v68 = sub_1D28785F8();
      (*(*(v68 - 8) + 56))(v66, 1, 1, v68);
      sub_1D2870F78();
      v69 = sub_1D2878558();
      v70 = swift_allocObject();
      v71 = MEMORY[0x1E69E85E0];
      v70[2] = v69;
      v70[3] = v71;
      v70[4] = v67;
      sub_1D22AE01C(0, 0, v66, &unk_1D28814A0, v70);

      v19 = v65;
    }

    else
    {
      v29 = *(v0 + 96);
      swift_getKeyPath();
      *(v0 + 72) = v29;
      sub_1D28719E8();

      v30 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__previewsSavedInBackground;
      swift_beginAccess();
      v31 = *(v29 + v30);
      if (*(v31 + 16))
      {
        v32 = *(v0 + 136);
        sub_1D2870F68();
        v33 = sub_1D25D064C(v32);
        if (v34)
        {
          v35 = *(v0 + 96);
          v36 = *(*(v31 + 56) + 8 * v33);
          sub_1D2870F78();

          swift_getKeyPath();
          *(v0 + 80) = v35;
          sub_1D28719E8();

          v37 = *(v35 + 40);
          if (v37 != 6 && v37 != 5)
          {
            sub_1D2321FF8(v36);
            v57 = sub_1D23C7CA8();
            v80 = sub_1D2878068();
            v58 = sub_1D2878068();
            v59 = sub_1D25D7060(MEMORY[0x1E69E7CC0]);
            if (*(v57 + 48))
            {
              sub_1D2870F68();
              v60 = sub_1D2878068();

              v61 = swift_isUniquelyReferenced_nonNull_native();
              sub_1D24E8054(v60, 0x444974706D6F7250, 0xE800000000000000, v61);
            }

            v62 = sub_1D2878068();
            v63 = sub_1D2418030(v59);

            if (v63)
            {
              type metadata accessor for IAPayloadKey(0);
              sub_1D22BCFD0(0, &qword_1ED89CC48);
              sub_1D233B278(&qword_1ED89CDD0, type metadata accessor for IAPayloadKey);
              v64 = sub_1D2877E78();
            }

            else
            {
              v64 = 0;
            }

            v78 = *(v0 + 136);
            v73 = *(v0 + 96);
            v72 = *(v0 + 104);
            [objc_opt_self() asyncSendSignal:v58 toChannel:v80 withNullableUniqueStringID:v62 withPayload:v64];

            v74 = sub_1D28785F8();
            (*(*(v74 - 8) + 56))(v72, 1, 1, v74);
            sub_1D2870F78();
            v75 = sub_1D2878558();
            v76 = swift_allocObject();
            v77 = MEMORY[0x1E69E85E0];
            v76[2] = v75;
            v76[3] = v77;
            v76[4] = v73;
            sub_1D22AE01C(0, 0, v72, &unk_1D2881490, v76);

            v19 = v78;
            goto LABEL_33;
          }
        }

        else
        {
        }
      }

      v45 = sub_1D23C7CA8();
      v46 = sub_1D2878068();
      v47 = sub_1D2878068();
      v48 = sub_1D25D7060(MEMORY[0x1E69E7CC0]);
      if (*(v45 + 48))
      {
        sub_1D2870F68();
        v49 = sub_1D2878068();

        v50 = swift_isUniquelyReferenced_nonNull_native();
        sub_1D24E8054(v49, 0x444974706D6F7250, 0xE800000000000000, v50);
      }

      v51 = sub_1D2878068();
      v52 = sub_1D2418030(v48);

      if (v52)
      {
        type metadata accessor for IAPayloadKey(0);
        sub_1D22BCFD0(0, &qword_1ED89CC48);
        sub_1D233B278(&qword_1ED89CDD0, type metadata accessor for IAPayloadKey);
        v53 = sub_1D2877E78();
      }

      else
      {
        v53 = 0;
      }

      v54 = *(v0 + 136);
      [objc_opt_self() asyncSendSignal:v47 toChannel:v46 withNullableUniqueStringID:v51 withPayload:v53];

      sub_1D2313D08();
      v19 = v54;
    }
  }

  else
  {
    v19 = *(v0 + 136);
  }

LABEL_33:
  sub_1D22FD9A8(v19, type metadata accessor for ImageGeneration.PreviewImage);
LABEL_34:

  v55 = *(v0 + 8);

  return v55();
}

uint64_t sub_1D2321C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1D2879328();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_1D2878568();
  v4[6] = sub_1D2878558();
  v7 = sub_1D28784F8();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D2321D80, v7, v6);
}

uint64_t sub_1D2321D80()
{
  v1 = sub_1D2879908();
  v3 = v2;
  sub_1D2879718();
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_1D2321E64;

  return sub_1D233BA38(v1, v3, 0, 0, 1);
}

uint64_t sub_1D2321E64()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[5];
  v5 = v2[4];
  v6 = v2[3];
  if (v0)
  {
  }

  (*(v5 + 8))(v4, v6);
  v7 = v3[7];
  v8 = v3[8];

  return MEMORY[0x1EEE6DFA0](sub_1D2341594, v7, v8);
}

uint64_t sub_1D2321FF8(uint64_t a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1D256EA68(a1);
    swift_unknownObjectRelease();
  }

  v3 = v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 24))(v1, a1, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D23220B8(char a1)
{
  if (a1)
  {
    sub_1D23098E0(&OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___footerViewModel, sub_1D23087E8);
    v1 = sub_1D22C3068();

    swift_getKeyPath();
    sub_1D233B278(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
    sub_1D28719E8();

    v2 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__setFocusState);
    if (v2)
    {
      sub_1D2870F78();
      v2(0);

      sub_1D22A576C(v2);
    }

    else
    {
    }
  }

  sub_1D23098E0(&OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___footerViewModel, sub_1D23087E8);
  v3 = sub_1D22C26A8();

  if (v3)
  {
    sub_1D2870F78();
    sub_1D22CBE98();
  }

  else
  {
    v4 = sub_1D22FFBF8();
    if (*(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__allowsPreviewMode) == 1)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1D233B278(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
      sub_1D28719D8();
    }

    *(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__allowsPreviewMode) = 0;
  }
}

uint64_t sub_1D232233C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18 - v3;
  swift_getKeyPath();
  v19 = v0;
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v5 = *(v0 + 40);
  v6 = sub_1D22FC2DC();
  v7 = sub_1D230E0CC();
  type metadata accessor for ResetContextOperation();
  v8 = swift_allocObject();
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0u;
  v9 = OBJC_IVAR____TtC23ImagePlaygroundInternal21ResetContextOperation_undoRecipe;
  v10 = sub_1D2872438();
  (*(*(v10 - 8) + 56))(v8 + v9, 1, 1, v10);
  *(v8 + OBJC_IVAR____TtC23ImagePlaygroundInternal21ResetContextOperation_supportsUndoing) = 1;
  v11 = *(v8 + 16);
  v12 = *(v8 + 24);
  *(v8 + 16) = v5;
  *(v8 + 24) = v6;
  *(v8 + 32) = v7;
  sub_1D234019C(v11, v12);
  v13 = sub_1D28785F8();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  sub_1D2878568();
  sub_1D2870F78();
  sub_1D2870F78();
  v14 = sub_1D2878558();
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E85E0];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v1;
  v15[5] = v8;
  sub_1D22AE01C(0, 0, v4, &unk_1D2881DE8, v15);
}

uint64_t sub_1D232259C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1D2873CB8();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  sub_1D2878568();
  v5[7] = sub_1D2878558();
  v8 = sub_1D28784F8();
  v5[8] = v8;
  v5[9] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D2322690, v8, v7);
}

uint64_t sub_1D2322690()
{
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1D232273C;
  v2 = *(v0 + 24);

  return sub_1D27F9C50(v2, &off_1EEC2DC50);
}

uint64_t sub_1D232273C()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_1D23228E0;
  }

  else
  {
    v5 = sub_1D2322878;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D2322878()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D23228E0()
{
  v1 = v0[11];

  sub_1D2872658();
  v2 = v1;
  v3 = sub_1D2873CA8();
  v4 = sub_1D2878A18();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[11];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1D226E000, v3, v4, "Could not reset the context with error: %@", v7, 0xCu);
    sub_1D22BD238(v8, qword_1EC6DA930);
    MEMORY[0x1D38A3520](v8, -1, -1);
    MEMORY[0x1D38A3520](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[5] + 8))(v0[6], v0[4]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D2322A6C()
{
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v1 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__previewAnalyticsLogBlock);
  sub_1D22A58B8(v1);
  return v1;
}

uint64_t sub_1D2322B2C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v4 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__previewAnalyticsLogBlock);
  v5 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__previewAnalyticsLogBlock + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1D23411A0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1D22A58B8(v4);
}

uint64_t sub_1D2322C24(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1D2341198;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1D22A58B8(v1);
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719D8();
  sub_1D22A576C(v4);
}

uint64_t sub_1D2322D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__previewAnalyticsLogBlock);
  v4 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__previewAnalyticsLogBlock);
  *v3 = a2;
  v3[1] = a3;
  sub_1D22A58B8(a2);
  return sub_1D22A576C(v4);
}

uint64_t sub_1D2322DD8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - v3;
  swift_getKeyPath();
  v12 = v0;
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__onboardingSheetCancelled) == 1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v11 - 2) = v0;
    *(&v11 - 8) = 0;
    v12 = v0;
    sub_1D28719D8();

    sub_1D2309CF4(1);
    v7 = sub_1D28785F8();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    sub_1D2878568();
    sub_1D2870F78();
    v8 = sub_1D2878558();
    v9 = swift_allocObject();
    v10 = MEMORY[0x1E69E85E0];
    v9[2] = v8;
    v9[3] = v10;
    v9[4] = v1;
    sub_1D22AE01C(0, 0, v4, &unk_1D28817A8, v9);
  }

  return result;
}

uint64_t sub_1D2323038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = sub_1D2879328();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  sub_1D2878568();
  v4[7] = sub_1D2878558();
  v7 = sub_1D28784F8();
  v4[8] = v7;
  v4[9] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D232312C, v7, v6);
}

uint64_t sub_1D232312C()
{
  v1 = sub_1D2879908();
  v3 = v2;
  sub_1D2879718();
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_1D2323210;

  return sub_1D233BA38(v1, v3, 0, 0, 1);
}

uint64_t sub_1D2323210()
{
  v2 = *v1;
  v2[11] = v0;

  v3 = v2[6];
  v4 = v2[5];
  v5 = v2[4];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = v2[8];
    v7 = v2[9];
    v8 = sub_1D23234FC;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = v2[8];
    v7 = v2[9];
    v8 = sub_1D23233A8;
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

uint64_t sub_1D23233A8()
{
  v1 = v0[3];

  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isOnboardingSheetDismissed))
  {
    v2 = v0[3];
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = 0;
    v0[2] = v2;
    sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719D8();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isOnboardingSheetDismissed) = 0;
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D23234FC()
{
  v1 = v0[3];

  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isOnboardingSheetDismissed))
  {
    v2 = v0[3];
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = 0;
    v0[2] = v2;
    sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719D8();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isOnboardingSheetDismissed) = 0;
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D2323648()
{
  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___viewActions;
  if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___viewActions))
  {
    v2 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___viewActions);
  }

  else
  {
    type metadata accessor for ComposingViewActions();
    v2 = swift_allocObject();
    swift_weakInit();
    sub_1D2871A18();
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D233B278(&qword_1ED8A19A8, type metadata accessor for ComposingViewActions);
    sub_1D28719D8();

    *(v0 + v1) = v2;
    sub_1D2870F78();
  }

  sub_1D2870F78();
  return v2;
}

uint64_t sub_1D23237DC(uint64_t a1, void (*a2)(uint64_t))
{
  sub_1D23098E0(&OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___footerViewModel, sub_1D23087E8);
  a2(1);
}

uint64_t sub_1D2323860(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_1D28785F8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_1D2878568();
  sub_1D2870F78();
  v6 = sub_1D2878558();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  *(v7 + 16) = v6;
  *(v7 + 24) = v8;
  *(v7 + 32) = a1;
  *(v7 + 40) = 0;
  sub_1D22AE01C(0, 0, v4, &unk_1D289E6C0, v7);
}

uint64_t sub_1D2323988(uint64_t a1)
{
  sub_1D23098E0(&OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___footerViewModel, sub_1D23087E8);
  sub_1D22CC218();

  if (*(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shareSheetSource) != 2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D2323AD0(uint64_t a1)
{
  v2 = sub_1D2873CB8();
  v121 = *(v2 - 8);
  v122 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v123 = &v108 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v114 = &v108 - v5;
  v6 = type metadata accessor for PlaygroundImage();
  v116 = *(v6 - 8);
  v117 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v120 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v115 = (&v108 - v9);
  MEMORY[0x1EEE9AC00](v10);
  v119 = &v108 - v11;
  v12 = sub_1D2877D68();
  v124 = *(v12 - 8);
  v125 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v108 - v16;
  v18 = sub_1D2871818();
  v128 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v126 = &v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA210);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = (&v108 - v21);
  v23 = type metadata accessor for CuratedPrompt();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v118 = &v108 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v108 - v27;
  v29 = type metadata accessor for GPImageGlyph();
  v30 = a1;
  v31 = (a1 + *(v29 + 24));
  v32 = v31[1];
  v127 = v23;
  if (v32)
  {
    v33 = v18;
    v34 = *v31;
    if (qword_1ED89CD48 != -1)
    {
      swift_once();
    }

    sub_1D24B45EC(qword_1ED8B0010, v34, v32, v22);
    v18 = v33;
    if ((*(v24 + 48))(v22, 1, v127) != 1)
    {
      sub_1D233FFEC(v22, v28, type metadata accessor for CuratedPrompt);
      sub_1D23098E0(&OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___footerViewModel, sub_1D23087E8);
      sub_1D22CDE80(v28);

      return sub_1D22FD9A8(v28, type metadata accessor for CuratedPrompt);
    }
  }

  else
  {
    (*(v24 + 56))(v22, 1, 1, v23);
  }

  sub_1D22BD238(v22, &qword_1EC6DA210);
  sub_1D22BD1D0(v30 + *(v29 + 20), v17, &qword_1EC6D8F70);
  v36 = v128;
  if ((*(v128 + 48))(v17, 1, v18) == 1)
  {
    return sub_1D22BD238(v17, &qword_1EC6D8F70);
  }

  v37 = v126;
  (*(v36 + 32))(v126, v17, v18);
  sub_1D23C82C4();
  v39 = v124;
  v38 = v125;
  (v124[13])(v14, *MEMORY[0x1E69D4728], v125);
  v40 = sub_1D24B7F54();

  v39[1](v14, v38);
  if (!v40)
  {
    return (*(v36 + 8))(v37, v18);
  }

  v41 = sub_1D2877D58();
  if (v42)
  {
    v43 = v41;
  }

  else
  {
    v43 = 0;
  }

  if (v42)
  {
    v44 = v42;
  }

  else
  {
    v44 = 0xE000000000000000;
  }

  v45 = sub_1D2877DE8();
  v47 = v46;
  v48 = sub_1D2877DF8();
  v52 = v48;
  v125 = v43;
  v53 = v123;
  if (!v48)
  {

    sub_1D2872658();
    v49 = sub_1D2873CA8();
    v50 = sub_1D2878A18();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_1D226E000, v49, v50, "Failed to load sticker data", v51, 2u);
      MEMORY[0x1D38A3520](v51, -1, -1);
    }

LABEL_20:
    v121[1](v53, v122);
    return (*(v36 + 8))(v37, v18);
  }

  v113 = v45;
  v123 = v44;
  v124 = v47;
  v54 = sub_1D2877D98();
  v56 = v55;

  v57 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  sub_1D22D6CF8(v54, v56);
  sub_1D22D6CF8(v54, v56);
  v58 = sub_1D28716D8();
  v59 = [v57 initWithData_];

  sub_1D22D6D60(v54, v56);
  if (!v59)
  {
    sub_1D22D6D60(v54, v56);

    v53 = v114;
    sub_1D2872658();
    v93 = sub_1D2873CA8();
    v94 = sub_1D2878A18();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = v37;
      v96 = swift_slowAlloc();
      *v96 = 0;
      _os_log_impl(&dword_1D226E000, v93, v94, "Can not convert image glyph into an image", v96, 2u);
      MEMORY[0x1D38A3520](v96, -1, -1);

      sub_1D22D6D60(v54, v56);
      v121[1](v53, v122);
      return (*(v36 + 8))(v95, v18);
    }

    sub_1D22D6D60(v54, v56);
    goto LABEL_20;
  }

  v121 = v40;
  v122 = v18;
  v60 = sub_1D2630BC0();
  v61 = v117;
  v62 = v115;
  v63 = (v115 + v117[9]);
  *v63 = 0u;
  v63[1] = 0u;
  *(v62 + v61[10]) = xmmword_1D28809A0;
  v64 = v61[11];
  v65 = sub_1D2873AA8();
  (*(*(v65 - 8) + 56))(v62 + v64, 1, 1, v65);
  *v62 = v59;
  *(v62 + 8) = 2;
  v66 = v59;
  [v66 imageOrientation];
  *(v62 + 6) = sub_1D2878C88();
  *(v62 + 2) = v60;
  *(v62 + 4) = 0;
  *(v62 + 5) = 0;
  *(v62 + v61[12]) = 0;
  sub_1D2871808();

  v112 = v54;
  v114 = v56;
  sub_1D22D6D60(v54, v56);
  v67 = v119;
  sub_1D233FFEC(v62, v119, type metadata accessor for PlaygroundImage);
  v68 = v123;
  swift_bridgeObjectRetain_n();
  v69 = sub_1D28717B8();
  v110 = v70;
  v111 = v69;
  v115 = type metadata accessor for PlaygroundImage;
  v71 = v120;
  sub_1D233DEB0(v67, v120, type metadata accessor for PlaygroundImage);
  v72 = v127;
  v73 = v127[8];
  v74 = v116[7];
  v109 = v74;
  v75 = v118;
  v74(&v118[v73], 1, 1, v61);
  v76 = v72[9];
  v74(v75 + v76, 1, 1, v61);
  v77 = (v75 + v72[11]);
  *v77 = 0;
  v77[1] = 0;
  v116 = (v75 + v72[12]);
  v78 = v75 + v72[23];
  v79 = (v75 + v72[24]);
  *v79 = 0;
  v79[1] = 0;
  *(v75 + v72[25]) = 0;
  *(v75 + v72[26]) = 0;
  v80 = v125;
  v75[2] = v125;
  v75[3] = v68;
  v81 = v110;
  *v75 = v111;
  v75[1] = v81;
  v75[4] = v80;
  v75[5] = v68;
  sub_1D2870F68();
  sub_1D22BD238(v75 + v73, &unk_1EC6DE5A0);
  v82 = v71;
  v83 = v115;
  sub_1D233DEB0(v82, v75 + v73, v115);
  v84 = v75 + v73;
  v85 = v109;
  v109(v84, 0, 1, v61);
  sub_1D22BD238(v75 + v76, &unk_1EC6DE5A0);
  sub_1D233DEB0(v120, v75 + v76, v83);
  v85(v75 + v76, 0, 1, v61);
  *v78 = v80;
  *(v78 + 1) = v68;
  v86 = v113;
  v87 = v124;
  *(v78 + 2) = v113;
  *(v78 + 3) = v87;
  *(v78 + 4) = v80;
  *(v78 + 5) = v68;
  v78[48] = 1;
  v88 = v116;
  *v116 = 0;
  v88[1] = 0;
  v89 = (v75 + v72[13]);
  *v89 = 0;
  v89[1] = 0;
  if (v87)
  {
    v90 = (v75 + v72[14]);
    *v90 = v86;
    v90[1] = v87;
    v91 = (v75 + v72[17]);
    *v91 = 0;
    v91[1] = 0;
    v92 = v87;
  }

  else
  {
    v92 = v68;
    v97 = (v75 + v72[14]);
    *v97 = v80;
    v97[1] = v68;
    v98 = (v75 + v72[17]);
    *v98 = 0;
    v98[1] = 0;
    v86 = v80;
    v87 = v68;
  }

  v99 = (v75 + v72[15]);
  *v99 = v86;
  v99[1] = v92;
  v100 = (v75 + v72[18]);
  *v100 = 0;
  v100[1] = 0;
  swift_bridgeObjectRetain_n();
  v101 = (v75 + v72[16]);
  *v101 = v86;
  v101[1] = v87;
  v102 = (v75 + v72[19]);
  *v102 = 0;
  v102[1] = 0;
  *(v75 + v72[10]) = 0;
  *(v75 + v72[21]) = 1;
  *(v75 + v72[20]) = 0;
  v103 = v122;
  v104 = v128;
  v105 = v112;
  if (qword_1ED8A14E8 != -1)
  {
    swift_once();
  }

  v75[6] = qword_1ED8B0138;
  v106 = qword_1ED89E0E8;
  sub_1D2870F78();
  if (v106 != -1)
  {
    swift_once();
  }

  v107 = qword_1ED8B0058;
  sub_1D22FD9A8(v120, type metadata accessor for PlaygroundImage);
  *(v75 + v72[22]) = v107;
  sub_1D23098E0(&OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___footerViewModel, sub_1D23087E8);
  sub_1D22CDE80(v75);

  sub_1D22D6D60(v105, v114);
  sub_1D22FD9A8(v119, type metadata accessor for PlaygroundImage);
  (*(v104 + 8))(v126, v103);
  return sub_1D22FD9A8(v75, type metadata accessor for CuratedPrompt);
}

void sub_1D23247F4(char a1)
{
  v2 = sub_1D2872008();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      sub_1D2871EC8();
      v8 = sub_1D22FC2DC();
      v16 = v2;
      v17 = sub_1D233B278(&qword_1ED8A6C20, MEMORY[0x1E696E310]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
      (*(v3 + 16))(boxed_opaque_existential_1, v5, v2);
      type metadata accessor for AddImageConditioningRepresentationOperation();
      v10 = swift_allocObject();
      *(v10 + 32) = 0u;
      *(v10 + 48) = 0u;
      *(v10 + 64) = 0u;
      *(v10 + 80) = 0u;
      *(v10 + 96) = 0u;
      *(v10 + 16) = 0u;
      *(v10 + 112) = 1;
      *(v10 + 114) = 1;
      sub_1D227268C(&v15, v13);
      v14 = v8;
      swift_beginAccess();
      sub_1D22BD298(v13, v10 + 16, &qword_1EC6D9A18);
      swift_endAccess();
      *(v10 + 113) = 0;
      (*(v3 + 8))(v5, v2);
      v11 = *(v7 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_sessionUndoManager);
      sub_1D2870F78();
      sub_1D27FDB14();
      sub_1D27DF058(v10, v11);
    }
  }
}

uint64_t sub_1D2324A50@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v4 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__editingAsset);
  v5 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__editingAsset + 8);
  v6 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__editingAsset + 16);
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  return sub_1D233EBC4(v4);
}

uint64_t sub_1D2324B10()
{
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719D8();
}

id sub_1D2324BF0()
{
  v0 = sub_1D23C7998()[4];

  return v0;
}

uint64_t sub_1D2324C38()
{
  v1 = *v0;
  sub_1D28797D8();
  MEMORY[0x1D38A2260](v1);
  return sub_1D2879828();
}

uint64_t sub_1D2324C80()
{
  v1 = *v0;
  sub_1D28797D8();
  MEMORY[0x1D38A2260](v1);
  return sub_1D2879828();
}

uint64_t sub_1D2324CC4()
{
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v1 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isLoading);
  if (((*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__state) == 0) ^ v1))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D28719D8();
  }

  else
  {
    *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isLoading) = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__state) == 0;
    return sub_1D23068A8(v1);
  }
}

uint64_t sub_1D2324E34@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__state);
  return result;
}

uint64_t sub_1D2324F0C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v37 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v34 = &v32 - v4;
  v5 = sub_1D28720B8();
  v36 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v32 - v9;
  v11 = sub_1D2872428();
  v33 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D2872278();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v35 = a2;
    (*(v15 + 16))(v17, v37, v14);
    v19 = (*(v15 + 88))(v17, v14);
    if (v19 == *MEMORY[0x1E696E460])
    {
      v20 = swift_allocObject();
      swift_weakInit();
      sub_1D2870F78();
      sub_1D28720A8();
      v21 = sub_1D2872098();
      (*(v36 + 8))(v7, v5);
      if (v21)
      {
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_1D23098E0(&OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___footerViewModel, sub_1D23087E8);

          sub_1D22CB294(1, 0, 0);
        }
      }

      else
      {

        v25 = sub_1D28785F8();
        v26 = v34;
        (*(*(v25 - 8) + 56))(v34, 1, 1, v25);
        sub_1D2878568();
        sub_1D2870F78();
        v27 = sub_1D2878558();
        v28 = swift_allocObject();
        v29 = MEMORY[0x1E69E85E0];
        v28[2] = v27;
        v28[3] = v29;
        v28[4] = sub_1D2341598;
        v28[5] = v20;
        sub_1D22AE01C(0, 0, v26, &unk_1D2881A58, v28);
      }

      a2 = v35;
      result = (*(v15 + 8))(v17, v14);
    }

    else
    {
      if (v19 == *MEMORY[0x1E696E458])
      {
        (*(v15 + 96))(v17, v14);
        v22 = v33;
        (*(v33 + 32))(v13, v17, v11);
        sub_1D2872418();
        sub_1D2872928();
        v23 = sub_1D2872978();
        v24 = *(v23 - 8);
        if ((*(v24 + 48))(v10, 1, v23) != 1)
        {
          sub_1D2872968();
          (*(v24 + 8))(v10, v23);
          v30 = sub_1D2872008();
          v31 = v35;
          v35[3] = v30;
          v31[4] = sub_1D233B278(&qword_1ED8A6C20, MEMORY[0x1E696E310]);
          __swift_allocate_boxed_opaque_existential_1(v31);
          sub_1D2871EA8();

          return (*(v22 + 8))(v13, v11);
        }

        (*(v22 + 8))(v13, v11);

        result = sub_1D22BD238(v10, &qword_1EC6DA1E0);
      }

      else
      {

        result = (*(v15 + 8))(v17, v14);
      }

      a2 = v35;
    }
  }

  a2[4] = 0;
  *a2 = 0u;
  *(a2 + 1) = 0u;
  return result;
}

uint64_t sub_1D2325594()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D23098E0(&OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___footerViewModel, sub_1D23087E8);

    sub_1D22CB294(1, 0, 0);
  }

  return result;
}

uint64_t sub_1D2325628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1D2878568();
  v5[4] = sub_1D2878558();
  v7 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D23256C0, v7, v6);
}

uint64_t sub_1D23256C0()
{
  v1 = *(v0 + 16);

  v1(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D232572C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__onboardingSheetCancelled);
  return result;
}

uint64_t sub_1D23257DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1D22BD1D0(a1, &v6 - v3, &unk_1EC6DE5A0);
  return sub_1D22F95C0(v4);
}

uint64_t sub_1D2325888(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *a3;
  swift_beginAccess();
  sub_1D22D7384(a2, a1 + v7, a4);
  return swift_endAccess();
}

uint64_t sub_1D2325908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 209) = a5;
  *(v5 + 256) = a4;
  v6 = sub_1D2873CB8();
  *(v5 + 264) = v6;
  *(v5 + 272) = *(v6 - 8);
  *(v5 + 280) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA160);
  *(v5 + 288) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  *(v5 + 296) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9490);
  *(v5 + 304) = swift_task_alloc();
  v7 = type metadata accessor for ImageGeneration.PreviewImage(0);
  *(v5 + 312) = v7;
  v8 = *(v7 - 8);
  *(v5 + 320) = v8;
  *(v5 + 328) = *(v8 + 64);
  *(v5 + 336) = swift_task_alloc();
  *(v5 + 344) = swift_task_alloc();
  v9 = sub_1D2872008();
  *(v5 + 352) = v9;
  *(v5 + 360) = *(v9 - 8);
  *(v5 + 368) = swift_task_alloc();
  *(v5 + 376) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA168);
  *(v5 + 384) = swift_task_alloc();
  v10 = type metadata accessor for Analytics.ImageGenerationEventPayload();
  *(v5 + 392) = v10;
  *(v5 + 400) = *(v10 - 8);
  *(v5 + 408) = swift_task_alloc();
  *(v5 + 416) = sub_1D2878568();
  *(v5 + 424) = sub_1D2878558();
  v12 = sub_1D28784F8();
  *(v5 + 432) = v12;
  *(v5 + 440) = v11;

  return MEMORY[0x1EEE6DFA0](sub_1D2325C18, v12, v11);
}

uint64_t sub_1D2325C18()
{
  v1 = v0[47];
  v2 = v0[48];
  v4 = v0[45];
  v3 = v0[46];
  v5 = v0[44];
  sub_1D23450A0(v0[51]);
  v0[56] = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_analyticsContext;
  swift_beginAccess();
  sub_1D28792C8();
  v6 = sub_1D2879308();
  (*(*(v6 - 8) + 56))(v2, 0, 1, v6);
  _s16AnalyticsContextVMa(0);
  sub_1D25CE91C(v2, 1);
  swift_endAccess();
  v7 = sub_1D22FECC4();
  swift_getKeyPath();
  v0[27] = v7;
  sub_1D233B278(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
  sub_1D28719E8();

  v8 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__selectedItem;
  swift_beginAccess();
  (*(v4 + 16))(v1, &v7[v8], v5);

  sub_1D2871FC8();
  LOBYTE(v8) = MEMORY[0x1D389AA00](v1, v3);
  v9 = *(v4 + 8);
  v9(v3, v5);
  v9(v1, v5);
  if ((v8 & 1) == 0)
  {
LABEL_4:
    v13 = swift_task_alloc();
    v0[57] = v13;
    *v13 = v0;
    v13[1] = sub_1D2326258;

    return sub_1D2327C04();
  }

  v10 = v0[39];
  v11 = v0[40];
  v12 = v0[38];
  sub_1D2327204(v12);
  if ((*(v11 + 48))(v12, 1, v10) == 1)
  {
    sub_1D22BD238(v0[38], &qword_1EC6D9490);
    goto LABEL_4;
  }

  v16 = v0[42];
  v15 = v0[43];
  v17 = v0[40];
  v18 = v0[37];
  v19 = v0[38];
  v20 = v0[32];

  sub_1D233FFEC(v19, v15, type metadata accessor for ImageGeneration.PreviewImage);
  v21 = sub_1D28785F8();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  sub_1D233DEB0(v15, v16, type metadata accessor for ImageGeneration.PreviewImage);
  sub_1D2870F78();
  v22 = sub_1D2878558();
  v23 = (*(v17 + 80) + 40) & ~*(v17 + 80);
  v24 = swift_allocObject();
  v25 = MEMORY[0x1E69E85E0];
  v24[2] = v22;
  v24[3] = v25;
  v24[4] = v20;
  sub_1D233FFEC(v16, v24 + v23, type metadata accessor for ImageGeneration.PreviewImage);
  sub_1D22AE01C(0, 0, v18, &unk_1D2881578, v24);

  sub_1D22FD9A8(v15, type metadata accessor for ImageGeneration.PreviewImage);
  v27 = v0[50];
  v26 = v0[51];
  v28 = v0[49];
  v29 = v0[36];
  v30 = v0[32];
  swift_beginAccess();
  sub_1D2345B60(1);
  sub_1D2345B60(2);
  swift_endAccess();
  swift_getKeyPath();
  v0[29] = v30;
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v31 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentGenerationError;
  swift_beginAccess();
  sub_1D22BD1D0(v30 + v31, (v0 + 2), &qword_1EC6DA108);
  LODWORD(v31) = v0[5] != 0;
  sub_1D22BD238((v0 + 2), &qword_1EC6DA108);
  sub_1D233DEB0(v26, v29, type metadata accessor for Analytics.ImageGenerationEventPayload);
  (*(v27 + 56))(v29, 0, 1, v28);
  sub_1D2345DF8(v31, 2, 5, v29, 0);
  sub_1D22BD238(v29, &qword_1EC6DA160);
  sub_1D22FD9A8(v26, type metadata accessor for Analytics.ImageGenerationEventPayload);

  v32 = v0[1];

  return v32();
}

uint64_t sub_1D2326258(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 464) = a1;
  *(v4 + 472) = v1;

  v5 = *(v3 + 440);
  v6 = *(v3 + 432);
  if (v1)
  {
    v7 = sub_1D2326CB8;
  }

  else
  {
    v7 = sub_1D232639C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1D232639C()
{
  if (*(v0 + 209) == 1 && (v1 = *(v0 + 256), swift_getKeyPath(), *(v0 + 248) = v1, sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel), sub_1D28719E8(), , v2 = v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__editingAsset, v3 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__editingAsset), (*(v0 + 480) = v3) != 0))
  {
    *(v0 + 488) = *(v2 + 16);
    sub_1D2870F78();
    sub_1D2870F68();
    v4 = swift_task_alloc();
    *(v0 + 496) = v4;
    *v4 = v0;
    v4[1] = sub_1D232682C;

    return sub_1D2329478();
  }

  else
  {

    v6 = *(v0 + 296);
    v7 = *(v0 + 256);
    sub_1D2321FF8(*(v0 + 464));
    v8 = sub_1D28785F8();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    sub_1D2870F78();
    v9 = sub_1D2878558();
    v10 = swift_allocObject();
    v11 = MEMORY[0x1E69E85E0];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = v7;
    sub_1D22AE01C(0, 0, v6, &unk_1D2881560, v10);

    v13 = *(v0 + 400);
    v12 = *(v0 + 408);
    v14 = *(v0 + 392);
    v15 = *(v0 + 288);
    v16 = *(v0 + 256);
    swift_beginAccess();
    sub_1D2345B60(1);
    sub_1D2345B60(2);
    swift_endAccess();
    swift_getKeyPath();
    *(v0 + 232) = v16;
    sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719E8();

    v17 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentGenerationError;
    swift_beginAccess();
    sub_1D22BD1D0(v16 + v17, v0 + 16, &qword_1EC6DA108);
    LODWORD(v17) = *(v0 + 40) != 0;
    sub_1D22BD238(v0 + 16, &qword_1EC6DA108);
    sub_1D233DEB0(v12, v15, type metadata accessor for Analytics.ImageGenerationEventPayload);
    (*(v13 + 56))(v15, 0, 1, v14);
    sub_1D2345DF8(v17, 2, 5, v15, 0);
    sub_1D22BD238(v15, &qword_1EC6DA160);
    sub_1D22FD9A8(v12, type metadata accessor for Analytics.ImageGenerationEventPayload);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_1D232682C()
{
  v1 = *v0;

  v2 = *(v1 + 440);
  v3 = *(v1 + 432);

  return MEMORY[0x1EEE6DFA0](sub_1D232694C, v3, v2);
}

uint64_t sub_1D232694C()
{

  v1 = v0[37];
  v2 = v0[32];
  sub_1D2321FF8(v0[58]);
  v3 = sub_1D28785F8();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  sub_1D2870F78();
  v4 = sub_1D2878558();
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E85E0];
  v5[2] = v4;
  v5[3] = v6;
  v5[4] = v2;
  sub_1D22AE01C(0, 0, v1, &unk_1D2881560, v5);

  v8 = v0[50];
  v7 = v0[51];
  v9 = v0[49];
  v10 = v0[36];
  v11 = v0[32];
  swift_beginAccess();
  sub_1D2345B60(1);
  sub_1D2345B60(2);
  swift_endAccess();
  swift_getKeyPath();
  v0[29] = v11;
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v12 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentGenerationError;
  swift_beginAccess();
  sub_1D22BD1D0(v11 + v12, (v0 + 2), &qword_1EC6DA108);
  LODWORD(v12) = v0[5] != 0;
  sub_1D22BD238((v0 + 2), &qword_1EC6DA108);
  sub_1D233DEB0(v7, v10, type metadata accessor for Analytics.ImageGenerationEventPayload);
  (*(v8 + 56))(v10, 0, 1, v9);
  sub_1D2345DF8(v12, 2, 5, v10, 0);
  sub_1D22BD238(v10, &qword_1EC6DA160);
  sub_1D22FD9A8(v7, type metadata accessor for Analytics.ImageGenerationEventPayload);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1D2326CB8()
{
  v1 = v0;
  v2 = *(v0 + 472);

  sub_1D2872658();
  v3 = v2;
  v4 = sub_1D2873CA8();
  v5 = sub_1D2878A18();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 472);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1D226E000, v4, v5, "Upscaling failed with error: %@", v7, 0xCu);
    sub_1D22BD238(v8, qword_1EC6DA930);
    MEMORY[0x1D38A3520](v8, -1, -1);
    MEMORY[0x1D38A3520](v7, -1, -1);
  }

  v11 = *(v1 + 472);
  v13 = *(v1 + 272);
  v12 = *(v1 + 280);
  v14 = *(v1 + 264);

  (*(v13 + 8))(v12, v14);
  *(v1 + 224) = v11;
  v15 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
  if (swift_dynamicCast())
  {
    v30 = *(v1 + 472);
    v16 = *(v1 + 256);
    v17 = *(v1 + 192);
    v18 = *(v1 + 200);
    *(v1 + 80) = &type metadata for ImageGeneration.GenerationError;
    v19 = *(v1 + 208);
    *(v1 + 88) = sub_1D233D7E0();
    *(v1 + 56) = v17;
    *(v1 + 64) = v18;
    *(v1 + 72) = v19;
    swift_getKeyPath();
    v20 = swift_task_alloc();
    *(v20 + 16) = v16;
    *(v20 + 24) = v1 + 56;
    *(v1 + 240) = v16;
    sub_1D233E72C(v17, v18, v19);
    sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719D8();
    sub_1D22BCDC4(v17, v18, v19);

    sub_1D22BD238(v1 + 56, &qword_1EC6DA108);
  }

  else
  {
    if (qword_1EC6D8968 != -1)
    {
      swift_once();
    }

    v21 = *(v1 + 472);
    sub_1D25428EC(v21);
  }

  v23 = *(v1 + 400);
  v22 = *(v1 + 408);
  v24 = *(v1 + 392);
  v25 = *(v1 + 288);
  v26 = *(v1 + 256);
  swift_beginAccess();
  sub_1D2345B60(1);
  sub_1D2345B60(2);
  swift_endAccess();
  swift_getKeyPath();
  *(v1 + 232) = v26;
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v27 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentGenerationError;
  swift_beginAccess();
  sub_1D22BD1D0(v26 + v27, v1 + 16, &qword_1EC6DA108);
  LODWORD(v27) = *(v1 + 40) != 0;
  sub_1D22BD238(v1 + 16, &qword_1EC6DA108);
  sub_1D233DEB0(v22, v25, type metadata accessor for Analytics.ImageGenerationEventPayload);
  (*(v23 + 56))(v25, 0, 1, v24);
  sub_1D2345DF8(v27, 2, 5, v25, 0);
  sub_1D22BD238(v25, &qword_1EC6DA160);
  sub_1D22FD9A8(v22, type metadata accessor for Analytics.ImageGenerationEventPayload);

  v28 = *(v1 + 8);

  return v28();
}

uint64_t sub_1D2327204@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D2871818();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v38 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94F0);
  MEMORY[0x1EEE9AC00](v47);
  v7 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v46 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v51 = &v34 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34 - v13;
  v15 = type metadata accessor for ImageGeneration.PreviewImage(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v50 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v1;
  v18 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_previewsStore);
  swift_getKeyPath();
  v53 = v18;
  sub_1D233B278(&qword_1ED8A0FD0, type metadata accessor for GeneratedPreviewsStore);
  sub_1D28719E8();

  swift_beginAccess();
  v19 = *(v18 + 16);
  v45 = *(v19 + 16);
  if (v45)
  {
    v35 = v15;
    v36 = a1;
    v49 = v16;
    v43 = v19 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v41 = (v4 + 56);
    v42 = (v4 + 16);
    v20 = (v4 + 48);
    v37 = (v4 + 32);
    v40 = (v4 + 8);
    result = sub_1D2870F68();
    v22 = 0;
    v44 = v19;
    while (1)
    {
      if (v22 >= *(v19 + 16))
      {
        __break(1u);
        return result;
      }

      v24 = v50;
      sub_1D233DEB0(v43 + *(v49 + 72) * v22, v50, type metadata accessor for ImageGeneration.PreviewImage);
      (*v42)(v14, v24, v3);
      (*v41)(v14, 0, 1, v3);
      v25 = sub_1D22FFBF8();
      swift_getKeyPath();
      v52 = v25;
      sub_1D233B278(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
      sub_1D28719E8();

      v26 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__visiblePreviewID;
      swift_beginAccess();
      sub_1D22BD1D0(v25 + v26, v51, &qword_1EC6D8F70);
      v27 = v51;

      v28 = *(v47 + 48);
      sub_1D22BD1D0(v14, v7, &qword_1EC6D8F70);
      sub_1D22BD1D0(v27, &v7[v28], &qword_1EC6D8F70);
      v29 = *v20;
      if ((*v20)(v7, 1, v3) == 1)
      {
        sub_1D22BD238(v27, &qword_1EC6D8F70);
        sub_1D22BD238(v14, &qword_1EC6D8F70);
        v23 = v29(&v7[v28], 1, v3);
        v19 = v44;
        if (v23 == 1)
        {
          sub_1D22BD238(v7, &qword_1EC6D8F70);
LABEL_15:

          a1 = v36;
          sub_1D233FFEC(v50, v36, type metadata accessor for ImageGeneration.PreviewImage);
          v33 = 0;
LABEL_16:
          v15 = v35;
          v16 = v49;
          return (*(v16 + 56))(a1, v33, 1, v15);
        }
      }

      else
      {
        v30 = v46;
        sub_1D22BD1D0(v7, v46, &qword_1EC6D8F70);
        if (v29(&v7[v28], 1, v3) != 1)
        {
          v31 = v38;
          (*v37)(v38, &v7[v28], v3);
          sub_1D233B278(&unk_1ED8A6CA0, MEMORY[0x1E69695A8]);
          v39 = sub_1D2877F98();
          v32 = *v40;
          (*v40)(v31, v3);
          sub_1D22BD238(v51, &qword_1EC6D8F70);
          sub_1D22BD238(v14, &qword_1EC6D8F70);
          v32(v46, v3);
          sub_1D22BD238(v7, &qword_1EC6D8F70);
          v19 = v44;
          if (v39)
          {
            goto LABEL_15;
          }

          goto LABEL_5;
        }

        sub_1D22BD238(v51, &qword_1EC6D8F70);
        sub_1D22BD238(v14, &qword_1EC6D8F70);
        (*v40)(v30, v3);
        v19 = v44;
      }

      sub_1D22BD238(v7, &qword_1EC6D94F0);
LABEL_5:
      ++v22;
      result = sub_1D22FD9A8(v50, type metadata accessor for ImageGeneration.PreviewImage);
      if (v45 == v22)
      {

        v33 = 1;
        a1 = v36;
        goto LABEL_16;
      }
    }
  }

  v33 = 1;
  return (*(v16 + 56))(a1, v33, 1, v15);
}

uint64_t sub_1D2327948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  sub_1D2871818();
  v5[10] = swift_task_alloc();
  v5[11] = sub_1D2878568();
  v5[12] = sub_1D2878558();
  v7 = swift_task_alloc();
  v5[13] = v7;
  *v7 = v5;
  v7[1] = sub_1D2327A3C;

  return sub_1D2314CD8((v5 + 2), a5);
}

uint64_t sub_1D2327A3C()
{
  v1 = *v0;

  sub_1D233E658(v1 + 16);
  v3 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D2327B88, v3, v2);
}

uint64_t sub_1D2327B88()
{
  v1 = *(v0 + 80);

  sub_1D2871808();
  sub_1D22F8E60(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D2327C04()
{
  v1[24] = v0;
  v2 = sub_1D2871798();
  v1[25] = v2;
  v1[26] = *(v2 - 8);
  v1[27] = swift_task_alloc();
  v3 = sub_1D2872438();
  v1[28] = v3;
  v1[29] = *(v3 - 8);
  v1[30] = swift_task_alloc();
  type metadata accessor for PlaygroundImage();
  v1[31] = swift_task_alloc();
  v4 = sub_1D2873CB8();
  v1[32] = v4;
  v1[33] = *(v4 - 8);
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9490);
  v1[36] = swift_task_alloc();
  v5 = type metadata accessor for ImageGeneration.PreviewImage(0);
  v1[37] = v5;
  v1[38] = *(v5 - 8);
  v1[39] = swift_task_alloc();
  v1[40] = sub_1D2878568();
  v1[41] = sub_1D2878558();
  v7 = sub_1D28784F8();
  v1[42] = v7;
  v1[43] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D2327E80, v7, v6);
}

uint64_t sub_1D2327E80()
{
  if ((sub_1D23006FC() & 1) == 0)
  {

    goto LABEL_5;
  }

  v1 = v0[37];
  v2 = v0[38];
  v3 = v0[36];
  sub_1D23015FC(v3);
  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = v0[36];
  if (v4 == 1)
  {

    sub_1D22BD238(v5, &qword_1EC6D9490);
LABEL_5:
    sub_1D233E200();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();

    v7 = v0[1];

    return v7();
  }

  sub_1D233FFEC(v0[36], v0[39], type metadata accessor for ImageGeneration.PreviewImage);
  sub_1D2872658();
  v9 = sub_1D2873CA8();
  v10 = sub_1D2878A08();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1D226E000, v9, v10, "upscaling - state = .upscaling", v11, 2u);
    MEMORY[0x1D38A3520](v11, -1, -1);
  }

  v12 = v0[35];
  v13 = v0[32];
  v14 = v0[33];
  v15 = v0[24];

  v16 = *(v14 + 8);
  v16(v12, v13);
  v17 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__state;
  v0[44] = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__state;
  v18 = v0[24];
  if (*(v15 + v17) == 2)
  {
    sub_1D2324CC4();
  }

  else
  {
    swift_getKeyPath();
    v19 = swift_task_alloc();
    *(v19 + 16) = v18;
    *(v19 + 24) = 2;
    v0[14] = v18;
    sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719D8();
  }

  sub_1D22FFBF8();
  sub_1D25A4614();

  v20 = sub_1D23098E0(&OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___animatedEffectsViewModel, sub_1D2309250);
  v21 = swift_allocObject();
  *(v21 + 16) = 1;
  sub_1D2758420(v20, sub_1D233E978, v21);

  sub_1D2872658();
  v22 = sub_1D2873CA8();
  v23 = sub_1D2878A08();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_1D226E000, v22, v23, "upscaling - previewsViewModel.isGeneratingFinalImage = true", v24, 2u);
    MEMORY[0x1D38A3520](v24, -1, -1);
  }

  v25 = v0[34];
  v26 = v0[32];

  v16(v25, v26);
  v27 = sub_1D22FFBF8();
  if (*(v27 + 20) == 1)
  {
    *(v27 + 20) = 1;
  }

  else
  {
    v28 = v27;
    swift_getKeyPath();
    v29 = swift_task_alloc();
    *(v29 + 16) = v28;
    *(v29 + 24) = 1;
    v0[15] = v28;
    sub_1D233B278(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
    sub_1D28719D8();
  }

  v0[45] = sub_1D22FFBF8();
  v30 = swift_task_alloc();
  v0[46] = v30;
  *v30 = v0;
  v30[1] = sub_1D2328408;

  return sub_1D25A544C();
}

uint64_t sub_1D2328408()
{
  v1 = *v0;

  v2 = *(v1 + 344);
  v3 = *(v1 + 336);

  return MEMORY[0x1EEE6DFA0](sub_1D232854C, v3, v2);
}

uint64_t sub_1D232854C()
{
  v1 = v0[24];
  swift_getKeyPath();
  v0[16] = v1;
  v0[47] = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel___observationRegistrar;
  v0[48] = sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v2 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__previewsSavedInBackground;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16))
  {
    v4 = v0[39];
    sub_1D2870F68();
    v5 = sub_1D25D064C(v4);
    if (v6)
    {
      v7 = v5;

      v8 = *(*(v3 + 56) + 8 * v7);
      sub_1D2870F78();

      v9 = v0[39];
      sub_1D2329EA8(v0[24]);
      sub_1D22FD9A8(v9, type metadata accessor for ImageGeneration.PreviewImage);

      v10 = v0[1];

      return v10(v8);
    }
  }

  v12 = swift_task_alloc();
  v0[49] = v12;
  *v12 = v0;
  v12[1] = sub_1D23287A4;
  v13 = v0[39];
  v14 = v0[31];

  return sub_1D2316134(v14, v13);
}

uint64_t sub_1D23287A4()
{
  v2 = *v1;
  *(*v1 + 400) = v0;

  v3 = *(v2 + 344);
  v4 = *(v2 + 336);
  if (v0)
  {
    v5 = sub_1D23292E4;
  }

  else
  {
    v5 = sub_1D23288E0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D23288E0()
{
  v1 = *(v0 + 192) + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v0 + 248);
    v3 = *(v0 + 192);
    v4 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v4 + 16))(v3, v2, 0, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  v6 = *(v0 + 192);
  if (*(v6 + *(v0 + 352)) == 3)
  {
    sub_1D2324CC4();
  }

  else
  {
    swift_getKeyPath();
    v7 = swift_task_alloc();
    *(v7 + 16) = v6;
    *(v7 + 24) = 3;
    *(v0 + 144) = v6;
    sub_1D28719D8();
  }

  v8 = *(v0 + 192);
  swift_getKeyPath();
  *(v0 + 152) = v8;
  sub_1D28719E8();

  *(v0 + 456) = *(v8 + 40);
  swift_getKeyPath();
  *(v0 + 160) = v8;
  sub_1D28719E8();

  *(v0 + 457) = *(v8 + 40);
  *(v0 + 408) = sub_1D2878558();
  v10 = sub_1D28784F8();
  *(v0 + 416) = v10;
  *(v0 + 424) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D2328B08, v10, v9);
}

uint64_t sub_1D2328B08()
{
  if (qword_1EC6D8B40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 457);
  v2 = *(v0 + 240);
  v3 = *(v0 + 192);
  v4 = *(v0 + 456) != 1;
  v5 = qword_1EC6D8B50;
  type metadata accessor for GenerationRecipeFactory();
  sub_1D2461838(*(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_context), 1, v2);
  v6 = OBJC_IVAR____TtC23ImagePlaygroundInternal32GenerativePlaygroundPhotoLibrary_shouldFetchAssets;
  swift_beginAccess();
  *(v5 + v6) = v4;
  sub_1D2871778();
  v7 = swift_task_alloc();
  *(v0 + 432) = v7;
  *v7 = v0;
  v7[1] = sub_1D2328C64;
  v8 = *(v0 + 240);
  v9 = *(v0 + 248);
  v10 = *(v0 + 216);

  return sub_1D23DC984(v9, v8, v1 == 1, v10);
}

uint64_t sub_1D2328C64(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 208);
  v4[55] = v1;

  v6 = (v5 + 8);
  v7 = v4[27];
  v8 = v4[25];
  if (v1)
  {
    (*v6)(v7, v8);
    v9 = v4[52];
    v10 = v4[53];
    v11 = sub_1D23290A4;
  }

  else
  {
    v4[56] = a1;
    (*v6)(v7, v8);
    v9 = v4[52];
    v10 = v4[53];
    v11 = sub_1D2328DF0;
  }

  return MEMORY[0x1EEE6DFA0](v11, v9, v10);
}

uint64_t sub_1D2328DF0()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];

  (*(v2 + 8))(v1, v3);
  v4 = v0[42];
  v5 = v0[43];

  return MEMORY[0x1EEE6DFA0](sub_1D2328E7C, v4, v5);
}

uint64_t sub_1D2328E7C()
{
  v1 = v0[56];
  v2 = v0[39];
  v10 = v0[31];
  v3 = v0[24];

  swift_getKeyPath();
  v0[21] = v3;
  sub_1D2870F78();
  sub_1D28719E8();

  v0[22] = v3;
  swift_getKeyPath();
  sub_1D2871A08();

  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__previewsSavedAfterLeavingPlayground;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + v4);
  *(v3 + v4) = 0x8000000000000000;
  sub_1D24E8C28(v1, v2, isUniquelyReferenced_nonNull_native);
  *(v3 + v4) = v11;
  swift_endAccess();
  v0[23] = v3;
  swift_getKeyPath();
  sub_1D28719F8();

  sub_1D22FD9A8(v10, type metadata accessor for PlaygroundImage);
  v6 = v0[56];
  v7 = v0[39];
  sub_1D2329EA8(v0[24]);
  sub_1D22FD9A8(v7, type metadata accessor for ImageGeneration.PreviewImage);

  v8 = v0[1];

  return v8(v6);
}

uint64_t sub_1D23290A4()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];

  (*(v2 + 8))(v1, v3);
  v4 = v0[42];
  v5 = v0[43];

  return MEMORY[0x1EEE6DFA0](sub_1D2329130, v4, v5);
}

uint64_t sub_1D2329130()
{
  v1 = v0[31];

  sub_1D22FD9A8(v1, type metadata accessor for PlaygroundImage);
  v2 = v0[24];
  if (*(v2 + v0[44]) == 1)
  {
    sub_1D2324CC4();
  }

  else
  {
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = 1;
    v0[17] = v2;
    sub_1D28719D8();
  }

  v4 = v0[39];
  v5 = v0[24];
  swift_willThrow();
  sub_1D2329EA8(v5);
  sub_1D22FD9A8(v4, type metadata accessor for ImageGeneration.PreviewImage);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D23292E4()
{

  v1 = v0[24];
  if (*(v1 + v0[44]) == 1)
  {
    sub_1D2324CC4();
  }

  else
  {
    swift_getKeyPath();
    v2 = swift_task_alloc();
    *(v2 + 16) = v1;
    *(v2 + 24) = 1;
    v0[17] = v1;
    sub_1D28719D8();
  }

  v3 = v0[39];
  v4 = v0[24];
  swift_willThrow();
  sub_1D2329EA8(v4);
  sub_1D22FD9A8(v3, type metadata accessor for ImageGeneration.PreviewImage);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D2329478()
{
  v1[5] = v0;
  v2 = sub_1D2873CB8();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  sub_1D2878568();
  v1[9] = sub_1D2878558();
  v4 = sub_1D28784F8();
  v1[10] = v4;
  v1[11] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D232956C, v4, v3);
}

uint64_t sub_1D232956C()
{
  v1 = v0[5];
  swift_beginAccess();
  v2 = *(v1 + 80);
  v0[12] = v2;
  if (v2)
  {
    v3 = v0[5];
    v4 = v3[5];
    v5 = v3[6];
    __swift_project_boxed_opaque_existential_1(v3 + 2, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E3A10);
    v6 = swift_allocObject();
    v0[13] = v6;
    *(v6 + 16) = xmmword_1D28809B0;
    *(v6 + 32) = v2;
    v7 = off_1EEC2A9B8;
    v8 = v2;
    v12 = (v7 + *v7);
    v9 = swift_task_alloc();
    v0[14] = v9;
    *v9 = v0;
    v9[1] = sub_1D2329760;

    return v12(v6, v4, v5);
  }

  else
  {

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1D2329760()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_1D23298EC;
  }

  else
  {

    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_1D232987C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D232987C()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D23298EC()
{
  v1 = v0[15];

  sub_1D28724F8();
  v2 = v1;
  v3 = sub_1D2873CA8();
  v4 = sub_1D2878A18();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[15];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1D226E000, v3, v4, "Failed to delete asset with error: %@", v6, 0xCu);
    sub_1D22BD238(v7, qword_1EC6DA930);
    MEMORY[0x1D38A3520](v7, -1, -1);
    MEMORY[0x1D38A3520](v6, -1, -1);
  }

  v11 = v0[7];
  v10 = v0[8];
  v12 = v0[6];

  (*(v11 + 8))(v10, v12);
  if (qword_1EC6D8968 != -1)
  {
    swift_once();
  }

  v13 = v0[15];
  v14 = v0[12];
  sub_1D25428EC(v13);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1D2329ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1D2879328();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_1D2878568();
  v4[6] = sub_1D2878558();
  v7 = sub_1D28784F8();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D2329BC0, v7, v6);
}

uint64_t sub_1D2329BC0()
{
  v1 = sub_1D2879908();
  v3 = v2;
  sub_1D2879718();
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_1D2329CA4;

  return sub_1D233BA38(v1, v3, 0, 0, 1);
}

uint64_t sub_1D2329CA4()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[5];
  v5 = v2[4];
  v6 = v2[3];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[7];
    v8 = v3[8];
    v9 = sub_1D2341594;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[7];
    v8 = v3[8];
    v9 = sub_1D2329E38;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1D2329E38()
{

  ComposingViewModel.reset()();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D2329EA8(uint64_t a1)
{
  v2 = sub_1D23098E0(&OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___animatedEffectsViewModel, sub_1D2309250);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  sub_1D2758420(v2, sub_1D23418C4, v3);

  v4 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___animatedEffectsViewModel);
  sub_1D2870F78();
  sub_1D277E434(2uLL, 128, 1, v4);

  v5 = sub_1D22FFBF8();
  if (*(v5 + 20))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D233B278(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
    sub_1D28719D8();
  }

  else
  {
    *(v5 + 20) = 0;
  }
}

uint64_t sub_1D232A08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a4;
  v5 = sub_1D2879308();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v6 = sub_1D2879328();
  v4[19] = v6;
  v4[20] = *(v6 - 8);
  v4[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA230);
  v4[24] = swift_task_alloc();
  v7 = sub_1D2873CB8();
  v4[25] = v7;
  v4[26] = *(v7 - 8);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D232A298, 0, 0);
}

uint64_t sub_1D232A298()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
LABEL_4:

    v3 = *(v0 + 8);

    return v3();
  }

  v2 = Strong;
  *(v0 + 232) = Strong;
  if (sub_1D28786D8())
  {

    goto LABEL_4;
  }

  sub_1D28726A8();
  v5 = sub_1D2873CA8();
  v6 = sub_1D2878A38();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1D226E000, v5, v6, "Continually polling spotlight for model availability", v7, 2u);
    MEMORY[0x1D38A3520](v7, -1, -1);
  }

  v8 = *(v0 + 224);
  v9 = *(v0 + 200);
  v10 = *(v0 + 208);
  v11 = *(v0 + 184);
  v12 = *(v0 + 192);
  v13 = *(v0 + 176);

  v14 = *(v10 + 8);
  v14(v8, v9);
  sub_1D2872188();
  v15 = sub_1D2871848();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = MEMORY[0x1D389ABD0](v12);
  sub_1D22BD238(v12, &qword_1EC6DA230);
  v17 = sub_1D28785F8();
  v18 = *(v17 - 8);
  (*(v18 + 56))(v11, 1, 1, v17);
  sub_1D2878568();
  sub_1D2870F78();
  v19 = sub_1D2878558();
  v20 = swift_allocObject();
  v21 = MEMORY[0x1E69E85E0];
  *(v20 + 16) = v19;
  *(v20 + 24) = v21;
  *(v20 + 32) = v2;
  *(v20 + 40) = v16 & 1;
  sub_1D22BD1D0(v11, v13, &qword_1EC6D8E60);
  LODWORD(v13) = (*(v18 + 48))(v13, 1, v17);
  sub_1D2870F78();
  v22 = *(v0 + 176);
  if (v13 == 1)
  {
    sub_1D22BD238(*(v0 + 176), &qword_1EC6D8E60);
  }

  else
  {
    sub_1D28785E8();
    (*(v18 + 8))(v22, v17);
  }

  v23 = *(v20 + 16);
  swift_unknownObjectRetain();

  if (v23)
  {
    swift_getObjectType();
    v24 = sub_1D28784F8();
    v26 = v25;
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  sub_1D22BD238(*(v0 + 184), &qword_1EC6D8E60);
  v27 = swift_allocObject();
  *(v27 + 16) = &unk_1D2881F98;
  *(v27 + 24) = v20;
  if (v26 | v24)
  {
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = v24;
    *(v0 + 40) = v26;
  }

  swift_task_create();

  if (v16)
  {
    sub_1D28726A8();
    v28 = sub_1D2873CA8();
    v29 = sub_1D2878A38();
    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 216);
    v32 = *(v0 + 200);
    if (v30)
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1D226E000, v28, v29, "Spotlight assets are available; stopping polling", v33, 2u);
      MEMORY[0x1D38A3520](v33, -1, -1);
    }

    else
    {
    }

    v14(v31, v32);
    goto LABEL_4;
  }

  v35 = *(v0 + 128);
  v34 = *(v0 + 136);
  v36 = *(v0 + 120);
  sub_1D2879718();
  *(v0 + 96) = xmmword_1D28809C0;
  *(v0 + 80) = 0;
  *(v0 + 72) = 0;
  *(v0 + 88) = 1;
  v37 = sub_1D233B278(&qword_1ED89CBF8, MEMORY[0x1E69E8820]);
  sub_1D28796F8();
  sub_1D233B278(&qword_1ED89CC00, MEMORY[0x1E69E87E8]);
  sub_1D2879338();
  v38 = *(v35 + 8);
  *(v0 + 240) = v38;
  *(v0 + 248) = (v35 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v38(v34, v36);
  v39 = swift_task_alloc();
  *(v0 + 256) = v39;
  *v39 = v0;
  v39[1] = sub_1D232A910;
  v41 = *(v0 + 144);
  v40 = *(v0 + 152);

  return MEMORY[0x1EEE6DE58](v41, v0 + 72, v40, v37);
}

uint64_t sub_1D232A910()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    (*(v2 + 240))(*(v2 + 144), *(v2 + 120));
    v3 = sub_1D232B0D4;
  }

  else
  {
    v5 = *(v2 + 160);
    v4 = *(v2 + 168);
    v6 = *(v2 + 152);
    (*(v2 + 240))(*(v2 + 144), *(v2 + 120));
    (*(v5 + 8))(v4, v6);
    v3 = sub_1D232AA68;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D232AA68()
{

  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
LABEL_4:

    v3 = *(v0 + 8);

    return v3();
  }

  v2 = Strong;
  *(v0 + 232) = Strong;
  if (sub_1D28786D8())
  {

    goto LABEL_4;
  }

  sub_1D28726A8();
  v5 = sub_1D2873CA8();
  v6 = sub_1D2878A38();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1D226E000, v5, v6, "Continually polling spotlight for model availability", v7, 2u);
    MEMORY[0x1D38A3520](v7, -1, -1);
  }

  v8 = *(v0 + 224);
  v9 = *(v0 + 200);
  v10 = *(v0 + 208);
  v11 = *(v0 + 184);
  v12 = *(v0 + 192);
  v13 = *(v0 + 176);

  v14 = *(v10 + 8);
  v14(v8, v9);
  sub_1D2872188();
  v15 = sub_1D2871848();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = MEMORY[0x1D389ABD0](v12);
  sub_1D22BD238(v12, &qword_1EC6DA230);
  v17 = sub_1D28785F8();
  v18 = *(v17 - 8);
  (*(v18 + 56))(v11, 1, 1, v17);
  sub_1D2878568();
  sub_1D2870F78();
  v19 = sub_1D2878558();
  v20 = swift_allocObject();
  v21 = MEMORY[0x1E69E85E0];
  *(v20 + 16) = v19;
  *(v20 + 24) = v21;
  *(v20 + 32) = v2;
  *(v20 + 40) = v16 & 1;
  sub_1D22BD1D0(v11, v13, &qword_1EC6D8E60);
  LODWORD(v13) = (*(v18 + 48))(v13, 1, v17);
  sub_1D2870F78();
  v22 = *(v0 + 176);
  if (v13 == 1)
  {
    sub_1D22BD238(*(v0 + 176), &qword_1EC6D8E60);
  }

  else
  {
    sub_1D28785E8();
    (*(v18 + 8))(v22, v17);
  }

  v23 = *(v20 + 16);
  swift_unknownObjectRetain();

  if (v23)
  {
    swift_getObjectType();
    v24 = sub_1D28784F8();
    v26 = v25;
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  sub_1D22BD238(*(v0 + 184), &qword_1EC6D8E60);
  v27 = swift_allocObject();
  *(v27 + 16) = &unk_1D2881F98;
  *(v27 + 24) = v20;
  if (v26 | v24)
  {
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = v24;
    *(v0 + 40) = v26;
  }

  swift_task_create();

  if (v16)
  {
    sub_1D28726A8();
    v28 = sub_1D2873CA8();
    v29 = sub_1D2878A38();
    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 216);
    v32 = *(v0 + 200);
    if (v30)
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1D226E000, v28, v29, "Spotlight assets are available; stopping polling", v33, 2u);
      MEMORY[0x1D38A3520](v33, -1, -1);
    }

    else
    {
    }

    v14(v31, v32);
    goto LABEL_4;
  }

  v35 = *(v0 + 128);
  v34 = *(v0 + 136);
  v36 = *(v0 + 120);
  sub_1D2879718();
  *(v0 + 96) = xmmword_1D28809C0;
  *(v0 + 80) = 0;
  *(v0 + 72) = 0;
  *(v0 + 88) = 1;
  v37 = sub_1D233B278(&qword_1ED89CBF8, MEMORY[0x1E69E8820]);
  sub_1D28796F8();
  sub_1D233B278(&qword_1ED89CC00, MEMORY[0x1E69E87E8]);
  sub_1D2879338();
  v38 = *(v35 + 8);
  *(v0 + 240) = v38;
  *(v0 + 248) = (v35 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v38(v34, v36);
  v39 = swift_task_alloc();
  *(v0 + 256) = v39;
  *v39 = v0;
  v39[1] = sub_1D232A910;
  v41 = *(v0 + 144);
  v40 = *(v0 + 152);

  return MEMORY[0x1EEE6DE58](v41, v0 + 72, v40, v37);
}

uint64_t sub_1D232B0D4()
{
  (*(v0[20] + 8))(v0[21], v0[19]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D232B1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 32) = a5;
  *(v5 + 16) = a4;
  sub_1D2878568();
  *(v5 + 24) = sub_1D2878558();
  v7 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D232B260, v7, v6);
}

uint64_t sub_1D232B260()
{
  v1 = *(v0 + 32);

  sub_1D232B2CC(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D232B2CC(int a1)
{
  v2 = v1;
  v4 = a1 & 1;
  v5 = sub_1D2873CB8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v9 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel___observationRegistrar;
  v18 = v2;
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  v17[1] = v9;
  sub_1D28719E8();

  v11 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isSpotlightModelsAvailable;
  v12 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isSpotlightModelsAvailable);
  if (v12 != v4)
  {
    sub_1D28726A8();
    v13 = sub_1D2873CA8();
    v14 = sub_1D2878A38();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 67109120;
      *(v15 + 4) = a1 & 1;
      _os_log_impl(&dword_1D226E000, v13, v14, "updateSpotlightModelsAvailability: Spotlight models availability changed: new value: %{BOOL}d", v15, 8u);
      MEMORY[0x1D38A3520](v15, -1, -1);
    }

    result = (*(v6 + 8))(v8, v5);
    v12 = *(v2 + v11);
  }

  if ((v12 ^ a1))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v17[-2] = v2;
    LOBYTE(v17[-1]) = a1 & 1;
    v18 = v2;
    sub_1D28719D8();
  }

  else
  {
    *(v2 + v11) = a1 & 1;
  }

  return result;
}

uint64_t sub_1D232B560()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - v3;
  v5 = sub_1D2873CB8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v20 = v0;
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v10 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isPrewarming;
  if ((*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isPrewarming) & 1) == 0)
  {
    swift_getKeyPath();
    v20 = v0;
    sub_1D28719E8();

    if ((*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isPrewarmingDone) & 1) == 0)
    {
      if (*(v0 + v10) == 1)
      {
        *(v0 + v10) = 1;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        *(&v19 - 2) = v0;
        *(&v19 - 8) = 1;
        v20 = v0;
        sub_1D28719D8();
      }

      sub_1D2872658();
      v12 = sub_1D2873CA8();
      v13 = sub_1D28789F8();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_1D226E000, v12, v13, "Prewarming VGF.", v14, 2u);
        MEMORY[0x1D38A3520](v14, -1, -1);
      }

      (*(v6 + 8))(v8, v5);
      v15 = sub_1D28785F8();
      (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
      sub_1D2878568();
      sub_1D2870F78();
      v16 = sub_1D2878558();
      v17 = swift_allocObject();
      v18 = MEMORY[0x1E69E85E0];
      v17[2] = v16;
      v17[3] = v18;
      v17[4] = v1;
      sub_1D22AE01C(0, 0, v4, &unk_1D2881EC8, v17);
    }
  }

  return result;
}

uint64_t sub_1D232B904(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2872818();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v45 = &v34 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v40 = &v34 - v11;
  v12 = *(a2 + 16);
  if (!v12)
  {
    return 1;
  }

  v13 = *(a1 + 16);
  if (!v13)
  {
    return 1;
  }

  if (v12 >= v13)
  {
    v14 = a1;
  }

  else
  {
    v14 = a2;
  }

  if (v12 < v13)
  {
    a2 = a1;
  }

  v15 = v14 + 56;
  v16 = 1 << *(v14 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(v14 + 56);
  v19 = (v16 + 63) >> 6;
  v43 = v5 + 16;
  v38 = v5 + 32;
  v39 = v14;
  v41 = a2 + 56;
  v20 = (v5 + 8);
  sub_1D2870F68();
  v44 = a2;
  result = sub_1D2870F68();
  v22 = 0;
  v35 = v19;
  v36 = v15;
  v37 = v5;
  while (v18)
  {
LABEL_18:
    v24 = v40;
    v25 = *(v39 + 48);
    v42 = *(v5 + 72);
    v26 = *(v5 + 16);
    v26(v40, v25 + v42 * (__clz(__rbit64(v18)) | (v22 << 6)), v4);
    (*(v5 + 32))(v45, v24, v4);
    if (*(v44 + 16))
    {
      v27 = v44;
      sub_1D233B278(&qword_1EC6DA220, MEMORY[0x1E69A1168]);
      v28 = sub_1D2877EF8();
      v29 = -1 << *(v27 + 32);
      v30 = v28 & ~v29;
      if ((*(v41 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30))
      {
        v31 = ~v29;
        while (1)
        {
          v26(v8, *(v44 + 48) + v30 * v42, v4);
          sub_1D233B278(&qword_1EC6DA228, MEMORY[0x1E69A1168]);
          v32 = sub_1D2877F98();
          v33 = *v20;
          (*v20)(v8, v4);
          if (v32)
          {
            break;
          }

          v30 = (v30 + 1) & v31;
          if (((*(v41 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        v33(v45, v4);
        return 0;
      }
    }

LABEL_12:
    v18 &= v18 - 1;
    result = (*v20)(v45, v4);
    v15 = v36;
    v5 = v37;
    v19 = v35;
  }

  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v23 >= v19)
    {

      return 1;
    }

    v18 = *(v15 + 8 * v23);
    ++v22;
    if (v18)
    {
      v22 = v23;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D232BCC4()
{
  v1 = sub_1D2873CB8();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = sub_1D2873B78();
  v0[5] = v2;
  v0[6] = *(v2 - 8);
  v0[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D232BDDC, 0, 0);
}

uint64_t sub_1D232BDDC()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_1D2873B98();
  (*(v2 + 104))(v1, *MEMORY[0x1E6994FD8], v3);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1D232BEB8;
  v5 = v0[7];

  return MEMORY[0x1EEDF4390](v5);
}

uint64_t sub_1D232BEB8()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *v1;
  *(v5 + 72) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D232C06C, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1D232C06C()
{
  v1 = v0[9];
  sub_1D28726A8();
  v2 = v1;
  v3 = sub_1D2873CA8();
  v4 = sub_1D2878A18();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[9];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1D226E000, v3, v4, "Error clearing CFU: %@", v7, 0xCu);
    sub_1D22BD238(v8, qword_1EC6DA930);
    MEMORY[0x1D38A3520](v8, -1, -1);
    MEMORY[0x1D38A3520](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[3] + 8))(v0[4], v0[2]);

  v11 = v0[1];

  return v11();
}

void sub_1D232C200(void *a1)
{
  v2 = sub_1D2873CB8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v6 = a1;
    sub_1D28725B8();
    v7 = a1;
    v8 = sub_1D2873CA8();
    v9 = sub_1D2878A18();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = a1;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_1D226E000, v8, v9, "Cannot select representation with error: %@", v10, 0xCu);
      sub_1D22BD238(v11, qword_1EC6DA930);
      MEMORY[0x1D38A3520](v11, -1, -1);
      MEMORY[0x1D38A3520](v10, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    if (qword_1EC6D8968 != -1)
    {
      swift_once();
    }

    sub_1D25428EC(a1);
  }
}

uint64_t sub_1D232C410@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isPrewarming);
  return result;
}

uint64_t sub_1D232C4D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isPrewarmingDone);
  return result;
}

uint64_t sub_1D232C5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = sub_1D2873CB8();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v4[8] = sub_1D2878568();
  v4[9] = sub_1D2878558();
  v7 = sub_1D28784F8();
  v4[10] = v7;
  v4[11] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D232C6C4, v7, v6);
}

uint64_t sub_1D232C6C4()
{
  *(v0 + 96) = sub_1D2878558();
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_1D232C7A4;

  return MEMORY[0x1EEE6DBF8]();
}

uint64_t sub_1D232C7A4()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1D232C8E8, v3, v2);
}

uint64_t sub_1D232C8E8()
{
  v1 = v0[4];

  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isPrewarmingDone) == 1)
  {
    *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isPrewarmingDone) = 1;
  }

  else
  {
    v2 = v0[4];
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = 1;
    v0[2] = v2;
    sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719D8();
  }

  sub_1D2872658();
  v4 = sub_1D2873CA8();
  v5 = sub_1D28789F8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1D226E000, v4, v5, "Prewarming VGF done.", v6, 2u);
    MEMORY[0x1D38A3520](v6, -1, -1);
  }

  v8 = v0[6];
  v7 = v0[7];
  v10 = v0[4];
  v9 = v0[5];

  (*(v8 + 8))(v7, v9);
  swift_getKeyPath();
  v0[3] = v10;
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  if (*(v10 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shouldPrewarmKeyFaces) == 1)
  {
    sub_1D23C8400();
    ImageKeyFaceLoader.startPrewarm()();
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D232CB7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  v3[4] = swift_task_alloc();
  sub_1D2878568();
  v3[5] = sub_1D2878558();
  v5 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D232CC4C, v5, v4);
}

uint64_t sub_1D232CC4C()
{
  v1 = v0[4];
  v2 = v0[3];

  v3 = sub_1D28785F8();
  v4 = *(*(v3 - 8) + 56);
  v4(v1, 1, 1, v3);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v2;
  sub_1D2870F78();
  sub_1D232D80C(v1, &unk_1D2881EE8, v5);
  sub_1D22BD238(v1, &qword_1EC6D8E60);
  v4(v1, 1, 1, v3);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v2;
  sub_1D2870F78();
  sub_1D232D80C(v1, &unk_1D2881EF8, v6);
  sub_1D22BD238(v1, &qword_1EC6D8E60);
  v7 = sub_1D23C6F18();
  v4(v1, 1, 1, v3);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v7;
  sub_1D232D80C(v1, &unk_1D2881F08, v8);
  sub_1D22BD238(v1, &qword_1EC6D8E60);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1D232CE80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1D2873CB8();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  v4[6] = swift_task_alloc();
  v6 = sub_1D28729E8();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA118) - 8);
  v4[10] = v7;
  v4[11] = *(v7 + 64);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D232D04C, 0, 0);
}

uint64_t sub_1D232D04C()
{
  static ExecutionContext.clientIdentity()(v0[9]);
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_1D232D0F0;
  v2 = v0[13];
  v3 = v0[9];

  return MEMORY[0x1EEE4F750](v2, v3);
}

uint64_t sub_1D232D0F0()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  *(*v1 + 120) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1D232D41C;
  }

  else
  {
    v5 = sub_1D232D260;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D232D260()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[6];
  v5 = v0[2];
  v6 = sub_1D28785F8();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  sub_1D22BD1D0(v1, v2, &qword_1EC6DA118);
  sub_1D2878568();
  sub_1D2870F78();
  v7 = sub_1D2878558();
  v8 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v7;
  v9[3] = v10;
  v9[4] = v5;
  sub_1D22EC9BC(v2, v9 + v8, &qword_1EC6DA118);
  sub_1D22AE01C(0, 0, v4, &unk_1D2881F28, v9);

  sub_1D22BD238(v1, &qword_1EC6DA118);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D232D41C()
{
  v1 = v0[15];
  sub_1D2872658();
  v2 = v1;
  v3 = sub_1D2873CA8();
  v4 = sub_1D2878A18();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[15];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1D226E000, v3, v4, "failed to prewarm dependencies: %@", v7, 0xCu);
    sub_1D22BD238(v8, qword_1EC6DA930);
    MEMORY[0x1D38A3520](v8, -1, -1);
    MEMORY[0x1D38A3520](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[4] + 8))(v0[5], v0[3]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D232D5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA118);
  v5[5] = swift_task_alloc();
  sub_1D2878568();
  v5[6] = sub_1D2878558();
  v7 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D232D69C, v7, v6);
}

uint64_t sub_1D232D69C()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];

  sub_1D22BD1D0(v2, v1, &qword_1EC6DA118);
  swift_getKeyPath();
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  v0[2] = v3;
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719D8();

  sub_1D22BD238(v1, &qword_1EC6DA118);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D232D80C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v20 - v9;
  sub_1D22BD1D0(a1, v20 - v9, &qword_1EC6D8E60);
  v11 = sub_1D28785F8();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1D22BD238(v10, &qword_1EC6D8E60);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_1D28784F8();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1D28785E8();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v4;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v18 = (v15 | v13);
  if (v15 | v13)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v13;
    v21[3] = v15;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v16;
  swift_task_create();
}

uint64_t sub_1D232DA44()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_servicesFetcher);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1D232DAF8;

  return sub_1D25DB284(v1);
}

uint64_t sub_1D232DAF8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D232DBEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1D2878568();
  v4[3] = sub_1D2878558();
  v6 = sub_1D28784F8();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D232DC84, v6, v5);
}

uint64_t sub_1D232DC84()
{
  v1 = v0[3];
  v0[6] = sub_1D2459EB8();
  sub_1D2870F78();
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_1D232DD58;
  v3 = MEMORY[0x1E69E85E0];

  return sub_1D25F6EAC(v1, v3, 0);
}

uint64_t sub_1D232DD58()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_1D22BE034;
  }

  else
  {

    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_1D22ADFBC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D232DED4()
{
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isPrewarmingDone) == 1)
  {
    sub_1D23C8400();
    ImageKeyFaceLoader.startPrewarm()();
  }

  else if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shouldPrewarmKeyFaces) == 1)
  {
    *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shouldPrewarmKeyFaces) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D232E0A0@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  v9 = v3;
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v7 = *a1;
  swift_beginAccess();
  return sub_1D22BD1D0(v9 + v7, a3, a2);
}

uint64_t sub_1D232E1A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t *a3@<X5>, uint64_t a4@<X8>)
{
  v7 = *a1;
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v8 = *a2;
  swift_beginAccess();
  return sub_1D22BD1D0(v7 + v8, a4, a3);
}

uint64_t sub_1D232E288(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v13[-v9];
  sub_1D22BD1D0(a1, &v13[-v9], a5);
  v11 = *a2;
  swift_getKeyPath();
  v14 = v11;
  v15 = v10;
  v16 = v11;
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719D8();

  return sub_1D22BD238(v10, a5);
}

uint64_t sub_1D232E3E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__recipeToLoadContainsPhoto);
  return result;
}

uint64_t sub_1D232E4F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__pendingSwitchingToExternalProviderAsTheOnlyStyle);
  return result;
}

uint64_t sub_1D232E5B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__confirmShareFromAlert);
  return result;
}

uint64_t sub_1D232E6C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__hideStylePickerPendingSetAllowedStyles);
  return result;
}

uint64_t sub_1D232E770()
{
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v1 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__externalSharingAlertPersonName);
  sub_1D2870F68();
  return v1;
}

uint64_t sub_1D232E82C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v4 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__externalSharingAlertPersonName + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__externalSharingAlertPersonName);
  a2[1] = v4;
  return sub_1D2870F68();
}

uint64_t sub_1D232E8E4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1D2870F68();
  return sub_1D22F97E4(v1, v2);
}

uint64_t sub_1D232E924(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDE70);
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A80);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v45 = &v41 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v41 - v15;
  v46 = 0;
  v17 = sub_1D2872008();
  v41 = *(v17 - 8);
  result = MEMORY[0x1EEE9AC00](v17);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_getKeyPath();
    v49 = v2;
    sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719E8();

    if ((*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shouldShowExternalSharingAlert) & 1) == 0)
    {
      swift_getKeyPath();
      v49 = v2;
      sub_1D28719E8();

      if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__pendingSwitchingToExternalProviderAsTheOnlyStyle) == 1)
      {
        swift_getKeyPath();
        v49 = v2;
        sub_1D28719E8();

        if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__confirmShareFromAlert) == 1)
        {
          v22 = sub_1D22FECC4(v21);
          sub_1D2871EC8();
          if (sub_1D2647D00(v20))
          {

            v23 = v41;
          }

          else
          {
            v23 = v41;
            (*(v41 + 16))(v16, v20, v17);
            (*(v23 + 56))(v16, 0, 1, v17);
            sub_1D26483DC(v16);
            sub_1D22BD238(v16, &qword_1EC6D9A30);
            swift_getKeyPath();
            v49 = v22;
            sub_1D233B278(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
            sub_1D28719E8();

            if (swift_unknownObjectWeakLoadStrong())
            {
              sub_1D2336D70(&unk_1D28810F8, &OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__waitForSwitchingToExternalStyleContinuation, sub_1D2341488);

              swift_unknownObjectRelease();
            }

            else
            {
            }
          }

          result = (*(v23 + 8))(v20, v17);
        }

        else
        {
          swift_getKeyPath();
          v49 = v2;
          sub_1D28719E8();

          v27 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__waitForSwitchingToExternalStyleContinuation;
          swift_beginAccess();
          sub_1D22BD1D0(v2 + v27, v13, &qword_1EC6D9A80);
          v29 = v43;
          v28 = v44;
          if ((*(v43 + 48))(v13, 1, v44))
          {
            sub_1D22BD238(v13, &qword_1EC6D9A80);
          }

          else
          {
            v33 = v42;
            (*(v29 + 16))(v42, v13, v28);
            sub_1D22BD238(v13, &qword_1EC6D9A80);
            sub_1D2878518();
            (*(v29 + 8))(v33, v28);
          }

          v34 = v45;
          (*(v29 + 56))(v45, 1, 1, v28);
          KeyPath = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](KeyPath);
          *(&v41 - 2) = v2;
          *(&v41 - 1) = v34;
          v47 = v2;
          sub_1D28719D8();

          sub_1D22BD238(v34, &qword_1EC6D9A80);
          v36 = v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_delegate;
          swift_beginAccess();
          result = swift_unknownObjectWeakLoadStrong();
          if (result)
          {
            v37 = *(v36 + 8);
            ObjectType = swift_getObjectType();
            (*(v37 + 8))(v2, 0, ObjectType, v37);
            result = swift_unknownObjectRelease();
          }
        }
      }

      else
      {
        swift_getKeyPath();
        v49 = v2;
        sub_1D28719E8();

        v24 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__pauseRecipeLoadingForConfirmationContinuation;
        swift_beginAccess();
        sub_1D22BD1D0(v2 + v24, v9, &qword_1EC6D9A80);
        v26 = v43;
        v25 = v44;
        if ((*(v43 + 48))(v9, 1, v44))
        {
          sub_1D22BD238(v9, &qword_1EC6D9A80);
        }

        else
        {
          v30 = v42;
          (*(v26 + 16))(v42, v9, v25);
          sub_1D22BD238(v9, &qword_1EC6D9A80);
          sub_1D2878518();
          (*(v26 + 8))(v30, v25);
        }

        v31 = v45;
        (*(v26 + 56))(v45, 1, 1, v25);
        v32 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v32);
        *(&v41 - 2) = v2;
        *(&v41 - 1) = v31;
        v47 = v2;
        sub_1D28719D8();

        result = sub_1D22BD238(v31, &qword_1EC6D9A80);
      }

      v39 = (v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__externalSharingAlertPersonName);
      if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__externalSharingAlertPersonName + 8))
      {
        v40 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v40);
        *(&v41 - 3) = 0;
        *(&v41 - 2) = 0;
        *(&v41 - 4) = v2;
        v48 = v2;
        sub_1D28719D8();
      }

      else
      {
        *v39 = 0;
        v39[1] = 0;
      }
    }
  }

  return result;
}

uint64_t sub_1D232F274@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shouldShowExternalSharingAlert);
  return result;
}

uint64_t sub_1D232F384(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A80);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDE70);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  swift_getKeyPath();
  v11 = a2;
  v12 = v6;
  v13 = a2;
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719D8();

  return sub_1D22BD238(v6, &qword_1EC6D9A80);
}

uint64_t sub_1D232F540@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  *a3 = *(v5 + *a2);
  return sub_1D2870F78();
}

uint64_t sub_1D232F60C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__holdExternalProviderGenerationTask);
  return result;
}

uint64_t sub_1D232F72C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__externalProviderGenerationPendingStart);
  return result;
}

uint64_t sub_1D232F828()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D58);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v100 = v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v97 = v85 - v5;
  v99 = sub_1D2871F38();
  v101 = *(v99 - 8);
  v6 = MEMORY[0x1EEE9AC00](v99);
  v95 = v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v94 = v85 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v93 = v85 - v10;
  v11 = sub_1D2872128();
  v104 = *(v11 - 8);
  v105 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v103 = v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v102 = v85 - v14;
  v15 = sub_1D2872008();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v98 = v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v96 = v85 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v106 = v85 - v21;
  swift_getKeyPath();
  v22 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel___observationRegistrar;
  v108[0] = v0;
  v23 = sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v24 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__scheduleExternalProviderGenerationTask;
  if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__scheduleExternalProviderGenerationTask) && (sub_1D2870F78(), sub_1D28786B8(), , *(v0 + v24)))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v85[-2] = v0;
    v85[-1] = 0;
    v108[0] = v0;
    sub_1D28719D8();
  }

  else
  {
    *(v0 + v24) = 0;
  }

  v26 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_context);
  result = sub_1D2673120();
  if (result)
  {
    v28 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_style;
    swift_beginAccess();
    v29 = *(v16 + 16);
    v90 = v28;
    v30 = v106;
    v92 = v16 + 16;
    v91 = v29;
    v29(v106, v26 + v28, v15);
    LOBYTE(v28) = sub_1D2871F78();
    v33 = *(v16 + 8);
    v32 = v16 + 8;
    v31 = v33;
    result = (v33)(v30, v15);
    if (v28)
    {
      v85[1] = 0;
      v88 = v26;
      v89 = v32;
      v87 = v23;
      sub_1D2872188();
      v34 = v102;
      sub_1D2872148();
      v36 = v103;
      v35 = v104;
      v37 = v105;
      (*(v104 + 104))(v103, *MEMORY[0x1E696E410], v105);
      sub_1D233B278(&qword_1EC6DA148, MEMORY[0x1E696E420]);
      v38 = sub_1D2877F98();
      v39 = *(v35 + 8);
      v39(v36, v37);
      v39(v34, v37);
      v86 = v31;
      if (v38)
      {
        v106 = v22;
        v40 = v88;
        v41 = v96;
        v91(v96, v88 + v90, v15);
        v42 = v97;
        sub_1D2871F58();
        v43 = v42;
        v44 = v101;
        v45 = v99;
        v105 = *(v101 + 48);
        if (v105(v42, 1, v99) == 1)
        {
          sub_1D22BD238(v42, &qword_1EC6D9D58);
          v31(v41, v15);
          v46 = 0;
          v47 = 0xE000000000000000;
        }

        else
        {
          v54 = v94;
          (*(v44 + 32))(v94, v43, v45);
          v46 = sub_1D2871ED8();
          v55 = v44;
          v56 = v31;
          v47 = v57;
          v40 = v88;
          (*(v55 + 8))(v54, v45);
          v56(v41, v15);
        }

        v110 = &type metadata for ImageGeneration.GenerationError;
        v111 = sub_1D233D7E0();
        v108[0] = v46;
        v108[1] = v47;
        v109 = -112;
        v58 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v58);
        v85[-2] = v1;
        v85[-1] = v108;
        v107 = v1;
        sub_1D28719D8();

        sub_1D22BD238(v108, &qword_1EC6DA108);
        v59 = v40 + v90;
        v60 = v98;
        v91(v98, v59, v15);
        v61 = v100;
        sub_1D2871F58();
        if (v105(v61, 1, v45) == 1)
        {
          sub_1D22BD238(v61, &qword_1EC6D9D58);
          v62 = 0;
          v63 = 0xE000000000000000;
        }

        else
        {
          v64 = v101;
          v65 = v95;
          (*(v101 + 32))(v95, v61, v45);
          v62 = sub_1D2871ED8();
          v63 = v66;
          (*(v64 + 8))(v65, v45);
        }

        v86(v60, v15);
        v67 = v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentLimitation;
        v68 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentLimitation + 16);
        if (v68 == 255 || (v69 = *v67, v70 = *(v67 + 8), (sub_1D23DA32C(*v67, v70, *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentLimitation + 16), v62, v63, 5) & 1) == 0))
        {
          v71 = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](v71);
          v85[-4] = v1;
          v85[-3] = v62;
          v85[-2] = v63;
          LOBYTE(v85[-1]) = 5;
          v108[0] = v1;
          sub_1D28719D8();
        }

        else
        {
          *v67 = v62;
          *(v67 + 8) = v63;
          *(v67 + 16) = 5;
          sub_1D22FD918(v69, v70, v68);
          return sub_1D22FE198();
        }
      }

      __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_imageGenerationManager), *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_imageGenerationManager + 24));
      v48 = v88;
      sub_1D2673418();
      v49 = sub_1D2398D44();

      if (v49)
      {
        v50 = *(v49 + 16);

        if (v50)
        {
          v51 = sub_1D22FFBF8();
          swift_getKeyPath();
          v108[0] = v51;
          sub_1D233B278(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
          sub_1D28719E8();

          v52 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__currentStyle;
          swift_beginAccess();
          v53 = v106;
          v91(v106, v51 + v52, v15);
          LOBYTE(v52) = sub_1D2871F78();
          v86(v53, v15);
          if (v52)
          {
            sub_1D25AF9D4();
          }
        }
      }

      if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__externalProviderGenerationPendingStart) == 1)
      {
        *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__externalProviderGenerationPendingStart) = 1;
      }

      else
      {
        v72 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v72);
        v85[-2] = v1;
        LOBYTE(v85[-1]) = 1;
        v108[0] = v1;
        sub_1D28719D8();
      }

      v73 = v86;
      swift_getKeyPath();
      v108[0] = v1;
      sub_1D28719E8();

      if ((*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__holdExternalProviderGenerationTask) & 1) == 0)
      {
        v74 = sub_1D28785F8();
        v75 = v93;
        (*(*(v74 - 8) + 56))(v93, 1, 1, v74);
        v76 = swift_allocObject();
        swift_weakInit();
        sub_1D2878568();
        sub_1D2870F78();
        v77 = sub_1D2878558();
        v78 = v73;
        v79 = swift_allocObject();
        v80 = MEMORY[0x1E69E85E0];
        v79[2] = v77;
        v79[3] = v80;
        v79[4] = v76;

        v81 = sub_1D22AE01C(0, 0, v75, &unk_1D2881200, v79);
        sub_1D22F9A8C(v81, &OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__scheduleExternalProviderGenerationTask);
        sub_1D23C7448();
        v82 = v106;
        v91(v106, v48 + v90, v15);
        v83 = sub_1D2777B18(v82);

        v78(v82, v15);
        v84 = sub_1D23098E0(&OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___animatedEffectsViewModel, sub_1D2309250);
        sub_1D277E434(*&v83, 1, 1, v84);
      }
    }
  }

  return result;
}

uint64_t sub_1D2330660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D58);
  v4[23] = swift_task_alloc();
  v5 = sub_1D2871F38();
  v4[24] = v5;
  v4[25] = *(v5 - 8);
  v4[26] = swift_task_alloc();
  v6 = sub_1D2872008();
  v4[27] = v6;
  v4[28] = *(v6 - 8);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v7 = sub_1D2879328();
  v4[31] = v7;
  v4[32] = *(v7 - 8);
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  sub_1D2878568();
  v4[35] = sub_1D2878558();
  v9 = sub_1D28784F8();
  v4[36] = v9;
  v4[37] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D233085C, v9, v8);
}

uint64_t sub_1D233085C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[38] = Strong;
  if (Strong)
  {
    if (qword_1ED8A4928 != -1)
    {
      swift_once();
    }

    sub_1D23CDDAC();
    v3 = 1000000000000000000 * v2;
    v4 = (v2 * 0xDE0B6B3A7640000uLL) >> 64;
    v5 = (v2 >> 63) & 0xF21F494C589C0000;
    sub_1D2879718();
    v6 = swift_task_alloc();
    v0[39] = v6;
    *v6 = v0;
    v6[1] = sub_1D2330A2C;

    return sub_1D233BA38(v3, v5 + v4, 0, 0, 1);
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1D2330A2C()
{
  v2 = *v1;
  v2[40] = v0;

  v3 = v2[34];
  v4 = v2[32];
  v5 = v2[31];
  if (v0)
  {

    v6 = *(v4 + 8);
    v2[42] = v6;
    v6(v3, v5);
    v7 = v2[36];
    v8 = v2[37];
    v9 = sub_1D233106C;
  }

  else
  {
    v10 = *(v4 + 8);
    v2[41] = v10;
    v10(v3, v5);
    v7 = v2[36];
    v8 = v2[37];
    v9 = sub_1D2330BCC;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1D2330BCC()
{
  v0[43] = v0[41];
  if ((sub_1D28786D8() & 1) != 0 || (v1 = v0[38], swift_getKeyPath(), v2 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel___observationRegistrar, v0[14] = v1, v0[44] = v2, v0[45] = sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel), sub_1D28719E8(), , v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentLimitation, v0[46] = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentLimitation, v4 = v1 + v3, v5 = *(v1 + v3 + 16), v5 < 6))
  {
LABEL_3:

    v6 = v0[1];

    return v6();
  }

  if (v5 != 255)
  {
    v18 = *(v4 + 8);
    if (*v4 == 1 && v18 == 0)
    {
      if ((sub_1D27D8C8C() & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    else if (__PAIR128__((*v4 >= 3uLL) + v18 - 1, *v4 - 3) >= 5)
    {
      goto LABEL_3;
    }
  }

  v8 = v0[38];
  v9 = v0[30];
  v10 = v0[28];
  v38 = v0[27];
  v11 = v0[25];
  v39 = v0[23];
  v40 = v0[24];
  v12 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_context;
  v0[47] = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_context;
  v13 = *(v8 + v12);
  v14 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_style;
  swift_beginAccess();
  v15 = *(v10 + 16);
  v0[48] = v15;
  v0[49] = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v15(v9, v13 + v14, v38);
  sub_1D2871F58();
  if ((*(v11 + 48))(v39, 1, v40) == 1)
  {
    sub_1D22BD238(v0[23], &qword_1EC6D9D58);
    v16 = 0;
    v17 = 0xE000000000000000;
  }

  else
  {
    v20 = v0[25];
    v21 = v0[26];
    v22 = v0[24];
    (*(v20 + 32))(v21, v0[23], v22);
    v23 = sub_1D2871ED8();
    v17 = v24;
    (*(v20 + 8))(v21, v22);
    v16 = v23;
  }

  v25 = v0[30];
  v26 = v0[27];
  v27 = *(v0[28] + 8);
  v0[50] = v27;
  v27(v25, v26);
  v28 = *(v4 + 16);
  if (v28 == 255 || (v30 = *v4, v29 = *(v4 + 8), (sub_1D23DA32C(*v4, v29, *(v4 + 16), v16, v17, 4) & 1) == 0))
  {
    v31 = v0[38];
    swift_getKeyPath();
    v32 = swift_task_alloc();
    *(v32 + 16) = v31;
    *(v32 + 24) = v16;
    *(v32 + 32) = v17;
    *(v32 + 40) = 4;
    v0[15] = v31;
    sub_1D28719D8();
  }

  else
  {
    *v4 = v16;
    *(v4 + 8) = v17;
    *(v4 + 16) = 4;
    sub_1D22FD918(v30, v29, v28);
    sub_1D22FE198();
  }

  sub_1D23CE124();
  v34 = 1000000000000000000 * v33;
  v35 = (v33 * 0xDE0B6B3A7640000uLL) >> 64;
  v36 = (v33 >> 63) & 0xF21F494C589C0000;
  sub_1D2879718();
  v37 = swift_task_alloc();
  v0[51] = v37;
  *v37 = v0;
  v37[1] = sub_1D233150C;

  return sub_1D233BA38(v34, v36 + v35, 0, 0, 1);
}

uint64_t sub_1D233106C()
{
  v0[43] = v0[42];
  if ((sub_1D28786D8() & 1) != 0 || (v1 = v0[38], swift_getKeyPath(), v2 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel___observationRegistrar, v0[14] = v1, v0[44] = v2, v0[45] = sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel), sub_1D28719E8(), , v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentLimitation, v0[46] = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentLimitation, v4 = v1 + v3, v5 = *(v1 + v3 + 16), v5 < 6))
  {
LABEL_3:

    v6 = v0[1];

    return v6();
  }

  if (v5 != 255)
  {
    v18 = *(v4 + 8);
    if (*v4 == 1 && v18 == 0)
    {
      if ((sub_1D27D8C8C() & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    else if (__PAIR128__((*v4 >= 3uLL) + v18 - 1, *v4 - 3) >= 5)
    {
      goto LABEL_3;
    }
  }

  v8 = v0[38];
  v9 = v0[30];
  v10 = v0[28];
  v11 = v0[25];
  v40 = v0[24];
  v38 = v0[27];
  v39 = v0[23];
  v12 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_context;
  v0[47] = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_context;
  v13 = *(v8 + v12);
  v14 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_style;
  swift_beginAccess();
  v15 = *(v10 + 16);
  v0[48] = v15;
  v0[49] = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v15(v9, v13 + v14, v38);
  sub_1D2871F58();
  if ((*(v11 + 48))(v39, 1, v40) == 1)
  {
    sub_1D22BD238(v0[23], &qword_1EC6D9D58);
    v16 = 0;
    v17 = 0xE000000000000000;
  }

  else
  {
    v21 = v0[25];
    v20 = v0[26];
    v22 = v0[24];
    (*(v21 + 32))(v20, v0[23], v22);
    v16 = sub_1D2871ED8();
    v17 = v23;
    (*(v21 + 8))(v20, v22);
  }

  v24 = v0[30];
  v25 = v0[27];
  v26 = *(v0[28] + 8);
  v0[50] = v26;
  v26(v24, v25);
  v27 = *(v4 + 16);
  if (v27 == 255 || (v28 = *v4, v29 = *(v4 + 8), (sub_1D23DA32C(*v4, v29, *(v4 + 16), v16, v17, 4) & 1) == 0))
  {
    v30 = v17;
    v31 = v0[38];
    swift_getKeyPath();
    v32 = swift_task_alloc();
    *(v32 + 16) = v31;
    *(v32 + 24) = v16;
    *(v32 + 32) = v30;
    *(v32 + 40) = 4;
    v0[15] = v31;
    sub_1D28719D8();
  }

  else
  {
    *v4 = v16;
    *(v4 + 8) = v17;
    *(v4 + 16) = 4;
    sub_1D22FD918(v28, v29, v27);
    sub_1D22FE198();
  }

  sub_1D23CE124();
  v34 = 1000000000000000000 * v33;
  v35 = (v33 * 0xDE0B6B3A7640000uLL) >> 64;
  v36 = (v33 >> 63) & 0xF21F494C589C0000;
  sub_1D2879718();
  v37 = swift_task_alloc();
  v0[51] = v37;
  *v37 = v0;
  v37[1] = sub_1D233150C;

  return sub_1D233BA38(v34, v36 + v35, 0, 0, 1);
}

uint64_t sub_1D233150C()
{
  v2 = *v1;
  v2[52] = v0;

  v3 = v2[43];
  v4 = v2[33];
  v5 = v2[31];
  if (v0)
  {

    v3(v4, v5);
    v6 = v2[36];
    v7 = v2[37];
    v8 = sub_1D2331B84;
  }

  else
  {
    v3(v4, v5);
    v6 = v2[36];
    v7 = v2[37];
    v8 = sub_1D23316C0;
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

uint64_t sub_1D23316C0()
{

  if ((sub_1D28786D8() & 1) != 0 || (v1 = v0[38], v2 = v1 + v0[46], swift_getKeyPath(), v0[16] = v1, sub_1D28719E8(), , *(v2 + 16) != 4))
  {
    v17 = v0[38];
    v18 = v17 + v0[46];
    swift_getKeyPath();
    v0[17] = v17;
    sub_1D28719E8();

    if (*(v18 + 16) == 4)
    {
      v19 = v0[38];
      swift_getKeyPath();
      v20 = swift_task_alloc();
      *(v20 + 24) = 0;
      *(v20 + 32) = 0;
      *(v20 + 16) = v19;
      *(v20 + 40) = -1;
      v0[18] = v19;
      goto LABEL_10;
    }

LABEL_8:

    goto LABEL_11;
  }

  v3 = v0[47];
  v23 = v0[48];
  v4 = v0[38];
  v5 = v0[29];
  v24 = v0[50];
  v6 = v0[27];
  swift_getKeyPath();
  v7 = swift_task_alloc();
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 16) = v4;
  *(v7 + 40) = -1;
  v0[19] = v4;
  sub_1D28719D8();

  sub_1D23C7448();
  v8 = *(v4 + v3);
  v9 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_style;
  swift_beginAccess();
  v23(v5, v8 + v9, v6);
  v10 = sub_1D2777B18(v5);

  v24(v5, v6);
  v11 = sub_1D23098E0(&OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___animatedEffectsViewModel, sub_1D2309250);
  sub_1D277E434(*&v10, 0, 1, v11);

  v12 = sub_1D22FFBF8();
  swift_getKeyPath();
  v0[20] = v12;
  sub_1D233B278(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
  sub_1D28719E8();

  v13 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__currentStyle;
  swift_beginAccess();
  v23(v5, v12 + v13, v6);
  LOBYTE(v13) = sub_1D2871F78();
  v24(v5, v6);
  if (v13)
  {
    sub_1D25AF9D4();
  }

  v14 = v0[38];

  if ((*(v14 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__externalProviderGenerationPendingStart) & 1) == 0)
  {
    *(v14 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__externalProviderGenerationPendingStart) = 0;
    goto LABEL_8;
  }

  v15 = v0[38];
  swift_getKeyPath();
  v16 = swift_task_alloc();
  *(v16 + 16) = v15;
  *(v16 + 24) = 0;
  v0[21] = v15;
LABEL_10:
  sub_1D28719D8();

LABEL_11:

  v21 = v0[1];

  return v21();
}

uint64_t sub_1D2331B84()
{

  if ((sub_1D28786D8() & 1) != 0 || (v1 = v0[38], v2 = v1 + v0[46], swift_getKeyPath(), v0[16] = v1, sub_1D28719E8(), , *(v2 + 16) != 4))
  {
    v18 = v0[38];
    v19 = v18 + v0[46];
    swift_getKeyPath();
    v0[17] = v18;
    sub_1D28719E8();

    if (*(v19 + 16) == 4)
    {
      v20 = v0[38];
      swift_getKeyPath();
      v21 = swift_task_alloc();
      *(v21 + 24) = 0;
      *(v21 + 32) = 0;
      *(v21 + 16) = v20;
      *(v21 + 40) = -1;
      v0[18] = v20;
      goto LABEL_10;
    }

LABEL_8:

    goto LABEL_11;
  }

  v4 = v0[47];
  v3 = v0[48];
  v5 = v0[38];
  v6 = v0[29];
  v24 = v0[50];
  v7 = v0[27];
  swift_getKeyPath();
  v8 = swift_task_alloc();
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  *(v8 + 16) = v5;
  *(v8 + 40) = -1;
  v0[19] = v5;
  sub_1D28719D8();

  sub_1D23C7448();
  v9 = *(v5 + v4);
  v10 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_style;
  swift_beginAccess();
  v3(v6, v9 + v10, v7);
  v11 = sub_1D2777B18(v6);

  v24(v6, v7);
  v12 = sub_1D23098E0(&OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___animatedEffectsViewModel, sub_1D2309250);
  sub_1D277E434(*&v11, 0, 1, v12);

  v13 = sub_1D22FFBF8();
  swift_getKeyPath();
  v0[20] = v13;
  sub_1D233B278(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
  sub_1D28719E8();

  v14 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__currentStyle;
  swift_beginAccess();
  v3(v6, v13 + v14, v7);
  LOBYTE(v14) = sub_1D2871F78();
  v24(v6, v7);
  if (v14)
  {
    sub_1D25AF9D4();
  }

  v15 = v0[38];

  if ((*(v15 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__externalProviderGenerationPendingStart) & 1) == 0)
  {
    *(v15 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__externalProviderGenerationPendingStart) = 0;
    goto LABEL_8;
  }

  v16 = v0[38];
  swift_getKeyPath();
  v17 = swift_task_alloc();
  *(v17 + 16) = v16;
  *(v17 + 24) = 0;
  v0[21] = v16;
LABEL_10:
  sub_1D28719D8();

LABEL_11:

  v22 = v0[1];

  return v22();
}

uint64_t sub_1D2332050(char a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = sub_1D22FECC4();
    swift_getKeyPath();
    sub_1D233B278(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
    sub_1D28719E8();

    v4 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__isPendingResetToInternalStyle);

    if ((v4 & 1) == 0)
    {
      if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__holdExternalProviderGenerationTask))
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
        sub_1D28719D8();
      }

      else
      {
        *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__holdExternalProviderGenerationTask) = 0;
      }
    }
  }

  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__externalProviderGenerationPendingStart) == 1)
  {
    swift_getKeyPath();
    sub_1D28719E8();

    if ((*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__holdExternalProviderGenerationTask) & 1) == 0)
    {
      return sub_1D232F828();
    }
  }

  return result;
}

uint64_t sub_1D23322C0()
{
  v1 = v0;
  v2 = sub_1D2872008();
  v25 = *(v2 - 8);
  v26 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__holdExternalProviderGenerationTask) == 1)
  {
    *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__holdExternalProviderGenerationTask) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v25 - 2) = v0;
    *(&v25 - 8) = 1;
    v27 = v0;
    sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719D8();
  }

  swift_getKeyPath();
  v27 = v0;
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v6 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__scheduleExternalProviderGenerationTask;
  v7 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__scheduleExternalProviderGenerationTask);
  swift_getKeyPath();
  v27 = v0;
  sub_1D28719E8();

  if (*(v0 + v6) && (sub_1D2870F78(), sub_1D28786B8(), result = , *(v0 + v6)))
  {
    v9 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v9);
    *(&v25 - 2) = v0;
    *(&v25 - 1) = 0;
    v27 = v0;
    sub_1D28719D8();

    if (!v7)
    {
      return result;
    }
  }

  else
  {
    *(v0 + v6) = 0;
    if (!v7)
    {
      return result;
    }
  }

  v10 = sub_1D22FFBF8();
  swift_getKeyPath();
  v27 = v10;
  sub_1D233B278(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
  sub_1D28719E8();

  v11 = *(v10 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__isGeneratingImages);

  if ((v11 & 1) == 0)
  {
    v12 = sub_1D23098E0(&OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___animatedEffectsViewModel, sub_1D2309250);
    swift_getKeyPath();
    v27 = v12;
    sub_1D233B278(&qword_1ED8A3F70, type metadata accessor for EffectViewModel);
    sub_1D28719E8();

    v13 = *(v12 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__state + 8);

    if (v13 <= 0x3F)
    {
      v14 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_context);
      v15 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_style;
      swift_beginAccess();
      v17 = v25;
      v16 = v26;
      v18 = *(v25 + 16);
      v18(v4, v14 + v15, v26);
      v19 = sub_1D2871F78();
      v20 = *(v17 + 8);
      result = v20(v4, v16);
      if (v19)
      {
        sub_1D23C7448();
        v21 = v14 + v15;
        v22 = v26;
        v18(v4, v21, v26);
        v23 = sub_1D2777B18(v4);

        v20(v4, v22);
        v24 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___animatedEffectsViewModel);
        sub_1D2870F78();
        sub_1D277E434(*&v23, 1, 1, v24);
      }
    }
  }

  return result;
}

uint64_t sub_1D2332818()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v19 = &v17 - v2;
  v3 = sub_1D2872008();
  v18 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v17 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  v8 = *(sub_1D22FC2DC() + 32);
  sub_1D2870F68();

  v10 = *(v8 + 16);
  if (!v10)
  {
  }

  v11 = 0;
  for (i = v8 + 32; ; i += 40)
  {
    if (v11 >= *(v8 + 16))
    {
      __break(1u);
      return result;
    }

    sub_1D22D7044(i, v22);
    sub_1D22D7044(v22, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10);
    if (swift_dynamicCast())
    {
      break;
    }

    ++v11;
    result = __swift_destroy_boxed_opaque_existential_0(v22);
    if (v10 == v11)
    {
    }
  }

  v13 = v18;
  v14 = *(v18 + 8);
  v14(v7, v3);
  sub_1D227268C(v22, v21);
  sub_1D227268C(v21, v22);
  sub_1D22D7044(v22, v21);
  v15 = v19;
  if (swift_dynamicCast())
  {
    (*(v13 + 56))(v15, 0, 1, v3);
    v16 = v17;
    (*(v13 + 32))(v17, v15, v3);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1D256AE5C(v0, v16);
      swift_unknownObjectRelease();
    }

    v14(v16, v3);
    return __swift_destroy_boxed_opaque_existential_0(v22);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v22);
    (*(v13 + 56))(v15, 1, 1, v3);
    return sub_1D22BD238(v15, &qword_1EC6D9A30);
  }
}

uint64_t sub_1D2332B3C(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v9 = v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentLimitation;
  v10 = *(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentLimitation + 16);
  if (v10 < 6)
  {
LABEL_2:
    if (a4 == 6)
    {
      if (a2 != 1 || a3)
      {
        if (__PAIR128__((a2 >= 3) + a3 - 1, a2 - 3) < 5)
        {
          return result;
        }
      }

      else
      {
        result = sub_1D27D8C8C();
        if (result)
        {
          return result;
        }
      }
    }

    goto LABEL_15;
  }

  if (v10 != 255)
  {
    v11 = *v9;
    v12 = *(v9 + 8);
    if (*v9 == 1 && v12 == 0)
    {
      sub_1D233EA00(1, 0, 6u);
      result = sub_1D27D8C8C();
      if ((result & 1) == 0)
      {
        goto LABEL_2;
      }
    }

    else
    {
      v14 = __PAIR128__(-1, -6) < __PAIR128__((v11 >= 8) + v12 - 1, v11 - 8);
      result = sub_1D233E9E8(v11, v12, 6u);
      if (!v14)
      {
        goto LABEL_2;
      }
    }

LABEL_15:
    v15 = *(v9 + 16);
    if (v15 != 255)
    {
      v16 = *v9;
      v17 = *(v9 + 8);
      if (sub_1D23DA32C(*v9, v17, *(v9 + 16), a2, a3, a4))
      {
        *v9 = a2;
        *(v9 + 8) = a3;
        *(v9 + 16) = a4;
        sub_1D233E9E8(a2, a3, a4);
        sub_1D22FD918(v16, v17, v15);
        return sub_1D22FE198();
      }
    }
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1D233E9E8(a2, a3, a4);
  sub_1D28719D8();
  sub_1D22FD92C(a2, a3, a4);
}

uint64_t sub_1D2332DD4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE30);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v102 = &v89 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1D50);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v99 = (&v89 - v4);
  v93 = sub_1D2873CB8();
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v89 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v97 = &v89 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v91 = &v89 - v9;
  v10 = type metadata accessor for PlaygroundImage();
  v90 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v96 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9490);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v95 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v89 - v15;
  v17 = type metadata accessor for ImageGeneration.PreviewImage(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v94 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v101 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v89 - v23;
  v25 = sub_1D2871818();
  v26 = *(v25 - 8);
  v27 = *(v26 + 56);
  v27(v24, 1, 1, v25);
  sub_1D2327204(v16);
  v28 = *(v18 + 48);
  v29 = v28(v16, 1, v17);
  v100 = v24;
  if (v29 == 1)
  {
    sub_1D22BD238(v16, &qword_1EC6D9490);
    v98 = 0;
    v97 = 0;
    v96 = 0;
    LODWORD(v95) = 255;
    v30 = v0;
    goto LABEL_17;
  }

  sub_1D22BD238(v24, &qword_1EC6D8F70);
  v31 = v16;
  v32 = v94;
  sub_1D233FFEC(v31, v94, type metadata accessor for ImageGeneration.PreviewImage);
  (*(v26 + 16))(v24, v32, v25);
  v27(v24, 0, 1, v25);
  v33 = v95;
  sub_1D2327204(v95);
  v30 = v0;
  if (v28(v33, 1, v17) == 1)
  {
    sub_1D22BD238(v33, &qword_1EC6D9490);
    v98 = 0;
  }

  else
  {
    v98 = *(v33 + *(v17 + 32));
    sub_1D2870F68();
    sub_1D22FD9A8(v33, type metadata accessor for ImageGeneration.PreviewImage);
  }

  v34 = v97;
  v35 = v96;
  v36 = *(v32 + *(v17 + 28));
  if (*(v36 + 16))
  {
    sub_1D233DEB0(v36 + ((*(v90 + 80) + 32) & ~*(v90 + 80)), v96, type metadata accessor for PlaygroundImage);
    v37 = sub_1D2873AA8();
    v38 = v91;
    (*(*(v37 - 8) + 56))(v91, 1, 1, v37);
    v39 = _s23ImagePlaygroundInternal0bA0V9imageData3for24ensureRegionalCompliance10Foundation0E0VSg22UniformTypeIdentifiers6UTTypeVSg_SbtF_0(v38);
    v41 = v40;
    sub_1D22BD238(v38, &qword_1EC6DAE70);
    if (v41 >> 60 != 15)
    {
      v96 = v41;
      v97 = v39;
      sub_1D22FD9A8(v35, type metadata accessor for PlaygroundImage);
      sub_1D22FD9A8(v32, type metadata accessor for ImageGeneration.PreviewImage);
      v49 = 1;
      goto LABEL_16;
    }

    sub_1D28726D8();
    v42 = sub_1D2873CA8();
    v43 = sub_1D2878A18();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_1D226E000, v42, v43, "Image data is nil.", v44, 2u);
      MEMORY[0x1D38A3520](v44, -1, -1);
    }

    (*(v92 + 8))(v34, v93);
    sub_1D22FD9A8(v35, type metadata accessor for PlaygroundImage);
  }

  else
  {
    v45 = v89;
    sub_1D28726D8();
    v46 = sub_1D2873CA8();
    v47 = sub_1D2878A18();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_1D226E000, v46, v47, "Playground image is nil.", v48, 2u);
      MEMORY[0x1D38A3520](v48, -1, -1);
    }

    (*(v92 + 8))(v45, v93);
  }

  sub_1D22FD9A8(v32, type metadata accessor for ImageGeneration.PreviewImage);
  v97 = 0;
  v96 = 0;
  v49 = 255;
LABEL_16:
  LODWORD(v95) = v49;
LABEL_17:
  v50 = *(v30 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_servicesFetcher);
  v51 = *(v30 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_context);
  sub_1D2870F78();
  sub_1D2870F78();
  sub_1D23098E0(&OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel____lazy_storage___footerViewModel, sub_1D23087E8);
  v52 = sub_1D22C3068();

  swift_getKeyPath();
  *&v112 = v52;
  sub_1D233B278(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
  sub_1D28719E8();

  v53 = OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__prompt;
  swift_beginAccess();
  v54 = v52 + v53;
  v55 = v99;
  sub_1D22BD1D0(v54, v99, &qword_1EC6E1D50);

  v56 = v55[1];
  v94 = *v55;
  sub_1D2870F68();
  sub_1D22BD238(v55, &qword_1EC6E1D50);
  v92 = sub_1D23013C0();
  v58 = v57;
  sub_1D2870F78();
  v59 = sub_1D22C3068();

  swift_getKeyPath();
  *&v112 = v59;
  sub_1D28719E8();
  v60 = v30;

  v61 = *(v59 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__state);

  LOBYTE(v112) = v61;
  v62 = sub_1D2878118();
  v64 = v63;
  v65 = v100;
  sub_1D22BD1D0(v100, v101, &qword_1EC6D8F70);
  v66 = sub_1D2872438();
  (*(*(v66 - 8) + 56))(v102, 1, 1, v66);
  v67 = *__swift_project_boxed_opaque_existential_1((v60 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_imageGenerationManager), *(v60 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_imageGenerationManager + 24));
  v68 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__selectedGenerator;
  swift_beginAccess();
  sub_1D22BD1D0(v67 + v68, &v112, &qword_1EC6D9A08);
  v99 = v64;
  if (*(&v113 + 1))
  {
    sub_1D227268C(&v112, v109);
    goto LABEL_21;
  }

  sub_1D22BD238(&v112, &qword_1EC6D9A08);
  result = sub_1D23B7984();
  if (*(result + 16))
  {
    sub_1D22D7044(result + 32, v109);
LABEL_21:
    v93 = v58;
    v70 = v110;
    v71 = v111;
    v72 = __swift_project_boxed_opaque_existential_1(v109, v110);
    *(&v113 + 1) = v70;
    v114 = *(v71 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v112);
    (*(*(v70 - 8) + 16))(boxed_opaque_existential_1, v72, v70);
    swift_getKeyPath();
    *&v106 = v60;
    sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719E8();

    sub_1D22BD238(v65, &qword_1EC6D8F70);
    v74 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentGenerationError;
    swift_beginAccess();
    sub_1D22BD1D0(v60 + v74, &v106, &qword_1EC6DA108);
    if (*(&v107 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1A8);
      v75 = swift_dynamicCast();
      if (v75)
      {
        v76 = v103;
      }

      else
      {
        v76 = 0;
      }

      if (v75)
      {
        v77 = v104;
      }

      else
      {
        v77 = 0;
      }

      if (v75)
      {
        v78 = v105;
      }

      else
      {
        v78 = -4;
      }
    }

    else
    {
      sub_1D22BD238(&v106, &qword_1EC6DA108);
      v76 = 0;
      v77 = 0;
      v78 = -4;
    }

    type metadata accessor for FeedbackInput();
    v79 = swift_allocObject();
    v80 = OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_featureDomain;
    v81 = *MEMORY[0x1E699C2C8];
    v82 = sub_1D2871CD8();
    (*(*(v82 - 8) + 104))(v79 + v80, v81, v82);
    v83 = v79 + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_generationStateProvider;
    *v83 = 0u;
    *(v83 + 16) = 0u;
    *(v83 + 32) = 0;
    *(v79 + 16) = v50;
    *(v79 + 24) = v51;
    v84 = v96;
    *(v79 + 32) = v97;
    *(v79 + 40) = v84;
    *(v79 + 48) = v95;
    *(v79 + 56) = v94;
    *(v79 + 64) = v56;
    v85 = v99;
    *(v79 + 88) = v62;
    *(v79 + 96) = v85;
    sub_1D22EC9BC(v101, v79 + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_id, &qword_1EC6D8F70);
    sub_1D22EC9BC(v102, v79 + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_recipe, &unk_1EC6DDE30);
    swift_beginAccess();
    sub_1D22D7384(&v112, v83, &qword_1EC6DA1F0);
    swift_endAccess();
    *(v79 + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_isSaved) = 0;
    *(v79 + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_diffusionModelSpecification) = v98;
    v86 = v79 + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_error;
    *v86 = v76;
    *(v86 + 8) = v77;
    *(v86 + 16) = v78;
    v106 = v112;
    v107 = v113;
    v108 = v114;
    if (*(&v113 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE40);
      _s22OnDeviceImageGeneratorCMa(0);
      v87 = swift_dynamicCast();
      v88 = v93;
      if (v87)
      {

        *(v79 + 72) = v92;
        *(v79 + 80) = v88;
LABEL_38:
        __swift_destroy_boxed_opaque_existential_0(v109);
        return v79;
      }
    }

    else
    {

      sub_1D22BD238(&v106, &qword_1EC6DA1F0);
    }

    *(v79 + 72) = 0;
    *(v79 + 80) = 0;
    goto LABEL_38;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D2333D2C(uint64_t a1)
{
  v2 = sub_1D2873CB8();
  v67 = *(v2 - 8);
  v68 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v69 = (v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v71 = v64 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE50);
  v70 = *(v6 - 8);
  v7 = *(v70 + 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v64 - v10;
  v12 = sub_1D2871CA8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v66 = v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v64 - v17;
  v19 = *(v13 + 16);
  v19(v64 - v17, a1, v12, v16);
  v20 = (*(v13 + 88))(v18, v12);
  if (v20 == *MEMORY[0x1E699C1F0])
  {
    v21 = v11;
    v69 = sub_1D23C7998();
    v22 = sub_1D2332DD4();
    (v19)(v11, a1, v12);
    (*(v13 + 56))(v11, 0, 1, v12);
    v23 = sub_1D28785F8();
    v24 = v71;
    (*(*(v23 - 8) + 56))(v71, 1, 1, v23);
    sub_1D22BD1D0(v11, v8, &unk_1EC6DDE50);
    sub_1D2878568();
    sub_1D2870F78();
    v25 = v69;
    sub_1D2870F78();
    v26 = sub_1D2878558();
    v27 = (*(v70 + 80) + 48) & ~*(v70 + 80);
    v28 = swift_allocObject();
    v29 = MEMORY[0x1E69E85E0];
    v28[2] = v26;
    v28[3] = v29;
    v28[4] = v22;
    v28[5] = v25;
    sub_1D22EC9BC(v8, v28 + v27, &unk_1EC6DDE50);
    sub_1D22AE01C(0, 0, v24, &unk_1D2881A70, v28);

    return sub_1D22BD238(v21, &unk_1EC6DDE50);
  }

  v64[1] = v7;
  v65 = v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a1;
  v32 = v71;
  if (v20 == *MEMORY[0x1E699C1C8])
  {
    v33 = v11;
    v34 = sub_1D23C7998();
    v35 = sub_1D2332DD4();
    (v19)(v11, v31, v12);
    (*(v13 + 56))(v11, 0, 1, v12);
    v36 = sub_1D28785F8();
    v37 = v32;
    (*(*(v36 - 8) + 56))(v32, 1, 1, v36);
    v38 = v65;
    sub_1D22BD1D0(v11, v65, &unk_1EC6DDE50);
    sub_1D2878568();
    sub_1D2870F78();
    sub_1D2870F78();
    v39 = sub_1D2878558();
    v40 = (*(v70 + 80) + 48) & ~*(v70 + 80);
    v41 = swift_allocObject();
    v42 = MEMORY[0x1E69E85E0];
    v41[2] = v39;
    v41[3] = v42;
    v41[4] = v35;
    v41[5] = v34;
    sub_1D22EC9BC(v38, v41 + v40, &unk_1EC6DDE50);
    v43 = &unk_1D28A12C0;
LABEL_7:
    sub_1D22AE01C(0, 0, v37, v43, v41);

    return sub_1D22BD238(v33, &unk_1EC6DDE50);
  }

  if (v20 == *MEMORY[0x1E699C1D8])
  {
    v33 = v11;
    v44 = sub_1D23C7998();
    v45 = sub_1D2332DD4();
    (v19)(v11, v31, v12);
    (*(v13 + 56))(v11, 0, 1, v12);
    v46 = sub_1D28785F8();
    v37 = v32;
    (*(*(v46 - 8) + 56))(v32, 1, 1, v46);
    v47 = v65;
    sub_1D22BD1D0(v11, v65, &unk_1EC6DDE50);
    sub_1D2878568();
    sub_1D2870F78();
    sub_1D2870F78();
    v48 = sub_1D2878558();
    v49 = (*(v70 + 80) + 48) & ~*(v70 + 80);
    v41 = swift_allocObject();
    v50 = MEMORY[0x1E69E85E0];
    v41[2] = v48;
    v41[3] = v50;
    v41[4] = v45;
    v41[5] = v44;
    sub_1D22EC9BC(v47, v41 + v49, &unk_1EC6DDE50);
    v43 = &unk_1D2881A78;
    goto LABEL_7;
  }

  v51 = v69;
  sub_1D28726D8();
  v52 = v66;
  (v19)(v66, v31, v12);
  v53 = sub_1D2873CA8();
  v54 = sub_1D2878A18();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v70 = v55;
    v71 = swift_slowAlloc();
    v72 = v71;
    *v55 = 136315138;
    sub_1D233B278(&qword_1EC6DA1E8, MEMORY[0x1E699C1F8]);
    v56 = sub_1D28795C8();
    v58 = v57;
    v59 = *(v13 + 8);
    v59(v52, v12);
    v60 = sub_1D23D7C84(v56, v58, &v72);

    v61 = v70;
    *(v70 + 1) = v60;
    v62 = v61;
    _os_log_impl(&dword_1D226E000, v53, v54, "feedback action %s not supported for preview image on MagicViewModel", v61, 0xCu);
    v63 = v71;
    __swift_destroy_boxed_opaque_existential_0(v71);
    MEMORY[0x1D38A3520](v63, -1, -1);
    MEMORY[0x1D38A3520](v62, -1, -1);

    (*(v67 + 8))(v69, v68);
  }

  else
  {

    v59 = *(v13 + 8);
    v59(v52, v12);
    (*(v67 + 8))(v51, v68);
  }

  return (v59)(v18, v12);
}

uint64_t sub_1D233462C(uint64_t a1)
{
  v2[36] = a1;
  v2[37] = v1;
  v3 = sub_1D2873CB8();
  v2[38] = v3;
  v2[39] = *(v3 - 8);
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE30);
  v2[43] = swift_task_alloc();
  v4 = sub_1D2872438();
  v2[44] = v4;
  v2[45] = *(v4 - 8);
  v2[46] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70);
  v2[47] = swift_task_alloc();
  v2[48] = *(type metadata accessor for PlaygroundImage() - 8);
  v2[49] = swift_task_alloc();
  v5 = sub_1D2871818();
  v2[50] = v5;
  v2[51] = *(v5 - 8);
  v2[52] = swift_task_alloc();
  v2[53] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94F0);
  v2[54] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v6 = type metadata accessor for ImageGeneration.PreviewImage(0);
  v2[59] = v6;
  v2[60] = *(v6 - 8);
  v2[61] = swift_task_alloc();
  v2[62] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9490);
  v2[63] = swift_task_alloc();
  v2[64] = swift_task_alloc();
  v2[65] = swift_task_alloc();
  v2[66] = sub_1D2878568();
  v2[67] = sub_1D2878558();
  v8 = sub_1D28784F8();
  v2[68] = v8;
  v2[69] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D2334A10, v8, v7);
}

uint64_t sub_1D2334A10()
{
  v1 = v0[64];
  v2 = v0[59];
  v3 = v0[60];
  sub_1D22BD1D0(v0[36], v1, &qword_1EC6D9490);
  v4 = *(v3 + 48);
  if (v4(v1, 1, v2) == 1)
  {
    v5 = *(v0[37] + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_previewsStore);
    swift_getKeyPath();
    v0[32] = v5;
    sub_1D233B278(&qword_1ED8A0FD0, type metadata accessor for GeneratedPreviewsStore);
    sub_1D28719E8();

    swift_beginAccess();
    v6 = *(v5 + 16);
    v83 = *(v6 + 16);
    if (v83)
    {
      v71 = v4;
      v7 = v0[51];
      v81 = v0[60];
      v80 = v6 + ((*(v81 + 80) + 32) & ~*(v81 + 80));
      v78 = v0[53];
      v79 = (v7 + 16);
      v77 = (v7 + 56);
      v8 = (v7 + 48);
      v72 = (v7 + 32);
      v74 = (v7 + 8);
      result = sub_1D2870F68();
      v10 = 0;
      v82 = result;
      v76 = v8;
      while (1)
      {
        if (v10 >= *(result + 16))
        {
          __break(1u);
          return result;
        }

        v12 = v0[62];
        v14 = v0[57];
        v13 = v0[58];
        v15 = v0[54];
        v16 = v0[50];
        sub_1D233DEB0(v80 + *(v81 + 72) * v10, v12, type metadata accessor for ImageGeneration.PreviewImage);
        (*v79)(v13, v12, v16);
        (*v77)(v13, 0, 1, v16);
        v17 = sub_1D22FFBF8();
        swift_getKeyPath();
        v0[33] = v17;
        sub_1D233B278(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
        sub_1D28719E8();

        v18 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__visiblePreviewID;
        swift_beginAccess();
        v19 = v17 + v18;
        v20 = v14;
        sub_1D22BD1D0(v19, v14, &qword_1EC6D8F70);

        v21 = *(v78 + 48);
        sub_1D22BD1D0(v13, v15, &qword_1EC6D8F70);
        sub_1D22BD1D0(v20, v15 + v21, &qword_1EC6D8F70);
        v22 = *v76;
        v23 = (*v76)(v15, 1, v16);
        v24 = v0[50];
        if (v23 == 1)
        {
          v11 = v0[58];
          sub_1D22BD238(v0[57], &qword_1EC6D8F70);
          sub_1D22BD238(v11, &qword_1EC6D8F70);
          if (v22(v15 + v21, 1, v24) == 1)
          {
            sub_1D22BD238(v0[54], &qword_1EC6D8F70);
LABEL_17:
            v37 = v0[65];
            v38 = v0[62];

            sub_1D233FFEC(v38, v37, type metadata accessor for ImageGeneration.PreviewImage);
            v36 = 0;
LABEL_18:
            v4 = v71;
            goto LABEL_19;
          }
        }

        else
        {
          sub_1D22BD1D0(v0[54], v0[56], &qword_1EC6D8F70);
          v25 = v22(v15 + v21, 1, v24);
          v26 = v0[57];
          v75 = v0[58];
          v27 = v0[56];
          if (v25 != 1)
          {
            v73 = v0[54];
            v29 = v0[52];
            v30 = v0[50];
            (*v72)(v29, v15 + v21, v30);
            sub_1D233B278(&unk_1ED8A6CA0, MEMORY[0x1E69695A8]);
            v31 = sub_1D2877F98();
            v32 = *v74;
            (*v74)(v29, v30);
            sub_1D22BD238(v26, &qword_1EC6D8F70);
            sub_1D22BD238(v75, &qword_1EC6D8F70);
            v32(v27, v30);
            sub_1D22BD238(v73, &qword_1EC6D8F70);
            if (v31)
            {
              goto LABEL_17;
            }

            goto LABEL_6;
          }

          v28 = v0[50];
          sub_1D22BD238(v26, &qword_1EC6D8F70);
          sub_1D22BD238(v75, &qword_1EC6D8F70);
          (*v74)(v27, v28);
        }

        sub_1D22BD238(v0[54], &qword_1EC6D94F0);
LABEL_6:
        ++v10;
        sub_1D22FD9A8(v0[62], type metadata accessor for ImageGeneration.PreviewImage);
        result = v82;
        if (v83 == v10)
        {

          v36 = 1;
          goto LABEL_18;
        }
      }
    }

    v36 = 1;
LABEL_19:
    v39 = v0[64];
    v40 = v0[59];
    (*(v0[60] + 56))(v0[65], v36, 1, v40);
    if (v4(v39, 1, v40) != 1)
    {
      sub_1D22BD238(v0[64], &qword_1EC6D9490);
    }
  }

  else
  {
    v33 = v0[65];
    v34 = v0[59];
    v35 = v0[60];
    sub_1D233FFEC(v0[64], v33, type metadata accessor for ImageGeneration.PreviewImage);
    (*(v35 + 56))(v33, 0, 1, v34);
  }

  v41 = v0[63];
  v42 = v0[59];
  sub_1D22BD1D0(v0[65], v41, &qword_1EC6D9490);
  if (v4(v41, 1, v42) == 1)
  {
    v43 = v0[63];

    sub_1D22BD238(v43, &qword_1EC6D9490);
    sub_1D28726D8();
    v44 = sub_1D2873CA8();
    v45 = sub_1D2878A18();
    v46 = os_log_type_enabled(v44, v45);
    v47 = v0[65];
    v49 = v0[39];
    v48 = v0[40];
    v50 = v0[38];
    if (v46)
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_1D226E000, v44, v45, "Preview is nil.", v51, 2u);
      MEMORY[0x1D38A3520](v51, -1, -1);
    }

    (*(v49 + 8))(v48, v50);
    sub_1D22BD238(v47, &qword_1EC6D9490);
LABEL_32:

    v70 = v0[1];

    return v70(0);
  }

  v52 = v0[61];
  v53 = v0[59];
  sub_1D233FFEC(v0[63], v52, type metadata accessor for ImageGeneration.PreviewImage);
  v54 = *(v52 + *(v53 + 28));
  if (!*(v54 + 16))
  {

    sub_1D28726D8();
    v62 = sub_1D2873CA8();
    v63 = sub_1D2878A18();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_1D226E000, v62, v63, "Playground image is nil.", v64, 2u);
      MEMORY[0x1D38A3520](v64, -1, -1);
    }

    v65 = v0[65];
    v66 = v0[61];
    v67 = v0[41];
    v68 = v0[38];
    v69 = v0[39];

    (*(v69 + 8))(v67, v68);
    sub_1D22BD238(v65, &qword_1EC6D9490);
    sub_1D22FD9A8(v66, type metadata accessor for ImageGeneration.PreviewImage);
    goto LABEL_32;
  }

  v55 = v0[47];
  v56 = *(v0[48] + 80);
  sub_1D233DEB0(v54 + ((v56 + 32) & ~v56), v0[49], type metadata accessor for PlaygroundImage);
  v57 = sub_1D2873AA8();
  (*(*(v57 - 8) + 56))(v55, 1, 1, v57);
  v58 = sub_1D2878558();
  v0[70] = v58;
  v59 = swift_task_alloc();
  v0[71] = v59;
  *v59 = v0;
  v59[1] = sub_1D23354A0;
  v60 = v0[47];
  v61 = MEMORY[0x1E69E85E0];

  return PlaygroundImage.imageDataWithBackgroundEncoding(_:isolatedOn:)(v60, v58, v61);
}

uint64_t sub_1D23354A0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 376);
  *(v4 + 576) = a1;
  *(v4 + 584) = a2;

  sub_1D22BD238(v5, &qword_1EC6DAE70);
  v6 = *(v3 + 552);
  v7 = *(v3 + 544);

  return MEMORY[0x1EEE6DFA0](sub_1D233561C, v7, v6);
}

uint64_t sub_1D233561C()
{
  if (v0[73] >> 60 == 15)
  {

    sub_1D28726D8();
    v1 = sub_1D2873CA8();
    v2 = sub_1D2878A18();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_1D226E000, v1, v2, "Image data is nil.", v3, 2u);
      MEMORY[0x1D38A3520](v3, -1, -1);
    }

    v4 = v0[65];
    v5 = v0[61];
    v6 = v0[49];
    v7 = v0[42];
    v8 = v0[38];
    v9 = v0[39];

    (*(v9 + 8))(v7, v8);
    sub_1D22FD9A8(v6, type metadata accessor for PlaygroundImage);
    sub_1D22BD238(v4, &qword_1EC6D9490);
    sub_1D22FD9A8(v5, type metadata accessor for ImageGeneration.PreviewImage);

    v10 = v0[1];

    return v10(0);
  }

  else
  {
    v12 = v0[37];
    type metadata accessor for GenerationRecipeFactory();
    v13 = *(v12 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_context);
    v0[74] = v13;
    v14 = swift_task_alloc();
    v0[75] = v14;
    *v14 = v0;
    v14[1] = sub_1D233590C;
    v15 = v0[46];

    return sub_1D2462694(v15, v13);
  }
}

uint64_t sub_1D233590C()
{
  v1 = *v0;

  v2 = *(v1 + 552);
  v3 = *(v1 + 544);

  return MEMORY[0x1EEE6DFA0](sub_1D2335A2C, v3, v2);
}

uint64_t sub_1D2335A2C()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 472);
  v43 = *(v0 + 520);
  v45 = v2;
  v3 = *(v0 + 440);
  v4 = *(v0 + 408);
  v34 = v1;
  v35 = *(v0 + 400);
  v5 = *(v0 + 360);
  v37 = *(v0 + 352);
  v38 = *(v0 + 368);
  v36 = *(v0 + 344);
  v6 = *(v0 + 296);
  v39 = v6;
  v41 = *(v0 + 392);

  v7 = *(v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_servicesFetcher);
  v8 = (v1 + *(v2 + 24));
  v10 = v8[3];
  v9 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v10);
  v11 = *(v9 + 32);
  v47 = v7;
  sub_1D2870F78();
  sub_1D2870F78();
  v33 = v11(v10, v9);
  v48 = v12;
  (*(v4 + 16))(v3, v34, v35);
  (*(v4 + 56))(v3, 0, 1, v35);
  (*(v5 + 16))(v36, v38, v37);
  (*(v5 + 56))(v36, 0, 1, v37);
  *(v0 + 16) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  v13 = *(v34 + *(v45 + 32));
  swift_getKeyPath();
  *(v0 + 272) = v6;
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  v46 = v13;
  sub_1D2870F68();
  sub_1D28719E8();

  (*(v5 + 8))(v38, v37);
  sub_1D22FD9A8(v41, type metadata accessor for PlaygroundImage);
  sub_1D22BD238(v43, &qword_1EC6D9490);
  v14 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentGenerationError;
  swift_beginAccess();
  sub_1D22BD1D0(v39 + v14, v0 + 56, &qword_1EC6DA108);
  if (*(v0 + 80))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1A8);
    v15 = swift_dynamicCast();
    if (v15)
    {
      v16 = *(v0 + 232);
    }

    else
    {
      v16 = 0;
    }

    if (v15)
    {
      v17 = *(v0 + 240);
    }

    else
    {
      v17 = 0;
    }

    v42 = v17;
    v44 = v16;
    if (v15)
    {
      v18 = *(v0 + 248);
    }

    else
    {
      v18 = -4;
    }
  }

  else
  {
    sub_1D22BD238(v0 + 56, &qword_1EC6DA108);
    v42 = 0;
    v44 = 0;
    v18 = -4;
  }

  v40 = v18;
  v19 = *(v0 + 592);
  v20 = *(v0 + 584);
  v21 = *(v0 + 576);
  v22 = *(v0 + 440);
  v23 = *(v0 + 344);
  type metadata accessor for FeedbackInput();
  v24 = swift_allocObject();
  v25 = OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_featureDomain;
  v26 = *MEMORY[0x1E699C2C8];
  v27 = sub_1D2871CD8();
  (*(*(v27 - 8) + 104))(v24 + v25, v26, v27);
  v28 = v24 + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_generationStateProvider;
  *v28 = 0u;
  *(v28 + 16) = 0u;
  *(v28 + 32) = 0;
  *(v24 + 16) = v47;
  *(v24 + 24) = v19;
  *(v24 + 32) = v21;
  *(v24 + 40) = v20;
  *(v24 + 48) = 1;
  *(v24 + 56) = 0;
  *(v24 + 64) = 0;
  *(v24 + 88) = 0;
  *(v24 + 96) = 0;
  sub_1D22EC9BC(v22, v24 + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_id, &qword_1EC6D8F70);
  sub_1D22EC9BC(v23, v24 + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_recipe, &unk_1EC6DDE30);
  swift_beginAccess();
  sub_1D22D7384(v0 + 16, v28, &qword_1EC6DA1F0);
  swift_endAccess();
  *(v24 + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_isSaved) = 0;
  *(v24 + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_diffusionModelSpecification) = v46;
  v29 = v24 + OBJC_IVAR____TtC23ImagePlaygroundInternal13FeedbackInput_error;
  *v29 = v44;
  *(v29 + 8) = v42;
  *(v29 + 16) = v40;
  *(v0 + 128) = *(v0 + 48);
  v30 = *(v0 + 32);
  *(v0 + 96) = *(v0 + 16);
  *(v0 + 112) = v30;
  if (*(v0 + 120))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE40);
    _s22OnDeviceImageGeneratorCMa(0);
    if (swift_dynamicCast())
    {

      *(v24 + 72) = v33;
      *(v24 + 80) = v48;
      goto LABEL_18;
    }
  }

  else
  {

    sub_1D22BD238(v0 + 96, &qword_1EC6DA1F0);
  }

  *(v24 + 72) = 0;
  *(v24 + 80) = 0;
LABEL_18:
  sub_1D22FD9A8(*(v0 + 488), type metadata accessor for ImageGeneration.PreviewImage);

  v31 = *(v0 + 8);

  return v31(v24);
}

uint64_t sub_1D2336088(uint64_t a1, int a2)
{
  v3 = v2;
  v43 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9490);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v39 - v11;
  v13 = sub_1D2873CB8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v39 - v18;
  if (os_variant_has_internal_ui())
  {
    v42 = a2;
    sub_1D28726D8();
    v20 = sub_1D2873CA8();
    v21 = sub_1D2878A08();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v40 = v13;
      v23 = v22;
      v24 = swift_slowAlloc();
      v41 = v3;
      v25 = v6;
      v26 = v24;
      v44 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_1D23D7C84(0xD000000000000020, 0x80000001D28B0AD0, &v44);
      _os_log_impl(&dword_1D226E000, v20, v21, "%s - will generate recipe", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      v27 = v26;
      v6 = v25;
      v3 = v41;
      MEMORY[0x1D38A3520](v27, -1, -1);
      MEMORY[0x1D38A3520](v23, -1, -1);

      (*(v14 + 8))(v16, v40);
    }

    else
    {

      (*(v14 + 8))(v16, v13);
    }

    v33 = sub_1D28785F8();
    (*(*(v33 - 8) + 56))(v12, 1, 1, v33);
    sub_1D22BD1D0(v43, v9, &qword_1EC6D9490);
    sub_1D2878568();
    sub_1D2870F78();
    v34 = sub_1D2878558();
    v35 = (*(v6 + 80) + 40) & ~*(v6 + 80);
    v36 = v35 + v7;
    v37 = swift_allocObject();
    v38 = MEMORY[0x1E69E85E0];
    v37[2] = v34;
    v37[3] = v38;
    v37[4] = v3;
    sub_1D22EC9BC(v9, v37 + v35, &qword_1EC6D9490);
    *(v37 + v36) = v42 & 1;
    sub_1D23C8994(0, 0, v12, &unk_1D2881B08, v37);
  }

  else
  {
    sub_1D28726D8();
    v28 = sub_1D2873CA8();
    v29 = sub_1D2878A08();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v44 = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_1D23D7C84(0xD000000000000020, 0x80000001D28B0AD0, &v44);
      _os_log_impl(&dword_1D226E000, v28, v29, "%s - not valid environment, will skip donation", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x1D38A3520](v31, -1, -1);
      MEMORY[0x1D38A3520](v30, -1, -1);
    }

    return (*(v14 + 8))(v19, v13);
  }
}

uint64_t sub_1D2336548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 56) = a6;
  *(v6 + 16) = a4;
  *(v6 + 24) = sub_1D2878568();
  *(v6 + 32) = sub_1D2878558();
  v8 = swift_task_alloc();
  *(v6 + 40) = v8;
  *v8 = v6;
  v8[1] = sub_1D233660C;

  return sub_1D233462C(a5);
}

uint64_t sub_1D233660C(uint64_t a1)
{
  *(*v1 + 48) = a1;

  v3 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D2336750, v3, v2);
}

uint64_t sub_1D2336750()
{
  v1 = *(v0 + 48);

  if (v1)
  {
    v2 = *(v0 + 48);
    v3 = *(v0 + 56);
    sub_1D23C7998();
    sub_1D24038A0(v2, v3);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D2336804(uint64_t result)
{
  if (result)
  {
    if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isOnboardingSheetDismissed) == 1)
    {
      *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isOnboardingSheetDismissed) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
      sub_1D28719D8();
    }

    if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__onboardingSheetCancelled) == 1)
    {
      *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__onboardingSheetCancelled) = 1;
      return result;
    }

    v5 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v5);
    sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719D8();
  }

  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isFromEmojiPicker) == 1)
  {
    if (qword_1ED8A0600 != -1)
    {
      swift_once();
    }

    v2 = swift_getKeyPath();
    if (qword_1ED8A4928 == -1)
    {
      goto LABEL_15;
    }

LABEL_20:
    v2 = swift_once();
    goto LABEL_15;
  }

  if (qword_1ED8A0600 != -1)
  {
    swift_once();
  }

  v2 = swift_getKeyPath();
  if (qword_1ED8A4928 != -1)
  {
    goto LABEL_20;
  }

LABEL_15:
  MEMORY[0x1EEE9AC00](v2);
  sub_1D233B278(&qword_1ED8A4920, type metadata accessor for DebugSettings);
  sub_1D28719D8();

  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__onboardingSheetCancelled))
  {
    v4 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v4);
    sub_1D28719D8();
  }

  *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__onboardingSheetCancelled) = 0;
  return result;
}

uint64_t sub_1D2336D70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[2] = a3;
  v18[0] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDE70);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A80);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v18 - v13;
  v18[1] = a1;
  swift_getKeyPath();
  v19 = v3;
  sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  v15 = *v18[0];
  swift_beginAccess();
  sub_1D22BD1D0(v3 + v15, v14, &qword_1EC6D9A80);
  if ((*(v6 + 48))(v14, 1, v5))
  {
    sub_1D22BD238(v14, &qword_1EC6D9A80);
  }

  else
  {
    (*(v6 + 16))(v8, v14, v5);
    sub_1D22BD238(v14, &qword_1EC6D9A80);
    sub_1D2878518();
    (*(v6 + 8))(v8, v5);
  }

  (*(v6 + 56))(v12, 1, 1, v5);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v18[-2] = v3;
  v18[-1] = v12;
  v18[4] = v3;
  sub_1D28719D8();

  return sub_1D22BD238(v12, &qword_1EC6D9A80);
}

uint64_t sub_1D23370A0(uint64_t a1)
{
  sub_1D22FECC4(a1);
  v2 = sub_1D2643F7C() & 1;

  if (v2 == *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__recipeToLoadContainsPhoto))
  {
    *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__recipeToLoadContainsPhoto) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719D8();
  }

  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shouldShowExternalSharingAlert) == 1)
  {
    *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shouldShowExternalSharingAlert) = 1;
    return sub_1D232E924(1);
  }

  else
  {
    v5 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v5);
    sub_1D233B278(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719D8();
  }
}

uint64_t sub_1D23372C0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    type metadata accessor for PHAssetExportRequestFileURLKey(0);
    sub_1D28716B8();
    sub_1D233B278(&qword_1EC6D96B0, type metadata accessor for PHAssetExportRequestFileURLKey);
    v4 = sub_1D2877E98();
  }

  sub_1D2870F78();
  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_1D23373A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A4480, type metadata accessor for ErrorViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_1D2337470@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A4480, type metadata accessor for ErrorViewModel);
  sub_1D28719E8();

  v4 = v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal14ErrorViewModel__feedbackInputProvider;
  result = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1D233752C()
{
  swift_getKeyPath();
  sub_1D233B278(&qword_1ED8A4480, type metadata accessor for ErrorViewModel);
  sub_1D28719D8();
}

uint64_t sub_1D23375FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    v4 = (a2 + 48);
    do
    {
      v7 = *(v3 - 1);
      v6 = *v3;
      v8 = *v4;
      v14 = *(v4 - 1);
      sub_1D2870F68();
      sub_1D2870F68();
      v15 = sub_1D28795C8();
      v17 = v9;
      sub_1D2870F68();
      MEMORY[0x1D38A0C50](v7, v6);

      v11 = v15;
      v10 = v17;
      v16 = sub_1D28795C8();
      v18 = v12;
      sub_1D2870F68();
      MEMORY[0x1D38A0C50](v14, v8);

      if (v11 == v16 && v10 == v18)
      {
      }

      else
      {
        v5 = sub_1D2879618();

        if ((v5 & 1) == 0)
        {
          return 0;
        }
      }

      v3 += 3;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1D23377AC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = result + 32;
  v5 = a2 + 32;
  v19 = a2 + 32;
  v20 = result + 32;
  while (v3 != v2)
  {
    v6 = (v4 + 24 * v3);
    v7 = *v6;
    v8 = v6[1];
    v9 = v6[2];
    v10 = (v5 + 24 * v3);
    v11 = v10[2];
    v12 = v7 == *v10 && v8 == v10[1];
    if (!v12 && (sub_1D2879618() & 1) == 0)
    {
      return 0;
    }

    v13 = *(v9 + 16);
    if (v13 != *(v11 + 16))
    {
      return 0;
    }

    if (v13)
    {
      v14 = v9 == v11;
    }

    else
    {
      v14 = 1;
    }

    if (!v14)
    {
      sub_1D2870F68();
      sub_1D2870F68();
      sub_1D2870F68();
      result = sub_1D2870F68();
      v15 = 0;
      v16 = 32;
      while (v15 < *(v9 + 16))
      {
        result = sub_1D233F0D4(v9 + v16, v26);
        if (v15 >= *(v11 + 16))
        {
          goto LABEL_37;
        }

        sub_1D233F0D4(v11 + v16, v21);
        v18 = v27 == v22 && v28 == v23;
        if (!v18 && (sub_1D2879618() & 1) == 0)
        {
          sub_1D233F130(v21);
          sub_1D233F130(v26);
LABEL_33:

          return 0;
        }

        if (v29 == v24 && v30 == v25)
        {
          sub_1D233F130(v21);
          result = sub_1D233F130(v26);
        }

        else
        {
          v17 = sub_1D2879618();
          sub_1D233F130(v21);
          result = sub_1D233F130(v26);
          if ((v17 & 1) == 0)
          {
            goto LABEL_33;
          }
        }

        ++v15;
        v16 += 96;
        if (v13 == v15)
        {

          v5 = v19;
          v4 = v20;
          goto LABEL_7;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
      break;
    }

LABEL_7:
    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D23379D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 32;
  for (i = a2 + 32; ; i += 96)
  {
    sub_1D233F0D4(v3, v10);
    sub_1D233F0D4(i, v9);
    v5 = v11 == v9[2] && v12 == v9[3];
    if (!v5 && (sub_1D2879618() & 1) == 0)
    {
      break;
    }

    if (v13 == v9[4] && v14 == v9[5])
    {
      sub_1D233F130(v9);
      sub_1D233F130(v10);
    }

    else
    {
      v7 = sub_1D2879618();
      sub_1D233F130(v9);
      sub_1D233F130(v10);
      if ((v7 & 1) == 0)
      {
        return 0;
      }
    }

    v3 += 96;
    if (!--v2)
    {
      return 1;
    }
  }

  sub_1D233F130(v9);
  sub_1D233F130(v10);
  return 0;
}

uint64_t sub_1D2337B2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaygroundImage();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1D233DEB0(v13, v10, type metadata accessor for PlaygroundImage);
        sub_1D233DEB0(v14, v6, type metadata accessor for PlaygroundImage);
        v16 = _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();
        sub_1D22FD9A8(v6, type metadata accessor for PlaygroundImage);
        sub_1D22FD9A8(v10, type metadata accessor for PlaygroundImage);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1D2337CF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      v7 = *v4;
      v8 = 1869440324;
      if (v6 == 4)
      {
        v8 = 0x646574746556;
      }

      v9 = 0xE400000000000000;
      if (v6 == 4)
      {
        v9 = 0xE600000000000000;
      }

      if (v6 == 3)
      {
        v8 = 0x70756B636F4DLL;
        v9 = 0xE600000000000000;
      }

      v10 = 0xD000000000000011;
      if (v6 == 1)
      {
        v11 = 0x80000001D28AE710;
      }

      else
      {
        v10 = 0x726576726553;
        v11 = 0xE600000000000000;
      }

      if (!*v3)
      {
        v10 = 0x6369766544206E4FLL;
        v11 = 0xE900000000000065;
      }

      if (*v3 <= 2u)
      {
        v12 = v10;
      }

      else
      {
        v12 = v8;
      }

      if (*v3 <= 2u)
      {
        v13 = v11;
      }

      else
      {
        v13 = v9;
      }

      if (*v4 > 2u)
      {
        if (v7 == 3)
        {
          v14 = 0xE600000000000000;
          if (v12 != 0x70756B636F4DLL)
          {
            goto LABEL_5;
          }
        }

        else if (v7 == 4)
        {
          v14 = 0xE600000000000000;
          if (v12 != 0x646574746556)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v14 = 0xE400000000000000;
          if (v12 != 1869440324)
          {
            goto LABEL_5;
          }
        }
      }

      else if (*v4)
      {
        if (v7 == 1)
        {
          v14 = 0x80000001D28AE710;
          if (v12 != 0xD000000000000011)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v14 = 0xE600000000000000;
          if (v12 != 0x726576726553)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        v14 = 0xE900000000000065;
        if (v12 != 0x6369766544206E4FLL)
        {
          goto LABEL_5;
        }
      }

      if (v13 != v14)
      {
LABEL_5:
        v5 = sub_1D2879618();

        if ((v5 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_6;
      }

LABEL_6:
      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1D2337F78(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 4)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1D2879618() & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1D2338008(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2871818();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for IdentifiedEntity.Kind(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA150);
  MEMORY[0x1EEE9AC00](v40);
  v11 = &v33 - v10;
  v39 = type metadata accessor for IdentifiedEntity(0);
  v12 = MEMORY[0x1EEE9AC00](v39);
  v42 = (&v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v16 = (&v33 - v15);
  v17 = *(a1 + 16);
  if (v17 == *(a2 + 16))
  {
    if (!v17 || a1 == a2)
    {
      return 1;
    }

    v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v19 = a1 + v18;
    v20 = a2 + v18;
    v41 = (v5 + 48);
    v34 = (v5 + 32);
    v35 = (v5 + 8);
    v38 = *(v14 + 72);
    while (1)
    {
      sub_1D233DEB0(v19, v16, type metadata accessor for IdentifiedEntity);
      v21 = v42;
      sub_1D233DEB0(v20, v42, type metadata accessor for IdentifiedEntity);
      v22 = *v16 == *v21 && v16[1] == v21[1];
      if (!v22 && (sub_1D2879618() & 1) == 0)
      {
        break;
      }

      v23 = v4;
      v24 = *(v39 + 20);
      v25 = *(v40 + 48);
      sub_1D233DEB0(v16 + v24, v11, type metadata accessor for IdentifiedEntity.Kind);
      v26 = v42 + v24;
      v4 = v23;
      sub_1D233DEB0(v26, &v11[v25], type metadata accessor for IdentifiedEntity.Kind);
      v27 = *v41;
      v28 = (*v41)(v11, 2, v23);
      if (v28)
      {
        if (v28 == 1)
        {
          if (v27(&v11[v25], 2, v23) != 1)
          {
            goto LABEL_22;
          }
        }

        else if (v27(&v11[v25], 2, v23) != 2)
        {
          goto LABEL_22;
        }

        sub_1D22FD9A8(v11, type metadata accessor for IdentifiedEntity.Kind);
      }

      else
      {
        sub_1D233DEB0(v11, v9, type metadata accessor for IdentifiedEntity.Kind);
        if (v27(&v11[v25], 2, v23))
        {
          (*v35)(v9, v23);
LABEL_22:
          sub_1D22BD238(v11, &qword_1EC6DA150);
          break;
        }

        v29 = &v11[v25];
        v30 = v37;
        (*v34)(v37, v29, v23);
        v36 = _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();
        v31 = *v35;
        (*v35)(v30, v23);
        v31(v9, v23);
        v4 = v23;
        sub_1D22FD9A8(v11, type metadata accessor for IdentifiedEntity.Kind);
        if ((v36 & 1) == 0)
        {
          break;
        }
      }

      sub_1D22FD9A8(v42, type metadata accessor for IdentifiedEntity);
      sub_1D22FD9A8(v16, type metadata accessor for IdentifiedEntity);
      v20 += v38;
      v19 += v38;
      if (!--v17)
      {
        return 1;
      }
    }

    sub_1D22FD9A8(v42, type metadata accessor for IdentifiedEntity);
    sub_1D22FD9A8(v16, type metadata accessor for IdentifiedEntity);
  }

  return 0;
}

uint64_t sub_1D2338564(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v32 = a5;
  v33 = a6;
  v31 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v28 - v13;
  v15 = *(a1 + 16);
  if (v15 != *(a2 + 16))
  {
    v25 = 0;
    return v25 & 1;
  }

  if (!v15 || a1 == a2)
  {
    v25 = 1;
    return v25 & 1;
  }

  v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v17 = a1 + v16;
  v18 = a2 + v16;
  v20 = *(v9 + 16);
  v19 = v9 + 16;
  v21 = (v19 - 8);
  v29 = *(v19 + 56);
  v30 = v20;
  while (1)
  {
    v22 = v30;
    result = (v30)(v14, v17, v8);
    if (!v15)
    {
      break;
    }

    v24 = v19;
    v22(v12, v18, v8);
    sub_1D233B278(v31, v32);
    v25 = sub_1D2877F98();
    v26 = *v21;
    (*v21)(v12, v8);
    v26(v14, v8);
    if (v25)
    {
      v18 += v29;
      v17 += v29;
      v27 = v15-- == 1;
      v19 = v24;
      if (!v27)
      {
        continue;
      }
    }

    return v25 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D233875C(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      LOBYTE(v4) = 1;
      return v4 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v4 = v12 - 4;
        v13 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1D38A1C30](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v4 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          sub_1D2870F78();
          if (!v11)
          {
LABEL_24:
            if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            sub_1D2870F78();
            goto LABEL_26;
          }
        }

        MEMORY[0x1D38A1C30](v12 - 4, a2);
LABEL_26:
        LOBYTE(v4) = _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();

        if (v4)
        {
          ++v12;
          if (v13 != v5)
          {
            continue;
          }
        }

        return v4 & 1;
      }
    }

    v14 = (v3 + 32);
    v15 = (a2 + 32);
    v16 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v17 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v18 = v5 - 1;
    while (1)
    {
      if (!v16)
      {
        goto LABEL_40;
      }

      if (!v17)
      {
        break;
      }

      v19 = *v14++;
      a2 = v19;
      v20 = *v15++;
      v3 = v20;
      sub_1D2870F78();
      sub_1D2870F78();
      v4 = _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();

      v22 = v18-- != 0;
      if (v4)
      {
        --v17;
        --v16;
        if (v22)
        {
          continue;
        }
      }

      return v4 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_1D2879368();
  }

  result = sub_1D2879368();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  LOBYTE(v4) = 0;
  return v4 & 1;
}